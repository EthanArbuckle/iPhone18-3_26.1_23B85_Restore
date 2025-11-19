uint64_t awd::metrics::BluetoothAccessoryCaseCharging::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 128);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[32];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[32];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[32];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[10], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[11], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[12], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[13], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v5[14], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, v5[15], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, v5[16], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xF, v5[17], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x10, v5[18], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v5[19], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, v5[20], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, v5[21], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, v5[22], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x15, v5[23], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x16, v5[24], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, v5[25], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x18, v5[26], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x19, v5[27], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_56:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, v5[29], a2, a4);
    if ((v5[32] & 0x8000000) == 0)
    {
      return this;
    }

    goto LABEL_57;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, v5[28], a2, a4);
  v6 = v5[32];
  if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_56;
  }

LABEL_28:
  if ((v6 & 0x8000000) == 0)
  {
    return this;
  }

LABEL_57:
  v7 = v5[30];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothAccessoryCaseCharging::ByteSize(awd::metrics::BluetoothAccessoryCaseCharging *this)
{
  v2 = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 32);
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
    v2 = *(this + 32);
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
      v2 = *(this + 32);
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
    v2 = *(this + 32);
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
    v2 = *(this + 32);
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
    v2 = *(this + 32);
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
    v2 = *(this + 32);
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
      v2 = *(this + 32);
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
    goto LABEL_88;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = *(this + 11);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v2 = *(this + 32);
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
    v2 = *(this + 32);
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
      goto LABEL_47;
    }

    goto LABEL_64;
  }

LABEL_60:
  v22 = *(this + 13);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 32);
  }

  else
  {
    v23 = 2;
  }

  v3 = (v23 + v3);
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
    v2 = *(this + 32);
  }

  else
  {
    v25 = 2;
  }

  v3 = (v25 + v3);
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
    v2 = *(this + 32);
  }

  else
  {
    v27 = 2;
  }

  v3 = (v27 + v3);
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
    v2 = *(this + 32);
  }

  else
  {
    v29 = 2;
  }

  v3 = (v29 + v3);
  if ((v2 & 0x4000) == 0)
  {
LABEL_50:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_82;
  }

LABEL_76:
  v30 = *(this + 17);
  if ((v30 & 0x80000000) != 0)
  {
    v31 = 11;
  }

  else if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v2 = *(this + 32);
  }

  else
  {
    v31 = 2;
  }

  v3 = (v31 + v3);
  if ((v2 & 0x8000) != 0)
  {
LABEL_82:
    v32 = *(this + 18);
    if ((v32 & 0x80000000) != 0)
    {
      v33 = 12;
    }

    else if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
      v2 = *(this + 32);
    }

    else
    {
      v33 = 3;
    }

    v3 = (v33 + v3);
  }

LABEL_88:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_136;
  }

  if ((v2 & 0x10000) != 0)
  {
    v34 = *(this + 19);
    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
      v2 = *(this + 32);
    }

    else
    {
      v35 = 3;
    }

    v3 = (v35 + v3);
    if ((v2 & 0x20000) == 0)
    {
LABEL_91:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_106;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_91;
  }

  v36 = *(this + 20);
  if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
    v2 = *(this + 32);
  }

  else
  {
    v37 = 3;
  }

  v3 = (v37 + v3);
  if ((v2 & 0x40000) == 0)
  {
LABEL_92:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_110;
  }

LABEL_106:
  v38 = *(this + 21);
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    v2 = *(this + 32);
  }

  else
  {
    v39 = 3;
  }

  v3 = (v39 + v3);
  if ((v2 & 0x80000) == 0)
  {
LABEL_93:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_114;
  }

LABEL_110:
  v40 = *(this + 22);
  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
    v2 = *(this + 32);
  }

  else
  {
    v41 = 3;
  }

  v3 = (v41 + v3);
  if ((v2 & 0x100000) == 0)
  {
LABEL_94:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_120;
  }

LABEL_114:
  v42 = *(this + 23);
  if ((v42 & 0x80000000) != 0)
  {
    v43 = 12;
  }

  else if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
    v2 = *(this + 32);
  }

  else
  {
    v43 = 3;
  }

  v3 = (v43 + v3);
  if ((v2 & 0x200000) == 0)
  {
LABEL_95:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_126;
  }

LABEL_120:
  v44 = *(this + 24);
  if ((v44 & 0x80000000) != 0)
  {
    v45 = 12;
  }

  else if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
    v2 = *(this + 32);
  }

  else
  {
    v45 = 3;
  }

  v3 = (v45 + v3);
  if ((v2 & 0x400000) == 0)
  {
LABEL_96:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_130;
  }

LABEL_126:
  v46 = *(this + 25);
  if (v46 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
    v2 = *(this + 32);
  }

  else
  {
    v47 = 3;
  }

  v3 = (v47 + v3);
  if ((v2 & 0x800000) != 0)
  {
LABEL_130:
    v48 = *(this + 26);
    if ((v48 & 0x80000000) != 0)
    {
      v49 = 12;
    }

    else if (v48 >= 0x80)
    {
      v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 2;
      v2 = *(this + 32);
    }

    else
    {
      v49 = 3;
    }

    v3 = (v49 + v3);
  }

LABEL_136:
  if (!HIBYTE(v2))
  {
    goto LABEL_160;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v50 = *(this + 27);
    if ((v50 & 0x80000000) != 0)
    {
      v51 = 12;
    }

    else if (v50 >= 0x80)
    {
      v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
      v2 = *(this + 32);
    }

    else
    {
      v51 = 3;
    }

    v3 = (v51 + v3);
    if ((v2 & 0x2000000) == 0)
    {
LABEL_139:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_152;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_139;
  }

  v52 = *(this + 28);
  if (v52 >= 0x80)
  {
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 2;
    v2 = *(this + 32);
  }

  else
  {
    v53 = 3;
  }

  v3 = (v53 + v3);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_140:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_156;
  }

LABEL_152:
  v54 = *(this + 29);
  if (v54 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 2;
    v2 = *(this + 32);
  }

  else
  {
    v55 = 3;
  }

  v3 = (v55 + v3);
  if ((v2 & 0x8000000) != 0)
  {
LABEL_156:
    v56 = *(this + 30);
    if (v56 >= 0x80)
    {
      v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56) + 2;
    }

    else
    {
      v57 = 3;
    }

    v3 = (v57 + v3);
  }

LABEL_160:
  *(this + 31) = v3;
  return v3;
}

void awd::metrics::BluetoothAccessoryCaseCharging::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryCaseCharging *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAccessoryCaseCharging::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAccessoryCaseCharging::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAccessoryCaseCharging::CopyFrom(awd::metrics::BluetoothAccessoryCaseCharging *this, const awd::metrics::BluetoothAccessoryCaseCharging *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAccessoryCaseCharging::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothAccessoryCaseCharging::Swap(uint64_t this, awd::metrics::BluetoothAccessoryCaseCharging *a2)
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
    LODWORD(v2) = *(this + 84);
    *(this + 84) = *(a2 + 21);
    *(a2 + 21) = v2;
    LODWORD(v2) = *(this + 88);
    *(this + 88) = *(a2 + 22);
    *(a2 + 22) = v2;
    LODWORD(v2) = *(this + 92);
    *(this + 92) = *(a2 + 23);
    *(a2 + 23) = v2;
    LODWORD(v2) = *(this + 96);
    *(this + 96) = *(a2 + 24);
    *(a2 + 24) = v2;
    LODWORD(v2) = *(this + 100);
    *(this + 100) = *(a2 + 25);
    *(a2 + 25) = v2;
    LODWORD(v2) = *(this + 104);
    *(this + 104) = *(a2 + 26);
    *(a2 + 26) = v2;
    LODWORD(v2) = *(this + 108);
    *(this + 108) = *(a2 + 27);
    *(a2 + 27) = v2;
    LODWORD(v2) = *(this + 112);
    *(this + 112) = *(a2 + 28);
    *(a2 + 28) = v2;
    LODWORD(v2) = *(this + 116);
    *(this + 116) = *(a2 + 29);
    *(a2 + 29) = v2;
    LODWORD(v2) = *(this + 120);
    *(this + 120) = *(a2 + 30);
    *(a2 + 30) = v2;
    LODWORD(v2) = *(this + 128);
    *(this + 128) = *(a2 + 32);
    *(a2 + 32) = v2;
    LODWORD(v2) = *(this + 124);
    *(this + 124) = *(a2 + 31);
    *(a2 + 31) = v2;
  }

  return this;
}

double awd::metrics::BluetoothAccessoryDsp::SharedCtor(awd::metrics::BluetoothAccessoryDsp *this)
{
  result = 0.0;
  *(this + 19) = 0;
  *(this + 24) = 0;
  *(this + 51) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 54) = 0;
  *(this + 55) = 0;
  *(this + 112) = 0;
  return result;
}

awd::metrics::BluetoothAccessoryDsp *awd::metrics::BluetoothAccessoryDsp::BluetoothAccessoryDsp(awd::metrics::BluetoothAccessoryDsp *this, const awd::metrics::BluetoothAccessoryDsp *a2)
{
  *this = &unk_2A1D4BB20;
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
  *(this + 248) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 436) = 0u;
  awd::metrics::BluetoothAccessoryDsp::MergeFrom(this, a2);
  return this;
}

