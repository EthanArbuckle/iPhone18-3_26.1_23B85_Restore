uint64_t awd::metrics::BluetoothLeAudioSessionStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 88);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[22];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[22];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[22];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[22];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[22];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[22];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[22];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, v5[10], a2, a4);
  v6 = v5[22];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[11], a2, a4);
  v6 = v5[22];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[12], a2, a4);
  v6 = v5[22];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[13], a2, a4);
  v6 = v5[22];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v5[14], a2, a4);
  v6 = v5[22];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, v5[15], a2, a4);
  v6 = v5[22];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, v5[16], a2, a4);
  v6 = v5[22];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, v5[17], a2, a4);
  v6 = v5[22];
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v5[19], a2, a4);
    if ((v5[22] & 0x20000) == 0)
    {
      return this;
    }

    goto LABEL_37;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v5[18], a2, a4);
  v6 = v5[22];
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
  v7 = v5[20];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothLeAudioSessionStats::ByteSize(awd::metrics::BluetoothLeAudioSessionStats *this)
{
  v2 = *(this + 22);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_44;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 22);
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
    v2 = *(this + 22);
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
      v2 = *(this + 22);
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
    v2 = *(this + 22);
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

    goto LABEL_30;
  }

LABEL_26:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 22);
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
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 22);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_34:
  v14 = *(this + 9);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 22);
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_38:
    v16 = *(this + 10);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 22);
    }

    else
    {
      v17 = 2;
    }

    v3 = (v17 + v3);
  }

LABEL_44:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_88;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = *(this + 11);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v2 = *(this + 22);
    }

    else
    {
      v19 = 2;
    }

    v3 = (v19 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_47:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_62;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_47;
  }

  v20 = *(this + 12);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 22);
  }

  else
  {
    v21 = 2;
  }

  v3 = (v21 + v3);
  if ((v2 & 0x400) == 0)
  {
LABEL_48:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_66;
  }

LABEL_62:
  v22 = *(this + 13);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 22);
  }

  else
  {
    v23 = 2;
  }

  v3 = (v23 + v3);
  if ((v2 & 0x800) == 0)
  {
LABEL_49:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_70;
  }

LABEL_66:
  v24 = *(this + 14);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v2 = *(this + 22);
  }

  else
  {
    v25 = 2;
  }

  v3 = (v25 + v3);
  if ((v2 & 0x1000) == 0)
  {
LABEL_50:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_74;
  }

LABEL_70:
  v26 = *(this + 15);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v2 = *(this + 22);
  }

  else
  {
    v27 = 2;
  }

  v3 = (v27 + v3);
  if ((v2 & 0x2000) == 0)
  {
LABEL_51:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_80;
  }

LABEL_74:
  v28 = *(this + 16);
  if ((v28 & 0x80000000) != 0)
  {
    v29 = 11;
  }

  else if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v2 = *(this + 22);
  }

  else
  {
    v29 = 2;
  }

  v3 = (v29 + v3);
  if ((v2 & 0x4000) == 0)
  {
LABEL_52:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_84;
  }

LABEL_80:
  v30 = *(this + 17);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v2 = *(this + 22);
  }

  else
  {
    v31 = 2;
  }

  v3 = (v31 + v3);
  if ((v2 & 0x8000) != 0)
  {
LABEL_84:
    v32 = *(this + 18);
    if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
      v2 = *(this + 22);
    }

    else
    {
      v33 = 3;
    }

    v3 = (v33 + v3);
  }

LABEL_88:
  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v34 = *(this + 19);
      if (v34 >= 0x80)
      {
        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
        v2 = *(this + 22);
      }

      else
      {
        v35 = 3;
      }

      v3 = (v35 + v3);
    }

    if ((v2 & 0x20000) != 0)
    {
      v36 = *(this + 20);
      if (v36 >= 0x80)
      {
        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
      }

      else
      {
        v37 = 3;
      }

      v3 = (v37 + v3);
    }
  }

  *(this + 21) = v3;
  return v3;
}

void awd::metrics::BluetoothLeAudioSessionStats::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeAudioSessionStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLeAudioSessionStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLeAudioSessionStats::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLeAudioSessionStats::CopyFrom(awd::metrics::BluetoothLeAudioSessionStats *this, const awd::metrics::BluetoothLeAudioSessionStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLeAudioSessionStats::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLeAudioSessionStats::Swap(uint64_t this, awd::metrics::BluetoothLeAudioSessionStats *a2)
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
    LODWORD(v2) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v2;
    LODWORD(v2) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v2;
    LODWORD(v2) = *(this + 80);
    *(this + 80) = *(a2 + 20);
    *(a2 + 20) = v2;
    LODWORD(v2) = *(this + 88);
    *(this + 88) = *(a2 + 22);
    *(a2 + 22) = v2;
    LODWORD(v2) = *(this + 84);
    *(this + 84) = *(a2 + 21);
    *(a2 + 21) = v2;
  }

  return this;
}

double awd::metrics::BluetoothGameControllerSessionInfo::SharedCtor(awd::metrics::BluetoothGameControllerSessionInfo *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothGameControllerSessionInfo *awd::metrics::BluetoothGameControllerSessionInfo::BluetoothGameControllerSessionInfo(awd::metrics::BluetoothGameControllerSessionInfo *this, const awd::metrics::BluetoothGameControllerSessionInfo *a2)
{
  *this = &unk_2A1D4C318;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  awd::metrics::BluetoothGameControllerSessionInfo::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothGameControllerSessionInfo::MergeFrom(awd::metrics::BluetoothGameControllerSessionInfo *this, const awd::metrics::BluetoothGameControllerSessionInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
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

    v7 = *(a2 + 4);
    *(this + 10) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 10);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    v8 = *(a2 + 5);
    *(this + 10) |= 4u;
    *(this + 5) = v8;
    v4 = *(a2 + 10);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = *(a2 + 6);
    *(this + 10) |= 8u;
    *(this + 6) = v9;
    v4 = *(a2 + 10);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_16:
    v10 = *(a2 + 7);
    *(this + 10) |= 0x10u;
    *(this + 7) = v10;
    if ((*(a2 + 10) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 8);
    *(this + 10) |= 0x20u;
    *(this + 8) = v5;
  }
}

void sub_2963AFDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothGameControllerSessionInfo::~BluetoothGameControllerSessionInfo(awd::metrics::BluetoothGameControllerSessionInfo *this)
{
  *this = &unk_2A1D4C318;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C318;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C318;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothGameControllerSessionInfo::default_instance(awd::metrics::BluetoothGameControllerSessionInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothGameControllerSessionInfo::default_instance_;
  if (!awd::metrics::BluetoothGameControllerSessionInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothGameControllerSessionInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothGameControllerSessionInfo::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 32) = 0;
    *(this + 24) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothGameControllerSessionInfo::MergePartialFromCodedStream(awd::metrics::BluetoothGameControllerSessionInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
              v13 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_51;
            }
          }

          else if (v6 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_59;
            }
          }

          else if (v6 == 6 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_67;
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

        *(this + 10) |= 1u;
        if (v12 < v7 && *v12 == 16)
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
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

      v14 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_35:
      if (v14 >= v7 || (v16 = *v14, v16 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v16;
        v17 = v14 + 1;
        *(a2 + 1) = v17;
      }

      *(this + 10) |= 2u;
      if (v17 < v7 && *v17 == 24)
      {
        v8 = v17 + 1;
        *(a2 + 1) = v8;
LABEL_43:
        v28 = 0;
        if (v8 >= v7 || (v18 = *v8, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
          if (!result)
          {
            return result;
          }

          v18 = v28;
          v19 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v19 = v8 + 1;
          *(a2 + 1) = v19;
        }

        *(this + 5) = v18;
        *(this + 10) |= 4u;
        if (v19 < v7 && *v19 == 32)
        {
          v13 = v19 + 1;
          *(a2 + 1) = v13;
LABEL_51:
          v27 = 0;
          if (v13 >= v7 || (v20 = *v13, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
            if (!result)
            {
              return result;
            }

            v20 = v27;
            v21 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v21 = v13 + 1;
            *(a2 + 1) = v21;
          }

          *(this + 6) = v20;
          *(this + 10) |= 8u;
          if (v21 < v7 && *v21 == 40)
          {
            v15 = v21 + 1;
            *(a2 + 1) = v15;
LABEL_59:
            if (v15 >= v7 || (v22 = *v15, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v23 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v22;
              v23 = v15 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 10) |= 0x10u;
            if (v23 < v7 && *v23 == 48)
            {
              v9 = v23 + 1;
              *(a2 + 1) = v9;
LABEL_67:
              if (v9 >= v7 || (v24 = *v9, v24 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v25 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v24;
                v25 = v9 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 10) |= 0x20u;
              if (v25 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_43;
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

uint64_t awd::metrics::BluetoothGameControllerSessionInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[10];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[10];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, v5[5], a2, a4);
  v6 = v5[10];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
    if ((v5[10] & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, v5[6], a2, a4);
  v6 = v5[10];
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
  v7 = v5[8];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothGameControllerSessionInfo::ByteSize(awd::metrics::BluetoothGameControllerSessionInfo *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_36;
  }

  if (*(this + 40))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 10);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 10);
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
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 10);
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

      goto LABEL_28;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(this + 6);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 10);
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
      goto LABEL_36;
    }

    goto LABEL_32;
  }

LABEL_28:
  v10 = *(this + 7);
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
  if ((v2 & 0x20) != 0)
  {
LABEL_32:
    v12 = *(this + 8);
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

LABEL_36:
  *(this + 9) = v3;
  return v3;
}

void awd::metrics::BluetoothGameControllerSessionInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothGameControllerSessionInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothGameControllerSessionInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothGameControllerSessionInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothGameControllerSessionInfo::CopyFrom(awd::metrics::BluetoothGameControllerSessionInfo *this, const awd::metrics::BluetoothGameControllerSessionInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothGameControllerSessionInfo::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothGameControllerSessionInfo::Swap(uint64_t this, awd::metrics::BluetoothGameControllerSessionInfo *a2)
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
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
  }

  return this;
}

double awd::metrics::BluetoothWirelessSplitterSessionInfo::SharedCtor(awd::metrics::BluetoothWirelessSplitterSessionInfo *this)
{
  result = 0.0;
  *(this + 52) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothWirelessSplitterSessionInfo *awd::metrics::BluetoothWirelessSplitterSessionInfo::BluetoothWirelessSplitterSessionInfo(awd::metrics::BluetoothWirelessSplitterSessionInfo *this, const awd::metrics::BluetoothWirelessSplitterSessionInfo *a2)
{
  *this = &unk_2A1D4C390;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  awd::metrics::BluetoothWirelessSplitterSessionInfo::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothWirelessSplitterSessionInfo::MergeFrom(awd::metrics::BluetoothWirelessSplitterSessionInfo *this, const awd::metrics::BluetoothWirelessSplitterSessionInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 16) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 16);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 4);
  *(this + 16) |= 2u;
  *(this + 4) = v8;
  v4 = *(a2 + 16);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(a2 + 5);
  *(this + 16) |= 4u;
  *(this + 5) = v9;
  v4 = *(a2 + 16);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = *(a2 + 6);
  *(this + 16) |= 8u;
  *(this + 6) = v10;
  v4 = *(a2 + 16);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v12 = *(a2 + 8);
    *(this + 16) |= 0x20u;
    *(this + 8) = v12;
    v4 = *(a2 + 16);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_24:
  v11 = *(a2 + 7);
  *(this + 16) |= 0x10u;
  *(this + 7) = v11;
  v4 = *(a2 + 16);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  v13 = *(a2 + 9);
  *(this + 16) |= 0x40u;
  *(this + 9) = v13;
  v4 = *(a2 + 16);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 16) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 16);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 11);
    *(this + 16) |= 0x100u;
    *(this + 11) = v14;
    v4 = *(a2 + 16);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 12);
  *(this + 16) |= 0x200u;
  *(this + 12) = v15;
  v4 = *(a2 + 16);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_30:
  v16 = *(a2 + 13);
  *(this + 16) |= 0x400u;
  *(this + 13) = v16;
  if ((*(a2 + 16) & 0x800) == 0)
  {
    return;
  }

LABEL_18:
  v6 = *(a2 + 14);
  *(this + 16) |= 0x800u;
  *(this + 14) = v6;
}

