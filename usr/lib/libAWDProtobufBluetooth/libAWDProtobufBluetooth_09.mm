void sub_29639C6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothAccessoryIedSensors::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 212);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 212);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_51;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 72), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 76), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 80), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 84), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 88), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 92), a2, a4);
  if ((*(v5 + 212) & 0x200000) != 0)
  {
LABEL_23:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 96), a2, a4);
  }

LABEL_24:
  if (*(v5 + 112) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(*(v5 + 104) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 112));
  }

  v8 = *(v5 + 212);
  if ((v8 & 0x800000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 100), a2, a4);
    v8 = *(v5 + 212);
    if ((v8 & 0x1000000) == 0)
    {
LABEL_29:
      if ((v8 & 0x2000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_73;
    }
  }

  else if ((v8 & 0x1000000) == 0)
  {
    goto LABEL_29;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 120), a2, a4);
  v8 = *(v5 + 212);
  if ((v8 & 0x2000000) == 0)
  {
LABEL_30:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(v5 + 124), a2, a4);
  v8 = *(v5 + 212);
  if ((v8 & 0x4000000) == 0)
  {
LABEL_31:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 128), a2, a4);
  if ((*(v5 + 212) & 0x8000000) != 0)
  {
LABEL_32:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 132), a2, a4);
  }

LABEL_33:
  if (*(v5 + 144) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(*(v5 + 136) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 144));
  }

  if (*(v5 + 160) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(*(v5 + 152) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 160));
  }

  if (*(v5 + 176) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(*(v5 + 168) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 176));
  }

  if (*(v5 + 192) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(*(v5 + 184) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 192));
  }

  v13 = *(v5 + 216);
  if (v13)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 200), a2, a4);
    v13 = *(v5 + 216);
  }

  if ((v13 & 2) != 0)
  {
    v14 = *(v5 + 204);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, v14, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothAccessoryIedSensors::ByteSize(awd::metrics::BluetoothAccessoryIedSensors *this)
{
  v2 = *(this + 53);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 53);
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
    v2 = *(this + 53);
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
      v2 = *(this + 53);
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
    v2 = *(this + 53);
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
    v2 = *(this + 53);
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
    v2 = *(this + 53);
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
    v2 = *(this + 53);
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
      v2 = *(this + 53);
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
    goto LABEL_84;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = *(this + 11);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v2 = *(this + 53);
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
        goto LABEL_46;
      }

      goto LABEL_60;
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
    v2 = *(this + 53);
  }

  else
  {
    v21 = 2;
  }

  v3 += v21;
  if ((v2 & 0x400) == 0)
  {
LABEL_46:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

LABEL_60:
  v22 = *(this + 13);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v23 = 2;
  }

  v3 += v23;
  if ((v2 & 0x800) == 0)
  {
LABEL_47:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_68;
  }

LABEL_64:
  v24 = *(this + 14);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v25 = 2;
  }

  v3 += v25;
  if ((v2 & 0x1000) == 0)
  {
LABEL_48:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_72;
  }

LABEL_68:
  v26 = *(this + 15);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v27 = 2;
  }

  v3 += v27;
  if ((v2 & 0x2000) == 0)
  {
LABEL_49:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_76;
  }

LABEL_72:
  v28 = *(this + 16);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v29 = 2;
  }

  v3 += v29;
  if ((v2 & 0x4000) == 0)
  {
LABEL_50:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

LABEL_76:
  v30 = *(this + 17);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v31 = 2;
  }

  v3 += v31;
  if ((v2 & 0x8000) != 0)
  {
LABEL_80:
    v32 = *(this + 18);
    if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
      v2 = *(this + 53);
    }

    else
    {
      v33 = 3;
    }

    v3 += v33;
  }

LABEL_84:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_121;
  }

  if ((v2 & 0x10000) != 0)
  {
    v34 = *(this + 19);
    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
      v2 = *(this + 53);
    }

    else
    {
      v35 = 3;
    }

    v3 += v35;
    if ((v2 & 0x20000) == 0)
    {
LABEL_87:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_101;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_87;
  }

  v36 = *(this + 20);
  if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v37 = 3;
  }

  v3 += v37;
  if ((v2 & 0x40000) == 0)
  {
LABEL_88:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_105;
  }

LABEL_101:
  v38 = *(this + 21);
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v39 = 3;
  }

  v3 += v39;
  if ((v2 & 0x80000) == 0)
  {
LABEL_89:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_109;
  }

LABEL_105:
  v40 = *(this + 22);
  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v41 = 3;
  }

  v3 += v41;
  if ((v2 & 0x100000) == 0)
  {
LABEL_90:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_113;
  }

LABEL_109:
  v42 = *(this + 23);
  if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v43 = 3;
  }

  v3 += v43;
  if ((v2 & 0x200000) == 0)
  {
LABEL_91:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_117;
  }

LABEL_113:
  v44 = *(this + 24);
  if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v45 = 3;
  }

  v3 += v45;
  if ((v2 & 0x800000) != 0)
  {
LABEL_117:
    v46 = *(this + 25);
    if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
      v2 = *(this + 53);
    }

    else
    {
      v47 = 3;
    }

    v3 += v47;
  }

LABEL_121:
  if (!HIBYTE(v2))
  {
    goto LABEL_143;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v48 = *(this + 30);
    if (v48 >= 0x80)
    {
      v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 2;
      v2 = *(this + 53);
    }

    else
    {
      v49 = 3;
    }

    v3 += v49;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_124:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_135;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_124;
  }

  v50 = *(this + 31);
  if (v50 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v51 = 3;
  }

  v3 += v51;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_125:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_139;
  }

LABEL_135:
  v52 = *(this + 32);
  if (v52 >= 0x80)
  {
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v53 = 3;
  }

  v3 += v53;
  if ((v2 & 0x8000000) != 0)
  {
LABEL_139:
    v54 = *(this + 33);
    if (v54 >= 0x80)
    {
      v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 2;
    }

    else
    {
      v55 = 3;
    }

    v3 += v55;
  }

LABEL_143:
  LOBYTE(v56) = *(this + 216);
  if (v56)
  {
    if (*(this + 216))
    {
      v57 = *(this + 50);
      if (v57 >= 0x80)
      {
        v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
        v56 = *(this + 54);
      }

      else
      {
        v58 = 3;
      }

      v3 += v58;
    }

    if ((v56 & 2) != 0)
    {
      v59 = *(this + 51);
      if (v59 >= 0x80)
      {
        v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59) + 2;
      }

      else
      {
        v60 = 3;
      }

      v3 += v60;
    }
  }

  v88 = v3;
  v61 = *(this + 28);
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
      v64 = *(*(this + 13) + 4 * v62);
      if (v64 >= 0x80)
      {
        v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64);
        v61 = *(this + 28);
      }

      else
      {
        v65 = 1;
      }

      v63 += v65;
      ++v62;
    }

    while (v62 < v61);
  }

  v66 = *(this + 36);
  if (v66 < 1)
  {
    v68 = 0;
  }

  else
  {
    v67 = 0;
    v68 = 0;
    do
    {
      v69 = *(*(this + 17) + 4 * v67);
      if (v69 >= 0x80)
      {
        v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69);
        v66 = *(this + 36);
      }

      else
      {
        v70 = 1;
      }

      v68 += v70;
      ++v67;
    }

    while (v67 < v66);
  }

  v71 = *(this + 40);
  if (v71 < 1)
  {
    v73 = 0;
  }

  else
  {
    v72 = 0;
    v73 = 0;
    do
    {
      v74 = *(*(this + 19) + 4 * v72);
      if (v74 >= 0x80)
      {
        v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74);
        v71 = *(this + 40);
      }

      else
      {
        v75 = 1;
      }

      v73 += v75;
      ++v72;
    }

    while (v72 < v71);
  }

  v76 = *(this + 44);
  if (v76 < 1)
  {
    v78 = 0;
  }

  else
  {
    v77 = 0;
    v78 = 0;
    do
    {
      v79 = *(*(this + 21) + 4 * v77);
      if (v79 >= 0x80)
      {
        v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79);
        v76 = *(this + 44);
      }

      else
      {
        v80 = 1;
      }

      v78 += v80;
      ++v77;
    }

    while (v77 < v76);
  }

  v87 = v61;
  v81 = *(this + 48);
  if (v81 < 1)
  {
    v83 = 0;
  }

  else
  {
    v82 = 0;
    v83 = 0;
    do
    {
      v84 = *(*(this + 23) + 4 * v82);
      if (v84 >= 0x80)
      {
        v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84);
        v81 = *(this + 48);
      }

      else
      {
        v85 = 1;
      }

      v83 += v85;
      ++v82;
    }

    while (v82 < v81);
  }

  result = (v63 + v88 + v68 + v73 + v78 + v83 + 2 * (v66 + v87 + v71 + v76 + v81));
  *(this + 52) = result;
  return result;
}