void sub_296394CA4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 52);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 49);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 47);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 45);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 43);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 41);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 39);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(v1 + 37);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(v1 + 35);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(v1 + 33);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 29);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  v14 = *(v1 + 27);
  if (v14)
  {
    MEMORY[0x29C259EE0](v14, 0x1000C8052888210);
  }

  v15 = *(v1 + 25);
  if (v15)
  {
    MEMORY[0x29C259EE0](v15, 0x1000C8052888210);
  }

  v16 = *(v1 + 22);
  if (v16)
  {
    MEMORY[0x29C259EE0](v16, 0x1000C8052888210);
  }

  v17 = *(v1 + 20);
  if (v17)
  {
    MEMORY[0x29C259EE0](v17, 0x1000C8052888210);
  }

  v18 = *(v1 + 17);
  if (v18)
  {
    MEMORY[0x29C259EE0](v18, 0x1000C8052888210);
  }

  v19 = *(v1 + 13);
  if (v19)
  {
    MEMORY[0x29C259EE0](v19, 0x1000C8052888210);
  }

  v20 = *(v1 + 11);
  if (v20)
  {
    MEMORY[0x29C259EE0](v20, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryDsp::MergeFrom(awd::metrics::BluetoothAccessoryDsp *this, const awd::metrics::BluetoothAccessoryDsp *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v59);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 11, *(this + 24) + v4);
    memcpy((*(this + 11) + 4 * *(this + 24)), *(a2 + 11), 4 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  v5 = *(a2 + 28);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 13, *(this + 28) + v5);
    memcpy((*(this + 13) + 4 * *(this + 28)), *(a2 + 13), 4 * *(a2 + 28));
    *(this + 28) += *(a2 + 28);
  }

  v6 = *(a2 + 36);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 17, *(this + 36) + v6);
    memcpy((*(this + 17) + 4 * *(this + 36)), *(a2 + 17), 4 * *(a2 + 36));
    *(this + 36) += *(a2 + 36);
  }

  v7 = *(a2 + 42);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, *(this + 42) + v7);
    memcpy((*(this + 20) + 4 * *(this + 42)), *(a2 + 20), 4 * *(a2 + 42));
    *(this + 42) += *(a2 + 42);
  }

  v8 = *(a2 + 46);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, *(this + 46) + v8);
    memcpy((*(this + 22) + 4 * *(this + 46)), *(a2 + 22), 4 * *(a2 + 46));
    *(this + 46) += *(a2 + 46);
  }

  v9 = *(a2 + 52);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 25, *(this + 52) + v9);
    memcpy((*(this + 25) + 4 * *(this + 52)), *(a2 + 25), 4 * *(a2 + 52));
    *(this + 52) += *(a2 + 52);
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 27, *(this + 56) + v10);
    memcpy((*(this + 27) + 4 * *(this + 56)), *(a2 + 27), 4 * *(a2 + 56));
    *(this + 56) += *(a2 + 56);
  }

  v11 = *(a2 + 60);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 29, *(this + 60) + v11);
    memcpy((*(this + 29) + 4 * *(this + 60)), *(a2 + 29), 4 * *(a2 + 60));
    *(this + 60) += *(a2 + 60);
  }

  v12 = *(a2 + 68);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 33, *(this + 68) + v12);
    memcpy((*(this + 33) + 4 * *(this + 68)), *(a2 + 33), 4 * *(a2 + 68));
    *(this + 68) += *(a2 + 68);
  }

  v13 = *(a2 + 72);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 35, *(this + 72) + v13);
    memcpy((*(this + 35) + 4 * *(this + 72)), *(a2 + 35), 4 * *(a2 + 72));
    *(this + 72) += *(a2 + 72);
  }

  v14 = *(a2 + 76);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 37, *(this + 76) + v14);
    memcpy((*(this + 37) + 4 * *(this + 76)), *(a2 + 37), 4 * *(a2 + 76));
    *(this + 76) += *(a2 + 76);
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 39, *(this + 80) + v15);
    memcpy((*(this + 39) + 4 * *(this + 80)), *(a2 + 39), 4 * *(a2 + 80));
    *(this + 80) += *(a2 + 80);
  }

  v16 = *(a2 + 84);
  if (v16)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 41, *(this + 84) + v16);
    memcpy((*(this + 41) + 4 * *(this + 84)), *(a2 + 41), 4 * *(a2 + 84));
    *(this + 84) += *(a2 + 84);
  }

  v17 = *(a2 + 88);
  if (v17)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 43, *(this + 88) + v17);
    memcpy((*(this + 43) + 4 * *(this + 88)), *(a2 + 43), 4 * *(a2 + 88));
    *(this + 88) += *(a2 + 88);
  }

  v18 = *(a2 + 92);
  if (v18)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 45, *(this + 92) + v18);
    memcpy((*(this + 45) + 4 * *(this + 92)), *(a2 + 45), 4 * *(a2 + 92));
    *(this + 92) += *(a2 + 92);
  }

  v19 = *(a2 + 96);
  if (v19)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 47, *(this + 96) + v19);
    memcpy((*(this + 47) + 4 * *(this + 96)), *(a2 + 47), 4 * *(a2 + 96));
    *(this + 96) += *(a2 + 96);
  }

  v20 = *(a2 + 100);
  if (v20)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 49, *(this + 100) + v20);
    memcpy((*(this + 49) + 4 * *(this + 100)), *(a2 + 49), 4 * *(a2 + 100));
    *(this + 100) += *(a2 + 100);
  }

  v21 = *(a2 + 106);
  if (v21)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 52, *(this + 106) + v21);
    memcpy((*(this + 52) + 4 * *(this + 106)), *(a2 + 52), 4 * *(a2 + 106));
    *(this + 106) += *(a2 + 106);
  }

  v22 = *(a2 + 111);
  if (!v22)
  {
    goto LABEL_49;
  }

  if (v22)
  {
    v30 = *(a2 + 1);
    *(this + 111) |= 1u;
    *(this + 1) = v30;
    v22 = *(a2 + 111);
    if ((v22 & 2) == 0)
    {
LABEL_42:
      if ((v22 & 4) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_89;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_42;
  }

  v31 = *(a2 + 4);
  *(this + 111) |= 2u;
  *(this + 4) = v31;
  v22 = *(a2 + 111);
  if ((v22 & 4) == 0)
  {
LABEL_43:
    if ((v22 & 8) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_90;
  }

LABEL_89:
  v32 = *(a2 + 5);
  *(this + 111) |= 4u;
  *(this + 5) = v32;
  v22 = *(a2 + 111);
  if ((v22 & 8) == 0)
  {
LABEL_44:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_91;
  }

LABEL_90:
  v33 = *(a2 + 6);
  *(this + 111) |= 8u;
  *(this + 6) = v33;
  v22 = *(a2 + 111);
  if ((v22 & 0x10) == 0)
  {
LABEL_45:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_46;
    }

LABEL_92:
    v35 = *(a2 + 8);
    *(this + 111) |= 0x20u;
    *(this + 8) = v35;
    v22 = *(a2 + 111);
    if ((v22 & 0x40) == 0)
    {
LABEL_47:
      if ((v22 & 0x80) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    goto LABEL_93;
  }

LABEL_91:
  v34 = *(a2 + 7);
  *(this + 111) |= 0x10u;
  *(this + 7) = v34;
  v22 = *(a2 + 111);
  if ((v22 & 0x20) != 0)
  {
    goto LABEL_92;
  }

LABEL_46:
  if ((v22 & 0x40) == 0)
  {
    goto LABEL_47;
  }

LABEL_93:
  v36 = *(a2 + 9);
  *(this + 111) |= 0x40u;
  *(this + 9) = v36;
  v22 = *(a2 + 111);
  if ((v22 & 0x80) != 0)
  {
LABEL_48:
    v23 = *(a2 + 10);
    *(this + 111) |= 0x80u;
    *(this + 10) = v23;
    v22 = *(a2 + 111);
  }

LABEL_49:
  if ((v22 & 0xFF00) == 0)
  {
    goto LABEL_59;
  }

  if ((v22 & 0x100) != 0)
  {
    v37 = *(a2 + 11);
    *(this + 111) |= 0x100u;
    *(this + 11) = v37;
    v22 = *(a2 + 111);
    if ((v22 & 0x200) == 0)
    {
LABEL_52:
      if ((v22 & 0x400) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_97;
    }
  }

  else if ((v22 & 0x200) == 0)
  {
    goto LABEL_52;
  }

  v38 = *(a2 + 12);
  *(this + 111) |= 0x200u;
  *(this + 12) = v38;
  v22 = *(a2 + 111);
  if ((v22 & 0x400) == 0)
  {
LABEL_53:
    if ((v22 & 0x800) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_98;
  }

LABEL_97:
  v39 = *(a2 + 13);
  *(this + 111) |= 0x400u;
  *(this + 13) = v39;
  v22 = *(a2 + 111);
  if ((v22 & 0x800) == 0)
  {
LABEL_54:
    if ((v22 & 0x1000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_99;
  }

LABEL_98:
  v40 = *(a2 + 14);
  *(this + 111) |= 0x800u;
  *(this + 14) = v40;
  v22 = *(a2 + 111);
  if ((v22 & 0x1000) == 0)
  {
LABEL_55:
    if ((v22 & 0x2000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_100;
  }

LABEL_99:
  v41 = *(a2 + 15);
  *(this + 111) |= 0x1000u;
  *(this + 15) = v41;
  v22 = *(a2 + 111);
  if ((v22 & 0x2000) == 0)
  {
LABEL_56:
    if ((v22 & 0x4000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_101;
  }

LABEL_100:
  v42 = *(a2 + 16);
  *(this + 111) |= 0x2000u;
  *(this + 16) = v42;
  v22 = *(a2 + 111);
  if ((v22 & 0x4000) == 0)
  {
LABEL_57:
    if ((v22 & 0x8000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_101:
  v43 = *(a2 + 17);
  *(this + 111) |= 0x4000u;
  *(this + 17) = v43;
  v22 = *(a2 + 111);
  if ((v22 & 0x8000) != 0)
  {
LABEL_58:
    v24 = *(a2 + 18);
    *(this + 111) |= 0x8000u;
    *(this + 18) = v24;
    v22 = *(a2 + 111);
  }

LABEL_59:
  if ((v22 & 0xFF0000) == 0)
  {
    goto LABEL_67;
  }

  if ((v22 & 0x10000) != 0)
  {
    v44 = *(a2 + 19);
    *(this + 111) |= 0x10000u;
    *(this + 19) = v44;
    v22 = *(a2 + 111);
    if ((v22 & 0x20000) == 0)
    {
LABEL_62:
      if ((v22 & 0x40000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_105;
    }
  }

  else if ((v22 & 0x20000) == 0)
  {
    goto LABEL_62;
  }

  v45 = *(a2 + 20);
  *(this + 111) |= 0x20000u;
  *(this + 20) = v45;
  v22 = *(a2 + 111);
  if ((v22 & 0x40000) == 0)
  {
LABEL_63:
    if ((v22 & 0x200000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_106;
  }

LABEL_105:
  v46 = *(a2 + 21);
  *(this + 111) |= 0x40000u;
  *(this + 21) = v46;
  v22 = *(a2 + 111);
  if ((v22 & 0x200000) == 0)
  {
LABEL_64:
    if ((v22 & 0x400000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_107;
  }

LABEL_106:
  v47 = *(a2 + 30);
  *(this + 111) |= 0x200000u;
  *(this + 30) = v47;
  v22 = *(a2 + 111);
  if ((v22 & 0x400000) == 0)
  {
LABEL_65:
    if ((v22 & 0x800000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

LABEL_107:
  v48 = *(a2 + 31);
  *(this + 111) |= 0x400000u;
  *(this + 31) = v48;
  v22 = *(a2 + 111);
  if ((v22 & 0x800000) != 0)
  {
LABEL_66:
    v25 = *(a2 + 32);
    *(this + 111) |= 0x800000u;
    *(this + 32) = v25;
    v22 = *(a2 + 111);
  }

LABEL_67:
  if (!HIBYTE(v22))
  {
    goto LABEL_73;
  }

  if ((v22 & 0x1000000) != 0)
  {
    v56 = *(a2 + 33);
    *(this + 111) |= 0x1000000u;
    *(this + 33) = v56;
    v22 = *(a2 + 111);
    if ((v22 & 0x4000000) == 0)
    {
LABEL_70:
      if ((v22 & 0x8000000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_120;
    }
  }

  else if ((v22 & 0x4000000) == 0)
  {
    goto LABEL_70;
  }

  v57 = *(a2 + 38);
  *(this + 111) |= 0x4000000u;
  *(this + 38) = v57;
  v22 = *(a2 + 111);
  if ((v22 & 0x8000000) == 0)
  {
LABEL_71:
    if ((v22 & 0x40000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_120:
  v58 = *(a2 + 39);
  *(this + 111) |= 0x8000000u;
  *(this + 39) = v58;
  if ((*(a2 + 111) & 0x40000000) != 0)
  {
LABEL_72:
    v26 = *(a2 + 48);
    *(this + 111) |= 0x40000000u;
    *(this + 48) = v26;
  }

LABEL_73:
  v27 = *(a2 + 112);
  if (!v27)
  {
    goto LABEL_80;
  }

  if (v27)
  {
    v49 = *(a2 + 49);
    *(this + 112) |= 1u;
    *(this + 49) = v49;
    v27 = *(a2 + 112);
    if ((v27 & 8) == 0)
    {
LABEL_76:
      if ((v27 & 0x10) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_111;
    }
  }

  else if ((v27 & 8) == 0)
  {
    goto LABEL_76;
  }

  v50 = *(a2 + 62);
  *(this + 112) |= 8u;
  *(this + 62) = v50;
  v27 = *(a2 + 112);
  if ((v27 & 0x10) == 0)
  {
LABEL_77:
    if ((v27 & 0x20) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_112;
  }

LABEL_111:
  v51 = *(a2 + 63);
  *(this + 112) |= 0x10u;
  *(this + 63) = v51;
  v27 = *(a2 + 112);
  if ((v27 & 0x20) == 0)
  {
LABEL_78:
    if ((v27 & 0x40) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_112:
  v52 = *(a2 + 64);
  *(this + 112) |= 0x20u;
  *(this + 64) = v52;
  v27 = *(a2 + 112);
  if ((v27 & 0x40) != 0)
  {
LABEL_79:
    v28 = *(a2 + 65);
    *(this + 112) |= 0x40u;
    *(this + 65) = v28;
    v27 = *(a2 + 112);
  }

LABEL_80:
  if ((v27 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v27 & 0x10000) != 0)
  {
    v53 = *(a2 + 102);
    *(this + 112) |= 0x10000u;
    *(this + 102) = v53;
    v27 = *(a2 + 112);
    if ((v27 & 0x20000) == 0)
    {
LABEL_83:
      if ((v27 & 0x80000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_116;
    }
  }

  else if ((v27 & 0x20000) == 0)
  {
    goto LABEL_83;
  }

  v54 = *(a2 + 103);
  *(this + 112) |= 0x20000u;
  *(this + 103) = v54;
  v27 = *(a2 + 112);
  if ((v27 & 0x80000) == 0)
  {
LABEL_84:
    if ((v27 & 0x100000) == 0)
    {
      return;
    }

    goto LABEL_85;
  }

LABEL_116:
  v55 = *(a2 + 108);
  *(this + 112) |= 0x80000u;
  *(this + 108) = v55;
  if ((*(a2 + 112) & 0x100000) != 0)
  {
LABEL_85:
    v29 = *(a2 + 109);
    *(this + 112) |= 0x100000u;
    *(this + 109) = v29;
  }
}

void sub_2963957BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryDsp::~BluetoothAccessoryDsp(awd::metrics::BluetoothAccessoryDsp *this)
{
  *this = &unk_2A1D4BB20;
  v2 = *(this + 52);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 49);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 47);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 45);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 43);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 41);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 39);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(this + 37);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 35);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(this + 33);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(this + 29);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(this + 27);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  v14 = *(this + 25);
  if (v14)
  {
    MEMORY[0x29C259EE0](v14, 0x1000C8052888210);
  }

  v15 = *(this + 22);
  if (v15)
  {
    MEMORY[0x29C259EE0](v15, 0x1000C8052888210);
  }

  v16 = *(this + 20);
  if (v16)
  {
    MEMORY[0x29C259EE0](v16, 0x1000C8052888210);
  }

  v17 = *(this + 17);
  if (v17)
  {
    MEMORY[0x29C259EE0](v17, 0x1000C8052888210);
  }

  v18 = *(this + 13);
  if (v18)
  {
    MEMORY[0x29C259EE0](v18, 0x1000C8052888210);
  }

  v19 = *(this + 11);
  if (v19)
  {
    MEMORY[0x29C259EE0](v19, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAccessoryDsp::~BluetoothAccessoryDsp(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAccessoryDsp::default_instance(awd::metrics::BluetoothAccessoryDsp *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryDsp::default_instance_;
  if (!awd::metrics::BluetoothAccessoryDsp::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryDsp::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryDsp::Clear(uint64_t this)
{
  v1 = *(this + 444);
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
    *(this + 84) = 0;
    *(this + 120) = 0;
    *(this + 128) = 0;
  }

  if (HIBYTE(v1))
  {
    *(this + 132) = 0;
    *(this + 152) = 0;
    *(this + 192) = 0;
  }

  v2 = *(this + 448);
  if (v2)
  {
    *(this + 196) = 0;
    *(this + 248) = 0;
    *(this + 256) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 408) = 0;
    *(this + 432) = 0;
  }

  *(this + 96) = 0;
  *(this + 112) = 0;
  *(this + 144) = 0;
  *(this + 168) = 0;
  *(this + 184) = 0;
  *(this + 208) = 0;
  *(this + 224) = 0;
  *(this + 240) = 0;
  *(this + 272) = 0;
  *(this + 288) = 0;
  *(this + 304) = 0;
  *(this + 320) = 0;
  *(this + 336) = 0;
  *(this + 352) = 0;
  *(this + 368) = 0;
  *(this + 384) = 0;
  *(this + 400) = 0;
  *(this + 424) = 0;
  *(this + 444) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAccessoryDsp::MergePartialFromCodedStream(awd::metrics::BluetoothAccessoryDsp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = (this + 256);
  v5 = (this + 260);
  v6 = (this + 408);
  v7 = (this + 412);
  v8 = (this + 432);
  v9 = (this + 436);
LABEL_2:
  while (2)
  {
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || (TagFallback = *v10, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v10 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v12 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
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

        *(this + 111) |= 1u;
        if (v16 < v13 && *v16 == 16)
        {
          v35 = v16 + 1;
          *(a2 + 1) = v35;
          goto LABEL_178;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v35 = *(a2 + 1);
        v13 = *(a2 + 2);
LABEL_178:
        if (v35 >= v13 || (v70 = *v35, v70 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v71 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v70;
          v71 = v35 + 1;
          *(a2 + 1) = v71;
        }

        *(this + 111) |= 2u;
        if (v71 >= v13 || *v71 != 24)
        {
          continue;
        }

        v31 = v71 + 1;
        *(a2 + 1) = v31;
LABEL_186:
        if (v31 >= v13 || (v72 = *v31, v72 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v73 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v72;
          v73 = v31 + 1;
          *(a2 + 1) = v73;
        }

        *(this + 111) |= 4u;
        if (v73 >= v13 || *v73 != 32)
        {
          continue;
        }

        v33 = v73 + 1;
        *(a2 + 1) = v33;
LABEL_194:
        if (v33 >= v13 || (v74 = *v33, v74 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v75 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v74;
          v75 = v33 + 1;
          *(a2 + 1) = v75;
        }

        *(this + 111) |= 8u;
        if (v75 >= v13 || *v75 != 40)
        {
          continue;
        }

        v27 = v75 + 1;
        *(a2 + 1) = v27;
LABEL_202:
        if (v27 >= v13 || (v76 = *v27, v76 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v77 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v76;
          v77 = v27 + 1;
          *(a2 + 1) = v77;
        }

        *(this + 111) |= 0x10u;
        if (v77 >= v13 || *v77 != 48)
        {
          continue;
        }

        v37 = v77 + 1;
        *(a2 + 1) = v37;
LABEL_210:
        if (v37 >= v13 || (v78 = *v37, v78 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v79 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v78;
          v79 = v37 + 1;
          *(a2 + 1) = v79;
        }

        *(this + 111) |= 0x20u;
        if (v79 >= v13 || *v79 != 56)
        {
          continue;
        }

        v40 = v79 + 1;
        *(a2 + 1) = v40;
LABEL_218:
        if (v40 >= v13 || (v80 = *v40, v80 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v81 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v80;
          v81 = v40 + 1;
          *(a2 + 1) = v81;
        }

        *(this + 111) |= 0x40u;
        if (v81 >= v13 || *v81 != 64)
        {
          continue;
        }

        v34 = v81 + 1;
        *(a2 + 1) = v34;
LABEL_226:
        if (v34 >= v13 || (v82 = *v34, v82 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v83 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v82;
          v83 = v34 + 1;
          *(a2 + 1) = v83;
        }

        *(this + 111) |= 0x80u;
        if (v83 >= v13 || *v83 != 72)
        {
          continue;
        }

        v43 = v83 + 1;
        *(a2 + 1) = v43;
LABEL_234:
        if (v43 >= v13 || (v84 = *v43, v84 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v85 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v84;
          v85 = v43 + 1;
          *(a2 + 1) = v85;
        }

        *(this + 111) |= 0x100u;
        if (v85 >= v13 || *v85 != 80)
        {
          continue;
        }

        v29 = v85 + 1;
        *(a2 + 1) = v29;
LABEL_242:
        if (v29 >= v13 || (v86 = *v29, v86 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v87 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v86;
          v87 = v29 + 1;
          *(a2 + 1) = v87;
        }

        *(this + 111) |= 0x200u;
        if (v87 >= v13 || *v87 != 88)
        {
          continue;
        }

        v42 = v87 + 1;
        *(a2 + 1) = v42;
LABEL_250:
        if (v42 >= v13 || (v88 = *v42, v88 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v89 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v88;
          v89 = v42 + 1;
          *(a2 + 1) = v89;
        }

        *(this + 111) |= 0x400u;
        if (v89 >= v13 || *v89 != 96)
        {
          continue;
        }

        v25 = v89 + 1;
        *(a2 + 1) = v25;
LABEL_258:
        if (v25 >= v13 || (v90 = *v25, v90 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v91 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v90;
          v91 = v25 + 1;
          *(a2 + 1) = v91;
        }

        *(this + 111) |= 0x800u;
        if (v91 >= v13 || *v91 != 104)
        {
          continue;
        }

        v28 = v91 + 1;
        *(a2 + 1) = v28;
LABEL_266:
        if (v28 >= v13 || (v92 = *v28, v92 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v93 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v92;
          v93 = v28 + 1;
          *(a2 + 1) = v93;
        }

        *(this + 111) |= 0x1000u;
        if (v93 >= v13 || *v93 != 112)
        {
          continue;
        }

        v39 = v93 + 1;
        *(a2 + 1) = v39;
LABEL_274:
        if (v39 >= v13 || (v94 = *v39, v94 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v95 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v94;
          v95 = v39 + 1;
          *(a2 + 1) = v95;
        }

        *(this + 111) |= 0x2000u;
        if (v95 >= v13 || *v95 != 120)
        {
          continue;
        }

        v23 = v95 + 1;
        *(a2 + 1) = v23;
LABEL_282:
        if (v23 >= v13 || (v96 = *v23, v96 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v97 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v96;
          v97 = (v23 + 1);
          *(a2 + 1) = v97;
        }

        *(this + 111) |= 0x4000u;
        if (v13 - v97 < 2 || *v97 != 128 || v97[1] != 1)
        {
          continue;
        }

        v32 = (v97 + 2);
        *(a2 + 1) = v32;
LABEL_291:
        if (v32 >= v13 || (v98 = *v32, v98 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v99 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v98;
          v99 = (v32 + 1);
          *(a2 + 1) = v99;
        }

        *(this + 111) |= 0x8000u;
        if (v13 - v99 < 2 || *v99 != 136 || v99[1] != 1)
        {
          continue;
        }

        v22 = (v99 + 2);
        *(a2 + 1) = v22;
LABEL_300:
        if (v22 >= v13 || (v100 = *v22, v100 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v101 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v100;
          v101 = (v22 + 1);
          *(a2 + 1) = v101;
        }

        *(this + 111) |= 0x10000u;
        if (v13 - v101 < 2 || *v101 != 144 || v101[1] != 1)
        {
          continue;
        }

        v36 = (v101 + 2);
        *(a2 + 1) = v36;
LABEL_309:
        if (v36 >= v13 || (v102 = *v36, v102 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v103 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v102;
          v103 = (v36 + 1);
          *(a2 + 1) = v103;
        }

        *(this + 111) |= 0x20000u;
        if (v13 - v103 < 2 || *v103 != 152 || v103[1] != 1)
        {
          continue;
        }

        v41 = (v103 + 2);
        *(a2 + 1) = v41;
LABEL_318:
        if (v41 >= v13 || (v104 = *v41, v104 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v105 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v104;
          v105 = (v41 + 1);
          *(a2 + 1) = v105;
        }

        *(this + 111) |= 0x40000u;
        if (v13 - v105 >= 2 && *v105 == 160 && v105[1] == 1)
        {
          goto LABEL_326;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v31 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_186;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v33 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_194;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v27 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_202;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v37 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_210;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v40 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_218;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v34 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_226;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v43 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_234;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v29 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_242;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v42 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_250;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v25 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_258;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v28 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_266;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v39 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_274;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v23 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_282;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v32 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_291;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v22 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_300;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v36 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_309;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v41 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_318;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          if (v12 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 88);
            if (!result)
            {
              return result;
            }

            goto LABEL_345;
          }

LABEL_151:
          if (v12 == 4)
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
          v65 = *(a2 + 1);
          v13 = *(a2 + 2);
          while (1)
          {
            v336 = 0;
            if (v65 >= v13 || *v65 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
              {
                return 0;
              }
            }

            else
            {
              v336 = *v65;
              *(a2 + 1) = v65 + 1;
            }

            v106 = *(this + 24);
            if (v106 == *(this + 25))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 11, v106 + 1);
              v106 = *(this + 24);
            }

            v107 = v336;
            v108 = *(this + 11);
            *(this + 24) = v106 + 1;
            *(v108 + 4 * v106) = v107;
            v109 = *(this + 25) - *(this + 24);
            if (v109 >= 1)
            {
              v110 = v109 + 1;
              do
              {
                v111 = *(a2 + 1);
                v112 = *(a2 + 2);
                if (v112 - v111 < 2 || *v111 != 160 || v111[1] != 1)
                {
                  break;
                }

                *(a2 + 1) = v111 + 2;
                if ((v111 + 2) >= v112 || v111[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                  {
                    return 0;
                  }
                }

                else
                {
                  v336 = v111[2];
                  *(a2 + 1) = v111 + 3;
                }

                v113 = *(this + 24);
                if (v113 >= *(this + 25))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                  v113 = *(this + 24);
                }

                v114 = v336;
                v115 = *(this + 11);
                *(this + 24) = v113 + 1;
                *(v115 + 4 * v113) = v114;
                --v110;
              }

              while (v110 > 1);
            }

LABEL_345:
            v105 = *(a2 + 1);
            v13 = *(a2 + 2);
            if (v13 - v105 < 2)
            {
              goto LABEL_2;
            }

            v116 = *v105;
            if (v116 == 168)
            {
              break;
            }

            if (v116 != 160 || v105[1] != 1)
            {
              goto LABEL_2;
            }

LABEL_326:
            v65 = (v105 + 2);
            *(a2 + 1) = v65;
          }

          if (v105[1] == 1)
          {
            while (1)
            {
              v62 = (v105 + 2);
              *(a2 + 1) = v62;
LABEL_352:
              v336 = 0;
              if (v62 >= v13 || *v62 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                {
                  return 0;
                }
              }

              else
              {
                v336 = *v62;
                *(a2 + 1) = v62 + 1;
              }

              v117 = *(this + 28);
              if (v117 == *(this + 29))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 13, v117 + 1);
                v117 = *(this + 28);
              }

              v118 = v336;
              v119 = *(this + 13);
              *(this + 28) = v117 + 1;
              *(v119 + 4 * v117) = v118;
              v120 = *(this + 29) - *(this + 28);
              if (v120 >= 1)
              {
                v121 = v120 + 1;
                do
                {
                  v122 = *(a2 + 1);
                  v123 = *(a2 + 2);
                  if (v123 - v122 < 2 || *v122 != 168 || v122[1] != 1)
                  {
                    break;
                  }

                  *(a2 + 1) = v122 + 2;
                  if ((v122 + 2) >= v123 || v122[2] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v336 = v122[2];
                    *(a2 + 1) = v122 + 3;
                  }

                  v124 = *(this + 28);
                  if (v124 >= *(this + 29))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                    v124 = *(this + 28);
                  }

                  v125 = v336;
                  v126 = *(this + 13);
                  *(this + 28) = v124 + 1;
                  *(v126 + 4 * v124) = v125;
                  --v121;
                }

                while (v121 > 1);
              }

LABEL_370:
              v105 = *(a2 + 1);
              v13 = *(a2 + 2);
              if (v13 - v105 < 2)
              {
                goto LABEL_2;
              }

              v127 = *v105;
              if (v127 == 176)
              {
                break;
              }

              if (v127 != 168 || v105[1] != 1)
              {
                goto LABEL_2;
              }
            }

            if (v105[1] == 1)
            {
              v38 = (v105 + 2);
              *(a2 + 1) = v38;
LABEL_377:
              if (v38 >= v13 || (v128 = *v38, v128 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
                if (!result)
                {
                  return result;
                }

                v129 = *(a2 + 1);
                v13 = *(a2 + 2);
              }

              else
              {
                *(this + 30) = v128;
                v129 = (v38 + 1);
                *(a2 + 1) = v129;
              }

              *(this + 111) |= 0x200000u;
              if (v13 - v129 >= 2 && *v129 == 184 && v129[1] == 1)
              {
                v46 = (v129 + 2);
                *(a2 + 1) = v46;
LABEL_386:
                if (v46 >= v13 || (v130 = *v46, v130 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
                  if (!result)
                  {
                    return result;
                  }

                  v131 = *(a2 + 1);
                  v13 = *(a2 + 2);
                }

                else
                {
                  *(this + 31) = v130;
                  v131 = (v46 + 1);
                  *(a2 + 1) = v131;
                }

                *(this + 111) |= 0x400000u;
                if (v13 - v131 >= 2 && *v131 == 192 && v131[1] == 1)
                {
                  v47 = (v131 + 2);
                  *(a2 + 1) = v47;
LABEL_395:
                  if (v47 >= v13 || (v132 = *v47, v132 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
                    if (!result)
                    {
                      return result;
                    }

                    v133 = *(a2 + 1);
                    v13 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 32) = v132;
                    v133 = (v47 + 1);
                    *(a2 + 1) = v133;
                  }

                  *(this + 111) |= 0x800000u;
                  if (v13 - v133 >= 2 && *v133 == 200 && v133[1] == 1)
                  {
                    v30 = (v133 + 2);
                    *(a2 + 1) = v30;
LABEL_404:
                    if (v30 >= v13 || (v134 = *v30, v134 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 33);
                      if (!result)
                      {
                        return result;
                      }

                      v135 = *(a2 + 1);
                      v13 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 33) = v134;
                      v135 = (v30 + 1);
                      *(a2 + 1) = v135;
                    }

                    *(this + 111) |= 0x1000000u;
                    if (v13 - v135 >= 2 && *v135 == 208 && v135[1] == 1)
                    {
                      while (1)
                      {
                        v59 = (v135 + 2);
                        *(a2 + 1) = v59;
LABEL_413:
                        v336 = 0;
                        if (v59 >= v13 || *v59 < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v336 = *v59;
                          *(a2 + 1) = v59 + 1;
                        }

                        v136 = *(this + 36);
                        if (v136 == *(this + 37))
                        {
                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 17, v136 + 1);
                          v136 = *(this + 36);
                        }

                        v137 = v336;
                        v138 = *(this + 17);
                        *(this + 36) = v136 + 1;
                        *(v138 + 4 * v136) = v137;
                        v139 = *(this + 37) - *(this + 36);
                        if (v139 >= 1)
                        {
                          v140 = v139 + 1;
                          do
                          {
                            v141 = *(a2 + 1);
                            v142 = *(a2 + 2);
                            if (v142 - v141 < 2 || *v141 != 208 || v141[1] != 1)
                            {
                              break;
                            }

                            *(a2 + 1) = v141 + 2;
                            if ((v141 + 2) >= v142 || v141[2] < 0)
                            {
                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              v336 = v141[2];
                              *(a2 + 1) = v141 + 3;
                            }

                            v143 = *(this + 36);
                            if (v143 >= *(this + 37))
                            {
                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                              v143 = *(this + 36);
                            }

                            v144 = v336;
                            v145 = *(this + 17);
                            *(this + 36) = v143 + 1;
                            *(v145 + 4 * v143) = v144;
                            --v140;
                          }

                          while (v140 > 1);
                        }

LABEL_431:
                        v135 = *(a2 + 1);
                        v13 = *(a2 + 2);
                        if (v13 - v135 < 2)
                        {
                          goto LABEL_2;
                        }

                        v146 = *v135;
                        if (v146 == 216)
                        {
                          break;
                        }

                        if (v146 != 208 || v135[1] != 1)
                        {
                          goto LABEL_2;
                        }
                      }

                      if (v135[1] == 1)
                      {
                        v49 = (v135 + 2);
                        *(a2 + 1) = v49;
LABEL_438:
                        if (v49 >= v13 || (v147 = *v49, v147 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 38);
                          if (!result)
                          {
                            return result;
                          }

                          v148 = *(a2 + 1);
                          v13 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 38) = v147;
                          v148 = (v49 + 1);
                          *(a2 + 1) = v148;
                        }

                        *(this + 111) |= 0x4000000u;
                        if (v13 - v148 >= 2 && *v148 == 224 && v148[1] == 1)
                        {
                          v21 = (v148 + 2);
                          *(a2 + 1) = v21;
LABEL_447:
                          if (v21 >= v13 || (v149 = *v21, v149 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 39);
                            if (!result)
                            {
                              return result;
                            }

                            v150 = *(a2 + 1);
                            v13 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 39) = v149;
                            v150 = (v21 + 1);
                            *(a2 + 1) = v150;
                          }

                          *(this + 111) |= 0x8000000u;
                          if (v13 - v150 >= 2 && *v150 == 232 && v150[1] == 1)
                          {
                            while (1)
                            {
                              v67 = (v150 + 2);
                              *(a2 + 1) = v67;
LABEL_456:
                              v336 = 0;
                              if (v67 >= v13 || *v67 < 0)
                              {
                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                {
                                  return 0;
                                }
                              }

                              else
                              {
                                v336 = *v67;
                                *(a2 + 1) = v67 + 1;
                              }

                              v151 = *(this + 42);
                              if (v151 == *(this + 43))
                              {
                                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v151 + 1);
                                v151 = *(this + 42);
                              }

                              v152 = v336;
                              v153 = *(this + 20);
                              *(this + 42) = v151 + 1;
                              *(v153 + 4 * v151) = v152;
                              v154 = *(this + 43) - *(this + 42);
                              if (v154 >= 1)
                              {
                                v155 = v154 + 1;
                                do
                                {
                                  v156 = *(a2 + 1);
                                  v157 = *(a2 + 2);
                                  if (v157 - v156 < 2 || *v156 != 232 || v156[1] != 1)
                                  {
                                    break;
                                  }

                                  *(a2 + 1) = v156 + 2;
                                  if ((v156 + 2) >= v157 || v156[2] < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v336 = v156[2];
                                    *(a2 + 1) = v156 + 3;
                                  }

                                  v158 = *(this + 42);
                                  if (v158 >= *(this + 43))
                                  {
                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                                    v158 = *(this + 42);
                                  }

                                  v159 = v336;
                                  v160 = *(this + 20);
                                  *(this + 42) = v158 + 1;
                                  *(v160 + 4 * v158) = v159;
                                  --v155;
                                }

                                while (v155 > 1);
                              }

LABEL_474:
                              v150 = *(a2 + 1);
                              v13 = *(a2 + 2);
                              if (v13 - v150 < 2)
                              {
                                goto LABEL_2;
                              }

                              v161 = *v150;
                              if (v161 == 240)
                              {
                                break;
                              }

                              if (v161 != 232 || v150[1] != 1)
                              {
                                goto LABEL_2;
                              }
                            }

                            if (v150[1] == 1)
                            {
                              while (1)
                              {
                                v68 = (v150 + 2);
                                *(a2 + 1) = v68;
LABEL_481:
                                v336 = 0;
                                if (v68 >= v13 || *v68 < 0)
                                {
                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                  {
                                    return 0;
                                  }
                                }

                                else
                                {
                                  v336 = *v68;
                                  *(a2 + 1) = v68 + 1;
                                }

                                v162 = *(this + 46);
                                if (v162 == *(this + 47))
                                {
                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, v162 + 1);
                                  v162 = *(this + 46);
                                }

                                v163 = v336;
                                v164 = *(this + 22);
                                *(this + 46) = v162 + 1;
                                *(v164 + 4 * v162) = v163;
                                v165 = *(this + 47) - *(this + 46);
                                if (v165 >= 1)
                                {
                                  v166 = v165 + 1;
                                  do
                                  {
                                    v167 = *(a2 + 1);
                                    v168 = *(a2 + 2);
                                    if (v168 - v167 < 2 || *v167 != 240 || v167[1] != 1)
                                    {
                                      break;
                                    }

                                    *(a2 + 1) = v167 + 2;
                                    if ((v167 + 2) >= v168 || v167[2] < 0)
                                    {
                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                      {
                                        return 0;
                                      }
                                    }

                                    else
                                    {
                                      v336 = v167[2];
                                      *(a2 + 1) = v167 + 3;
                                    }

                                    v169 = *(this + 46);
                                    if (v169 >= *(this + 47))
                                    {
                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                                      v169 = *(this + 46);
                                    }

                                    v170 = v336;
                                    v171 = *(this + 22);
                                    *(this + 46) = v169 + 1;
                                    *(v171 + 4 * v169) = v170;
                                    --v166;
                                  }

                                  while (v166 > 1);
                                }

LABEL_499:
                                v150 = *(a2 + 1);
                                v13 = *(a2 + 2);
                                if (v13 - v150 < 2)
                                {
                                  goto LABEL_2;
                                }

                                v172 = *v150;
                                if (v172 == 248)
                                {
                                  break;
                                }

                                if (v172 != 240 || v150[1] != 1)
                                {
                                  goto LABEL_2;
                                }
                              }

                              if (v150[1] == 1)
                              {
                                v44 = (v150 + 2);
                                *(a2 + 1) = v44;
LABEL_506:
                                if (v44 >= v13 || (v173 = *v44, v173 < 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v174 = *(a2 + 1);
                                  v13 = *(a2 + 2);
                                }

                                else
                                {
                                  *(this + 48) = v173;
                                  v174 = (v44 + 1);
                                  *(a2 + 1) = v174;
                                }

                                *(this + 111) |= 0x40000000u;
                                if (v13 - v174 >= 2 && *v174 == 128 && v174[1] == 2)
                                {
                                  while (1)
                                  {
                                    v60 = (v174 + 2);
                                    *(a2 + 1) = v60;
LABEL_515:
                                    v336 = 0;
                                    if (v60 >= v13 || *v60 < 0)
                                    {
                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                      {
                                        return 0;
                                      }
                                    }

                                    else
                                    {
                                      v336 = *v60;
                                      *(a2 + 1) = v60 + 1;
                                    }

                                    v175 = *(this + 52);
                                    if (v175 == *(this + 53))
                                    {
                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 25, v175 + 1);
                                      v175 = *(this + 52);
                                    }

                                    v176 = v336;
                                    v177 = *(this + 25);
                                    *(this + 52) = v175 + 1;
                                    *(v177 + 4 * v175) = v176;
                                    v178 = *(this + 53) - *(this + 52);
                                    if (v178 >= 1)
                                    {
                                      v179 = v178 + 1;
                                      do
                                      {
                                        v180 = *(a2 + 1);
                                        v181 = *(a2 + 2);
                                        if (v181 - v180 < 2 || *v180 != 128 || v180[1] != 2)
                                        {
                                          break;
                                        }

                                        *(a2 + 1) = v180 + 2;
                                        if ((v180 + 2) >= v181 || v180[2] < 0)
                                        {
                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                          {
                                            return 0;
                                          }
                                        }

                                        else
                                        {
                                          v336 = v180[2];
                                          *(a2 + 1) = v180 + 3;
                                        }

                                        v182 = *(this + 52);
                                        if (v182 >= *(this + 53))
                                        {
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                                          v182 = *(this + 52);
                                        }

                                        v183 = v336;
                                        v184 = *(this + 25);
                                        *(this + 52) = v182 + 1;
                                        *(v184 + 4 * v182) = v183;
                                        --v179;
                                      }

                                      while (v179 > 1);
                                    }

LABEL_533:
                                    v174 = *(a2 + 1);
                                    v13 = *(a2 + 2);
                                    if (v13 - v174 < 2)
                                    {
                                      goto LABEL_2;
                                    }

                                    v185 = *v174;
                                    if (v185 == 136)
                                    {
                                      break;
                                    }

                                    if (v185 != 128 || v174[1] != 2)
                                    {
                                      goto LABEL_2;
                                    }
                                  }

                                  if (v174[1] == 2)
                                  {
                                    v45 = (v174 + 2);
                                    *(a2 + 1) = v45;
LABEL_540:
                                    if (v45 >= v13 || (v186 = *v45, v186 < 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 49);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v187 = *(a2 + 1);
                                      v13 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *(this + 49) = v186;
                                      v187 = (v45 + 1);
                                      *(a2 + 1) = v187;
                                    }

                                    *(this + 112) |= 1u;
                                    if (v13 - v187 >= 2 && *v187 == 144 && v187[1] == 2)
                                    {
                                      while (1)
                                      {
                                        v57 = (v187 + 2);
                                        *(a2 + 1) = v57;
LABEL_549:
                                        v336 = 0;
                                        if (v57 >= v13 || *v57 < 0)
                                        {
                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                          {
                                            return 0;
                                          }
                                        }

                                        else
                                        {
                                          v336 = *v57;
                                          *(a2 + 1) = v57 + 1;
                                        }

                                        v188 = *(this + 56);
                                        if (v188 == *(this + 57))
                                        {
                                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 27, v188 + 1);
                                          v188 = *(this + 56);
                                        }

                                        v189 = v336;
                                        v190 = *(this + 27);
                                        *(this + 56) = v188 + 1;
                                        *(v190 + 4 * v188) = v189;
                                        v191 = *(this + 57) - *(this + 56);
                                        if (v191 >= 1)
                                        {
                                          v192 = v191 + 1;
                                          do
                                          {
                                            v193 = *(a2 + 1);
                                            v194 = *(a2 + 2);
                                            if (v194 - v193 < 2 || *v193 != 144 || v193[1] != 2)
                                            {
                                              break;
                                            }

                                            *(a2 + 1) = v193 + 2;
                                            if ((v193 + 2) >= v194 || v193[2] < 0)
                                            {
                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                              {
                                                return 0;
                                              }
                                            }

                                            else
                                            {
                                              v336 = v193[2];
                                              *(a2 + 1) = v193 + 3;
                                            }

                                            v195 = *(this + 56);
                                            if (v195 >= *(this + 57))
                                            {
                                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                                              v195 = *(this + 56);
                                            }

                                            v196 = v336;
                                            v197 = *(this + 27);
                                            *(this + 56) = v195 + 1;
                                            *(v197 + 4 * v195) = v196;
                                            --v192;
                                          }

                                          while (v192 > 1);
                                        }

LABEL_567:
                                        v187 = *(a2 + 1);
                                        v13 = *(a2 + 2);
                                        if (v13 - v187 < 2)
                                        {
                                          goto LABEL_2;
                                        }

                                        v198 = *v187;
                                        if (v198 == 152)
                                        {
                                          break;
                                        }

                                        if (v198 != 144 || v187[1] != 2)
                                        {
                                          goto LABEL_2;
                                        }
                                      }

                                      if (v187[1] == 2)
                                      {
                                        while (1)
                                        {
                                          v55 = (v187 + 2);
                                          *(a2 + 1) = v55;
LABEL_574:
                                          v336 = 0;
                                          if (v55 >= v13 || *v55 < 0)
                                          {
                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                            {
                                              return 0;
                                            }
                                          }

                                          else
                                          {
                                            v336 = *v55;
                                            *(a2 + 1) = v55 + 1;
                                          }

                                          v199 = *(this + 60);
                                          if (v199 == *(this + 61))
                                          {
                                            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 29, v199 + 1);
                                            v199 = *(this + 60);
                                          }

                                          v200 = v336;
                                          v201 = *(this + 29);
                                          *(this + 60) = v199 + 1;
                                          *(v201 + 4 * v199) = v200;
                                          v202 = *(this + 61) - *(this + 60);
                                          if (v202 >= 1)
                                          {
                                            v203 = v202 + 1;
                                            do
                                            {
                                              v204 = *(a2 + 1);
                                              v205 = *(a2 + 2);
                                              if (v205 - v204 < 2 || *v204 != 152 || v204[1] != 2)
                                              {
                                                break;
                                              }

                                              *(a2 + 1) = v204 + 2;
                                              if ((v204 + 2) >= v205 || v204[2] < 0)
                                              {
                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                {
                                                  return 0;
                                                }
                                              }

                                              else
                                              {
                                                v336 = v204[2];
                                                *(a2 + 1) = v204 + 3;
                                              }

                                              v206 = *(this + 60);
                                              if (v206 >= *(this + 61))
                                              {
                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                                                v206 = *(this + 60);
                                              }

                                              v207 = v336;
                                              v208 = *(this + 29);
                                              *(this + 60) = v206 + 1;
                                              *(v208 + 4 * v206) = v207;
                                              --v203;
                                            }

                                            while (v203 > 1);
                                          }

LABEL_592:
                                          v187 = *(a2 + 1);
                                          v13 = *(a2 + 2);
                                          if (v13 - v187 < 2)
                                          {
                                            goto LABEL_2;
                                          }

                                          v209 = *v187;
                                          if (v209 == 160)
                                          {
                                            break;
                                          }

                                          if (v209 != 152 || v187[1] != 2)
                                          {
                                            goto LABEL_2;
                                          }
                                        }

                                        if (v187[1] == 2)
                                        {
                                          v19 = (v187 + 2);
                                          *(a2 + 1) = v19;
LABEL_599:
                                          if (v19 >= v13 || (v210 = *v19, v210 < 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 62);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v211 = *(a2 + 1);
                                            v13 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            *(this + 62) = v210;
                                            v211 = (v19 + 1);
                                            *(a2 + 1) = v211;
                                          }

                                          *(this + 112) |= 8u;
                                          if (v13 - v211 >= 2 && *v211 == 168 && v211[1] == 2)
                                          {
                                            v20 = (v211 + 2);
                                            *(a2 + 1) = v20;
LABEL_608:
                                            if (v20 >= v13 || (v212 = *v20, v212 < 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 63);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v213 = *(a2 + 1);
                                              v13 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              *(this + 63) = v212;
                                              v213 = (v20 + 1);
                                              *(a2 + 1) = v213;
                                            }

                                            *(this + 112) |= 0x10u;
                                            if (v13 - v213 >= 2 && *v213 == 176 && v213[1] == 2)
                                            {
                                              v18 = (v213 + 2);
                                              *(a2 + 1) = v18;
LABEL_617:
                                              if (v18 >= v13 || (v214 = *v18, (v214 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v4);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v215 = *(a2 + 1);
                                                v13 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                *v4 = v214;
                                                v215 = (v18 + 1);
                                                *(a2 + 1) = v215;
                                              }

                                              *(this + 112) |= 0x20u;
                                              if (v13 - v215 >= 2 && *v215 == 184 && v215[1] == 2)
                                              {
                                                v48 = (v215 + 2);
                                                *(a2 + 1) = v48;
LABEL_626:
                                                if (v48 >= v13 || (v216 = *v48, (v216 & 0x80000000) != 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v217 = *(a2 + 1);
                                                  v13 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *v5 = v216;
                                                  v217 = (v48 + 1);
                                                  *(a2 + 1) = v217;
                                                }

                                                *(this + 112) |= 0x40u;
                                                if (v13 - v217 >= 2 && *v217 == 192 && v217[1] == 2)
                                                {
                                                  while (1)
                                                  {
                                                    v64 = (v217 + 2);
                                                    *(a2 + 1) = v64;
LABEL_635:
                                                    v336 = 0;
                                                    if (v64 >= v13 || *v64 < 0)
                                                    {
                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                      {
                                                        return 0;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v336 = *v64;
                                                      *(a2 + 1) = v64 + 1;
                                                    }

                                                    v218 = *(this + 68);
                                                    if (v218 == *(this + 69))
                                                    {
                                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 33, v218 + 1);
                                                      v218 = *(this + 68);
                                                    }

                                                    v219 = v336;
                                                    v220 = *(this + 33);
                                                    *(this + 68) = v218 + 1;
                                                    *(v220 + 4 * v218) = v219;
                                                    v221 = *(this + 69) - *(this + 68);
                                                    if (v221 >= 1)
                                                    {
                                                      v222 = v221 + 1;
                                                      do
                                                      {
                                                        v223 = *(a2 + 1);
                                                        v224 = *(a2 + 2);
                                                        if (v224 - v223 < 2 || *v223 != 192 || v223[1] != 2)
                                                        {
                                                          break;
                                                        }

                                                        *(a2 + 1) = v223 + 2;
                                                        if ((v223 + 2) >= v224 || v223[2] < 0)
                                                        {
                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                          {
                                                            return 0;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v336 = v223[2];
                                                          *(a2 + 1) = v223 + 3;
                                                        }

                                                        v225 = *(this + 68);
                                                        if (v225 >= *(this + 69))
                                                        {
                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                                                          v225 = *(this + 68);
                                                        }

                                                        v226 = v336;
                                                        v227 = *(this + 33);
                                                        *(this + 68) = v225 + 1;
                                                        *(v227 + 4 * v225) = v226;
                                                        --v222;
                                                      }

                                                      while (v222 > 1);
                                                    }

LABEL_653:
                                                    v217 = *(a2 + 1);
                                                    v13 = *(a2 + 2);
                                                    if (v13 - v217 < 2)
                                                    {
                                                      goto LABEL_2;
                                                    }

                                                    v228 = *v217;
                                                    if (v228 == 200)
                                                    {
                                                      break;
                                                    }

                                                    if (v228 != 192 || v217[1] != 2)
                                                    {
                                                      goto LABEL_2;
                                                    }
                                                  }

                                                  if (v217[1] == 2)
                                                  {
                                                    while (1)
                                                    {
                                                      v58 = (v217 + 2);
                                                      *(a2 + 1) = v58;
LABEL_660:
                                                      v336 = 0;
                                                      if (v58 >= v13 || *v58 < 0)
                                                      {
                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                        {
                                                          return 0;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v336 = *v58;
                                                        *(a2 + 1) = v58 + 1;
                                                      }

                                                      v229 = *(this + 72);
                                                      if (v229 == *(this + 73))
                                                      {
                                                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 35, v229 + 1);
                                                        v229 = *(this + 72);
                                                      }

                                                      v230 = v336;
                                                      v231 = *(this + 35);
                                                      *(this + 72) = v229 + 1;
                                                      *(v231 + 4 * v229) = v230;
                                                      v232 = *(this + 73) - *(this + 72);
                                                      if (v232 >= 1)
                                                      {
                                                        v233 = v232 + 1;
                                                        do
                                                        {
                                                          v234 = *(a2 + 1);
                                                          v235 = *(a2 + 2);
                                                          if (v235 - v234 < 2 || *v234 != 200 || v234[1] != 2)
                                                          {
                                                            break;
                                                          }

                                                          *(a2 + 1) = v234 + 2;
                                                          if ((v234 + 2) >= v235 || v234[2] < 0)
                                                          {
                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                            {
                                                              return 0;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v336 = v234[2];
                                                            *(a2 + 1) = v234 + 3;
                                                          }

                                                          v236 = *(this + 72);
                                                          if (v236 >= *(this + 73))
                                                          {
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                                                            v236 = *(this + 72);
                                                          }

                                                          v237 = v336;
                                                          v238 = *(this + 35);
                                                          *(this + 72) = v236 + 1;
                                                          *(v238 + 4 * v236) = v237;
                                                          --v233;
                                                        }

                                                        while (v233 > 1);
                                                      }

LABEL_678:
                                                      v217 = *(a2 + 1);
                                                      v13 = *(a2 + 2);
                                                      if (v13 - v217 < 2)
                                                      {
                                                        goto LABEL_2;
                                                      }

                                                      v239 = *v217;
                                                      if (v239 == 208)
                                                      {
                                                        break;
                                                      }

                                                      if (v239 != 200 || v217[1] != 2)
                                                      {
                                                        goto LABEL_2;
                                                      }
                                                    }

                                                    if (v217[1] == 2)
                                                    {
                                                      while (1)
                                                      {
                                                        v61 = (v217 + 2);
                                                        *(a2 + 1) = v61;
LABEL_685:
                                                        v336 = 0;
                                                        if (v61 >= v13 || *v61 < 0)
                                                        {
                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                          {
                                                            return 0;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v336 = *v61;
                                                          *(a2 + 1) = v61 + 1;
                                                        }

                                                        v240 = *(this + 76);
                                                        if (v240 == *(this + 77))
                                                        {
                                                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 37, v240 + 1);
                                                          v240 = *(this + 76);
                                                        }

                                                        v241 = v336;
                                                        v242 = *(this + 37);
                                                        *(this + 76) = v240 + 1;
                                                        *(v242 + 4 * v240) = v241;
                                                        v243 = *(this + 77) - *(this + 76);
                                                        if (v243 >= 1)
                                                        {
                                                          v244 = v243 + 1;
                                                          do
                                                          {
                                                            v245 = *(a2 + 1);
                                                            v246 = *(a2 + 2);
                                                            if (v246 - v245 < 2 || *v245 != 208 || v245[1] != 2)
                                                            {
                                                              break;
                                                            }

                                                            *(a2 + 1) = v245 + 2;
                                                            if ((v245 + 2) >= v246 || v245[2] < 0)
                                                            {
                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                              {
                                                                return 0;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v336 = v245[2];
                                                              *(a2 + 1) = v245 + 3;
                                                            }

                                                            v247 = *(this + 76);
                                                            if (v247 >= *(this + 77))
                                                            {
                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                                                              v247 = *(this + 76);
                                                            }

                                                            v248 = v336;
                                                            v249 = *(this + 37);
                                                            *(this + 76) = v247 + 1;
                                                            *(v249 + 4 * v247) = v248;
                                                            --v244;
                                                          }

                                                          while (v244 > 1);
                                                        }

LABEL_703:
                                                        v217 = *(a2 + 1);
                                                        v13 = *(a2 + 2);
                                                        if (v13 - v217 < 2)
                                                        {
                                                          goto LABEL_2;
                                                        }

                                                        v250 = *v217;
                                                        if (v250 == 216)
                                                        {
                                                          break;
                                                        }

                                                        if (v250 != 208 || v217[1] != 2)
                                                        {
                                                          goto LABEL_2;
                                                        }
                                                      }

                                                      if (v217[1] == 2)
                                                      {
                                                        while (1)
                                                        {
                                                          v66 = (v217 + 2);
                                                          *(a2 + 1) = v66;
LABEL_710:
                                                          v336 = 0;
                                                          if (v66 >= v13 || *v66 < 0)
                                                          {
                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                            {
                                                              return 0;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v336 = *v66;
                                                            *(a2 + 1) = v66 + 1;
                                                          }

                                                          v251 = *(this + 80);
                                                          if (v251 == *(this + 81))
                                                          {
                                                            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 39, v251 + 1);
                                                            v251 = *(this + 80);
                                                          }

                                                          v252 = v336;
                                                          v253 = *(this + 39);
                                                          *(this + 80) = v251 + 1;
                                                          *(v253 + 4 * v251) = v252;
                                                          v254 = *(this + 81) - *(this + 80);
                                                          if (v254 >= 1)
                                                          {
                                                            v255 = v254 + 1;
                                                            do
                                                            {
                                                              v256 = *(a2 + 1);
                                                              v257 = *(a2 + 2);
                                                              if (v257 - v256 < 2 || *v256 != 216 || v256[1] != 2)
                                                              {
                                                                break;
                                                              }

                                                              *(a2 + 1) = v256 + 2;
                                                              if ((v256 + 2) >= v257 || v256[2] < 0)
                                                              {
                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                                {
                                                                  return 0;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v336 = v256[2];
                                                                *(a2 + 1) = v256 + 3;
                                                              }

                                                              v258 = *(this + 80);
                                                              if (v258 >= *(this + 81))
                                                              {
                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                                                                v258 = *(this + 80);
                                                              }

                                                              v259 = v336;
                                                              v260 = *(this + 39);
                                                              *(this + 80) = v258 + 1;
                                                              *(v260 + 4 * v258) = v259;
                                                              --v255;
                                                            }

                                                            while (v255 > 1);
                                                          }

LABEL_728:
                                                          v217 = *(a2 + 1);
                                                          v13 = *(a2 + 2);
                                                          if (v13 - v217 < 2)
                                                          {
                                                            goto LABEL_2;
                                                          }

                                                          v261 = *v217;
                                                          if (v261 == 224)
                                                          {
                                                            break;
                                                          }

                                                          if (v261 != 216 || v217[1] != 2)
                                                          {
                                                            goto LABEL_2;
                                                          }
                                                        }

                                                        if (v217[1] == 2)
                                                        {
                                                          while (1)
                                                          {
                                                            v53 = (v217 + 2);
                                                            *(a2 + 1) = v53;
LABEL_735:
                                                            v336 = 0;
                                                            if (v53 >= v13 || *v53 < 0)
                                                            {
                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                              {
                                                                return 0;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v336 = *v53;
                                                              *(a2 + 1) = v53 + 1;
                                                            }

                                                            v262 = *(this + 84);
                                                            if (v262 == *(this + 85))
                                                            {
                                                              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 41, v262 + 1);
                                                              v262 = *(this + 84);
                                                            }

                                                            v263 = v336;
                                                            v264 = *(this + 41);
                                                            *(this + 84) = v262 + 1;
                                                            *(v264 + 4 * v262) = v263;
                                                            v265 = *(this + 85) - *(this + 84);
                                                            if (v265 >= 1)
                                                            {
                                                              v266 = v265 + 1;
                                                              do
                                                              {
                                                                v267 = *(a2 + 1);
                                                                v268 = *(a2 + 2);
                                                                if (v268 - v267 < 2 || *v267 != 224 || v267[1] != 2)
                                                                {
                                                                  break;
                                                                }

                                                                *(a2 + 1) = v267 + 2;
                                                                if ((v267 + 2) >= v268 || v267[2] < 0)
                                                                {
                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                                  {
                                                                    return 0;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v336 = v267[2];
                                                                  *(a2 + 1) = v267 + 3;
                                                                }

                                                                v269 = *(this + 84);
                                                                if (v269 >= *(this + 85))
                                                                {
                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                                                                  v269 = *(this + 84);
                                                                }

                                                                v270 = v336;
                                                                v271 = *(this + 41);
                                                                *(this + 84) = v269 + 1;
                                                                *(v271 + 4 * v269) = v270;
                                                                --v266;
                                                              }

                                                              while (v266 > 1);
                                                            }

LABEL_753:
                                                            v217 = *(a2 + 1);
                                                            v13 = *(a2 + 2);
                                                            if (v13 - v217 < 2)
                                                            {
                                                              goto LABEL_2;
                                                            }

                                                            v272 = *v217;
                                                            if (v272 == 232)
                                                            {
                                                              break;
                                                            }

                                                            if (v272 != 224 || v217[1] != 2)
                                                            {
                                                              goto LABEL_2;
                                                            }
                                                          }

                                                          if (v217[1] == 2)
                                                          {
                                                            while (1)
                                                            {
                                                              v56 = (v217 + 2);
                                                              *(a2 + 1) = v56;
LABEL_760:
                                                              v336 = 0;
                                                              if (v56 >= v13 || *v56 < 0)
                                                              {
                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                                {
                                                                  return 0;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v336 = *v56;
                                                                *(a2 + 1) = v56 + 1;
                                                              }

                                                              v273 = *(this + 88);
                                                              if (v273 == *(this + 89))
                                                              {
                                                                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 43, v273 + 1);
                                                                v273 = *(this + 88);
                                                              }

                                                              v274 = v336;
                                                              v275 = *(this + 43);
                                                              *(this + 88) = v273 + 1;
                                                              *(v275 + 4 * v273) = v274;
                                                              v276 = *(this + 89) - *(this + 88);
                                                              if (v276 >= 1)
                                                              {
                                                                v277 = v276 + 1;
                                                                do
                                                                {
                                                                  v278 = *(a2 + 1);
                                                                  v279 = *(a2 + 2);
                                                                  if (v279 - v278 < 2 || *v278 != 232 || v278[1] != 2)
                                                                  {
                                                                    break;
                                                                  }

                                                                  *(a2 + 1) = v278 + 2;
                                                                  if ((v278 + 2) >= v279 || v278[2] < 0)
                                                                  {
                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                                    {
                                                                      return 0;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v336 = v278[2];
                                                                    *(a2 + 1) = v278 + 3;
                                                                  }

                                                                  v280 = *(this + 88);
                                                                  if (v280 >= *(this + 89))
                                                                  {
                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                                                                    v280 = *(this + 88);
                                                                  }

                                                                  v281 = v336;
                                                                  v282 = *(this + 43);
                                                                  *(this + 88) = v280 + 1;
                                                                  *(v282 + 4 * v280) = v281;
                                                                  --v277;
                                                                }

                                                                while (v277 > 1);
                                                              }

LABEL_778:
                                                              v217 = *(a2 + 1);
                                                              v13 = *(a2 + 2);
                                                              if (v13 - v217 < 2)
                                                              {
                                                                goto LABEL_2;
                                                              }

                                                              v283 = *v217;
                                                              if (v283 == 240)
                                                              {
                                                                break;
                                                              }

                                                              if (v283 != 232 || v217[1] != 2)
                                                              {
                                                                goto LABEL_2;
                                                              }
                                                            }

                                                            if (v217[1] == 2)
                                                            {
                                                              while (1)
                                                              {
                                                                v63 = (v217 + 2);
                                                                *(a2 + 1) = v63;
LABEL_785:
                                                                v336 = 0;
                                                                if (v63 >= v13 || *v63 < 0)
                                                                {
                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                                  {
                                                                    return 0;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v336 = *v63;
                                                                  *(a2 + 1) = v63 + 1;
                                                                }

                                                                v284 = *(this + 92);
                                                                if (v284 == *(this + 93))
                                                                {
                                                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 45, v284 + 1);
                                                                  v284 = *(this + 92);
                                                                }

                                                                v285 = v336;
                                                                v286 = *(this + 45);
                                                                *(this + 92) = v284 + 1;
                                                                *(v286 + 4 * v284) = v285;
                                                                v287 = *(this + 93) - *(this + 92);
                                                                if (v287 >= 1)
                                                                {
                                                                  v288 = v287 + 1;
                                                                  do
                                                                  {
                                                                    v289 = *(a2 + 1);
                                                                    v290 = *(a2 + 2);
                                                                    if (v290 - v289 < 2 || *v289 != 240 || v289[1] != 2)
                                                                    {
                                                                      break;
                                                                    }

                                                                    *(a2 + 1) = v289 + 2;
                                                                    if ((v289 + 2) >= v290 || v289[2] < 0)
                                                                    {
                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                                      {
                                                                        return 0;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v336 = v289[2];
                                                                      *(a2 + 1) = v289 + 3;
                                                                    }

                                                                    v291 = *(this + 92);
                                                                    if (v291 >= *(this + 93))
                                                                    {
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                                                                      v291 = *(this + 92);
                                                                    }

                                                                    v292 = v336;
                                                                    v293 = *(this + 45);
                                                                    *(this + 92) = v291 + 1;
                                                                    *(v293 + 4 * v291) = v292;
                                                                    --v288;
                                                                  }

                                                                  while (v288 > 1);
                                                                }

LABEL_803:
                                                                v217 = *(a2 + 1);
                                                                v13 = *(a2 + 2);
                                                                if (v13 - v217 < 2)
                                                                {
                                                                  goto LABEL_2;
                                                                }

                                                                v294 = *v217;
                                                                if (v294 == 248)
                                                                {
                                                                  break;
                                                                }

                                                                if (v294 != 240 || v217[1] != 2)
                                                                {
                                                                  goto LABEL_2;
                                                                }
                                                              }

                                                              if (v217[1] == 2)
                                                              {
                                                                while (1)
                                                                {
                                                                  v69 = (v217 + 2);
                                                                  *(a2 + 1) = v69;
LABEL_810:
                                                                  v336 = 0;
                                                                  if (v69 >= v13 || *v69 < 0)
                                                                  {
                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                                    {
                                                                      return 0;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v336 = *v69;
                                                                    *(a2 + 1) = v69 + 1;
                                                                  }

                                                                  v295 = *(this + 96);
                                                                  if (v295 == *(this + 97))
                                                                  {
                                                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 47, v295 + 1);
                                                                    v295 = *(this + 96);
                                                                  }

                                                                  v296 = v336;
                                                                  v297 = *(this + 47);
                                                                  *(this + 96) = v295 + 1;
                                                                  *(v297 + 4 * v295) = v296;
                                                                  v298 = *(this + 97) - *(this + 96);
                                                                  if (v298 >= 1)
                                                                  {
                                                                    v299 = v298 + 1;
                                                                    do
                                                                    {
                                                                      v300 = *(a2 + 1);
                                                                      v301 = *(a2 + 2);
                                                                      if (v301 - v300 < 2 || *v300 != 248 || v300[1] != 2)
                                                                      {
                                                                        break;
                                                                      }

                                                                      *(a2 + 1) = v300 + 2;
                                                                      if ((v300 + 2) >= v301 || v300[2] < 0)
                                                                      {
                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                                        {
                                                                          return 0;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v336 = v300[2];
                                                                        *(a2 + 1) = v300 + 3;
                                                                      }

                                                                      v302 = *(this + 96);
                                                                      if (v302 >= *(this + 97))
                                                                      {
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                                                                        v302 = *(this + 96);
                                                                      }

                                                                      v303 = v336;
                                                                      v304 = *(this + 47);
                                                                      *(this + 96) = v302 + 1;
                                                                      *(v304 + 4 * v302) = v303;
                                                                      --v299;
                                                                    }

                                                                    while (v299 > 1);
                                                                  }

LABEL_828:
                                                                  v217 = *(a2 + 1);
                                                                  v13 = *(a2 + 2);
                                                                  if (v13 - v217 < 2)
                                                                  {
                                                                    goto LABEL_2;
                                                                  }

                                                                  v305 = *v217;
                                                                  if (v305 == 128)
                                                                  {
                                                                    break;
                                                                  }

                                                                  if (v305 != 248 || v217[1] != 2)
                                                                  {
                                                                    goto LABEL_2;
                                                                  }
                                                                }

                                                                if (v217[1] == 3)
                                                                {
                                                                  while (1)
                                                                  {
                                                                    v54 = (v217 + 2);
                                                                    *(a2 + 1) = v54;
LABEL_835:
                                                                    v336 = 0;
                                                                    if (v54 >= v13 || *v54 < 0)
                                                                    {
                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                                      {
                                                                        return 0;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v336 = *v54;
                                                                      *(a2 + 1) = v54 + 1;
                                                                    }

                                                                    v306 = *(this + 100);
                                                                    if (v306 == *(this + 101))
                                                                    {
                                                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 49, v306 + 1);
                                                                      v306 = *(this + 100);
                                                                    }

                                                                    v307 = v336;
                                                                    v308 = *(this + 49);
                                                                    *(this + 100) = v306 + 1;
                                                                    *(v308 + 4 * v306) = v307;
                                                                    v309 = *(this + 101) - *(this + 100);
                                                                    if (v309 >= 1)
                                                                    {
                                                                      v310 = v309 + 1;
                                                                      do
                                                                      {
                                                                        v311 = *(a2 + 1);
                                                                        v312 = *(a2 + 2);
                                                                        if (v312 - v311 < 2 || *v311 != 128 || v311[1] != 3)
                                                                        {
                                                                          break;
                                                                        }

                                                                        *(a2 + 1) = v311 + 2;
                                                                        if ((v311 + 2) >= v312 || v311[2] < 0)
                                                                        {
                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                                                                          {
                                                                            return 0;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v336 = v311[2];
                                                                          *(a2 + 1) = v311 + 3;
                                                                        }

                                                                        v313 = *(this + 100);
                                                                        if (v313 >= *(this + 101))
                                                                        {
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                                                                          v313 = *(this + 100);
                                                                        }

                                                                        v314 = v336;
                                                                        v315 = *(this + 49);
                                                                        *(this + 100) = v313 + 1;
                                                                        *(v315 + 4 * v313) = v314;
                                                                        --v310;
                                                                      }

                                                                      while (v310 > 1);
                                                                    }

LABEL_853:
                                                                    v217 = *(a2 + 1);
                                                                    v13 = *(a2 + 2);
                                                                    if (v13 - v217 < 2)
                                                                    {
                                                                      goto LABEL_2;
                                                                    }

                                                                    v316 = *v217;
                                                                    if (v316 == 136)
                                                                    {
                                                                      break;
                                                                    }

                                                                    if (v316 != 128 || v217[1] != 3)
                                                                    {
                                                                      goto LABEL_2;
                                                                    }
                                                                  }

                                                                  if (v217[1] == 3)
                                                                  {
                                                                    v24 = (v217 + 2);
                                                                    *(a2 + 1) = v24;
LABEL_860:
                                                                    if (v24 >= v13 || (v317 = *v24, (v317 & 0x80000000) != 0))
                                                                    {
                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                                                                      if (!result)
                                                                      {
                                                                        return result;
                                                                      }

                                                                      v318 = *(a2 + 1);
                                                                      v13 = *(a2 + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      *v6 = v317;
                                                                      v318 = (v24 + 1);
                                                                      *(a2 + 1) = v318;
                                                                    }

                                                                    *(this + 112) |= 0x10000u;
                                                                    if (v13 - v318 >= 2 && *v318 == 144 && v318[1] == 3)
                                                                    {
                                                                      v26 = (v318 + 2);
                                                                      *(a2 + 1) = v26;
LABEL_869:
                                                                      if (v26 >= v13 || (v319 = *v26, (v319 & 0x80000000) != 0))
                                                                      {
                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                                                                        if (!result)
                                                                        {
                                                                          return result;
                                                                        }

                                                                        v320 = *(a2 + 1);
                                                                        v13 = *(a2 + 2);
                                                                      }

                                                                      else
                                                                      {
                                                                        *v7 = v319;
                                                                        v320 = (v26 + 1);
                                                                        *(a2 + 1) = v320;
                                                                      }

                                                                      *(this + 112) |= 0x20000u;
                                                                      if (v13 - v320 >= 2 && *v320 == 152 && v320[1] == 3)
                                                                      {
LABEL_877:
                                                                        v52 = (v320 + 2);
                                                                        *(a2 + 1) = v52;
                                                                        goto LABEL_878;
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
      case 0x15u:
        if ((TagFallback & 7) == 0)
        {
          v62 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_352;
        }

        if (v12 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 104);
        if (!result)
        {
          return result;
        }

        goto LABEL_370;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v38 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_377;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v46 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_386;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v47 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_395;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v30 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_404;
      case 0x1Au:
        if ((TagFallback & 7) == 0)
        {
          v59 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_413;
        }

        if (v12 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 136);
        if (!result)
        {
          return result;
        }

        goto LABEL_431;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v49 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_438;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v21 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_447;
      case 0x1Du:
        if ((TagFallback & 7) == 0)
        {
          v67 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_456;
        }

        if (v12 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 160);
        if (!result)
        {
          return result;
        }

        goto LABEL_474;
      case 0x1Eu:
        if ((TagFallback & 7) == 0)
        {
          v68 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_481;
        }

        if (v12 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 176);
        if (!result)
        {
          return result;
        }

        goto LABEL_499;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v44 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_506;
      case 0x20u:
        if ((TagFallback & 7) == 0)
        {
          v60 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_515;
        }

        if (v12 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 200);
        if (!result)
        {
          return result;
        }

        goto LABEL_533;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v45 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_540;
      case 0x22u:
        if ((TagFallback & 7) == 0)
        {
          v57 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_549;
        }

        if (v12 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 216);
        if (!result)
        {
          return result;
        }

        goto LABEL_567;
      case 0x23u:
        if ((TagFallback & 7) == 0)
        {
          v55 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_574;
        }

        if (v12 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 232);
        if (!result)
        {
          return result;
        }

        goto LABEL_592;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v19 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_599;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v20 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_608;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v18 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_617;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v48 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_626;
      case 0x28u:
        if ((TagFallback & 7) == 0)
        {
          v64 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_635;
        }

        if (v12 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 264);
        if (!result)
        {
          return result;
        }

        goto LABEL_653;
      case 0x29u:
        if ((TagFallback & 7) == 0)
        {
          v58 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_660;
        }

        if (v12 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 280);
        if (!result)
        {
          return result;
        }

        goto LABEL_678;
      case 0x2Au:
        if ((TagFallback & 7) == 0)
        {
          v61 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_685;
        }

        if (v12 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 296);
        if (!result)
        {
          return result;
        }

        goto LABEL_703;
      case 0x2Bu:
        if ((TagFallback & 7) == 0)
        {
          v66 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_710;
        }

        if (v12 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 312);
        if (!result)
        {
          return result;
        }

        goto LABEL_728;
      case 0x2Cu:
        if ((TagFallback & 7) == 0)
        {
          v53 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_735;
        }

        if (v12 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 328);
        if (!result)
        {
          return result;
        }

        goto LABEL_753;
      case 0x2Du:
        if ((TagFallback & 7) == 0)
        {
          v56 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_760;
        }

        if (v12 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 344);
        if (!result)
        {
          return result;
        }

        goto LABEL_778;
      case 0x2Eu:
        if ((TagFallback & 7) == 0)
        {
          v63 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_785;
        }

        if (v12 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 360);
        if (!result)
        {
          return result;
        }

        goto LABEL_803;
      case 0x2Fu:
        if ((TagFallback & 7) == 0)
        {
          v69 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_810;
        }

        if (v12 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 376);
        if (!result)
        {
          return result;
        }

        goto LABEL_828;
      case 0x30u:
        if ((TagFallback & 7) == 0)
        {
          v54 = *(a2 + 1);
          v13 = *(a2 + 2);
          goto LABEL_835;
        }

        if (v12 != 2)
        {
          goto LABEL_151;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 392);
        if (!result)
        {
          return result;
        }

        goto LABEL_853;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v24 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_860;
      case 0x32u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v26 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_869;
      case 0x33u:
        if ((TagFallback & 7) != 0)
        {
          if (v12 != 2)
          {
            goto LABEL_151;
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 416);
          if (!result)
          {
            return result;
          }

LABEL_896:
          v320 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v13 - v320 >= 2)
          {
            v331 = *v320;
            if (v331 == 160)
            {
              if (v320[1] == 3)
              {
                v51 = (v320 + 2);
                *(a2 + 1) = v51;
LABEL_903:
                if (v51 >= v13 || (v332 = *v51, (v332 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
                  if (!result)
                  {
                    return result;
                  }

                  v333 = *(a2 + 1);
                  v13 = *(a2 + 2);
                }

                else
                {
                  *v8 = v332;
                  v333 = (v51 + 1);
                  *(a2 + 1) = v333;
                }

                *(this + 112) |= 0x80000u;
                if (v13 - v333 >= 2 && *v333 == 168 && v333[1] == 3)
                {
                  v50 = (v333 + 2);
                  *(a2 + 1) = v50;
LABEL_912:
                  if (v50 >= v13 || (v334 = *v50, (v334 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
                    if (!result)
                    {
                      return result;
                    }

                    v335 = *(a2 + 1);
                    v13 = *(a2 + 2);
                  }

                  else
                  {
                    *v9 = v334;
                    v335 = v50 + 1;
                    *(a2 + 1) = v335;
                  }

                  *(this + 112) |= 0x100000u;
                  if (v335 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                  {
                    *(a2 + 8) = 0;
                    result = 1;
                    *(a2 + 36) = 1;
                    return result;
                  }
                }
              }
            }

            else if (v331 == 152 && v320[1] == 3)
            {
              goto LABEL_877;
            }
          }

          continue;
        }

        v52 = *(a2 + 1);
        v13 = *(a2 + 2);
LABEL_878:
        v336 = 0;
        if (v52 < v13 && (*v52 & 0x80000000) == 0)
        {
          v336 = *v52;
          *(a2 + 1) = v52 + 1;
          goto LABEL_882;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
        {
LABEL_882:
          v321 = *(this + 106);
          if (v321 == *(this + 107))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 52, v321 + 1);
            v321 = *(this + 106);
          }

          v322 = v336;
          v323 = *(this + 52);
          *(this + 106) = v321 + 1;
          *(v323 + 4 * v321) = v322;
          v324 = *(this + 107) - *(this + 106);
          if (v324 >= 1)
          {
            v325 = v324 + 1;
            do
            {
              v326 = *(a2 + 1);
              v327 = *(a2 + 2);
              if (v327 - v326 < 2 || *v326 != 152 || v326[1] != 3)
              {
                break;
              }

              *(a2 + 1) = v326 + 2;
              if ((v326 + 2) >= v327 || v326[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                {
                  return 0;
                }
              }

              else
              {
                v336 = v326[2];
                *(a2 + 1) = v326 + 3;
              }

              v328 = *(this + 106);
              if (v328 >= *(this + 107))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                v328 = *(this + 106);
              }

              v329 = v336;
              v330 = *(this + 52);
              *(this + 106) = v328 + 1;
              *(v330 + 4 * v328) = v329;
              --v325;
            }

            while (v325 > 1);
          }

          goto LABEL_896;
        }

        return 0;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v51 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_903;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_151;
        }

        v50 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_912;
      default:
        goto LABEL_151;
    }
  }
}

void sub_296398B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothAccessoryDsp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 444);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 444);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_103;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_104;
  }

LABEL_103:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_105;
  }

LABEL_104:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_106;
  }

LABEL_105:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_107;
  }

LABEL_106:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_108;
  }

LABEL_107:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_109;
  }

LABEL_108:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_110;
  }

LABEL_109:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_111;
  }

LABEL_110:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_112;
  }

LABEL_111:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_113;
  }

LABEL_112:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_114;
  }

LABEL_113:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_115;
  }

LABEL_114:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_116;
  }

LABEL_115:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_117;
  }

LABEL_116:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 72), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_118;
  }

LABEL_117:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 76), a2, a4);
  v6 = *(v5 + 444);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_118:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 80), a2, a4);
  if ((*(v5 + 444) & 0x40000) != 0)
  {
LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 84), a2, a4);
  }

LABEL_21:
  if (*(v5 + 96) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(*(v5 + 88) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 96));
  }

  if (*(v5 + 112) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(*(v5 + 104) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 112));
  }

  v9 = *(v5 + 444);
  if ((v9 & 0x200000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 120), a2, a4);
    v9 = *(v5 + 444);
    if ((v9 & 0x400000) == 0)
    {
LABEL_29:
      if ((v9 & 0x800000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_122;
    }
  }

  else if ((v9 & 0x400000) == 0)
  {
    goto LABEL_29;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 124), a2, a4);
  v9 = *(v5 + 444);
  if ((v9 & 0x800000) == 0)
  {
LABEL_30:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_122:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 128), a2, a4);
  if ((*(v5 + 444) & 0x1000000) != 0)
  {
LABEL_31:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 132), a2, a4);
  }

LABEL_32:
  if (*(v5 + 144) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(*(v5 + 136) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 144));
  }

  v11 = *(v5 + 444);
  if ((v11 & 0x4000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 152), a2, a4);
    v11 = *(v5 + 444);
  }

  if ((v11 & 0x8000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 156), a2, a4);
  }

  if (*(v5 + 168) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(*(v5 + 160) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 168));
  }

  if (*(v5 + 184) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(*(v5 + 176) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 184));
  }

  if ((*(v5 + 447) & 0x40) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 192), a2, a4);
  }

  if (*(v5 + 208) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(*(v5 + 200) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 208));
  }

  if (*(v5 + 448))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 196), a2, a4);
  }

  if (*(v5 + 224) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, *(*(v5 + 216) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 224));
  }

  if (*(v5 + 240) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(*(v5 + 232) + 4 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 240));
  }

  v17 = *(v5 + 448);
  if ((v17 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 248), a2, a4);
    v17 = *(v5 + 448);
    if ((v17 & 0x10) == 0)
    {
LABEL_60:
      if ((v17 & 0x20) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_126;
    }
  }

  else if ((v17 & 0x10) == 0)
  {
    goto LABEL_60;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, *(v5 + 252), a2, a4);
  v17 = *(v5 + 448);
  if ((v17 & 0x20) == 0)
  {
LABEL_61:
    if ((v17 & 0x40) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_126:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x26, *(v5 + 256), a2, a4);
  if ((*(v5 + 448) & 0x40) != 0)
  {
LABEL_62:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(v5 + 260), a2, a4);
  }

LABEL_63:
  if (*(v5 + 272) >= 1)
  {
    v18 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(*(v5 + 264) + 4 * v18++), a2, a4);
    }

    while (v18 < *(v5 + 272));
  }

  if (*(v5 + 288) >= 1)
  {
    v19 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(*(v5 + 280) + 4 * v19++), a2, a4);
    }

    while (v19 < *(v5 + 288));
  }

  if (*(v5 + 304) >= 1)
  {
    v20 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2A, *(*(v5 + 296) + 4 * v20++), a2, a4);
    }

    while (v20 < *(v5 + 304));
  }

  if (*(v5 + 320) >= 1)
  {
    v21 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, *(*(v5 + 312) + 4 * v21++), a2, a4);
    }

    while (v21 < *(v5 + 320));
  }

  if (*(v5 + 336) >= 1)
  {
    v22 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2C, *(*(v5 + 328) + 4 * v22++), a2, a4);
    }

    while (v22 < *(v5 + 336));
  }

  if (*(v5 + 352) >= 1)
  {
    v23 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2D, *(*(v5 + 344) + 4 * v23++), a2, a4);
    }

    while (v23 < *(v5 + 352));
  }

  if (*(v5 + 368) >= 1)
  {
    v24 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2E, *(*(v5 + 360) + 4 * v24++), a2, a4);
    }

    while (v24 < *(v5 + 368));
  }

  if (*(v5 + 384) >= 1)
  {
    v25 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2F, *(*(v5 + 376) + 4 * v25++), a2, a4);
    }

    while (v25 < *(v5 + 384));
  }

  if (*(v5 + 400) >= 1)
  {
    v26 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x30, *(*(v5 + 392) + 4 * v26++), a2, a4);
    }

    while (v26 < *(v5 + 400));
  }

  v27 = *(v5 + 448);
  if ((v27 & 0x10000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x31, *(v5 + 408), a2, a4);
    v27 = *(v5 + 448);
  }

  if ((v27 & 0x20000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x32, *(v5 + 412), a2, a4);
  }

  if (*(v5 + 424) >= 1)
  {
    v28 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x33, *(*(v5 + 416) + 4 * v28++), a2, a4);
    }

    while (v28 < *(v5 + 424));
  }

  v29 = *(v5 + 448);
  if ((v29 & 0x80000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x34, *(v5 + 432), a2, a4);
    v29 = *(v5 + 448);
  }

  if ((v29 & 0x100000) != 0)
  {
    v30 = *(v5 + 436);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x35, v30, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothAccessoryDsp::ByteSize(awd::metrics::BluetoothAccessoryDsp *this)
{
  v2 = *(this + 111);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 111);
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
    v2 = *(this + 111);
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
      v2 = *(this + 111);
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
    v2 = *(this + 111);
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
    v2 = *(this + 111);
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
    v2 = *(this + 111);
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
    v2 = *(this + 111);
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
      v2 = *(this + 111);
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
      v2 = *(this + 111);
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
    v2 = *(this + 111);
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
    v2 = *(this + 111);
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
    v2 = *(this + 111);
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
    v2 = *(this + 111);
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
    v2 = *(this + 111);
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
    v2 = *(this + 111);
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
      v2 = *(this + 111);
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
    goto LABEL_116;
  }

  if ((v2 & 0x10000) != 0)
  {
    v34 = *(this + 19);
    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
      v2 = *(this + 111);
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

      goto LABEL_100;
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
    v2 = *(this + 111);
  }

  else
  {
    v37 = 3;
  }

  v3 += v37;
  if ((v2 & 0x40000) == 0)
  {
LABEL_88:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_104;
  }

LABEL_100:
  v38 = *(this + 21);
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    v2 = *(this + 111);
  }

  else
  {
    v39 = 3;
  }

  v3 += v39;
  if ((v2 & 0x200000) == 0)
  {
LABEL_89:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_108;
  }

LABEL_104:
  v40 = *(this + 30);
  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
    v2 = *(this + 111);
  }

  else
  {
    v41 = 3;
  }

  v3 += v41;
  if ((v2 & 0x400000) == 0)
  {
LABEL_90:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_112;
  }

LABEL_108:
  v42 = *(this + 31);
  if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
    v2 = *(this + 111);
  }

  else
  {
    v43 = 3;
  }

  v3 += v43;
  if ((v2 & 0x800000) != 0)
  {
LABEL_112:
    v44 = *(this + 32);
    if (v44 >= 0x80)
    {
      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
      v2 = *(this + 111);
    }

    else
    {
      v45 = 3;
    }

    v3 += v45;
  }

LABEL_116:
  if (!HIBYTE(v2))
  {
    goto LABEL_138;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v46 = *(this + 33);
    if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
      v2 = *(this + 111);
    }

    else
    {
      v47 = 3;
    }

    v3 += v47;
    if ((v2 & 0x4000000) == 0)
    {
LABEL_119:
      if ((v2 & 0x8000000) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_130;
    }
  }

  else if ((v2 & 0x4000000) == 0)
  {
    goto LABEL_119;
  }

  v48 = *(this + 38);
  if (v48 >= 0x80)
  {
    v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 2;
    v2 = *(this + 111);
  }

  else
  {
    v49 = 3;
  }

  v3 += v49;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_120:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_134;
  }

LABEL_130:
  v50 = *(this + 39);
  if (v50 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
    v2 = *(this + 111);
  }

  else
  {
    v51 = 3;
  }

  v3 += v51;
  if ((v2 & 0x40000000) != 0)
  {
LABEL_134:
    v52 = *(this + 48);
    if (v52 >= 0x80)
    {
      v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 2;
    }

    else
    {
      v53 = 3;
    }

    v3 += v53;
  }

LABEL_138:
  v54 = *(this + 112);
  if (!v54)
  {
    goto LABEL_165;
  }

  if (v54)
  {
    v55 = *(this + 49);
    if (v55 >= 0x80)
    {
      v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
      v54 = *(this + 112);
    }

    else
    {
      v56 = 3;
    }

    v3 += v56;
    if ((v54 & 8) == 0)
    {
LABEL_141:
      if ((v54 & 0x10) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_153;
    }
  }

  else if ((v54 & 8) == 0)
  {
    goto LABEL_141;
  }

  v57 = *(this + 62);
  if (v57 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
    v54 = *(this + 112);
  }

  else
  {
    v58 = 3;
  }

  v3 += v58;
  if ((v54 & 0x10) == 0)
  {
LABEL_142:
    if ((v54 & 0x20) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_157;
  }

LABEL_153:
  v59 = *(this + 63);
  if (v59 >= 0x80)
  {
    v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59) + 2;
    v54 = *(this + 112);
  }

  else
  {
    v60 = 3;
  }

  v3 += v60;
  if ((v54 & 0x20) == 0)
  {
LABEL_143:
    if ((v54 & 0x40) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_161;
  }

LABEL_157:
  v61 = *(this + 64);
  if (v61 >= 0x80)
  {
    v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61) + 2;
    v54 = *(this + 112);
  }

  else
  {
    v62 = 3;
  }

  v3 += v62;
  if ((v54 & 0x40) != 0)
  {
LABEL_161:
    v63 = *(this + 65);
    if (v63 >= 0x80)
    {
      v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63) + 2;
      v54 = *(this + 112);
    }

    else
    {
      v64 = 3;
    }

    v3 += v64;
  }

LABEL_165:
  if ((v54 & 0xFF0000) == 0)
  {
    goto LABEL_187;
  }

  if ((v54 & 0x10000) != 0)
  {
    v65 = *(this + 102);
    if (v65 >= 0x80)
    {
      v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65) + 2;
      v54 = *(this + 112);
    }

    else
    {
      v66 = 3;
    }

    v3 += v66;
    if ((v54 & 0x20000) == 0)
    {
LABEL_168:
      if ((v54 & 0x80000) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_179;
    }
  }

  else if ((v54 & 0x20000) == 0)
  {
    goto LABEL_168;
  }

  v67 = *(this + 103);
  if (v67 >= 0x80)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67) + 2;
    v54 = *(this + 112);
  }

  else
  {
    v68 = 3;
  }

  v3 += v68;
  if ((v54 & 0x80000) == 0)
  {
LABEL_169:
    if ((v54 & 0x100000) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_183;
  }

LABEL_179:
  v69 = *(this + 108);
  if (v69 >= 0x80)
  {
    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69) + 2;
    v54 = *(this + 112);
  }

  else
  {
    v70 = 3;
  }

  v3 += v70;
  if ((v54 & 0x100000) != 0)
  {
LABEL_183:
    v71 = *(this + 109);
    if (v71 >= 0x80)
    {
      v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71) + 2;
    }

    else
    {
      v72 = 3;
    }

    v3 += v72;
  }

LABEL_187:
  v185 = v3;
  v73 = *(this + 24);
  if (v73 < 1)
  {
    v75 = 0;
  }

  else
  {
    v74 = 0;
    v75 = 0;
    do
    {
      v76 = *(*(this + 11) + 4 * v74);
      if (v76 >= 0x80)
      {
        v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76);
        v73 = *(this + 24);
      }

      else
      {
        v77 = 1;
      }

      v75 += v77;
      ++v74;
    }

    while (v74 < v73);
  }

  v78 = *(this + 28);
  if (v78 < 1)
  {
    v80 = 0;
  }

  else
  {
    v79 = 0;
    v80 = 0;
    do
    {
      v81 = *(*(this + 13) + 4 * v79);
      if (v81 >= 0x80)
      {
        v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81);
        v78 = *(this + 28);
      }

      else
      {
        v82 = 1;
      }

      v80 += v82;
      ++v79;
    }

    while (v79 < v78);
  }

  v83 = *(this + 36);
  if (v83 < 1)
  {
    v85 = 0;
  }

  else
  {
    v84 = 0;
    v85 = 0;
    do
    {
      v86 = *(*(this + 17) + 4 * v84);
      if (v86 >= 0x80)
      {
        v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86);
        v83 = *(this + 36);
      }

      else
      {
        v87 = 1;
      }

      v85 += v87;
      ++v84;
    }

    while (v84 < v83);
  }

  v88 = *(this + 42);
  if (v88 < 1)
  {
    v90 = 0;
  }

  else
  {
    v89 = 0;
    v90 = 0;
    do
    {
      v91 = *(*(this + 20) + 4 * v89);
      if (v91 >= 0x80)
      {
        v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91);
        v88 = *(this + 42);
      }

      else
      {
        v92 = 1;
      }

      v90 += v92;
      ++v89;
    }

    while (v89 < v88);
  }

  v93 = *(this + 46);
  if (v93 < 1)
  {
    v191 = 0;
  }

  else
  {
    v94 = 0;
    v191 = 0;
    do
    {
      v95 = v93;
      v96 = *(*(this + 22) + 4 * v94);
      if (v96 >= 0x80)
      {
        v97 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96);
        v95 = *(this + 46);
      }

      else
      {
        v97 = 1;
      }

      v191 += v97;
      ++v94;
      v93 = v95;
    }

    while (v94 < v95);
  }

  v176 = v93;
  v98 = *(this + 52);
  if (v98 < 1)
  {
    v190 = 0;
  }

  else
  {
    v99 = 0;
    v190 = 0;
    do
    {
      v100 = v98;
      v101 = *(*(this + 25) + 4 * v99);
      if (v101 >= 0x80)
      {
        v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101);
        v100 = *(this + 52);
      }

      else
      {
        v102 = 1;
      }

      v190 += v102;
      ++v99;
      v98 = v100;
    }

    while (v99 < v100);
  }

  v175 = v98;
  v103 = *(this + 56);
  if (v103 < 1)
  {
    v189 = 0;
  }

  else
  {
    v104 = 0;
    v189 = 0;
    do
    {
      v105 = v103;
      v106 = *(*(this + 27) + 4 * v104);
      if (v106 >= 0x80)
      {
        v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v106);
        v105 = *(this + 56);
      }

      else
      {
        v107 = 1;
      }

      v189 += v107;
      ++v104;
      v103 = v105;
    }

    while (v104 < v105);
  }

  v174 = v103;
  v108 = *(this + 60);
  if (v108 < 1)
  {
    v188 = 0;
  }

  else
  {
    v109 = 0;
    v188 = 0;
    do
    {
      v110 = v108;
      v111 = *(*(this + 29) + 4 * v109);
      if (v111 >= 0x80)
      {
        v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v111);
        v110 = *(this + 60);
      }

      else
      {
        v112 = 1;
      }

      v188 += v112;
      ++v109;
      v108 = v110;
    }

    while (v109 < v110);
  }

  v173 = v108;
  v113 = *(this + 68);
  if (v113 < 1)
  {
    v187 = 0;
  }

  else
  {
    v114 = 0;
    v187 = 0;
    do
    {
      v115 = v113;
      v116 = *(*(this + 33) + 4 * v114);
      if (v116 >= 0x80)
      {
        v117 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v116);
        v115 = *(this + 68);
      }

      else
      {
        v117 = 1;
      }

      v187 += v117;
      ++v114;
      v113 = v115;
    }

    while (v114 < v115);
  }

  v172 = v113;
  v118 = *(this + 72);
  if (v118 < 1)
  {
    v186 = 0;
  }

  else
  {
    v119 = 0;
    v186 = 0;
    do
    {
      v120 = v118;
      v121 = *(*(this + 35) + 4 * v119);
      if (v121 >= 0x80)
      {
        v122 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v121);
        v120 = *(this + 72);
      }

      else
      {
        v122 = 1;
      }

      v186 += v122;
      ++v119;
      v118 = v120;
    }

    while (v119 < v120);
  }

  v171 = v118;
  v182 = v80;
  v123 = *(this + 76);
  if (v123 < 1)
  {
    v125 = 0;
  }

  else
  {
    v124 = 0;
    v125 = 0;
    do
    {
      v126 = *(*(this + 37) + 4 * v124);
      if (v126 >= 0x80)
      {
        v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126);
        v123 = *(this + 76);
      }

      else
      {
        v127 = 1;
      }

      v125 += v127;
      ++v124;
    }

    while (v124 < v123);
  }

  v170 = v123;
  v180 = v85;
  v128 = *(this + 80);
  if (v128 < 1)
  {
    v130 = 0;
  }

  else
  {
    v129 = 0;
    v130 = 0;
    do
    {
      v131 = *(*(this + 39) + 4 * v129);
      if (v131 >= 0x80)
      {
        v132 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v131);
        v128 = *(this + 80);
      }

      else
      {
        v132 = 1;
      }

      v130 += v132;
      ++v129;
    }

    while (v129 < v128);
  }

  v169 = v128;
  v178 = v90;
  v133 = *(this + 84);
  if (v133 < 1)
  {
    v135 = 0;
  }

  else
  {
    v134 = 0;
    v135 = 0;
    do
    {
      v136 = *(*(this + 41) + 4 * v134);
      if (v136 >= 0x80)
      {
        v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v136);
        v133 = *(this + 84);
      }

      else
      {
        v137 = 1;
      }

      v135 += v137;
      ++v134;
    }

    while (v134 < v133);
  }

  v168 = v133;
  v184 = v75;
  v138 = *(this + 88);
  if (v138 < 1)
  {
    v140 = 0;
  }

  else
  {
    v139 = 0;
    v140 = 0;
    do
    {
      v141 = *(*(this + 43) + 4 * v139);
      if (v141 >= 0x80)
      {
        v142 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v141);
        v138 = *(this + 88);
      }

      else
      {
        v142 = 1;
      }

      v140 += v142;
      ++v139;
    }

    while (v139 < v138);
  }

  v167 = v138;
  v181 = v78;
  v143 = *(this + 92);
  if (v143 < 1)
  {
    v145 = 0;
  }

  else
  {
    v144 = 0;
    v145 = 0;
    do
    {
      v146 = *(*(this + 45) + 4 * v144);
      if (v146 >= 0x80)
      {
        v147 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v146);
        v143 = *(this + 92);
      }

      else
      {
        v147 = 1;
      }

      v145 += v147;
      ++v144;
    }

    while (v144 < v143);
  }

  v166 = v143;
  v177 = v88;
  v148 = *(this + 96);
  if (v148 < 1)
  {
    v150 = 0;
  }

  else
  {
    v149 = 0;
    v150 = 0;
    do
    {
      v151 = *(*(this + 47) + 4 * v149);
      if (v151 >= 0x80)
      {
        v152 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v151);
        v148 = *(this + 96);
      }

      else
      {
        v152 = 1;
      }

      v150 += v152;
      ++v149;
    }

    while (v149 < v148);
  }

  v165 = v148;
  v179 = v83;
  v153 = *(this + 100);
  if (v153 < 1)
  {
    v155 = 0;
  }

  else
  {
    v154 = 0;
    v155 = 0;
    do
    {
      v156 = *(*(this + 49) + 4 * v154);
      if (v156 >= 0x80)
      {
        v157 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v156);
        v153 = *(this + 100);
      }

      else
      {
        v157 = 1;
      }

      v155 += v157;
      ++v154;
    }

    while (v154 < v153);
  }

  v183 = v73;
  v158 = *(this + 106);
  v164 = v153;
  if (v158 < 1)
  {
    v160 = 0;
  }

  else
  {
    v159 = 0;
    v160 = 0;
    do
    {
      v161 = *(*(this + 52) + 4 * v159);
      if (v161 >= 0x80)
      {
        v162 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v161);
        v158 = *(this + 106);
      }

      else
      {
        v162 = 1;
      }

      v160 += v162;
      ++v159;
    }

    while (v159 < v158);
  }

  result = (v184 + v185 + v182 + v180 + v178 + v191 + v190 + v189 + v188 + v187 + v186 + v125 + v130 + v135 + v140 + v145 + v150 + v155 + v160 + 2 * (v181 + v183 + v179 + v177 + v176 + v175 + v174 + v173 + v172 + v171 + v170 + v169 + v168 + v167 + v166 + v165 + v164 + v158));
  *(this + 110) = result;
  return result;
}