void sub_2963B0924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothWirelessSplitterSessionInfo::~BluetoothWirelessSplitterSessionInfo(awd::metrics::BluetoothWirelessSplitterSessionInfo *this)
{
  *this = &unk_2A1D4C390;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C390;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C390;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothWirelessSplitterSessionInfo::default_instance(awd::metrics::BluetoothWirelessSplitterSessionInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothWirelessSplitterSessionInfo::default_instance_;
  if (!awd::metrics::BluetoothWirelessSplitterSessionInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothWirelessSplitterSessionInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothWirelessSplitterSessionInfo::Clear(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    *(this + 44) = 0;
  }

  *(this + 64) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothWirelessSplitterSessionInfo::MergePartialFromCodedStream(awd::metrics::BluetoothWirelessSplitterSessionInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 6)
        {
          if (TagFallback >> 3 > 9)
          {
            if (v6 == 10)
            {
              if ((TagFallback & 7) == 0)
              {
                v17 = *(a2 + 1);
                v7 = *(a2 + 2);
                goto LABEL_119;
              }
            }

            else if (v6 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v21 = *(a2 + 1);
                v7 = *(a2 + 2);
                goto LABEL_127;
              }
            }

            else if (v6 == 12 && (TagFallback & 7) == 0)
            {
              v11 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_135;
            }
          }

          else if (v6 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_95;
            }
          }

          else if (v6 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_103;
            }
          }

          else if (v6 == 9 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_111;
          }

          goto LABEL_46;
        }

        if (TagFallback >> 3 > 3)
        {
          if (v6 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_71;
            }
          }

          else if (v6 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_79;
            }
          }

          else if (v6 == 6 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_87;
          }

          goto LABEL_46;
        }

        if (v6 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
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

        *(this + 16) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v18 = v14 + 1;
          *(a2 + 1) = v18;
          goto LABEL_55;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_46;
      }

      v18 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_55:
      if (v18 >= v7 || (v22 = *v18, v22 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
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
        v23 = v18 + 1;
        *(a2 + 1) = v23;
      }

      *(this + 16) |= 2u;
      if (v23 < v7 && *v23 == 24)
      {
        v8 = v23 + 1;
        *(a2 + 1) = v8;
LABEL_63:
        if (v8 >= v7 || (v24 = *v8, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v25 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v24;
          v25 = v8 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 16) |= 4u;
        if (v25 < v7 && *v25 == 32)
        {
          v16 = v25 + 1;
          *(a2 + 1) = v16;
LABEL_71:
          if (v16 >= v7 || (v26 = *v16, v26 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v27 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v26;
            v27 = v16 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 16) |= 8u;
          if (v27 < v7 && *v27 == 40)
          {
            v20 = v27 + 1;
            *(a2 + 1) = v20;
LABEL_79:
            if (v20 >= v7 || (v28 = *v20, v28 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v29 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v28;
              v29 = v20 + 1;
              *(a2 + 1) = v29;
            }

            *(this + 16) |= 0x10u;
            if (v29 < v7 && *v29 == 48)
            {
              v10 = v29 + 1;
              *(a2 + 1) = v10;
LABEL_87:
              if (v10 >= v7 || (v30 = *v10, v30 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v31 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v30;
                v31 = v10 + 1;
                *(a2 + 1) = v31;
              }

              *(this + 16) |= 0x20u;
              if (v31 < v7 && *v31 == 56)
              {
                v15 = v31 + 1;
                *(a2 + 1) = v15;
LABEL_95:
                if (v15 >= v7 || (v32 = *v15, v32 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                  if (!result)
                  {
                    return result;
                  }

                  v33 = *(a2 + 1);
                  v7 = *(a2 + 2);
                }

                else
                {
                  *(this + 9) = v32;
                  v33 = v15 + 1;
                  *(a2 + 1) = v33;
                }

                *(this + 16) |= 0x40u;
                if (v33 < v7 && *v33 == 64)
                {
                  v19 = v33 + 1;
                  *(a2 + 1) = v19;
LABEL_103:
                  if (v19 >= v7 || (v34 = *v19, v34 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                    if (!result)
                    {
                      return result;
                    }

                    v35 = *(a2 + 1);
                    v7 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 10) = v34;
                    v35 = v19 + 1;
                    *(a2 + 1) = v35;
                  }

                  *(this + 16) |= 0x80u;
                  if (v35 < v7 && *v35 == 72)
                  {
                    v9 = v35 + 1;
                    *(a2 + 1) = v9;
LABEL_111:
                    if (v9 >= v7 || (v36 = *v9, v36 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                      if (!result)
                      {
                        return result;
                      }

                      v37 = *(a2 + 1);
                      v7 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 11) = v36;
                      v37 = v9 + 1;
                      *(a2 + 1) = v37;
                    }

                    *(this + 16) |= 0x100u;
                    if (v37 < v7 && *v37 == 80)
                    {
                      v17 = v37 + 1;
                      *(a2 + 1) = v17;
LABEL_119:
                      if (v17 >= v7 || (v38 = *v17, v38 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                        if (!result)
                        {
                          return result;
                        }

                        v39 = *(a2 + 1);
                        v7 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 12) = v38;
                        v39 = v17 + 1;
                        *(a2 + 1) = v39;
                      }

                      *(this + 16) |= 0x200u;
                      if (v39 < v7 && *v39 == 88)
                      {
                        v21 = v39 + 1;
                        *(a2 + 1) = v21;
LABEL_127:
                        if (v21 >= v7 || (v40 = *v21, v40 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                          if (!result)
                          {
                            return result;
                          }

                          v41 = *(a2 + 1);
                          v7 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 13) = v40;
                          v41 = v21 + 1;
                          *(a2 + 1) = v41;
                        }

                        *(this + 16) |= 0x400u;
                        if (v41 < v7 && *v41 == 96)
                        {
                          v11 = v41 + 1;
                          *(a2 + 1) = v11;
LABEL_135:
                          if (v11 >= v7 || (v42 = *v11, v42 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
                            if (!result)
                            {
                              return result;
                            }

                            v43 = *(a2 + 1);
                            v7 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 14) = v42;
                            v43 = v11 + 1;
                            *(a2 + 1) = v43;
                          }

                          *(this + 16) |= 0x800u;
                          if (v43 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 3 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_63;
    }

LABEL_46:
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

uint64_t awd::metrics::BluetoothWirelessSplitterSessionInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[16];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[10], a2, a4);
  v6 = v5[16];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[11], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[13], a2, a4);
    if ((v5[16] & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[12], a2, a4);
  v6 = v5[16];
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
  v7 = v5[14];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothWirelessSplitterSessionInfo::ByteSize(awd::metrics::BluetoothWirelessSplitterSessionInfo *this)
{
  v2 = *(this + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 16);
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
    v2 = *(this + 16);
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
      v2 = *(this + 16);
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
    v2 = *(this + 16);
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

    goto LABEL_30;
  }

LABEL_26:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 16);
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
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
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
    v2 = *(this + 16);
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_38:
    v16 = *(this + 10);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v17 = 2;
    }

    v3 = (v17 + v3);
  }

LABEL_42:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_64;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = *(this + 11);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v19 = 2;
    }

    v3 = (v19 + v3);
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

  v20 = *(this + 12);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v21 = 2;
  }

  v3 = (v21 + v3);
  if ((v2 & 0x400) == 0)
  {
LABEL_46:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_60;
  }

LABEL_56:
  v22 = *(this + 13);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v23 = 2;
  }

  v3 = (v23 + v3);
  if ((v2 & 0x800) != 0)
  {
LABEL_60:
    v24 = *(this + 14);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    }

    else
    {
      v25 = 2;
    }

    v3 = (v25 + v3);
  }

LABEL_64:
  *(this + 15) = v3;
  return v3;
}

void awd::metrics::BluetoothWirelessSplitterSessionInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothWirelessSplitterSessionInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothWirelessSplitterSessionInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothWirelessSplitterSessionInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothWirelessSplitterSessionInfo::CopyFrom(awd::metrics::BluetoothWirelessSplitterSessionInfo *this, const awd::metrics::BluetoothWirelessSplitterSessionInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothWirelessSplitterSessionInfo::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothWirelessSplitterSessionInfo::Swap(uint64_t this, awd::metrics::BluetoothWirelessSplitterSessionInfo *a2)
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

double awd::metrics::BluetoothUserPermission::SharedCtor(awd::metrics::BluetoothUserPermission *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 5) = 0;
  *(this + 6) = v2;
  *(this + 7) = 0;
  return result;
}

awd::metrics::BluetoothUserPermission *awd::metrics::BluetoothUserPermission::BluetoothUserPermission(awd::metrics::BluetoothUserPermission *this, const awd::metrics::BluetoothUserPermission *a2)
{
  *this = &unk_2A1D4C408;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  v3 = MEMORY[0x29EDC9758];
  *(this + 5) = 0;
  *(this + 6) = v3;
  *(this + 7) = 0;
  awd::metrics::BluetoothUserPermission::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothUserPermission::MergeFrom(awd::metrics::BluetoothUserPermission *this, const awd::metrics::BluetoothUserPermission *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 15);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 1);
    *(this + 15) |= 1u;
    *(this + 1) = v9;
    v4 = *(a2 + 15);
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

  v10 = *(a2 + 4);
  *(this + 15) |= 2u;
  *(this + 4) = v10;
  v4 = *(a2 + 15);
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
  *(this + 15) |= 4u;
  *(this + 5) = v11;
  v4 = *(a2 + 15);
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
  v12 = *(a2 + 6);
  *(this + 15) |= 8u;
  *(this + 6) = v12;
  v4 = *(a2 + 15);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v14 = *(a2 + 8);
    *(this + 15) |= 0x20u;
    *(this + 8) = v14;
    v4 = *(a2 + 15);
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
  v13 = *(a2 + 7);
  *(this + 15) |= 0x10u;
  *(this + 7) = v13;
  v4 = *(a2 + 15);
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
  v15 = *(a2 + 9);
  *(this + 15) |= 0x40u;
  *(this + 9) = v15;
  v4 = *(a2 + 15);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 15) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 15);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 11);
      *(this + 15) |= 0x100u;
      *(this + 11) = v6;
      v4 = *(a2 + 15);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 6);
      *(this + 15) |= 0x200u;
      v8 = *(this + 6);
      if (v8 == MEMORY[0x29EDC9758])
      {
        operator new();
      }

      std::string::operator=(v8, v7);
    }
  }
}