void awd::metrics::BluetoothAccessoryIedSensors::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryIedSensors *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAccessoryIedSensors::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAccessoryIedSensors::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAccessoryIedSensors::CopyFrom(awd::metrics::BluetoothAccessoryIedSensors *this, const awd::metrics::BluetoothAccessoryIedSensors *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAccessoryIedSensors::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothAccessoryIedSensors::Swap(awd::metrics::BluetoothAccessoryIedSensors *this, awd::metrics::BluetoothAccessoryIedSensors *a2)
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
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v2;
    LODWORD(v2) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v2;
    LODWORD(v2) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    LODWORD(v2) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v2;
    LODWORD(v2) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v2;
    LODWORD(v2) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v2;
    v3 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    v4 = *(a2 + 14);
    *(a2 + 13) = v3;
    v5 = *(this + 14);
    *(this + 14) = v4;
    *(a2 + 14) = v5;
    LODWORD(v3) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v3;
    LODWORD(v3) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v3;
    LODWORD(v3) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v3;
    LODWORD(v3) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v3;
    v6 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    v7 = *(a2 + 18);
    *(a2 + 17) = v6;
    v8 = *(this + 18);
    *(this + 18) = v7;
    *(a2 + 18) = v8;
    v9 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    v10 = *(a2 + 20);
    *(a2 + 19) = v9;
    v11 = *(this + 20);
    *(this + 20) = v10;
    *(a2 + 20) = v11;
    v12 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    v13 = *(a2 + 22);
    *(a2 + 21) = v12;
    v14 = *(this + 22);
    *(this + 22) = v13;
    *(a2 + 22) = v14;
    v15 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    result = *(a2 + 24);
    *(a2 + 23) = v15;
    v17 = *(this + 24);
    *(this + 24) = result;
    *(a2 + 24) = v17;
    LODWORD(v15) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v15;
    LODWORD(v15) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v15;
    LODWORD(v15) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v15;
    LODWORD(v15) = *(this + 54);
    *(this + 54) = *(a2 + 54);
    *(a2 + 54) = v15;
    LODWORD(v15) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v15;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAudioCodec::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothAudioCodec *awd::metrics::BluetoothAudioCodec::BluetoothAudioCodec(awd::metrics::BluetoothAudioCodec *this, const awd::metrics::BluetoothAudioCodec *a2)
{
  *this = &unk_2A1D4BC10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::BluetoothAudioCodec::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothAudioCodec::MergeFrom(awd::metrics::BluetoothAudioCodec *this, const awd::metrics::BluetoothAudioCodec *a2)
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

void sub_29639D880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAudioCodec::~BluetoothAudioCodec(awd::metrics::BluetoothAudioCodec *this)
{
  *this = &unk_2A1D4BC10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4BC10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4BC10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAudioCodec::default_instance(awd::metrics::BluetoothAudioCodec *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAudioCodec::default_instance_;
  if (!awd::metrics::BluetoothAudioCodec::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAudioCodec::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAudioCodec::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothAudioCodec::MergePartialFromCodedStream(awd::metrics::BluetoothAudioCodec *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t awd::metrics::BluetoothAudioCodec::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::BluetoothAudioCodec::ByteSize(awd::metrics::BluetoothAudioCodec *this)
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

void awd::metrics::BluetoothAudioCodec::CheckTypeAndMergeFrom(awd::metrics::BluetoothAudioCodec *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAudioCodec::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAudioCodec::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAudioCodec::CopyFrom(awd::metrics::BluetoothAudioCodec *this, const awd::metrics::BluetoothAudioCodec *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAudioCodec::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothAudioCodec::Swap(uint64_t this, awd::metrics::BluetoothAudioCodec *a2)
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

double awd::metrics::BluetoothMagicPairing::SharedCtor(awd::metrics::BluetoothMagicPairing *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothMagicPairing *awd::metrics::BluetoothMagicPairing::BluetoothMagicPairing(awd::metrics::BluetoothMagicPairing *this, const awd::metrics::BluetoothMagicPairing *a2)
{
  *this = &unk_2A1D4BC88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  awd::metrics::BluetoothMagicPairing::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothMagicPairing::MergeFrom(awd::metrics::BluetoothMagicPairing *this, const awd::metrics::BluetoothMagicPairing *a2)
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

void sub_29639E0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothMagicPairing::~BluetoothMagicPairing(awd::metrics::BluetoothMagicPairing *this)
{
  *this = &unk_2A1D4BC88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4BC88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4BC88;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothMagicPairing::default_instance(awd::metrics::BluetoothMagicPairing *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothMagicPairing::default_instance_;
  if (!awd::metrics::BluetoothMagicPairing::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothMagicPairing::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothMagicPairing::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothMagicPairing::MergePartialFromCodedStream(awd::metrics::BluetoothMagicPairing *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t awd::metrics::BluetoothMagicPairing::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::BluetoothMagicPairing::ByteSize(awd::metrics::BluetoothMagicPairing *this)
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

void awd::metrics::BluetoothMagicPairing::CheckTypeAndMergeFrom(awd::metrics::BluetoothMagicPairing *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothMagicPairing::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothMagicPairing::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothMagicPairing::CopyFrom(awd::metrics::BluetoothMagicPairing *this, const awd::metrics::BluetoothMagicPairing *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothMagicPairing::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothMagicPairing::Swap(uint64_t this, awd::metrics::BluetoothMagicPairing *a2)
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

void *awd::metrics::BluetoothACIAudioLinkInfo::SharedCtor(void *this)
{
  this[1] = 0;
  this[25] = 0;
  this[26] = 0;
  this[24] = 0;
  return this;
}

awd::metrics::BluetoothACIAudioLinkInfo *awd::metrics::BluetoothACIAudioLinkInfo::BluetoothACIAudioLinkInfo(awd::metrics::BluetoothACIAudioLinkInfo *this, const awd::metrics::BluetoothACIAudioLinkInfo *a2)
{
  *this = &unk_2A1D4BD00;
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
  awd::metrics::BluetoothACIAudioLinkInfo::MergeFrom(this, a2);
  return this;
}

void sub_29639E748(_Unwind_Exception *a1)
{
  v3 = *(v1 + 22);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 20);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 18);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 14);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 12);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 10);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(v1 + 8);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(v1 + 6);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(v1 + 4);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 2);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIAudioLinkInfo::MergeFrom(awd::metrics::BluetoothACIAudioLinkInfo *this, const awd::metrics::BluetoothACIAudioLinkInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
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

  v7 = *(a2 + 18);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 18) + v7);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v8 = *(a2 + 22);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, *(this + 22) + v8);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v9 = *(a2 + 26);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 26) + v9);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v10 = *(a2 + 30);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 14, *(this + 30) + v10);
    memcpy((*(this + 14) + 4 * *(this + 30)), *(a2 + 14), 4 * *(a2 + 30));
    *(this + 30) += *(a2 + 30);
  }

  v11 = *(a2 + 34);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 34) + v11);
    memcpy((*(this + 16) + 4 * *(this + 34)), *(a2 + 16), 4 * *(a2 + 34));
    *(this + 34) += *(a2 + 34);
  }

  v12 = *(a2 + 38);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, *(this + 38) + v12);
    memcpy((*(this + 18) + 4 * *(this + 38)), *(a2 + 18), 4 * *(a2 + 38));
    *(this + 38) += *(a2 + 38);
  }

  v13 = *(a2 + 42);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, *(this + 42) + v13);
    memcpy((*(this + 20) + 4 * *(this + 42)), *(a2 + 20), 4 * *(a2 + 42));
    *(this + 42) += *(a2 + 42);
  }

  v14 = *(a2 + 46);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, *(this + 46) + v14);
    memcpy((*(this + 22) + 4 * *(this + 46)), *(a2 + 22), 4 * *(a2 + 46));
    *(this + 46) += *(a2 + 46);
  }

  v15 = *(a2 + 53);
  if (v15)
  {
    v16 = *(a2 + 1);
    *(this + 53) |= 1u;
    *(this + 1) = v16;
    v15 = *(a2 + 53);
  }

  if ((v15 & 0xFF000) != 0)
  {
    if ((v15 & 0x1000) != 0)
    {
      v18 = *(a2 + 48);
      *(this + 53) |= 0x1000u;
      *(this + 48) = v18;
      v15 = *(a2 + 53);
      if ((v15 & 0x2000) == 0)
      {
LABEL_30:
        if ((v15 & 0x4000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
      }
    }

    else if ((v15 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    v19 = *(a2 + 49);
    *(this + 53) |= 0x2000u;
    *(this + 49) = v19;
    v15 = *(a2 + 53);
    if ((v15 & 0x4000) == 0)
    {
LABEL_31:
      if ((v15 & 0x8000) == 0)
      {
        return;
      }

      goto LABEL_32;
    }

LABEL_36:
    v20 = *(a2 + 50);
    *(this + 53) |= 0x4000u;
    *(this + 50) = v20;
    if ((*(a2 + 53) & 0x8000) == 0)
    {
      return;
    }

LABEL_32:
    v17 = *(a2 + 51);
    *(this + 53) |= 0x8000u;
    *(this + 51) = v17;
  }
}

void sub_29639EC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIAudioLinkInfo::~BluetoothACIAudioLinkInfo(awd::metrics::BluetoothACIAudioLinkInfo *this)
{
  *this = &unk_2A1D4BD00;
  v2 = *(this + 22);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 20);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 18);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 16);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 14);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 12);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 10);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(this + 8);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 6);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(this + 4);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(this + 2);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothACIAudioLinkInfo::~BluetoothACIAudioLinkInfo(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothACIAudioLinkInfo::default_instance(awd::metrics::BluetoothACIAudioLinkInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothACIAudioLinkInfo::default_instance_;
  if (!awd::metrics::BluetoothACIAudioLinkInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothACIAudioLinkInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIAudioLinkInfo::Clear(uint64_t this)
{
  v1 = *(this + 212);
  if (v1)
  {
    *(this + 8) = 0;
  }

  if ((v1 & 0xFF000) != 0)
  {
    *(this + 192) = 0;
    *(this + 200) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 104) = 0;
  *(this + 120) = 0;
  *(this + 136) = 0;
  *(this + 152) = 0;
  *(this + 168) = 0;
  *(this + 184) = 0;
  *(this + 212) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothACIAudioLinkInfo::MergePartialFromCodedStream(awd::metrics::BluetoothACIAudioLinkInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_61;
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
          v10 = (v8 + 1);
          *(a2 + 1) = v10;
        }

        *(this + 53) |= 1u;
        if (v10 >= v7)
        {
          continue;
        }

        v27 = *v10;
        goto LABEL_81;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 16);
            if (!result)
            {
              return result;
            }

            goto LABEL_100;
          }

          goto LABEL_61;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v22 >= v7 || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v22;
            *(a2 + 1) = v22 + 1;
          }

          v28 = *(this + 6);
          if (v28 == *(this + 7))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v28 + 1);
            v28 = *(this + 6);
          }

          v29 = v156;
          v30 = *(this + 2);
          *(this + 6) = v28 + 1;
          *(v30 + 4 * v28) = v29;
          v31 = *(this + 7) - *(this + 6);
          if (v31 >= 1)
          {
            v32 = v31 + 1;
            do
            {
              v33 = *(a2 + 1);
              v34 = *(a2 + 2);
              if (v33 >= v34 || *v33 != 16)
              {
                break;
              }

              *(a2 + 1) = v33 + 1;
              if ((v33 + 1) >= v34 || v33[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v33[1];
                *(a2 + 1) = v33 + 2;
              }

              v35 = *(this + 6);
              if (v35 >= *(this + 7))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v35 = *(this + 6);
              }

              v36 = v156;
              v37 = *(this + 2);
              *(this + 6) = v35 + 1;
              *(v37 + 4 * v35) = v36;
              --v32;
            }

            while (v32 > 1);
          }

LABEL_100:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v27 = *v10;
          if (v27 == 24)
          {
            goto LABEL_102;
          }

LABEL_81:
          if (v27 != 16)
          {
            goto LABEL_1;
          }

          v22 = (v10 + 1);
          *(a2 + 1) = v22;
        }

      case 3u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 32);
            if (!result)
            {
              return result;
            }

            goto LABEL_120;
          }

          goto LABEL_61;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v19 >= v7 || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v19;
            *(a2 + 1) = v19 + 1;
          }

          v38 = *(this + 10);
          if (v38 == *(this + 11))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v38 + 1);
            v38 = *(this + 10);
          }

          v39 = v156;
          v40 = *(this + 4);
          *(this + 10) = v38 + 1;
          *(v40 + 4 * v38) = v39;
          v41 = *(this + 11) - *(this + 10);
          if (v41 >= 1)
          {
            v42 = v41 + 1;
            do
            {
              v43 = *(a2 + 1);
              v44 = *(a2 + 2);
              if (v43 >= v44 || *v43 != 24)
              {
                break;
              }

              *(a2 + 1) = v43 + 1;
              if ((v43 + 1) >= v44 || v43[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v43[1];
                *(a2 + 1) = v43 + 2;
              }

              v45 = *(this + 10);
              if (v45 >= *(this + 11))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v45 = *(this + 10);
              }

              v46 = v156;
              v47 = *(this + 4);
              *(this + 10) = v45 + 1;
              *(v47 + 4 * v45) = v46;
              --v42;
            }

            while (v42 > 1);
          }

LABEL_120:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v48 = *v10;
          if (v48 == 32)
          {
            goto LABEL_124;
          }

          if (v48 != 24)
          {
            goto LABEL_1;
          }

LABEL_102:
          v19 = (v10 + 1);
          *(a2 + 1) = v19;
        }

      case 4u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 48);
            if (!result)
            {
              return result;
            }

            goto LABEL_142;
          }

          goto LABEL_61;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v20 >= v7 || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v20;
            *(a2 + 1) = v20 + 1;
          }

          v49 = *(this + 14);
          if (v49 == *(this + 15))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v49 + 1);
            v49 = *(this + 14);
          }

          v50 = v156;
          v51 = *(this + 6);
          *(this + 14) = v49 + 1;
          *(v51 + 4 * v49) = v50;
          v52 = *(this + 15) - *(this + 14);
          if (v52 >= 1)
          {
            v53 = v52 + 1;
            do
            {
              v54 = *(a2 + 1);
              v55 = *(a2 + 2);
              if (v54 >= v55 || *v54 != 32)
              {
                break;
              }

              *(a2 + 1) = v54 + 1;
              if ((v54 + 1) >= v55 || v54[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v54[1];
                *(a2 + 1) = v54 + 2;
              }

              v56 = *(this + 14);
              if (v56 >= *(this + 15))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v56 = *(this + 14);
              }

              v57 = v156;
              v58 = *(this + 6);
              *(this + 14) = v56 + 1;
              *(v58 + 4 * v56) = v57;
              --v53;
            }

            while (v53 > 1);
          }

LABEL_142:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v59 = *v10;
          if (v59 == 40)
          {
            goto LABEL_146;
          }

          if (v59 != 32)
          {
            goto LABEL_1;
          }

LABEL_124:
          v20 = (v10 + 1);
          *(a2 + 1) = v20;
        }

      case 5u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 64);
            if (!result)
            {
              return result;
            }

            goto LABEL_164;
          }

          goto LABEL_61;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v17 >= v7 || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v17;
            *(a2 + 1) = v17 + 1;
          }

          v60 = *(this + 18);
          if (v60 == *(this + 19))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v60 + 1);
            v60 = *(this + 18);
          }

          v61 = v156;
          v62 = *(this + 8);
          *(this + 18) = v60 + 1;
          *(v62 + 4 * v60) = v61;
          v63 = *(this + 19) - *(this + 18);
          if (v63 >= 1)
          {
            v64 = v63 + 1;
            do
            {
              v65 = *(a2 + 1);
              v66 = *(a2 + 2);
              if (v65 >= v66 || *v65 != 40)
              {
                break;
              }

              *(a2 + 1) = v65 + 1;
              if ((v65 + 1) >= v66 || v65[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v65[1];
                *(a2 + 1) = v65 + 2;
              }

              v67 = *(this + 18);
              if (v67 >= *(this + 19))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v67 = *(this + 18);
              }

              v68 = v156;
              v69 = *(this + 8);
              *(this + 18) = v67 + 1;
              *(v69 + 4 * v67) = v68;
              --v64;
            }

            while (v64 > 1);
          }

LABEL_164:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v70 = *v10;
          if (v70 == 48)
          {
            goto LABEL_168;
          }

          if (v70 != 40)
          {
            goto LABEL_1;
          }