void awd::metrics::BluetoothAccessoryDsp::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryDsp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAccessoryDsp::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAccessoryDsp::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAccessoryDsp::CopyFrom(awd::metrics::BluetoothAccessoryDsp *this, const awd::metrics::BluetoothAccessoryDsp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAccessoryDsp::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothAccessoryDsp::Swap(awd::metrics::BluetoothAccessoryDsp *this, awd::metrics::BluetoothAccessoryDsp *a2)
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
    v3 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    v4 = *(a2 + 12);
    *(a2 + 11) = v3;
    v5 = *(this + 12);
    *(this + 12) = v4;
    *(a2 + 12) = v5;
    v6 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    v7 = *(a2 + 14);
    *(a2 + 13) = v6;
    v8 = *(this + 14);
    *(this + 14) = v7;
    *(a2 + 14) = v8;
    LODWORD(v6) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v6;
    LODWORD(v6) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v6;
    LODWORD(v6) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v6;
    LODWORD(v6) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v6;
    v9 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    v10 = *(a2 + 18);
    *(a2 + 17) = v9;
    v11 = *(this + 18);
    *(this + 18) = v10;
    *(a2 + 18) = v11;
    LODWORD(v9) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v9;
    LODWORD(v9) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v9;
    v12 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    v13 = *(a2 + 21);
    *(a2 + 20) = v12;
    v14 = *(this + 21);
    *(this + 21) = v13;
    *(a2 + 21) = v14;
    v15 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    v16 = *(a2 + 23);
    *(a2 + 22) = v15;
    v17 = *(this + 23);
    *(this + 23) = v16;
    *(a2 + 23) = v17;
    LODWORD(v15) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v15;
    v18 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    v19 = *(a2 + 26);
    *(a2 + 25) = v18;
    v20 = *(this + 26);
    *(this + 26) = v19;
    *(a2 + 26) = v20;
    LODWORD(v18) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v18;
    v21 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    v22 = *(a2 + 28);
    *(a2 + 27) = v21;
    v23 = *(this + 28);
    *(this + 28) = v22;
    *(a2 + 28) = v23;
    v24 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    v25 = *(a2 + 30);
    *(a2 + 29) = v24;
    v26 = *(this + 30);
    *(this + 30) = v25;
    *(a2 + 30) = v26;
    LODWORD(v24) = *(this + 62);
    *(this + 62) = *(a2 + 62);
    *(a2 + 62) = v24;
    LODWORD(v24) = *(this + 63);
    *(this + 63) = *(a2 + 63);
    *(a2 + 63) = v24;
    LODWORD(v24) = *(this + 64);
    *(this + 64) = *(a2 + 64);
    *(a2 + 64) = v24;
    LODWORD(v24) = *(this + 65);
    *(this + 65) = *(a2 + 65);
    *(a2 + 65) = v24;
    v27 = *(this + 33);
    *(this + 33) = *(a2 + 33);
    v28 = *(a2 + 34);
    *(a2 + 33) = v27;
    v29 = *(this + 34);
    *(this + 34) = v28;
    *(a2 + 34) = v29;
    v30 = *(this + 35);
    *(this + 35) = *(a2 + 35);
    v31 = *(a2 + 36);
    *(a2 + 35) = v30;
    v32 = *(this + 36);
    *(this + 36) = v31;
    *(a2 + 36) = v32;
    v33 = *(this + 37);
    *(this + 37) = *(a2 + 37);
    v34 = *(a2 + 38);
    *(a2 + 37) = v33;
    v35 = *(this + 38);
    *(this + 38) = v34;
    *(a2 + 38) = v35;
    v36 = *(this + 39);
    *(this + 39) = *(a2 + 39);
    v37 = *(a2 + 40);
    *(a2 + 39) = v36;
    v38 = *(this + 40);
    *(this + 40) = v37;
    *(a2 + 40) = v38;
    v39 = *(this + 41);
    *(this + 41) = *(a2 + 41);
    v40 = *(a2 + 42);
    *(a2 + 41) = v39;
    v41 = *(this + 42);
    *(this + 42) = v40;
    *(a2 + 42) = v41;
    v42 = *(this + 43);
    *(this + 43) = *(a2 + 43);
    v43 = *(a2 + 44);
    *(a2 + 43) = v42;
    v44 = *(this + 44);
    *(this + 44) = v43;
    *(a2 + 44) = v44;
    v45 = *(this + 45);
    *(this + 45) = *(a2 + 45);
    v46 = *(a2 + 46);
    *(a2 + 45) = v45;
    v47 = *(this + 46);
    *(this + 46) = v46;
    *(a2 + 46) = v47;
    v48 = *(this + 47);
    *(this + 47) = *(a2 + 47);
    v49 = *(a2 + 48);
    *(a2 + 47) = v48;
    v50 = *(this + 48);
    *(this + 48) = v49;
    *(a2 + 48) = v50;
    v51 = *(this + 49);
    *(this + 49) = *(a2 + 49);
    v52 = *(a2 + 50);
    *(a2 + 49) = v51;
    v53 = *(this + 50);
    *(this + 50) = v52;
    *(a2 + 50) = v53;
    LODWORD(v51) = *(this + 102);
    *(this + 102) = *(a2 + 102);
    *(a2 + 102) = v51;
    LODWORD(v51) = *(this + 103);
    *(this + 103) = *(a2 + 103);
    *(a2 + 103) = v51;
    v54 = *(this + 52);
    *(this + 52) = *(a2 + 52);
    result = *(a2 + 53);
    *(a2 + 52) = v54;
    v56 = *(this + 53);
    *(this + 53) = result;
    *(a2 + 53) = v56;
    LODWORD(v54) = *(this + 108);
    *(this + 108) = *(a2 + 108);
    *(a2 + 108) = v54;
    LODWORD(v54) = *(this + 109);
    *(this + 109) = *(a2 + 109);
    *(a2 + 109) = v54;
    LODWORD(v54) = *(this + 111);
    *(this + 111) = *(a2 + 111);
    *(a2 + 111) = v54;
    LODWORD(v54) = *(this + 112);
    *(this + 112) = *(a2 + 112);
    *(a2 + 112) = v54;
    LODWORD(v54) = *(this + 110);
    *(this + 110) = *(a2 + 110);
    *(a2 + 110) = v54;
  }

  return result;
}

