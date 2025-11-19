void sub_2963750E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothHFPAudioLinkInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 216);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 216);
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
  if ((*(v5 + 216) & 4) != 0)
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

  v9 = *(v5 + 216);
  if ((v9 & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 56), a2, a4);
    v9 = *(v5 + 216);
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

  if (*(v5 + 88) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(*(v5 + 80) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 88));
  }

  v12 = *(v5 + 216);
  if ((v12 & 0x200) != 0)
  {
    v14 = *(v5 + 96);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v12 = *(v5 + 216);
    if ((v12 & 0x400) == 0)
    {
LABEL_23:
      if ((v12 & 0x800) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_55;
    }
  }

  else if ((v12 & 0x400) == 0)
  {
    goto LABEL_23;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 104), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x800) == 0)
  {
LABEL_24:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 108), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x1000) == 0)
  {
LABEL_25:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 112), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x2000) == 0)
  {
LABEL_26:
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 116), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x4000) == 0)
  {
LABEL_27:
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 120), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x8000) == 0)
  {
LABEL_28:
    if ((v12 & 0x10000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 124), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x10000) == 0)
  {
LABEL_29:
    if ((v12 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 128), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x20000) == 0)
  {
LABEL_30:
    if ((v12 & 0x40000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 132), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x40000) == 0)
  {
LABEL_31:
    if ((v12 & 0x80000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 136), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x80000) == 0)
  {
LABEL_32:
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 140), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x100000) == 0)
  {
LABEL_33:
    if ((v12 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 144), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x200000) == 0)
  {
LABEL_34:
    if ((v12 & 0x400000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x16, *(v5 + 148), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x400000) == 0)
  {
LABEL_35:
    if ((v12 & 0x800000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x17, *(v5 + 152), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x800000) == 0)
  {
LABEL_36:
    if ((v12 & 0x1000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x18, *(v5 + 156), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x1000000) == 0)
  {
LABEL_37:
    if ((v12 & 0x2000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x19, *(v5 + 160), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x2000000) == 0)
  {
LABEL_38:
    if ((v12 & 0x4000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x1A, *(v5 + 164), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x4000000) == 0)
  {
LABEL_39:
    if ((v12 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(0x1B, *(v5 + 168), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x8000000) == 0)
  {
LABEL_40:
    if ((v12 & 0x10000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 172), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x10000000) == 0)
  {
LABEL_41:
    if ((v12 & 0x20000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(v5 + 176), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x20000000) == 0)
  {
LABEL_42:
    if ((v12 & 0x40000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_74:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 184), a2, a4);
    if ((*(v5 + 216) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_75;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 180), a2, a4);
  v12 = *(v5 + 216);
  if ((v12 & 0x40000000) != 0)
  {
    goto LABEL_74;
  }

LABEL_43:
  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(v5 + 188), a2, a4);
LABEL_44:
  v13 = *(v5 + 220);
  if (v13)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 192), a2, a4);
    v13 = *(v5 + 220);
    if ((v13 & 2) == 0)
    {
LABEL_46:
      if ((v13 & 4) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_78;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_46;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, *(v5 + 196), a2, a4);
  v13 = *(v5 + 220);
  if ((v13 & 4) == 0)
  {
LABEL_47:
    if ((v13 & 8) == 0)
    {
      goto LABEL_48;
    }

LABEL_79:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 204), a2, a4);
    if ((*(v5 + 220) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_80;
  }

LABEL_78:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(v5 + 200), a2, a4);
  v13 = *(v5 + 220);
  if ((v13 & 8) != 0)
  {
    goto LABEL_79;
  }

LABEL_48:
  if ((v13 & 0x10) == 0)
  {
    return this;
  }

LABEL_80:
  v15 = *(v5 + 208);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, v15, a2, a4);
}

uint64_t awd::metrics::BluetoothHFPAudioLinkInfo::ByteSize(awd::metrics::BluetoothHFPAudioLinkInfo *this)
{
  v2 = *(this + 54);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_22;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 54);
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
      v2 = *(this + 54);
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
    v2 = *(this + 54);
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
      v2 = *(this + 54);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
  }

LABEL_22:
  if ((v2 & 0x1FE00) == 0)
  {
    goto LABEL_64;
  }

  if ((v2 & 0x200) != 0)
  {
    v11 = *(this + 12);
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
      v2 = *(this + 54);
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
    if ((v2 & 0x400) == 0)
    {
LABEL_25:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_44;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_25;
  }

  v17 = *(this + 26);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v2 = *(this + 54);
  }

  else
  {
    v18 = 2;
  }

  v4 += v18;
  if ((v2 & 0x800) == 0)
  {
LABEL_26:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_48;
  }

LABEL_44:
  v19 = *(this + 27);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v2 = *(this + 54);
  }

  else
  {
    v20 = 2;
  }

  v4 += v20;
  if ((v2 & 0x1000) == 0)
  {
LABEL_27:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_52;
  }

LABEL_48:
  v21 = *(this + 28);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v2 = *(this + 54);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v2 & 0x2000) == 0)
  {
LABEL_28:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_52:
  v23 = *(this + 29);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = *(this + 54);
  }

  else
  {
    v24 = 2;
  }

  v4 += v24;
  if ((v2 & 0x4000) == 0)
  {
LABEL_29:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_60;
  }

LABEL_56:
  v25 = *(this + 30);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v2 = *(this + 54);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v2 & 0x8000) != 0)
  {
LABEL_60:
    v27 = *(this + 31);
    if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 2;
      v2 = *(this + 54);
    }

    else
    {
      v28 = 3;
    }

    v4 += v28;
  }

LABEL_64:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_106;
  }

  if ((v2 & 0x10000) != 0)
  {
    v29 = *(this + 32);
    if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 2;
      v2 = *(this + 54);
    }

    else
    {
      v30 = 3;
    }

    v4 += v30;
    if ((v2 & 0x20000) == 0)
    {
LABEL_67:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_82;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  v31 = *(this + 33);
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 2;
    v2 = *(this + 54);
  }

  else
  {
    v32 = 3;
  }

  v4 += v32;
  if ((v2 & 0x40000) == 0)
  {
LABEL_68:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_86;
  }

LABEL_82:
  v33 = *(this + 34);
  if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
    v2 = *(this + 54);
  }

  else
  {
    v34 = 3;
  }

  v4 += v34;
  if ((v2 & 0x80000) == 0)
  {
LABEL_69:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_90;
  }

LABEL_86:
  v35 = *(this + 35);
  if (v35 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
    v2 = *(this + 54);
  }

  else
  {
    v36 = 3;
  }

  v4 += v36;
  if ((v2 & 0x100000) == 0)
  {
LABEL_70:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_94;
  }

LABEL_90:
  v37 = *(this + 36);
  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v2 = *(this + 54);
  }

  else
  {
    v38 = 3;
  }

  v4 += v38;
  if ((v2 & 0x200000) == 0)
  {
LABEL_71:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_98;
  }

LABEL_94:
  v39 = ((2 * *(this + 37)) ^ (*(this + 37) >> 31));
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    v2 = *(this + 54);
  }

  else
  {
    v40 = 3;
  }

  v4 += v40;
  if ((v2 & 0x400000) == 0)
  {
LABEL_72:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_102;
  }

LABEL_98:
  v41 = ((2 * *(this + 38)) ^ (*(this + 38) >> 31));
  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    v2 = *(this + 54);
  }

  else
  {
    v42 = 3;
  }

  v4 += v42;
  if ((v2 & 0x800000) != 0)
  {
LABEL_102:
    v43 = ((2 * *(this + 39)) ^ (*(this + 39) >> 31));
    if (v43 >= 0x80)
    {
      v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
      v2 = *(this + 54);
    }

    else
    {
      v44 = 3;
    }

    v4 += v44;
  }

LABEL_106:
  if (!HIBYTE(v2))
  {
    goto LABEL_148;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v45 = ((2 * *(this + 40)) ^ (*(this + 40) >> 31));
    if (v45 >= 0x80)
    {
      v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
      v2 = *(this + 54);
    }

    else
    {
      v46 = 3;
    }

    v4 += v46;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_109:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_124;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_109;
  }

  v47 = ((2 * *(this + 41)) ^ (*(this + 41) >> 31));
  if (v47 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
    v2 = *(this + 54);
  }

  else
  {
    v48 = 3;
  }

  v4 += v48;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_110:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_128;
  }

LABEL_124:
  v49 = ((2 * *(this + 42)) ^ (*(this + 42) >> 31));
  if (v49 >= 0x80)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
    v2 = *(this + 54);
  }

  else
  {
    v50 = 3;
  }

  v4 += v50;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_111:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_132;
  }

LABEL_128:
  v51 = *(this + 43);
  if (v51 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
    v2 = *(this + 54);
  }

  else
  {
    v52 = 3;
  }

  v4 += v52;
  if ((v2 & 0x10000000) == 0)
  {
LABEL_112:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_136;
  }

LABEL_132:
  v53 = *(this + 44);
  if (v53 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
    v2 = *(this + 54);
  }

  else
  {
    v54 = 3;
  }

  v4 += v54;
  if ((v2 & 0x20000000) == 0)
  {
LABEL_113:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_140;
  }

LABEL_136:
  v55 = *(this + 45);
  if (v55 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
    v2 = *(this + 54);
  }

  else
  {
    v56 = 3;
  }

  v4 += v56;
  if ((v2 & 0x40000000) == 0)
  {
LABEL_114:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_144;
  }

LABEL_140:
  v57 = *(this + 46);
  if (v57 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
    v2 = *(this + 54);
  }

  else
  {
    v58 = 3;
  }

  v4 += v58;
  if ((v2 & 0x80000000) != 0)
  {
LABEL_144:
    v59 = *(this + 47);
    if (v59 >= 0x80)
    {
      v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59) + 2;
    }

    else
    {
      v60 = 3;
    }

    v4 += v60;
  }

LABEL_148:
  LOBYTE(v61) = *(this + 220);
  if (!v61)
  {
    goto LABEL_175;
  }

  if (*(this + 220))
  {
    v62 = *(this + 48);
    if (v62 >= 0x80)
    {
      v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62) + 2;
      v61 = *(this + 55);
    }

    else
    {
      v63 = 3;
    }

    v4 += v63;
    if ((v61 & 2) == 0)
    {
LABEL_151:
      if ((v61 & 4) == 0)
      {
        goto LABEL_152;
      }

      goto LABEL_163;
    }
  }

  else if ((*(this + 220) & 2) == 0)
  {
    goto LABEL_151;
  }

  v64 = *(this + 49);
  if (v64 >= 0x80)
  {
    v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64) + 2;
    v61 = *(this + 55);
  }

  else
  {
    v65 = 3;
  }

  v4 += v65;
  if ((v61 & 4) == 0)
  {
LABEL_152:
    if ((v61 & 8) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_167;
  }

LABEL_163:
  v66 = *(this + 50);
  if (v66 >= 0x80)
  {
    v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66) + 2;
    v61 = *(this + 55);
  }

  else
  {
    v67 = 3;
  }

  v4 += v67;
  if ((v61 & 8) == 0)
  {
LABEL_153:
    if ((v61 & 0x10) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_171;
  }

LABEL_167:
  v68 = *(this + 51);
  if (v68 >= 0x80)
  {
    v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68) + 2;
    v61 = *(this + 55);
  }

  else
  {
    v69 = 3;
  }

  v4 += v69;
  if ((v61 & 0x10) != 0)
  {
LABEL_171:
    v70 = *(this + 52);
    if (v70 >= 0x80)
    {
      v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70) + 2;
    }

    else
    {
      v71 = 3;
    }

    v4 += v71;
  }

LABEL_175:
  v72 = *(this + 8);
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
      v75 = *(*(this + 3) + 4 * v73);
      if (v75 >= 0x80)
      {
        v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75);
        v72 = *(this + 8);
      }

      else
      {
        v76 = 1;
      }

      v74 += v76;
      ++v73;
    }

    while (v73 < v72);
  }

  v77 = *(this + 12);
  if (v77 < 1)
  {
    v79 = 0;
  }

  else
  {
    v78 = 0;
    v79 = 0;
    do
    {
      v80 = *(*(this + 5) + 4 * v78);
      if ((v80 & 0x80000000) != 0)
      {
        v81 = 10;
      }

      else if (v80 >= 0x80)
      {
        v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v80);
        v77 = *(this + 12);
      }

      else
      {
        v81 = 1;
      }

      v79 += v81;
      ++v78;
    }

    while (v78 < v77);
  }

  v82 = *(this + 18);
  if (v82 < 1)
  {
    v84 = 0;
  }

  else
  {
    v83 = 0;
    v84 = 0;
    do
    {
      v85 = *(*(this + 8) + 4 * v83);
      if (v85 >= 0x80)
      {
        v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85);
        v82 = *(this + 18);
      }

      else
      {
        v86 = 1;
      }

      v84 += v86;
      ++v83;
    }

    while (v83 < v82);
  }

  v87 = *(this + 22);
  if (v87 < 1)
  {
    v89 = 0;
  }

  else
  {
    v88 = 0;
    v89 = 0;
    do
    {
      v90 = *(*(this + 10) + 4 * v88);
      if (v90 >= 0x80)
      {
        v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90);
        v87 = *(this + 22);
      }

      else
      {
        v91 = 1;
      }

      v89 += v91;
      ++v88;
    }

    while (v88 < v87);
  }

  result = (v74 + v4 + v72 + v79 + v77 + v84 + v82 + v89 + v87);
  *(this + 53) = result;
  return result;
}

void awd::metrics::BluetoothHFPAudioLinkInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothHFPAudioLinkInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothHFPAudioLinkInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothHFPAudioLinkInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothHFPAudioLinkInfo::CopyFrom(awd::metrics::BluetoothHFPAudioLinkInfo *this, const awd::metrics::BluetoothHFPAudioLinkInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothHFPAudioLinkInfo::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothHFPAudioLinkInfo::Swap(awd::metrics::BluetoothHFPAudioLinkInfo *this, awd::metrics::BluetoothHFPAudioLinkInfo *a2)
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
    v10 = *(a2 + 9);
    *(a2 + 8) = v9;
    v11 = *(this + 9);
    *(this + 9) = v10;
    *(a2 + 9) = v11;
    v12 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    result = *(a2 + 11);
    *(a2 + 10) = v12;
    v14 = *(this + 11);
    *(this + 11) = result;
    *(a2 + 11) = v14;
    v15 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v15;
    LODWORD(v15) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v15;
    LODWORD(v15) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v15;
    LODWORD(v15) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v15;
    LODWORD(v15) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v15;
    LODWORD(v15) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v15;
    LODWORD(v15) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v15;
    LODWORD(v15) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v15;
    LODWORD(v15) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v15;
    LODWORD(v15) = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v15;
    LODWORD(v15) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v15;
    LODWORD(v15) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v15;
    LODWORD(v15) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v15;
    LODWORD(v15) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v15;
    LODWORD(v15) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v15;
    LODWORD(v15) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v15;
    LODWORD(v15) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v15;
    LODWORD(v15) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v15;
    LODWORD(v15) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v15;
    LODWORD(v15) = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v15;
    LODWORD(v15) = *(this + 45);
    *(this + 45) = *(a2 + 45);
    *(a2 + 45) = v15;
    LODWORD(v15) = *(this + 46);
    *(this + 46) = *(a2 + 46);
    *(a2 + 46) = v15;
    LODWORD(v15) = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v15;
    LODWORD(v15) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v15;
    LODWORD(v15) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v15;
    LODWORD(v15) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v15;
    LODWORD(v15) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v15;
    LODWORD(v15) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v15;
    LODWORD(v15) = *(this + 54);
    *(this + 54) = *(a2 + 54);
    *(a2 + 54) = v15;
    LODWORD(v15) = *(this + 55);
    *(this + 55) = *(a2 + 55);
    *(a2 + 55) = v15;
    LODWORD(v15) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v15;
  }

  return result;
}

double awd::metrics::BluetoothFWError::SharedCtor(awd::metrics::BluetoothFWError *this)
{
  result = 0.0;
  v2 = MEMORY[0x29EDC9758];
  *(this + 8) = 0u;
  *(this + 3) = v2;
  *(this + 4) = v2;
  *(this + 5) = v2;
  *(this + 6) = 0;
  return result;
}