LABEL_146:
          v17 = (v10 + 1);
          *(a2 + 1) = v17;
        }

      case 6u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 80);
            if (!result)
            {
              return result;
            }

            goto LABEL_186;
          }

          goto LABEL_61;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v23 >= v7 || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v23;
            *(a2 + 1) = v23 + 1;
          }

          v71 = *(this + 22);
          if (v71 == *(this + 23))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, v71 + 1);
            v71 = *(this + 22);
          }

          v72 = v156;
          v73 = *(this + 10);
          *(this + 22) = v71 + 1;
          *(v73 + 4 * v71) = v72;
          v74 = *(this + 23) - *(this + 22);
          if (v74 >= 1)
          {
            v75 = v74 + 1;
            do
            {
              v76 = *(a2 + 1);
              v77 = *(a2 + 2);
              if (v76 >= v77 || *v76 != 48)
              {
                break;
              }

              *(a2 + 1) = v76 + 1;
              if ((v76 + 1) >= v77 || v76[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v76[1];
                *(a2 + 1) = v76 + 2;
              }

              v78 = *(this + 22);
              if (v78 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v78 = *(this + 22);
              }

              v79 = v156;
              v80 = *(this + 10);
              *(this + 22) = v78 + 1;
              *(v80 + 4 * v78) = v79;
              --v75;
            }

            while (v75 > 1);
          }

LABEL_186:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v81 = *v10;
          if (v81 == 56)
          {
            goto LABEL_190;
          }

          if (v81 != 48)
          {
            goto LABEL_1;
          }

LABEL_168:
          v23 = (v10 + 1);
          *(a2 + 1) = v23;
        }

      case 7u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 96);
            if (!result)
            {
              return result;
            }

            goto LABEL_208;
          }

          goto LABEL_61;
        }

        v24 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v24 >= v7 || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v82 = *(this + 26);
          if (v82 == *(this + 27))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v82 + 1);
            v82 = *(this + 26);
          }

          v83 = v156;
          v84 = *(this + 12);
          *(this + 26) = v82 + 1;
          *(v84 + 4 * v82) = v83;
          v85 = *(this + 27) - *(this + 26);
          if (v85 >= 1)
          {
            v86 = v85 + 1;
            do
            {
              v87 = *(a2 + 1);
              v88 = *(a2 + 2);
              if (v87 >= v88 || *v87 != 56)
              {
                break;
              }

              *(a2 + 1) = v87 + 1;
              if ((v87 + 1) >= v88 || v87[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v87[1];
                *(a2 + 1) = v87 + 2;
              }

              v89 = *(this + 26);
              if (v89 >= *(this + 27))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v89 = *(this + 26);
              }

              v90 = v156;
              v91 = *(this + 12);
              *(this + 26) = v89 + 1;
              *(v91 + 4 * v89) = v90;
              --v86;
            }

            while (v86 > 1);
          }

LABEL_208:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v92 = *v10;
          if (v92 == 64)
          {
            goto LABEL_212;
          }

          if (v92 != 56)
          {
            goto LABEL_1;
          }

LABEL_190:
          v24 = (v10 + 1);
          *(a2 + 1) = v24;
        }

      case 8u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 112);
            if (!result)
            {
              return result;
            }

            goto LABEL_230;
          }

          goto LABEL_61;
        }

        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v21 >= v7 || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v21;
            *(a2 + 1) = v21 + 1;
          }

          v93 = *(this + 30);
          if (v93 == *(this + 31))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 14, v93 + 1);
            v93 = *(this + 30);
          }

          v94 = v156;
          v95 = *(this + 14);
          *(this + 30) = v93 + 1;
          *(v95 + 4 * v93) = v94;
          v96 = *(this + 31) - *(this + 30);
          if (v96 >= 1)
          {
            v97 = v96 + 1;
            do
            {
              v98 = *(a2 + 1);
              v99 = *(a2 + 2);
              if (v98 >= v99 || *v98 != 64)
              {
                break;
              }

              *(a2 + 1) = v98 + 1;
              if ((v98 + 1) >= v99 || v98[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v98[1];
                *(a2 + 1) = v98 + 2;
              }

              v100 = *(this + 30);
              if (v100 >= *(this + 31))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v100 = *(this + 30);
              }

              v101 = v156;
              v102 = *(this + 14);
              *(this + 30) = v100 + 1;
              *(v102 + 4 * v100) = v101;
              --v97;
            }

            while (v97 > 1);
          }

LABEL_230:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v103 = *v10;
          if (v103 == 72)
          {
            goto LABEL_234;
          }

          if (v103 != 64)
          {
            goto LABEL_1;
          }

LABEL_212:
          v21 = (v10 + 1);
          *(a2 + 1) = v21;
        }

      case 9u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 128);
            if (!result)
            {
              return result;
            }

            goto LABEL_252;
          }

          goto LABEL_61;
        }

        v26 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v26 >= v7 || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v26;
            *(a2 + 1) = v26 + 1;
          }

          v104 = *(this + 34);
          if (v104 == *(this + 35))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v104 + 1);
            v104 = *(this + 34);
          }

          v105 = v156;
          v106 = *(this + 16);
          *(this + 34) = v104 + 1;
          *(v106 + 4 * v104) = v105;
          v107 = *(this + 35) - *(this + 34);
          if (v107 >= 1)
          {
            v108 = v107 + 1;
            do
            {
              v109 = *(a2 + 1);
              v110 = *(a2 + 2);
              if (v109 >= v110 || *v109 != 72)
              {
                break;
              }

              *(a2 + 1) = v109 + 1;
              if ((v109 + 1) >= v110 || v109[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v109[1];
                *(a2 + 1) = v109 + 2;
              }

              v111 = *(this + 34);
              if (v111 >= *(this + 35))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v111 = *(this + 34);
              }

              v112 = v156;
              v113 = *(this + 16);
              *(this + 34) = v111 + 1;
              *(v113 + 4 * v111) = v112;
              --v108;
            }

            while (v108 > 1);
          }

LABEL_252:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v114 = *v10;
          if (v114 == 80)
          {
            goto LABEL_256;
          }

          if (v114 != 72)
          {
            goto LABEL_1;
          }

LABEL_234:
          v26 = (v10 + 1);
          *(a2 + 1) = v26;
        }

      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 144);
            if (!result)
            {
              return result;
            }

            goto LABEL_274;
          }

          goto LABEL_61;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v18 >= v7 || *v18 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v18;
            *(a2 + 1) = v18 + 1;
          }

          v115 = *(this + 38);
          if (v115 == *(this + 39))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, v115 + 1);
            v115 = *(this + 38);
          }

          v116 = v156;
          v117 = *(this + 18);
          *(this + 38) = v115 + 1;
          *(v117 + 4 * v115) = v116;
          v118 = *(this + 39) - *(this + 38);
          if (v118 >= 1)
          {
            v119 = v118 + 1;
            do
            {
              v120 = *(a2 + 1);
              v121 = *(a2 + 2);
              if (v120 >= v121 || *v120 != 80)
              {
                break;
              }

              *(a2 + 1) = v120 + 1;
              if ((v120 + 1) >= v121 || v120[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v120[1];
                *(a2 + 1) = v120 + 2;
              }

              v122 = *(this + 38);
              if (v122 >= *(this + 39))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v122 = *(this + 38);
              }

              v123 = v156;
              v124 = *(this + 18);
              *(this + 38) = v122 + 1;
              *(v124 + 4 * v122) = v123;
              --v119;
            }

            while (v119 > 1);
          }

LABEL_274:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v125 = *v10;
          if (v125 == 88)
          {
            goto LABEL_278;
          }

          if (v125 != 80)
          {
            goto LABEL_1;
          }

LABEL_256:
          v18 = (v10 + 1);
          *(a2 + 1) = v18;
        }

      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 160);
            if (!result)
            {
              return result;
            }

            goto LABEL_296;
          }

          goto LABEL_61;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v25 >= v7 || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v25;
            *(a2 + 1) = v25 + 1;
          }

          v126 = *(this + 42);
          if (v126 == *(this + 43))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v126 + 1);
            v126 = *(this + 42);
          }

          v127 = v156;
          v128 = *(this + 20);
          *(this + 42) = v126 + 1;
          *(v128 + 4 * v126) = v127;
          v129 = *(this + 43) - *(this + 42);
          if (v129 >= 1)
          {
            v130 = v129 + 1;
            do
            {
              v131 = *(a2 + 1);
              v132 = *(a2 + 2);
              if (v131 >= v132 || *v131 != 88)
              {
                break;
              }

              *(a2 + 1) = v131 + 1;
              if ((v131 + 1) >= v132 || v131[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v131[1];
                *(a2 + 1) = v131 + 2;
              }

              v133 = *(this + 42);
              if (v133 >= *(this + 43))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v133 = *(this + 42);
              }

              v134 = v156;
              v135 = *(this + 20);
              *(this + 42) = v133 + 1;
              *(v135 + 4 * v133) = v134;
              --v130;
            }

            while (v130 > 1);
          }

LABEL_296:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v136 = *v10;
          if (v136 == 96)
          {
            goto LABEL_300;
          }

          if (v136 != 88)
          {
            goto LABEL_1;
          }

LABEL_278:
          v25 = (v10 + 1);
          *(a2 + 1) = v25;
        }

      case 0xCu:
        if ((TagFallback & 7) == 0)
        {
          v16 = *(a2 + 1);
          v7 = *(a2 + 2);
          while (1)
          {
            v156 = 0;
            if (v16 >= v7 || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
              {
                return 0;
              }
            }

            else
            {
              v156 = *v16;
              *(a2 + 1) = v16 + 1;
            }

            v137 = *(this + 46);
            if (v137 == *(this + 47))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, v137 + 1);
              v137 = *(this + 46);
            }

            v138 = v156;
            v139 = *(this + 22);
            *(this + 46) = v137 + 1;
            *(v139 + 4 * v137) = v138;
            v140 = *(this + 47) - *(this + 46);
            if (v140 >= 1)
            {
              v141 = v140 + 1;
              do
              {
                v142 = *(a2 + 1);
                v143 = *(a2 + 2);
                if (v142 >= v143 || *v142 != 96)
                {
                  break;
                }

                *(a2 + 1) = v142 + 1;
                if ((v142 + 1) >= v143 || v142[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                  {
                    return 0;
                  }
                }

                else
                {
                  v156 = v142[1];
                  *(a2 + 1) = v142 + 2;
                }

                v144 = *(this + 46);
                if (v144 >= *(this + 47))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                  v144 = *(this + 46);
                }

                v145 = v156;
                v146 = *(this + 22);
                *(this + 46) = v144 + 1;
                *(v146 + 4 * v144) = v145;
                --v141;
              }

              while (v141 > 1);
            }

LABEL_318:
            v10 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v10 >= v7)
            {
              goto LABEL_1;
            }

            v147 = *v10;
            if (v147 == 104)
            {
              v13 = (v10 + 1);
              *(a2 + 1) = v13;
LABEL_323:
              if (v13 >= v7 || (v148 = *v13, v148 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
                if (!result)
                {
                  return result;
                }

                v149 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 48) = v148;
                v149 = v13 + 1;
                *(a2 + 1) = v149;
              }

              *(this + 53) |= 0x1000u;
              if (v149 < v7 && *v149 == 112)
              {
                v15 = v149 + 1;
                *(a2 + 1) = v15;
LABEL_331:
                if (v15 >= v7 || (v150 = *v15, v150 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 49);
                  if (!result)
                  {
                    return result;
                  }

                  v151 = *(a2 + 1);
                  v7 = *(a2 + 2);
                }

                else
                {
                  *(this + 49) = v150;
                  v151 = v15 + 1;
                  *(a2 + 1) = v151;
                }

                *(this + 53) |= 0x2000u;
                if (v151 < v7 && *v151 == 120)
                {
                  v11 = v151 + 1;
                  *(a2 + 1) = v11;
LABEL_339:
                  if (v11 >= v7 || (v152 = *v11, v152 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 50);
                    if (!result)
                    {
                      return result;
                    }

                    v153 = *(a2 + 1);
                    v7 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 50) = v152;
                    v153 = (v11 + 1);
                    *(a2 + 1) = v153;
                  }

                  *(this + 53) |= 0x4000u;
                  if (v7 - v153 >= 2 && *v153 == 128 && v153[1] == 1)
                  {
                    v14 = (v153 + 2);
                    *(a2 + 1) = v14;
LABEL_348:
                    if (v14 >= v7 || (v154 = *v14, v154 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 51);
                      if (!result)
                      {
                        return result;
                      }

                      v155 = *(a2 + 1);
                      v7 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 51) = v154;
                      v155 = v14 + 1;
                      *(a2 + 1) = v155;
                    }

                    *(this + 53) |= 0x8000u;
                    if (v155 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                    {
                      *(a2 + 8) = 0;
                      result = 1;
                      *(a2 + 36) = 1;
                      return result;
                    }
                  }
                }
              }

              goto LABEL_1;
            }

            if (v147 != 96)
            {
              goto LABEL_1;
            }

LABEL_300:
            v16 = (v10 + 1);
            *(a2 + 1) = v16;
          }
        }

        if (v6 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 176);
          if (!result)
          {
            return result;
          }

          goto LABEL_318;
        }