void sub_2963B1918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothUserPermission::~BluetoothUserPermission(awd::metrics::BluetoothUserPermission *this)
{
  *this = &unk_2A1D4C408;
  awd::metrics::BluetoothUserPermission::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C408;
  awd::metrics::BluetoothUserPermission::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C408;
  awd::metrics::BluetoothUserPermission::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothUserPermission::SharedDtor(uint64_t this)
{
  v1 = *(this + 48);
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

uint64_t awd::metrics::BluetoothUserPermission::default_instance(awd::metrics::BluetoothUserPermission *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothUserPermission::default_instance_;
  if (!awd::metrics::BluetoothUserPermission::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothUserPermission::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothUserPermission::Clear(uint64_t this)
{
  v1 = *(this + 60);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 44) = 0;
    if ((v1 & 0x200) != 0)
    {
      v2 = *(this + 48);
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

  *(this + 60) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothUserPermission::MergePartialFromCodedStream(awd::metrics::BluetoothUserPermission *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 7)
          {
            if (v7 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v17 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_82;
              }
            }

            else if (v7 == 7 && (TagFallback & 7) == 0)
            {
              v13 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_90;
            }

            goto LABEL_41;
          }

          if (v7 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_98;
            }

            goto LABEL_41;
          }

          if (v7 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v21 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_106;
            }

            goto LABEL_41;
          }

          if (v7 != 10 || v8 != 2)
          {
            goto LABEL_41;
          }

          v11 = *(this + 15);
LABEL_114:
          *(this + 15) = v11 | 0x200;
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
          v9 = *(a2 + 2);
          goto LABEL_50;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v14 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v14 >= v9 || (v15 = *v14, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v15;
          v16 = v14 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 15) |= 1u;
        if (v16 < v9 && *v16 == 16)
        {
          v12 = v16 + 1;
          *(a2 + 1) = v12;
LABEL_50:
          if (v12 >= v9 || (v22 = *v12, v22 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v23 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v22;
            v23 = v12 + 1;
            *(a2 + 1) = v23;
          }

          *(this + 15) |= 2u;
          if (v23 < v9 && *v23 == 24)
          {
            v18 = v23 + 1;
            *(a2 + 1) = v18;
LABEL_58:
            if (v18 >= v9 || (v24 = *v18, v24 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v25 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v24;
              v25 = v18 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 15) |= 4u;
            if (v25 < v9 && *v25 == 32)
            {
              v20 = v25 + 1;
              *(a2 + 1) = v20;
              goto LABEL_66;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v18 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_58;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_41;
      }

      v20 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_66:
      if (v20 >= v9 || (v26 = *v20, v26 < 0))
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
        v27 = v20 + 1;
        *(a2 + 1) = v27;
      }

      *(this + 15) |= 8u;
      if (v27 < v9 && *v27 == 40)
      {
        v10 = v27 + 1;
        *(a2 + 1) = v10;
LABEL_74:
        if (v10 >= v9 || (v28 = *v10, v28 < 0))
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
          v29 = v10 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 15) |= 0x10u;
        if (v29 < v9 && *v29 == 48)
        {
          v17 = v29 + 1;
          *(a2 + 1) = v17;
LABEL_82:
          if (v17 >= v9 || (v30 = *v17, v30 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v31 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v30;
            v31 = v17 + 1;
            *(a2 + 1) = v31;
          }

          *(this + 15) |= 0x20u;
          if (v31 < v9 && *v31 == 56)
          {
            v13 = v31 + 1;
            *(a2 + 1) = v13;
LABEL_90:
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

            *(this + 15) |= 0x40u;
            if (v33 < v9 && *v33 == 64)
            {
              v19 = v33 + 1;
              *(a2 + 1) = v19;
LABEL_98:
              if (v19 >= v9 || (v34 = *v19, v34 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                if (!result)
                {
                  return result;
                }

                v35 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 10) = v34;
                v35 = v19 + 1;
                *(a2 + 1) = v35;
              }

              *(this + 15) |= 0x80u;
              if (v35 < v9 && *v35 == 72)
              {
                v21 = v35 + 1;
                *(a2 + 1) = v21;
LABEL_106:
                if (v21 >= v9 || (v36 = *v21, v36 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                  if (!result)
                  {
                    return result;
                  }

                  v37 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 11) = v36;
                  v37 = v21 + 1;
                  *(a2 + 1) = v37;
                }

                v11 = *(this + 15) | 0x100;
                *(this + 15) = v11;
                if (v37 < v9 && *v37 == 82)
                {
                  *(a2 + 1) = v37 + 1;
                  goto LABEL_114;
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
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

uint64_t awd::metrics::BluetoothUserPermission::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_14;
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

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
    if ((*(v5 + 60) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 60);
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
  v7 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothUserPermission::ByteSize(awd::metrics::BluetoothUserPermission *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
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

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 15);
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
      v2 = *(this + 15);
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
    v2 = *(this + 15);
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

    goto LABEL_30;
  }

LABEL_26:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 15);
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
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
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
    v2 = *(this + 15);
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_38:
    v16 = *(this + 10);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 15);
    }

    else
    {
      v17 = 2;
    }

    v3 = (v17 + v3);
  }

LABEL_42:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v18 = *(this + 11);
      if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
        v2 = *(this + 15);
      }

      else
      {
        v19 = 2;
      }

      v3 = (v19 + v3);
    }

    if ((v2 & 0x200) != 0)
    {
      v20 = *(this + 6);
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

      v3 = (v3 + v25 + v21 + 1);
    }
  }

  *(this + 14) = v3;
  return v3;
}

void awd::metrics::BluetoothUserPermission::CheckTypeAndMergeFrom(awd::metrics::BluetoothUserPermission *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothUserPermission::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothUserPermission::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothUserPermission::CopyFrom(awd::metrics::BluetoothUserPermission *this, const awd::metrics::BluetoothUserPermission *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothUserPermission::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothUserPermission::Swap(uint64_t this, awd::metrics::BluetoothUserPermission *a2)
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
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    v3 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v3;
    LODWORD(v3) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v3;
  }

  return this;
}

uint64_t awd::metrics::BluetoothAdvBABufferStats::SharedCtor(uint64_t this)
{
  *(this + 64) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::BluetoothAdvBABufferStats *awd::metrics::BluetoothAdvBABufferStats::BluetoothAdvBABufferStats(awd::metrics::BluetoothAdvBABufferStats *this, const awd::metrics::BluetoothAdvBABufferStats *a2)
{
  *this = &unk_2A1D4C480;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  awd::metrics::BluetoothAdvBABufferStats::MergeFrom(this, a2);
  return this;
}

void sub_2963B26CC(_Unwind_Exception *a1)
{
  v3 = v1[6];
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  awd::metrics::BluetoothAdvBABufferStats::BluetoothAdvBABufferStats((v1 + 4), v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAdvBABufferStats::MergeFrom(awd::metrics::BluetoothAdvBABufferStats *this, const awd::metrics::BluetoothAdvBABufferStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 10) + v5);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, *(this + 14) + v6);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  if (*(a2 + 68))
  {
    v7 = *(a2 + 1);
    *(this + 17) |= 1u;
    *(this + 1) = v7;
  }
}

void sub_2963B2860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAdvBABufferStats::~BluetoothAdvBABufferStats(awd::metrics::BluetoothAdvBABufferStats *this)
{
  *this = &unk_2A1D4C480;
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 2);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAdvBABufferStats::~BluetoothAdvBABufferStats(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAdvBABufferStats::default_instance(awd::metrics::BluetoothAdvBABufferStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAdvBABufferStats::default_instance_;
  if (!awd::metrics::BluetoothAdvBABufferStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAdvBABufferStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAdvBABufferStats::Clear(uint64_t this)
{
  if (*(this + 68))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 68) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAdvBABufferStats::MergePartialFromCodedStream(awd::metrics::BluetoothAdvBABufferStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v6 == 2)
          {
            if ((TagFallback & 7) == 0)
            {
              v13 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_39;
            }

            if (v7 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 16);
              if (!result)
              {
                return result;
              }

              goto LABEL_56;
            }
          }

          goto LABEL_25;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_25;
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

        *(this + 17) |= 1u;
        if (v12 < v9)
        {
          v16 = *v12;
          while (v16 == 16)
          {
            v13 = v12 + 1;
            *(a2 + 1) = v13;
LABEL_39:
            v48 = 0;
            if (v13 >= v9 || *v13 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
              {
                return 0;
              }
            }

            else
            {
              v48 = *v13;
              *(a2 + 1) = v13 + 1;
            }

            v17 = *(this + 6);
            if (v17 == *(this + 7))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v17 + 1);
              v17 = *(this + 6);
            }

            v18 = v48;
            v19 = *(this + 2);
            *(this + 6) = v17 + 1;
            *(v19 + 4 * v17) = v18;
            v20 = *(this + 7) - *(this + 6);
            if (v20 >= 1)
            {
              v21 = v20 + 1;
              do
              {
                v22 = *(a2 + 1);
                v23 = *(a2 + 2);
                if (v22 >= v23 || *v22 != 16)
                {
                  break;
                }

                *(a2 + 1) = v22 + 1;
                if ((v22 + 1) >= v23 || v22[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
                  {
                    return 0;
                  }
                }

                else
                {
                  v48 = v22[1];
                  *(a2 + 1) = v22 + 2;
                }

                v24 = *(this + 6);
                if (v24 >= *(this + 7))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v49);
                  v24 = *(this + 6);
                }

                v25 = v48;
                v26 = *(this + 2);
                *(this + 6) = v24 + 1;
                *(v26 + 4 * v24) = v25;
                --v21;
              }

              while (v21 > 1);
            }

LABEL_56:
            v12 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v12 >= v9)
            {
              break;
            }

            v16 = *v12;
            if (v16 == 24)
            {
              goto LABEL_58;
            }
          }
        }
      }

      if (v6 != 3)
      {
        if (v6 == 4)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_81;
          }

          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 48);
            if (!result)
            {
              return result;
            }

            goto LABEL_98;
          }
        }

        goto LABEL_25;
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      v15 = *(a2 + 1);
      v9 = *(a2 + 2);
      while (1)
      {
        v48 = 0;
        if (v15 >= v9 || *v15 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
          {
            return 0;
          }
        }

        else
        {
          v48 = *v15;
          *(a2 + 1) = v15 + 1;
        }

        v27 = *(this + 10);
        if (v27 == *(this + 11))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v27 + 1);
          v27 = *(this + 10);
        }

        v28 = v48;
        v29 = *(this + 4);
        *(this + 10) = v27 + 1;
        *(v29 + 4 * v27) = v28;
        v30 = *(this + 11) - *(this + 10);
        if (v30 >= 1)
        {
          v31 = v30 + 1;
          do
          {
            v32 = *(a2 + 1);
            v33 = *(a2 + 2);
            if (v32 >= v33 || *v32 != 24)
            {
              break;
            }

            *(a2 + 1) = v32 + 1;
            if ((v32 + 1) >= v33 || v32[1] < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
              {
                return 0;
              }
            }

            else
            {
              v48 = v32[1];
              *(a2 + 1) = v32 + 2;
            }

            v34 = *(this + 10);
            if (v34 >= *(this + 11))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v49);
              v34 = *(this + 10);
            }

            v35 = v48;
            v36 = *(this + 4);
            *(this + 10) = v34 + 1;
            *(v36 + 4 * v34) = v35;
            --v31;
          }

          while (v31 > 1);
        }

LABEL_76:
        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v12 >= v9)
        {
          break;
        }

        v37 = *v12;
        if (v37 == 32)
        {
          do
          {
            v14 = v12 + 1;
            *(a2 + 1) = v14;
LABEL_81:
            v48 = 0;
            if (v14 >= v9 || *v14 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
              {
                return 0;
              }
            }

            else
            {
              v48 = *v14;
              *(a2 + 1) = v14 + 1;
            }

            v38 = *(this + 14);
            if (v38 == *(this + 15))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v38 + 1);
              v38 = *(this + 14);
            }

            v39 = v48;
            v40 = *(this + 6);
            *(this + 14) = v38 + 1;
            *(v40 + 4 * v38) = v39;
            v41 = *(this + 15) - *(this + 14);
            if (v41 >= 1)
            {
              v42 = v41 + 1;
              do
              {
                v43 = *(a2 + 1);
                v44 = *(a2 + 2);
                if (v43 >= v44 || *v43 != 32)
                {
                  break;
                }

                *(a2 + 1) = v43 + 1;
                if ((v43 + 1) >= v44 || v43[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
                  {
                    return 0;
                  }
                }

                else
                {
                  v48 = v43[1];
                  *(a2 + 1) = v43 + 2;
                }

                v45 = *(this + 14);
                if (v45 >= *(this + 15))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v49);
                  v45 = *(this + 14);
                }

                v46 = v48;
                v47 = *(this + 6);
                *(this + 14) = v45 + 1;
                *(v47 + 4 * v45) = v46;
                --v42;
              }

              while (v42 > 1);
            }

LABEL_98:
            v12 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          while (v12 < v9 && *v12 == 32);
          if (v12 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        if (v37 != 24)
        {
          goto LABEL_1;
        }

LABEL_58:
        v15 = v12 + 1;
        *(a2 + 1) = v15;
      }
    }

    if (v7 == 2)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 32);
      if (!result)
      {
        return result;
      }

      goto LABEL_76;
    }

LABEL_25:
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

void sub_2963B2FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothAdvBABufferStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 68))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  return this;
}

uint64_t awd::metrics::BluetoothAdvBABufferStats::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 68))
  {
    v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 6);
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(this[2] + v4);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
        v3 = *(this + 6);
      }

      else
      {
        v7 = 1;
      }

      v5 += v7;
      ++v4;
    }

    while (v4 < v3);
  }

  v8 = *(this + 10);
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(this[4] + v9);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(this + 10);
      }

      else
      {
        v12 = 1;
      }

      v10 += v12;
      ++v9;
    }

    while (v9 < v8);
  }

  v13 = *(this + 14);
  if (v13 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(this[6] + v14);
      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(this + 14);
      }

      else
      {
        v17 = 1;
      }

      v15 += v17;
      ++v14;
    }

    while (v14 < v13);
  }

  result = (v5 + v2 + v3 + v10 + v8 + v15 + v13);
  *(this + 16) = result;
  return result;
}

void awd::metrics::BluetoothAdvBABufferStats::CheckTypeAndMergeFrom(awd::metrics::BluetoothAdvBABufferStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAdvBABufferStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAdvBABufferStats::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAdvBABufferStats::CopyFrom(awd::metrics::BluetoothAdvBABufferStats *this, const awd::metrics::BluetoothAdvBABufferStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAdvBABufferStats::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothAdvBABufferStats::Swap(awd::metrics::BluetoothAdvBABufferStats *this, awd::metrics::BluetoothAdvBABufferStats *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    v5 = *(a2 + 3);
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v6 = *(this + 3);
    *(this + 3) = v5;
    *(a2 + 3) = v6;
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v8 = *(a2 + 5);
    *(a2 + 4) = v7;
    v9 = *(this + 5);
    *(this + 5) = v8;
    *(a2 + 5) = v9;
    v10 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    result = *(a2 + 7);
    *(a2 + 6) = v10;
    v12 = *(this + 7);
    *(this + 7) = result;
    *(a2 + 7) = v12;
    LODWORD(v10) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v10;
    LODWORD(v10) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLowPowerCoreStats::SharedCtor(uint64_t this)
{
  *(this + 112) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::BluetoothLowPowerCoreStats *awd::metrics::BluetoothLowPowerCoreStats::BluetoothLowPowerCoreStats(awd::metrics::BluetoothLowPowerCoreStats *this, const awd::metrics::BluetoothLowPowerCoreStats *a2)
{
  *this = &unk_2A1D4C4F8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  awd::metrics::BluetoothLowPowerCoreStats::MergeFrom(this, a2);
  return this;
}

void sub_2963B347C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 12);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8000313F17);
  }

  v4 = *(v1 + 10);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8000313F17);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8000313F17);
  }

  v6 = *(v1 + 6);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8000313F17);
  }

  v7 = *(v1 + 4);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 2);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLowPowerCoreStats::MergeFrom(awd::metrics::BluetoothLowPowerCoreStats *this, const awd::metrics::BluetoothLowPowerCoreStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 10) + v5);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 6, *(this + 14) + v6);
    memcpy((*(this + 6) + 8 * *(this + 14)), *(a2 + 6), 8 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v7 = *(a2 + 18);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 8, *(this + 18) + v7);
    memcpy((*(this + 8) + 8 * *(this + 18)), *(a2 + 8), 8 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v8 = *(a2 + 22);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 10, *(this + 22) + v8);
    memcpy((*(this + 10) + 8 * *(this + 22)), *(a2 + 10), 8 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v9 = *(a2 + 26);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 12, *(this + 26) + v9);
    memcpy((*(this + 12) + 8 * *(this + 26)), *(a2 + 12), 8 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  if (*(a2 + 116))
  {
    v10 = *(a2 + 1);
    *(this + 29) |= 1u;
    *(this + 1) = v10;
  }
}