double awd::metrics::BluetoothAccessoryIedSensors::SharedCtor(awd::metrics::BluetoothAccessoryIedSensors *this)
{
  result = 0.0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 54) = 0;
  return result;
}

awd::metrics::BluetoothAccessoryIedSensors *awd::metrics::BluetoothAccessoryIedSensors::BluetoothAccessoryIedSensors(awd::metrics::BluetoothAccessoryIedSensors *this, const awd::metrics::BluetoothAccessoryIedSensors *a2)
{
  *this = &unk_2A1D4BB98;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 54) = 0;
  awd::metrics::BluetoothAccessoryIedSensors::MergeFrom(this, a2);
  return this;
}

void sub_29639A8DC(_Unwind_Exception *a1)
{
  v7 = *(v1 + 23);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  awd::metrics::BluetoothAccessoryIedSensors::BluetoothAccessoryIedSensors(v5, v4, v3, v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryIedSensors::MergeFrom(awd::metrics::BluetoothAccessoryIedSensors *this, const awd::metrics::BluetoothAccessoryIedSensors *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v40);
  }

  v4 = *(a2 + 28);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 13, *(this + 28) + v4);
    memcpy((*(this + 13) + 4 * *(this + 28)), *(a2 + 13), 4 * *(a2 + 28));
    *(this + 28) += *(a2 + 28);
  }

  v5 = *(a2 + 36);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 17, *(this + 36) + v5);
    memcpy((*(this + 17) + 4 * *(this + 36)), *(a2 + 17), 4 * *(a2 + 36));
    *(this + 36) += *(a2 + 36);
  }

  v6 = *(a2 + 40);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 19, *(this + 40) + v6);
    memcpy((*(this + 19) + 4 * *(this + 40)), *(a2 + 19), 4 * *(a2 + 40));
    *(this + 40) += *(a2 + 40);
  }

  v7 = *(a2 + 44);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 21, *(this + 44) + v7);
    memcpy((*(this + 21) + 4 * *(this + 44)), *(a2 + 21), 4 * *(a2 + 44));
    *(this + 44) += *(a2 + 44);
  }

  v8 = *(a2 + 48);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 23, *(this + 48) + v8);
    memcpy((*(this + 23) + 4 * *(this + 48)), *(a2 + 23), 4 * *(a2 + 48));
    *(this + 48) += *(a2 + 48);
  }

  v9 = *(a2 + 53);
  if (!v9)
  {
    goto LABEL_23;
  }

  if (v9)
  {
    v17 = *(a2 + 1);
    *(this + 53) |= 1u;
    *(this + 1) = v17;
    v9 = *(a2 + 53);
    if ((v9 & 2) == 0)
    {
LABEL_16:
      if ((v9 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_56;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(a2 + 4);
  *(this + 53) |= 2u;
  *(this + 4) = v18;
  v9 = *(a2 + 53);
  if ((v9 & 4) == 0)
  {
LABEL_17:
    if ((v9 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_57;
  }

LABEL_56:
  v19 = *(a2 + 5);
  *(this + 53) |= 4u;
  *(this + 5) = v19;
  v9 = *(a2 + 53);
  if ((v9 & 8) == 0)
  {
LABEL_18:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_57:
  v20 = *(a2 + 6);
  *(this + 53) |= 8u;
  *(this + 6) = v20;
  v9 = *(a2 + 53);
  if ((v9 & 0x10) == 0)
  {
LABEL_19:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_59:
    v22 = *(a2 + 8);
    *(this + 53) |= 0x20u;
    *(this + 8) = v22;
    v9 = *(a2 + 53);
    if ((v9 & 0x40) == 0)
    {
LABEL_21:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_58:
  v21 = *(a2 + 7);
  *(this + 53) |= 0x10u;
  *(this + 7) = v21;
  v9 = *(a2 + 53);
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_59;
  }

LABEL_20:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_60:
  v23 = *(a2 + 9);
  *(this + 53) |= 0x40u;
  *(this + 9) = v23;
  v9 = *(a2 + 53);
  if ((v9 & 0x80) != 0)
  {
LABEL_22:
    v10 = *(a2 + 10);
    *(this + 53) |= 0x80u;
    *(this + 10) = v10;
    v9 = *(a2 + 53);
  }

LABEL_23:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_33;
  }

  if ((v9 & 0x100) != 0)
  {
    v24 = *(a2 + 11);
    *(this + 53) |= 0x100u;
    *(this + 11) = v24;
    v9 = *(a2 + 53);
    if ((v9 & 0x200) == 0)
    {
LABEL_26:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_64;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  v25 = *(a2 + 12);
  *(this + 53) |= 0x200u;
  *(this + 12) = v25;
  v9 = *(a2 + 53);
  if ((v9 & 0x400) == 0)
  {
LABEL_27:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  v26 = *(a2 + 13);
  *(this + 53) |= 0x400u;
  *(this + 13) = v26;
  v9 = *(a2 + 53);
  if ((v9 & 0x800) == 0)
  {
LABEL_28:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  v27 = *(a2 + 14);
  *(this + 53) |= 0x800u;
  *(this + 14) = v27;
  v9 = *(a2 + 53);
  if ((v9 & 0x1000) == 0)
  {
LABEL_29:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  v28 = *(a2 + 15);
  *(this + 53) |= 0x1000u;
  *(this + 15) = v28;
  v9 = *(a2 + 53);
  if ((v9 & 0x2000) == 0)
  {
LABEL_30:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  v29 = *(a2 + 16);
  *(this + 53) |= 0x2000u;
  *(this + 16) = v29;
  v9 = *(a2 + 53);
  if ((v9 & 0x4000) == 0)
  {
LABEL_31:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_68:
  v30 = *(a2 + 17);
  *(this + 53) |= 0x4000u;
  *(this + 17) = v30;
  v9 = *(a2 + 53);
  if ((v9 & 0x8000) != 0)
  {
LABEL_32:
    v11 = *(a2 + 18);
    *(this + 53) |= 0x8000u;
    *(this + 18) = v11;
    v9 = *(a2 + 53);
  }

LABEL_33:
  if ((v9 & 0xFF0000) == 0)
  {
    goto LABEL_42;
  }

  if ((v9 & 0x10000) != 0)
  {
    v31 = *(a2 + 19);
    *(this + 53) |= 0x10000u;
    *(this + 19) = v31;
    v9 = *(a2 + 53);
    if ((v9 & 0x20000) == 0)
    {
LABEL_36:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_72;
    }
  }

  else if ((v9 & 0x20000) == 0)
  {
    goto LABEL_36;
  }

  v32 = *(a2 + 20);
  *(this + 53) |= 0x20000u;
  *(this + 20) = v32;
  v9 = *(a2 + 53);
  if ((v9 & 0x40000) == 0)
  {
LABEL_37:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_73;
  }

LABEL_72:
  v33 = *(a2 + 21);
  *(this + 53) |= 0x40000u;
  *(this + 21) = v33;
  v9 = *(a2 + 53);
  if ((v9 & 0x80000) == 0)
  {
LABEL_38:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_74;
  }

LABEL_73:
  v34 = *(a2 + 22);
  *(this + 53) |= 0x80000u;
  *(this + 22) = v34;
  v9 = *(a2 + 53);
  if ((v9 & 0x100000) == 0)
  {
LABEL_39:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_75;
  }

LABEL_74:
  v35 = *(a2 + 23);
  *(this + 53) |= 0x100000u;
  *(this + 23) = v35;
  v9 = *(a2 + 53);
  if ((v9 & 0x200000) == 0)
  {
LABEL_40:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_75:
  v36 = *(a2 + 24);
  *(this + 53) |= 0x200000u;
  *(this + 24) = v36;
  v9 = *(a2 + 53);
  if ((v9 & 0x800000) != 0)
  {
LABEL_41:
    v12 = *(a2 + 25);
    *(this + 53) |= 0x800000u;
    *(this + 25) = v12;
    v9 = *(a2 + 53);
  }

LABEL_42:
  if (!HIBYTE(v9))
  {
    goto LABEL_48;
  }

  if ((v9 & 0x1000000) != 0)
  {
    v37 = *(a2 + 30);
    *(this + 53) |= 0x1000000u;
    *(this + 30) = v37;
    v9 = *(a2 + 53);
    if ((v9 & 0x2000000) == 0)
    {
LABEL_45:
      if ((v9 & 0x4000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_79;
    }
  }

  else if ((v9 & 0x2000000) == 0)
  {
    goto LABEL_45;
  }

  v38 = *(a2 + 31);
  *(this + 53) |= 0x2000000u;
  *(this + 31) = v38;
  v9 = *(a2 + 53);
  if ((v9 & 0x4000000) == 0)
  {
LABEL_46:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_79:
  v39 = *(a2 + 32);
  *(this + 53) |= 0x4000000u;
  *(this + 32) = v39;
  if ((*(a2 + 53) & 0x8000000) != 0)
  {
LABEL_47:
    v13 = *(a2 + 33);
    *(this + 53) |= 0x8000000u;
    *(this + 33) = v13;
  }

LABEL_48:
  LOBYTE(v14) = *(a2 + 216);
  if (v14)
  {
    if (*(a2 + 216))
    {
      v15 = *(a2 + 50);
      *(this + 54) |= 1u;
      *(this + 50) = v15;
      v14 = *(a2 + 54);
    }

    if ((v14 & 2) != 0)
    {
      v16 = *(a2 + 51);
      *(this + 54) |= 2u;
      *(this + 51) = v16;
    }
  }
}

void sub_29639AEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryIedSensors::~BluetoothAccessoryIedSensors(awd::metrics::BluetoothAccessoryIedSensors *this)
{
  *this = &unk_2A1D4BB98;
  v2 = *(this + 23);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 21);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 19);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 17);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 13);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAccessoryIedSensors::~BluetoothAccessoryIedSensors(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAccessoryIedSensors::default_instance(awd::metrics::BluetoothAccessoryIedSensors *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryIedSensors::default_instance_;
  if (!awd::metrics::BluetoothAccessoryIedSensors::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryIedSensors::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryIedSensors::Clear(uint64_t this)
{
  v1 = *(this + 212);
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
    *(this + 84) = 0;
    *(this + 76) = 0;
    *(this + 100) = 0;
    *(this + 92) = 0;
  }

  if (HIBYTE(v1))
  {
    *(this + 120) = 0;
    *(this + 128) = 0;
  }

  if (*(this + 216))
  {
    *(this + 200) = 0;
  }

  *(this + 112) = 0;
  *(this + 144) = 0;
  *(this + 160) = 0;
  *(this + 176) = 0;
  *(this + 192) = 0;
  *(this + 212) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAccessoryIedSensors::MergePartialFromCodedStream(awd::metrics::BluetoothAccessoryIedSensors *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_86;
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

        *(this + 53) |= 1u;
        if (v10 < v7 && *v10 == 16)
        {
          v25 = v10 + 1;
          *(a2 + 1) = v25;
          goto LABEL_100;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_100:
        if (v25 >= v7 || (v45 = *v25, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v45;
          v46 = v25 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 53) |= 2u;
        if (v46 >= v7 || *v46 != 24)
        {
          continue;
        }

        v21 = v46 + 1;
        *(a2 + 1) = v21;
LABEL_108:
        if (v21 >= v7 || (v47 = *v21, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v47;
          v48 = v21 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 53) |= 4u;
        if (v48 >= v7 || *v48 != 32)
        {
          continue;
        }

        v23 = v48 + 1;
        *(a2 + 1) = v23;
LABEL_116:
        if (v23 >= v7 || (v49 = *v23, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v49;
          v50 = v23 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 53) |= 8u;
        if (v50 >= v7 || *v50 != 40)
        {
          continue;
        }

        v16 = v50 + 1;
        *(a2 + 1) = v16;
LABEL_124:
        if (v16 >= v7 || (v51 = *v16, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v51;
          v52 = v16 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 53) |= 0x10u;
        if (v52 >= v7 || *v52 != 48)
        {
          continue;
        }

        v29 = v52 + 1;
        *(a2 + 1) = v29;
LABEL_132:
        if (v29 >= v7 || (v53 = *v29, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v53;
          v54 = v29 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 53) |= 0x20u;
        if (v54 >= v7 || *v54 != 56)
        {
          continue;
        }

        v32 = v54 + 1;
        *(a2 + 1) = v32;
LABEL_140:
        if (v32 >= v7 || (v55 = *v32, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v56 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v55;
          v56 = v32 + 1;
          *(a2 + 1) = v56;
        }

        *(this + 53) |= 0x40u;
        if (v56 >= v7 || *v56 != 64)
        {
          continue;
        }

        v24 = v56 + 1;
        *(a2 + 1) = v24;
LABEL_148:
        if (v24 >= v7 || (v57 = *v24, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v57;
          v58 = v24 + 1;
          *(a2 + 1) = v58;
        }

        *(this + 53) |= 0x80u;
        if (v58 >= v7 || *v58 != 72)
        {
          continue;
        }

        v35 = v58 + 1;
        *(a2 + 1) = v35;
LABEL_156:
        if (v35 >= v7 || (v59 = *v35, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v59;
          v60 = v35 + 1;
          *(a2 + 1) = v60;
        }

        *(this + 53) |= 0x100u;
        if (v60 >= v7 || *v60 != 80)
        {
          continue;
        }

        v18 = v60 + 1;
        *(a2 + 1) = v18;
LABEL_164:
        if (v18 >= v7 || (v61 = *v18, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v62 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v61;
          v62 = v18 + 1;
          *(a2 + 1) = v62;
        }

        *(this + 53) |= 0x200u;
        if (v62 >= v7 || *v62 != 88)
        {
          continue;
        }

        v34 = v62 + 1;
        *(a2 + 1) = v34;
LABEL_172:
        if (v34 >= v7 || (v63 = *v34, v63 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v64 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v63;
          v64 = v34 + 1;
          *(a2 + 1) = v64;
        }

        *(this + 53) |= 0x400u;
        if (v64 >= v7 || *v64 != 96)
        {
          continue;
        }

        v15 = v64 + 1;
        *(a2 + 1) = v15;
LABEL_180:
        if (v15 >= v7 || (v65 = *v15, v65 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v66 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v65;
          v66 = v15 + 1;
          *(a2 + 1) = v66;
        }

        *(this + 53) |= 0x800u;
        if (v66 >= v7 || *v66 != 104)
        {
          continue;
        }

        v17 = v66 + 1;
        *(a2 + 1) = v17;
LABEL_188:
        if (v17 >= v7 || (v67 = *v17, v67 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v68 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v67;
          v68 = v17 + 1;
          *(a2 + 1) = v68;
        }

        *(this + 53) |= 0x1000u;
        if (v68 >= v7 || *v68 != 112)
        {
          continue;
        }

        v31 = v68 + 1;
        *(a2 + 1) = v31;
LABEL_196:
        if (v31 >= v7 || (v69 = *v31, v69 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v70 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v69;
          v70 = v31 + 1;
          *(a2 + 1) = v70;
        }

        *(this + 53) |= 0x2000u;
        if (v70 >= v7 || *v70 != 120)
        {
          continue;
        }

        v13 = v70 + 1;
        *(a2 + 1) = v13;
LABEL_204:
        if (v13 >= v7 || (v71 = *v13, v71 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v72 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v71;
          v72 = (v13 + 1);
          *(a2 + 1) = v72;
        }

        *(this + 53) |= 0x4000u;
        if (v7 - v72 < 2 || *v72 != 128 || v72[1] != 1)
        {
          continue;
        }

        v22 = (v72 + 2);
        *(a2 + 1) = v22;
LABEL_213:
        if (v22 >= v7 || (v73 = *v22, v73 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v74 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v73;
          v74 = (v22 + 1);
          *(a2 + 1) = v74;
        }

        *(this + 53) |= 0x8000u;
        if (v7 - v74 < 2 || *v74 != 136 || v74[1] != 1)
        {
          continue;
        }

        v12 = (v74 + 2);
        *(a2 + 1) = v12;
LABEL_222:
        if (v12 >= v7 || (v75 = *v12, v75 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v76 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v75;
          v76 = (v12 + 1);
          *(a2 + 1) = v76;
        }

        *(this + 53) |= 0x10000u;
        if (v7 - v76 < 2 || *v76 != 144 || v76[1] != 1)
        {
          continue;
        }

        v27 = (v76 + 2);
        *(a2 + 1) = v27;
LABEL_231:
        if (v27 >= v7 || (v77 = *v27, v77 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v78 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v77;
          v78 = (v27 + 1);
          *(a2 + 1) = v78;
        }

        *(this + 53) |= 0x20000u;
        if (v7 - v78 < 2 || *v78 != 152 || v78[1] != 1)
        {
          continue;
        }

        v33 = (v78 + 2);
        *(a2 + 1) = v33;
LABEL_240:
        if (v33 >= v7 || (v79 = *v33, v79 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v80 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v79;
          v80 = (v33 + 1);
          *(a2 + 1) = v80;
        }

        *(this + 53) |= 0x40000u;
        if (v7 - v80 < 2 || *v80 != 160 || v80[1] != 1)
        {
          continue;
        }

        v37 = (v80 + 2);
        *(a2 + 1) = v37;
LABEL_249:
        if (v37 >= v7 || (v81 = *v37, v81 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v82 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v81;
          v82 = (v37 + 1);
          *(a2 + 1) = v82;
        }

        *(this + 53) |= 0x80000u;
        if (v7 - v82 < 2 || *v82 != 168 || v82[1] != 1)
        {
          continue;
        }

        v28 = (v82 + 2);
        *(a2 + 1) = v28;
LABEL_258:
        if (v28 >= v7 || (v83 = *v28, v83 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
          if (!result)
          {
            return result;
          }

          v84 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 23) = v83;
          v84 = (v28 + 1);
          *(a2 + 1) = v84;
        }

        *(this + 53) |= 0x100000u;
        if (v7 - v84 < 2 || *v84 != 176 || v84[1] != 1)
        {
          continue;
        }

        v30 = (v84 + 2);
        *(a2 + 1) = v30;
LABEL_267:
        if (v30 >= v7 || (v85 = *v30, v85 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
          if (!result)
          {
            return result;
          }

          v86 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 24) = v85;
          v86 = (v30 + 1);
          *(a2 + 1) = v86;
        }

        *(this + 53) |= 0x200000u;
        if (v7 - v86 >= 2 && *v86 == 184 && v86[1] == 1)
        {
          goto LABEL_275;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_108;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_116;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_124;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v29 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_132;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v32 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_140;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v24 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_148;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v35 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_156;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_164;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v34 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_172;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_180;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_188;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v31 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_196;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_204;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_213;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_222;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v27 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_231;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v33 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_240;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v37 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_249;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v28 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_258;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v30 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_267;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 104);
            if (!result)
            {
              return result;
            }

            goto LABEL_294;
          }

LABEL_86:
          if (v6 == 4)
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
          v42 = *(a2 + 1);
          v7 = *(a2 + 2);
          while (1)
          {
            v156 = 0;
            if (v42 >= v7 || *v42 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
              {
                return 0;
              }
            }

            else
            {
              v156 = *v42;
              *(a2 + 1) = v42 + 1;
            }

            v87 = *(this + 28);
            if (v87 == *(this + 29))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 13, v87 + 1);
              v87 = *(this + 28);
            }

            v88 = v156;
            v89 = *(this + 13);
            *(this + 28) = v87 + 1;
            *(v89 + 4 * v87) = v88;
            v90 = *(this + 29) - *(this + 28);
            if (v90 >= 1)
            {
              v91 = v90 + 1;
              do
              {
                v92 = *(a2 + 1);
                v93 = *(a2 + 2);
                if (v93 - v92 < 2 || *v92 != 184 || v92[1] != 1)
                {
                  break;
                }

                *(a2 + 1) = v92 + 2;
                if ((v92 + 2) >= v93 || v92[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                  {
                    return 0;
                  }
                }

                else
                {
                  v156 = v92[2];
                  *(a2 + 1) = v92 + 3;
                }

                v94 = *(this + 28);
                if (v94 >= *(this + 29))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                  v94 = *(this + 28);
                }

                v95 = v156;
                v96 = *(this + 13);
                *(this + 28) = v94 + 1;
                *(v96 + 4 * v94) = v95;
                --v91;
              }

              while (v91 > 1);
            }

LABEL_294:
            v86 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v7 - v86 < 2)
            {
              goto LABEL_1;
            }

            v97 = *v86;
            if (v97 == 192)
            {
              break;
            }

            if (v97 != 184 || v86[1] != 1)
            {
              goto LABEL_1;
            }

LABEL_275:
            v42 = (v86 + 2);
            *(a2 + 1) = v42;
          }

          if (v86[1] == 1)
          {
            v38 = (v86 + 2);
            *(a2 + 1) = v38;
LABEL_301:
            if (v38 >= v7 || (v98 = *v38, v98 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
              if (!result)
              {
                return result;
              }

              v99 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 25) = v98;
              v99 = (v38 + 1);
              *(a2 + 1) = v99;
            }

            *(this + 53) |= 0x800000u;
            if (v7 - v99 >= 2 && *v99 == 200 && v99[1] == 1)
            {
              v20 = (v99 + 2);
              *(a2 + 1) = v20;
LABEL_310:
              if (v20 >= v7 || (v100 = *v20, v100 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
                if (!result)
                {
                  return result;
                }

                v101 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 30) = v100;
                v101 = (v20 + 1);
                *(a2 + 1) = v101;
              }

              *(this + 53) |= 0x1000000u;
              if (v7 - v101 >= 2 && *v101 == 208 && v101[1] == 1)
              {
                v19 = (v101 + 2);
                *(a2 + 1) = v19;
LABEL_319:
                if (v19 >= v7 || (v102 = *v19, v102 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
                  if (!result)
                  {
                    return result;
                  }

                  v103 = *(a2 + 1);
                  v7 = *(a2 + 2);
                }

                else
                {
                  *(this + 31) = v102;
                  v103 = (v19 + 1);
                  *(a2 + 1) = v103;
                }

                *(this + 53) |= 0x2000000u;
                if (v7 - v103 >= 2 && *v103 == 216 && v103[1] == 1)
                {
                  v39 = (v103 + 2);
                  *(a2 + 1) = v39;
LABEL_328:
                  if (v39 >= v7 || (v104 = *v39, v104 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
                    if (!result)
                    {
                      return result;
                    }

                    v105 = *(a2 + 1);
                    v7 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 32) = v104;
                    v105 = (v39 + 1);
                    *(a2 + 1) = v105;
                  }

                  *(this + 53) |= 0x4000000u;
                  if (v7 - v105 >= 2 && *v105 == 224 && v105[1] == 1)
                  {
                    v11 = (v105 + 2);
                    *(a2 + 1) = v11;
LABEL_337:
                    if (v11 >= v7 || (v106 = *v11, v106 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 33);
                      if (!result)
                      {
                        return result;
                      }

                      v107 = *(a2 + 1);
                      v7 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 33) = v106;
                      v107 = (v11 + 1);
                      *(a2 + 1) = v107;
                    }

                    *(this + 53) |= 0x8000000u;
                    if (v7 - v107 >= 2 && *v107 == 232 && v107[1] == 1)
                    {
                      while (1)
                      {
                        v43 = (v107 + 2);
                        *(a2 + 1) = v43;
LABEL_346:
                        v156 = 0;
                        if (v43 >= v7 || *v43 < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v156 = *v43;
                          *(a2 + 1) = v43 + 1;
                        }

                        v108 = *(this + 36);
                        if (v108 == *(this + 37))
                        {
                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 17, v108 + 1);
                          v108 = *(this + 36);
                        }

                        v109 = v156;
                        v110 = *(this + 17);
                        *(this + 36) = v108 + 1;
                        *(v110 + 4 * v108) = v109;
                        v111 = *(this + 37) - *(this + 36);
                        if (v111 >= 1)
                        {
                          v112 = v111 + 1;
                          do
                          {
                            v113 = *(a2 + 1);
                            v114 = *(a2 + 2);
                            if (v114 - v113 < 2 || *v113 != 232 || v113[1] != 1)
                            {
                              break;
                            }

                            *(a2 + 1) = v113 + 2;
                            if ((v113 + 2) >= v114 || v113[2] < 0)
                            {
                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              v156 = v113[2];
                              *(a2 + 1) = v113 + 3;
                            }

                            v115 = *(this + 36);
                            if (v115 >= *(this + 37))
                            {
                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                              v115 = *(this + 36);
                            }

                            v116 = v156;
                            v117 = *(this + 17);
                            *(this + 36) = v115 + 1;
                            *(v117 + 4 * v115) = v116;
                            --v112;
                          }

                          while (v112 > 1);
                        }

LABEL_364:
                        v107 = *(a2 + 1);
                        v7 = *(a2 + 2);
                        if (v7 - v107 < 2)
                        {
                          goto LABEL_1;
                        }

                        v118 = *v107;
                        if (v118 == 240)
                        {
                          break;
                        }

                        if (v118 != 232 || v107[1] != 1)
                        {
                          goto LABEL_1;
                        }
                      }

                      if (v107[1] == 1)
                      {
                        while (1)
                        {
                          v44 = (v107 + 2);
                          *(a2 + 1) = v44;
LABEL_371:
                          v156 = 0;
                          if (v44 >= v7 || *v44 < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v156 = *v44;
                            *(a2 + 1) = v44 + 1;
                          }

                          v119 = *(this + 40);
                          if (v119 == *(this + 41))
                          {
                            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 19, v119 + 1);
                            v119 = *(this + 40);
                          }

                          v120 = v156;
                          v121 = *(this + 19);
                          *(this + 40) = v119 + 1;
                          *(v121 + 4 * v119) = v120;
                          v122 = *(this + 41) - *(this + 40);
                          if (v122 >= 1)
                          {
                            v123 = v122 + 1;
                            do
                            {
                              v124 = *(a2 + 1);
                              v125 = *(a2 + 2);
                              if (v125 - v124 < 2 || *v124 != 240 || v124[1] != 1)
                              {
                                break;
                              }

                              *(a2 + 1) = v124 + 2;
                              if ((v124 + 2) >= v125 || v124[2] < 0)
                              {
                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                                {
                                  return 0;
                                }
                              }

                              else
                              {
                                v156 = v124[2];
                                *(a2 + 1) = v124 + 3;
                              }

                              v126 = *(this + 40);
                              if (v126 >= *(this + 41))
                              {
                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                                v126 = *(this + 40);
                              }

                              v127 = v156;
                              v128 = *(this + 19);
                              *(this + 40) = v126 + 1;
                              *(v128 + 4 * v126) = v127;
                              --v123;
                            }

                            while (v123 > 1);
                          }

LABEL_389:
                          v107 = *(a2 + 1);
                          v7 = *(a2 + 2);
                          if (v7 - v107 < 2)
                          {
                            goto LABEL_1;
                          }

                          v129 = *v107;
                          if (v129 == 248)
                          {
                            break;
                          }

                          if (v129 != 240 || v107[1] != 1)
                          {
                            goto LABEL_1;
                          }
                        }

                        if (v107[1] == 1)
                        {
                          while (1)
                          {
                            v41 = (v107 + 2);
                            *(a2 + 1) = v41;
LABEL_396:
                            v156 = 0;
                            if (v41 >= v7 || *v41 < 0)
                            {
                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                              {
                                return 0;
                              }
                            }

                            else
                            {
                              v156 = *v41;
                              *(a2 + 1) = v41 + 1;
                            }

                            v130 = *(this + 44);
                            if (v130 == *(this + 45))
                            {
                              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 21, v130 + 1);
                              v130 = *(this + 44);
                            }

                            v131 = v156;
                            v132 = *(this + 21);
                            *(this + 44) = v130 + 1;
                            *(v132 + 4 * v130) = v131;
                            v133 = *(this + 45) - *(this + 44);
                            if (v133 >= 1)
                            {
                              v134 = v133 + 1;
                              do
                              {
                                v135 = *(a2 + 1);
                                v136 = *(a2 + 2);
                                if (v136 - v135 < 2 || *v135 != 248 || v135[1] != 1)
                                {
                                  break;
                                }

                                *(a2 + 1) = v135 + 2;
                                if ((v135 + 2) >= v136 || v135[2] < 0)
                                {
                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                                  {
                                    return 0;
                                  }
                                }

                                else
                                {
                                  v156 = v135[2];
                                  *(a2 + 1) = v135 + 3;
                                }

                                v137 = *(this + 44);
                                if (v137 >= *(this + 45))
                                {
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                                  v137 = *(this + 44);
                                }

                                v138 = v156;
                                v139 = *(this + 21);
                                *(this + 44) = v137 + 1;
                                *(v139 + 4 * v137) = v138;
                                --v134;
                              }

                              while (v134 > 1);
                            }

LABEL_414:
                            v107 = *(a2 + 1);
                            v7 = *(a2 + 2);
                            if (v7 - v107 < 2)
                            {
                              goto LABEL_1;
                            }

                            v140 = *v107;
                            if (v140 == 128)
                            {
                              break;
                            }

                            if (v140 != 248 || v107[1] != 1)
                            {
                              goto LABEL_1;
                            }
                          }

                          if (v107[1] == 2)
                          {
LABEL_420:
                            v40 = (v107 + 2);
                            *(a2 + 1) = v40;
                            goto LABEL_421;
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
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v38 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_301;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_310;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_319;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v39 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_328;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v11 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_337;
      case 0x1Du:
        if ((TagFallback & 7) == 0)
        {
          v43 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_346;
        }

        if (v6 != 2)
        {
          goto LABEL_86;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 136);
        if (!result)
        {
          return result;
        }

        goto LABEL_364;
      case 0x1Eu:
        if ((TagFallback & 7) == 0)
        {
          v44 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_371;
        }

        if (v6 != 2)
        {
          goto LABEL_86;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 152);
        if (!result)
        {
          return result;
        }

        goto LABEL_389;
      case 0x1Fu:
        if ((TagFallback & 7) == 0)
        {
          v41 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_396;
        }

        if (v6 != 2)
        {
          goto LABEL_86;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 168);
        if (!result)
        {
          return result;
        }

        goto LABEL_414;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 != 2)
          {
            goto LABEL_86;
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 184);
          if (!result)
          {
            return result;
          }

LABEL_439:
          v107 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v7 - v107 >= 2)
          {
            v151 = *v107;
            if (v151 == 136)
            {
              if (v107[1] == 2)
              {
                v36 = (v107 + 2);
                *(a2 + 1) = v36;
LABEL_446:
                if (v36 >= v7 || (v152 = *v36, v152 < 0))
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
                  v153 = (v36 + 1);
                  *(a2 + 1) = v153;
                }

                *(this + 54) |= 1u;
                if (v7 - v153 >= 2 && *v153 == 144 && v153[1] == 2)
                {
                  v14 = (v153 + 2);
                  *(a2 + 1) = v14;
LABEL_455:
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

                  *(this + 54) |= 2u;
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

            else if (v151 == 128 && v107[1] == 2)
            {
              goto LABEL_420;
            }
          }

          continue;
        }

        v40 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_421:
        v156 = 0;
        if (v40 < v7 && (*v40 & 0x80000000) == 0)
        {
          v156 = *v40;
          *(a2 + 1) = v40 + 1;
          goto LABEL_425;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
        {
LABEL_425:
          v141 = *(this + 48);
          if (v141 == *(this + 49))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 23, v141 + 1);
            v141 = *(this + 48);
          }

          v142 = v156;
          v143 = *(this + 23);
          *(this + 48) = v141 + 1;
          *(v143 + 4 * v141) = v142;
          v144 = *(this + 49) - *(this + 48);
          if (v144 >= 1)
          {
            v145 = v144 + 1;
            do
            {
              v146 = *(a2 + 1);
              v147 = *(a2 + 2);
              if (v147 - v146 < 2 || *v146 != 128 || v146[1] != 2)
              {
                break;
              }

              *(a2 + 1) = v146 + 2;
              if ((v146 + 2) >= v147 || v146[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v156))
                {
                  return 0;
                }
              }

              else
              {
                v156 = v146[2];
                *(a2 + 1) = v146 + 3;
              }

              v148 = *(this + 48);
              if (v148 >= *(this + 49))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
                v148 = *(this + 48);
              }

              v149 = v156;
              v150 = *(this + 23);
              *(this + 48) = v148 + 1;
              *(v150 + 4 * v148) = v149;
              --v145;
            }

            while (v145 > 1);
          }

          goto LABEL_439;
        }

        return 0;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v36 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_446;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_455;
      default:
        goto LABEL_86;
    }
  }
}