LABEL_61:
        if (v6 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_323;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_331;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v11 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_339;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_348;
      default:
        goto LABEL_61;
    }
  }
}

void sub_2963A0218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothACIAudioLinkInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 212))
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

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 64) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 80) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(*(v5 + 96) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 104));
  }

  if (*(v5 + 120) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 112) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 120));
  }

  if (*(v5 + 136) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(*(v5 + 128) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 136));
  }

  if (*(v5 + 152) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(*(v5 + 144) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 152));
  }

  if (*(v5 + 168) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(*(v5 + 160) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 168));
  }

  if (*(v5 + 184) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(*(v5 + 176) + 4 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 184));
  }

  v17 = *(v5 + 212);
  if ((v17 & 0x1000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 192), a2, a4);
    v17 = *(v5 + 212);
    if ((v17 & 0x2000) == 0)
    {
LABEL_38:
      if ((v17 & 0x4000) == 0)
      {
        goto LABEL_39;
      }

LABEL_43:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 200), a2, a4);
      if ((*(v5 + 212) & 0x8000) == 0)
      {
        return this;
      }

      goto LABEL_44;
    }
  }

  else if ((v17 & 0x2000) == 0)
  {
    goto LABEL_38;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 196), a2, a4);
  v17 = *(v5 + 212);
  if ((v17 & 0x4000) != 0)
  {
    goto LABEL_43;
  }

LABEL_39:
  if ((v17 & 0x8000) == 0)
  {
    return this;
  }

LABEL_44:
  v18 = *(v5 + 204);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v18, a2, a4);
}

uint64_t awd::metrics::BluetoothACIAudioLinkInfo::ByteSize(awd::metrics::BluetoothACIAudioLinkInfo *this)
{
  v2 = *(this + 53);
  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xFF000) == 0)
  {
    goto LABEL_26;
  }

  if ((v2 & 0x1000) != 0)
  {
    v4 = *(this + 48);
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 53);
    }

    else
    {
      v5 = 2;
    }

    v3 += v5;
    if ((v2 & 0x2000) == 0)
    {
LABEL_7:
      if ((v2 & 0x4000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 0x2000) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(this + 49);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v7 = 2;
  }

  v3 += v7;
  if ((v2 & 0x4000) == 0)
  {
LABEL_8:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_18:
  v8 = *(this + 50);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v9 = 2;
  }

  v3 += v9;
  if ((v2 & 0x8000) != 0)
  {
LABEL_22:
    v10 = *(this + 51);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 2;
    }

    else
    {
      v11 = 3;
    }

    v3 += v11;
  }

LABEL_26:
  v81 = v3;
  v12 = *(this + 6);
  if (v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(*(this + 2) + 4 * v13);
      if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
        v12 = *(this + 6);
      }

      else
      {
        v16 = 1;
      }

      v14 += v16;
      ++v13;
    }

    while (v13 < v12);
  }

  v17 = *(this + 10);
  if (v17 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(*(this + 4) + 4 * v18);
      if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
        v17 = *(this + 10);
      }

      else
      {
        v21 = 1;
      }

      v19 += v21;
      ++v18;
    }

    while (v18 < v17);
  }

  v22 = *(this + 14);
  if (v22 < 1)
  {
    v24 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *(*(this + 6) + 4 * v23);
      if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
        v22 = *(this + 14);
      }

      else
      {
        v26 = 1;
      }

      v24 += v26;
      ++v23;
    }

    while (v23 < v22);
  }

  v27 = *(this + 18);
  if (v27 < 1)
  {
    v29 = 0;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = *(*(this + 8) + 4 * v28);
      if (v30 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
        v27 = *(this + 18);
      }

      else
      {
        v31 = 1;
      }

      v29 += v31;
      ++v28;
    }

    while (v28 < v27);
  }

  v80 = v12;
  v32 = *(this + 22);
  if (v32 < 1)
  {
    v34 = 0;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *(*(this + 10) + 4 * v33);
      if (v35 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
        v32 = *(this + 22);
      }

      else
      {
        v36 = 1;
      }

      v34 += v36;
      ++v33;
    }

    while (v33 < v32);
  }

  v73 = v32;
  v76 = v22;
  v37 = *(this + 26);
  if (v37 < 1)
  {
    v39 = 0;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    do
    {
      v40 = *(*(this + 12) + 4 * v38);
      if (v40 >= 0x80)
      {
        v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40);
        v37 = *(this + 26);
      }

      else
      {
        v41 = 1;
      }

      v39 += v41;
      ++v38;
    }

    while (v38 < v37);
  }

  v72 = v37;
  v79 = v14;
  v42 = *(this + 30);
  if (v42 < 1)
  {
    v44 = 0;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    do
    {
      v45 = *(*(this + 14) + 4 * v43);
      if (v45 >= 0x80)
      {
        v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
        v42 = *(this + 30);
      }

      else
      {
        v46 = 1;
      }

      v44 += v46;
      ++v43;
    }

    while (v43 < v42);
  }

  v71 = v42;
  v74 = v27;
  v47 = *(this + 34);
  if (v47 < 1)
  {
    v49 = 0;
  }

  else
  {
    v48 = 0;
    v49 = 0;
    do
    {
      v50 = *(*(this + 16) + 4 * v48);
      if (v50 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50);
        v47 = *(this + 34);
      }

      else
      {
        v51 = 1;
      }

      v49 += v51;
      ++v48;
    }

    while (v48 < v47);
  }

  v70 = v47;
  v78 = v17;
  v52 = *(this + 38);
  if (v52 < 1)
  {
    v54 = 0;
  }

  else
  {
    v53 = 0;
    v54 = 0;
    do
    {
      v55 = *(*(this + 18) + 4 * v53);
      if (v55 >= 0x80)
      {
        v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55);
        v52 = *(this + 38);
      }

      else
      {
        v56 = 1;
      }

      v54 += v56;
      ++v53;
    }

    while (v53 < v52);
  }

  v69 = v52;
  v77 = v19;
  v57 = *(this + 42);
  if (v57 < 1)
  {
    v59 = 0;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    do
    {
      v60 = *(*(this + 20) + 4 * v58);
      if (v60 >= 0x80)
      {
        v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60);
        v57 = *(this + 42);
      }

      else
      {
        v61 = 1;
      }

      v59 += v61;
      ++v58;
    }

    while (v58 < v57);
  }

  v75 = v24;
  v62 = *(this + 46);
  v68 = v57;
  if (v62 < 1)
  {
    v64 = 0;
  }

  else
  {
    v63 = 0;
    v64 = 0;
    do
    {
      v65 = *(*(this + 22) + 4 * v63);
      if (v65 >= 0x80)
      {
        v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65);
        v62 = *(this + 46);
      }

      else
      {
        v66 = 1;
      }

      v64 += v66;
      ++v63;
    }

    while (v63 < v62);
  }

  result = (v79 + v81 + v80 + v77 + v78 + v75 + v76 + v29 + v74 + v34 + v73 + v39 + v72 + v44 + v71 + v49 + v70 + v54 + v69 + v59 + v68 + v64 + v62);
  *(this + 52) = result;
  return result;
}

void awd::metrics::BluetoothACIAudioLinkInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothACIAudioLinkInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothACIAudioLinkInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothACIAudioLinkInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothACIAudioLinkInfo::CopyFrom(awd::metrics::BluetoothACIAudioLinkInfo *this, const awd::metrics::BluetoothACIAudioLinkInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothACIAudioLinkInfo::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothACIAudioLinkInfo::Swap(awd::metrics::BluetoothACIAudioLinkInfo *this, awd::metrics::BluetoothACIAudioLinkInfo *a2)
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
    v20 = *(a2 + 13);
    *(a2 + 12) = v19;
    v21 = *(this + 13);
    *(this + 13) = v20;
    *(a2 + 13) = v21;
    v22 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    v23 = *(a2 + 15);
    *(a2 + 14) = v22;
    v24 = *(this + 15);
    *(this + 15) = v23;
    *(a2 + 15) = v24;
    v25 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    v26 = *(a2 + 17);
    *(a2 + 16) = v25;
    v27 = *(this + 17);
    *(this + 17) = v26;
    *(a2 + 17) = v27;
    v28 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    v29 = *(a2 + 19);
    *(a2 + 18) = v28;
    v30 = *(this + 19);
    *(this + 19) = v29;
    *(a2 + 19) = v30;
    v31 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    v32 = *(a2 + 21);
    *(a2 + 20) = v31;
    v33 = *(this + 21);
    *(this + 21) = v32;
    *(a2 + 21) = v33;
    v34 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    result = *(a2 + 23);
    *(a2 + 22) = v34;
    v36 = *(this + 23);
    *(this + 23) = result;
    *(a2 + 23) = v36;
    LODWORD(v34) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v34;
    LODWORD(v34) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v34;
    LODWORD(v34) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v34;
    LODWORD(v34) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v34;
    LODWORD(v34) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v34;
    LODWORD(v34) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v34;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo::SharedCtor(uint64_t this)
{
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::BluetoothACIMagnetLinkInfo *awd::metrics::BluetoothACIMagnetLinkInfo::BluetoothACIMagnetLinkInfo(awd::metrics::BluetoothACIMagnetLinkInfo *this, const awd::metrics::BluetoothACIMagnetLinkInfo *a2)
{
  *this = &unk_2A1D4BD78;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  awd::metrics::BluetoothACIMagnetLinkInfo::MergeFrom(this, a2);
  return this;
}

void sub_2963A0E9C(_Unwind_Exception *a1)
{
  v3 = v1[12];
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  awd::metrics::BluetoothACIMagnetLinkInfo::BluetoothACIMagnetLinkInfo((v1 + 10), v1 + 8, v1 + 6, v1 + 4);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIMagnetLinkInfo::MergeFrom(awd::metrics::BluetoothACIMagnetLinkInfo *this, const awd::metrics::BluetoothACIMagnetLinkInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 10);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 10) + v4);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v5 = *(a2 + 14);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, *(this + 14) + v5);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
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

  v8 = *(a2 + 26);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 26) + v8);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v9 = *(a2 + 30);
  if (!v9)
  {
    goto LABEL_20;
  }

  if (v9)
  {
    v12 = *(a2 + 1);
    *(this + 30) |= 1u;
    *(this + 1) = v12;
    v9 = *(a2 + 30);
    if ((v9 & 2) == 0)
    {
LABEL_16:
      if ((v9 & 4) == 0)
      {
        goto LABEL_17;
      }

LABEL_25:
      v14 = *(a2 + 5);
      *(this + 30) |= 4u;
      *(this + 5) = v14;
      v9 = *(a2 + 30);
      if ((v9 & 8) == 0)
      {
LABEL_18:
        if ((v9 & 0x10) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      goto LABEL_26;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_16;
  }

  v13 = *(a2 + 4);
  *(this + 30) |= 2u;
  *(this + 4) = v13;
  v9 = *(a2 + 30);
  if ((v9 & 4) != 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  if ((v9 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_26:
  v15 = *(a2 + 6);
  *(this + 30) |= 8u;
  *(this + 6) = v15;
  v9 = *(a2 + 30);
  if ((v9 & 0x10) != 0)
  {
LABEL_19:
    v10 = *(a2 + 7);
    *(this + 30) |= 0x10u;
    *(this + 7) = v10;
    v9 = *(a2 + 30);
  }

LABEL_20:
  if ((v9 & 0x200) != 0)
  {
    v11 = *(a2 + 28);
    *(this + 30) |= 0x200u;
    *(this + 28) = v11;
  }
}

void sub_2963A1168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIMagnetLinkInfo::~BluetoothACIMagnetLinkInfo(awd::metrics::BluetoothACIMagnetLinkInfo *this)
{
  *this = &unk_2A1D4BD78;
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 10);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 8);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 6);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 4);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothACIMagnetLinkInfo::~BluetoothACIMagnetLinkInfo(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo::default_instance(awd::metrics::BluetoothACIMagnetLinkInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothACIMagnetLinkInfo::default_instance_;
  if (!awd::metrics::BluetoothACIMagnetLinkInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothACIMagnetLinkInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo::Clear(uint64_t this)
{
  v1 = *(this + 120);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  if ((v1 & 0x1FE00) != 0)
  {
    *(this + 112) = 0;
  }

  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 104) = 0;
  *(this + 120) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo::MergePartialFromCodedStream(awd::metrics::BluetoothACIMagnetLinkInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
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
                goto LABEL_52;
              }

              v12 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_67;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_52;
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

            *(this + 30) |= 1u;
            if (v15 < v9 && *v15 == 16)
            {
              v12 = v15 + 1;
              *(a2 + 1) = v12;
LABEL_67:
              if (v12 >= v9 || (v23 = *v12, v23 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                if (!result)
                {
                  return result;
                }

                v24 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 4) = v23;
                v24 = v12 + 1;
                *(a2 + 1) = v24;
              }

              *(this + 30) |= 2u;
              if (v24 < v9 && *v24 == 24)
              {
                v17 = v24 + 1;
                *(a2 + 1) = v17;
LABEL_75:
                if (v17 >= v9 || (v25 = *v17, v25 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                  if (!result)
                  {
                    return result;
                  }

                  v26 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 5) = v25;
                  v26 = v17 + 1;
                  *(a2 + 1) = v26;
                }

                *(this + 30) |= 4u;
                if (v26 < v9 && *v26 == 32)
                {
                  v16 = v26 + 1;
                  *(a2 + 1) = v16;
LABEL_83:
                  if (v16 >= v9 || (v27 = *v16, v27 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                    if (!result)
                    {
                      return result;
                    }

                    v28 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 6) = v27;
                    v28 = v16 + 1;
                    *(a2 + 1) = v28;
                  }

                  *(this + 30) |= 8u;
                  if (v28 < v9 && *v28 == 40)
                  {
                    v10 = v28 + 1;
                    *(a2 + 1) = v10;
                    goto LABEL_91;
                  }
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
                goto LABEL_52;
              }

              v17 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_75;
            }

            if (v6 == 4)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_52;
              }

              v16 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_83;
            }

            if (v6 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_52;
            }

            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
LABEL_91:
            if (v10 >= v9 || (v29 = *v10, v29 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v30 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v29;
              v30 = (v10 + 1);
              *(a2 + 1) = v30;
            }

            *(this + 30) |= 0x10u;
            if (v30 < v9)
            {
              v31 = *v30;
              while (v31 == 48)
              {
                v21 = (v30 + 1);
                *(a2 + 1) = v21;
LABEL_100:
                v88 = 0;
                if (v21 >= v9 || *v21 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v88))
                  {
                    return 0;
                  }
                }

                else
                {
                  v88 = *v21;
                  *(a2 + 1) = v21 + 1;
                }

                v32 = *(this + 26);
                if (v32 == *(this + 27))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v32 + 1);
                  v32 = *(this + 26);
                }

                v33 = v88;
                v34 = *(this + 12);
                *(this + 26) = v32 + 1;
                *(v34 + 4 * v32) = v33;
                v35 = *(this + 27) - *(this + 26);
                if (v35 >= 1)
                {
                  v36 = v35 + 1;
                  do
                  {
                    v37 = *(a2 + 1);
                    v38 = *(a2 + 2);
                    if (v37 >= v38 || *v37 != 48)
                    {
                      break;
                    }

                    *(a2 + 1) = v37 + 1;
                    if ((v37 + 1) >= v38 || v37[1] < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v88))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v88 = v37[1];
                      *(a2 + 1) = v37 + 2;
                    }

                    v39 = *(this + 26);
                    if (v39 >= *(this + 27))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v89);
                      v39 = *(this + 26);
                    }

                    v40 = v88;
                    v41 = *(this + 12);
                    *(this + 26) = v39 + 1;
                    *(v41 + 4 * v39) = v40;
                    --v36;
                  }

                  while (v36 > 1);
                }