awd::metrics::BluetoothFWError *awd::metrics::BluetoothFWError::BluetoothFWError(awd::metrics::BluetoothFWError *this, const awd::metrics::BluetoothFWError *a2)
{
  *this = &unk_2A1D4B580;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = 0;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 5) = v3;
  *(this + 6) = 0;
  awd::metrics::BluetoothFWError::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothFWError::MergeFrom(awd::metrics::BluetoothFWError *this, const awd::metrics::BluetoothFWError *a2)
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

  if ((*(a2 + 52) & 1) == 0)
  {
    if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    v8 = *(a2 + 4);
    *(this + 13) |= 2u;
    *(this + 4) = v8;
    v4 = *(a2 + 13);
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = *(a2 + 1);
  *(this + 13) |= 1u;
  *(this + 1) = v7;
  v4 = *(a2 + 13);
  if ((v4 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v4 & 4) != 0)
  {
LABEL_7:
    v5 = *(a2 + 5);
    *(this + 13) |= 4u;
    *(this + 5) = v5;
    v4 = *(a2 + 13);
  }

LABEL_8:
  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 8) != 0)
  {
    v9 = *(a2 + 3);
    *(this + 13) |= 8u;
    v10 = *(this + 3);
    if (v10 == v6)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v4 = *(a2 + 13);
    if ((v4 & 0x10) == 0)
    {
LABEL_10:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  v11 = *(a2 + 4);
  *(this + 13) |= 0x10u;
  v12 = *(this + 4);
  if (v12 == v6)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  if ((*(a2 + 13) & 0x20) != 0)
  {
LABEL_21:
    v13 = *(a2 + 5);
    *(this + 13) |= 0x20u;
    v14 = *(this + 5);
    if (v14 == v6)
    {
      operator new();
    }

    std::string::operator=(v14, v13);
  }
}

void sub_296376470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothFWError::~BluetoothFWError(awd::metrics::BluetoothFWError *this)
{
  *this = &unk_2A1D4B580;
  awd::metrics::BluetoothFWError::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B580;
  awd::metrics::BluetoothFWError::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B580;
  awd::metrics::BluetoothFWError::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothFWError::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
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

uint64_t awd::metrics::BluetoothFWError::default_instance(awd::metrics::BluetoothFWError *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothFWError::default_instance_;
  if (!awd::metrics::BluetoothFWError::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothFWError::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothFWError::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
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

    if ((*(this + 52) & 0x10) != 0)
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

    if ((*(this + 52) & 0x20) != 0)
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

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothFWError::MergePartialFromCodedStream(awd::metrics::BluetoothFWError *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_50;
            }

            goto LABEL_27;
          }

          if (v7 != 5)
          {
            if (v7 == 6 && v8 == 2)
            {
              goto LABEL_64;
            }

            goto LABEL_27;
          }

          if (v8 != 2)
          {
            goto LABEL_27;
          }

          v17 = *(this + 13);
LABEL_58:
          *(this + 13) = v17 | 8;
          if (*(this + 3) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v23 = *(a2 + 1);
          if (v23 < *(a2 + 2) && *v23 == 50)
          {
            *(a2 + 1) = v23 + 1;
LABEL_64:
            *(this + 13) |= 0x10u;
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

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_27;
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

        v16 = *(this + 13) | 1;
        *(this + 13) = v16;
        if (v14 < v11 && *v14 == 18)
        {
          *(a2 + 1) = v14 + 1;
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

      v16 = *(this + 13);
LABEL_36:
      *(this + 13) = v16 | 0x20;
      if (*(this + 5) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v18 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v18 < v9 && *v18 == 24)
      {
        v10 = v18 + 1;
        *(a2 + 1) = v10;
LABEL_42:
        if (v10 >= v9 || (v19 = *v10, v19 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v20 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v19;
          v20 = v10 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 13) |= 2u;
        if (v20 < v9 && *v20 == 32)
        {
          v15 = v20 + 1;
          *(a2 + 1) = v15;
LABEL_50:
          if (v15 >= v9 || (v21 = *v15, v21 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v22 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v21;
            v22 = v15 + 1;
            *(a2 + 1) = v22;
          }

          v17 = *(this + 13) | 4;
          *(this + 13) = v17;
          if (v22 < v9 && *v22 == 42)
          {
            *(a2 + 1) = v22 + 1;
            goto LABEL_58;
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

uint64_t awd::metrics::BluetoothFWError::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 52);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = *(v5 + 24);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_13:
  v9 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothFWError::ByteSize(awd::metrics::BluetoothFWError *this)
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
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 13);
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
      v2 = *(this + 13);
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

      goto LABEL_29;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(this + 3);
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
    v2 = *(this + 13);
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

  v3 = (v3 + v13 + v9 + 1);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
  }

LABEL_29:
  v14 = *(this + 4);
  v15 = *(v14 + 23);
  v16 = v15;
  v17 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = v17;
  }

  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
    v15 = *(v14 + 23);
    v17 = *(v14 + 8);
    v2 = *(this + 13);
    v16 = *(v14 + 23);
  }

  else
  {
    v19 = 1;
  }

  if (v16 < 0)
  {
    v15 = v17;
  }

  v3 = (v3 + v19 + v15 + 1);
  if ((v2 & 0x20) != 0)
  {
LABEL_38:
    v20 = *(this + 5);
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

LABEL_47:
  *(this + 12) = v3;
  return v3;
}

void awd::metrics::BluetoothFWError::CheckTypeAndMergeFrom(awd::metrics::BluetoothFWError *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothFWError::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothFWError::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothFWError::CopyFrom(awd::metrics::BluetoothFWError *this, const awd::metrics::BluetoothFWError *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothFWError::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothFWError::Swap(uint64_t this, awd::metrics::BluetoothFWError *a2)
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
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v5;
    LODWORD(v5) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
  }

  return this;
}

double awd::metrics::BluetoothAudioArbitration::SharedCtor(awd::metrics::BluetoothAudioArbitration *this)
{
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = v2;
  return result;
}

awd::metrics::BluetoothAudioArbitration *awd::metrics::BluetoothAudioArbitration::BluetoothAudioArbitration(awd::metrics::BluetoothAudioArbitration *this, const awd::metrics::BluetoothAudioArbitration *a2)
{
  *this = &unk_2A1D4B5F8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  v3 = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = v3;
  awd::metrics::BluetoothAudioArbitration::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothAudioArbitration::MergeFrom(awd::metrics::BluetoothAudioArbitration *this, const awd::metrics::BluetoothAudioArbitration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 60))
  {
    v6 = *(a2 + 1);
    *(this + 15) |= 1u;
    *(this + 1) = v6;
    v4 = *(a2 + 15);
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

  else if ((*(a2 + 60) & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 4);
  *(this + 15) |= 2u;
  *(this + 4) = v7;
  v4 = *(a2 + 15);
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
  v8 = *(a2 + 5);
  *(this + 15) |= 4u;
  *(this + 5) = v8;
  v4 = *(a2 + 15);
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
  v9 = *(a2 + 8);
  *(this + 15) |= 8u;
  *(this + 8) = v9;
  v4 = *(a2 + 15);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = *(a2 + 9);
    *(this + 15) |= 0x20u;
    *(this + 9) = v11;
    v4 = *(a2 + 15);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_18:
  v10 = *(a2 + 3);
  *(this + 15) |= 0x10u;
  *(this + 3) = v10;
  v4 = *(a2 + 15);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_20:
  v12 = *(a2 + 5);
  *(this + 15) |= 0x40u;
  v13 = *(this + 5);
  if (v13 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  if ((*(a2 + 15) & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 6);
    *(this + 15) |= 0x80u;
    *(this + 6) = v5;
  }
}

void sub_2963771F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAudioArbitration::~BluetoothAudioArbitration(awd::metrics::BluetoothAudioArbitration *this)
{
  *this = &unk_2A1D4B5F8;
  awd::metrics::BluetoothAudioArbitration::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B5F8;
  awd::metrics::BluetoothAudioArbitration::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B5F8;
  awd::metrics::BluetoothAudioArbitration::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAudioArbitration::SharedDtor(uint64_t this)
{
  v1 = *(this + 40);
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

uint64_t awd::metrics::BluetoothAudioArbitration::default_instance(awd::metrics::BluetoothAudioArbitration *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAudioArbitration::default_instance_;
  if (!awd::metrics::BluetoothAudioArbitration::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAudioArbitration::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAudioArbitration::Clear(uint64_t this)
{
  v1 = *(this + 60);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
    if ((v1 & 0x40) != 0)
    {
      v2 = *(this + 40);
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

    *(this + 48) = 0;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAudioArbitration::MergePartialFromCodedStream(awd::metrics::BluetoothAudioArbitration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if (TagFallback >> 3 <= 6)
        {
          if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_68;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_76;
          }

          goto LABEL_35;
        }

        if (v7 == 7)
        {
          if ((TagFallback & 7) == 0)
          {
            v19 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_84;
          }

          goto LABEL_35;
        }

        if (v7 != 8 || v8 != 2)
        {
          goto LABEL_35;
        }

        v13 = *(this + 15);
LABEL_92:
        *(this + 15) = v13 | 0x40;
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

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v18 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_52;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_60;
        }

        goto LABEL_35;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_35;
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
        v10 = v16 + 1;
        *(a2 + 1) = v10;
LABEL_44:
        if (v10 >= v9 || (v20 = *v10, v20 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v21 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v20;
          v21 = v10 + 1;
          *(a2 + 1) = v21;
        }

        *(this + 15) |= 2u;
        if (v21 < v9 && *v21 == 24)
        {
          v18 = v21 + 1;
          *(a2 + 1) = v18;
LABEL_52:
          if (v18 >= v9 || (v22 = *v18, v22 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v23 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v22;
            v23 = v18 + 1;
            *(a2 + 1) = v23;
          }

          *(this + 15) |= 4u;
          if (v23 < v9 && *v23 == 32)
          {
            v12 = v23 + 1;
            *(a2 + 1) = v12;
LABEL_60:
            if (v12 >= v9 || (v24 = *v12, v24 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v25 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v24;
              v25 = v12 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 15) |= 8u;
            if (v25 < v9 && *v25 == 40)
            {
              v17 = v25 + 1;
              *(a2 + 1) = v17;
LABEL_68:
              if (v17 >= v9 || (v26 = *v17, v26 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v27 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v26;
                v27 = v17 + 1;
                *(a2 + 1) = v27;
              }

              *(this + 15) |= 0x10u;
              if (v27 < v9 && *v27 == 48)
              {
                v11 = v27 + 1;
                *(a2 + 1) = v11;
LABEL_76:
                if (v11 >= v9 || (v28 = *v11, v28 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
                  if (!result)
                  {
                    return result;
                  }

                  v29 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 6) = v28;
                  v29 = v11 + 1;
                  *(a2 + 1) = v29;
                }

                *(this + 15) |= 0x80u;
                if (v29 < v9 && *v29 == 56)
                {
                  v19 = v29 + 1;
                  *(a2 + 1) = v19;
LABEL_84:
                  if (v19 >= v9 || (v30 = *v19, v30 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                    if (!result)
                    {
                      return result;
                    }

                    v31 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 9) = v30;
                    v31 = v19 + 1;
                    *(a2 + 1) = v31;
                  }

                  v13 = *(this + 15) | 0x20;
                  *(this + 15) = v13;
                  if (v31 < v9 && *v31 == 66)
                  {
                    *(a2 + 1) = v31 + 1;
                    goto LABEL_92;
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_44;
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

uint64_t awd::metrics::BluetoothAudioArbitration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_12;
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

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x80) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
    if ((*(v5 + 60) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_17:
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::BluetoothAudioArbitration::ByteSize(awd::metrics::BluetoothAudioArbitration *this)
{
  LOBYTE(v2) = *(this + 60);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if (*(this + 60))
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
    if ((*(this + 60) & 2) == 0)
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
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 15);
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_27;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(this + 8);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v2 = *(this + 15);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    v13 = *(this + 5);
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

    v3 = (v3 + v18 + v14 + 1);
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_28:
  v11 = *(this + 9);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x40) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v2 & 0x80) != 0)
  {
LABEL_17:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
  }

LABEL_18:
  *(this + 14) = v3;
  return v3;
}

void awd::metrics::BluetoothAudioArbitration::CheckTypeAndMergeFrom(awd::metrics::BluetoothAudioArbitration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAudioArbitration::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAudioArbitration::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAudioArbitration::CopyFrom(awd::metrics::BluetoothAudioArbitration *this, const awd::metrics::BluetoothAudioArbitration *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAudioArbitration::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothAudioArbitration::Swap(uint64_t this, awd::metrics::BluetoothAudioArbitration *a2)
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
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    v4 = *(this + 40);
    v5 = *(this + 48);
    v6 = *(a2 + 6);
    *(this + 40) = *(a2 + 5);
    *(this + 48) = v6;
    *(a2 + 5) = v4;
    *(a2 + 6) = v5;
    LODWORD(v4) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v4;
    LODWORD(v4) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v4;
  }

  return this;
}

uint64_t awd::metrics::BluetoothAACPCrash::SharedCtor(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 32) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = v1;
  return this;
}

awd::metrics::BluetoothAACPCrash *awd::metrics::BluetoothAACPCrash::BluetoothAACPCrash(awd::metrics::BluetoothAACPCrash *this, const awd::metrics::BluetoothAACPCrash *a2)
{
  *this = &unk_2A1D4B670;
  *(this + 1) = 0;
  *(this + 4) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  *(this + 10) = 0;
  awd::metrics::BluetoothAACPCrash::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothAACPCrash::MergeFrom(awd::metrics::BluetoothAACPCrash *this, const awd::metrics::BluetoothAACPCrash *a2)
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
      v6 = *(a2 + 8);
      *(this + 10) |= 2u;
      *(this + 8) = v6;
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

void sub_296377F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAACPCrash::~BluetoothAACPCrash(awd::metrics::BluetoothAACPCrash *this)
{
  *this = &unk_2A1D4B670;
  awd::metrics::BluetoothAACPCrash::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B670;
  awd::metrics::BluetoothAACPCrash::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B670;
  awd::metrics::BluetoothAACPCrash::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAACPCrash::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::BluetoothAACPCrash::default_instance(awd::metrics::BluetoothAACPCrash *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAACPCrash::default_instance_;
  if (!awd::metrics::BluetoothAACPCrash::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAACPCrash::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAACPCrash::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothAACPCrash::MergePartialFromCodedStream(awd::metrics::BluetoothAACPCrash *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 0xFF)
        {
          break;
        }

        if (v7 != 256)
        {
          if (v7 == 257 && v8 == 2)
          {
            goto LABEL_46;
          }

          goto LABEL_21;
        }

        if (v8 != 2)
        {
          goto LABEL_21;
        }

        v14 = *(this + 10);
LABEL_39:
        *(this + 10) = v14 | 4;
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
        if (*(a2 + 4) - v17 >= 2 && *v17 == 138 && v17[1] == 16)
        {
          *(a2 + 1) = v17 + 2;
LABEL_46:
          *(this + 10) |= 8u;
          if (*(this + 3) == v4)
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
        if (v10 >= v9 || (v15 = *v10, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v15;
          v16 = (v10 + 1);
          *(a2 + 1) = v16;
        }

        v14 = *(this + 10) | 2;
        *(this + 10) = v14;
        if (v9 - v16 >= 2 && *v16 == 130 && v16[1] == 16)
        {
          *(a2 + 1) = v16 + 2;
          goto LABEL_39;
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

uint64_t awd::metrics::BluetoothAACPCrash::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 32), a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t awd::metrics::BluetoothAACPCrash::ByteSize(awd::metrics::BluetoothAACPCrash *this)
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

  v4 = *(this + 8);
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

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
    v2 = *(this + 10);
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

  v3 = (v3 + v11 + v7 + 2);
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

    v3 = (v3 + v17 + v13 + 2);
  }

LABEL_32:
  *(this + 9) = v3;
  return v3;
}

void awd::metrics::BluetoothAACPCrash::CheckTypeAndMergeFrom(awd::metrics::BluetoothAACPCrash *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAACPCrash::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAACPCrash::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAACPCrash::CopyFrom(awd::metrics::BluetoothAACPCrash *this, const awd::metrics::BluetoothAACPCrash *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAACPCrash::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothAACPCrash::Swap(uint64_t this, awd::metrics::BluetoothAACPCrash *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
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

uint64_t awd::metrics::BluetoothAACPStatistics::SharedCtor(uint64_t this)
{
  *(this + 68) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = v1;
  *(this + 32) = 0;
  *(this + 64) = 0;
  *(this + 40) = v1;
  *(this + 48) = v1;
  *(this + 56) = v1;
  return this;
}

awd::metrics::BluetoothAACPStatistics *awd::metrics::BluetoothAACPStatistics::BluetoothAACPStatistics(awd::metrics::BluetoothAACPStatistics *this, const awd::metrics::BluetoothAACPStatistics *a2)
{
  *this = &unk_2A1D4B6E8;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  *(this + 4) = 0;
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 7) = v3;
  *(this + 8) = 0;
  *(this + 18) = 0;
  awd::metrics::BluetoothAACPStatistics::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothAACPStatistics::MergeFrom(awd::metrics::BluetoothAACPStatistics *this, const awd::metrics::BluetoothAACPStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(a2 + 18);
  v5 = MEMORY[0x29EDC9758];
  if (!v4)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    v6 = *(a2 + 1);
    *(this + 18) |= 1u;
    *(this + 1) = v6;
    v4 = *(a2 + 18);
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

  v7 = *(a2 + 2);
  *(this + 18) |= 2u;
  v8 = *(this + 2);
  if (v8 == v5)
  {
    operator new();
  }

  std::string::operator=(v8, v7);
  v4 = *(a2 + 18);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(a2 + 3);
  *(this + 18) |= 4u;
  v10 = *(this + 3);
  if (v10 == v5)
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v4 = *(a2 + 18);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 8);
  *(this + 18) |= 8u;
  *(this + 8) = v11;
  v4 = *(a2 + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(a2 + 9);
  *(this + 18) |= 0x10u;
  *(this + 9) = v12;
  v4 = *(a2 + 18);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = *(a2 + 16);
  *(this + 18) |= 0x20u;
  *(this + 16) = v13;
  v4 = *(a2 + 18);
  if ((v4 & 0x40) != 0)
  {
LABEL_24:
    v14 = *(a2 + 5);
    *(this + 18) |= 0x40u;
    v15 = *(this + 5);
    if (v15 == v5)
    {
      operator new();
    }

    std::string::operator=(v15, v14);
    v4 = *(a2 + 18);
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_27;
    }

LABEL_12:
    if ((v4 & 0x100) == 0)
    {
      return;
    }

    goto LABEL_30;
  }

LABEL_11:
  if ((v4 & 0x80) == 0)
  {
    goto LABEL_12;
  }

LABEL_27:
  v16 = *(a2 + 6);
  *(this + 18) |= 0x80u;
  v17 = *(this + 6);
  if (v17 == v5)
  {
    operator new();
  }

  std::string::operator=(v17, v16);
  if ((*(a2 + 18) & 0x100) != 0)
  {
LABEL_30:
    v18 = *(a2 + 7);
    *(this + 18) |= 0x100u;
    v19 = *(this + 7);
    if (v19 == v5)
    {
      operator new();
    }

    std::string::operator=(v19, v18);
  }
}

void sub_296378BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAACPStatistics::~BluetoothAACPStatistics(awd::metrics::BluetoothAACPStatistics *this)
{
  *this = &unk_2A1D4B6E8;
  awd::metrics::BluetoothAACPStatistics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B6E8;
  awd::metrics::BluetoothAACPStatistics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B6E8;
  awd::metrics::BluetoothAACPStatistics::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

void *awd::metrics::BluetoothAACPStatistics::SharedDtor(void *this)
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

    this = MEMORY[0x29C259F00](v9, 0x1012C40EC159624);
  }

  v11 = v1[7];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothAACPStatistics::default_instance(awd::metrics::BluetoothAACPStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAACPStatistics::default_instance_;
  if (!awd::metrics::BluetoothAACPStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAACPStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAACPStatistics::Clear(uint64_t this)
{
  v1 = *(this + 72);
  v2 = MEMORY[0x29EDC9758];
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3 != v2)
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

    if ((*(this + 72) & 4) != 0)
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

    *(this + 32) = 0;
    *(this + 64) = 0;
    if ((*(this + 72) & 0x40) != 0)
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

    if ((*(this + 72) & 0x80) != 0)
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

  if (*(this + 73))
  {
    v7 = *(this + 56);
    if (v7 != v2)
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

  *(this + 72) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAACPStatistics::MergePartialFromCodedStream(awd::metrics::BluetoothAACPStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 != 3)
            {
              if (v7 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_38;
              }

              v11 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_58;
            }

            if (v8 != 2)
            {
              goto LABEL_38;
            }

LABEL_52:
            *(this + 18) |= 4u;
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
            v10 = *(a2 + 2);
            if (v20 < v10 && *v20 == 32)
            {
              v11 = v20 + 1;
              *(a2 + 1) = v11;
LABEL_58:
              if (v11 >= v10 || (v21 = *v11, v21 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v22 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v21;
                v22 = v11 + 1;
                *(a2 + 1) = v22;
              }

              *(this + 18) |= 8u;
              if (v22 < v10 && *v22 == 40)
              {
                v18 = v22 + 1;
                *(a2 + 1) = v18;
                goto LABEL_66;
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || v8 != 2)
              {
                goto LABEL_38;
              }

              v9 = *(this + 18);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_38;
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

            v9 = *(this + 18) | 1;
            *(this + 18) = v9;
            if (v16 < v13 && *v16 == 18)
            {
              *(a2 + 1) = v16 + 1;
LABEL_46:
              *(this + 18) = v9 | 2;
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
              if (v19 < *(a2 + 2) && *v19 == 26)
              {
                *(a2 + 1) = v19 + 1;
                goto LABEL_52;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 != 5)
        {
          if (v7 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v12 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_74;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_66:
        if (v18 >= v10 || (v23 = *v18, v23 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v24 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v23;
          v24 = v18 + 1;
          *(a2 + 1) = v24;
        }

        *(this + 18) |= 0x10u;
        if (v24 < v10 && *v24 == 48)
        {
          v12 = v24 + 1;
          *(a2 + 1) = v12;
LABEL_74:
          if (v12 >= v10 || (v25 = *v12, v25 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
            if (!result)
            {
              return result;
            }

            v26 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 16) = v25;
            v26 = v12 + 1;
            *(a2 + 1) = v26;
          }

          v17 = *(this + 18) | 0x20;
          *(this + 18) = v17;
          if (v26 < v10 && *v26 == 58)
          {
            *(a2 + 1) = v26 + 1;
LABEL_82:
            *(this + 18) = v17 | 0x40;
            if (*(this + 5) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v27 = *(a2 + 1);
            if (v27 < *(a2 + 2) && *v27 == 66)
            {
              *(a2 + 1) = v27 + 1;
              goto LABEL_88;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if (v8 != 2)
        {
          goto LABEL_38;
        }

        v17 = *(this + 18);
        goto LABEL_82;
      }

      if (v7 != 8)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_38;
      }

LABEL_88:
      *(this + 18) |= 0x80u;
      if (*(this + 6) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
      if (!result)
      {
        return result;
      }

      v28 = *(a2 + 1);
      if (v28 < *(a2 + 2) && *v28 == 74)
      {
        *(a2 + 1) = v28 + 1;
LABEL_94:
        *(this + 18) |= 0x100u;
        if (*(this + 7) == v4)
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

    if (v7 == 9 && v8 == 2)
    {
      goto LABEL_94;
    }

LABEL_38:
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

uint64_t awd::metrics::BluetoothAACPStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 72);
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
  v8 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 72);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 64), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v10 = *(v5 + 48);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    if ((*(v5 + 72) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  v9 = *(v5 + 40);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 72);
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
  v11 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
}

uint64_t awd::metrics::BluetoothAACPStatistics::ByteSize(awd::metrics::BluetoothAACPStatistics *this)
{
  v2 = *(this + 18);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_64;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 18);
    if ((v2 & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_17;
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
    v2 = *(this + 18);
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
LABEL_17:
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
      v2 = *(this + 18);
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
LABEL_19:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_38;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_19;
  }

  v16 = *(this + 8);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v17 = 2;
  }

  v3 = (v17 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_20:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_38:
  v18 = *(this + 9);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v19 = 2;
  }

  v3 = (v19 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_21:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_42:
  v20 = *(this + 16);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v21 = 2;
  }

  v3 = (v21 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_22:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_46:
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
    v2 = *(this + 18);
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
  if ((v2 & 0x80) == 0)
  {
LABEL_23:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_64;
  }

LABEL_55:
  v28 = *(this + 6);
  v29 = *(v28 + 23);
  v30 = v29;
  v31 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v32 = *(v28 + 23);
  }

  else
  {
    v32 = v31;
  }

  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
    v29 = *(v28 + 23);
    v31 = *(v28 + 8);
    v2 = *(this + 18);
    v30 = *(v28 + 23);
  }

  else
  {
    v33 = 1;
  }

  if (v30 < 0)
  {
    v29 = v31;
  }

  v3 = (v3 + v33 + v29 + 1);
  if ((v2 & 0x100) != 0)
  {
LABEL_64:
    v34 = *(this + 7);
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

    v3 = (v3 + v39 + v35 + 1);
  }

LABEL_73:
  *(this + 17) = v3;
  return v3;
}

void awd::metrics::BluetoothAACPStatistics::CheckTypeAndMergeFrom(awd::metrics::BluetoothAACPStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAACPStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAACPStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAACPStatistics::CopyFrom(awd::metrics::BluetoothAACPStatistics *this, const awd::metrics::BluetoothAACPStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAACPStatistics::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothAACPStatistics::Swap(uint64_t this, awd::metrics::BluetoothAACPStatistics *a2)
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
    LODWORD(v5) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v5;
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
    LODWORD(v5) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v5;
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

uint64_t awd::metrics::BluetoothAACPEarState::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothAACPEarState *awd::metrics::BluetoothAACPEarState::BluetoothAACPEarState(awd::metrics::BluetoothAACPEarState *this, const awd::metrics::BluetoothAACPEarState *a2)
{
  *this = &unk_2A1D4B760;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::BluetoothAACPEarState::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothAACPEarState::MergeFrom(awd::metrics::BluetoothAACPEarState *this, const awd::metrics::BluetoothAACPEarState *a2)
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

void sub_296379BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAACPEarState::~BluetoothAACPEarState(awd::metrics::BluetoothAACPEarState *this)
{
  *this = &unk_2A1D4B760;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B760;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B760;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAACPEarState::default_instance(awd::metrics::BluetoothAACPEarState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAACPEarState::default_instance_;
  if (!awd::metrics::BluetoothAACPEarState::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAACPEarState::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAACPEarState::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothAACPEarState::MergePartialFromCodedStream(awd::metrics::BluetoothAACPEarState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t awd::metrics::BluetoothAACPEarState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::BluetoothAACPEarState::ByteSize(awd::metrics::BluetoothAACPEarState *this)
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

void awd::metrics::BluetoothAACPEarState::CheckTypeAndMergeFrom(awd::metrics::BluetoothAACPEarState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAACPEarState::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAACPEarState::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAACPEarState::CopyFrom(awd::metrics::BluetoothAACPEarState *this, const awd::metrics::BluetoothAACPEarState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAACPEarState::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothAACPEarState::Swap(uint64_t this, awd::metrics::BluetoothAACPEarState *a2)
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

void *awd::metrics::BluetoothAACPBattery::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::BluetoothAACPBattery *awd::metrics::BluetoothAACPBattery::BluetoothAACPBattery(awd::metrics::BluetoothAACPBattery *this, const awd::metrics::BluetoothAACPBattery *a2)
{
  *this = &unk_2A1D4B7D8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::BluetoothAACPBattery::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothAACPBattery::MergeFrom(awd::metrics::BluetoothAACPBattery *this, const awd::metrics::BluetoothAACPBattery *a2)
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
      v6 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 7);
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

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 7) |= 2u;
    *(this + 4) = v7;
    if ((*(a2 + 7) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 5);
    *(this + 7) |= 4u;
    *(this + 5) = v5;
  }
}

void sub_29637A3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAACPBattery::~BluetoothAACPBattery(awd::metrics::BluetoothAACPBattery *this)
{
  *this = &unk_2A1D4B7D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B7D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B7D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAACPBattery::default_instance(awd::metrics::BluetoothAACPBattery *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAACPBattery::default_instance_;
  if (!awd::metrics::BluetoothAACPBattery::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAACPBattery::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAACPBattery::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAACPBattery::MergePartialFromCodedStream(awd::metrics::BluetoothAACPBattery *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 4)
      {
        if ((TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v6 == 3)
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

      *(this + 7) |= 1u;
      if (v10 < v7 && *v10 == 24)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v13;
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 7) |= 2u;
        if (v14 < v7 && *v14 == 32)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v15;
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 7) |= 4u;
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

uint64_t awd::metrics::BluetoothAACPBattery::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
    if ((v5[7] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = v5[7];
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
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothAACPBattery::ByteSize(awd::metrics::BluetoothAACPBattery *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (*(this + 28))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 7);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 7);
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
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
  }

LABEL_16:
  *(this + 6) = v3;
  return v3;
}

void awd::metrics::BluetoothAACPBattery::CheckTypeAndMergeFrom(awd::metrics::BluetoothAACPBattery *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAACPBattery::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAACPBattery::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAACPBattery::CopyFrom(awd::metrics::BluetoothAACPBattery *this, const awd::metrics::BluetoothAACPBattery *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAACPBattery::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothAACPBattery::Swap(uint64_t this, awd::metrics::BluetoothAACPBattery *a2)
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
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return this;
}

uint64_t awd::metrics::BluetoothAACPDoubleTapSetting::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothAACPDoubleTapSetting *awd::metrics::BluetoothAACPDoubleTapSetting::BluetoothAACPDoubleTapSetting(awd::metrics::BluetoothAACPDoubleTapSetting *this, const awd::metrics::BluetoothAACPDoubleTapSetting *a2)
{
  *this = &unk_2A1D4B850;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::BluetoothAACPDoubleTapSetting::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothAACPDoubleTapSetting::MergeFrom(awd::metrics::BluetoothAACPDoubleTapSetting *this, const awd::metrics::BluetoothAACPDoubleTapSetting *a2)
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

void sub_29637AB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAACPDoubleTapSetting::~BluetoothAACPDoubleTapSetting(awd::metrics::BluetoothAACPDoubleTapSetting *this)
{
  *this = &unk_2A1D4B850;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B850;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4B850;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAACPDoubleTapSetting::default_instance(awd::metrics::BluetoothAACPDoubleTapSetting *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAACPDoubleTapSetting::default_instance_;
  if (!awd::metrics::BluetoothAACPDoubleTapSetting::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAACPDoubleTapSetting::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAACPDoubleTapSetting::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothAACPDoubleTapSetting::MergePartialFromCodedStream(awd::metrics::BluetoothAACPDoubleTapSetting *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t awd::metrics::BluetoothAACPDoubleTapSetting::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::BluetoothAACPDoubleTapSetting::ByteSize(awd::metrics::BluetoothAACPDoubleTapSetting *this)
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

void awd::metrics::BluetoothAACPDoubleTapSetting::CheckTypeAndMergeFrom(awd::metrics::BluetoothAACPDoubleTapSetting *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAACPDoubleTapSetting::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAACPDoubleTapSetting::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAACPDoubleTapSetting::CopyFrom(awd::metrics::BluetoothAACPDoubleTapSetting *this, const awd::metrics::BluetoothAACPDoubleTapSetting *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAACPDoubleTapSetting::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothAACPDoubleTapSetting::Swap(uint64_t this, awd::metrics::BluetoothAACPDoubleTapSetting *a2)
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

double awd::metrics::BluetoothAACPLinkInfo::SharedCtor(awd::metrics::BluetoothAACPLinkInfo *this)
{
  result = 0.0;
  *(this + 16) = 0;
  *(this + 54) = 0;
  *(this + 62) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 33) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 59) = 0;
  *(this + 456) = 0u;
  *(this + 134) = 0;
  *(this + 520) = 0u;
  return result;
}

awd::metrics::BluetoothAACPLinkInfo *awd::metrics::BluetoothAACPLinkInfo::BluetoothAACPLinkInfo(awd::metrics::BluetoothAACPLinkInfo *this, const awd::metrics::BluetoothAACPLinkInfo *a2)
{
  *this = &unk_2A1D4B8C8;
  bzero(this + 8, 0x214uLL);
  awd::metrics::BluetoothAACPLinkInfo::MergeFrom(this, a2);
  return this;
}

void sub_29637B300(_Unwind_Exception *a1)
{
  v3 = *(v1 + 63);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 60);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 55);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 52);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 42);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 40);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 34);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(v1 + 27);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(v1 + 25);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(v1 + 23);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 21);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  v14 = *(v1 + 19);
  if (v14)
  {
    MEMORY[0x29C259EE0](v14, 0x1000C8052888210);
  }

  v15 = *(v1 + 17);
  if (v15)
  {
    MEMORY[0x29C259EE0](v15, 0x1000C8052888210);
  }

  v16 = *(v1 + 14);
  if (v16)
  {
    MEMORY[0x29C259EE0](v16, 0x1000C8052888210);
  }

  v17 = *(v1 + 12);
  if (v17)
  {
    MEMORY[0x29C259EE0](v17, 0x1000C8052888210);
  }

  v18 = *(v1 + 10);
  if (v18)
  {
    MEMORY[0x29C259EE0](v18, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAACPLinkInfo::MergeFrom(awd::metrics::BluetoothAACPLinkInfo *this, const awd::metrics::BluetoothAACPLinkInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v87);
  }

  v4 = *(a2 + 22);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, *(this + 22) + v4);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v5 = *(a2 + 26);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 26) + v5);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v6 = *(a2 + 30);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 14, *(this + 30) + v6);
    memcpy((*(this + 14) + 4 * *(this + 30)), *(a2 + 14), 4 * *(a2 + 30));
    *(this + 30) += *(a2 + 30);
  }

  v7 = *(a2 + 36);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 17, *(this + 36) + v7);
    memcpy((*(this + 17) + 4 * *(this + 36)), *(a2 + 17), 4 * *(a2 + 36));
    *(this + 36) += *(a2 + 36);
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 19, *(this + 40) + v8);
    memcpy((*(this + 19) + 4 * *(this + 40)), *(a2 + 19), 4 * *(a2 + 40));
    *(this + 40) += *(a2 + 40);
  }

  v9 = *(a2 + 44);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 21, *(this + 44) + v9);
    memcpy((*(this + 21) + 4 * *(this + 44)), *(a2 + 21), 4 * *(a2 + 44));
    *(this + 44) += *(a2 + 44);
  }

  v10 = *(a2 + 48);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 23, *(this + 48) + v10);
    memcpy((*(this + 23) + 4 * *(this + 48)), *(a2 + 23), 4 * *(a2 + 48));
    *(this + 48) += *(a2 + 48);
  }

  v11 = *(a2 + 52);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 25, *(this + 52) + v11);
    memcpy((*(this + 25) + 4 * *(this + 52)), *(a2 + 25), 4 * *(a2 + 52));
    *(this + 52) += *(a2 + 52);
  }

  v12 = *(a2 + 56);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 27, *(this + 56) + v12);
    memcpy((*(this + 27) + 4 * *(this + 56)), *(a2 + 27), 4 * *(a2 + 56));
    *(this + 56) += *(a2 + 56);
  }

  v13 = *(a2 + 70);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 34, *(this + 70) + v13);
    memcpy((*(this + 34) + 4 * *(this + 70)), *(a2 + 34), 4 * *(a2 + 70));
    *(this + 70) += *(a2 + 70);
  }

  v14 = *(a2 + 82);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 40, *(this + 82) + v14);
    memcpy((*(this + 40) + 4 * *(this + 82)), *(a2 + 40), 4 * *(a2 + 82));
    *(this + 82) += *(a2 + 82);
  }

  v15 = *(a2 + 86);
  if (v15)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 42, *(this + 86) + v15);
    memcpy((*(this + 42) + 4 * *(this + 86)), *(a2 + 42), 4 * *(a2 + 86));
    *(this + 86) += *(a2 + 86);
  }

  v16 = *(a2 + 106);
  if (v16)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 52, *(this + 106) + v16);
    memcpy((*(this + 52) + 4 * *(this + 106)), *(a2 + 52), 4 * *(a2 + 106));
    *(this + 106) += *(a2 + 106);
  }

  v17 = *(a2 + 112);
  if (v17)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 55, *(this + 112) + v17);
    memcpy((*(this + 55) + 4 * *(this + 112)), *(a2 + 55), 4 * *(a2 + 112));
    *(this + 112) += *(a2 + 112);
  }

  v18 = *(a2 + 122);
  if (v18)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 60, *(this + 122) + v18);
    memcpy((*(this + 60) + 4 * *(this + 122)), *(a2 + 60), 4 * *(a2 + 122));
    *(this + 122) += *(a2 + 122);
  }

  v19 = *(a2 + 128);
  if (v19)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 63, *(this + 128) + v19);
    memcpy((*(this + 63) + 4 * *(this + 128)), *(a2 + 63), 4 * *(a2 + 128));
    *(this + 128) += *(a2 + 128);
  }

  v20 = *(a2 + 132);
  if (!v20)
  {
    goto LABEL_45;
  }

  if (v20)
  {
    v32 = *(a2 + 1);
    *(this + 132) |= 1u;
    *(this + 1) = v32;
    v20 = *(a2 + 132);
    if ((v20 & 2) == 0)
    {
LABEL_38:
      if ((v20 & 4) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_121;
    }
  }

  else if ((v20 & 2) == 0)
  {
    goto LABEL_38;
  }

  v33 = *(a2 + 4);
  *(this + 132) |= 2u;
  *(this + 4) = v33;
  v20 = *(a2 + 132);
  if ((v20 & 4) == 0)
  {
LABEL_39:
    if ((v20 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_122;
  }

LABEL_121:
  v34 = *(a2 + 5);
  *(this + 132) |= 4u;
  *(this + 5) = v34;
  v20 = *(a2 + 132);
  if ((v20 & 8) == 0)
  {
LABEL_40:
    if ((v20 & 0x10) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_123;
  }

LABEL_122:
  v35 = *(a2 + 6);
  *(this + 132) |= 8u;
  *(this + 6) = v35;
  v20 = *(a2 + 132);
  if ((v20 & 0x10) == 0)
  {
LABEL_41:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_42;
    }

LABEL_124:
    v37 = *(a2 + 8);
    *(this + 132) |= 0x20u;
    *(this + 8) = v37;
    v20 = *(a2 + 132);
    if ((v20 & 0x40) == 0)
    {
LABEL_43:
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    goto LABEL_125;
  }

LABEL_123:
  v36 = *(a2 + 7);
  *(this + 132) |= 0x10u;
  *(this + 7) = v36;
  v20 = *(a2 + 132);
  if ((v20 & 0x20) != 0)
  {
    goto LABEL_124;
  }

LABEL_42:
  if ((v20 & 0x40) == 0)
  {
    goto LABEL_43;
  }

LABEL_125:
  v38 = *(a2 + 9);
  *(this + 132) |= 0x40u;
  *(this + 9) = v38;
  v20 = *(a2 + 132);
  if ((v20 & 0x80) != 0)
  {
LABEL_44:
    v21 = *(a2 + 10);
    *(this + 132) |= 0x80u;
    *(this + 10) = v21;
    v20 = *(a2 + 132);
  }

LABEL_45:
  if ((v20 & 0xFF00) == 0)
  {
    goto LABEL_55;
  }

  if ((v20 & 0x100) != 0)
  {
    v39 = *(a2 + 11);
    *(this + 132) |= 0x100u;
    *(this + 11) = v39;
    v20 = *(a2 + 132);
    if ((v20 & 0x200) == 0)
    {
LABEL_48:
      if ((v20 & 0x400) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_129;
    }
  }

  else if ((v20 & 0x200) == 0)
  {
    goto LABEL_48;
  }

  v40 = *(a2 + 12);
  *(this + 132) |= 0x200u;
  *(this + 12) = v40;
  v20 = *(a2 + 132);
  if ((v20 & 0x400) == 0)
  {
LABEL_49:
    if ((v20 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_130;
  }

LABEL_129:
  v41 = *(a2 + 13);
  *(this + 132) |= 0x400u;
  *(this + 13) = v41;
  v20 = *(a2 + 132);
  if ((v20 & 0x800) == 0)
  {
LABEL_50:
    if ((v20 & 0x1000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_131;
  }

LABEL_130:
  v42 = *(a2 + 14);
  *(this + 132) |= 0x800u;
  *(this + 14) = v42;
  v20 = *(a2 + 132);
  if ((v20 & 0x1000) == 0)
  {
LABEL_51:
    if ((v20 & 0x2000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_132;
  }

LABEL_131:
  v43 = *(a2 + 15);
  *(this + 132) |= 0x1000u;
  *(this + 15) = v43;
  v20 = *(a2 + 132);
  if ((v20 & 0x2000) == 0)
  {
LABEL_52:
    if ((v20 & 0x4000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_133;
  }

LABEL_132:
  v44 = *(a2 + 16);
  *(this + 132) |= 0x2000u;
  *(this + 16) = v44;
  v20 = *(a2 + 132);
  if ((v20 & 0x4000) == 0)
  {
LABEL_53:
    if ((v20 & 0x8000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_133:
  v45 = *(a2 + 17);
  *(this + 132) |= 0x4000u;
  *(this + 17) = v45;
  v20 = *(a2 + 132);
  if ((v20 & 0x8000) != 0)
  {
LABEL_54:
    v22 = *(a2 + 18);
    *(this + 132) |= 0x8000u;
    *(this + 18) = v22;
    v20 = *(a2 + 132);
  }

LABEL_55:
  if ((v20 & 0xFF0000) != 0)
  {
    if ((v20 & 0x10000) != 0)
    {
      v23 = *(a2 + 19);
      *(this + 132) |= 0x10000u;
      *(this + 19) = v23;
      v20 = *(a2 + 132);
    }

    if ((v20 & 0x20000) != 0)
    {
      v24 = *(a2 + 32);
      *(this + 132) |= 0x20000u;
      *(this + 32) = v24;
      v20 = *(a2 + 132);
    }
  }

  if (v20 >> 25)
  {
    if ((v20 & 0x2000000) != 0)
    {
      v74 = *(a2 + 33);
      *(this + 132) |= 0x2000000u;
      *(this + 33) = v74;
      v20 = *(a2 + 132);
      if ((v20 & 0x10000000) == 0)
      {
LABEL_63:
        if ((v20 & 0x20000000) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_170;
      }
    }

    else if ((v20 & 0x10000000) == 0)
    {
      goto LABEL_63;
    }

    v75 = *(a2 + 58);
    *(this + 132) |= 0x10000000u;
    *(this + 58) = v75;
    v20 = *(a2 + 132);
    if ((v20 & 0x20000000) == 0)
    {
LABEL_64:
      if ((v20 & 0x40000000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_171;
    }

LABEL_170:
    v76 = *(a2 + 59);
    *(this + 132) |= 0x20000000u;
    *(this + 59) = v76;
    v20 = *(a2 + 132);
    if ((v20 & 0x40000000) == 0)
    {
LABEL_65:
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_66;
      }

LABEL_172:
      v78 = *(a2 + 61);
      *(this + 132) |= 0x80000000;
      *(this + 61) = v78;
      goto LABEL_66;
    }

LABEL_171:
    v77 = *(a2 + 60);
    *(this + 132) |= 0x40000000u;
    *(this + 60) = v77;
    if ((*(a2 + 132) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_172;
  }

LABEL_66:
  v25 = *(a2 + 133);
  if (!v25)
  {
    goto LABEL_75;
  }

  if (v25)
  {
    v46 = *(a2 + 62);
    *(this + 133) |= 1u;
    *(this + 62) = v46;
    v25 = *(a2 + 133);
    if ((v25 & 2) == 0)
    {
LABEL_69:
      if ((v25 & 4) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_137;
    }
  }

  else if ((v25 & 2) == 0)
  {
    goto LABEL_69;
  }

  v47 = *(a2 + 63);
  *(this + 133) |= 2u;
  *(this + 63) = v47;
  v25 = *(a2 + 133);
  if ((v25 & 4) == 0)
  {
LABEL_70:
    if ((v25 & 8) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_138;
  }

LABEL_137:
  v48 = *(a2 + 64);
  *(this + 133) |= 4u;
  *(this + 64) = v48;
  v25 = *(a2 + 133);
  if ((v25 & 8) == 0)
  {
LABEL_71:
    if ((v25 & 0x10) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_139;
  }

LABEL_138:
  v49 = *(a2 + 65);
  *(this + 133) |= 8u;
  *(this + 65) = v49;
  v25 = *(a2 + 133);
  if ((v25 & 0x10) == 0)
  {
LABEL_72:
    if ((v25 & 0x40) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_140;
  }

LABEL_139:
  v50 = *(a2 + 66);
  *(this + 133) |= 0x10u;
  *(this + 66) = v50;
  v25 = *(a2 + 133);
  if ((v25 & 0x40) == 0)
  {
LABEL_73:
    if ((v25 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_140:
  v51 = *(a2 + 67);
  *(this + 133) |= 0x40u;
  *(this + 67) = v51;
  v25 = *(a2 + 133);
  if ((v25 & 0x80) != 0)
  {
LABEL_74:
    v26 = *(a2 + 72);
    *(this + 133) |= 0x80u;
    *(this + 72) = v26;
    v25 = *(a2 + 133);
  }

LABEL_75:
  if ((v25 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v25 & 0x100) != 0)
  {
    v52 = *(a2 + 73);
    *(this + 133) |= 0x100u;
    *(this + 73) = v52;
    v25 = *(a2 + 133);
    if ((v25 & 0x200) == 0)
    {
LABEL_78:
      if ((v25 & 0x400) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_144;
    }
  }

  else if ((v25 & 0x200) == 0)
  {
    goto LABEL_78;
  }

  v53 = *(a2 + 74);
  *(this + 133) |= 0x200u;
  *(this + 74) = v53;
  v25 = *(a2 + 133);
  if ((v25 & 0x400) == 0)
  {
LABEL_79:
    if ((v25 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_145;
  }

LABEL_144:
  v54 = *(a2 + 75);
  *(this + 133) |= 0x400u;
  *(this + 75) = v54;
  v25 = *(a2 + 133);
  if ((v25 & 0x800) == 0)
  {
LABEL_80:
    if ((v25 & 0x1000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_146;
  }

LABEL_145:
  v55 = *(a2 + 76);
  *(this + 133) |= 0x800u;
  *(this + 76) = v55;
  v25 = *(a2 + 133);
  if ((v25 & 0x1000) == 0)
  {
LABEL_81:
    if ((v25 & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_147;
  }

LABEL_146:
  v56 = *(a2 + 77);
  *(this + 133) |= 0x1000u;
  *(this + 77) = v56;
  v25 = *(a2 + 133);
  if ((v25 & 0x2000) == 0)
  {
LABEL_82:
    if ((v25 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_147:
  v57 = *(a2 + 78);
  *(this + 133) |= 0x2000u;
  *(this + 78) = v57;
  v25 = *(a2 + 133);
  if ((v25 & 0x8000) != 0)
  {
LABEL_83:
    v27 = *(a2 + 79);
    *(this + 133) |= 0x8000u;
    *(this + 79) = v27;
    v25 = *(a2 + 133);
  }

LABEL_84:
  if ((v25 & 0xFF0000) == 0)
  {
    goto LABEL_93;
  }

  if ((v25 & 0x10000) != 0)
  {
    v58 = *(a2 + 88);
    *(this + 133) |= 0x10000u;
    *(this + 88) = v58;
    v25 = *(a2 + 133);
    if ((v25 & 0x40000) == 0)
    {
LABEL_87:
      if ((v25 & 0x80000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_151;
    }
  }

  else if ((v25 & 0x40000) == 0)
  {
    goto LABEL_87;
  }

  v59 = *(a2 + 89);
  *(this + 133) |= 0x40000u;
  *(this + 89) = v59;
  v25 = *(a2 + 133);
  if ((v25 & 0x80000) == 0)
  {
LABEL_88:
    if ((v25 & 0x100000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_152;
  }

LABEL_151:
  v60 = *(a2 + 90);
  *(this + 133) |= 0x80000u;
  *(this + 90) = v60;
  v25 = *(a2 + 133);
  if ((v25 & 0x100000) == 0)
  {
LABEL_89:
    if ((v25 & 0x200000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_153;
  }

LABEL_152:
  v61 = *(a2 + 91);
  *(this + 133) |= 0x100000u;
  *(this + 91) = v61;
  v25 = *(a2 + 133);
  if ((v25 & 0x200000) == 0)
  {
LABEL_90:
    if ((v25 & 0x400000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_154;
  }

LABEL_153:
  v62 = *(a2 + 92);
  *(this + 133) |= 0x200000u;
  *(this + 92) = v62;
  v25 = *(a2 + 133);
  if ((v25 & 0x400000) == 0)
  {
LABEL_91:
    if ((v25 & 0x800000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

LABEL_154:
  v63 = *(a2 + 93);
  *(this + 133) |= 0x400000u;
  *(this + 93) = v63;
  v25 = *(a2 + 133);
  if ((v25 & 0x800000) != 0)
  {
LABEL_92:
    v28 = *(a2 + 94);
    *(this + 133) |= 0x800000u;
    *(this + 94) = v28;
    v25 = *(a2 + 133);
  }

LABEL_93:
  if (!HIBYTE(v25))
  {
    goto LABEL_102;
  }

  if ((v25 & 0x1000000) != 0)
  {
    v79 = *(a2 + 95);
    *(this + 133) |= 0x1000000u;
    *(this + 95) = v79;
    v25 = *(a2 + 133);
    if ((v25 & 0x2000000) == 0)
    {
LABEL_96:
      if ((v25 & 0x4000000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_175;
    }
  }

  else if ((v25 & 0x2000000) == 0)
  {
    goto LABEL_96;
  }

  v80 = *(a2 + 96);
  *(this + 133) |= 0x2000000u;
  *(this + 96) = v80;
  v25 = *(a2 + 133);
  if ((v25 & 0x4000000) == 0)
  {
LABEL_97:
    if ((v25 & 0x8000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_176;
  }

LABEL_175:
  v81 = *(a2 + 97);
  *(this + 133) |= 0x4000000u;
  *(this + 97) = v81;
  v25 = *(a2 + 133);
  if ((v25 & 0x8000000) == 0)
  {
LABEL_98:
    if ((v25 & 0x10000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_177;
  }

LABEL_176:
  v82 = *(a2 + 98);
  *(this + 133) |= 0x8000000u;
  *(this + 98) = v82;
  v25 = *(a2 + 133);
  if ((v25 & 0x10000000) == 0)
  {
LABEL_99:
    if ((v25 & 0x20000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_178;
  }

LABEL_177:
  v83 = *(a2 + 99);
  *(this + 133) |= 0x10000000u;
  *(this + 99) = v83;
  v25 = *(a2 + 133);
  if ((v25 & 0x20000000) == 0)
  {
LABEL_100:
    if ((v25 & 0x40000000) == 0)
    {
      goto LABEL_101;
    }

LABEL_179:
    v85 = *(a2 + 101);
    *(this + 133) |= 0x40000000u;
    *(this + 101) = v85;
    if ((*(a2 + 133) & 0x80000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_180;
  }

LABEL_178:
  v84 = *(a2 + 100);
  *(this + 133) |= 0x20000000u;
  *(this + 100) = v84;
  v25 = *(a2 + 133);
  if ((v25 & 0x40000000) != 0)
  {
    goto LABEL_179;
  }

LABEL_101:
  if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_102;
  }

LABEL_180:
  v86 = *(a2 + 102);
  *(this + 133) |= 0x80000000;
  *(this + 102) = v86;
LABEL_102:
  v29 = *(a2 + 134);
  if (!v29)
  {
    goto LABEL_110;
  }

  if (v29)
  {
    v64 = *(a2 + 103);
    *(this + 134) |= 1u;
    *(this + 103) = v64;
    v29 = *(a2 + 134);
    if ((v29 & 2) == 0)
    {
LABEL_105:
      if ((v29 & 8) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_158;
    }
  }

  else if ((v29 & 2) == 0)
  {
    goto LABEL_105;
  }

  v65 = *(a2 + 108);
  *(this + 134) |= 2u;
  *(this + 108) = v65;
  v29 = *(a2 + 134);
  if ((v29 & 8) == 0)
  {
LABEL_106:
    if ((v29 & 0x20) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_159;
  }

LABEL_158:
  v66 = *(a2 + 109);
  *(this + 134) |= 8u;
  *(this + 109) = v66;
  v29 = *(a2 + 134);
  if ((v29 & 0x20) == 0)
  {
LABEL_107:
    if ((v29 & 0x40) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_160;
  }

LABEL_159:
  v67 = *(a2 + 114);
  *(this + 134) |= 0x20u;
  *(this + 114) = v67;
  v29 = *(a2 + 134);
  if ((v29 & 0x40) == 0)
  {
LABEL_108:
    if ((v29 & 0x80) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

LABEL_160:
  v68 = *(a2 + 115);
  *(this + 134) |= 0x40u;
  *(this + 115) = v68;
  v29 = *(a2 + 134);
  if ((v29 & 0x80) != 0)
  {
LABEL_109:
    v30 = *(a2 + 116);
    *(this + 134) |= 0x80u;
    *(this + 116) = v30;
    v29 = *(a2 + 134);
  }

LABEL_110:
  if ((v29 & 0xFF00) == 0)
  {
    return;
  }

  if ((v29 & 0x100) != 0)
  {
    v69 = *(a2 + 117);
    *(this + 134) |= 0x100u;
    *(this + 117) = v69;
    v29 = *(a2 + 134);
    if ((v29 & 0x200) == 0)
    {
LABEL_113:
      if ((v29 & 0x400) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_164;
    }
  }

  else if ((v29 & 0x200) == 0)
  {
    goto LABEL_113;
  }

  v70 = *(a2 + 118);
  *(this + 134) |= 0x200u;
  *(this + 118) = v70;
  v29 = *(a2 + 134);
  if ((v29 & 0x400) == 0)
  {
LABEL_114:
    if ((v29 & 0x800) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_165;
  }

LABEL_164:
  v71 = *(a2 + 119);
  *(this + 134) |= 0x400u;
  *(this + 119) = v71;
  v29 = *(a2 + 134);
  if ((v29 & 0x800) == 0)
  {
LABEL_115:
    if ((v29 & 0x2000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_166;
  }

LABEL_165:
  v72 = *(a2 + 124);
  *(this + 134) |= 0x800u;
  *(this + 124) = v72;
  v29 = *(a2 + 134);
  if ((v29 & 0x2000) == 0)
  {
LABEL_116:
    if ((v29 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_117;
  }

LABEL_166:
  v73 = *(a2 + 125);
  *(this + 134) |= 0x2000u;
  *(this + 125) = v73;
  if ((*(a2 + 134) & 0x4000) != 0)
  {
LABEL_117:
    v31 = *(a2 + 130);
    *(this + 134) |= 0x4000u;
    *(this + 130) = v31;
  }
}

void sub_29637C128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAACPLinkInfo::~BluetoothAACPLinkInfo(awd::metrics::BluetoothAACPLinkInfo *this)
{
  *this = &unk_2A1D4B8C8;
  v2 = *(this + 63);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 60);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 55);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 52);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 42);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 40);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 34);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(this + 27);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 25);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(this + 23);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(this + 21);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(this + 19);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  v14 = *(this + 17);
  if (v14)
  {
    MEMORY[0x29C259EE0](v14, 0x1000C8052888210);
  }

  v15 = *(this + 14);
  if (v15)
  {
    MEMORY[0x29C259EE0](v15, 0x1000C8052888210);
  }

  v16 = *(this + 12);
  if (v16)
  {
    MEMORY[0x29C259EE0](v16, 0x1000C8052888210);
  }

  v17 = *(this + 10);
  if (v17)
  {
    MEMORY[0x29C259EE0](v17, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAACPLinkInfo::~BluetoothAACPLinkInfo(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAACPLinkInfo::default_instance(awd::metrics::BluetoothAACPLinkInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAACPLinkInfo::default_instance_;
  if (!awd::metrics::BluetoothAACPLinkInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAACPLinkInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAACPLinkInfo::Clear(uint64_t this)
{
  v1 = *(this + 528);
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
    *(this + 76) = 0;
    *(this + 128) = 0;
  }

  if (v1 >> 25)
  {
    *(this + 132) = 0;
    *(this + 232) = 0;
    *(this + 240) = 0;
  }

  v2 = *(this + 532);
  if (v2)
  {
    *(this + 288) = 0;
    *(this + 256) = 0;
    *(this + 264) = 0;
    *(this + 248) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 316) = 0;
    *(this + 300) = 0;
    *(this + 292) = 0;
    *(this + 308) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 352) = 0;
    *(this + 360) = 0;
    *(this + 376) = 0;
    *(this + 368) = 0;
  }

  if (HIBYTE(v2))
  {
    *(this + 380) = 0u;
    *(this + 396) = 0u;
  }

  v3 = *(this + 536);
  if (v3)
  {
    *(this + 412) = 0;
    *(this + 432) = 0;
    *(this + 456) = 0;
    *(this + 464) = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(this + 468) = 0;
    *(this + 472) = 0;
    *(this + 496) = 0;
    *(this + 520) = 0;
  }

  *(this + 88) = 0;
  *(this + 104) = 0;
  *(this + 120) = 0;
  *(this + 144) = 0;
  *(this + 160) = 0;
  *(this + 176) = 0;
  *(this + 192) = 0;
  *(this + 208) = 0;
  *(this + 224) = 0;
  *(this + 280) = 0;
  *(this + 328) = 0;
  *(this + 344) = 0;
  *(this + 424) = 0;
  *(this + 448) = 0;
  *(this + 488) = 0;
  *(this + 512) = 0;
  *(this + 528) = 0;
  *(this + 536) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAACPLinkInfo::MergePartialFromCodedStream(awd::metrics::BluetoothAACPLinkInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v426 = (this + 520);
  v412 = (this + 256);
  v410 = (this + 260);
  v408 = (this + 264);
  v428 = (this + 268);
  v424 = (this + 288);
  v420 = (this + 292);
  v417 = (this + 296);
  v415 = (this + 300);
  v413 = (this + 304);
  v411 = (this + 308);
  v409 = (this + 312);
  v427 = (this + 316);
  v423 = (this + 352);
  v429 = (this + 356);
  v425 = (this + 360);
  v421 = (this + 364);
  v418 = (this + 368);
  v416 = (this + 372);
  v414 = (this + 376);
  v406 = (this + 392);
  v407 = (this + 388);
  v404 = (this + 400);
  v405 = (this + 396);
  v402 = (this + 408);
  v403 = (this + 404);
  v400 = (this + 432);
  v401 = (this + 412);
  v4 = (this + 436);
  v5 = (this + 456);
  v6 = (this + 460);
  v422 = (this + 464);
  v419 = (this + 468);
  v7 = (this + 472);
  v8 = (this + 476);
  v9 = (this + 496);
  v10 = (this + 500);
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
          goto LABEL_200;
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

        *(this + 132) |= 1u;
        if (v17 < v14 && *v17 == 16)
        {
          v54 = v17 + 1;
          *(a2 + 1) = v54;
          goto LABEL_226;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v54 = *(a2 + 1);
        v14 = *(a2 + 2);
LABEL_226:
        if (v54 >= v14 || (v98 = *v54, v98 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v99 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v98;
          v99 = v54 + 1;
          *(a2 + 1) = v99;
        }

        *(this + 132) |= 2u;
        if (v99 >= v14 || *v99 != 24)
        {
          continue;
        }

        v49 = v99 + 1;
        *(a2 + 1) = v49;
LABEL_234:
        if (v49 >= v14 || (v100 = *v49, v100 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v101 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v100;
          v101 = v49 + 1;
          *(a2 + 1) = v101;
        }

        *(this + 132) |= 4u;
        if (v101 >= v14 || *v101 != 32)
        {
          continue;
        }

        v52 = v101 + 1;
        *(a2 + 1) = v52;
LABEL_242:
        if (v52 >= v14 || (v102 = *v52, v102 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v103 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v102;
          v103 = v52 + 1;
          *(a2 + 1) = v103;
        }

        *(this + 132) |= 8u;
        if (v103 >= v14 || *v103 != 40)
        {
          continue;
        }

        v42 = v103 + 1;
        *(a2 + 1) = v42;
LABEL_250:
        if (v42 >= v14 || (v104 = *v42, v104 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v105 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v104;
          v105 = v42 + 1;
          *(a2 + 1) = v105;
        }

        *(this + 132) |= 0x10u;
        if (v105 >= v14 || *v105 != 48)
        {
          continue;
        }

        v60 = v105 + 1;
        *(a2 + 1) = v60;
LABEL_258:
        if (v60 >= v14 || (v106 = *v60, v106 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v107 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v106;
          v107 = v60 + 1;
          *(a2 + 1) = v107;
        }

        *(this + 132) |= 0x20u;
        if (v107 >= v14 || *v107 != 56)
        {
          continue;
        }

        v64 = v107 + 1;
        *(a2 + 1) = v64;
LABEL_266:
        if (v64 >= v14 || (v108 = *v64, v108 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v109 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v108;
          v109 = v64 + 1;
          *(a2 + 1) = v109;
        }

        *(this + 132) |= 0x40u;
        if (v109 >= v14 || *v109 != 64)
        {
          continue;
        }

        v53 = v109 + 1;
        *(a2 + 1) = v53;
LABEL_274:
        if (v53 >= v14 || (v110 = *v53, v110 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v111 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v110;
          v111 = v53 + 1;
          *(a2 + 1) = v111;
        }

        *(this + 132) |= 0x80u;
        if (v111 >= v14 || *v111 != 72)
        {
          continue;
        }

        v66 = v111 + 1;
        *(a2 + 1) = v66;
LABEL_282:
        if (v66 >= v14 || (v112 = *v66, v112 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v113 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v112;
          v113 = v66 + 1;
          *(a2 + 1) = v113;
        }

        *(this + 132) |= 0x100u;
        if (v113 >= v14 || *v113 != 80)
        {
          continue;
        }

        v47 = v113 + 1;
        *(a2 + 1) = v47;
LABEL_290:
        if (v47 >= v14 || (v114 = *v47, v114 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v115 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v114;
          v115 = v47 + 1;
          *(a2 + 1) = v115;
        }

        *(this + 132) |= 0x200u;
        if (v115 >= v14 || *v115 != 88)
        {
          continue;
        }

        v65 = v115 + 1;
        *(a2 + 1) = v65;
LABEL_298:
        if (v65 >= v14 || (v116 = *v65, v116 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v117 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v116;
          v117 = v65 + 1;
          *(a2 + 1) = v117;
        }

        *(this + 132) |= 0x400u;
        if (v117 >= v14 || *v117 != 96)
        {
          continue;
        }

        v40 = v117 + 1;
        *(a2 + 1) = v40;
LABEL_306:
        if (v40 >= v14 || (v118 = *v40, v118 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v119 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v118;
          v119 = v40 + 1;
          *(a2 + 1) = v119;
        }

        *(this + 132) |= 0x800u;
        if (v119 >= v14 || *v119 != 104)
        {
          continue;
        }

        v46 = v119 + 1;
        *(a2 + 1) = v46;
LABEL_314:
        if (v46 >= v14 || (v120 = *v46, v120 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v121 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v120;
          v121 = v46 + 1;
          *(a2 + 1) = v121;
        }

        *(this + 132) |= 0x1000u;
        if (v121 >= v14 || *v121 != 112)
        {
          continue;
        }

        v63 = v121 + 1;
        *(a2 + 1) = v63;
LABEL_322:
        if (v63 >= v14 || (v122 = *v63, v122 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v123 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v122;
          v123 = v63 + 1;
          *(a2 + 1) = v123;
        }

        *(this + 132) |= 0x2000u;
        if (v123 >= v14 || *v123 != 120)
        {
          continue;
        }

        v37 = v123 + 1;
        *(a2 + 1) = v37;
LABEL_330:
        if (v37 >= v14 || (v124 = *v37, v124 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v125 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v124;
          v125 = (v37 + 1);
          *(a2 + 1) = v125;
        }

        *(this + 132) |= 0x4000u;
        if (v14 - v125 < 2 || *v125 != 128 || v125[1] != 1)
        {
          continue;
        }

        v50 = (v125 + 2);
        *(a2 + 1) = v50;
LABEL_339:
        if (v50 >= v14 || (v126 = *v50, v126 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v127 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v126;
          v127 = (v50 + 1);
          *(a2 + 1) = v127;
        }

        *(this + 132) |= 0x8000u;
        if (v14 - v127 < 2 || *v127 != 136 || v127[1] != 1)
        {
          continue;
        }

        v34 = (v127 + 2);
        *(a2 + 1) = v34;
LABEL_348:
        if (v34 >= v14 || (v128 = *v34, v128 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v129 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v128;
          v129 = (v34 + 1);
          *(a2 + 1) = v129;
        }

        *(this + 132) |= 0x10000u;
        if (v14 - v129 < 2 || *v129 != 144 || v129[1] != 1)
        {
          continue;
        }

        v56 = (v129 + 2);
        *(a2 + 1) = v56;
LABEL_357:
        if (v56 >= v14 || (v130 = *v56, v130 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
          if (!result)
          {
            return result;
          }

          v131 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 32) = v130;
          v131 = (v56 + 1);
          *(a2 + 1) = v131;
        }

        *(this + 132) |= 0x20000u;
        if (v14 - v131 >= 2 && *v131 == 152 && v131[1] == 1)
        {
          goto LABEL_365;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v49 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_234;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v52 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_242;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v42 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_250;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v60 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_258;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v64 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_266;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v53 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_274;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v66 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_282;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v47 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_290;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v65 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_298;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v40 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_306;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v46 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_314;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v63 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_322;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v37 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_330;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v50 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_339;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v34 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_348;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v56 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_357;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          if (v13 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 80);
            if (!result)
            {
              return result;
            }

            goto LABEL_384;
          }

LABEL_200:
          if (v13 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v88 = *(a2 + 1);
          v14 = *(a2 + 2);
          while (1)
          {
            v430 = 0;
            if (v88 >= v14 || *v88 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
              {
                return 0;
              }
            }

            else
            {
              v430 = *v88;
              *(a2 + 1) = v88 + 1;
            }

            v132 = *(this + 22);
            if (v132 == *(this + 23))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, v132 + 1);
              v132 = *(this + 22);
            }

            v133 = v430;
            v134 = *(this + 10);
            *(this + 22) = v132 + 1;
            *(v134 + 4 * v132) = v133;
            v135 = *(this + 23) - *(this + 22);
            if (v135 >= 1)
            {
              v136 = v135 + 1;
              do
              {
                v137 = *(a2 + 1);
                v138 = *(a2 + 2);
                if (v138 - v137 < 2 || *v137 != 152 || v137[1] != 1)
                {
                  break;
                }

                *(a2 + 1) = v137 + 2;
                if ((v137 + 2) >= v138 || v137[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                  {
                    return 0;
                  }
                }

                else
                {
                  v430 = v137[2];
                  *(a2 + 1) = v137 + 3;
                }

                v139 = *(this + 22);
                if (v139 >= *(this + 23))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v431);
                  v139 = *(this + 22);
                }

                v140 = v430;
                v141 = *(this + 10);
                *(this + 22) = v139 + 1;
                *(v141 + 4 * v139) = v140;
                --v136;
              }

              while (v136 > 1);
            }

LABEL_384:
            v131 = *(a2 + 1);
            v14 = *(a2 + 2);
            if (v14 - v131 < 2)
            {
              goto LABEL_2;
            }

            v142 = *v131;
            if (v142 == 160)
            {
              break;
            }

            if (v142 != 152 || v131[1] != 1)
            {
              goto LABEL_2;
            }

LABEL_365:
            v88 = (v131 + 2);
            *(a2 + 1) = v88;
          }

          if (v131[1] == 1)
          {
            while (1)
            {
              v91 = (v131 + 2);
              *(a2 + 1) = v91;
LABEL_391:
              v430 = 0;
              if (v91 >= v14 || *v91 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                {
                  return 0;
                }
              }

              else
              {
                v430 = *v91;
                *(a2 + 1) = v91 + 1;
              }

              v143 = *(this + 26);
              if (v143 == *(this + 27))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v143 + 1);
                v143 = *(this + 26);
              }

              v144 = v430;
              v145 = *(this + 12);
              *(this + 26) = v143 + 1;
              *(v145 + 4 * v143) = v144;
              v146 = *(this + 27) - *(this + 26);
              if (v146 >= 1)
              {
                v147 = v146 + 1;
                do
                {
                  v148 = *(a2 + 1);
                  v149 = *(a2 + 2);
                  if (v149 - v148 < 2 || *v148 != 160 || v148[1] != 1)
                  {
                    break;
                  }

                  *(a2 + 1) = v148 + 2;
                  if ((v148 + 2) >= v149 || v148[2] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v430 = v148[2];
                    *(a2 + 1) = v148 + 3;
                  }

                  v150 = *(this + 26);
                  if (v150 >= *(this + 27))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v431);
                    v150 = *(this + 26);
                  }

                  v151 = v430;
                  v152 = *(this + 12);
                  *(this + 26) = v150 + 1;
                  *(v152 + 4 * v150) = v151;
                  --v147;
                }

                while (v147 > 1);
              }

LABEL_409:
              v131 = *(a2 + 1);
              v14 = *(a2 + 2);
              if (v14 - v131 < 2)
              {
                goto LABEL_2;
              }

              v153 = *v131;
              if (v153 == 168)
              {
                break;
              }

              if (v153 != 160 || v131[1] != 1)
              {
                goto LABEL_2;
              }
            }

            if (v131[1] == 1)
            {
              while (1)
              {
                v86 = (v131 + 2);
                *(a2 + 1) = v86;
LABEL_416:
                v430 = 0;
                if (v86 >= v14 || *v86 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                  {
                    return 0;
                  }
                }

                else
                {
                  v430 = *v86;
                  *(a2 + 1) = v86 + 1;
                }

                v154 = *(this + 30);
                if (v154 == *(this + 31))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 14, v154 + 1);
                  v154 = *(this + 30);
                }

                v155 = v430;
                v156 = *(this + 14);
                *(this + 30) = v154 + 1;
                *(v156 + 4 * v154) = v155;
                v157 = *(this + 31) - *(this + 30);
                if (v157 >= 1)
                {
                  v158 = v157 + 1;
                  do
                  {
                    v159 = *(a2 + 1);
                    v160 = *(a2 + 2);
                    if (v160 - v159 < 2 || *v159 != 168 || v159[1] != 1)
                    {
                      break;
                    }

                    *(a2 + 1) = v159 + 2;
                    if ((v159 + 2) >= v160 || v159[2] < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v430 = v159[2];
                      *(a2 + 1) = v159 + 3;
                    }

                    v161 = *(this + 30);
                    if (v161 >= *(this + 31))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v431);
                      v161 = *(this + 30);
                    }

                    v162 = v430;
                    v163 = *(this + 14);
                    *(this + 30) = v161 + 1;
                    *(v163 + 4 * v161) = v162;
                    --v158;
                  }

                  while (v158 > 1);
                }

LABEL_434:
                v131 = *(a2 + 1);
                v14 = *(a2 + 2);
                if (v14 - v131 < 2)
                {
                  goto LABEL_2;
                }

                v164 = *v131;
                if (v164 == 176)
                {
                  break;
                }

                if (v164 != 168 || v131[1] != 1)
                {
                  goto LABEL_2;
                }
              }

              if (v131[1] == 1)
              {
                while (1)
                {
                  v87 = (v131 + 2);
                  *(a2 + 1) = v87;
LABEL_441:
                  v430 = 0;
                  if (v87 >= v14 || *v87 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v430 = *v87;
                    *(a2 + 1) = v87 + 1;
                  }

                  v165 = *(this + 36);
                  if (v165 == *(this + 37))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 17, v165 + 1);
                    v165 = *(this + 36);
                  }

                  v166 = v430;
                  v167 = *(this + 17);
                  *(this + 36) = v165 + 1;
                  *(v167 + 4 * v165) = v166;
                  v168 = *(this + 37) - *(this + 36);
                  if (v168 >= 1)
                  {
                    v169 = v168 + 1;
                    do
                    {
                      v170 = *(a2 + 1);
                      v171 = *(a2 + 2);
                      if (v171 - v170 < 2 || *v170 != 176 || v170[1] != 1)
                      {
                        break;
                      }

                      *(a2 + 1) = v170 + 2;
                      if ((v170 + 2) >= v171 || v170[2] < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v430 = v170[2];
                        *(a2 + 1) = v170 + 3;
                      }

                      v172 = *(this + 36);
                      if (v172 >= *(this + 37))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v431);
                        v172 = *(this + 36);
                      }

                      v173 = v430;
                      v174 = *(this + 17);
                      *(this + 36) = v172 + 1;
                      *(v174 + 4 * v172) = v173;
                      --v169;
                    }

                    while (v169 > 1);
                  }

LABEL_459:
                  v131 = *(a2 + 1);
                  v14 = *(a2 + 2);
                  if (v14 - v131 < 2)
                  {
                    goto LABEL_2;
                  }

                  v175 = *v131;
                  if (v175 == 184)
                  {
                    break;
                  }

                  if (v175 != 176 || v131[1] != 1)
                  {
                    goto LABEL_2;
                  }
                }

                if (v131[1] == 1)
                {
                  while (1)
                  {
                    v89 = (v131 + 2);
                    *(a2 + 1) = v89;
LABEL_466:
                    v430 = 0;
                    if (v89 >= v14 || *v89 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v430 = *v89;
                      *(a2 + 1) = v89 + 1;
                    }

                    v176 = *(this + 40);
                    if (v176 == *(this + 41))
                    {
                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 19, v176 + 1);
                      v176 = *(this + 40);
                    }

                    v177 = v430;
                    v178 = *(this + 19);
                    *(this + 40) = v176 + 1;
                    *(v178 + 4 * v176) = v177;
                    v179 = *(this + 41) - *(this + 40);
                    if (v179 >= 1)
                    {
                      v180 = v179 + 1;
                      do
                      {
                        v181 = *(a2 + 1);
                        v182 = *(a2 + 2);
                        if (v182 - v181 < 2 || *v181 != 184 || v181[1] != 1)
                        {
                          break;
                        }

                        *(a2 + 1) = v181 + 2;
                        if ((v181 + 2) >= v182 || v181[2] < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v430 = v181[2];
                          *(a2 + 1) = v181 + 3;
                        }

                        v183 = *(this + 40);
                        if (v183 >= *(this + 41))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v431);
                          v183 = *(this + 40);
                        }

                        v184 = v430;
                        v185 = *(this + 19);
                        *(this + 40) = v183 + 1;
                        *(v185 + 4 * v183) = v184;
                        --v180;
                      }

                      while (v180 > 1);
                    }

LABEL_484:
                    v131 = *(a2 + 1);
                    v14 = *(a2 + 2);
                    if (v14 - v131 < 2)
                    {
                      goto LABEL_2;
                    }

                    v186 = *v131;
                    if (v186 == 192)
                    {
                      break;
                    }

                    if (v186 != 184 || v131[1] != 1)
                    {
                      goto LABEL_2;
                    }
                  }

                  if (v131[1] == 1)
                  {
                    while (1)
                    {
                      v92 = (v131 + 2);
                      *(a2 + 1) = v92;
LABEL_491:
                      v430 = 0;
                      if (v92 >= v14 || *v92 < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v430 = *v92;
                        *(a2 + 1) = v92 + 1;
                      }

                      v187 = *(this + 44);
                      if (v187 == *(this + 45))
                      {
                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 21, v187 + 1);
                        v187 = *(this + 44);
                      }

                      v188 = v430;
                      v189 = *(this + 21);
                      *(this + 44) = v187 + 1;
                      *(v189 + 4 * v187) = v188;
                      v190 = *(this + 45) - *(this + 44);
                      if (v190 >= 1)
                      {
                        v191 = v190 + 1;
                        do
                        {
                          v192 = *(a2 + 1);
                          v193 = *(a2 + 2);
                          if (v193 - v192 < 2 || *v192 != 192 || v192[1] != 1)
                          {
                            break;
                          }

                          *(a2 + 1) = v192 + 2;
                          if ((v192 + 2) >= v193 || v192[2] < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v430 = v192[2];
                            *(a2 + 1) = v192 + 3;
                          }

                          v194 = *(this + 44);
                          if (v194 >= *(this + 45))
                          {
                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v431);
                            v194 = *(this + 44);
                          }

                          v195 = v430;
                          v196 = *(this + 21);
                          *(this + 44) = v194 + 1;
                          *(v196 + 4 * v194) = v195;
                          --v191;
                        }

                        while (v191 > 1);
                      }

LABEL_509:
                      v131 = *(a2 + 1);
                      v14 = *(a2 + 2);
                      if (v14 - v131 < 2)
                      {
                        goto LABEL_2;
                      }

                      v197 = *v131;
                      if (v197 == 200)
                      {
                        break;
                      }

                      if (v197 != 192 || v131[1] != 1)
                      {
                        goto LABEL_2;
                      }
                    }

                    if (v131[1] == 1)
                    {
                      while (1)
                      {
                        v85 = (v131 + 2);
                        *(a2 + 1) = v85;
LABEL_516:
                        v430 = 0;
                        if (v85 >= v14 || *v85 < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v430 = *v85;
                          *(a2 + 1) = v85 + 1;
                        }

                        v198 = *(this + 48);
                        if (v198 == *(this + 49))
                        {
                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 23, v198 + 1);
                          v198 = *(this + 48);
                        }

                        v199 = v430;
                        v200 = *(this + 23);
                        *(this + 48) = v198 + 1;
                        *(v200 + 4 * v198) = v199;
                        v201 = *(this + 49) - *(this + 48);
                        if (v201 >= 1)
                        {
                          v202 = v201 + 1;
                          do
                          {
                            v203 = *(a2 + 1);
                            v204 = *(a2 + 2);
                            if (v204 - v203 < 2 || *v203 != 200 || v203[1] != 1)
                            {
                              break;
                            }

                            *(a2 + 1) = v203 + 2;
                            if ((v203 + 2) >= v204 || v203[2] < 0)
                            {
                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              v430 = v203[2];
                              *(a2 + 1) = v203 + 3;
                            }

                            v205 = *(this + 48);
                            if (v205 >= *(this + 49))
                            {
                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v431);
                              v205 = *(this + 48);
                            }

                            v206 = v430;
                            v207 = *(this + 23);
                            *(this + 48) = v205 + 1;
                            *(v207 + 4 * v205) = v206;
                            --v202;
                          }

                          while (v202 > 1);
                        }

LABEL_534:
                        v131 = *(a2 + 1);
                        v14 = *(a2 + 2);
                        if (v14 - v131 < 2)
                        {
                          goto LABEL_2;
                        }

                        v208 = *v131;
                        if (v208 == 208)
                        {
                          break;
                        }

                        if (v208 != 200 || v131[1] != 1)
                        {
                          goto LABEL_2;
                        }
                      }

                      if (v131[1] == 1)
                      {
                        v48 = (v131 + 2);
                        *(a2 + 1) = v48;
LABEL_541:
                        if (v48 >= v14 || (v209 = *v48, v209 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 33);
                          if (!result)
                          {
                            return result;
                          }

                          v210 = *(a2 + 1);
                          v14 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 33) = v209;
                          v210 = (v48 + 1);
                          *(a2 + 1) = v210;
                        }

                        *(this + 132) |= 0x2000000u;
                        if (v14 - v210 >= 2 && *v210 == 216 && v210[1] == 1)
                        {
                          v74 = (v210 + 2);
                          *(a2 + 1) = v74;
LABEL_550:
                          if (v74 >= v14 || (v211 = *v74, (v211 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v426);
                            if (!result)
                            {
                              return result;
                            }

                            v212 = *(a2 + 1);
                            v14 = *(a2 + 2);
                          }

                          else
                          {
                            *v426 = v211;
                            v212 = (v74 + 1);
                            *(a2 + 1) = v212;
                          }

                          *(this + 134) |= 0x4000u;
                          if (v14 - v212 >= 2 && *v212 == 224 && v212[1] == 1)
                          {
                            while (1)
                            {
                              v83 = (v212 + 2);
                              *(a2 + 1) = v83;
LABEL_559:
                              v430 = 0;
                              if (v83 >= v14 || *v83 < 0)
                              {
                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                                {
                                  return 0;
                                }
                              }

                              else
                              {
                                v430 = *v83;
                                *(a2 + 1) = v83 + 1;
                              }

                              v213 = *(this + 128);
                              if (v213 == *(this + 129))
                              {
                                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 63, v213 + 1);
                                v213 = *(this + 128);
                              }

                              v214 = v430;
                              v215 = *(this + 63);
                              *(this + 128) = v213 + 1;
                              *(v215 + 4 * v213) = v214;
                              v216 = *(this + 129) - *(this + 128);
                              if (v216 >= 1)
                              {
                                v217 = v216 + 1;
                                do
                                {
                                  v218 = *(a2 + 1);
                                  v219 = *(a2 + 2);
                                  if (v219 - v218 < 2 || *v218 != 224 || v218[1] != 1)
                                  {
                                    break;
                                  }

                                  *(a2 + 1) = v218 + 2;
                                  if ((v218 + 2) >= v219 || v218[2] < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v430 = v218[2];
                                    *(a2 + 1) = v218 + 3;
                                  }

                                  v220 = *(this + 128);
                                  if (v220 >= *(this + 129))
                                  {
                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v431);
                                    v220 = *(this + 128);
                                  }

                                  v221 = v430;
                                  v222 = *(this + 63);
                                  *(this + 128) = v220 + 1;
                                  *(v222 + 4 * v220) = v221;
                                  --v217;
                                }

                                while (v217 > 1);
                              }

LABEL_577:
                              v212 = *(a2 + 1);
                              v14 = *(a2 + 2);
                              if (v14 - v212 < 2)
                              {
                                goto LABEL_2;
                              }

                              v223 = *v212;
                              if (v223 == 232)
                              {
                                break;
                              }

                              if (v223 != 224 || v212[1] != 1)
                              {
                                goto LABEL_2;
                              }
                            }

                            if (v212[1] == 1)
                            {
                              while (1)
                              {
                                v93 = (v212 + 2);
                                *(a2 + 1) = v93;
LABEL_584:
                                v430 = 0;
                                if (v93 >= v14 || *v93 < 0)
                                {
                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                                  {
                                    return 0;
                                  }
                                }

                                else
                                {
                                  v430 = *v93;
                                  *(a2 + 1) = v93 + 1;
                                }

                                v224 = *(this + 52);
                                if (v224 == *(this + 53))
                                {
                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 25, v224 + 1);
                                  v224 = *(this + 52);
                                }

                                v225 = v430;
                                v226 = *(this + 25);
                                *(this + 52) = v224 + 1;
                                *(v226 + 4 * v224) = v225;
                                v227 = *(this + 53) - *(this + 52);
                                if (v227 >= 1)
                                {
                                  v228 = v227 + 1;
                                  do
                                  {
                                    v229 = *(a2 + 1);
                                    v230 = *(a2 + 2);
                                    if (v230 - v229 < 2 || *v229 != 232 || v229[1] != 1)
                                    {
                                      break;
                                    }

                                    *(a2 + 1) = v229 + 2;
                                    if ((v229 + 2) >= v230 || v229[2] < 0)
                                    {
                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                                      {
                                        return 0;
                                      }
                                    }

                                    else
                                    {
                                      v430 = v229[2];
                                      *(a2 + 1) = v229 + 3;
                                    }

                                    v231 = *(this + 52);
                                    if (v231 >= *(this + 53))
                                    {
                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v431);
                                      v231 = *(this + 52);
                                    }

                                    v232 = v430;
                                    v233 = *(this + 25);
                                    *(this + 52) = v231 + 1;
                                    *(v233 + 4 * v231) = v232;
                                    --v228;
                                  }

                                  while (v228 > 1);
                                }

LABEL_602:
                                v212 = *(a2 + 1);
                                v14 = *(a2 + 2);
                                if (v14 - v212 < 2)
                                {
                                  goto LABEL_2;
                                }

                                v234 = *v212;
                                if (v234 == 240)
                                {
                                  break;
                                }

                                if (v234 != 232 || v212[1] != 1)
                                {
                                  goto LABEL_2;
                                }
                              }

                              if (v212[1] == 1)
                              {
                                while (1)
                                {
                                  v94 = (v212 + 2);
                                  *(a2 + 1) = v94;
LABEL_609:
                                  v430 = 0;
                                  if (v94 >= v14 || *v94 < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v430 = *v94;
                                    *(a2 + 1) = v94 + 1;
                                  }

                                  v235 = *(this + 56);
                                  if (v235 == *(this + 57))
                                  {
                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 27, v235 + 1);
                                    v235 = *(this + 56);
                                  }

                                  v236 = v430;
                                  v237 = *(this + 27);
                                  *(this + 56) = v235 + 1;
                                  *(v237 + 4 * v235) = v236;
                                  v238 = *(this + 57) - *(this + 56);
                                  if (v238 >= 1)
                                  {
                                    v239 = v238 + 1;
                                    do
                                    {
                                      v240 = *(a2 + 1);
                                      v241 = *(a2 + 2);
                                      if (v241 - v240 < 2 || *v240 != 240 || v240[1] != 1)
                                      {
                                        break;
                                      }

                                      *(a2 + 1) = v240 + 2;
                                      if ((v240 + 2) >= v241 || v240[2] < 0)
                                      {
                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                                        {
                                          return 0;
                                        }
                                      }

                                      else
                                      {
                                        v430 = v240[2];
                                        *(a2 + 1) = v240 + 3;
                                      }

                                      v242 = *(this + 56);
                                      if (v242 >= *(this + 57))
                                      {
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v431);
                                        v242 = *(this + 56);
                                      }

                                      v243 = v430;
                                      v244 = *(this + 27);
                                      *(this + 56) = v242 + 1;
                                      *(v244 + 4 * v242) = v243;
                                      --v239;
                                    }

                                    while (v239 > 1);
                                  }

LABEL_627:
                                  v212 = *(a2 + 1);
                                  v14 = *(a2 + 2);
                                  if (v14 - v212 < 2)
                                  {
                                    goto LABEL_2;
                                  }

                                  v245 = *v212;
                                  if (v245 == 248)
                                  {
                                    break;
                                  }

                                  if (v245 != 240 || v212[1] != 1)
                                  {
                                    goto LABEL_2;
                                  }
                                }

                                if (v212[1] == 1)
                                {
                                  v67 = (v212 + 2);
                                  *(a2 + 1) = v67;
LABEL_634:
                                  if (v67 >= v14 || (v246 = *v67, v246 < 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 58);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v247 = *(a2 + 1);
                                    v14 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    *(this + 58) = v246;
                                    v247 = (v67 + 1);
                                    *(a2 + 1) = v247;
                                  }

                                  *(this + 132) |= 0x10000000u;
                                  if (v14 - v247 >= 2 && *v247 == 128 && v247[1] == 2)
                                  {
                                    v55 = (v247 + 2);
                                    *(a2 + 1) = v55;
LABEL_643:
                                    if (v55 >= v14 || (v248 = *v55, v248 < 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 59);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v249 = *(a2 + 1);
                                      v14 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *(this + 59) = v248;
                                      v249 = (v55 + 1);
                                      *(a2 + 1) = v249;
                                    }

                                    *(this + 132) |= 0x20000000u;
                                    if (v14 - v249 >= 2 && *v249 == 136 && v249[1] == 2)
                                    {
                                      v68 = (v249 + 2);
                                      *(a2 + 1) = v68;
LABEL_652:
                                      if (v68 >= v14 || (v250 = *v68, v250 < 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 60);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v251 = *(a2 + 1);
                                        v14 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *(this + 60) = v250;
                                        v251 = (v68 + 1);
                                        *(a2 + 1) = v251;
                                      }

                                      *(this + 132) |= 0x40000000u;
                                      if (v14 - v251 >= 2 && *v251 == 144 && v251[1] == 2)
                                      {
                                        v38 = (v251 + 2);
                                        *(a2 + 1) = v38;
LABEL_661:
                                        if (v38 >= v14 || (v252 = *v38, v252 < 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 61);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v253 = *(a2 + 1);
                                          v14 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          *(this + 61) = v252;
                                          v253 = (v38 + 1);
                                          *(a2 + 1) = v253;
                                        }

                                        *(this + 132) |= 0x80000000;
                                        if (v14 - v253 >= 2 && *v253 == 152 && v253[1] == 2)
                                        {
                                          v33 = (v253 + 2);
                                          *(a2 + 1) = v33;
LABEL_670:
                                          if (v33 >= v14 || (v254 = *v33, v254 < 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 62);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v255 = *(a2 + 1);
                                            v14 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            *(this + 62) = v254;
                                            v255 = (v33 + 1);
                                            *(a2 + 1) = v255;
                                          }

                                          *(this + 133) |= 1u;
                                          if (v14 - v255 >= 2 && *v255 == 160 && v255[1] == 2)
                                          {
                                            v30 = (v255 + 2);
                                            *(a2 + 1) = v30;
LABEL_679:
                                            if (v30 >= v14 || (v256 = *v30, v256 < 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 63);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v257 = *(a2 + 1);
                                              v14 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              *(this + 63) = v256;
                                              v257 = (v30 + 1);
                                              *(a2 + 1) = v257;
                                            }

                                            *(this + 133) |= 2u;
                                            if (v14 - v257 >= 2 && *v257 == 168 && v257[1] == 2)
                                            {
                                              v31 = (v257 + 2);
                                              *(a2 + 1) = v31;
LABEL_688:
                                              if (v31 >= v14 || (v258 = *v31, (v258 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v412);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v259 = *(a2 + 1);
                                                v14 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                *v412 = v258;
                                                v259 = (v31 + 1);
                                                *(a2 + 1) = v259;
                                              }

                                              *(this + 133) |= 4u;
                                              if (v14 - v259 >= 2 && *v259 == 176 && v259[1] == 2)
                                              {
                                                v25 = (v259 + 2);
                                                *(a2 + 1) = v25;
LABEL_697:
                                                if (v25 >= v14 || (v260 = *v25, (v260 & 0x80000000) != 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v410);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v261 = *(a2 + 1);
                                                  v14 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *v410 = v260;
                                                  v261 = (v25 + 1);
                                                  *(a2 + 1) = v261;
                                                }

                                                *(this + 133) |= 8u;
                                                if (v14 - v261 >= 2 && *v261 == 184 && v261[1] == 2)
                                                {
                                                  v73 = (v261 + 2);
                                                  *(a2 + 1) = v73;
LABEL_706:
                                                  if (v73 >= v14 || (v262 = *v73, (v262 & 0x80000000) != 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v408);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v263 = *(a2 + 1);
                                                    v14 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    *v408 = v262;
                                                    v263 = (v73 + 1);
                                                    *(a2 + 1) = v263;
                                                  }

                                                  *(this + 133) |= 0x10u;
                                                  if (v14 - v263 >= 2 && *v263 == 192 && v263[1] == 2)
                                                  {
                                                    while (1)
                                                    {
                                                      v90 = (v263 + 2);
                                                      *(a2 + 1) = v90;
LABEL_715:
                                                      v430 = 0;
                                                      if (v90 >= v14 || *v90 < 0)
                                                      {
                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                                                        {
                                                          return 0;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v430 = *v90;
                                                        *(a2 + 1) = v90 + 1;
                                                      }

                                                      v264 = *(this + 70);
                                                      if (v264 == *(this + 71))
                                                      {
                                                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 34, v264 + 1);
                                                        v264 = *(this + 70);
                                                      }

                                                      v265 = v430;
                                                      v266 = *(this + 34);
                                                      *(this + 70) = v264 + 1;
                                                      *(v266 + 4 * v264) = v265;
                                                      v267 = *(this + 71) - *(this + 70);
                                                      if (v267 >= 1)
                                                      {
                                                        v268 = v267 + 1;
                                                        do
                                                        {
                                                          v269 = *(a2 + 1);
                                                          v270 = *(a2 + 2);
                                                          if (v270 - v269 < 2 || *v269 != 192 || v269[1] != 2)
                                                          {
                                                            break;
                                                          }

                                                          *(a2 + 1) = v269 + 2;
                                                          if ((v269 + 2) >= v270 || v269[2] < 0)
                                                          {
                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                                                            {
                                                              return 0;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v430 = v269[2];
                                                            *(a2 + 1) = v269 + 3;
                                                          }

                                                          v271 = *(this + 70);
                                                          if (v271 >= *(this + 71))
                                                          {
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v431);
                                                            v271 = *(this + 70);
                                                          }

                                                          v272 = v430;
                                                          v273 = *(this + 34);
                                                          *(this + 70) = v271 + 1;
                                                          *(v273 + 4 * v271) = v272;
                                                          --v268;
                                                        }

                                                        while (v268 > 1);
                                                      }

LABEL_733:
                                                      v263 = *(a2 + 1);
                                                      v14 = *(a2 + 2);
                                                      if (v14 - v263 < 2)
                                                      {
                                                        goto LABEL_2;
                                                      }

                                                      v274 = *v263;
                                                      if (v274 == 200)
                                                      {
                                                        break;
                                                      }

                                                      if (v274 != 192 || v263[1] != 2)
                                                      {
                                                        goto LABEL_2;
                                                      }
                                                    }

                                                    if (v263[1] == 2)
                                                    {
                                                      v43 = (v263 + 2);
                                                      *(a2 + 1) = v43;
LABEL_740:
                                                      if (v43 >= v14 || (v275 = *v43, (v275 & 0x80000000) != 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v428);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v276 = *(a2 + 1);
                                                        v14 = *(a2 + 2);
                                                      }

                                                      else
                                                      {
                                                        *v428 = v275;
                                                        v276 = (v43 + 1);
                                                        *(a2 + 1) = v276;
                                                      }

                                                      *(this + 133) |= 0x40u;
                                                      if (v14 - v276 >= 2 && *v276 == 208 && v276[1] == 2)
                                                      {
                                                        v57 = (v276 + 2);
                                                        *(a2 + 1) = v57;
LABEL_749:
                                                        if (v57 >= v14 || (v277 = *v57, (v277 & 0x80000000) != 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v424);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v278 = *(a2 + 1);
                                                          v14 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          *v424 = v277;
                                                          v278 = (v57 + 1);
                                                          *(a2 + 1) = v278;
                                                        }

                                                        *(this + 133) |= 0x80u;
                                                        if (v14 - v278 >= 2 && *v278 == 216 && v278[1] == 2)
                                                        {
                                                          v71 = (v278 + 2);
                                                          *(a2 + 1) = v71;
LABEL_758:
                                                          if (v71 >= v14 || (v279 = *v71, (v279 & 0x80000000) != 0))
                                                          {
                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v420);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v280 = *(a2 + 1);
                                                            v14 = *(a2 + 2);
                                                          }

                                                          else
                                                          {
                                                            *v420 = v279;
                                                            v280 = (v71 + 1);
                                                            *(a2 + 1) = v280;
                                                          }

                                                          *(this + 133) |= 0x100u;
                                                          if (v14 - v280 >= 2 && *v280 == 224 && v280[1] == 2)
                                                          {
                                                            v22 = (v280 + 2);
                                                            *(a2 + 1) = v22;
LABEL_767:
                                                            if (v22 >= v14 || (v281 = *v22, (v281 & 0x80000000) != 0))
                                                            {
                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v417);
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v282 = *(a2 + 1);
                                                              v14 = *(a2 + 2);
                                                            }

                                                            else
                                                            {
                                                              *v417 = v281;
                                                              v282 = (v22 + 1);
                                                              *(a2 + 1) = v282;
                                                            }

                                                            *(this + 133) |= 0x200u;
                                                            if (v14 - v282 >= 2 && *v282 == 232 && v282[1] == 2)
                                                            {
                                                              v36 = (v282 + 2);
                                                              *(a2 + 1) = v36;
LABEL_776:
                                                              if (v36 >= v14 || (v283 = *v36, (v283 & 0x80000000) != 0))
                                                              {
                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v415);
                                                                if (!result)
                                                                {
                                                                  return result;
                                                                }

                                                                v284 = *(a2 + 1);
                                                                v14 = *(a2 + 2);
                                                              }

                                                              else
                                                              {
                                                                *v415 = v283;
                                                                v284 = (v36 + 1);
                                                                *(a2 + 1) = v284;
                                                              }

                                                              *(this + 133) |= 0x400u;
                                                              if (v14 - v284 >= 2 && *v284 == 240 && v284[1] == 2)
                                                              {
                                                                v69 = (v284 + 2);
                                                                *(a2 + 1) = v69;
LABEL_785:
                                                                if (v69 >= v14 || (v285 = *v69, (v285 & 0x80000000) != 0))
                                                                {
                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v413);
                                                                  if (!result)
                                                                  {
                                                                    return result;
                                                                  }

                                                                  v286 = *(a2 + 1);
                                                                  v14 = *(a2 + 2);
                                                                }

                                                                else
                                                                {
                                                                  *v413 = v285;
                                                                  v286 = (v69 + 1);
                                                                  *(a2 + 1) = v286;
                                                                }

                                                                *(this + 133) |= 0x800u;
                                                                if (v14 - v286 >= 2 && *v286 == 248 && v286[1] == 2)
                                                                {
                                                                  v79 = (v286 + 2);
                                                                  *(a2 + 1) = v79;
LABEL_794:
                                                                  if (v79 >= v14 || (v287 = *v79, (v287 & 0x80000000) != 0))
                                                                  {
                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v411);
                                                                    if (!result)
                                                                    {
                                                                      return result;
                                                                    }

                                                                    v288 = *(a2 + 1);
                                                                    v14 = *(a2 + 2);
                                                                  }

                                                                  else
                                                                  {
                                                                    *v411 = v287;
                                                                    v288 = (v79 + 1);
                                                                    *(a2 + 1) = v288;
                                                                  }

                                                                  *(this + 133) |= 0x1000u;
                                                                  if (v14 - v288 >= 2 && *v288 == 128 && v288[1] == 3)
                                                                  {
                                                                    v27 = (v288 + 2);
                                                                    *(a2 + 1) = v27;
LABEL_803:
                                                                    if (v27 >= v14 || (v289 = *v27, (v289 & 0x80000000) != 0))
                                                                    {
                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v409);
                                                                      if (!result)
                                                                      {
                                                                        return result;
                                                                      }

                                                                      v290 = *(a2 + 1);
                                                                      v14 = *(a2 + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      *v409 = v289;
                                                                      v290 = (v27 + 1);
                                                                      *(a2 + 1) = v290;
                                                                    }

                                                                    *(this + 133) |= 0x2000u;
                                                                    if (v14 - v290 >= 2 && *v290 == 136 && v290[1] == 3)
                                                                    {
                                                                      while (1)
                                                                      {
                                                                        v84 = (v290 + 2);
                                                                        *(a2 + 1) = v84;
LABEL_812:
                                                                        v430 = 0;
                                                                        if (v84 >= v14 || *v84 < 0)
                                                                        {
                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                                                                          {
                                                                            return 0;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v430 = *v84;
                                                                          *(a2 + 1) = v84 + 1;
                                                                        }

                                                                        v291 = *(this + 82);
                                                                        if (v291 == *(this + 83))
                                                                        {
                                                                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 40, v291 + 1);
                                                                          v291 = *(this + 82);
                                                                        }

                                                                        v292 = v430;
                                                                        v293 = *(this + 40);
                                                                        *(this + 82) = v291 + 1;
                                                                        *(v293 + 4 * v291) = v292;
                                                                        v294 = *(this + 83) - *(this + 82);
                                                                        if (v294 >= 1)
                                                                        {
                                                                          v295 = v294 + 1;
                                                                          do
                                                                          {
                                                                            v296 = *(a2 + 1);
                                                                            v297 = *(a2 + 2);
                                                                            if (v297 - v296 < 2 || *v296 != 136 || v296[1] != 3)
                                                                            {
                                                                              break;
                                                                            }

                                                                            *(a2 + 1) = v296 + 2;
                                                                            if ((v296 + 2) >= v297 || v296[2] < 0)
                                                                            {
                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                                                                              {
                                                                                return 0;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v430 = v296[2];
                                                                              *(a2 + 1) = v296 + 3;
                                                                            }

                                                                            v298 = *(this + 82);
                                                                            if (v298 >= *(this + 83))
                                                                            {
                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v431);
                                                                              v298 = *(this + 82);
                                                                            }

                                                                            v299 = v430;
                                                                            v300 = *(this + 40);
                                                                            *(this + 82) = v298 + 1;
                                                                            *(v300 + 4 * v298) = v299;
                                                                            --v295;
                                                                          }

                                                                          while (v295 > 1);
                                                                        }

LABEL_830:
                                                                        v290 = *(a2 + 1);
                                                                        v14 = *(a2 + 2);
                                                                        if (v14 - v290 < 2)
                                                                        {
                                                                          goto LABEL_2;
                                                                        }

                                                                        v301 = *v290;
                                                                        if (v301 == 144)
                                                                        {
                                                                          break;
                                                                        }

                                                                        if (v301 != 136 || v290[1] != 3)
                                                                        {
                                                                          goto LABEL_2;
                                                                        }
                                                                      }

                                                                      if (v290[1] == 3)
                                                                      {
                                                                        v41 = (v290 + 2);
                                                                        *(a2 + 1) = v41;
LABEL_837:
                                                                        if (v41 >= v14 || (v302 = *v41, (v302 & 0x80000000) != 0))
                                                                        {
                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v427);
                                                                          if (!result)
                                                                          {
                                                                            return result;
                                                                          }

                                                                          v303 = *(a2 + 1);
                                                                          v14 = *(a2 + 2);
                                                                        }

                                                                        else
                                                                        {
                                                                          *v427 = v302;
                                                                          v303 = (v41 + 1);
                                                                          *(a2 + 1) = v303;
                                                                        }

                                                                        *(this + 133) |= 0x8000u;
                                                                        if (v14 - v303 >= 2 && *v303 == 152 && v303[1] == 3)
                                                                        {
                                                                          v21 = (v303 + 2);
                                                                          *(a2 + 1) = v21;
LABEL_846:
                                                                          if (v21 >= v14 || (v304 = *v21, (v304 & 0x80000000) != 0))
                                                                          {
                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v423);
                                                                            if (!result)
                                                                            {
                                                                              return result;
                                                                            }

                                                                            v305 = *(a2 + 1);
                                                                            v14 = *(a2 + 2);
                                                                          }

                                                                          else
                                                                          {
                                                                            *v423 = v304;
                                                                            v305 = (v21 + 1);
                                                                            *(a2 + 1) = v305;
                                                                          }

                                                                          *(this + 133) |= 0x10000u;
                                                                          if (v14 - v305 >= 2 && *v305 == 160 && v305[1] == 3)
                                                                          {
                                                                            while (1)
                                                                            {
                                                                              v95 = (v305 + 2);
                                                                              *(a2 + 1) = v95;
LABEL_855:
                                                                              v430 = 0;
                                                                              if (v95 >= v14 || *v95 < 0)
                                                                              {
                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                                                                                {
                                                                                  return 0;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v430 = *v95;
                                                                                *(a2 + 1) = v95 + 1;
                                                                              }

                                                                              v306 = *(this + 86);
                                                                              if (v306 == *(this + 87))
                                                                              {
                                                                                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 42, v306 + 1);
                                                                                v306 = *(this + 86);
                                                                              }

                                                                              v307 = v430;
                                                                              v308 = *(this + 42);
                                                                              *(this + 86) = v306 + 1;
                                                                              *(v308 + 4 * v306) = v307;
                                                                              v309 = *(this + 87) - *(this + 86);
                                                                              if (v309 >= 1)
                                                                              {
                                                                                v310 = v309 + 1;
                                                                                do
                                                                                {
                                                                                  v311 = *(a2 + 1);
                                                                                  v312 = *(a2 + 2);
                                                                                  if (v312 - v311 < 2 || *v311 != 160 || v311[1] != 3)
                                                                                  {
                                                                                    break;
                                                                                  }

                                                                                  *(a2 + 1) = v311 + 2;
                                                                                  if ((v311 + 2) >= v312 || v311[2] < 0)
                                                                                  {
                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                                                                                    {
                                                                                      return 0;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v430 = v311[2];
                                                                                    *(a2 + 1) = v311 + 3;
                                                                                  }

                                                                                  v313 = *(this + 86);
                                                                                  if (v313 >= *(this + 87))
                                                                                  {
                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v431);
                                                                                    v313 = *(this + 86);
                                                                                  }

                                                                                  v314 = v430;
                                                                                  v315 = *(this + 42);
                                                                                  *(this + 86) = v313 + 1;
                                                                                  *(v315 + 4 * v313) = v314;
                                                                                  --v310;
                                                                                }

                                                                                while (v310 > 1);
                                                                              }

LABEL_873:
                                                                              v305 = *(a2 + 1);
                                                                              v14 = *(a2 + 2);
                                                                              if (v14 - v305 < 2)
                                                                              {
                                                                                goto LABEL_2;
                                                                              }

                                                                              v316 = *v305;
                                                                              if (v316 == 168)
                                                                              {
                                                                                break;
                                                                              }

                                                                              if (v316 != 160 || v305[1] != 3)
                                                                              {
                                                                                goto LABEL_2;
                                                                              }
                                                                            }

                                                                            if (v305[1] == 3)
                                                                            {
                                                                              v78 = (v305 + 2);
                                                                              *(a2 + 1) = v78;
LABEL_880:
                                                                              if (v78 >= v14 || (v317 = *v78, (v317 & 0x80000000) != 0))
                                                                              {
                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v429);
                                                                                if (!result)
                                                                                {
                                                                                  return result;
                                                                                }

                                                                                v318 = *(a2 + 1);
                                                                                v14 = *(a2 + 2);
                                                                              }

                                                                              else
                                                                              {
                                                                                *v429 = v317;
                                                                                v318 = (v78 + 1);
                                                                                *(a2 + 1) = v318;
                                                                              }

                                                                              *(this + 133) |= 0x40000u;
                                                                              if (v14 - v318 >= 2 && *v318 == 176 && v318[1] == 3)
                                                                              {
                                                                                v26 = (v318 + 2);
                                                                                *(a2 + 1) = v26;
LABEL_889:
                                                                                if (v26 >= v14 || (v319 = *v26, (v319 & 0x80000000) != 0))
                                                                                {
                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v425);
                                                                                  if (!result)
                                                                                  {
                                                                                    return result;
                                                                                  }

                                                                                  v320 = *(a2 + 1);
                                                                                  v14 = *(a2 + 2);
                                                                                }

                                                                                else
                                                                                {
                                                                                  *v425 = v319;
                                                                                  v320 = (v26 + 1);
                                                                                  *(a2 + 1) = v320;
                                                                                }

                                                                                *(this + 133) |= 0x80000u;
                                                                                if (v14 - v320 >= 2 && *v320 == 184 && v320[1] == 3)
                                                                                {
                                                                                  v75 = (v320 + 2);
                                                                                  *(a2 + 1) = v75;
LABEL_898:
                                                                                  if (v75 >= v14 || (v321 = *v75, (v321 & 0x80000000) != 0))
                                                                                  {
                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v421);
                                                                                    if (!result)
                                                                                    {
                                                                                      return result;
                                                                                    }

                                                                                    v322 = *(a2 + 1);
                                                                                    v14 = *(a2 + 2);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    *v421 = v321;
                                                                                    v322 = (v75 + 1);
                                                                                    *(a2 + 1) = v322;
                                                                                  }

                                                                                  *(this + 133) |= 0x100000u;
                                                                                  if (v14 - v322 >= 2 && *v322 == 192 && v322[1] == 3)
                                                                                  {
                                                                                    v77 = (v322 + 2);
                                                                                    *(a2 + 1) = v77;
LABEL_907:
                                                                                    if (v77 >= v14 || (v323 = *v77, (v323 & 0x80000000) != 0))
                                                                                    {
                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v418);
                                                                                      if (!result)
                                                                                      {
                                                                                        return result;
                                                                                      }

                                                                                      v324 = *(a2 + 1);
                                                                                      v14 = *(a2 + 2);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      *v418 = v323;
                                                                                      v324 = (v77 + 1);
                                                                                      *(a2 + 1) = v324;
                                                                                    }

                                                                                    *(this + 133) |= 0x200000u;
                                                                                    if (v14 - v324 >= 2 && *v324 == 200 && v324[1] == 3)
                                                                                    {
                                                                                      v28 = (v324 + 2);
                                                                                      *(a2 + 1) = v28;
LABEL_916:
                                                                                      if (v28 >= v14 || (v325 = *v28, (v325 & 0x80000000) != 0))
                                                                                      {
                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v416);
                                                                                        if (!result)
                                                                                        {
                                                                                          return result;
                                                                                        }

                                                                                        v326 = *(a2 + 1);
                                                                                        v14 = *(a2 + 2);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        *v416 = v325;
                                                                                        v326 = (v28 + 1);
                                                                                        *(a2 + 1) = v326;
                                                                                      }

                                                                                      *(this + 133) |= 0x400000u;
                                                                                      if (v14 - v326 >= 2 && *v326 == 208 && v326[1] == 3)
                                                                                      {
                                                                                        v70 = (v326 + 2);
                                                                                        *(a2 + 1) = v70;
LABEL_925:
                                                                                        if (v70 >= v14 || (v327 = *v70, (v327 & 0x80000000) != 0))
                                                                                        {
                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v414);
                                                                                          if (!result)
                                                                                          {
                                                                                            return result;
                                                                                          }

                                                                                          v328 = *(a2 + 1);
                                                                                          v14 = *(a2 + 2);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          *v414 = v327;
                                                                                          v328 = (v70 + 1);
                                                                                          *(a2 + 1) = v328;
                                                                                        }

                                                                                        *(this + 133) |= 0x800000u;
                                                                                        if (v14 - v328 >= 2 && *v328 == 216 && v328[1] == 3)
                                                                                        {
                                                                                          v39 = (v328 + 2);
                                                                                          *(a2 + 1) = v39;
LABEL_934:
                                                                                          v431[0] = 0;
                                                                                          if (v39 >= v14 || (v329 = *v39, (v329 & 0x80000000) != 0))
                                                                                          {
                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v431);
                                                                                            if (!result)
                                                                                            {
                                                                                              return result;
                                                                                            }

                                                                                            v329 = v431[0];
                                                                                            v330 = *(a2 + 1);
                                                                                            v14 = *(a2 + 2);
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v330 = (v39 + 1);
                                                                                            *(a2 + 1) = v330;
                                                                                          }

                                                                                          *(this + 95) = v329;
                                                                                          *(this + 133) |= 0x1000000u;
                                                                                          if (v14 - v330 >= 2 && *v330 == 224 && v330[1] == 3)
                                                                                          {
                                                                                            v72 = (v330 + 2);
                                                                                            *(a2 + 1) = v72;
LABEL_943:
                                                                                            v431[0] = 0;
                                                                                            if (v72 >= v14 || (v331 = *v72, (v331 & 0x80000000) != 0))
                                                                                            {
                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v431);
                                                                                              if (!result)
                                                                                              {
                                                                                                return result;
                                                                                              }

                                                                                              v331 = v431[0];
                                                                                              v332 = *(a2 + 1);
                                                                                              v14 = *(a2 + 2);
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v332 = (v72 + 1);
                                                                                              *(a2 + 1) = v332;
                                                                                            }

                                                                                            *(this + 96) = v331;
                                                                                            *(this + 133) |= 0x2000000u;
                                                                                            if (v14 - v332 >= 2 && *v332 == 232 && v332[1] == 3)
                                                                                            {
                                                                                              v44 = (v332 + 2);
                                                                                              *(a2 + 1) = v44;
LABEL_952:
                                                                                              if (v44 >= v14 || (v333 = *v44, (v333 & 0x80000000) != 0))
                                                                                              {
                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v407);
                                                                                                if (!result)
                                                                                                {
                                                                                                  return result;
                                                                                                }

                                                                                                v334 = *(a2 + 1);
                                                                                                v14 = *(a2 + 2);
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                *v407 = v333;
                                                                                                v334 = (v44 + 1);
                                                                                                *(a2 + 1) = v334;
                                                                                              }

                                                                                              *(this + 133) |= 0x4000000u;
                                                                                              if (v14 - v334 >= 2 && *v334 == 240 && v334[1] == 3)
                                                                                              {
                                                                                                v59 = (v334 + 2);
                                                                                                *(a2 + 1) = v59;
LABEL_961:
                                                                                                if (v59 >= v14 || (v335 = *v59, (v335 & 0x80000000) != 0))
                                                                                                {
                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v406);
                                                                                                  if (!result)
                                                                                                  {
                                                                                                    return result;
                                                                                                  }

                                                                                                  v336 = *(a2 + 1);
                                                                                                  v14 = *(a2 + 2);
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  *v406 = v335;
                                                                                                  v336 = (v59 + 1);
                                                                                                  *(a2 + 1) = v336;
                                                                                                }

                                                                                                *(this + 133) |= 0x8000000u;
                                                                                                if (v14 - v336 >= 2 && *v336 == 248 && v336[1] == 3)
                                                                                                {
                                                                                                  v62 = (v336 + 2);
                                                                                                  *(a2 + 1) = v62;
LABEL_970:
                                                                                                  if (v62 >= v14 || (v337 = *v62, (v337 & 0x80000000) != 0))
                                                                                                  {
                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v405);
                                                                                                    if (!result)
                                                                                                    {
                                                                                                      return result;
                                                                                                    }

                                                                                                    v338 = *(a2 + 1);
                                                                                                    v14 = *(a2 + 2);
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    *v405 = v337;
                                                                                                    v338 = (v62 + 1);
                                                                                                    *(a2 + 1) = v338;
                                                                                                  }

                                                                                                  *(this + 133) |= 0x10000000u;
                                                                                                  if (v14 - v338 >= 2 && *v338 == 128 && v338[1] == 4)
                                                                                                  {
                                                                                                    v51 = (v338 + 2);
                                                                                                    *(a2 + 1) = v51;
LABEL_979:
                                                                                                    if (v51 >= v14 || (v339 = *v51, (v339 & 0x80000000) != 0))
                                                                                                    {
                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v404);
                                                                                                      if (!result)
                                                                                                      {
                                                                                                        return result;
                                                                                                      }

                                                                                                      v340 = *(a2 + 1);
                                                                                                      v14 = *(a2 + 2);
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      *v404 = v339;
                                                                                                      v340 = (v51 + 1);
                                                                                                      *(a2 + 1) = v340;
                                                                                                    }

                                                                                                    *(this + 133) |= 0x20000000u;
                                                                                                    if (v14 - v340 >= 2 && *v340 == 136 && v340[1] == 4)
                                                                                                    {
                                                                                                      v45 = (v340 + 2);
                                                                                                      *(a2 + 1) = v45;
LABEL_988:
                                                                                                      if (v45 >= v14 || (v341 = *v45, (v341 & 0x80000000) != 0))
                                                                                                      {
                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v403);
                                                                                                        if (!result)
                                                                                                        {
                                                                                                          return result;
                                                                                                        }

                                                                                                        v342 = *(a2 + 1);
                                                                                                        v14 = *(a2 + 2);
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        *v403 = v341;
                                                                                                        v342 = (v45 + 1);
                                                                                                        *(a2 + 1) = v342;
                                                                                                      }

                                                                                                      *(this + 133) |= 0x40000000u;
                                                                                                      if (v14 - v342 >= 2 && *v342 == 144 && v342[1] == 4)
                                                                                                      {
                                                                                                        v61 = (v342 + 2);
                                                                                                        *(a2 + 1) = v61;
LABEL_997:
                                                                                                        if (v61 >= v14 || (v343 = *v61, (v343 & 0x80000000) != 0))
                                                                                                        {
                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v402);
                                                                                                          if (!result)
                                                                                                          {
                                                                                                            return result;
                                                                                                          }

                                                                                                          v344 = *(a2 + 1);
                                                                                                          v14 = *(a2 + 2);
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          *v402 = v343;
                                                                                                          v344 = (v61 + 1);
                                                                                                          *(a2 + 1) = v344;
                                                                                                        }

                                                                                                        *(this + 133) |= 0x80000000;
                                                                                                        if (v14 - v344 >= 2 && *v344 == 152 && v344[1] == 4)
                                                                                                        {
                                                                                                          v23 = (v344 + 2);
                                                                                                          *(a2 + 1) = v23;
LABEL_1006:
                                                                                                          if (v23 >= v14 || (v345 = *v23, (v345 & 0x80000000) != 0))
                                                                                                          {
                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v401);
                                                                                                            if (!result)
                                                                                                            {
                                                                                                              return result;
                                                                                                            }

                                                                                                            v346 = *(a2 + 1);
                                                                                                            v14 = *(a2 + 2);
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            *v401 = v345;
                                                                                                            v346 = (v23 + 1);
                                                                                                            *(a2 + 1) = v346;
                                                                                                          }

                                                                                                          *(this + 134) |= 1u;
                                                                                                          if (v14 - v346 >= 2 && *v346 == 160 && v346[1] == 4)
                                                                                                          {
                                                                                                            v35 = (v346 + 2);
                                                                                                            *(a2 + 1) = v35;
LABEL_1015:
                                                                                                            if (v35 >= v14 || (v347 = *v35, (v347 & 0x80000000) != 0))
                                                                                                            {
                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v400);
                                                                                                              if (!result)
                                                                                                              {
                                                                                                                return result;
                                                                                                              }

                                                                                                              v348 = *(a2 + 1);
                                                                                                              v14 = *(a2 + 2);
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              *v400 = v347;
                                                                                                              v348 = (v35 + 1);
                                                                                                              *(a2 + 1) = v348;
                                                                                                            }

                                                                                                            *(this + 134) |= 2u;
                                                                                                            if (v14 - v348 >= 2 && *v348 == 168 && v348[1] == 4)
                                                                                                            {
                                                                                                              while (1)
                                                                                                              {
                                                                                                                v97 = (v348 + 2);
                                                                                                                *(a2 + 1) = v97;
LABEL_1024:
                                                                                                                v430 = 0;
                                                                                                                if (v97 >= v14 || *v97 < 0)
                                                                                                                {
                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                                                                                                                  {
                                                                                                                    return 0;
                                                                                                                  }
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v430 = *v97;
                                                                                                                  *(a2 + 1) = v97 + 1;
                                                                                                                }

                                                                                                                v349 = *(this + 106);
                                                                                                                if (v349 == *(this + 107))
                                                                                                                {
                                                                                                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 52, v349 + 1);
                                                                                                                  v349 = *(this + 106);
                                                                                                                }

                                                                                                                v350 = v430;
                                                                                                                v351 = *(this + 52);
                                                                                                                *(this + 106) = v349 + 1;
                                                                                                                *(v351 + 4 * v349) = v350;
                                                                                                                v352 = *(this + 107) - *(this + 106);
                                                                                                                if (v352 >= 1)
                                                                                                                {
                                                                                                                  v353 = v352 + 1;
                                                                                                                  do
                                                                                                                  {
                                                                                                                    v354 = *(a2 + 1);
                                                                                                                    v355 = *(a2 + 2);
                                                                                                                    if (v355 - v354 < 2 || *v354 != 168 || v354[1] != 4)
                                                                                                                    {
                                                                                                                      break;
                                                                                                                    }

                                                                                                                    *(a2 + 1) = v354 + 2;
                                                                                                                    if ((v354 + 2) >= v355 || v354[2] < 0)
                                                                                                                    {
                                                                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                                                                                                                      {
                                                                                                                        return 0;
                                                                                                                      }
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v430 = v354[2];
                                                                                                                      *(a2 + 1) = v354 + 3;
                                                                                                                    }

                                                                                                                    v356 = *(this + 106);
                                                                                                                    if (v356 >= *(this + 107))
                                                                                                                    {
                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v431);
                                                                                                                      v356 = *(this + 106);
                                                                                                                    }

                                                                                                                    v357 = v430;
                                                                                                                    v358 = *(this + 52);
                                                                                                                    *(this + 106) = v356 + 1;
                                                                                                                    *(v358 + 4 * v356) = v357;
                                                                                                                    --v353;
                                                                                                                  }

                                                                                                                  while (v353 > 1);
                                                                                                                }

LABEL_1042:
                                                                                                                v348 = *(a2 + 1);
                                                                                                                v14 = *(a2 + 2);
                                                                                                                if (v14 - v348 < 2)
                                                                                                                {
                                                                                                                  goto LABEL_2;
                                                                                                                }

                                                                                                                v359 = *v348;
                                                                                                                if (v359 == 176)
                                                                                                                {
                                                                                                                  break;
                                                                                                                }

                                                                                                                if (v359 != 168 || v348[1] != 4)
                                                                                                                {
                                                                                                                  goto LABEL_2;
                                                                                                                }
                                                                                                              }

                                                                                                              if (v348[1] == 4)
                                                                                                              {
                                                                                                                v32 = (v348 + 2);
                                                                                                                *(a2 + 1) = v32;
LABEL_1049:
                                                                                                                if (v32 >= v14 || (v360 = *v32, (v360 & 0x80000000) != 0))
                                                                                                                {
                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v4);
                                                                                                                  if (!result)
                                                                                                                  {
                                                                                                                    return result;
                                                                                                                  }

                                                                                                                  v361 = *(a2 + 1);
                                                                                                                  v14 = *(a2 + 2);
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  *v4 = v360;
                                                                                                                  v361 = (v32 + 1);
                                                                                                                  *(a2 + 1) = v361;
                                                                                                                }

                                                                                                                *(this + 134) |= 8u;
                                                                                                                if (v14 - v361 >= 2 && *v361 == 184 && v361[1] == 4)
                                                                                                                {
                                                                                                                  while (1)
                                                                                                                  {
                                                                                                                    v82 = (v361 + 2);
                                                                                                                    *(a2 + 1) = v82;
LABEL_1058:
                                                                                                                    v430 = 0;
                                                                                                                    if (v82 >= v14 || *v82 < 0)
                                                                                                                    {
                                                                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                                                                                                                      {
                                                                                                                        return 0;
                                                                                                                      }
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v430 = *v82;
                                                                                                                      *(a2 + 1) = v82 + 1;
                                                                                                                    }

                                                                                                                    v362 = *(this + 112);
                                                                                                                    if (v362 == *(this + 113))
                                                                                                                    {
                                                                                                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 55, v362 + 1);
                                                                                                                      v362 = *(this + 112);
                                                                                                                    }

                                                                                                                    v363 = v430;
                                                                                                                    v364 = *(this + 55);
                                                                                                                    *(this + 112) = v362 + 1;
                                                                                                                    *(v364 + 4 * v362) = v363;
                                                                                                                    v365 = *(this + 113) - *(this + 112);
                                                                                                                    if (v365 >= 1)
                                                                                                                    {
                                                                                                                      v366 = v365 + 1;
                                                                                                                      do
                                                                                                                      {
                                                                                                                        v367 = *(a2 + 1);
                                                                                                                        v368 = *(a2 + 2);
                                                                                                                        if (v368 - v367 < 2 || *v367 != 184 || v367[1] != 4)
                                                                                                                        {
                                                                                                                          break;
                                                                                                                        }

                                                                                                                        *(a2 + 1) = v367 + 2;
                                                                                                                        if ((v367 + 2) >= v368 || v367[2] < 0)
                                                                                                                        {
                                                                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                                                                                                                          {
                                                                                                                            return 0;
                                                                                                                          }
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v430 = v367[2];
                                                                                                                          *(a2 + 1) = v367 + 3;
                                                                                                                        }

                                                                                                                        v369 = *(this + 112);
                                                                                                                        if (v369 >= *(this + 113))
                                                                                                                        {
                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v431);
                                                                                                                          v369 = *(this + 112);
                                                                                                                        }

                                                                                                                        v370 = v430;
                                                                                                                        v371 = *(this + 55);
                                                                                                                        *(this + 112) = v369 + 1;
                                                                                                                        *(v371 + 4 * v369) = v370;
                                                                                                                        --v366;
                                                                                                                      }

                                                                                                                      while (v366 > 1);
                                                                                                                    }

LABEL_1076:
                                                                                                                    v361 = *(a2 + 1);
                                                                                                                    v14 = *(a2 + 2);
                                                                                                                    if (v14 - v361 < 2)
                                                                                                                    {
                                                                                                                      goto LABEL_2;
                                                                                                                    }

                                                                                                                    v372 = *v361;
                                                                                                                    if (v372 == 192)
                                                                                                                    {
                                                                                                                      break;
                                                                                                                    }

                                                                                                                    if (v372 != 184 || v361[1] != 4)
                                                                                                                    {
                                                                                                                      goto LABEL_2;
                                                                                                                    }
                                                                                                                  }

                                                                                                                  if (v361[1] == 4)
                                                                                                                  {
                                                                                                                    v24 = (v361 + 2);
                                                                                                                    *(a2 + 1) = v24;
LABEL_1083:
                                                                                                                    if (v24 >= v14 || (v373 = *v24, (v373 & 0x80000000) != 0))
                                                                                                                    {
                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
                                                                                                                      if (!result)
                                                                                                                      {
                                                                                                                        return result;
                                                                                                                      }

                                                                                                                      v374 = *(a2 + 1);
                                                                                                                      v14 = *(a2 + 2);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      *v5 = v373;
                                                                                                                      v374 = (v24 + 1);
                                                                                                                      *(a2 + 1) = v374;
                                                                                                                    }

                                                                                                                    *(this + 134) |= 0x20u;
                                                                                                                    if (v14 - v374 >= 2 && *v374 == 200 && v374[1] == 4)
                                                                                                                    {
                                                                                                                      v76 = (v374 + 2);
                                                                                                                      *(a2 + 1) = v76;
LABEL_1092:
                                                                                                                      if (v76 >= v14 || (v375 = *v76, (v375 & 0x80000000) != 0))
                                                                                                                      {
                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                                                                                                                        if (!result)
                                                                                                                        {
                                                                                                                          return result;
                                                                                                                        }

                                                                                                                        v376 = *(a2 + 1);
                                                                                                                        v14 = *(a2 + 2);
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        *v6 = v375;
                                                                                                                        v376 = (v76 + 1);
                                                                                                                        *(a2 + 1) = v376;
                                                                                                                      }

                                                                                                                      *(this + 134) |= 0x40u;
                                                                                                                      if (v14 - v376 >= 2 && *v376 == 208 && v376[1] == 4)
                                                                                                                      {
                                                                                                                        v80 = (v376 + 2);
                                                                                                                        *(a2 + 1) = v80;
LABEL_1101:
                                                                                                                        if (v80 >= v14 || (v377 = *v80, (v377 & 0x80000000) != 0))
                                                                                                                        {
                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v422);
                                                                                                                          if (!result)
                                                                                                                          {
                                                                                                                            return result;
                                                                                                                          }

                                                                                                                          v378 = *(a2 + 1);
                                                                                                                          v14 = *(a2 + 2);
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          *v422 = v377;
                                                                                                                          v378 = (v80 + 1);
                                                                                                                          *(a2 + 1) = v378;
                                                                                                                        }

                                                                                                                        *(this + 134) |= 0x80u;
                                                                                                                        if (v14 - v378 >= 2 && *v378 == 216 && v378[1] == 4)
                                                                                                                        {
                                                                                                                          v81 = (v378 + 2);
                                                                                                                          *(a2 + 1) = v81;
LABEL_1110:
                                                                                                                          if (v81 >= v14 || (v379 = *v81, (v379 & 0x80000000) != 0))
                                                                                                                          {
                                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v419);
                                                                                                                            if (!result)
                                                                                                                            {
                                                                                                                              return result;
                                                                                                                            }

                                                                                                                            v380 = *(a2 + 1);
                                                                                                                            v14 = *(a2 + 2);
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            *v419 = v379;
                                                                                                                            v380 = (v81 + 1);
                                                                                                                            *(a2 + 1) = v380;
                                                                                                                          }

                                                                                                                          *(this + 134) |= 0x100u;
                                                                                                                          if (v14 - v380 >= 2 && *v380 == 224 && v380[1] == 4)
                                                                                                                          {
                                                                                                                            v29 = (v380 + 2);
                                                                                                                            *(a2 + 1) = v29;
LABEL_1119:
                                                                                                                            if (v29 >= v14 || (v381 = *v29, (v381 & 0x80000000) != 0))
                                                                                                                            {
                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                                                                                                                              if (!result)
                                                                                                                              {
                                                                                                                                return result;
                                                                                                                              }

                                                                                                                              v382 = *(a2 + 1);
                                                                                                                              v14 = *(a2 + 2);
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              *v7 = v381;
                                                                                                                              v382 = (v29 + 1);
                                                                                                                              *(a2 + 1) = v382;
                                                                                                                            }

                                                                                                                            *(this + 134) |= 0x200u;
                                                                                                                            if (v14 - v382 >= 2 && *v382 == 232 && v382[1] == 4)
                                                                                                                            {
                                                                                                                              v58 = (v382 + 2);
                                                                                                                              *(a2 + 1) = v58;
LABEL_1128:
                                                                                                                              if (v58 >= v14 || (v383 = *v58, (v383 & 0x80000000) != 0))
                                                                                                                              {
                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
                                                                                                                                if (!result)
                                                                                                                                {
                                                                                                                                  return result;
                                                                                                                                }

                                                                                                                                v384 = *(a2 + 1);
                                                                                                                                v14 = *(a2 + 2);
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                *v8 = v383;
                                                                                                                                v384 = (v58 + 1);
                                                                                                                                *(a2 + 1) = v384;
                                                                                                                              }

                                                                                                                              *(this + 134) |= 0x400u;
                                                                                                                              if (v14 - v384 >= 2 && *v384 == 240 && v384[1] == 4)
                                                                                                                              {
                                                                                                                                v20 = (v384 + 2);
                                                                                                                                *(a2 + 1) = v20;
LABEL_1137:
                                                                                                                                if (v20 >= v14 || (v385 = *v20, (v385 & 0x80000000) != 0))
                                                                                                                                {
                                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
                                                                                                                                  if (!result)
                                                                                                                                  {
                                                                                                                                    return result;
                                                                                                                                  }

                                                                                                                                  v386 = *(a2 + 1);
                                                                                                                                  v14 = *(a2 + 2);
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  *v9 = v385;
                                                                                                                                  v386 = (v20 + 1);
                                                                                                                                  *(a2 + 1) = v386;
                                                                                                                                }

                                                                                                                                *(this + 134) |= 0x800u;
                                                                                                                                if (v14 - v386 >= 2 && *v386 == 248 && v386[1] == 4)
                                                                                                                                {
LABEL_1145:
                                                                                                                                  v96 = (v386 + 2);
                                                                                                                                  *(a2 + 1) = v96;
                                                                                                                                  goto LABEL_1146;
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
          }
        }

        continue;
      case 0x14u:
        if ((TagFallback & 7) == 0)
        {
          v91 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_391;
        }

        if (v13 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 96);
        if (!result)
        {
          return result;
        }

        goto LABEL_409;
      case 0x15u:
        if ((TagFallback & 7) == 0)
        {
          v86 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_416;
        }

        if (v13 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 112);
        if (!result)
        {
          return result;
        }

        goto LABEL_434;
      case 0x16u:
        if ((TagFallback & 7) == 0)
        {
          v87 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_441;
        }

        if (v13 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 136);
        if (!result)
        {
          return result;
        }

        goto LABEL_459;
      case 0x17u:
        if ((TagFallback & 7) == 0)
        {
          v89 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_466;
        }

        if (v13 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 152);
        if (!result)
        {
          return result;
        }

        goto LABEL_484;
      case 0x18u:
        if ((TagFallback & 7) == 0)
        {
          v92 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_491;
        }

        if (v13 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 168);
        if (!result)
        {
          return result;
        }

        goto LABEL_509;
      case 0x19u:
        if ((TagFallback & 7) == 0)
        {
          v85 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_516;
        }

        if (v13 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 184);
        if (!result)
        {
          return result;
        }

        goto LABEL_534;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v48 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_541;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v74 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_550;
      case 0x1Cu:
        if ((TagFallback & 7) == 0)
        {
          v83 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_559;
        }

        if (v13 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 504);
        if (!result)
        {
          return result;
        }

        goto LABEL_577;
      case 0x1Du:
        if ((TagFallback & 7) == 0)
        {
          v93 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_584;
        }

        if (v13 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 200);
        if (!result)
        {
          return result;
        }

        goto LABEL_602;
      case 0x1Eu:
        if ((TagFallback & 7) == 0)
        {
          v94 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_609;
        }

        if (v13 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 216);
        if (!result)
        {
          return result;
        }

        goto LABEL_627;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v67 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_634;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v55 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_643;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v68 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_652;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v38 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_661;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v33 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_670;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v30 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_679;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v31 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_688;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v25 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_697;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v73 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_706;
      case 0x28u:
        if ((TagFallback & 7) == 0)
        {
          v90 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_715;
        }

        if (v13 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 272);
        if (!result)
        {
          return result;
        }

        goto LABEL_733;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v43 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_740;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v57 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_749;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v71 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_758;
      case 0x2Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v22 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_767;
      case 0x2Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v36 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_776;
      case 0x2Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v69 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_785;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v79 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_794;
      case 0x30u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v27 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_803;
      case 0x31u:
        if ((TagFallback & 7) == 0)
        {
          v84 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_812;
        }

        if (v13 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 320);
        if (!result)
        {
          return result;
        }

        goto LABEL_830;
      case 0x32u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v41 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_837;
      case 0x33u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v21 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_846;
      case 0x34u:
        if ((TagFallback & 7) == 0)
        {
          v95 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_855;
        }

        if (v13 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 336);
        if (!result)
        {
          return result;
        }

        goto LABEL_873;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v78 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_880;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v26 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_889;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v75 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_898;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v77 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_907;
      case 0x39u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v28 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_916;
      case 0x3Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v70 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_925;
      case 0x3Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v39 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_934;
      case 0x3Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v72 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_943;
      case 0x3Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v44 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_952;
      case 0x3Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v59 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_961;
      case 0x3Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v62 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_970;
      case 0x40u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v51 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_979;
      case 0x41u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v45 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_988;
      case 0x42u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v61 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_997;
      case 0x43u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v23 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1006;
      case 0x44u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v35 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1015;
      case 0x45u:
        if ((TagFallback & 7) == 0)
        {
          v97 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1024;
        }

        if (v13 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 416);
        if (!result)
        {
          return result;
        }

        goto LABEL_1042;
      case 0x46u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v32 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1049;
      case 0x47u:
        if ((TagFallback & 7) == 0)
        {
          v82 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1058;
        }

        if (v13 != 2)
        {
          goto LABEL_200;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 440);
        if (!result)
        {
          return result;
        }

        goto LABEL_1076;
      case 0x48u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v24 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1083;
      case 0x49u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v76 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1092;
      case 0x4Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v80 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1101;
      case 0x4Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v81 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1110;
      case 0x4Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v29 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1119;
      case 0x4Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v58 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1128;
      case 0x4Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v20 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1137;
      case 0x4Fu:
        if ((TagFallback & 7) != 0)
        {
          if (v13 != 2)
          {
            goto LABEL_200;
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 480);
          if (!result)
          {
            return result;
          }

LABEL_1164:
          v386 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v14 - v386 >= 2)
          {
            v397 = *v386;
            if (v397 == 128)
            {
              if (v386[1] == 5)
              {
                v18 = (v386 + 2);
                *(a2 + 1) = v18;
LABEL_1171:
                if (v18 >= v14 || (v398 = *v18, (v398 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v10);
                  if (!result)
                  {
                    return result;
                  }

                  v399 = *(a2 + 1);
                  v14 = *(a2 + 2);
                }

                else
                {
                  *v10 = v398;
                  v399 = v18 + 1;
                  *(a2 + 1) = v399;
                }

                *(this + 134) |= 0x2000u;
                if (v399 == v14 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }
            }

            else if (v397 == 248 && v386[1] == 4)
            {
              goto LABEL_1145;
            }
          }

          continue;
        }

        v96 = *(a2 + 1);
        v14 = *(a2 + 2);
LABEL_1146:
        v430 = 0;
        if (v96 < v14 && (*v96 & 0x80000000) == 0)
        {
          v430 = *v96;
          *(a2 + 1) = v96 + 1;
          goto LABEL_1150;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
        {
LABEL_1150:
          v387 = *(this + 122);
          if (v387 == *(this + 123))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 60, v387 + 1);
            v387 = *(this + 122);
          }

          v388 = v430;
          v389 = *(this + 60);
          *(this + 122) = v387 + 1;
          *(v389 + 4 * v387) = v388;
          v390 = *(this + 123) - *(this + 122);
          if (v390 >= 1)
          {
            v391 = v390 + 1;
            do
            {
              v392 = *(a2 + 1);
              v393 = *(a2 + 2);
              if (v393 - v392 < 2 || *v392 != 248 || v392[1] != 4)
              {
                break;
              }

              *(a2 + 1) = v392 + 2;
              if ((v392 + 2) >= v393 || v392[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v430))
                {
                  return 0;
                }
              }

              else
              {
                v430 = v392[2];
                *(a2 + 1) = v392 + 3;
              }

              v394 = *(this + 122);
              if (v394 >= *(this + 123))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v431);
                v394 = *(this + 122);
              }

              v395 = v430;
              v396 = *(this + 60);
              *(this + 122) = v394 + 1;
              *(v396 + 4 * v394) = v395;
              --v391;
            }

            while (v391 > 1);
          }

          goto LABEL_1164;
        }

        return 0;
      case 0x50u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_200;
        }

        v18 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1171;
      default:
        goto LABEL_200;
    }
  }
}