void sub_2963B3740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLowPowerCoreStats::~BluetoothLowPowerCoreStats(awd::metrics::BluetoothLowPowerCoreStats *this)
{
  *this = &unk_2A1D4C4F8;
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 10);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8000313F17);
  }

  v4 = *(this + 8);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8000313F17);
  }

  v5 = *(this + 6);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8000313F17);
  }

  v6 = *(this + 4);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 2);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothLowPowerCoreStats::~BluetoothLowPowerCoreStats(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLowPowerCoreStats::default_instance(awd::metrics::BluetoothLowPowerCoreStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLowPowerCoreStats::default_instance_;
  if (!awd::metrics::BluetoothLowPowerCoreStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLowPowerCoreStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLowPowerCoreStats::Clear(uint64_t this)
{
  if (*(this + 116))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 104) = 0;
  *(this + 116) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothLowPowerCoreStats::MergePartialFromCodedStream(awd::metrics::BluetoothLowPowerCoreStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 3)
        {
          break;
        }

        if (TagFallback >> 3 <= 5)
        {
          if (v6 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v13 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_100;
            }

            if (v7 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 48);
              if (!result)
              {
                return result;
              }

              goto LABEL_118;
            }
          }

          else if (v6 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_123;
            }

            if (v7 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 64);
              if (!result)
              {
                return result;
              }

              goto LABEL_141;
            }
          }

          goto LABEL_41;
        }

        if (v6 != 6)
        {
          if (v6 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_169;
            }

            if (v7 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 96);
              if (!result)
              {
                return result;
              }

              goto LABEL_187;
            }
          }

          goto LABEL_41;
        }

        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 80);
            if (!result)
            {
              return result;
            }

            goto LABEL_164;
          }

          goto LABEL_41;
        }

        v14 = *(a2 + 1);
        v9 = *(a2 + 2);
        while (1)
        {
          v84 = 0;
          if (v14 >= v9 || (*v14 & 0x8000000000000000) != 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v84))
            {
              return 0;
            }
          }

          else
          {
            v84 = *v14;
            *(a2 + 1) = v14 + 1;
          }

          v63 = *(this + 22);
          v64 = *(this + 23);
          if (v63 == v64)
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 10, v63 + 1);
            v63 = *(this + 22);
            v64 = *(this + 23);
          }

          v65 = v84;
          v66 = *(this + 10);
          v67 = v63 + 1;
          *(this + 22) = v63 + 1;
          *(v66 + 8 * v63) = v65;
          if (v64 - (v63 + 1) >= 1)
          {
            v68 = v64 - v63;
            do
            {
              v69 = *(a2 + 1);
              v70 = *(a2 + 2);
              if (v69 >= v70 || *v69 != 48)
              {
                break;
              }

              *(a2 + 1) = v69 + 1;
              if ((v69 + 1) >= v70 || (v69[1] & 0x8000000000000000) != 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v84))
                {
                  return 0;
                }

                v67 = *(this + 22);
              }

              else
              {
                v84 = v69[1];
                *(a2 + 1) = v69 + 2;
              }

              if (v67 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v85);
                v67 = *(this + 22);
              }

              v71 = v84;
              v72 = *(this + 10);
              *(this + 22) = v67 + 1;
              *(v72 + 8 * v67) = v71;
              --v68;
              ++v67;
            }

            while (v68 > 1);
          }

LABEL_164:
          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v12 >= v9)
          {
            break;
          }

          v73 = *v12;
          if (v73 == 56)
          {
            do
            {
              v16 = v12 + 1;
              *(a2 + 1) = v16;
LABEL_169:
              v84 = 0;
              if (v16 >= v9 || (*v16 & 0x8000000000000000) != 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v84))
                {
                  return 0;
                }
              }

              else
              {
                v84 = *v16;
                *(a2 + 1) = v16 + 1;
              }

              v74 = *(this + 26);
              v75 = *(this + 27);
              if (v74 == v75)
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 12, v74 + 1);
                v74 = *(this + 26);
                v75 = *(this + 27);
              }

              v76 = v84;
              v77 = *(this + 12);
              v78 = v74 + 1;
              *(this + 26) = v74 + 1;
              *(v77 + 8 * v74) = v76;
              if (v75 - (v74 + 1) >= 1)
              {
                v79 = v75 - v74;
                do
                {
                  v80 = *(a2 + 1);
                  v81 = *(a2 + 2);
                  if (v80 >= v81 || *v80 != 56)
                  {
                    break;
                  }

                  *(a2 + 1) = v80 + 1;
                  if ((v80 + 1) >= v81 || (v80[1] & 0x8000000000000000) != 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v84))
                    {
                      return 0;
                    }

                    v78 = *(this + 26);
                  }

                  else
                  {
                    v84 = v80[1];
                    *(a2 + 1) = v80 + 2;
                  }

                  if (v78 >= *(this + 27))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v85);
                    v78 = *(this + 26);
                  }

                  v82 = v84;
                  v83 = *(this + 12);
                  *(this + 26) = v78 + 1;
                  *(v83 + 8 * v78) = v82;
                  --v79;
                  ++v78;
                }

                while (v79 > 1);
              }

LABEL_187:
              v12 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            while (v12 < v9 && *v12 == 56);
            if (v12 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }

            goto LABEL_1;
          }

          if (v73 != 48)
          {
            goto LABEL_1;
          }

LABEL_145:
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_41;
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

      *(this + 29) |= 1u;
      if (v12 < v9)
      {
        v19 = *v12;
        while (v19 == 16)
        {
          v18 = v12 + 1;
          *(a2 + 1) = v18;
LABEL_58:
          LODWORD(v84) = 0;
          if (v18 >= v9 || *v18 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
            {
              return 0;
            }
          }

          else
          {
            LODWORD(v84) = *v18;
            *(a2 + 1) = v18 + 1;
          }

          v20 = *(this + 6);
          if (v20 == *(this + 7))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v20 + 1);
            v20 = *(this + 6);
          }

          v21 = v84;
          v22 = *(this + 2);
          *(this + 6) = v20 + 1;
          *(v22 + 4 * v20) = v21;
          v23 = *(this + 7) - *(this + 6);
          if (v23 >= 1)
          {
            v24 = v23 + 1;
            do
            {
              v25 = *(a2 + 1);
              v26 = *(a2 + 2);
              if (v25 >= v26 || *v25 != 16)
              {
                break;
              }

              *(a2 + 1) = v25 + 1;
              if ((v25 + 1) >= v26 || v25[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
                {
                  return 0;
                }
              }

              else
              {
                LODWORD(v84) = v25[1];
                *(a2 + 1) = v25 + 2;
              }

              v27 = *(this + 6);
              if (v27 >= *(this + 7))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v85);
                v27 = *(this + 6);
              }

              v28 = v84;
              v29 = *(this + 2);
              *(this + 6) = v27 + 1;
              *(v29 + 4 * v27) = v28;
              --v24;
            }

            while (v24 > 1);
          }

LABEL_75:
          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v12 >= v9)
          {
            break;
          }

          v19 = *v12;
          if (v19 == 24)
          {
            while (1)
            {
              v17 = v12 + 1;
              *(a2 + 1) = v17;
LABEL_78:
              LODWORD(v84) = 0;
              if (v17 >= v9 || *v17 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
                {
                  return 0;
                }
              }

              else
              {
                LODWORD(v84) = *v17;
                *(a2 + 1) = v17 + 1;
              }

              v30 = *(this + 10);
              if (v30 == *(this + 11))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v30 + 1);
                v30 = *(this + 10);
              }

              v31 = v84;
              v32 = *(this + 4);
              *(this + 10) = v30 + 1;
              *(v32 + 4 * v30) = v31;
              v33 = *(this + 11) - *(this + 10);
              if (v33 >= 1)
              {
                v34 = v33 + 1;
                do
                {
                  v35 = *(a2 + 1);
                  v36 = *(a2 + 2);
                  if (v35 >= v36 || *v35 != 24)
                  {
                    break;
                  }

                  *(a2 + 1) = v35 + 1;
                  if ((v35 + 1) >= v36 || v35[1] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    LODWORD(v84) = v35[1];
                    *(a2 + 1) = v35 + 2;
                  }

                  v37 = *(this + 10);
                  if (v37 >= *(this + 11))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v85);
                    v37 = *(this + 10);
                  }

                  v38 = v84;
                  v39 = *(this + 4);
                  *(this + 10) = v37 + 1;
                  *(v39 + 4 * v37) = v38;
                  --v34;
                }

                while (v34 > 1);
              }

LABEL_95:
              v12 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v12 >= v9)
              {
                goto LABEL_1;
              }

              v40 = *v12;
              if (v40 == 32)
              {
                while (1)
                {
                  v13 = v12 + 1;
                  *(a2 + 1) = v13;
LABEL_100:
                  v84 = 0;
                  if (v13 >= v9 || (*v13 & 0x8000000000000000) != 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v84))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v84 = *v13;
                    *(a2 + 1) = v13 + 1;
                  }

                  v41 = *(this + 14);
                  v42 = *(this + 15);
                  if (v41 == v42)
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 6, v41 + 1);
                    v41 = *(this + 14);
                    v42 = *(this + 15);
                  }

                  v43 = v84;
                  v44 = *(this + 6);
                  v45 = v41 + 1;
                  *(this + 14) = v41 + 1;
                  *(v44 + 8 * v41) = v43;
                  if (v42 - (v41 + 1) >= 1)
                  {
                    v46 = v42 - v41;
                    do
                    {
                      v47 = *(a2 + 1);
                      v48 = *(a2 + 2);
                      if (v47 >= v48 || *v47 != 32)
                      {
                        break;
                      }

                      *(a2 + 1) = v47 + 1;
                      if ((v47 + 1) >= v48 || (v47[1] & 0x8000000000000000) != 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v84))
                        {
                          return 0;
                        }

                        v45 = *(this + 14);
                      }

                      else
                      {
                        v84 = v47[1];
                        *(a2 + 1) = v47 + 2;
                      }

                      if (v45 >= *(this + 15))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v85);
                        v45 = *(this + 14);
                      }

                      v49 = v84;
                      v50 = *(this + 6);
                      *(this + 14) = v45 + 1;
                      *(v50 + 8 * v45) = v49;
                      --v46;
                      ++v45;
                    }

                    while (v46 > 1);
                  }

LABEL_118:
                  v12 = *(a2 + 1);
                  v9 = *(a2 + 2);
                  if (v12 >= v9)
                  {
                    goto LABEL_1;
                  }

                  v51 = *v12;
                  if (v51 == 40)
                  {
                    do
                    {
                      v15 = v12 + 1;
                      *(a2 + 1) = v15;
LABEL_123:
                      v84 = 0;
                      if (v15 >= v9 || (*v15 & 0x8000000000000000) != 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v84))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v84 = *v15;
                        *(a2 + 1) = v15 + 1;
                      }

                      v52 = *(this + 18);
                      v53 = *(this + 19);
                      if (v52 == v53)
                      {
                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 8, v52 + 1);
                        v52 = *(this + 18);
                        v53 = *(this + 19);
                      }

                      v54 = v84;
                      v55 = *(this + 8);
                      v56 = v52 + 1;
                      *(this + 18) = v52 + 1;
                      *(v55 + 8 * v52) = v54;
                      if (v53 - (v52 + 1) >= 1)
                      {
                        v57 = v53 - v52;
                        do
                        {
                          v58 = *(a2 + 1);
                          v59 = *(a2 + 2);
                          if (v58 >= v59 || *v58 != 40)
                          {
                            break;
                          }

                          *(a2 + 1) = v58 + 1;
                          if ((v58 + 1) >= v59 || (v58[1] & 0x8000000000000000) != 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v84))
                            {
                              return 0;
                            }

                            v56 = *(this + 18);
                          }

                          else
                          {
                            v84 = v58[1];
                            *(a2 + 1) = v58 + 2;
                          }

                          if (v56 >= *(this + 19))
                          {
                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v85);
                            v56 = *(this + 18);
                          }

                          v60 = v84;
                          v61 = *(this + 8);
                          *(this + 18) = v56 + 1;
                          *(v61 + 8 * v56) = v60;
                          --v57;
                          ++v56;
                        }

                        while (v57 > 1);
                      }

LABEL_141:
                      v12 = *(a2 + 1);
                      v9 = *(a2 + 2);
                      if (v12 >= v9)
                      {
                        break;
                      }

                      v62 = *v12;
                      if (v62 == 48)
                      {
                        goto LABEL_145;
                      }
                    }

                    while (v62 == 40);
                    goto LABEL_1;
                  }

                  if (v51 != 32)
                  {
                    goto LABEL_1;
                  }
                }
              }

              if (v40 != 24)
              {
                goto LABEL_1;
              }
            }
          }
        }
      }
    }

    if (v6 == 2)
    {
      if ((TagFallback & 7) == 0)
      {
        v18 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_58;
      }

      if (v7 == 2)
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 16);
        if (!result)
        {
          return result;
        }

        goto LABEL_75;
      }
    }

    else if (v6 == 3)
    {
      if ((TagFallback & 7) == 0)
      {
        v17 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_78;
      }

      if (v7 == 2)
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 32);
        if (!result)
        {
          return result;
        }

        goto LABEL_95;
      }
    }

LABEL_41:
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

void sub_2963B43B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v11 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v10 = 0;
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (*v6 & 0x8000000000000000) != 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v10);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v10 = *v6;
        *(this + 1) = v6 + 1;
      }

      v7 = *(a2 + 8);
      if (v7 == *(a2 + 12))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(a2, v7 + 1);
        v7 = *(a2 + 8);
      }

      v8 = v10;
      v9 = *a2;
      *(a2 + 8) = v7 + 1;
      *(v9 + 8 * v7) = v8;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t awd::metrics::BluetoothLowPowerCoreStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 116))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(*(v5 + 48) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(*(v5 + 64) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(*(v5 + 80) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(7, *(*(v5 + 96) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 104));
  }

  return this;
}

uint64_t awd::metrics::BluetoothLowPowerCoreStats::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 116))
  {
    v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 6);
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(this[2] + v4);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
        v3 = *(this + 6);
      }

      else
      {
        v7 = 1;
      }

      v5 += v7;
      ++v4;
    }

    while (v4 < v3);
  }

  v8 = *(this + 10);
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(this[4] + v9);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(this + 10);
      }

      else
      {
        v12 = 1;
      }

      v10 += v12;
      ++v9;
    }

    while (v9 < v8);
  }

  v27 = v8;
  LODWORD(v13) = *(this + 14);
  if (v13 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v15 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this[6] + v14++));
      v13 = *(this + 14);
    }

    while (v14 < v13);
  }

  LODWORD(v16) = *(this + 18);
  v29 = v3;
  if (v16 < 1)
  {
    v18 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v18 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this[8] + v17++));
      v16 = *(this + 18);
    }

    while (v17 < v16);
  }

  v28 = v5;
  LODWORD(v19) = *(this + 22);
  if (v19 < 1)
  {
    v21 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v21 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this[10] + v20++));
      v19 = *(this + 22);
    }

    while (v20 < v19);
  }

  LODWORD(v22) = *(this + 26);
  if (v22 < 1)
  {
    v24 = 0;
  }

  else
  {
    v26 = v2;
    v23 = 0;
    v24 = 0;
    do
    {
      v24 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this[12] + v23++));
      v22 = *(this + 26);
    }

    while (v23 < v22);
    v2 = v26;
  }

  result = (v28 + v2 + v29 + v10 + v27 + v15 + v13 + v18 + v16 + v21 + v19 + v22 + v24);
  *(this + 28) = result;
  return result;
}