LABEL_117:
                v30 = *(a2 + 1);
                v9 = *(a2 + 2);
                if (v30 >= v9)
                {
                  break;
                }

                v31 = *v30;
                if (v31 == 56)
                {
                  while (1)
                  {
                    v18 = (v30 + 1);
                    *(a2 + 1) = v18;
LABEL_120:
                    v88 = 0;
                    if (v18 >= v9 || *v18 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v88))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v88 = *v18;
                      *(a2 + 1) = v18 + 1;
                    }

                    v42 = *(this + 10);
                    if (v42 == *(this + 11))
                    {
                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v42 + 1);
                      v42 = *(this + 10);
                    }

                    v43 = v88;
                    v44 = *(this + 4);
                    *(this + 10) = v42 + 1;
                    *(v44 + 4 * v42) = v43;
                    v45 = *(this + 11) - *(this + 10);
                    if (v45 >= 1)
                    {
                      v46 = v45 + 1;
                      do
                      {
                        v47 = *(a2 + 1);
                        v48 = *(a2 + 2);
                        if (v47 >= v48 || *v47 != 56)
                        {
                          break;
                        }

                        *(a2 + 1) = v47 + 1;
                        if ((v47 + 1) >= v48 || v47[1] < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v88))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v88 = v47[1];
                          *(a2 + 1) = v47 + 2;
                        }

                        v49 = *(this + 10);
                        if (v49 >= *(this + 11))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v89);
                          v49 = *(this + 10);
                        }

                        v50 = v88;
                        v51 = *(this + 4);
                        *(this + 10) = v49 + 1;
                        *(v51 + 4 * v49) = v50;
                        --v46;
                      }

                      while (v46 > 1);
                    }

LABEL_137:
                    v30 = *(a2 + 1);
                    v9 = *(a2 + 2);
                    if (v30 >= v9)
                    {
                      goto LABEL_1;
                    }

                    v52 = *v30;
                    if (v52 == 64)
                    {
                      do
                      {
                        v20 = (v30 + 1);
                        *(a2 + 1) = v20;
LABEL_142:
                        v88 = 0;
                        if (v20 >= v9 || *v20 < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v88))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v88 = *v20;
                          *(a2 + 1) = v20 + 1;
                        }

                        v53 = *(this + 14);
                        if (v53 == *(this + 15))
                        {
                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v53 + 1);
                          v53 = *(this + 14);
                        }

                        v54 = v88;
                        v55 = *(this + 6);
                        *(this + 14) = v53 + 1;
                        *(v55 + 4 * v53) = v54;
                        v56 = *(this + 15) - *(this + 14);
                        if (v56 >= 1)
                        {
                          v57 = v56 + 1;
                          do
                          {
                            v58 = *(a2 + 1);
                            v59 = *(a2 + 2);
                            if (v58 >= v59 || *v58 != 64)
                            {
                              break;
                            }

                            *(a2 + 1) = v58 + 1;
                            if ((v58 + 1) >= v59 || v58[1] < 0)
                            {
                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v88))
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              v88 = v58[1];
                              *(a2 + 1) = v58 + 2;
                            }

                            v60 = *(this + 14);
                            if (v60 >= *(this + 15))
                            {
                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v89);
                              v60 = *(this + 14);
                            }

                            v61 = v88;
                            v62 = *(this + 6);
                            *(this + 14) = v60 + 1;
                            *(v62 + 4 * v60) = v61;
                            --v57;
                          }

                          while (v57 > 1);
                        }

LABEL_159:
                        v30 = *(a2 + 1);
                        v9 = *(a2 + 2);
                        if (v30 >= v9)
                        {
                          break;
                        }

                        v63 = *v30;
                        if (v63 == 72)
                        {
                          goto LABEL_163;
                        }
                      }

                      while (v63 == 64);
                      goto LABEL_1;
                    }

                    if (v52 != 56)
                    {
                      goto LABEL_1;
                    }
                  }
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 8)
        {
          switch(v6)
          {
            case 6u:
              if ((TagFallback & 7) == 0)
              {
                v21 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_100;
              }

              if (v7 == 2)
              {
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 96);
                if (!result)
                {
                  return result;
                }

                goto LABEL_117;
              }

              break;
            case 7u:
              if ((TagFallback & 7) == 0)
              {
                v18 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_120;
              }

              if (v7 == 2)
              {
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 32);
                if (!result)
                {
                  return result;
                }

                goto LABEL_137;
              }

              break;
            case 8u:
              if ((TagFallback & 7) == 0)
              {
                v20 = *(a2 + 1);
                v9 = *(a2 + 2);
                goto LABEL_142;
              }

              if (v7 == 2)
              {
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 48);
                if (!result)
                {
                  return result;
                }

                goto LABEL_159;
              }

              break;
          }

          goto LABEL_52;
        }

        if (v6 == 9)
        {
          break;
        }

        if (v6 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v19 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_186;
          }

          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 80);
            if (!result)
            {
              return result;
            }

            goto LABEL_203;
          }

          goto LABEL_52;
        }

        if (v6 != 11 || (TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_208:
        if (v11 >= v9 || (v86 = *v11, v86 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
          if (!result)
          {
            return result;
          }

          v87 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 28) = v86;
          v87 = v11 + 1;
          *(a2 + 1) = v87;
        }

        *(this + 30) |= 0x200u;
        if (v87 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      v22 = *(a2 + 1);
      v9 = *(a2 + 2);
      while (1)
      {
        v88 = 0;
        if (v22 >= v9 || *v22 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v88))
          {
            return 0;
          }
        }

        else
        {
          v88 = *v22;
          *(a2 + 1) = v22 + 1;
        }

        v64 = *(this + 18);
        if (v64 == *(this + 19))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v64 + 1);
          v64 = *(this + 18);
        }

        v65 = v88;
        v66 = *(this + 8);
        *(this + 18) = v64 + 1;
        *(v66 + 4 * v64) = v65;
        v67 = *(this + 19) - *(this + 18);
        if (v67 >= 1)
        {
          v68 = v67 + 1;
          do
          {
            v69 = *(a2 + 1);
            v70 = *(a2 + 2);
            if (v69 >= v70 || *v69 != 72)
            {
              break;
            }

            *(a2 + 1) = v69 + 1;
            if ((v69 + 1) >= v70 || v69[1] < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v88))
              {
                return 0;
              }
            }

            else
            {
              v88 = v69[1];
              *(a2 + 1) = v69 + 2;
            }

            v71 = *(this + 18);
            if (v71 >= *(this + 19))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v89);
              v71 = *(this + 18);
            }

            v72 = v88;
            v73 = *(this + 8);
            *(this + 18) = v71 + 1;
            *(v73 + 4 * v71) = v72;
            --v68;
          }

          while (v68 > 1);
        }

LABEL_181:
        v30 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v30 >= v9)
        {
          break;
        }

        v74 = *v30;
        if (v74 == 80)
        {
          while (1)
          {
            v19 = (v30 + 1);
            *(a2 + 1) = v19;
LABEL_186:
            v88 = 0;
            if (v19 >= v9 || *v19 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v88))
              {
                return 0;
              }
            }

            else
            {
              v88 = *v19;
              *(a2 + 1) = v19 + 1;
            }

            v75 = *(this + 22);
            if (v75 == *(this + 23))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, v75 + 1);
              v75 = *(this + 22);
            }

            v76 = v88;
            v77 = *(this + 10);
            *(this + 22) = v75 + 1;
            *(v77 + 4 * v75) = v76;
            v78 = *(this + 23) - *(this + 22);
            if (v78 >= 1)
            {
              v79 = v78 + 1;
              do
              {
                v80 = *(a2 + 1);
                v81 = *(a2 + 2);
                if (v80 >= v81 || *v80 != 80)
                {
                  break;
                }

                *(a2 + 1) = v80 + 1;
                if ((v80 + 1) >= v81 || v80[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v88))
                  {
                    return 0;
                  }
                }

                else
                {
                  v88 = v80[1];
                  *(a2 + 1) = v80 + 2;
                }

                v82 = *(this + 22);
                if (v82 >= *(this + 23))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v89);
                  v82 = *(this + 22);
                }

                v83 = v88;
                v84 = *(this + 10);
                *(this + 22) = v82 + 1;
                *(v84 + 4 * v82) = v83;
                --v79;
              }

              while (v79 > 1);
            }

LABEL_203:
            v30 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v30 >= v9)
            {
              goto LABEL_1;
            }

            v85 = *v30;
            if (v85 == 88)
            {
              v11 = (v30 + 1);
              *(a2 + 1) = v11;
              goto LABEL_208;
            }

            if (v85 != 80)
            {
              goto LABEL_1;
            }
          }
        }

        if (v74 != 72)
        {
          goto LABEL_1;
        }

LABEL_163:
        v22 = (v30 + 1);
        *(a2 + 1) = v22;
      }
    }

    if (v7 == 2)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 64);
      if (!result)
      {
        return result;
      }

      goto LABEL_181;
    }

LABEL_52:
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

void sub_2963A1E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 120);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 120);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 120);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 120);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  if ((*(v5 + 120) & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  }

LABEL_7:
  if (*(v5 + 104) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 96) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 104));
  }

  if (*(v5 + 40) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(*(v5 + 32) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 48) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(*(v5 + 64) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(*(v5 + 80) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 88));
  }

  if ((*(v5 + 121) & 2) != 0)
  {
    v12 = *(v5 + 112);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v12, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo::ByteSize(awd::metrics::BluetoothACIMagnetLinkInfo *this)
{
  v2 = *(this + 30);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 30);
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

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 30);
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_12:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 30);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v8 = *(this + 6);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 30);
  }

  else
  {
    v9 = 2;
  }

  v3 += v9;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_25:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 30);
  }

  else
  {
    v11 = 2;
  }

  v3 += v11;
  if ((v2 & 0x200) != 0)
  {
LABEL_29:
    v12 = *(this + 28);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    }

    else
    {
      v13 = 2;
    }

    v3 += v13;
  }