void awd::metrics::BluetoothLowPowerCoreStats::CheckTypeAndMergeFrom(awd::metrics::BluetoothLowPowerCoreStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLowPowerCoreStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLowPowerCoreStats::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLowPowerCoreStats::CopyFrom(awd::metrics::BluetoothLowPowerCoreStats *this, const awd::metrics::BluetoothLowPowerCoreStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLowPowerCoreStats::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothLowPowerCoreStats::Swap(awd::metrics::BluetoothLowPowerCoreStats *this, awd::metrics::BluetoothLowPowerCoreStats *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    v5 = *(a2 + 3);
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v6 = *(this + 3);
    *(this + 3) = v5;
    *(a2 + 3) = v6;
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v8 = *(a2 + 5);
    *(a2 + 4) = v7;
    v9 = *(this + 5);
    *(this + 5) = v8;
    *(a2 + 5) = v9;
    v10 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v11 = *(a2 + 7);
    *(a2 + 6) = v10;
    v12 = *(this + 7);
    *(this + 7) = v11;
    *(a2 + 7) = v12;
    v13 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v14 = *(a2 + 9);
    *(a2 + 8) = v13;
    v15 = *(this + 9);
    *(this + 9) = v14;
    *(a2 + 9) = v15;
    v16 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    v17 = *(a2 + 11);
    *(a2 + 10) = v16;
    v18 = *(this + 11);
    *(this + 11) = v17;
    *(a2 + 11) = v18;
    v19 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    result = *(a2 + 13);
    *(a2 + 12) = v19;
    v21 = *(this + 13);
    *(this + 13) = result;
    *(a2 + 13) = v21;
    LODWORD(v19) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v19;
    LODWORD(v19) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v19;
  }

  return result;
}

double awd::metrics::BluetoothAccessoryIdentification::BluetoothAccessoryIdentification(awd::metrics::BluetoothAccessoryIdentification *this)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 69) = 0;
  *this = &unk_2A1D4C570;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = MEMORY[0x29EDC9758];
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = v1;
  *(this + 28) = v1;
  *(this + 272) = 0;
  *(this + 29) = v1;
  *(this + 30) = v1;
  *(this + 31) = v1;
  *(this + 32) = v1;
  *(this + 33) = v1;
  *(this + 35) = 0;
  return result;
}

double awd::metrics::BluetoothAccessoryIdentification::SharedCtor(awd::metrics::BluetoothAccessoryIdentification *this)
{
  *(this + 69) = 0;
  *(this + 1) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = MEMORY[0x29EDC9758];
  result = 0.0;
  *(this + 9) = 0;
  *(this + 13) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = v1;
  *(this + 28) = v1;
  *(this + 272) = 0;
  *(this + 29) = v1;
  *(this + 30) = v1;
  *(this + 31) = v1;
  *(this + 32) = v1;
  *(this + 33) = v1;
  *(this + 35) = 0;
  return result;
}

awd::metrics::BluetoothAccessoryIdentification *awd::metrics::BluetoothAccessoryIdentification::BluetoothAccessoryIdentification(awd::metrics::BluetoothAccessoryIdentification *this, const awd::metrics::BluetoothAccessoryIdentification *a2)
{
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 69) = 0;
  *this = &unk_2A1D4C570;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 8) = MEMORY[0x29EDC9758];
  *(this + 72) = 0u;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = v3;
  *(this + 28) = v3;
  *(this + 272) = 0;
  *(this + 29) = v3;
  *(this + 30) = v3;
  *(this + 31) = v3;
  *(this + 32) = v3;
  *(this + 33) = v3;
  *(this + 35) = 0;
  awd::metrics::BluetoothAccessoryIdentification::MergeFrom(this, a2);
  return this;
}

void sub_2963B4C70(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v1 + 28);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v1 + 20);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

std::string *awd::metrics::BluetoothAccessoryIdentification::MergeFrom(awd::metrics::BluetoothAccessoryIdentification *this, const awd::metrics::BluetoothAccessoryIdentification *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v49);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 16), a2 + 16);
  wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 40), a2 + 40);
  wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 80), a2 + 80);
  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 112), a2 + 112);
  v5 = *(a2 + 70);
  if (!v5)
  {
    goto LABEL_10;
  }

  if (v5)
  {
    v9 = *(a2 + 1);
    *(this + 70) |= 1u;
    *(this + 1) = v9;
    v5 = *(a2 + 70);
    if ((v5 & 8) == 0)
    {
LABEL_6:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_7;
      }

LABEL_43:
      v12 = *(a2 + 18);
      *(this + 70) |= 0x10u;
      *(this + 18) = v12;
      v5 = *(a2 + 70);
      if ((v5 & 0x20) == 0)
      {
LABEL_8:
        if ((v5 & 0x40) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_44;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 8);
  *(this + 70) |= 8u;
  v11 = *(this + 8);
  if (v11 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  result = std::string::operator=(v11, v10);
  v5 = *(a2 + 70);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_43;
  }

LABEL_7:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_44:
  v13 = *(a2 + 19);
  *(this + 70) |= 0x20u;
  *(this + 19) = v13;
  v5 = *(a2 + 70);
  if ((v5 & 0x40) != 0)
  {
LABEL_9:
    v6 = *(a2 + 26);
    *(this + 70) |= 0x40u;
    *(this + 26) = v6;
    v5 = *(a2 + 70);
  }

LABEL_10:
  if ((v5 & 0x1FE00) == 0)
  {
    goto LABEL_19;
  }

  if ((v5 & 0x200) != 0)
  {
    v14 = *(a2 + 27);
    *(this + 70) |= 0x200u;
    *(this + 27) = v14;
    v5 = *(a2 + 70);
    if ((v5 & 0x400) == 0)
    {
LABEL_13:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_48;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_13;
  }

  v15 = *(a2 + 34);
  *(this + 70) |= 0x400u;
  *(this + 34) = v15;
  v5 = *(a2 + 70);
  if ((v5 & 0x800) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  v16 = *(a2 + 35);
  *(this + 70) |= 0x800u;
  *(this + 35) = v16;
  v5 = *(a2 + 70);
  if ((v5 & 0x1000) == 0)
  {
LABEL_15:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  v17 = *(a2 + 36);
  *(this + 70) |= 0x1000u;
  *(this + 36) = v17;
  v5 = *(a2 + 70);
  if ((v5 & 0x2000) == 0)
  {
LABEL_16:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  v18 = *(a2 + 37);
  *(this + 70) |= 0x2000u;
  *(this + 37) = v18;
  v5 = *(a2 + 70);
  if ((v5 & 0x4000) == 0)
  {
LABEL_17:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_51:
  v19 = *(a2 + 38);
  *(this + 70) |= 0x4000u;
  *(this + 38) = v19;
  v5 = *(a2 + 70);
  if ((v5 & 0x8000) != 0)
  {
LABEL_18:
    v7 = *(a2 + 39);
    *(this + 70) |= 0x8000u;
    *(this + 39) = v7;
    v5 = *(a2 + 70);
  }

LABEL_19:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_29;
  }

  if ((v5 & 0x10000) != 0)
  {
    v20 = *(a2 + 40);
    *(this + 70) |= 0x10000u;
    *(this + 40) = v20;
    v5 = *(a2 + 70);
    if ((v5 & 0x20000) == 0)
    {
LABEL_22:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_55;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_22;
  }

  v21 = *(a2 + 41);
  *(this + 70) |= 0x20000u;
  *(this + 41) = v21;
  v5 = *(a2 + 70);
  if ((v5 & 0x40000) == 0)
  {
LABEL_23:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  v22 = *(a2 + 42);
  *(this + 70) |= 0x40000u;
  *(this + 42) = v22;
  v5 = *(a2 + 70);
  if ((v5 & 0x80000) == 0)
  {
LABEL_24:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  v23 = *(a2 + 43);
  *(this + 70) |= 0x80000u;
  *(this + 43) = v23;
  v5 = *(a2 + 70);
  if ((v5 & 0x100000) == 0)
  {
LABEL_25:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  v24 = *(a2 + 44);
  *(this + 70) |= 0x100000u;
  *(this + 44) = v24;
  v5 = *(a2 + 70);
  if ((v5 & 0x200000) == 0)
  {
LABEL_26:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  v25 = *(a2 + 45);
  *(this + 70) |= 0x200000u;
  *(this + 45) = v25;
  v5 = *(a2 + 70);
  if ((v5 & 0x400000) == 0)
  {
LABEL_27:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_59:
  v26 = *(a2 + 46);
  *(this + 70) |= 0x400000u;
  *(this + 46) = v26;
  v5 = *(a2 + 70);
  if ((v5 & 0x800000) != 0)
  {
LABEL_28:
    v8 = *(a2 + 47);
    *(this + 70) |= 0x800000u;
    *(this + 47) = v8;
    v5 = *(a2 + 70);
  }

LABEL_29:
  if (!HIBYTE(v5))
  {
    goto LABEL_73;
  }

  if ((v5 & 0x1000000) != 0)
  {
    v27 = *(a2 + 48);
    *(this + 70) |= 0x1000000u;
    *(this + 48) = v27;
    v5 = *(a2 + 70);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_32:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_63;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_32;
  }

  v28 = *(a2 + 49);
  *(this + 70) |= 0x2000000u;
  *(this + 49) = v28;
  v5 = *(a2 + 70);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_64;
  }

LABEL_63:
  v29 = *(a2 + 50);
  *(this + 70) |= 0x4000000u;
  *(this + 50) = v29;
  v5 = *(a2 + 70);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_65;
  }

LABEL_64:
  v30 = *(a2 + 51);
  *(this + 70) |= 0x8000000u;
  *(this + 51) = v30;
  v5 = *(a2 + 70);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_66;
  }

LABEL_65:
  v31 = *(a2 + 52);
  *(this + 70) |= 0x10000000u;
  *(this + 52) = v31;
  v5 = *(a2 + 70);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_67;
  }

LABEL_66:
  v32 = *(a2 + 53);
  *(this + 70) |= 0x20000000u;
  *(this + 53) = v32;
  v5 = *(a2 + 70);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_70;
  }

LABEL_67:
  v33 = *(a2 + 27);
  *(this + 70) |= 0x40000000u;
  v34 = *(this + 27);
  if (v34 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  result = std::string::operator=(v34, v33);
  if ((*(a2 + 70) & 0x80000000) != 0)
  {
LABEL_70:
    v35 = *(a2 + 28);
    *(this + 70) |= 0x80000000;
    v36 = *(this + 28);
    if (v36 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    result = std::string::operator=(v36, v35);
  }

LABEL_73:
  LOBYTE(v37) = *(a2 + 284);
  if (!v37)
  {
    return result;
  }

  if (*(a2 + 284))
  {
    v38 = *(a2 + 272);
    *(this + 71) |= 1u;
    *(this + 272) = v38;
    v37 = *(a2 + 71);
    if ((v37 & 2) == 0)
    {
LABEL_76:
      if ((v37 & 4) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_85;
    }
  }

  else if ((*(a2 + 284) & 2) == 0)
  {
    goto LABEL_76;
  }

  v39 = *(a2 + 29);
  *(this + 71) |= 2u;
  v40 = *(this + 29);
  if (v40 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  result = std::string::operator=(v40, v39);
  v37 = *(a2 + 71);
  if ((v37 & 4) == 0)
  {
LABEL_77:
    if ((v37 & 8) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_88;
  }

LABEL_85:
  v41 = *(a2 + 30);
  *(this + 71) |= 4u;
  v42 = *(this + 30);
  if (v42 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  result = std::string::operator=(v42, v41);
  v37 = *(a2 + 71);
  if ((v37 & 8) == 0)
  {
LABEL_78:
    if ((v37 & 0x10) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_91;
  }

LABEL_88:
  v43 = *(a2 + 31);
  *(this + 71) |= 8u;
  v44 = *(this + 31);
  if (v44 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  result = std::string::operator=(v44, v43);
  v37 = *(a2 + 71);
  if ((v37 & 0x10) == 0)
  {
LABEL_79:
    if ((v37 & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_94;
  }

LABEL_91:
  v45 = *(a2 + 32);
  *(this + 71) |= 0x10u;
  v46 = *(this + 32);
  if (v46 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  result = std::string::operator=(v46, v45);
  if ((*(a2 + 71) & 0x20) != 0)
  {
LABEL_94:
    v47 = *(a2 + 33);
    *(this + 71) |= 0x20u;
    v48 = *(this + 33);
    if (v48 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    return std::string::operator=(v48, v47);
  }

  return result;
}

void sub_2963B53A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryIdentification::~BluetoothAccessoryIdentification(awd::metrics::BluetoothAccessoryIdentification *this)
{
  *this = &unk_2A1D4C570;
  v2 = (this + 112);
  awd::metrics::BluetoothAccessoryIdentification::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 20);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 10);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 4);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAccessoryIdentification::~BluetoothAccessoryIdentification(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothAccessoryIdentification::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[8];
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C259F00](v2, 0x1012C40EC159624);
  }

  v5 = v1[27];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C259F00](v5, 0x1012C40EC159624);
  }

  v7 = v1[28];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C259F00](v7, 0x1012C40EC159624);
  }

  v9 = v1[29];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x29C259F00](v9, 0x1012C40EC159624);
  }

  v11 = v1[30];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x29C259F00](v11, 0x1012C40EC159624);
  }

  v12 = v1[31];
  if (v12 != v3 && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    this = MEMORY[0x29C259F00](v12, 0x1012C40EC159624);
  }

  v13 = v1[32];
  if (v13 != v3 && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    this = MEMORY[0x29C259F00](v13, 0x1012C40EC159624);
  }

  v14 = v1[33];
  if (v14 != v3 && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothAccessoryIdentification::default_instance(awd::metrics::BluetoothAccessoryIdentification *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryIdentification::default_instance_;
  if (!awd::metrics::BluetoothAccessoryIdentification::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryIdentification::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryIdentification::Clear(awd::metrics::BluetoothAccessoryIdentification *this)
{
  v2 = *(this + 70);
  if (v2)
  {
    *(this + 1) = 0;
    if ((v2 & 8) != 0)
    {
      v3 = *(this + 8);
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

    *(this + 9) = 0;
    *(this + 26) = 0;
    v2 = *(this + 70);
  }

  if ((v2 & 0x1FE00) != 0)
  {
    *(this + 27) = 0;
    *(this + 18) = 0;
    *(this + 19) = 0;
    *(this + 17) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 10) = 0u;
    *(this + 11) = 0u;
  }

  if (HIBYTE(v2))
  {
    *(this + 24) = 0;
    *(this + 25) = 0;
    *(this + 26) = 0;
    if ((v2 & 0x40000000) != 0)
    {
      v4 = *(this + 27);
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

    if ((*(this + 70) & 0x80000000) != 0)
    {
      v7 = *(this + 28);
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
  }

  v5 = *(this + 284);
  if (v5)
  {
    *(this + 272) = 0;
    if ((v5 & 2) != 0)
    {
      v6 = *(this + 29);
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

    if ((*(this + 284) & 4) != 0)
    {
      v8 = *(this + 30);
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

    if ((*(this + 284) & 8) != 0)
    {
      v9 = *(this + 31);
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

    if ((*(this + 284) & 0x10) != 0)
    {
      v10 = *(this + 32);
      if (v10 != MEMORY[0x29EDC9758])
      {
        if (*(v10 + 23) < 0)
        {
          **v10 = 0;
          *(v10 + 8) = 0;
        }

        else
        {
          *v10 = 0;
          *(v10 + 23) = 0;
        }
      }
    }

    if ((*(this + 284) & 0x20) != 0)
    {
      v11 = *(this + 33);
      if (v11 != MEMORY[0x29EDC9758])
      {
        if (*(v11 + 23) < 0)
        {
          **v11 = 0;
          *(v11 + 8) = 0;
        }

        else
        {
          *v11 = 0;
          *(v11 + 23) = 0;
        }
      }
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 16);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 80);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 112);
  *(this + 35) = 0;
  return result;
}

uint64_t awd::metrics::BluetoothAccessoryIdentification::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v3 = this;
LABEL_2:
  while (2)
  {
    v4 = *(a2 + 1);
    if (v4 >= *(a2 + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
    {
      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      v5 = this;
      *(a2 + 8) = this;
      if (!this)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = v5;
      *(a2 + 1) = v4 + 1;
      if (!v5)
      {
        return 1;
      }
    }

    v6 = v5 & 7;
    switch(v5 >> 3)
    {
      case 1u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v7 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v7 < v8)
        {
          v9 = *v7;
          if ((v9 & 0x8000000000000000) == 0)
          {
            *(v3 + 8) = v9;
            v10 = v7 + 1;
            *(a2 + 1) = v10;
LABEL_91:
            *(v3 + 280) |= 1u;
            if (v10 >= v8 || *v10 != 18)
            {
              continue;
            }

            goto LABEL_93;
          }
        }

        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 8));
        if (this)
        {
          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_91;
        }

        break;
      case 2u:
        if (v6 != 2)
        {
          goto LABEL_85;
        }

LABEL_94:
        v41 = *(v3 + 28);
        v42 = *(v3 + 24);
        if (v42 >= v41)
        {
          if (v41 == *(v3 + 32))
          {
            this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 16));
            v41 = *(v3 + 28);
          }

          *(v3 + 28) = v41 + 1;
          v45 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
          v46 = *(v3 + 16);
          v47 = *(v3 + 24);
          *(v3 + 24) = v47 + 1;
          *(v46 + 8 * v47) = v45;
        }

        else
        {
          v43 = *(v3 + 16);
          *(v3 + 24) = v42 + 1;
          v44 = *(v43 + 8 * v42);
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!this)
        {
          return this;
        }

        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2))
        {
          continue;
        }

        v48 = *v10;
        if (v48 == 18)
        {
LABEL_93:
          *(a2 + 1) = v10 + 1;
          goto LABEL_94;
        }

        if (v48 != 26)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v10 + 1;
LABEL_104:
          v49 = *(v3 + 52);
          v50 = *(v3 + 48);
          if (v50 >= v49)
          {
            if (v49 == *(v3 + 56))
            {
              this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 40));
              v49 = *(v3 + 52);
            }

            *(v3 + 52) = v49 + 1;
            v53 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
            v54 = *(v3 + 40);
            v55 = *(v3 + 48);
            *(v3 + 48) = v55 + 1;
            *(v54 + 8 * v55) = v53;
          }

          else
          {
            v51 = *(v3 + 40);
            *(v3 + 48) = v50 + 1;
            v52 = *(v51 + 8 * v50);
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!this)
          {
            return this;
          }

          v10 = *(a2 + 1);
          if (v10 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v56 = *v10;
        }

        while (v56 == 26);
        if (v56 != 34)
        {
          continue;
        }

        *(a2 + 1) = v10 + 1;
LABEL_114:
        *(v3 + 280) |= 8u;
        if (*(v3 + 64) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v57 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v57 >= v17 || *v57 != 40)
        {
          continue;
        }

        v18 = v57 + 1;
        *(a2 + 1) = v18;
LABEL_120:
        if (v18 >= v17 || (v58 = *v18, v58 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 72));
          if (!this)
          {
            return this;
          }

          v59 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(v3 + 72) = v58;
          v59 = v18 + 1;
          *(a2 + 1) = v59;
        }

        *(v3 + 280) |= 0x10u;
        if (v59 >= v17 || *v59 != 48)
        {
          continue;
        }

        v26 = v59 + 1;
        *(a2 + 1) = v26;
LABEL_128:
        if (v26 >= v17 || (v60 = *v26, v60 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 76));
          if (!this)
          {
            return this;
          }

          v61 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(v3 + 76) = v60;
          v61 = v26 + 1;
          *(a2 + 1) = v61;
        }

        *(v3 + 280) |= 0x20u;
        if (v61 >= v17 || *v61 != 56)
        {
          continue;
        }

        v29 = v61 + 1;
        *(a2 + 1) = v29;
LABEL_136:
        if (v29 >= v17 || (v62 = *v29, v62 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 104));
          if (!this)
          {
            return this;
          }

          v63 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(v3 + 104) = v62;
          v63 = v29 + 1;
          *(a2 + 1) = v63;
        }

        *(v3 + 280) |= 0x40u;
        if (v63 >= v17 || *v63 != 66)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v63 + 1;
LABEL_144:
          v64 = *(v3 + 92);
          v65 = *(v3 + 88);
          if (v65 >= v64)
          {
            if (v64 == *(v3 + 96))
            {
              this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 80));
              v64 = *(v3 + 92);
            }

            *(v3 + 92) = v64 + 1;
            v68 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
            v69 = *(v3 + 80);
            v70 = *(v3 + 88);
            *(v3 + 88) = v70 + 1;
            *(v69 + 8 * v70) = v68;
          }

          else
          {
            v66 = *(v3 + 80);
            *(v3 + 88) = v65 + 1;
            v67 = *(v66 + 8 * v65);
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!this)
          {
            return this;
          }

          v63 = *(a2 + 1);
          if (v63 >= *(a2 + 2))
          {
            goto LABEL_2;
          }

          v71 = *v63;
        }

        while (v71 == 66);
        if (v71 != 74)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v63 + 1;
LABEL_154:
          v72 = *(v3 + 124);
          v73 = *(v3 + 120);
          if (v73 >= v72)
          {
            if (v72 == *(v3 + 128))
            {
              this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 112));
              v72 = *(v3 + 124);
            }

            *(v3 + 124) = v72 + 1;
            v76 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
            v77 = *(v3 + 112);
            v78 = *(v3 + 120);
            *(v3 + 120) = v78 + 1;
            *(v77 + 8 * v78) = v76;
          }

          else
          {
            v74 = *(v3 + 112);
            *(v3 + 120) = v73 + 1;
            v75 = *(v74 + 8 * v73);
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!this)
          {
            return this;
          }

          v63 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v63 >= v11)
          {
            goto LABEL_2;
          }

          v79 = *v63;
        }

        while (v79 == 74);
        if (v79 != 80)
        {
          continue;
        }

        v20 = v63 + 1;
        *(a2 + 1) = v20;
LABEL_164:
        if (v20 >= v11 || (v80 = *v20, v80 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 108));
          if (!this)
          {
            return this;
          }

          v81 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 108) = v80;
          v81 = v20 + 1;
          *(a2 + 1) = v81;
        }

        *(v3 + 280) |= 0x200u;
        if (v81 >= v11 || *v81 != 88)
        {
          continue;
        }

        v31 = v81 + 1;
        *(a2 + 1) = v31;
LABEL_172:
        if (v31 >= v11 || (v82 = *v31, v82 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 136));
          if (!this)
          {
            return this;
          }

          v83 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 136) = v82;
          v83 = v31 + 1;
          *(a2 + 1) = v83;
        }

        *(v3 + 280) |= 0x400u;
        if (v83 >= v11 || *v83 != 96)
        {
          continue;
        }

        v16 = v83 + 1;
        *(a2 + 1) = v16;
LABEL_180:
        if (v16 >= v11 || (v84 = *v16, v84 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 140));
          if (!this)
          {
            return this;
          }

          v85 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 140) = v84;
          v85 = v16 + 1;
          *(a2 + 1) = v85;
        }

        *(v3 + 280) |= 0x800u;
        if (v85 >= v11 || *v85 != 104)
        {
          continue;
        }

        v19 = v85 + 1;
        *(a2 + 1) = v19;
LABEL_188:
        if (v19 >= v11 || (v86 = *v19, v86 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 144));
          if (!this)
          {
            return this;
          }

          v87 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 144) = v86;
          v87 = v19 + 1;
          *(a2 + 1) = v87;
        }

        *(v3 + 280) |= 0x1000u;
        if (v87 >= v11 || *v87 != 112)
        {
          continue;
        }

        v28 = v87 + 1;
        *(a2 + 1) = v28;
LABEL_196:
        if (v28 >= v11 || (v88 = *v28, v88 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 148));
          if (!this)
          {
            return this;
          }

          v89 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 148) = v88;
          v89 = v28 + 1;
          *(a2 + 1) = v89;
        }

        *(v3 + 280) |= 0x2000u;
        if (v89 >= v11 || *v89 != 120)
        {
          continue;
        }

        v14 = v89 + 1;
        *(a2 + 1) = v14;
LABEL_204:
        if (v14 >= v11 || (v90 = *v14, v90 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 152));
          if (!this)
          {
            return this;
          }

          v91 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 152) = v90;
          v91 = (v14 + 1);
          *(a2 + 1) = v91;
        }

        *(v3 + 280) |= 0x4000u;
        if (v11 - v91 < 2 || *v91 != 128 || v91[1] != 1)
        {
          continue;
        }

        v23 = (v91 + 2);
        *(a2 + 1) = v23;
LABEL_213:
        if (v23 >= v11 || (v92 = *v23, v92 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 156));
          if (!this)
          {
            return this;
          }

          v93 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 156) = v92;
          v93 = (v23 + 1);
          *(a2 + 1) = v93;
        }

        *(v3 + 280) |= 0x8000u;
        if (v11 - v93 < 2 || *v93 != 136 || v93[1] != 1)
        {
          continue;
        }

        v13 = (v93 + 2);
        *(a2 + 1) = v13;
LABEL_222:
        if (v13 >= v11 || (v94 = *v13, v94 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 160));
          if (!this)
          {
            return this;
          }

          v95 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 160) = v94;
          v95 = (v13 + 1);
          *(a2 + 1) = v95;
        }

        *(v3 + 280) |= 0x10000u;
        if (v11 - v95 < 2 || *v95 != 144 || v95[1] != 1)
        {
          continue;
        }

        v24 = (v95 + 2);
        *(a2 + 1) = v24;
LABEL_231:
        if (v24 >= v11 || (v96 = *v24, v96 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 164));
          if (!this)
          {
            return this;
          }

          v97 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 164) = v96;
          v97 = (v24 + 1);
          *(a2 + 1) = v97;
        }

        *(v3 + 280) |= 0x20000u;
        if (v11 - v97 < 2 || *v97 != 152 || v97[1] != 1)
        {
          continue;
        }

        v30 = (v97 + 2);
        *(a2 + 1) = v30;
LABEL_240:
        if (v30 >= v11 || (v98 = *v30, v98 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 168));
          if (!this)
          {
            return this;
          }

          v99 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 168) = v98;
          v99 = (v30 + 1);
          *(a2 + 1) = v99;
        }

        *(v3 + 280) |= 0x40000u;
        if (v11 - v99 < 2 || *v99 != 160 || v99[1] != 1)
        {
          continue;
        }

        v36 = (v99 + 2);
        *(a2 + 1) = v36;
LABEL_249:
        if (v36 >= v11 || (v100 = *v36, v100 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 172));
          if (!this)
          {
            return this;
          }

          v101 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 172) = v100;
          v101 = (v36 + 1);
          *(a2 + 1) = v101;
        }

        *(v3 + 280) |= 0x80000u;
        if (v11 - v101 < 2 || *v101 != 168 || v101[1] != 1)
        {
          continue;
        }

        v25 = (v101 + 2);
        *(a2 + 1) = v25;