LABEL_33:
  v41 = v3;
  v14 = *(this + 10);
  if (v14 < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(*(this + 4) + 4 * v15);
      if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
        v14 = *(this + 10);
      }

      else
      {
        v18 = 1;
      }

      v16 += v18;
      ++v15;
    }

    while (v15 < v14);
  }

  v19 = *(this + 14);
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
      v22 = *(*(this + 6) + 4 * v20);
      if (v22 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
        v19 = *(this + 14);
      }

      else
      {
        v23 = 1;
      }

      v21 += v23;
      ++v20;
    }

    while (v20 < v19);
  }

  v24 = *(this + 18);
  if (v24 < 1)
  {
    v26 = 0;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = *(*(this + 8) + 4 * v25);
      if (v27 >= 0x80)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
        v24 = *(this + 18);
      }

      else
      {
        v28 = 1;
      }

      v26 += v28;
      ++v25;
    }

    while (v25 < v24);
  }

  v29 = *(this + 22);
  if (v29 < 1)
  {
    v31 = 0;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = *(*(this + 10) + 4 * v30);
      if (v32 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
        v29 = *(this + 22);
      }

      else
      {
        v33 = 1;
      }

      v31 += v33;
      ++v30;
    }

    while (v30 < v29);
  }

  v40 = v14;
  v34 = *(this + 26);
  if (v34 < 1)
  {
    v36 = 0;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    do
    {
      v37 = *(*(this + 12) + 4 * v35);
      if (v37 >= 0x80)
      {
        v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
        v34 = *(this + 26);
      }

      else
      {
        v38 = 1;
      }

      v36 += v38;
      ++v35;
    }

    while (v35 < v34);
  }

  result = (v16 + v41 + v40 + v21 + v19 + v26 + v24 + v31 + v29 + v36 + v34);
  *(this + 29) = result;
  return result;
}

void awd::metrics::BluetoothACIMagnetLinkInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothACIMagnetLinkInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothACIMagnetLinkInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothACIMagnetLinkInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothACIMagnetLinkInfo::CopyFrom(awd::metrics::BluetoothACIMagnetLinkInfo *this, const awd::metrics::BluetoothACIMagnetLinkInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothACIMagnetLinkInfo::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothACIMagnetLinkInfo::Swap(awd::metrics::BluetoothACIMagnetLinkInfo *this, awd::metrics::BluetoothACIMagnetLinkInfo *a2)
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
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v4 = *(a2 + 5);
    *(a2 + 4) = v3;
    v5 = *(this + 5);
    *(this + 5) = v4;
    *(a2 + 5) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v7 = *(a2 + 7);
    *(a2 + 6) = v6;
    v8 = *(this + 7);
    *(this + 7) = v7;
    *(a2 + 7) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v10 = *(a2 + 9);
    *(a2 + 8) = v9;
    v11 = *(this + 9);
    *(this + 9) = v10;
    *(a2 + 9) = v11;
    v12 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    v13 = *(a2 + 11);
    *(a2 + 10) = v12;
    v14 = *(this + 11);
    *(this + 11) = v13;
    *(a2 + 11) = v14;
    LODWORD(v12) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v12;
    v15 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    result = *(a2 + 13);
    *(a2 + 12) = v15;
    v17 = *(this + 13);
    *(this + 13) = result;
    *(a2 + 13) = v17;
    LODWORD(v15) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v15;
    LODWORD(v15) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v15;
  }

  return result;
}

uint64_t awd::metrics::BluetoothA2DPLowLatencyLinkInfo::SharedCtor(uint64_t this)
{
  *(this + 112) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::BluetoothA2DPLowLatencyLinkInfo *awd::metrics::BluetoothA2DPLowLatencyLinkInfo::BluetoothA2DPLowLatencyLinkInfo(awd::metrics::BluetoothA2DPLowLatencyLinkInfo *this, const awd::metrics::BluetoothA2DPLowLatencyLinkInfo *a2)
{
  *this = &unk_2A1D4BDF0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  awd::metrics::BluetoothA2DPLowLatencyLinkInfo::MergeFrom(this, a2);
  return this;
}

void sub_2963A268C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 12);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 10);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 6);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
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

void awd::metrics::BluetoothA2DPLowLatencyLinkInfo::MergeFrom(awd::metrics::BluetoothA2DPLowLatencyLinkInfo *this, const awd::metrics::BluetoothA2DPLowLatencyLinkInfo *a2)
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
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, *(this + 14) + v6);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v7 = *(a2 + 18);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 18) + v7);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v8 = *(a2 + 22);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, *(this + 22) + v8);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v9 = *(a2 + 26);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 26) + v9);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  if (*(a2 + 116))
  {
    v10 = *(a2 + 1);
    *(this + 29) |= 1u;
    *(this + 1) = v10;
  }
}

void sub_2963A2940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothA2DPLowLatencyLinkInfo::~BluetoothA2DPLowLatencyLinkInfo(awd::metrics::BluetoothA2DPLowLatencyLinkInfo *this)
{
  *this = &unk_2A1D4BDF0;
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 10);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 8);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 6);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
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
  awd::metrics::BluetoothA2DPLowLatencyLinkInfo::~BluetoothA2DPLowLatencyLinkInfo(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothA2DPLowLatencyLinkInfo::default_instance(awd::metrics::BluetoothA2DPLowLatencyLinkInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothA2DPLowLatencyLinkInfo::default_instance_;
  if (!awd::metrics::BluetoothA2DPLowLatencyLinkInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothA2DPLowLatencyLinkInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothA2DPLowLatencyLinkInfo::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothA2DPLowLatencyLinkInfo::MergePartialFromCodedStream(awd::metrics::BluetoothA2DPLowLatencyLinkInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 48);
              if (!result)
              {
                return result;
              }

              goto LABEL_117;
            }
          }

          else if (v6 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_122;
            }

            if (v7 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 64);
              if (!result)
              {
                return result;
              }

              goto LABEL_139;
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
              goto LABEL_166;
            }

            if (v7 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 96);
              if (!result)
              {
                return result;
              }

              goto LABEL_183;
            }
          }

          goto LABEL_41;
        }

        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 80);
            if (!result)
            {
              return result;
            }

            goto LABEL_161;
          }

          goto LABEL_41;
        }

        v14 = *(a2 + 1);
        v9 = *(a2 + 2);
        while (1)
        {
          v84 = 0;
          if (v14 >= v9 || *v14 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
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
          if (v63 == *(this + 23))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, v63 + 1);
            v63 = *(this + 22);
          }

          v64 = v84;
          v65 = *(this + 10);
          *(this + 22) = v63 + 1;
          *(v65 + 4 * v63) = v64;
          v66 = *(this + 23) - *(this + 22);
          if (v66 >= 1)
          {
            v67 = v66 + 1;
            do
            {
              v68 = *(a2 + 1);
              v69 = *(a2 + 2);
              if (v68 >= v69 || *v68 != 48)
              {
                break;
              }

              *(a2 + 1) = v68 + 1;
              if ((v68 + 1) >= v69 || v68[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
                {
                  return 0;
                }
              }

              else
              {
                v84 = v68[1];
                *(a2 + 1) = v68 + 2;
              }

              v70 = *(this + 22);
              if (v70 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v85);
                v70 = *(this + 22);
              }

              v71 = v84;
              v72 = *(this + 10);
              *(this + 22) = v70 + 1;
              *(v72 + 4 * v70) = v71;
              --v67;
            }

            while (v67 > 1);
          }

LABEL_161:
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
LABEL_166:
              v84 = 0;
              if (v16 >= v9 || *v16 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
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
              if (v74 == *(this + 27))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v74 + 1);
                v74 = *(this + 26);
              }

              v75 = v84;
              v76 = *(this + 12);
              *(this + 26) = v74 + 1;
              *(v76 + 4 * v74) = v75;
              v77 = *(this + 27) - *(this + 26);
              if (v77 >= 1)
              {
                v78 = v77 + 1;
                do
                {
                  v79 = *(a2 + 1);
                  v80 = *(a2 + 2);
                  if (v79 >= v80 || *v79 != 56)
                  {
                    break;
                  }

                  *(a2 + 1) = v79 + 1;
                  if ((v79 + 1) >= v80 || v79[1] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v84 = v79[1];
                    *(a2 + 1) = v79 + 2;
                  }

                  v81 = *(this + 26);
                  if (v81 >= *(this + 27))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v85);
                    v81 = *(this + 26);
                  }

                  v82 = v84;
                  v83 = *(this + 12);
                  *(this + 26) = v81 + 1;
                  *(v83 + 4 * v81) = v82;
                  --v78;
                }

                while (v78 > 1);
              }

LABEL_183:
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

LABEL_143:
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
          v84 = 0;
          if (v18 >= v9 || *v18 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
            {
              return 0;
            }
          }

          else
          {
            v84 = *v18;
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
                v84 = v25[1];
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
              v84 = 0;
              if (v17 >= v9 || *v17 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
                {
                  return 0;
                }
              }

              else
              {
                v84 = *v17;
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
                    v84 = v35[1];
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
                  if (v13 >= v9 || *v13 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
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
                  if (v41 == *(this + 15))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v41 + 1);
                    v41 = *(this + 14);
                  }

                  v42 = v84;
                  v43 = *(this + 6);
                  *(this + 14) = v41 + 1;
                  *(v43 + 4 * v41) = v42;
                  v44 = *(this + 15) - *(this + 14);
                  if (v44 >= 1)
                  {
                    v45 = v44 + 1;
                    do
                    {
                      v46 = *(a2 + 1);
                      v47 = *(a2 + 2);
                      if (v46 >= v47 || *v46 != 32)
                      {
                        break;
                      }

                      *(a2 + 1) = v46 + 1;
                      if ((v46 + 1) >= v47 || v46[1] < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v84 = v46[1];
                        *(a2 + 1) = v46 + 2;
                      }

                      v48 = *(this + 14);
                      if (v48 >= *(this + 15))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v85);
                        v48 = *(this + 14);
                      }

                      v49 = v84;
                      v50 = *(this + 6);
                      *(this + 14) = v48 + 1;
                      *(v50 + 4 * v48) = v49;
                      --v45;
                    }

                    while (v45 > 1);
                  }

LABEL_117:
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
LABEL_122:
                      v84 = 0;
                      if (v15 >= v9 || *v15 < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
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
                      if (v52 == *(this + 19))
                      {
                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v52 + 1);
                        v52 = *(this + 18);
                      }

                      v53 = v84;
                      v54 = *(this + 8);
                      *(this + 18) = v52 + 1;
                      *(v54 + 4 * v52) = v53;
                      v55 = *(this + 19) - *(this + 18);
                      if (v55 >= 1)
                      {
                        v56 = v55 + 1;
                        do
                        {
                          v57 = *(a2 + 1);
                          v58 = *(a2 + 2);
                          if (v57 >= v58 || *v57 != 40)
                          {
                            break;
                          }

                          *(a2 + 1) = v57 + 1;
                          if ((v57 + 1) >= v58 || v57[1] < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v84))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v84 = v57[1];
                            *(a2 + 1) = v57 + 2;
                          }

                          v59 = *(this + 18);
                          if (v59 >= *(this + 19))
                          {
                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v85);
                            v59 = *(this + 18);
                          }

                          v60 = v84;
                          v61 = *(this + 8);
                          *(this + 18) = v59 + 1;
                          *(v61 + 4 * v59) = v60;
                          --v56;
                        }

                        while (v56 > 1);
                      }

LABEL_139:
                      v12 = *(a2 + 1);
                      v9 = *(a2 + 2);
                      if (v12 >= v9)
                      {
                        break;
                      }

                      v62 = *v12;
                      if (v62 == 48)
                      {
                        goto LABEL_143;
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

void sub_2963A3598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothA2DPLowLatencyLinkInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 64) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 80) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(*(v5 + 96) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 104));
  }

  return this;
}

uint64_t awd::metrics::BluetoothA2DPLowLatencyLinkInfo::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 116))
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v36 = 0;
  }

  v2 = *(this + 6);
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
      v5 = *(this[2] + v3);
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
        v2 = *(this + 6);
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

  v7 = *(this + 10);
  if (v7 < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(this[4] + v8);
      if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
        v7 = *(this + 10);
      }

      else
      {
        v11 = 1;
      }

      v9 += v11;
      ++v8;
    }

    while (v8 < v7);
  }

  v12 = *(this + 14);
  if (v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(this[6] + v13);
      if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
        v12 = *(this + 14);
      }

      else
      {
        v16 = 1;
      }

      v14 += v16;
      ++v13;
    }

    while (v13 < v12);
  }

  v17 = *(this + 18);
  if (v17 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(this[8] + v18);
      if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
        v17 = *(this + 18);
      }

      else
      {
        v21 = 1;
      }

      v19 += v21;
      ++v18;
    }

    while (v18 < v17);
  }

  v34 = v7;
  v35 = v2;
  v22 = *(this + 22);
  if (v22 < 1)
  {
    v24 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *(this[10] + v23);
      if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
        v22 = *(this + 22);
      }

      else
      {
        v26 = 1;
      }

      v24 += v26;
      ++v23;
    }

    while (v23 < v22);
  }

  v33 = v12;
  v27 = *(this + 26);
  if (v27 < 1)
  {
    v29 = 0;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = *(this[12] + v28);
      if (v30 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
        v27 = *(this + 26);
      }

      else
      {
        v31 = 1;
      }

      v29 += v31;
      ++v28;
    }

    while (v28 < v27);
  }

  result = (v4 + v36 + v35 + v9 + v34 + v14 + v33 + v19 + v17 + v24 + v22 + v29 + v27);
  *(this + 28) = result;
  return result;
}