LABEL_258:
        if (v25 >= v11 || (v102 = *v25, v102 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 176));
          if (!this)
          {
            return this;
          }

          v103 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 176) = v102;
          v103 = (v25 + 1);
          *(a2 + 1) = v103;
        }

        *(v3 + 280) |= 0x100000u;
        if (v11 - v103 < 2 || *v103 != 176 || v103[1] != 1)
        {
          continue;
        }

        v27 = (v103 + 2);
        *(a2 + 1) = v27;
LABEL_267:
        if (v27 >= v11 || (v104 = *v27, v104 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 180));
          if (!this)
          {
            return this;
          }

          v105 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 180) = v104;
          v105 = (v27 + 1);
          *(a2 + 1) = v105;
        }

        *(v3 + 280) |= 0x200000u;
        if (v11 - v105 < 2 || *v105 != 184 || v105[1] != 1)
        {
          continue;
        }

        v35 = (v105 + 2);
        *(a2 + 1) = v35;
LABEL_276:
        if (v35 >= v11 || (v106 = *v35, v106 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 184));
          if (!this)
          {
            return this;
          }

          v107 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 184) = v106;
          v107 = (v35 + 1);
          *(a2 + 1) = v107;
        }

        *(v3 + 280) |= 0x400000u;
        if (v11 - v107 < 2 || *v107 != 192 || v107[1] != 1)
        {
          continue;
        }

        v37 = (v107 + 2);
        *(a2 + 1) = v37;
LABEL_285:
        if (v37 >= v11 || (v108 = *v37, v108 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 188));
          if (!this)
          {
            return this;
          }

          v109 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 188) = v108;
          v109 = (v37 + 1);
          *(a2 + 1) = v109;
        }

        *(v3 + 280) |= 0x800000u;
        if (v11 - v109 < 2 || *v109 != 200 || v109[1] != 1)
        {
          continue;
        }

        v22 = (v109 + 2);
        *(a2 + 1) = v22;
LABEL_294:
        if (v22 >= v11 || (v110 = *v22, v110 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 192));
          if (!this)
          {
            return this;
          }

          v111 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 192) = v110;
          v111 = (v22 + 1);
          *(a2 + 1) = v111;
        }

        *(v3 + 280) |= 0x1000000u;
        if (v11 - v111 < 2 || *v111 != 208 || v111[1] != 1)
        {
          continue;
        }

        v21 = (v111 + 2);
        *(a2 + 1) = v21;
LABEL_303:
        if (v21 >= v11 || (v112 = *v21, v112 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 196));
          if (!this)
          {
            return this;
          }

          v113 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 196) = v112;
          v113 = (v21 + 1);
          *(a2 + 1) = v113;
        }

        *(v3 + 280) |= 0x2000000u;
        if (v11 - v113 < 2 || *v113 != 216 || v113[1] != 1)
        {
          continue;
        }

        v40 = (v113 + 2);
        *(a2 + 1) = v40;
LABEL_312:
        if (v40 >= v11 || (v114 = *v40, v114 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 200));
          if (!this)
          {
            return this;
          }

          v115 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 200) = v114;
          v115 = (v40 + 1);
          *(a2 + 1) = v115;
        }

        *(v3 + 280) |= 0x4000000u;
        if (v11 - v115 < 2 || *v115 != 224 || v115[1] != 1)
        {
          continue;
        }

        v12 = (v115 + 2);
        *(a2 + 1) = v12;
LABEL_321:
        if (v12 >= v11 || (v116 = *v12, v116 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 204));
          if (!this)
          {
            return this;
          }

          v117 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 204) = v116;
          v117 = (v12 + 1);
          *(a2 + 1) = v117;
        }

        *(v3 + 280) |= 0x8000000u;
        if (v11 - v117 < 2 || *v117 != 232 || v117[1] != 1)
        {
          continue;
        }

        v38 = (v117 + 2);
        *(a2 + 1) = v38;
LABEL_330:
        if (v38 >= v11 || (v118 = *v38, v118 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 208));
          if (!this)
          {
            return this;
          }

          v119 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 208) = v118;
          v119 = (v38 + 1);
          *(a2 + 1) = v119;
        }

        *(v3 + 280) |= 0x10000000u;
        if (v11 - v119 < 2 || *v119 != 240 || v119[1] != 1)
        {
          continue;
        }

        v39 = (v119 + 2);
        *(a2 + 1) = v39;
LABEL_339:
        if (v39 >= v11 || (v120 = *v39, v120 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 212));
          if (!this)
          {
            return this;
          }

          v121 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 212) = v120;
          v121 = (v39 + 1);
          *(a2 + 1) = v121;
        }

        v32 = *(v3 + 280) | 0x20000000;
        *(v3 + 280) = v32;
        if (v11 - v121 < 2 || *v121 != 250 || v121[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v121 + 2;
LABEL_348:
        *(v3 + 280) = v32 | 0x40000000;
        if (*(v3 + 216) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v122 = *(a2 + 1);
        if (*(a2 + 4) - v122 < 2 || *v122 != 130 || v122[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v122 + 2;
LABEL_355:
        *(v3 + 280) |= 0x80000000;
        if (*(v3 + 224) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v123 = *(a2 + 1);
        v33 = *(a2 + 2);
        if (v33 - v123 < 2 || *v123 != 136 || v123[1] != 2)
        {
          continue;
        }

        v34 = (v123 + 2);
        *(a2 + 1) = v34;
LABEL_362:
        v130 = 0;
        if (v34 >= v33 || (v124 = *v34, (v124 & 0x80000000) != 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v130);
          if (!this)
          {
            return this;
          }

          v124 = v130;
          v125 = *(a2 + 1);
          v33 = *(a2 + 2);
        }

        else
        {
          v125 = (v34 + 1);
          *(a2 + 1) = v125;
        }

        *(v3 + 272) = v124 != 0;
        v15 = *(v3 + 284) | 1;
        *(v3 + 284) = v15;
        if (v33 - v125 < 2 || *v125 != 146 || v125[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v125 + 2;
LABEL_371:
        *(v3 + 284) = v15 | 2;
        if (*(v3 + 232) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v126 = *(a2 + 1);
        if (*(a2 + 4) - v126 < 2 || *v126 != 154 || v126[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v126 + 2;
LABEL_378:
        *(v3 + 284) |= 4u;
        if (*(v3 + 240) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v127 = *(a2 + 1);
        if (*(a2 + 4) - v127 < 2 || *v127 != 162 || v127[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v127 + 2;
LABEL_385:
        *(v3 + 284) |= 8u;
        if (*(v3 + 248) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v128 = *(a2 + 1);
        if (*(a2 + 4) - v128 < 2 || *v128 != 170 || v128[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v128 + 2;
LABEL_392:
        *(v3 + 284) |= 0x10u;
        if (*(v3 + 256) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        v129 = *(a2 + 1);
        if (*(a2 + 4) - v129 < 2 || *v129 != 178 || v129[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v129 + 2;
LABEL_399:
        *(v3 + 284) |= 0x20u;
        if (*(v3 + 264) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!this)
        {
          return this;
        }

        if (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        this = 1;
        *(a2 + 36) = 1;
        return this;
      case 3u:
        if (v6 == 2)
        {
          goto LABEL_104;
        }

        goto LABEL_85;
      case 4u:
        if (v6 == 2)
        {
          goto LABEL_114;
        }

        goto LABEL_85;
      case 5u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_120;
      case 6u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v26 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_128;
      case 7u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v29 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_136;
      case 8u:
        if (v6 == 2)
        {
          goto LABEL_144;
        }

        goto LABEL_85;
      case 9u:
        if (v6 == 2)
        {
          goto LABEL_154;
        }

        goto LABEL_85;
      case 0xAu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v20 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_164;
      case 0xBu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v31 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_172;
      case 0xCu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v16 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_180;
      case 0xDu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v19 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_188;
      case 0xEu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v28 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_196;
      case 0xFu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v14 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_204;
      case 0x10u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v23 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_213;
      case 0x11u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v13 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_222;
      case 0x12u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v24 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_231;
      case 0x13u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v30 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_240;
      case 0x14u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v36 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_249;
      case 0x15u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v25 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_258;
      case 0x16u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v27 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_267;
      case 0x17u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v35 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_276;
      case 0x18u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v37 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_285;
      case 0x19u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v22 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_294;
      case 0x1Au:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v21 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_303;
      case 0x1Bu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v40 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_312;
      case 0x1Cu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_321;
      case 0x1Du:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v38 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_330;
      case 0x1Eu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v39 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_339;
      case 0x1Fu:
        if (v6 != 2)
        {
          goto LABEL_85;
        }

        v32 = *(v3 + 280);
        goto LABEL_348;
      case 0x20u:
        if (v6 == 2)
        {
          goto LABEL_355;
        }

        goto LABEL_85;
      case 0x21u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_85;
        }

        v34 = *(a2 + 1);
        v33 = *(a2 + 2);
        goto LABEL_362;
      case 0x22u:
        if (v6 != 2)
        {
          goto LABEL_85;
        }

        v15 = *(v3 + 284);
        goto LABEL_371;
      case 0x23u:
        if (v6 == 2)
        {
          goto LABEL_378;
        }

        goto LABEL_85;
      case 0x24u:
        if (v6 == 2)
        {
          goto LABEL_385;
        }

        goto LABEL_85;
      case 0x25u:
        if (v6 == 2)
        {
          goto LABEL_392;
        }

        goto LABEL_85;
      case 0x26u:
        if (v6 == 2)
        {
          goto LABEL_399;
        }

        goto LABEL_85;
      default:
LABEL_85:
        if (v6 == 4)
        {
          return 1;
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v5);
        if (this)
        {
          continue;
        }

        return 0;
    }

    return this;
  }
}

uint64_t awd::metrics::BluetoothAccessoryIdentification::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 280))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v5 + 16) + 8 * v6);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v6;
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(v5 + 40) + 8 * v8);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v8;
    }

    while (v8 < *(v5 + 48));
  }

  v10 = *(v5 + 280);
  if ((v10 & 8) != 0)
  {
    v17 = *(v5 + 64);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v10 = *(v5 + 280);
    if ((v10 & 0x10) == 0)
    {
LABEL_11:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_52;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    goto LABEL_11;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 72), a2, a4);
  v10 = *(v5 + 280);
  if ((v10 & 0x20) == 0)
  {
LABEL_12:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 76), a2, a4);
  if ((*(v5 + 280) & 0x40) != 0)
  {
LABEL_13:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 104), a2, a4);
  }

LABEL_14:
  if (*(v5 + 88) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(*(v5 + 80) + 8 * v11);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v11;
    }

    while (v11 < *(v5 + 88));
  }

  if (*(v5 + 120) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(*(v5 + 112) + 8 * v13);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v13;
    }

    while (v13 < *(v5 + 120));
  }

  v15 = *(v5 + 280);
  if ((v15 & 0x200) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 108), a2, a4);
    v15 = *(v5 + 280);
    if ((v15 & 0x400) == 0)
    {
LABEL_22:
      if ((v15 & 0x800) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_56;
    }
  }

  else if ((v15 & 0x400) == 0)
  {
    goto LABEL_22;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 136), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x800) == 0)
  {
LABEL_23:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 140), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x1000) == 0)
  {
LABEL_24:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 144), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x2000) == 0)
  {
LABEL_25:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 148), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x4000) == 0)
  {
LABEL_26:
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 152), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x8000) == 0)
  {
LABEL_27:
    if ((v15 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 156), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x10000) == 0)
  {
LABEL_28:
    if ((v15 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 160), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x20000) == 0)
  {
LABEL_29:
    if ((v15 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 164), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x40000) == 0)
  {
LABEL_30:
    if ((v15 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 168), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x80000) == 0)
  {
LABEL_31:
    if ((v15 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 172), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x100000) == 0)
  {
LABEL_32:
    if ((v15 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 176), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x200000) == 0)
  {
LABEL_33:
    if ((v15 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 180), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x400000) == 0)
  {
LABEL_34:
    if ((v15 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 184), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x800000) == 0)
  {
LABEL_35:
    if ((v15 & 0x1000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 188), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x1000000) == 0)
  {
LABEL_36:
    if ((v15 & 0x2000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 192), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x2000000) == 0)
  {
LABEL_37:
    if ((v15 & 0x4000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(v5 + 196), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x4000000) == 0)
  {
LABEL_38:
    if ((v15 & 0x8000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 200), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x8000000) == 0)
  {
LABEL_39:
    if ((v15 & 0x10000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 204), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x10000000) == 0)
  {
LABEL_40:
    if ((v15 & 0x20000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(v5 + 208), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x20000000) == 0)
  {
LABEL_41:
    if ((v15 & 0x40000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_75:
    v18 = *(v5 + 216);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 280) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_76;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 212), a2, a4);
  v15 = *(v5 + 280);
  if ((v15 & 0x40000000) != 0)
  {
    goto LABEL_75;
  }

LABEL_42:
  if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_76:
  v19 = *(v5 + 224);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
LABEL_43:
  v16 = *(v5 + 284);
  if (v16)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x21, *(v5 + 272), a2, a4);
    v16 = *(v5 + 284);
    if ((v16 & 2) == 0)
    {
LABEL_45:
      if ((v16 & 4) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_79;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_45;
  }

  v20 = *(v5 + 232);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v16 = *(v5 + 284);
  if ((v16 & 4) == 0)
  {
LABEL_46:
    if ((v16 & 8) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_80;
  }

LABEL_79:
  v21 = *(v5 + 240);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v16 = *(v5 + 284);
  if ((v16 & 8) == 0)
  {
LABEL_47:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_48;
    }

LABEL_81:
    v23 = *(v5 + 256);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 284) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_82;
  }

LABEL_80:
  v22 = *(v5 + 248);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v16 = *(v5 + 284);
  if ((v16 & 0x10) != 0)
  {
    goto LABEL_81;
  }

LABEL_48:
  if ((v16 & 0x20) == 0)
  {
    return this;
  }

LABEL_82:
  v24 = *(v5 + 264);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothAccessoryIdentification::ByteSize(awd::metrics::BluetoothAccessoryIdentification *this)
{
  v2 = *(this + 70);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 70);
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }
  }

  v4 = *(this + 8);
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
    v2 = *(this + 70);
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
LABEL_16:
  if ((v2 & 0x10) != 0)
  {
    v10 = *(this + 18);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v2 = *(this + 70);
    }

    else
    {
      v11 = 2;
    }

    v3 += v11;
    if ((v2 & 0x20) == 0)
    {
LABEL_18:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(this + 19);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 70);
  }

  else
  {
    v13 = 2;
  }

  v3 += v13;
  if ((v2 & 0x40) != 0)
  {
LABEL_28:
    v14 = *(this + 26);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v2 = *(this + 70);
    }

    else
    {
      v15 = 2;
    }

    v3 += v15;
  }