void awd::metrics::BluetoothA2DPLowLatencyLinkInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothA2DPLowLatencyLinkInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothA2DPLowLatencyLinkInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothA2DPLowLatencyLinkInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothA2DPLowLatencyLinkInfo::CopyFrom(awd::metrics::BluetoothA2DPLowLatencyLinkInfo *this, const awd::metrics::BluetoothA2DPLowLatencyLinkInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothA2DPLowLatencyLinkInfo::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothA2DPLowLatencyLinkInfo::Swap(awd::metrics::BluetoothA2DPLowLatencyLinkInfo *this, awd::metrics::BluetoothA2DPLowLatencyLinkInfo *a2)
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

void *awd::metrics::BluetoothACIAudioVoiceLinkInfo1::SharedCtor(void *this)
{
  this[1] = 0;
  this[25] = 0;
  this[26] = 0;
  this[24] = 0;
  return this;
}

awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *awd::metrics::BluetoothACIAudioVoiceLinkInfo1::BluetoothACIAudioVoiceLinkInfo1(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this, const awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *a2)
{
  *this = &unk_2A1D4BE68;
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
  awd::metrics::BluetoothACIAudioVoiceLinkInfo1::MergeFrom(this, a2);
  return this;
}

void sub_2963A3CAC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 22);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 20);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 18);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 14);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 12);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 10);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(v1 + 8);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(v1 + 6);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(v1 + 4);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 2);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIAudioVoiceLinkInfo1::MergeFrom(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this, const awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
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

  v7 = *(a2 + 18);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 18) + v7);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v8 = *(a2 + 22);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, *(this + 22) + v8);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v9 = *(a2 + 26);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 26) + v9);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v10 = *(a2 + 30);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 14, *(this + 30) + v10);
    memcpy((*(this + 14) + 4 * *(this + 30)), *(a2 + 14), 4 * *(a2 + 30));
    *(this + 30) += *(a2 + 30);
  }

  v11 = *(a2 + 34);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 34) + v11);
    memcpy((*(this + 16) + 4 * *(this + 34)), *(a2 + 16), 4 * *(a2 + 34));
    *(this + 34) += *(a2 + 34);
  }

  v12 = *(a2 + 38);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, *(this + 38) + v12);
    memcpy((*(this + 18) + 4 * *(this + 38)), *(a2 + 18), 4 * *(a2 + 38));
    *(this + 38) += *(a2 + 38);
  }

  v13 = *(a2 + 42);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, *(this + 42) + v13);
    memcpy((*(this + 20) + 4 * *(this + 42)), *(a2 + 20), 4 * *(a2 + 42));
    *(this + 42) += *(a2 + 42);
  }

  v14 = *(a2 + 46);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, *(this + 46) + v14);
    memcpy((*(this + 22) + 4 * *(this + 46)), *(a2 + 22), 4 * *(a2 + 46));
    *(this + 46) += *(a2 + 46);
  }

  v15 = *(a2 + 53);
  if (v15)
  {
    v16 = *(a2 + 1);
    *(this + 53) |= 1u;
    *(this + 1) = v16;
    v15 = *(a2 + 53);
  }

  if ((v15 & 0xFF000) != 0)
  {
    if ((v15 & 0x1000) != 0)
    {
      v18 = *(a2 + 48);
      *(this + 53) |= 0x1000u;
      *(this + 48) = v18;
      v15 = *(a2 + 53);
      if ((v15 & 0x2000) == 0)
      {
LABEL_30:
        if ((v15 & 0x4000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
      }
    }

    else if ((v15 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    v19 = *(a2 + 49);
    *(this + 53) |= 0x2000u;
    *(this + 49) = v19;
    v15 = *(a2 + 53);
    if ((v15 & 0x4000) == 0)
    {
LABEL_31:
      if ((v15 & 0x8000) == 0)
      {
        return;
      }

      goto LABEL_32;
    }

LABEL_36:
    v20 = *(a2 + 50);
    *(this + 53) |= 0x4000u;
    *(this + 50) = v20;
    if ((*(a2 + 53) & 0x8000) == 0)
    {
      return;
    }

LABEL_32:
    v17 = *(a2 + 51);
    *(this + 53) |= 0x8000u;
    *(this + 51) = v17;
  }
}

void sub_2963A418C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIAudioVoiceLinkInfo1::~BluetoothACIAudioVoiceLinkInfo1(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this)
{
  *this = &unk_2A1D4BE68;
  v2 = *(this + 22);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 20);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 18);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 16);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 14);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 12);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 10);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(this + 8);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 6);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(this + 4);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(this + 2);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothACIAudioVoiceLinkInfo1::~BluetoothACIAudioVoiceLinkInfo1(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo1::default_instance(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothACIAudioVoiceLinkInfo1::default_instance_;
  if (!awd::metrics::BluetoothACIAudioVoiceLinkInfo1::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothACIAudioVoiceLinkInfo1::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo1::Clear(uint64_t this)
{
  v1 = *(this + 212);
  if (v1)
  {
    *(this + 8) = 0;
  }

  if ((v1 & 0xFF000) != 0)
  {
    *(this + 192) = 0;
    *(this + 200) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 104) = 0;
  *(this + 120) = 0;
  *(this + 136) = 0;
  *(this + 152) = 0;
  *(this + 168) = 0;
  *(this + 184) = 0;
  *(this + 212) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo1::MergePartialFromCodedStream(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_61;
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
          v10 = (v8 + 1);
          *(a2 + 1) = v10;
        }

        *(this + 53) |= 1u;
        if (v10 >= v7)
        {
          continue;
        }

        v27 = *v10;
        goto LABEL_81;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 16);
            if (!result)
            {
              return result;
            }

            goto LABEL_100;
          }

          goto LABEL_61;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v22 >= v7 || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v22;
            *(a2 + 1) = v22 + 1;
          }

          v28 = *(this + 6);
          if (v28 == *(this + 7))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v28 + 1);
            v28 = *(this + 6);
          }

          v29 = v156;
          v30 = *(this + 2);
          *(this + 6) = v28 + 1;
          *(v30 + 4 * v28) = v29;
          v31 = *(this + 7) - *(this + 6);
          if (v31 >= 1)
          {
            v32 = v31 + 1;
            do
            {
              v33 = *(a2 + 1);
              v34 = *(a2 + 2);
              if (v33 >= v34 || *v33 != 16)
              {
                break;
              }

              *(a2 + 1) = v33 + 1;
              if ((v33 + 1) >= v34 || v33[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v33[1];
                *(a2 + 1) = v33 + 2;
              }

              v35 = *(this + 6);
              if (v35 >= *(this + 7))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v35 = *(this + 6);
              }

              v36 = v156;
              v37 = *(this + 2);
              *(this + 6) = v35 + 1;
              *(v37 + 4 * v35) = v36;
              --v32;
            }

            while (v32 > 1);
          }

LABEL_100:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v27 = *v10;
          if (v27 == 24)
          {
            goto LABEL_102;
          }

LABEL_81:
          if (v27 != 16)
          {
            goto LABEL_1;
          }

          v22 = (v10 + 1);
          *(a2 + 1) = v22;
        }

      case 3u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 32);
            if (!result)
            {
              return result;
            }

            goto LABEL_120;
          }

          goto LABEL_61;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v19 >= v7 || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v19;
            *(a2 + 1) = v19 + 1;
          }

          v38 = *(this + 10);
          if (v38 == *(this + 11))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v38 + 1);
            v38 = *(this + 10);
          }

          v39 = v156;
          v40 = *(this + 4);
          *(this + 10) = v38 + 1;
          *(v40 + 4 * v38) = v39;
          v41 = *(this + 11) - *(this + 10);
          if (v41 >= 1)
          {
            v42 = v41 + 1;
            do
            {
              v43 = *(a2 + 1);
              v44 = *(a2 + 2);
              if (v43 >= v44 || *v43 != 24)
              {
                break;
              }

              *(a2 + 1) = v43 + 1;
              if ((v43 + 1) >= v44 || v43[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v43[1];
                *(a2 + 1) = v43 + 2;
              }

              v45 = *(this + 10);
              if (v45 >= *(this + 11))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v45 = *(this + 10);
              }

              v46 = v156;
              v47 = *(this + 4);
              *(this + 10) = v45 + 1;
              *(v47 + 4 * v45) = v46;
              --v42;
            }

            while (v42 > 1);
          }

LABEL_120:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v48 = *v10;
          if (v48 == 32)
          {
            goto LABEL_124;
          }

          if (v48 != 24)
          {
            goto LABEL_1;
          }

LABEL_102:
          v19 = (v10 + 1);
          *(a2 + 1) = v19;
        }

      case 4u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 48);
            if (!result)
            {
              return result;
            }

            goto LABEL_142;
          }

          goto LABEL_61;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v20 >= v7 || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v20;
            *(a2 + 1) = v20 + 1;
          }

          v49 = *(this + 14);
          if (v49 == *(this + 15))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v49 + 1);
            v49 = *(this + 14);
          }

          v50 = v156;
          v51 = *(this + 6);
          *(this + 14) = v49 + 1;
          *(v51 + 4 * v49) = v50;
          v52 = *(this + 15) - *(this + 14);
          if (v52 >= 1)
          {
            v53 = v52 + 1;
            do
            {
              v54 = *(a2 + 1);
              v55 = *(a2 + 2);
              if (v54 >= v55 || *v54 != 32)
              {
                break;
              }

              *(a2 + 1) = v54 + 1;
              if ((v54 + 1) >= v55 || v54[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v54[1];
                *(a2 + 1) = v54 + 2;
              }

              v56 = *(this + 14);
              if (v56 >= *(this + 15))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v56 = *(this + 14);
              }

              v57 = v156;
              v58 = *(this + 6);
              *(this + 14) = v56 + 1;
              *(v58 + 4 * v56) = v57;
              --v53;
            }

            while (v53 > 1);
          }

LABEL_142:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v59 = *v10;
          if (v59 == 40)
          {
            goto LABEL_146;
          }

          if (v59 != 32)
          {
            goto LABEL_1;
          }

LABEL_124:
          v20 = (v10 + 1);
          *(a2 + 1) = v20;
        }

      case 5u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 64);
            if (!result)
            {
              return result;
            }

            goto LABEL_164;
          }

          goto LABEL_61;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v17 >= v7 || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v17;
            *(a2 + 1) = v17 + 1;
          }

          v60 = *(this + 18);
          if (v60 == *(this + 19))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v60 + 1);
            v60 = *(this + 18);
          }

          v61 = v156;
          v62 = *(this + 8);
          *(this + 18) = v60 + 1;
          *(v62 + 4 * v60) = v61;
          v63 = *(this + 19) - *(this + 18);
          if (v63 >= 1)
          {
            v64 = v63 + 1;
            do
            {
              v65 = *(a2 + 1);
              v66 = *(a2 + 2);
              if (v65 >= v66 || *v65 != 40)
              {
                break;
              }

              *(a2 + 1) = v65 + 1;
              if ((v65 + 1) >= v66 || v65[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v65[1];
                *(a2 + 1) = v65 + 2;
              }

              v67 = *(this + 18);
              if (v67 >= *(this + 19))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v67 = *(this + 18);
              }

              v68 = v156;
              v69 = *(this + 8);
              *(this + 18) = v67 + 1;
              *(v69 + 4 * v67) = v68;
              --v64;
            }

            while (v64 > 1);
          }

LABEL_164:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v70 = *v10;
          if (v70 == 48)
          {
            goto LABEL_168;
          }

          if (v70 != 40)
          {
            goto LABEL_1;
          }

LABEL_146:
          v17 = (v10 + 1);
          *(a2 + 1) = v17;
        }

      case 6u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 80);
            if (!result)
            {
              return result;
            }

            goto LABEL_186;
          }

          goto LABEL_61;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v23 >= v7 || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v23;
            *(a2 + 1) = v23 + 1;
          }

          v71 = *(this + 22);
          if (v71 == *(this + 23))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, v71 + 1);
            v71 = *(this + 22);
          }

          v72 = v156;
          v73 = *(this + 10);
          *(this + 22) = v71 + 1;
          *(v73 + 4 * v71) = v72;
          v74 = *(this + 23) - *(this + 22);
          if (v74 >= 1)
          {
            v75 = v74 + 1;
            do
            {
              v76 = *(a2 + 1);
              v77 = *(a2 + 2);
              if (v76 >= v77 || *v76 != 48)
              {
                break;
              }

              *(a2 + 1) = v76 + 1;
              if ((v76 + 1) >= v77 || v76[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v76[1];
                *(a2 + 1) = v76 + 2;
              }

              v78 = *(this + 22);
              if (v78 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v78 = *(this + 22);
              }

              v79 = v156;
              v80 = *(this + 10);
              *(this + 22) = v78 + 1;
              *(v80 + 4 * v78) = v79;
              --v75;
            }

            while (v75 > 1);
          }

LABEL_186:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v81 = *v10;
          if (v81 == 56)
          {
            goto LABEL_190;
          }

          if (v81 != 48)
          {
            goto LABEL_1;
          }

LABEL_168:
          v23 = (v10 + 1);
          *(a2 + 1) = v23;
        }

      case 7u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 96);
            if (!result)
            {
              return result;
            }

            goto LABEL_208;
          }

          goto LABEL_61;
        }

        v24 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v24 >= v7 || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v82 = *(this + 26);
          if (v82 == *(this + 27))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v82 + 1);
            v82 = *(this + 26);
          }

          v83 = v156;
          v84 = *(this + 12);
          *(this + 26) = v82 + 1;
          *(v84 + 4 * v82) = v83;
          v85 = *(this + 27) - *(this + 26);
          if (v85 >= 1)
          {
            v86 = v85 + 1;
            do
            {
              v87 = *(a2 + 1);
              v88 = *(a2 + 2);
              if (v87 >= v88 || *v87 != 56)
              {
                break;
              }

              *(a2 + 1) = v87 + 1;
              if ((v87 + 1) >= v88 || v87[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v87[1];
                *(a2 + 1) = v87 + 2;
              }

              v89 = *(this + 26);
              if (v89 >= *(this + 27))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v89 = *(this + 26);
              }

              v90 = v156;
              v91 = *(this + 12);
              *(this + 26) = v89 + 1;
              *(v91 + 4 * v89) = v90;
              --v86;
            }

            while (v86 > 1);
          }

LABEL_208:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v92 = *v10;
          if (v92 == 64)
          {
            goto LABEL_212;
          }

          if (v92 != 56)
          {
            goto LABEL_1;
          }

LABEL_190:
          v24 = (v10 + 1);
          *(a2 + 1) = v24;
        }

      case 8u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 112);
            if (!result)
            {
              return result;
            }

            goto LABEL_230;
          }

          goto LABEL_61;
        }

        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v21 >= v7 || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v21;
            *(a2 + 1) = v21 + 1;
          }

          v93 = *(this + 30);
          if (v93 == *(this + 31))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 14, v93 + 1);
            v93 = *(this + 30);
          }

          v94 = v156;
          v95 = *(this + 14);
          *(this + 30) = v93 + 1;
          *(v95 + 4 * v93) = v94;
          v96 = *(this + 31) - *(this + 30);
          if (v96 >= 1)
          {
            v97 = v96 + 1;
            do
            {
              v98 = *(a2 + 1);
              v99 = *(a2 + 2);
              if (v98 >= v99 || *v98 != 64)
              {
                break;
              }

              *(a2 + 1) = v98 + 1;
              if ((v98 + 1) >= v99 || v98[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v98[1];
                *(a2 + 1) = v98 + 2;
              }

              v100 = *(this + 30);
              if (v100 >= *(this + 31))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v100 = *(this + 30);
              }

              v101 = v156;
              v102 = *(this + 14);
              *(this + 30) = v100 + 1;
              *(v102 + 4 * v100) = v101;
              --v97;
            }

            while (v97 > 1);
          }

LABEL_230:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v103 = *v10;
          if (v103 == 72)
          {
            goto LABEL_234;
          }

          if (v103 != 64)
          {
            goto LABEL_1;
          }

LABEL_212:
          v21 = (v10 + 1);
          *(a2 + 1) = v21;
        }

      case 9u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 128);
            if (!result)
            {
              return result;
            }

            goto LABEL_252;
          }

          goto LABEL_61;
        }

        v26 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v26 >= v7 || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v26;
            *(a2 + 1) = v26 + 1;
          }

          v104 = *(this + 34);
          if (v104 == *(this + 35))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v104 + 1);
            v104 = *(this + 34);
          }

          v105 = v156;
          v106 = *(this + 16);
          *(this + 34) = v104 + 1;
          *(v106 + 4 * v104) = v105;
          v107 = *(this + 35) - *(this + 34);
          if (v107 >= 1)
          {
            v108 = v107 + 1;
            do
            {
              v109 = *(a2 + 1);
              v110 = *(a2 + 2);
              if (v109 >= v110 || *v109 != 72)
              {
                break;
              }

              *(a2 + 1) = v109 + 1;
              if ((v109 + 1) >= v110 || v109[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v109[1];
                *(a2 + 1) = v109 + 2;
              }

              v111 = *(this + 34);
              if (v111 >= *(this + 35))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v111 = *(this + 34);
              }

              v112 = v156;
              v113 = *(this + 16);
              *(this + 34) = v111 + 1;
              *(v113 + 4 * v111) = v112;
              --v108;
            }

            while (v108 > 1);
          }

LABEL_252:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v114 = *v10;
          if (v114 == 80)
          {
            goto LABEL_256;
          }

          if (v114 != 72)
          {
            goto LABEL_1;
          }

LABEL_234:
          v26 = (v10 + 1);
          *(a2 + 1) = v26;
        }

      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 144);
            if (!result)
            {
              return result;
            }

            goto LABEL_274;
          }

          goto LABEL_61;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v18 >= v7 || *v18 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v18;
            *(a2 + 1) = v18 + 1;
          }

          v115 = *(this + 38);
          if (v115 == *(this + 39))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, v115 + 1);
            v115 = *(this + 38);
          }

          v116 = v156;
          v117 = *(this + 18);
          *(this + 38) = v115 + 1;
          *(v117 + 4 * v115) = v116;
          v118 = *(this + 39) - *(this + 38);
          if (v118 >= 1)
          {
            v119 = v118 + 1;
            do
            {
              v120 = *(a2 + 1);
              v121 = *(a2 + 2);
              if (v120 >= v121 || *v120 != 80)
              {
                break;
              }

              *(a2 + 1) = v120 + 1;
              if ((v120 + 1) >= v121 || v120[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v120[1];
                *(a2 + 1) = v120 + 2;
              }

              v122 = *(this + 38);
              if (v122 >= *(this + 39))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v122 = *(this + 38);
              }

              v123 = v156;
              v124 = *(this + 18);
              *(this + 38) = v122 + 1;
              *(v124 + 4 * v122) = v123;
              --v119;
            }

            while (v119 > 1);
          }

LABEL_274:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v125 = *v10;
          if (v125 == 88)
          {
            goto LABEL_278;
          }

          if (v125 != 80)
          {
            goto LABEL_1;
          }

LABEL_256:
          v18 = (v10 + 1);
          *(a2 + 1) = v18;
        }

      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 160);
            if (!result)
            {
              return result;
            }

            goto LABEL_296;
          }

          goto LABEL_61;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v156 = 0;
          if (v25 >= v7 || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
            {
              return 0;
            }
          }

          else
          {
            v156 = *v25;
            *(a2 + 1) = v25 + 1;
          }

          v126 = *(this + 42);
          if (v126 == *(this + 43))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v126 + 1);
            v126 = *(this + 42);
          }

          v127 = v156;
          v128 = *(this + 20);
          *(this + 42) = v126 + 1;
          *(v128 + 4 * v126) = v127;
          v129 = *(this + 43) - *(this + 42);
          if (v129 >= 1)
          {
            v130 = v129 + 1;
            do
            {
              v131 = *(a2 + 1);
              v132 = *(a2 + 2);
              if (v131 >= v132 || *v131 != 88)
              {
                break;
              }

              *(a2 + 1) = v131 + 1;
              if ((v131 + 1) >= v132 || v131[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v131[1];
                *(a2 + 1) = v131 + 2;
              }

              v133 = *(this + 42);
              if (v133 >= *(this + 43))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v133 = *(this + 42);
              }

              v134 = v156;
              v135 = *(this + 20);
              *(this + 42) = v133 + 1;
              *(v135 + 4 * v133) = v134;
              --v130;
            }

            while (v130 > 1);
          }

LABEL_296:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v136 = *v10;
          if (v136 == 96)
          {
            goto LABEL_300;
          }

          if (v136 != 88)
          {
            goto LABEL_1;
          }

LABEL_278:
          v25 = (v10 + 1);
          *(a2 + 1) = v25;
        }

      case 0xCu:
        if ((TagFallback & 7) == 0)
        {
          v16 = *(a2 + 1);
          v7 = *(a2 + 2);
          while (1)
          {
            v156 = 0;
            if (v16 >= v7 || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
              {
                return 0;
              }
            }

            else
            {
              v156 = *v16;
              *(a2 + 1) = v16 + 1;
            }

            v137 = *(this + 46);
            if (v137 == *(this + 47))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, v137 + 1);
              v137 = *(this + 46);
            }

            v138 = v156;
            v139 = *(this + 22);
            *(this + 46) = v137 + 1;
            *(v139 + 4 * v137) = v138;
            v140 = *(this + 47) - *(this + 46);
            if (v140 >= 1)
            {
              v141 = v140 + 1;
              do
              {
                v142 = *(a2 + 1);
                v143 = *(a2 + 2);
                if (v142 >= v143 || *v142 != 96)
                {
                  break;
                }

                *(a2 + 1) = v142 + 1;
                if ((v142 + 1) >= v143 || v142[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                  {
                    return 0;
                  }
                }

                else
                {
                  v156 = v142[1];
                  *(a2 + 1) = v142 + 2;
                }

                v144 = *(this + 46);
                if (v144 >= *(this + 47))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                  v144 = *(this + 46);
                }

                v145 = v156;
                v146 = *(this + 22);
                *(this + 46) = v144 + 1;
                *(v146 + 4 * v144) = v145;
                --v141;
              }

              while (v141 > 1);
            }

LABEL_318:
            v10 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v10 >= v7)
            {
              goto LABEL_1;
            }

            v147 = *v10;
            if (v147 == 104)
            {
              v13 = (v10 + 1);
              *(a2 + 1) = v13;
LABEL_323:
              if (v13 >= v7 || (v148 = *v13, v148 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
                if (!result)
                {
                  return result;
                }

                v149 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 48) = v148;
                v149 = v13 + 1;
                *(a2 + 1) = v149;
              }

              *(this + 53) |= 0x1000u;
              if (v149 < v7 && *v149 == 112)
              {
                v15 = v149 + 1;
                *(a2 + 1) = v15;
LABEL_331:
                if (v15 >= v7 || (v150 = *v15, v150 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 49);
                  if (!result)
                  {
                    return result;
                  }

                  v151 = *(a2 + 1);
                  v7 = *(a2 + 2);
                }

                else
                {
                  *(this + 49) = v150;
                  v151 = v15 + 1;
                  *(a2 + 1) = v151;
                }

                *(this + 53) |= 0x2000u;
                if (v151 < v7 && *v151 == 120)
                {
                  v11 = v151 + 1;
                  *(a2 + 1) = v11;
LABEL_339:
                  if (v11 >= v7 || (v152 = *v11, v152 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 50);
                    if (!result)
                    {
                      return result;
                    }

                    v153 = *(a2 + 1);
                    v7 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 50) = v152;
                    v153 = (v11 + 1);
                    *(a2 + 1) = v153;
                  }

                  *(this + 53) |= 0x4000u;
                  if (v7 - v153 >= 2 && *v153 == 128 && v153[1] == 1)
                  {
                    v14 = (v153 + 2);
                    *(a2 + 1) = v14;
LABEL_348:
                    if (v14 >= v7 || (v154 = *v14, v154 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 51);
                      if (!result)
                      {
                        return result;
                      }

                      v155 = *(a2 + 1);
                      v7 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 51) = v154;
                      v155 = v14 + 1;
                      *(a2 + 1) = v155;
                    }

                    *(this + 53) |= 0x8000u;
                    if (v155 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                    {
                      *(a2 + 8) = 0;
                      result = 1;
                      *(a2 + 36) = 1;
                      return result;
                    }
                  }
                }
              }

              goto LABEL_1;
            }

            if (v147 != 96)
            {
              goto LABEL_1;
            }

LABEL_300:
            v16 = (v10 + 1);
            *(a2 + 1) = v16;
          }
        }

        if (v6 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 176);
          if (!result)
          {
            return result;
          }

          goto LABEL_318;
        }

LABEL_61:
        if (v6 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_323;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_331;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v11 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_339;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_348;
      default:
        goto LABEL_61;
    }
  }
}