LABEL_32:
  if ((v2 & 0x1FE00) == 0)
  {
    goto LABEL_69;
  }

  if ((v2 & 0x200) != 0)
  {
    v16 = *(this + 27);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 70);
    }

    else
    {
      v17 = 2;
    }

    v3 += v17;
    if ((v2 & 0x400) == 0)
    {
LABEL_35:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_49;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_35;
  }

  v18 = *(this + 34);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 70);
  }

  else
  {
    v19 = 2;
  }

  v3 += v19;
  if ((v2 & 0x800) == 0)
  {
LABEL_36:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_53;
  }

LABEL_49:
  v20 = *(this + 35);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 70);
  }

  else
  {
    v21 = 2;
  }

  v3 += v21;
  if ((v2 & 0x1000) == 0)
  {
LABEL_37:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_57;
  }

LABEL_53:
  v22 = *(this + 36);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 70);
  }

  else
  {
    v23 = 2;
  }

  v3 += v23;
  if ((v2 & 0x2000) == 0)
  {
LABEL_38:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_61;
  }

LABEL_57:
  v24 = *(this + 37);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v2 = *(this + 70);
  }

  else
  {
    v25 = 2;
  }

  v3 += v25;
  if ((v2 & 0x4000) == 0)
  {
LABEL_39:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_65;
  }

LABEL_61:
  v26 = *(this + 38);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v2 = *(this + 70);
  }

  else
  {
    v27 = 2;
  }

  v3 += v27;
  if ((v2 & 0x8000) != 0)
  {
LABEL_65:
    v28 = *(this + 39);
    if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 2;
      v2 = *(this + 70);
    }

    else
    {
      v29 = 3;
    }

    v3 += v29;
  }

LABEL_69:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_111;
  }

  if ((v2 & 0x10000) != 0)
  {
    v30 = *(this + 40);
    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 2;
      v2 = *(this + 70);
    }

    else
    {
      v31 = 3;
    }

    v3 += v31;
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

  v32 = *(this + 41);
  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
    v2 = *(this + 70);
  }

  else
  {
    v33 = 3;
  }

  v3 += v33;
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
  v34 = *(this + 42);
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
    v2 = *(this + 70);
  }

  else
  {
    v35 = 3;
  }

  v3 += v35;
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
  v36 = *(this + 43);
  if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
    v2 = *(this + 70);
  }

  else
  {
    v37 = 3;
  }

  v3 += v37;
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
  v38 = *(this + 44);
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    v2 = *(this + 70);
  }

  else
  {
    v39 = 3;
  }

  v3 += v39;
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
  v40 = *(this + 45);
  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
    v2 = *(this + 70);
  }

  else
  {
    v41 = 3;
  }

  v3 += v41;
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
  v42 = *(this + 46);
  if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
    v2 = *(this + 70);
  }

  else
  {
    v43 = 3;
  }

  v3 += v43;
  if ((v2 & 0x800000) != 0)
  {
LABEL_107:
    v44 = *(this + 47);
    if (v44 >= 0x80)
    {
      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
      v2 = *(this + 70);
    }

    else
    {
      v45 = 3;
    }

    v3 += v45;
  }

LABEL_111:
  if (!HIBYTE(v2))
  {
    goto LABEL_163;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v46 = *(this + 48);
    if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
      v2 = *(this + 70);
    }

    else
    {
      v47 = 3;
    }

    v3 += v47;
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

  v48 = *(this + 49);
  if (v48 >= 0x80)
  {
    v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 2;
    v2 = *(this + 70);
  }

  else
  {
    v49 = 3;
  }

  v3 += v49;
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
  v50 = *(this + 50);
  if (v50 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
    v2 = *(this + 70);
  }

  else
  {
    v51 = 3;
  }

  v3 += v51;
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
  v52 = *(this + 51);
  if (v52 >= 0x80)
  {
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 2;
    v2 = *(this + 70);
  }

  else
  {
    v53 = 3;
  }

  v3 += v53;
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
  v54 = *(this + 52);
  if (v54 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 2;
    v2 = *(this + 70);
  }

  else
  {
    v55 = 3;
  }

  v3 += v55;
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
  v56 = *(this + 53);
  if (v56 >= 0x80)
  {
    v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56) + 2;
    v2 = *(this + 70);
  }

  else
  {
    v57 = 3;
  }

  v3 += v57;
  if ((v2 & 0x40000000) == 0)
  {
LABEL_119:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_154;
  }

LABEL_145:
  v58 = *(this + 27);
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
    v2 = *(this + 70);
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

  v3 += v63 + v59 + 2;
  if ((v2 & 0x80000000) != 0)
  {
LABEL_154:
    v64 = *(this + 28);
    v65 = *(v64 + 23);
    v66 = v65;
    v67 = *(v64 + 8);
    if ((v65 & 0x80u) == 0)
    {
      v68 = *(v64 + 23);
    }

    else
    {
      v68 = v67;
    }

    if (v68 >= 0x80)
    {
      v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68);
      v65 = *(v64 + 23);
      v67 = *(v64 + 8);
      v66 = *(v64 + 23);
    }

    else
    {
      v69 = 1;
    }

    if (v66 < 0)
    {
      v65 = v67;
    }

    v3 += v69 + v65 + 2;
  }

LABEL_163:
  LOBYTE(v70) = *(this + 284);
  if (!v70)
  {
    goto LABEL_217;
  }

  if (*(this + 284))
  {
    v3 += 3;
  }

  if ((*(this + 284) & 2) != 0)
  {
    v71 = *(this + 29);
    v72 = *(v71 + 23);
    v73 = v72;
    v74 = *(v71 + 8);
    if ((v72 & 0x80u) == 0)
    {
      v75 = *(v71 + 23);
    }

    else
    {
      v75 = v74;
    }

    if (v75 >= 0x80)
    {
      v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75);
      v72 = *(v71 + 23);
      v74 = *(v71 + 8);
      v70 = *(this + 71);
      v73 = *(v71 + 23);
    }

    else
    {
      v76 = 1;
    }

    if (v73 < 0)
    {
      v72 = v74;
    }

    v3 += v76 + v72 + 2;
    if ((v70 & 4) == 0)
    {
LABEL_168:
      if ((v70 & 8) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_190;
    }
  }

  else if ((*(this + 284) & 4) == 0)
  {
    goto LABEL_168;
  }

  v77 = *(this + 30);
  v78 = *(v77 + 23);
  v79 = v78;
  v80 = *(v77 + 8);
  if ((v78 & 0x80u) == 0)
  {
    v81 = *(v77 + 23);
  }

  else
  {
    v81 = v80;
  }

  if (v81 >= 0x80)
  {
    v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81);
    v78 = *(v77 + 23);
    v80 = *(v77 + 8);
    v70 = *(this + 71);
    v79 = *(v77 + 23);
  }

  else
  {
    v82 = 1;
  }

  if (v79 < 0)
  {
    v78 = v80;
  }

  v3 += v82 + v78 + 2;
  if ((v70 & 8) == 0)
  {
LABEL_169:
    if ((v70 & 0x10) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_199;
  }

LABEL_190:
  v83 = *(this + 31);
  v84 = *(v83 + 23);
  v85 = v84;
  v86 = *(v83 + 8);
  if ((v84 & 0x80u) == 0)
  {
    v87 = *(v83 + 23);
  }

  else
  {
    v87 = v86;
  }

  if (v87 >= 0x80)
  {
    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v87);
    v84 = *(v83 + 23);
    v86 = *(v83 + 8);
    v70 = *(this + 71);
    v85 = *(v83 + 23);
  }

  else
  {
    v88 = 1;
  }

  if (v85 < 0)
  {
    v84 = v86;
  }

  v3 += v88 + v84 + 2;
  if ((v70 & 0x10) == 0)
  {
LABEL_170:
    if ((v70 & 0x20) == 0)
    {
      goto LABEL_217;
    }

    goto LABEL_208;
  }

LABEL_199:
  v89 = *(this + 32);
  v90 = *(v89 + 23);
  v91 = v90;
  v92 = *(v89 + 8);
  if ((v90 & 0x80u) == 0)
  {
    v93 = *(v89 + 23);
  }

  else
  {
    v93 = v92;
  }

  if (v93 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93);
    v90 = *(v89 + 23);
    v92 = *(v89 + 8);
    v70 = *(this + 71);
    v91 = *(v89 + 23);
  }

  else
  {
    v94 = 1;
  }

  if (v91 < 0)
  {
    v90 = v92;
  }

  v3 += v94 + v90 + 2;
  if ((v70 & 0x20) != 0)
  {
LABEL_208:
    v95 = *(this + 33);
    v96 = *(v95 + 23);
    v97 = v96;
    v98 = *(v95 + 8);
    if ((v96 & 0x80u) == 0)
    {
      v99 = *(v95 + 23);
    }

    else
    {
      v99 = v98;
    }

    if (v99 >= 0x80)
    {
      v100 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v99);
      v96 = *(v95 + 23);
      v98 = *(v95 + 8);
      v97 = *(v95 + 23);
    }

    else
    {
      v100 = 1;
    }

    if (v97 < 0)
    {
      v96 = v98;
    }

    v3 += v100 + v96 + 2;
  }

LABEL_217:
  v101 = *(this + 6);
  v102 = v101 + v3;
  if (v101 >= 1)
  {
    for (i = 0; i < v101; ++i)
    {
      v104 = *(*(this + 2) + 8 * i);
      v105 = *(v104 + 23);
      v106 = v105;
      v107 = *(v104 + 8);
      if ((v105 & 0x80u) == 0)
      {
        v108 = *(v104 + 23);
      }

      else
      {
        v108 = v107;
      }

      if (v108 >= 0x80)
      {
        v109 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v108);
        v105 = *(v104 + 23);
        v107 = *(v104 + 8);
        v101 = *(this + 6);
        v106 = *(v104 + 23);
      }

      else
      {
        v109 = 1;
      }

      if (v106 < 0)
      {
        v105 = v107;
      }

      v102 += v109 + v105;
    }
  }

  v110 = *(this + 12);
  v111 = v110 + v102;
  if (v110 >= 1)
  {
    for (j = 0; j < v110; ++j)
    {
      v113 = *(*(this + 5) + 8 * j);
      v114 = *(v113 + 23);
      v115 = v114;
      v116 = *(v113 + 8);
      if ((v114 & 0x80u) == 0)
      {
        v117 = *(v113 + 23);
      }

      else
      {
        v117 = v116;
      }

      if (v117 >= 0x80)
      {
        v118 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v117);
        v114 = *(v113 + 23);
        v116 = *(v113 + 8);
        v110 = *(this + 12);
        v115 = *(v113 + 23);
      }

      else
      {
        v118 = 1;
      }

      if (v115 < 0)
      {
        v114 = v116;
      }

      v111 += v118 + v114;
    }
  }

  v119 = *(this + 22);
  v120 = v119 + v111;
  if (v119 >= 1)
  {
    for (k = 0; k < v119; ++k)
    {
      v122 = *(*(this + 10) + 8 * k);
      v123 = *(v122 + 23);
      v124 = v123;
      v125 = *(v122 + 8);
      if ((v123 & 0x80u) == 0)
      {
        v126 = *(v122 + 23);
      }

      else
      {
        v126 = v125;
      }

      if (v126 >= 0x80)
      {
        v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126);
        v123 = *(v122 + 23);
        v125 = *(v122 + 8);
        v119 = *(this + 22);
        v124 = *(v122 + 23);
      }

      else
      {
        v127 = 1;
      }

      if (v124 < 0)
      {
        v123 = v125;
      }

      v120 += v127 + v123;
    }
  }

  v128 = *(this + 30);
  v129 = (v128 + v120);
  if (v128 >= 1)
  {
    for (m = 0; m < v128; ++m)
    {
      v131 = *(*(this + 14) + 8 * m);
      v132 = *(v131 + 23);
      v133 = v132;
      v134 = *(v131 + 8);
      if ((v132 & 0x80u) == 0)
      {
        v135 = *(v131 + 23);
      }

      else
      {
        v135 = v134;
      }

      if (v135 >= 0x80)
      {
        v136 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v135);
        v132 = *(v131 + 23);
        v134 = *(v131 + 8);
        v128 = *(this + 30);
        v133 = *(v131 + 23);
      }

      else
      {
        v136 = 1;
      }

      if (v133 < 0)
      {
        v132 = v134;
      }

      v129 = (v136 + v129 + v132);
    }
  }

  *(this + 69) = v129;
  return v129;
}