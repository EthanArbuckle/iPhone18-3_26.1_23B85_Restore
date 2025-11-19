uint64_t awd::metrics::BluetoothAACPLinkInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 528);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 528);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_127;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_128;
  }

LABEL_127:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_129;
  }

LABEL_128:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_130;
  }

LABEL_129:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_131;
  }

LABEL_130:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_132;
  }

LABEL_131:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_133;
  }

LABEL_132:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_134;
  }

LABEL_133:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_135;
  }

LABEL_134:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_136;
  }

LABEL_135:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_137;
  }

LABEL_136:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_138;
  }

LABEL_137:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_139;
  }

LABEL_138:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_140;
  }

LABEL_139:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_141;
  }

LABEL_140:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 72), a2, a4);
  v6 = *(v5 + 528);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_141:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 76), a2, a4);
  if ((*(v5 + 528) & 0x20000) != 0)
  {
LABEL_19:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 128), a2, a4);
  }

LABEL_20:
  if (*(v5 + 88) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(*(v5 + 80) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(*(v5 + 96) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 104));
  }

  if (*(v5 + 120) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(*(v5 + 112) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 120));
  }

  if (*(v5 + 144) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(*(v5 + 136) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 144));
  }

  if (*(v5 + 160) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(*(v5 + 152) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 160));
  }

  if (*(v5 + 176) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(*(v5 + 168) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 176));
  }

  if (*(v5 + 192) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(*(v5 + 184) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 192));
  }

  if ((*(v5 + 531) & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(v5 + 132), a2, a4);
  }

  if ((*(v5 + 537) & 0x40) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 520), a2, a4);
  }

  if (*(v5 + 512) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(*(v5 + 504) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 512));
  }

  if (*(v5 + 208) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(*(v5 + 200) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 208));
  }

  if (*(v5 + 224) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(*(v5 + 216) + 4 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 224));
  }

  v17 = *(v5 + 528);
  if ((v17 & 0x10000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 232), a2, a4);
    v17 = *(v5 + 528);
    if ((v17 & 0x20000000) == 0)
    {
LABEL_56:
      if ((v17 & 0x40000000) == 0)
      {
        goto LABEL_57;
      }

LABEL_145:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 240), a2, a4);
      if ((*(v5 + 528) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_146;
    }
  }

  else if ((v17 & 0x20000000) == 0)
  {
    goto LABEL_56;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(v5 + 236), a2, a4);
  v17 = *(v5 + 528);
  if ((v17 & 0x40000000) != 0)
  {
    goto LABEL_145;
  }

LABEL_57:
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

LABEL_146:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, *(v5 + 244), a2, a4);
LABEL_58:
  v18 = *(v5 + 532);
  if (v18)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(v5 + 248), a2, a4);
    v18 = *(v5 + 532);
    if ((v18 & 2) == 0)
    {
LABEL_60:
      if ((v18 & 4) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_149;
    }
  }

  else if ((v18 & 2) == 0)
  {
    goto LABEL_60;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 252), a2, a4);
  v18 = *(v5 + 532);
  if ((v18 & 4) == 0)
  {
LABEL_61:
    if ((v18 & 8) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_150;
  }

LABEL_149:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, *(v5 + 256), a2, a4);
  v18 = *(v5 + 532);
  if ((v18 & 8) == 0)
  {
LABEL_62:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_150:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x26, *(v5 + 260), a2, a4);
  if ((*(v5 + 532) & 0x10) != 0)
  {
LABEL_63:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(v5 + 264), a2, a4);
  }

LABEL_64:
  if (*(v5 + 280) >= 1)
  {
    v19 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(*(v5 + 272) + 4 * v19++), a2, a4);
    }

    while (v19 < *(v5 + 280));
  }

  v20 = *(v5 + 532);
  if ((v20 & 0x40) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(v5 + 268), a2, a4);
    v20 = *(v5 + 532);
    if ((v20 & 0x80) == 0)
    {
LABEL_69:
      if ((v20 & 0x100) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_154;
    }
  }

  else if ((v20 & 0x80) == 0)
  {
    goto LABEL_69;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2A, *(v5 + 288), a2, a4);
  v20 = *(v5 + 532);
  if ((v20 & 0x100) == 0)
  {
LABEL_70:
    if ((v20 & 0x200) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_155;
  }

LABEL_154:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, *(v5 + 292), a2, a4);
  v20 = *(v5 + 532);
  if ((v20 & 0x200) == 0)
  {
LABEL_71:
    if ((v20 & 0x400) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_156;
  }

LABEL_155:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2C, *(v5 + 296), a2, a4);
  v20 = *(v5 + 532);
  if ((v20 & 0x400) == 0)
  {
LABEL_72:
    if ((v20 & 0x800) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_157;
  }

LABEL_156:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2D, *(v5 + 300), a2, a4);
  v20 = *(v5 + 532);
  if ((v20 & 0x800) == 0)
  {
LABEL_73:
    if ((v20 & 0x1000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_158;
  }

LABEL_157:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2E, *(v5 + 304), a2, a4);
  v20 = *(v5 + 532);
  if ((v20 & 0x1000) == 0)
  {
LABEL_74:
    if ((v20 & 0x2000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_158:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2F, *(v5 + 308), a2, a4);
  if ((*(v5 + 532) & 0x2000) != 0)
  {
LABEL_75:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x30, *(v5 + 312), a2, a4);
  }

LABEL_76:
  if (*(v5 + 328) >= 1)
  {
    v21 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x31, *(*(v5 + 320) + 4 * v21++), a2, a4);
    }

    while (v21 < *(v5 + 328));
  }

  v22 = *(v5 + 532);
  if ((v22 & 0x8000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x32, *(v5 + 316), a2, a4);
    v22 = *(v5 + 532);
  }

  if ((v22 & 0x10000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x33, *(v5 + 352), a2, a4);
  }

  if (*(v5 + 344) >= 1)
  {
    v23 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x34, *(*(v5 + 336) + 4 * v23++), a2, a4);
    }

    while (v23 < *(v5 + 344));
  }

  v24 = *(v5 + 532);
  if ((v24 & 0x40000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x35, *(v5 + 356), a2, a4);
    v24 = *(v5 + 532);
    if ((v24 & 0x80000) == 0)
    {
LABEL_88:
      if ((v24 & 0x100000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_162;
    }
  }

  else if ((v24 & 0x80000) == 0)
  {
    goto LABEL_88;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x36, *(v5 + 360), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x100000) == 0)
  {
LABEL_89:
    if ((v24 & 0x200000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_163;
  }

LABEL_162:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x37, *(v5 + 364), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x200000) == 0)
  {
LABEL_90:
    if ((v24 & 0x400000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_164;
  }

LABEL_163:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x38, *(v5 + 368), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x400000) == 0)
  {
LABEL_91:
    if ((v24 & 0x800000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_165;
  }

LABEL_164:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x39, *(v5 + 372), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x800000) == 0)
  {
LABEL_92:
    if ((v24 & 0x1000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_166;
  }

LABEL_165:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3A, *(v5 + 376), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x1000000) == 0)
  {
LABEL_93:
    if ((v24 & 0x2000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_167;
  }

LABEL_166:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3B, *(v5 + 380), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x2000000) == 0)
  {
LABEL_94:
    if ((v24 & 0x4000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_168;
  }

LABEL_167:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3C, *(v5 + 384), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x4000000) == 0)
  {
LABEL_95:
    if ((v24 & 0x8000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_169;
  }

LABEL_168:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3D, *(v5 + 388), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x8000000) == 0)
  {
LABEL_96:
    if ((v24 & 0x10000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_170;
  }

LABEL_169:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3E, *(v5 + 392), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x10000000) == 0)
  {
LABEL_97:
    if ((v24 & 0x20000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_171;
  }

LABEL_170:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3F, *(v5 + 396), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x20000000) == 0)
  {
LABEL_98:
    if ((v24 & 0x40000000) == 0)
    {
      goto LABEL_99;
    }

LABEL_172:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x41, *(v5 + 404), a2, a4);
    if ((*(v5 + 532) & 0x80000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_173;
  }

LABEL_171:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x40, *(v5 + 400), a2, a4);
  v24 = *(v5 + 532);
  if ((v24 & 0x40000000) != 0)
  {
    goto LABEL_172;
  }

LABEL_99:
  if ((v24 & 0x80000000) == 0)
  {
    goto LABEL_100;
  }

LABEL_173:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x42, *(v5 + 408), a2, a4);
LABEL_100:
  v25 = *(v5 + 536);
  if (v25)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x43, *(v5 + 412), a2, a4);
    v25 = *(v5 + 536);
  }

  if ((v25 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x44, *(v5 + 432), a2, a4);
  }

  if (*(v5 + 424) >= 1)
  {
    v26 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x45, *(*(v5 + 416) + 4 * v26++), a2, a4);
    }

    while (v26 < *(v5 + 424));
  }

  if ((*(v5 + 536) & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x46, *(v5 + 436), a2, a4);
  }

  if (*(v5 + 448) >= 1)
  {
    v27 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x47, *(*(v5 + 440) + 4 * v27++), a2, a4);
    }

    while (v27 < *(v5 + 448));
  }

  v28 = *(v5 + 536);
  if ((v28 & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x48, *(v5 + 456), a2, a4);
    v28 = *(v5 + 536);
    if ((v28 & 0x40) == 0)
    {
LABEL_114:
      if ((v28 & 0x80) == 0)
      {
        goto LABEL_115;
      }

      goto LABEL_176;
    }
  }

  else if ((v28 & 0x40) == 0)
  {
    goto LABEL_114;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x49, *(v5 + 460), a2, a4);
  v28 = *(v5 + 536);
  if ((v28 & 0x80) == 0)
  {
LABEL_115:
    if ((v28 & 0x100) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_177;
  }

LABEL_176:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4A, *(v5 + 464), a2, a4);
  v28 = *(v5 + 536);
  if ((v28 & 0x100) == 0)
  {
LABEL_116:
    if ((v28 & 0x200) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_178;
  }

LABEL_177:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4B, *(v5 + 468), a2, a4);
  v28 = *(v5 + 536);
  if ((v28 & 0x200) == 0)
  {
LABEL_117:
    if ((v28 & 0x400) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_179;
  }

LABEL_178:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4C, *(v5 + 472), a2, a4);
  v28 = *(v5 + 536);
  if ((v28 & 0x400) == 0)
  {
LABEL_118:
    if ((v28 & 0x800) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_119;
  }

LABEL_179:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4D, *(v5 + 476), a2, a4);
  if ((*(v5 + 536) & 0x800) != 0)
  {
LABEL_119:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4E, *(v5 + 496), a2, a4);
  }

LABEL_120:
  if (*(v5 + 488) >= 1)
  {
    v29 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4F, *(*(v5 + 480) + 4 * v29++), a2, a4);
    }

    while (v29 < *(v5 + 488));
  }

  if ((*(v5 + 537) & 0x20) != 0)
  {
    v30 = *(v5 + 500);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x50, v30, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothAACPLinkInfo::ByteSize(awd::metrics::BluetoothAACPLinkInfo *this)
{
  v2 = *(this + 132);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 132);
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
    v2 = *(this + 132);
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
      v2 = *(this + 132);
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
    v2 = *(this + 132);
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
    v2 = *(this + 132);
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
    v2 = *(this + 132);
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
    v2 = *(this + 132);
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
      v2 = *(this + 132);
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
      v2 = *(this + 132);
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
    v2 = *(this + 132);
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
    v2 = *(this + 132);
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
    v2 = *(this + 132);
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
    v2 = *(this + 132);
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
    v2 = *(this + 132);
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
    v2 = *(this + 132);
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
      v2 = *(this + 132);
    }

    else
    {
      v33 = 3;
    }

    v3 += v33;
  }

LABEL_84:
  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v34 = *(this + 19);
      if (v34 >= 0x80)
      {
        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
        v2 = *(this + 132);
      }

      else
      {
        v35 = 3;
      }

      v3 += v35;
    }

    if ((v2 & 0x20000) != 0)
    {
      v36 = *(this + 32);
      if (v36 >= 0x80)
      {
        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
        v2 = *(this + 132);
      }

      else
      {
        v37 = 3;
      }

      v3 += v37;
    }
  }

  if (!(v2 >> 25))
  {
    goto LABEL_122;
  }

  if ((v2 & 0x2000000) != 0)
  {
    v38 = *(this + 33);
    if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
      v2 = *(this + 132);
    }

    else
    {
      v39 = 3;
    }

    v3 += v39;
    if ((v2 & 0x10000000) == 0)
    {
LABEL_98:
      if ((v2 & 0x20000000) == 0)
      {
        goto LABEL_99;
      }

LABEL_110:
      v42 = *(this + 59);
      if (v42 >= 0x80)
      {
        v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
        v2 = *(this + 132);
      }

      else
      {
        v43 = 3;
      }

      v3 += v43;
      if ((v2 & 0x40000000) == 0)
      {
LABEL_100:
        if ((v2 & 0x80000000) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_118;
      }

      goto LABEL_114;
    }
  }

  else if ((v2 & 0x10000000) == 0)
  {
    goto LABEL_98;
  }

  v40 = *(this + 58);
  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
    v2 = *(this + 132);
  }

  else
  {
    v41 = 3;
  }

  v3 += v41;
  if ((v2 & 0x20000000) != 0)
  {
    goto LABEL_110;
  }

LABEL_99:
  if ((v2 & 0x40000000) == 0)
  {
    goto LABEL_100;
  }

LABEL_114:
  v44 = *(this + 60);
  if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
    v2 = *(this + 132);
  }

  else
  {
    v45 = 3;
  }

  v3 += v45;
  if ((v2 & 0x80000000) != 0)
  {
LABEL_118:
    v46 = *(this + 61);
    if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
    }

    else
    {
      v47 = 3;
    }

    v3 += v47;
  }

LABEL_122:
  v48 = *(this + 133);
  if (!v48)
  {
    goto LABEL_159;
  }

  if (v48)
  {
    v49 = *(this + 62);
    if (v49 >= 0x80)
    {
      v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
      v48 = *(this + 133);
    }

    else
    {
      v50 = 3;
    }

    v3 += v50;
    if ((v48 & 2) == 0)
    {
LABEL_125:
      if ((v48 & 4) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_139;
    }
  }

  else if ((v48 & 2) == 0)
  {
    goto LABEL_125;
  }

  v51 = *(this + 63);
  if (v51 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v52 = 3;
  }

  v3 += v52;
  if ((v48 & 4) == 0)
  {
LABEL_126:
    if ((v48 & 8) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_143;
  }

LABEL_139:
  v53 = *(this + 64);
  if (v53 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v54 = 3;
  }

  v3 += v54;
  if ((v48 & 8) == 0)
  {
LABEL_127:
    if ((v48 & 0x10) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_147;
  }

LABEL_143:
  v55 = *(this + 65);
  if (v55 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v56 = 3;
  }

  v3 += v56;
  if ((v48 & 0x10) == 0)
  {
LABEL_128:
    if ((v48 & 0x40) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_151;
  }

LABEL_147:
  v57 = *(this + 66);
  if (v57 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v58 = 3;
  }

  v3 += v58;
  if ((v48 & 0x40) == 0)
  {
LABEL_129:
    if ((v48 & 0x80) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_155;
  }

LABEL_151:
  v59 = *(this + 67);
  if (v59 >= 0x80)
  {
    v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v60 = 3;
  }

  v3 += v60;
  if ((v48 & 0x80) != 0)
  {
LABEL_155:
    v61 = *(this + 72);
    if (v61 >= 0x80)
    {
      v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61) + 2;
      v48 = *(this + 133);
    }

    else
    {
      v62 = 3;
    }

    v3 += v62;
  }

LABEL_159:
  if ((v48 & 0xFF00) == 0)
  {
    goto LABEL_196;
  }

  if ((v48 & 0x100) != 0)
  {
    v63 = *(this + 73);
    if (v63 >= 0x80)
    {
      v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63) + 2;
      v48 = *(this + 133);
    }

    else
    {
      v64 = 3;
    }

    v3 += v64;
    if ((v48 & 0x200) == 0)
    {
LABEL_162:
      if ((v48 & 0x400) == 0)
      {
        goto LABEL_163;
      }

      goto LABEL_176;
    }
  }

  else if ((v48 & 0x200) == 0)
  {
    goto LABEL_162;
  }

  v65 = *(this + 74);
  if (v65 >= 0x80)
  {
    v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v66 = 3;
  }

  v3 += v66;
  if ((v48 & 0x400) == 0)
  {
LABEL_163:
    if ((v48 & 0x800) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_180;
  }

LABEL_176:
  v67 = *(this + 75);
  if (v67 >= 0x80)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v68 = 3;
  }

  v3 += v68;
  if ((v48 & 0x800) == 0)
  {
LABEL_164:
    if ((v48 & 0x1000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_184;
  }

LABEL_180:
  v69 = *(this + 76);
  if (v69 >= 0x80)
  {
    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v70 = 3;
  }

  v3 += v70;
  if ((v48 & 0x1000) == 0)
  {
LABEL_165:
    if ((v48 & 0x2000) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_188;
  }

LABEL_184:
  v71 = *(this + 77);
  if (v71 >= 0x80)
  {
    v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v72 = 3;
  }

  v3 += v72;
  if ((v48 & 0x2000) == 0)
  {
LABEL_166:
    if ((v48 & 0x8000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_192;
  }

LABEL_188:
  v73 = *(this + 78);
  if (v73 >= 0x80)
  {
    v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v74 = 3;
  }

  v3 += v74;
  if ((v48 & 0x8000) != 0)
  {
LABEL_192:
    v75 = *(this + 79);
    if (v75 >= 0x80)
    {
      v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75) + 2;
      v48 = *(this + 133);
    }

    else
    {
      v76 = 3;
    }

    v3 += v76;
  }

LABEL_196:
  if ((v48 & 0xFF0000) == 0)
  {
    goto LABEL_233;
  }

  if ((v48 & 0x10000) != 0)
  {
    v77 = *(this + 88);
    if (v77 >= 0x80)
    {
      v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77) + 2;
      v48 = *(this + 133);
    }

    else
    {
      v78 = 3;
    }

    v3 += v78;
    if ((v48 & 0x40000) == 0)
    {
LABEL_199:
      if ((v48 & 0x80000) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_213;
    }
  }

  else if ((v48 & 0x40000) == 0)
  {
    goto LABEL_199;
  }

  v79 = *(this + 89);
  if (v79 >= 0x80)
  {
    v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v80 = 3;
  }

  v3 += v80;
  if ((v48 & 0x80000) == 0)
  {
LABEL_200:
    if ((v48 & 0x100000) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_217;
  }

LABEL_213:
  v81 = *(this + 90);
  if (v81 >= 0x80)
  {
    v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v82 = 3;
  }

  v3 += v82;
  if ((v48 & 0x100000) == 0)
  {
LABEL_201:
    if ((v48 & 0x200000) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_221;
  }

LABEL_217:
  v83 = *(this + 91);
  if (v83 >= 0x80)
  {
    v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v84 = 3;
  }

  v3 += v84;
  if ((v48 & 0x200000) == 0)
  {
LABEL_202:
    if ((v48 & 0x400000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_225;
  }

LABEL_221:
  v85 = *(this + 92);
  if (v85 >= 0x80)
  {
    v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v86 = 3;
  }

  v3 += v86;
  if ((v48 & 0x400000) == 0)
  {
LABEL_203:
    if ((v48 & 0x800000) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_229;
  }

LABEL_225:
  v87 = *(this + 93);
  if (v87 >= 0x80)
  {
    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v87) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v88 = 3;
  }

  v3 += v88;
  if ((v48 & 0x800000) != 0)
  {
LABEL_229:
    v89 = *(this + 94);
    if (v89 >= 0x80)
    {
      v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89) + 2;
      v48 = *(this + 133);
    }

    else
    {
      v90 = 3;
    }

    v3 += v90;
  }

LABEL_233:
  if (!HIBYTE(v48))
  {
    goto LABEL_279;
  }

  if ((v48 & 0x1000000) != 0)
  {
    v91 = *(this + 95);
    if ((v91 & 0x80000000) != 0)
    {
      v92 = 12;
    }

    else if (v91 >= 0x80)
    {
      v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91) + 2;
      v48 = *(this + 133);
    }

    else
    {
      v92 = 3;
    }

    v3 += v92;
    if ((v48 & 0x2000000) == 0)
    {
LABEL_236:
      if ((v48 & 0x4000000) == 0)
      {
        goto LABEL_237;
      }

      goto LABEL_255;
    }
  }

  else if ((v48 & 0x2000000) == 0)
  {
    goto LABEL_236;
  }

  v93 = *(this + 96);
  if ((v93 & 0x80000000) != 0)
  {
    v94 = 12;
  }

  else if (v93 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v94 = 3;
  }

  v3 += v94;
  if ((v48 & 0x4000000) == 0)
  {
LABEL_237:
    if ((v48 & 0x8000000) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_259;
  }

LABEL_255:
  v95 = *(this + 97);
  if (v95 >= 0x80)
  {
    v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v95) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v96 = 3;
  }

  v3 += v96;
  if ((v48 & 0x8000000) == 0)
  {
LABEL_238:
    if ((v48 & 0x10000000) == 0)
    {
      goto LABEL_239;
    }

    goto LABEL_263;
  }

LABEL_259:
  v97 = *(this + 98);
  if (v97 >= 0x80)
  {
    v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v98 = 3;
  }

  v3 += v98;
  if ((v48 & 0x10000000) == 0)
  {
LABEL_239:
    if ((v48 & 0x20000000) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_267;
  }

LABEL_263:
  v99 = *(this + 99);
  if (v99 >= 0x80)
  {
    v100 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v99) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v100 = 3;
  }

  v3 += v100;
  if ((v48 & 0x20000000) == 0)
  {
LABEL_240:
    if ((v48 & 0x40000000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_271;
  }

LABEL_267:
  v101 = *(this + 100);
  if (v101 >= 0x80)
  {
    v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v102 = 3;
  }

  v3 += v102;
  if ((v48 & 0x40000000) == 0)
  {
LABEL_241:
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_279;
    }

    goto LABEL_275;
  }

LABEL_271:
  v103 = *(this + 101);
  if (v103 >= 0x80)
  {
    v104 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v103) + 2;
    v48 = *(this + 133);
  }

  else
  {
    v104 = 3;
  }

  v3 += v104;
  if ((v48 & 0x80000000) != 0)
  {
LABEL_275:
    v105 = *(this + 102);
    if (v105 >= 0x80)
    {
      v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105) + 2;
    }

    else
    {
      v106 = 3;
    }

    v3 += v106;
  }

LABEL_279:
  v107 = *(this + 134);
  if (!v107)
  {
    goto LABEL_311;
  }

  if (v107)
  {
    v108 = *(this + 103);
    if (v108 >= 0x80)
    {
      v109 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v108) + 2;
      v107 = *(this + 134);
    }

    else
    {
      v109 = 3;
    }

    v3 += v109;
    if ((v107 & 2) == 0)
    {
LABEL_282:
      if ((v107 & 8) == 0)
      {
        goto LABEL_283;
      }

      goto LABEL_295;
    }
  }

  else if ((v107 & 2) == 0)
  {
    goto LABEL_282;
  }

  v110 = *(this + 108);
  if (v110 >= 0x80)
  {
    v111 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v110) + 2;
    v107 = *(this + 134);
  }

  else
  {
    v111 = 3;
  }

  v3 += v111;
  if ((v107 & 8) == 0)
  {
LABEL_283:
    if ((v107 & 0x20) == 0)
    {
      goto LABEL_284;
    }

    goto LABEL_299;
  }

LABEL_295:
  v112 = *(this + 109);
  if (v112 >= 0x80)
  {
    v113 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v112) + 2;
    v107 = *(this + 134);
  }

  else
  {
    v113 = 3;
  }

  v3 += v113;
  if ((v107 & 0x20) == 0)
  {
LABEL_284:
    if ((v107 & 0x40) == 0)
    {
      goto LABEL_285;
    }

    goto LABEL_303;
  }

LABEL_299:
  v114 = *(this + 114);
  if (v114 >= 0x80)
  {
    v115 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v114) + 2;
    v107 = *(this + 134);
  }

  else
  {
    v115 = 3;
  }

  v3 += v115;
  if ((v107 & 0x40) == 0)
  {
LABEL_285:
    if ((v107 & 0x80) == 0)
    {
      goto LABEL_311;
    }

    goto LABEL_307;
  }

LABEL_303:
  v116 = *(this + 115);
  if (v116 >= 0x80)
  {
    v117 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v116) + 2;
    v107 = *(this + 134);
  }

  else
  {
    v117 = 3;
  }

  v3 += v117;
  if ((v107 & 0x80) != 0)
  {
LABEL_307:
    v118 = *(this + 116);
    if (v118 >= 0x80)
    {
      v119 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118) + 2;
      v107 = *(this + 134);
    }

    else
    {
      v119 = 3;
    }

    v3 += v119;
  }

LABEL_311:
  if ((v107 & 0xFF00) == 0)
  {
    goto LABEL_343;
  }

  if ((v107 & 0x100) != 0)
  {
    v120 = *(this + 117);
    if (v120 >= 0x80)
    {
      v121 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v120) + 2;
      v107 = *(this + 134);
    }

    else
    {
      v121 = 3;
    }

    v3 += v121;
    if ((v107 & 0x200) == 0)
    {
LABEL_314:
      if ((v107 & 0x400) == 0)
      {
        goto LABEL_315;
      }

      goto LABEL_327;
    }
  }

  else if ((v107 & 0x200) == 0)
  {
    goto LABEL_314;
  }

  v122 = *(this + 118);
  if (v122 >= 0x80)
  {
    v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v122) + 2;
    v107 = *(this + 134);
  }

  else
  {
    v123 = 3;
  }

  v3 += v123;
  if ((v107 & 0x400) == 0)
  {
LABEL_315:
    if ((v107 & 0x800) == 0)
    {
      goto LABEL_316;
    }

    goto LABEL_331;
  }

LABEL_327:
  v124 = *(this + 119);
  if (v124 >= 0x80)
  {
    v125 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v124) + 2;
    v107 = *(this + 134);
  }

  else
  {
    v125 = 3;
  }

  v3 += v125;
  if ((v107 & 0x800) == 0)
  {
LABEL_316:
    if ((v107 & 0x2000) == 0)
    {
      goto LABEL_317;
    }

    goto LABEL_335;
  }

LABEL_331:
  v126 = *(this + 124);
  if (v126 >= 0x80)
  {
    v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126) + 2;
    v107 = *(this + 134);
  }

  else
  {
    v127 = 3;
  }

  v3 += v127;
  if ((v107 & 0x2000) == 0)
  {
LABEL_317:
    if ((v107 & 0x4000) == 0)
    {
      goto LABEL_343;
    }

    goto LABEL_339;
  }

LABEL_335:
  v128 = *(this + 125);
  if (v128 >= 0x80)
  {
    v129 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v128) + 2;
    v107 = *(this + 134);
  }

  else
  {
    v129 = 3;
  }

  v3 += v129;
  if ((v107 & 0x4000) != 0)
  {
LABEL_339:
    v130 = *(this + 130);
    if (v130 >= 0x80)
    {
      v131 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v130) + 2;
    }

    else
    {
      v131 = 3;
    }

    v3 += v131;
  }

LABEL_343:
  v231 = v3;
  v132 = *(this + 22);
  if (v132 < 1)
  {
    v134 = 0;
  }

  else
  {
    v133 = 0;
    v134 = 0;
    do
    {
      v135 = *(*(this + 10) + 4 * v133);
      if (v135 >= 0x80)
      {
        v136 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v135);
        v132 = *(this + 22);
      }

      else
      {
        v136 = 1;
      }

      v134 += v136;
      ++v133;
    }

    while (v133 < v132);
  }

  v137 = *(this + 26);
  if (v137 < 1)
  {
    v139 = 0;
  }

  else
  {
    v138 = 0;
    v139 = 0;
    do
    {
      v140 = *(*(this + 12) + 4 * v138);
      if (v140 >= 0x80)
      {
        v141 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v140);
        v137 = *(this + 26);
      }

      else
      {
        v141 = 1;
      }

      v139 += v141;
      ++v138;
    }

    while (v138 < v137);
  }

  v142 = *(this + 30);
  if (v142 < 1)
  {
    v144 = 0;
  }

  else
  {
    v143 = 0;
    v144 = 0;
    do
    {
      v145 = *(*(this + 14) + 4 * v143);
      if (v145 >= 0x80)
      {
        v146 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v145);
        v142 = *(this + 30);
      }

      else
      {
        v146 = 1;
      }

      v144 += v146;
      ++v143;
    }

    while (v143 < v142);
  }

  v147 = *(this + 36);
  if (v147 < 1)
  {
    v149 = 0;
  }

  else
  {
    v148 = 0;
    v149 = 0;
    do
    {
      v150 = *(*(this + 17) + 4 * v148);
      if (v150 >= 0x80)
      {
        v151 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v150);
        v147 = *(this + 36);
      }

      else
      {
        v151 = 1;
      }

      v149 += v151;
      ++v148;
    }

    while (v148 < v147);
  }

  v152 = *(this + 40);
  if (v152 < 1)
  {
    v236 = 0;
  }

  else
  {
    v153 = 0;
    v236 = 0;
    do
    {
      v154 = v152;
      v155 = *(*(this + 19) + 4 * v153);
      if (v155 >= 0x80)
      {
        v156 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v155);
        v154 = *(this + 40);
      }

      else
      {
        v156 = 1;
      }

      v236 += v156;
      ++v153;
      v152 = v154;
    }

    while (v153 < v154);
  }

  v223 = v152;
  v157 = *(this + 44);
  if (v157 < 1)
  {
    v235 = 0;
  }

  else
  {
    v158 = 0;
    v235 = 0;
    do
    {
      v159 = v157;
      v160 = *(*(this + 21) + 4 * v158);
      if (v160 >= 0x80)
      {
        v161 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v160);
        v159 = *(this + 44);
      }

      else
      {
        v161 = 1;
      }

      v235 += v161;
      ++v158;
      v157 = v159;
    }

    while (v158 < v159);
  }

  v222 = v157;
  v162 = *(this + 48);
  if (v162 < 1)
  {
    v234 = 0;
  }

  else
  {
    v163 = 0;
    v234 = 0;
    do
    {
      v164 = v162;
      v165 = *(*(this + 23) + 4 * v163);
      if (v165 >= 0x80)
      {
        v166 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v165);
        v164 = *(this + 48);
      }

      else
      {
        v166 = 1;
      }

      v234 += v166;
      ++v163;
      v162 = v164;
    }

    while (v163 < v164);
  }

  v221 = v162;
  v167 = *(this + 52);
  if (v167 < 1)
  {
    v233 = 0;
  }

  else
  {
    v168 = 0;
    v233 = 0;
    do
    {
      v169 = v167;
      v170 = *(*(this + 25) + 4 * v168);
      if (v170 >= 0x80)
      {
        v171 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v170);
        v169 = *(this + 52);
      }

      else
      {
        v171 = 1;
      }

      v233 += v171;
      ++v168;
      v167 = v169;
    }

    while (v168 < v169);
  }

  v220 = v167;
  v228 = v139;
  v172 = *(this + 56);
  if (v172 < 1)
  {
    v174 = 0;
  }

  else
  {
    v173 = 0;
    v174 = 0;
    do
    {
      v175 = *(*(this + 27) + 4 * v173);
      if (v175 >= 0x80)
      {
        v176 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v175);
        v172 = *(this + 56);
      }

      else
      {
        v176 = 1;
      }

      v174 += v176;
      ++v173;
    }

    while (v173 < v172);
  }

  v219 = v172;
  v229 = v132;
  v177 = *(this + 70);
  if (v177 < 1)
  {
    v179 = 0;
  }

  else
  {
    v178 = 0;
    v179 = 0;
    do
    {
      v180 = *(*(this + 34) + 4 * v178);
      if (v180 >= 0x80)
      {
        v181 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v180);
        v177 = *(this + 70);
      }

      else
      {
        v181 = 1;
      }

      v179 += v181;
      ++v178;
    }

    while (v178 < v177);
  }

  v218 = v177;
  v227 = v137;
  v182 = *(this + 82);
  if (v182 < 1)
  {
    v184 = 0;
  }

  else
  {
    v183 = 0;
    v184 = 0;
    do
    {
      v185 = *(*(this + 40) + 4 * v183);
      if (v185 >= 0x80)
      {
        v186 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v185);
        v182 = *(this + 82);
      }

      else
      {
        v186 = 1;
      }

      v184 += v186;
      ++v183;
    }

    while (v183 < v182);
  }

  v217 = v182;
  v226 = v142;
  v187 = *(this + 86);
  if (v187 < 1)
  {
    v189 = 0;
  }

  else
  {
    v188 = 0;
    v189 = 0;
    do
    {
      v190 = *(*(this + 42) + 4 * v188);
      if (v190 >= 0x80)
      {
        v191 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v190);
        v187 = *(this + 86);
      }

      else
      {
        v191 = 1;
      }

      v189 += v191;
      ++v188;
    }

    while (v188 < v187);
  }

  v216 = v187;
  v225 = v149;
  v192 = *(this + 106);
  if (v192 < 1)
  {
    v194 = 0;
  }

  else
  {
    v193 = 0;
    v194 = 0;
    do
    {
      v195 = *(*(this + 52) + 4 * v193);
      if (v195 >= 0x80)
      {
        v196 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v195);
        v192 = *(this + 106);
      }

      else
      {
        v196 = 1;
      }

      v194 += v196;
      ++v193;
    }

    while (v193 < v192);
  }

  v215 = v192;
  v230 = v134;
  v197 = *(this + 112);
  if (v197 < 1)
  {
    v199 = 0;
  }

  else
  {
    v198 = 0;
    v199 = 0;
    do
    {
      v200 = *(*(this + 55) + 4 * v198);
      if (v200 >= 0x80)
      {
        v201 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v200);
        v197 = *(this + 112);
      }

      else
      {
        v201 = 1;
      }

      v199 += v201;
      ++v198;
    }

    while (v198 < v197);
  }

  v214 = v197;
  v224 = v147;
  v202 = *(this + 122);
  if (v202 < 1)
  {
    v204 = 0;
  }

  else
  {
    v203 = 0;
    v204 = 0;
    do
    {
      v205 = *(*(this + 60) + 4 * v203);
      if (v205 >= 0x80)
      {
        v206 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v205);
        v202 = *(this + 122);
      }

      else
      {
        v206 = 1;
      }

      v204 += v206;
      ++v203;
    }

    while (v203 < v202);
  }

  v232 = this;
  v207 = *(this + 128);
  v213 = v202;
  if (v207 < 1)
  {
    v209 = 0;
  }

  else
  {
    v208 = 0;
    v209 = 0;
    do
    {
      v210 = *(*(v232 + 63) + 4 * v208);
      if (v210 >= 0x80)
      {
        v211 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v210);
        v207 = *(v232 + 128);
      }

      else
      {
        v211 = 1;
      }

      v209 += v211;
      ++v208;
    }

    while (v208 < v207);
  }

  result = (v230 + v231 + v228 + v144 + v225 + v236 + v235 + v234 + v233 + v174 + v179 + v184 + v189 + v194 + v199 + v204 + v209 + 2 * (v227 + v229 + v226 + v224 + v223 + v222 + v221 + v220 + v219 + v218 + v217 + v216 + v215 + v214 + v213 + v207));
  *(v232 + 131) = result;
  return result;
}

void awd::metrics::BluetoothAACPLinkInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothAACPLinkInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAACPLinkInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAACPLinkInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAACPLinkInfo::CopyFrom(awd::metrics::BluetoothAACPLinkInfo *this, const awd::metrics::BluetoothAACPLinkInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAACPLinkInfo::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothAACPLinkInfo::Swap(awd::metrics::BluetoothAACPLinkInfo *this, awd::metrics::BluetoothAACPLinkInfo *a2)
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
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v2;
    v3 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    v4 = *(a2 + 11);
    *(a2 + 10) = v3;
    v5 = *(this + 11);
    *(this + 11) = v4;
    *(a2 + 11) = v5;
    v6 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    v7 = *(a2 + 13);
    *(a2 + 12) = v6;
    v8 = *(this + 13);
    *(this + 13) = v7;
    *(a2 + 13) = v8;
    v9 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    v10 = *(a2 + 15);
    *(a2 + 14) = v9;
    v11 = *(this + 15);
    *(this + 15) = v10;
    *(a2 + 15) = v11;
    v12 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    v13 = *(a2 + 18);
    *(a2 + 17) = v12;
    v14 = *(this + 18);
    *(this + 18) = v13;
    *(a2 + 18) = v14;
    v15 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    v16 = *(a2 + 20);
    *(a2 + 19) = v15;
    v17 = *(this + 20);
    *(this + 20) = v16;
    *(a2 + 20) = v17;
    v18 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    v19 = *(a2 + 22);
    *(a2 + 21) = v18;
    v20 = *(this + 22);
    *(this + 22) = v19;
    *(a2 + 22) = v20;
    v21 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    v22 = *(a2 + 24);
    *(a2 + 23) = v21;
    v23 = *(this + 24);
    *(this + 24) = v22;
    *(a2 + 24) = v23;
    LODWORD(v21) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v21;
    v24 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    v25 = *(a2 + 26);
    *(a2 + 25) = v24;
    v26 = *(this + 26);
    *(this + 26) = v25;
    *(a2 + 26) = v26;
    v27 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    v28 = *(a2 + 28);
    *(a2 + 27) = v27;
    v29 = *(this + 28);
    *(this + 28) = v28;
    *(a2 + 28) = v29;
    LODWORD(v27) = *(this + 58);
    *(this + 58) = *(a2 + 58);
    *(a2 + 58) = v27;
    LODWORD(v27) = *(this + 59);
    *(this + 59) = *(a2 + 59);
    *(a2 + 59) = v27;
    LODWORD(v27) = *(this + 60);
    *(this + 60) = *(a2 + 60);
    *(a2 + 60) = v27;
    LODWORD(v27) = *(this + 61);
    *(this + 61) = *(a2 + 61);
    *(a2 + 61) = v27;
    LODWORD(v27) = *(this + 62);
    *(this + 62) = *(a2 + 62);
    *(a2 + 62) = v27;
    LODWORD(v27) = *(this + 63);
    *(this + 63) = *(a2 + 63);
    *(a2 + 63) = v27;
    LODWORD(v27) = *(this + 64);
    *(this + 64) = *(a2 + 64);
    *(a2 + 64) = v27;
    LODWORD(v27) = *(this + 65);
    *(this + 65) = *(a2 + 65);
    *(a2 + 65) = v27;
    LODWORD(v27) = *(this + 66);
    *(this + 66) = *(a2 + 66);
    *(a2 + 66) = v27;
    v30 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    v31 = *(a2 + 35);
    *(a2 + 34) = v30;
    v32 = *(this + 35);
    *(this + 35) = v31;
    *(a2 + 35) = v32;
    LODWORD(v30) = *(this + 67);
    *(this + 67) = *(a2 + 67);
    *(a2 + 67) = v30;
    LODWORD(v30) = *(this + 72);
    *(this + 72) = *(a2 + 72);
    *(a2 + 72) = v30;
    LODWORD(v30) = *(this + 73);
    *(this + 73) = *(a2 + 73);
    *(a2 + 73) = v30;
    LODWORD(v30) = *(this + 74);
    *(this + 74) = *(a2 + 74);
    *(a2 + 74) = v30;
    LODWORD(v30) = *(this + 75);
    *(this + 75) = *(a2 + 75);
    *(a2 + 75) = v30;
    LODWORD(v30) = *(this + 76);
    *(this + 76) = *(a2 + 76);
    *(a2 + 76) = v30;
    LODWORD(v30) = *(this + 77);
    *(this + 77) = *(a2 + 77);
    *(a2 + 77) = v30;
    LODWORD(v30) = *(this + 78);
    *(this + 78) = *(a2 + 78);
    *(a2 + 78) = v30;
    v33 = *(this + 40);
    *(this + 40) = *(a2 + 40);
    v34 = *(a2 + 41);
    *(a2 + 40) = v33;
    v35 = *(this + 41);
    *(this + 41) = v34;
    *(a2 + 41) = v35;
    LODWORD(v33) = *(this + 79);
    *(this + 79) = *(a2 + 79);
    *(a2 + 79) = v33;
    LODWORD(v33) = *(this + 88);
    *(this + 88) = *(a2 + 88);
    *(a2 + 88) = v33;
    v36 = *(this + 42);
    *(this + 42) = *(a2 + 42);
    v37 = *(a2 + 43);
    *(a2 + 42) = v36;
    v38 = *(this + 43);
    *(this + 43) = v37;
    *(a2 + 43) = v38;
    LODWORD(v36) = *(this + 89);
    *(this + 89) = *(a2 + 89);
    *(a2 + 89) = v36;
    LODWORD(v36) = *(this + 90);
    *(this + 90) = *(a2 + 90);
    *(a2 + 90) = v36;
    LODWORD(v36) = *(this + 91);
    *(this + 91) = *(a2 + 91);
    *(a2 + 91) = v36;
    LODWORD(v36) = *(this + 92);
    *(this + 92) = *(a2 + 92);
    *(a2 + 92) = v36;
    LODWORD(v36) = *(this + 93);
    *(this + 93) = *(a2 + 93);
    *(a2 + 93) = v36;
    LODWORD(v36) = *(this + 94);
    *(this + 94) = *(a2 + 94);
    *(a2 + 94) = v36;
    LODWORD(v36) = *(this + 95);
    *(this + 95) = *(a2 + 95);
    *(a2 + 95) = v36;
    LODWORD(v36) = *(this + 96);
    *(this + 96) = *(a2 + 96);
    *(a2 + 96) = v36;
    LODWORD(v36) = *(this + 97);
    *(this + 97) = *(a2 + 97);
    *(a2 + 97) = v36;
    LODWORD(v36) = *(this + 98);
    *(this + 98) = *(a2 + 98);
    *(a2 + 98) = v36;
    LODWORD(v36) = *(this + 99);
    *(this + 99) = *(a2 + 99);
    *(a2 + 99) = v36;
    LODWORD(v36) = *(this + 100);
    *(this + 100) = *(a2 + 100);
    *(a2 + 100) = v36;
    LODWORD(v36) = *(this + 101);
    *(this + 101) = *(a2 + 101);
    *(a2 + 101) = v36;
    LODWORD(v36) = *(this + 102);
    *(this + 102) = *(a2 + 102);
    *(a2 + 102) = v36;
    LODWORD(v36) = *(this + 103);
    *(this + 103) = *(a2 + 103);
    *(a2 + 103) = v36;
    LODWORD(v36) = *(this + 108);
    *(this + 108) = *(a2 + 108);
    *(a2 + 108) = v36;
    v39 = *(this + 52);
    *(this + 52) = *(a2 + 52);
    v40 = *(a2 + 53);
    *(a2 + 52) = v39;
    v41 = *(this + 53);
    *(this + 53) = v40;
    *(a2 + 53) = v41;
    LODWORD(v39) = *(this + 109);
    *(this + 109) = *(a2 + 109);
    *(a2 + 109) = v39;
    v42 = *(this + 55);
    *(this + 55) = *(a2 + 55);
    v43 = *(a2 + 56);
    *(a2 + 55) = v42;
    v44 = *(this + 56);
    *(this + 56) = v43;
    *(a2 + 56) = v44;
    LODWORD(v42) = *(this + 114);
    *(this + 114) = *(a2 + 114);
    *(a2 + 114) = v42;
    LODWORD(v42) = *(this + 115);
    *(this + 115) = *(a2 + 115);
    *(a2 + 115) = v42;
    LODWORD(v42) = *(this + 116);
    *(this + 116) = *(a2 + 116);
    *(a2 + 116) = v42;
    LODWORD(v42) = *(this + 117);
    *(this + 117) = *(a2 + 117);
    *(a2 + 117) = v42;
    LODWORD(v42) = *(this + 118);
    *(this + 118) = *(a2 + 118);
    *(a2 + 118) = v42;
    LODWORD(v42) = *(this + 119);
    *(this + 119) = *(a2 + 119);
    *(a2 + 119) = v42;
    LODWORD(v42) = *(this + 124);
    *(this + 124) = *(a2 + 124);
    *(a2 + 124) = v42;
    v45 = *(this + 60);
    *(this + 60) = *(a2 + 60);
    v46 = *(a2 + 61);
    *(a2 + 60) = v45;
    v47 = *(this + 61);
    *(this + 61) = v46;
    *(a2 + 61) = v47;
    LODWORD(v45) = *(this + 125);
    *(this + 125) = *(a2 + 125);
    *(a2 + 125) = v45;
    LODWORD(v45) = *(this + 130);
    *(this + 130) = *(a2 + 130);
    *(a2 + 130) = v45;
    v48 = *(this + 63);
    *(this + 63) = *(a2 + 63);
    result = *(a2 + 64);
    *(a2 + 63) = v48;
    v50 = *(this + 64);
    *(this + 64) = result;
    *(a2 + 64) = v50;
    LODWORD(v48) = *(this + 132);
    *(this + 132) = *(a2 + 132);
    *(a2 + 132) = v48;
    LODWORD(v48) = *(this + 133);
    *(this + 133) = *(a2 + 133);
    *(a2 + 133) = v48;
    LODWORD(v48) = *(this + 134);
    *(this + 134) = *(a2 + 134);
    *(a2 + 134) = v48;
    LODWORD(v48) = *(this + 131);
    *(this + 131) = *(a2 + 131);
    *(a2 + 131) = v48;
  }

  return result;
}

double awd::metrics::BluetoothAccessoryCrashLogging::SharedCtor(awd::metrics::BluetoothAccessoryCrashLogging *this)
{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
  *(this + 28) = 0;
  return result;
}

awd::metrics::BluetoothAccessoryCrashLogging *awd::metrics::BluetoothAccessoryCrashLogging::BluetoothAccessoryCrashLogging(awd::metrics::BluetoothAccessoryCrashLogging *this, const awd::metrics::BluetoothAccessoryCrashLogging *a2)
{
  *this = &unk_2A1D4B940;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 100) = 0u;
  awd::metrics::BluetoothAccessoryCrashLogging::MergeFrom(this, a2);
  return this;
}

void sub_296382620(_Unwind_Exception *a1)
{
  v3 = *(v1 + 9);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryCrashLogging::MergeFrom(awd::metrics::BluetoothAccessoryCrashLogging *this, const awd::metrics::BluetoothAccessoryCrashLogging *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
  }

  v4 = *(a2 + 20);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 9, *(this + 20) + v4);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  v5 = *(a2 + 28);
  if (!v5)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    v9 = *(a2 + 1);
    *(this + 28) |= 1u;
    *(this + 1) = v9;
    v5 = *(a2 + 28);
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(a2 + 4);
  *(this + 28) |= 2u;
  *(this + 4) = v10;
  v5 = *(a2 + 28);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  v11 = *(a2 + 5);
  *(this + 28) |= 4u;
  *(this + 5) = v11;
  v5 = *(a2 + 28);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  v12 = *(a2 + 6);
  *(this + 28) |= 8u;
  *(this + 6) = v12;
  v5 = *(a2 + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_37:
    v14 = *(a2 + 8);
    *(this + 28) |= 0x20u;
    *(this + 8) = v14;
    v5 = *(a2 + 28);
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_36:
  v13 = *(a2 + 7);
  *(this + 28) |= 0x10u;
  *(this + 7) = v13;
  v5 = *(a2 + 28);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_38:
  v15 = *(a2 + 9);
  *(this + 28) |= 0x40u;
  *(this + 9) = v15;
  v5 = *(a2 + 28);
  if ((v5 & 0x80) != 0)
  {
LABEL_14:
    v6 = *(a2 + 10);
    *(this + 28) |= 0x80u;
    *(this + 10) = v6;
    v5 = *(a2 + 28);
  }

LABEL_15:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v5 & 0x100) != 0)
  {
    v16 = *(a2 + 11);
    *(this + 28) |= 0x100u;
    *(this + 11) = v16;
    v5 = *(a2 + 28);
    if ((v5 & 0x200) == 0)
    {
LABEL_18:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_42;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v17 = *(a2 + 12);
  *(this + 28) |= 0x200u;
  *(this + 12) = v17;
  v5 = *(a2 + 28);
  if ((v5 & 0x400) == 0)
  {
LABEL_19:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  v18 = *(a2 + 13);
  *(this + 28) |= 0x400u;
  *(this + 13) = v18;
  v5 = *(a2 + 28);
  if ((v5 & 0x800) == 0)
  {
LABEL_20:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  v19 = *(a2 + 14);
  *(this + 28) |= 0x800u;
  *(this + 14) = v19;
  v5 = *(a2 + 28);
  if ((v5 & 0x1000) == 0)
  {
LABEL_21:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  v20 = *(a2 + 15);
  *(this + 28) |= 0x1000u;
  *(this + 15) = v20;
  v5 = *(a2 + 28);
  if ((v5 & 0x2000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  v21 = *(a2 + 16);
  *(this + 28) |= 0x2000u;
  *(this + 16) = v21;
  v5 = *(a2 + 28);
  if ((v5 & 0x4000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_46:
  v22 = *(a2 + 17);
  *(this + 28) |= 0x4000u;
  *(this + 17) = v22;
  v5 = *(a2 + 28);
  if ((v5 & 0x8000) != 0)
  {
LABEL_24:
    v7 = *(a2 + 22);
    *(this + 28) |= 0x8000u;
    *(this + 22) = v7;
    v5 = *(a2 + 28);
  }

LABEL_25:
  if ((v5 & 0x1FE0000) == 0)
  {
    return;
  }

  if ((v5 & 0x20000) != 0)
  {
    v23 = *(a2 + 23);
    *(this + 28) |= 0x20000u;
    *(this + 23) = v23;
    v5 = *(a2 + 28);
    if ((v5 & 0x40000) == 0)
    {
LABEL_28:
      if ((v5 & 0x80000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_50;
    }
  }

  else if ((v5 & 0x40000) == 0)
  {
    goto LABEL_28;
  }

  v24 = *(a2 + 24);
  *(this + 28) |= 0x40000u;
  *(this + 24) = v24;
  v5 = *(a2 + 28);
  if ((v5 & 0x80000) == 0)
  {
LABEL_29:
    if ((v5 & 0x100000) == 0)
    {
      return;
    }

    goto LABEL_30;
  }

LABEL_50:
  v25 = *(a2 + 25);
  *(this + 28) |= 0x80000u;
  *(this + 25) = v25;
  if ((*(a2 + 28) & 0x100000) == 0)
  {
    return;
  }

LABEL_30:
  v8 = *(a2 + 26);
  *(this + 28) |= 0x100000u;
  *(this + 26) = v8;
}

void sub_29638299C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryCrashLogging::~BluetoothAccessoryCrashLogging(awd::metrics::BluetoothAccessoryCrashLogging *this)
{
  *this = &unk_2A1D4B940;
  v2 = *(this + 9);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAccessoryCrashLogging::~BluetoothAccessoryCrashLogging(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAccessoryCrashLogging::default_instance(awd::metrics::BluetoothAccessoryCrashLogging *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryCrashLogging::default_instance_;
  if (!awd::metrics::BluetoothAccessoryCrashLogging::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryCrashLogging::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryCrashLogging::Clear(uint64_t this)
{
  v1 = *(this + 112);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 88) = 0;
    *(this + 44) = 0;
    *(this + 60) = 0;
    *(this + 52) = 0;
    *(this + 68) = 0;
  }

  if ((v1 & 0x1FE0000) != 0)
  {
    *(this + 100) = 0;
    *(this + 92) = 0;
  }

  *(this + 80) = 0;
  *(this + 112) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAccessoryCrashLogging::MergePartialFromCodedStream(awd::metrics::BluetoothAccessoryCrashLogging *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_52;
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

        *(this + 28) |= 1u;
        if (v10 < v7 && *v10 == 16)
        {
          v21 = v10 + 1;
          *(a2 + 1) = v21;
          goto LABEL_62;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_62:
        if (v21 >= v7 || (v32 = *v21, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v32;
          v33 = v21 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 28) |= 2u;
        if (v33 >= v7 || *v33 != 24)
        {
          continue;
        }

        v17 = v33 + 1;
        *(a2 + 1) = v17;
LABEL_70:
        if (v17 >= v7 || (v34 = *v17, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v34;
          v35 = v17 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 28) |= 4u;
        if (v35 >= v7 || *v35 != 32)
        {
          continue;
        }

        v19 = v35 + 1;
        *(a2 + 1) = v19;
LABEL_78:
        if (v19 >= v7 || (v36 = *v19, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v36;
          v37 = v19 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 28) |= 8u;
        if (v37 >= v7 || *v37 != 40)
        {
          continue;
        }

        v14 = v37 + 1;
        *(a2 + 1) = v14;
LABEL_86:
        if (v14 >= v7 || (v38 = *v14, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v38;
          v39 = v14 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 28) |= 0x10u;
        if (v39 >= v7 || *v39 != 48)
        {
          continue;
        }

        v24 = v39 + 1;
        *(a2 + 1) = v24;
LABEL_94:
        if (v24 >= v7 || (v40 = *v24, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v40;
          v41 = v24 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 28) |= 0x20u;
        if (v41 >= v7 || *v41 != 56)
        {
          continue;
        }

        v26 = v41 + 1;
        *(a2 + 1) = v26;
LABEL_102:
        if (v26 >= v7 || (v42 = *v26, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v42;
          v43 = v26 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 28) |= 0x40u;
        if (v43 >= v7 || *v43 != 64)
        {
          continue;
        }

        v20 = v43 + 1;
        *(a2 + 1) = v20;
LABEL_110:
        if (v20 >= v7 || (v44 = *v20, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v44;
          v45 = v20 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 28) |= 0x80u;
        if (v45 >= v7 || *v45 != 72)
        {
          continue;
        }

        v29 = v45 + 1;
        *(a2 + 1) = v29;
LABEL_118:
        if (v29 >= v7 || (v46 = *v29, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v46;
          v47 = v29 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 28) |= 0x100u;
        if (v47 >= v7 || *v47 != 80)
        {
          continue;
        }

        v16 = v47 + 1;
        *(a2 + 1) = v16;
LABEL_126:
        if (v16 >= v7 || (v48 = *v16, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v48;
          v49 = v16 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 28) |= 0x200u;
        if (v49 >= v7 || *v49 != 88)
        {
          continue;
        }

        v28 = v49 + 1;
        *(a2 + 1) = v28;
LABEL_134:
        if (v28 >= v7 || (v50 = *v28, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v50;
          v51 = v28 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 28) |= 0x400u;
        if (v51 >= v7 || *v51 != 96)
        {
          continue;
        }

        v13 = v51 + 1;
        *(a2 + 1) = v13;
LABEL_142:
        if (v13 >= v7 || (v52 = *v13, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v52;
          v53 = v13 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 28) |= 0x800u;
        if (v53 >= v7 || *v53 != 104)
        {
          continue;
        }

        v15 = v53 + 1;
        *(a2 + 1) = v15;
LABEL_150:
        if (v15 >= v7 || (v54 = *v15, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v54;
          v55 = v15 + 1;
          *(a2 + 1) = v55;
        }

        *(this + 28) |= 0x1000u;
        if (v55 >= v7 || *v55 != 112)
        {
          continue;
        }

        v25 = v55 + 1;
        *(a2 + 1) = v25;
LABEL_158:
        if (v25 >= v7 || (v56 = *v25, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v56;
          v57 = v25 + 1;
          *(a2 + 1) = v57;
        }

        *(this + 28) |= 0x2000u;
        if (v57 >= v7 || *v57 != 120)
        {
          continue;
        }

        v12 = v57 + 1;
        *(a2 + 1) = v12;
LABEL_166:
        if (v12 >= v7 || (v58 = *v12, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v58;
          v59 = (v12 + 1);
          *(a2 + 1) = v59;
        }

        *(this + 28) |= 0x4000u;
        if (v7 - v59 < 2 || *v59 != 128 || v59[1] != 1)
        {
          continue;
        }

        v18 = (v59 + 2);
        *(a2 + 1) = v18;
LABEL_175:
        if (v18 >= v7 || (v60 = *v18, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v60;
          v61 = (v18 + 1);
          *(a2 + 1) = v61;
        }

        *(this + 28) |= 0x8000u;
        if (v7 - v61 >= 2 && *v61 == 136 && v61[1] == 1)
        {
          goto LABEL_183;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_70;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_78;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_86;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v24 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_94;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v26 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_102;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_110;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v29 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_118;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_126;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v28 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_134;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_142;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_150;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_158;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_166;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_175;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 72);
            if (!result)
            {
              return result;
            }

            goto LABEL_202;
          }

LABEL_52:
          if (v6 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        v31 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v81 = 0;
          if (v31 >= v7 || *v31 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v81))
            {
              return 0;
            }
          }

          else
          {
            v81 = *v31;
            *(a2 + 1) = v31 + 1;
          }

          v62 = *(this + 20);
          if (v62 == *(this + 21))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 9, v62 + 1);
            v62 = *(this + 20);
          }

          v63 = v81;
          v64 = *(this + 9);
          *(this + 20) = v62 + 1;
          *(v64 + 4 * v62) = v63;
          v65 = *(this + 21) - *(this + 20);
          if (v65 >= 1)
          {
            v66 = v65 + 1;
            do
            {
              v67 = *(a2 + 1);
              v68 = *(a2 + 2);
              if (v68 - v67 < 2 || *v67 != 136 || v67[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v67 + 2;
              if ((v67 + 2) >= v68 || v67[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v81))
                {
                  return 0;
                }
              }

              else
              {
                v81 = v67[2];
                *(a2 + 1) = v67 + 3;
              }

              v69 = *(this + 20);
              if (v69 >= *(this + 21))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v82);
                v69 = *(this + 20);
              }

              v70 = v81;
              v71 = *(this + 9);
              *(this + 20) = v69 + 1;
              *(v71 + 4 * v69) = v70;
              --v66;
            }

            while (v66 > 1);
          }

LABEL_202:
          v61 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v7 - v61 < 2)
          {
            goto LABEL_1;
          }

          v72 = *v61;
          if (v72 == 144)
          {
            break;
          }

          if (v72 != 136 || v61[1] != 1)
          {
            goto LABEL_1;
          }

LABEL_183:
          v31 = (v61 + 2);
          *(a2 + 1) = v31;
        }

        if (v61[1] != 1)
        {
          continue;
        }

        v22 = (v61 + 2);
        *(a2 + 1) = v22;
LABEL_209:
        if (v22 >= v7 || (v73 = *v22, v73 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
          if (result)
          {
            v74 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_214;
          }

          return result;
        }

        *(this + 23) = v73;
        v74 = (v22 + 1);
        *(a2 + 1) = v74;
LABEL_214:
        *(this + 28) |= 0x20000u;
        if (v7 - v74 < 2 || *v74 != 152 || v74[1] != 1)
        {
          continue;
        }

        v27 = (v74 + 2);
        *(a2 + 1) = v27;
LABEL_218:
        if (v27 >= v7 || (v75 = *v27, v75 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
          if (result)
          {
            v76 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_223;
          }

          return result;
        }

        *(this + 24) = v75;
        v76 = (v27 + 1);
        *(a2 + 1) = v76;
LABEL_223:
        *(this + 28) |= 0x40000u;
        if (v7 - v76 < 2 || *v76 != 160 || v76[1] != 1)
        {
          continue;
        }

        v30 = (v76 + 2);
        *(a2 + 1) = v30;
LABEL_227:
        if (v30 >= v7 || (v77 = *v30, v77 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
          if (result)
          {
            v78 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_232;
          }

          return result;
        }

        *(this + 25) = v77;
        v78 = (v30 + 1);
        *(a2 + 1) = v78;
LABEL_232:
        *(this + 28) |= 0x80000u;
        if (v7 - v78 < 2 || *v78 != 168 || v78[1] != 1)
        {
          continue;
        }

        v23 = (v78 + 2);
        *(a2 + 1) = v23;
LABEL_236:
        if (v23 < v7)
        {
          v79 = *v23;
          if ((v79 & 0x80000000) == 0)
          {
            *(this + 26) = v79;
            v80 = v23 + 1;
            *(a2 + 1) = v80;
LABEL_241:
            *(this + 28) |= 0x100000u;
            if (v80 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
        if (result)
        {
          v80 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_241;
        }

        return result;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_209;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v27 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_218;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v30 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_227;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_236;
      default:
        goto LABEL_52;
    }
  }
}

void sub_296383668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothAccessoryCrashLogging::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 112);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 112);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  if ((*(v5 + 112) & 0x8000) != 0)
  {
LABEL_17:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 88), a2, a4);
  }

LABEL_18:
  if (*(v5 + 80) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(*(v5 + 72) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 80));
  }

  v8 = *(v5 + 112);
  if ((v8 & 0x20000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 92), a2, a4);
    v8 = *(v5 + 112);
    if ((v8 & 0x40000) == 0)
    {
LABEL_23:
      if ((v8 & 0x80000) == 0)
      {
        goto LABEL_24;
      }

LABEL_44:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 100), a2, a4);
      if ((*(v5 + 112) & 0x100000) == 0)
      {
        return this;
      }

      goto LABEL_45;
    }
  }

  else if ((v8 & 0x40000) == 0)
  {
    goto LABEL_23;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 96), a2, a4);
  v8 = *(v5 + 112);
  if ((v8 & 0x80000) != 0)
  {
    goto LABEL_44;
  }

LABEL_24:
  if ((v8 & 0x100000) == 0)
  {
    return this;
  }

LABEL_45:
  v9 = *(v5 + 104);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, v9, a2, a4);
}

uint64_t awd::metrics::BluetoothAccessoryCrashLogging::ByteSize(awd::metrics::BluetoothAccessoryCrashLogging *this)
{
  v2 = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 28);
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
    v2 = *(this + 28);
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
      v2 = *(this + 28);
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
    v2 = *(this + 28);
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
    v2 = *(this + 28);
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
    v2 = *(this + 28);
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
    v2 = *(this + 28);
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
      v2 = *(this + 28);
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
      v2 = *(this + 28);
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
    v2 = *(this + 28);
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
    v2 = *(this + 28);
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
    v2 = *(this + 28);
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
    v2 = *(this + 28);
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
    v2 = *(this + 28);
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
    v2 = *(this + 28);
  }

  else
  {
    v31 = 2;
  }

  v3 += v31;
  if ((v2 & 0x8000) != 0)
  {
LABEL_80:
    v32 = *(this + 22);
    if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
      v2 = *(this + 28);
    }

    else
    {
      v33 = 3;
    }

    v3 += v33;
  }

LABEL_84:
  if ((v2 & 0x1FE0000) == 0)
  {
    goto LABEL_106;
  }

  if ((v2 & 0x20000) != 0)
  {
    v34 = *(this + 23);
    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
      v2 = *(this + 28);
    }

    else
    {
      v35 = 3;
    }

    v3 += v35;
    if ((v2 & 0x40000) == 0)
    {
LABEL_87:
      if ((v2 & 0x80000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_98;
    }
  }

  else if ((v2 & 0x40000) == 0)
  {
    goto LABEL_87;
  }

  v36 = *(this + 24);
  if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
    v2 = *(this + 28);
  }

  else
  {
    v37 = 3;
  }

  v3 += v37;
  if ((v2 & 0x80000) == 0)
  {
LABEL_88:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_102;
  }

LABEL_98:
  v38 = *(this + 25);
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    v2 = *(this + 28);
  }

  else
  {
    v39 = 3;
  }

  v3 += v39;
  if ((v2 & 0x100000) != 0)
  {
LABEL_102:
    v40 = *(this + 26);
    if (v40 >= 0x80)
    {
      v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
    }

    else
    {
      v41 = 3;
    }

    v3 += v41;
  }

LABEL_106:
  v42 = *(this + 20);
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
      v45 = *(*(this + 9) + 4 * v43);
      if (v45 >= 0x80)
      {
        v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
        v42 = *(this + 20);
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

  result = (v44 + v3 + 2 * v42);
  *(this + 27) = result;
  return result;
}

void awd::metrics::BluetoothAccessoryCrashLogging::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryCrashLogging *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAccessoryCrashLogging::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAccessoryCrashLogging::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAccessoryCrashLogging::CopyFrom(awd::metrics::BluetoothAccessoryCrashLogging *this, const awd::metrics::BluetoothAccessoryCrashLogging *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAccessoryCrashLogging::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothAccessoryCrashLogging::Swap(awd::metrics::BluetoothAccessoryCrashLogging *this, awd::metrics::BluetoothAccessoryCrashLogging *a2)
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
    LODWORD(v2) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v2;
    v3 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    result = *(a2 + 10);
    *(a2 + 9) = v3;
    v5 = *(this + 10);
    *(this + 10) = result;
    *(a2 + 10) = v5;
    LODWORD(v3) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v3;
    LODWORD(v3) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v3;
    LODWORD(v3) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v3;
    LODWORD(v3) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v3;
  }

  return result;
}

double awd::metrics::BluetoothAccessoryDailyUsage::SharedCtor(awd::metrics::BluetoothAccessoryDailyUsage *this)
{
  result = 0.0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 23) = 0;
  *(this + 31) = 0;
  *(this + 36) = 0;
  *(this + 51) = 0;
  *(this + 90) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 13) = 0;
  *(this + 7) = 0u;
  *(this + 26) = 0;
  *(this + 216) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 58) = 0;
  *(this + 28) = 0u;
  *(this + 79) = 0;
  *(this + 616) = 0u;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  *(this + 872) = 0u;
  *(this + 888) = 0u;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 119) = 0;
  return result;
}

awd::metrics::BluetoothAccessoryDailyUsage *awd::metrics::BluetoothAccessoryDailyUsage::BluetoothAccessoryDailyUsage(awd::metrics::BluetoothAccessoryDailyUsage *this, const awd::metrics::BluetoothAccessoryDailyUsage *a2)
{
  *this = &unk_2A1D4B9B8;
  bzero(this + 8, 0x3B8uLL);
  awd::metrics::BluetoothAccessoryDailyUsage::MergeFrom(this, a2);
  return this;
}

void sub_296384138(_Unwind_Exception *a1)
{
  v3 = *(v1 + 97);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 95);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 93);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 91);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 88);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 86);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 84);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(v1 + 82);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(v1 + 80);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(v1 + 75);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 73);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  v14 = *(v1 + 71);
  if (v14)
  {
    MEMORY[0x29C259EE0](v14, 0x1000C8052888210);
  }

  v15 = *(v1 + 69);
  if (v15)
  {
    MEMORY[0x29C259EE0](v15, 0x1000C8052888210);
  }

  v16 = *(v1 + 67);
  if (v16)
  {
    MEMORY[0x29C259EE0](v16, 0x1000C8052888210);
  }

  v17 = *(v1 + 65);
  if (v17)
  {
    MEMORY[0x29C259EE0](v17, 0x1000C8052888210);
  }

  v18 = *(v1 + 63);
  if (v18)
  {
    MEMORY[0x29C259EE0](v18, 0x1000C8052888210);
  }

  v19 = *(v1 + 61);
  if (v19)
  {
    MEMORY[0x29C259EE0](v19, 0x1000C8052888210);
  }

  v20 = *(v1 + 59);
  if (v20)
  {
    MEMORY[0x29C259EE0](v20, 0x1000C8052888210);
  }

  v21 = *(v1 + 54);
  if (v21)
  {
    MEMORY[0x29C259EE0](v21, 0x1000C8052888210);
  }

  v22 = *(v1 + 52);
  if (v22)
  {
    MEMORY[0x29C259EE0](v22, 0x1000C8052888210);
  }

  v23 = *(v1 + 49);
  if (v23)
  {
    MEMORY[0x29C259EE0](v23, 0x1000C8052888210);
  }

  v24 = *(v1 + 39);
  if (v24)
  {
    MEMORY[0x29C259EE0](v24, 0x1000C8052888210);
  }

  v25 = *(v1 + 37);
  if (v25)
  {
    MEMORY[0x29C259EE0](v25, 0x1000C8052888210);
  }

  v26 = *(v1 + 34);
  if (v26)
  {
    MEMORY[0x29C259EE0](v26, 0x1000C8052888210);
  }

  v27 = *(v1 + 32);
  if (v27)
  {
    MEMORY[0x29C259EE0](v27, 0x1000C8052888210);
  }

  v28 = *(v1 + 29);
  if (v28)
  {
    MEMORY[0x29C259EE0](v28, 0x1000C8052888210);
  }

  v29 = *(v1 + 24);
  if (v29)
  {
    MEMORY[0x29C259EE0](v29, 0x1000C8052888210);
  }

  v30 = *(v1 + 21);
  if (v30)
  {
    MEMORY[0x29C259EE0](v30, 0x1000C8052888210);
  }

  v31 = *(v1 + 19);
  if (v31)
  {
    MEMORY[0x29C259EE0](v31, 0x1000C8052888210);
  }

  v32 = *(v1 + 16);
  if (v32)
  {
    MEMORY[0x29C259EE0](v32, 0x1000C8052888210);
  }

  v33 = *(v1 + 11);
  if (v33)
  {
    MEMORY[0x29C259EE0](v33, 0x1000C8052888210);
  }

  v34 = *(v1 + 9);
  if (v34)
  {
    MEMORY[0x29C259EE0](v34, 0x1000C8052888210);
  }

  v35 = *(v1 + 6);
  if (v35)
  {
    MEMORY[0x29C259EE0](v35, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryDailyUsage::MergeFrom(awd::metrics::BluetoothAccessoryDailyUsage *this, const awd::metrics::BluetoothAccessoryDailyUsage *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v141);
  }

  v4 = *(a2 + 14);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, *(this + 14) + v4);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v5 = *(a2 + 20);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 9, *(this + 20) + v5);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 11, *(this + 24) + v6);
    memcpy((*(this + 11) + 4 * *(this + 24)), *(a2 + 11), 4 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  v7 = *(a2 + 34);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 34) + v7);
    memcpy((*(this + 16) + 4 * *(this + 34)), *(a2 + 16), 4 * *(a2 + 34));
    *(this + 34) += *(a2 + 34);
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

  v10 = *(a2 + 50);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, *(this + 50) + v10);
    memcpy((*(this + 24) + 4 * *(this + 50)), *(a2 + 24), 4 * *(a2 + 50));
    *(this + 50) += *(a2 + 50);
  }

  v11 = *(a2 + 60);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 29, *(this + 60) + v11);
    memcpy((*(this + 29) + 4 * *(this + 60)), *(a2 + 29), 4 * *(a2 + 60));
    *(this + 60) += *(a2 + 60);
  }

  v12 = *(a2 + 66);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, *(this + 66) + v12);
    memcpy((*(this + 32) + 4 * *(this + 66)), *(a2 + 32), 4 * *(a2 + 66));
    *(this + 66) += *(a2 + 66);
  }

  v13 = *(a2 + 70);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 34, *(this + 70) + v13);
    memcpy((*(this + 34) + 4 * *(this + 70)), *(a2 + 34), 4 * *(a2 + 70));
    *(this + 70) += *(a2 + 70);
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

  v16 = *(a2 + 100);
  if (v16)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 49, *(this + 100) + v16);
    memcpy((*(this + 49) + 4 * *(this + 100)), *(a2 + 49), 4 * *(a2 + 100));
    *(this + 100) += *(a2 + 100);
  }

  v17 = *(a2 + 106);
  if (v17)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 52, *(this + 106) + v17);
    memcpy((*(this + 52) + 4 * *(this + 106)), *(a2 + 52), 4 * *(a2 + 106));
    *(this + 106) += *(a2 + 106);
  }

  v18 = *(a2 + 110);
  if (v18)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 54, *(this + 110) + v18);
    memcpy((*(this + 54) + 4 * *(this + 110)), *(a2 + 54), 4 * *(a2 + 110));
    *(this + 110) += *(a2 + 110);
  }

  v19 = *(a2 + 120);
  if (v19)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 59, *(this + 120) + v19);
    memcpy((*(this + 59) + 4 * *(this + 120)), *(a2 + 59), 4 * *(a2 + 120));
    *(this + 120) += *(a2 + 120);
  }

  v20 = *(a2 + 124);
  if (v20)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 61, *(this + 124) + v20);
    memcpy((*(this + 61) + 4 * *(this + 124)), *(a2 + 61), 4 * *(a2 + 124));
    *(this + 124) += *(a2 + 124);
  }

  v21 = *(a2 + 128);
  if (v21)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 63, *(this + 128) + v21);
    memcpy((*(this + 63) + 4 * *(this + 128)), *(a2 + 63), 4 * *(a2 + 128));
    *(this + 128) += *(a2 + 128);
  }

  v22 = *(a2 + 132);
  if (v22)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 65, *(this + 132) + v22);
    memcpy((*(this + 65) + 4 * *(this + 132)), *(a2 + 65), 4 * *(a2 + 132));
    *(this + 132) += *(a2 + 132);
  }

  v23 = *(a2 + 136);
  if (v23)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 67, *(this + 136) + v23);
    memcpy((*(this + 67) + 4 * *(this + 136)), *(a2 + 67), 4 * *(a2 + 136));
    *(this + 136) += *(a2 + 136);
  }

  v24 = *(a2 + 140);
  if (v24)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 69, *(this + 140) + v24);
    memcpy((*(this + 69) + 4 * *(this + 140)), *(a2 + 69), 4 * *(a2 + 140));
    *(this + 140) += *(a2 + 140);
  }

  v25 = *(a2 + 144);
  if (v25)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 71, *(this + 144) + v25);
    memcpy((*(this + 71) + 4 * *(this + 144)), *(a2 + 71), 4 * *(a2 + 144));
    *(this + 144) += *(a2 + 144);
  }

  v26 = *(a2 + 148);
  if (v26)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 73, *(this + 148) + v26);
    memcpy((*(this + 73) + 4 * *(this + 148)), *(a2 + 73), 4 * *(a2 + 148));
    *(this + 148) += *(a2 + 148);
  }

  v27 = *(a2 + 152);
  if (v27)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 75, *(this + 152) + v27);
    memcpy((*(this + 75) + 4 * *(this + 152)), *(a2 + 75), 4 * *(a2 + 152));
    *(this + 152) += *(a2 + 152);
  }

  v28 = *(a2 + 162);
  if (v28)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 80, *(this + 162) + v28);
    memcpy((*(this + 80) + 4 * *(this + 162)), *(a2 + 80), 4 * *(a2 + 162));
    *(this + 162) += *(a2 + 162);
  }

  v29 = *(a2 + 166);
  if (v29)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 82, *(this + 166) + v29);
    memcpy((*(this + 82) + 4 * *(this + 166)), *(a2 + 82), 4 * *(a2 + 166));
    *(this + 166) += *(a2 + 166);
  }

  v30 = *(a2 + 170);
  if (v30)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 84, *(this + 170) + v30);
    memcpy((*(this + 84) + 4 * *(this + 170)), *(a2 + 84), 4 * *(a2 + 170));
    *(this + 170) += *(a2 + 170);
  }

  v31 = *(a2 + 174);
  if (v31)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 86, *(this + 174) + v31);
    memcpy((*(this + 86) + 4 * *(this + 174)), *(a2 + 86), 4 * *(a2 + 174));
    *(this + 174) += *(a2 + 174);
  }

  v32 = *(a2 + 178);
  if (v32)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 88, *(this + 178) + v32);
    memcpy((*(this + 88) + 4 * *(this + 178)), *(a2 + 88), 4 * *(a2 + 178));
    *(this + 178) += *(a2 + 178);
  }

  v33 = *(a2 + 184);
  if (v33)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 91, *(this + 184) + v33);
    memcpy((*(this + 91) + 4 * *(this + 184)), *(a2 + 91), 4 * *(a2 + 184));
    *(this + 184) += *(a2 + 184);
  }

  v34 = *(a2 + 188);
  if (v34)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 93, *(this + 188) + v34);
    memcpy((*(this + 93) + 4 * *(this + 188)), *(a2 + 93), 4 * *(a2 + 188));
    *(this + 188) += *(a2 + 188);
  }

  v35 = *(a2 + 192);
  if (v35)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 95, *(this + 192) + v35);
    memcpy((*(this + 95) + 4 * *(this + 192)), *(a2 + 95), 4 * *(a2 + 192));
    *(this + 192) += *(a2 + 192);
  }

  v36 = *(a2 + 196);
  if (v36)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 97, *(this + 196) + v36);
    memcpy((*(this + 97) + 4 * *(this + 196)), *(a2 + 97), 4 * *(a2 + 196));
    *(this + 196) += *(a2 + 196);
  }

  v37 = *(a2 + 235);
  if (!v37)
  {
    goto LABEL_79;
  }

  if (v37)
  {
    v56 = *(a2 + 1);
    *(this + 235) |= 1u;
    *(this + 1) = v56;
    v37 = *(a2 + 235);
    if ((v37 & 2) == 0)
    {
LABEL_72:
      if ((v37 & 4) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_200;
    }
  }

  else if ((v37 & 2) == 0)
  {
    goto LABEL_72;
  }

  v57 = *(a2 + 4);
  *(this + 235) |= 2u;
  *(this + 4) = v57;
  v37 = *(a2 + 235);
  if ((v37 & 4) == 0)
  {
LABEL_73:
    if ((v37 & 8) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_201;
  }

LABEL_200:
  v58 = *(a2 + 5);
  *(this + 235) |= 4u;
  *(this + 5) = v58;
  v37 = *(a2 + 235);
  if ((v37 & 8) == 0)
  {
LABEL_74:
    if ((v37 & 0x10) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_202;
  }

LABEL_201:
  v59 = *(a2 + 6);
  *(this + 235) |= 8u;
  *(this + 6) = v59;
  v37 = *(a2 + 235);
  if ((v37 & 0x10) == 0)
  {
LABEL_75:
    if ((v37 & 0x20) == 0)
    {
      goto LABEL_76;
    }

LABEL_203:
    v61 = *(a2 + 8);
    *(this + 235) |= 0x20u;
    *(this + 8) = v61;
    v37 = *(a2 + 235);
    if ((v37 & 0x40) == 0)
    {
LABEL_77:
      if ((v37 & 0x80) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_78;
    }

    goto LABEL_204;
  }

LABEL_202:
  v60 = *(a2 + 7);
  *(this + 235) |= 0x10u;
  *(this + 7) = v60;
  v37 = *(a2 + 235);
  if ((v37 & 0x20) != 0)
  {
    goto LABEL_203;
  }

LABEL_76:
  if ((v37 & 0x40) == 0)
  {
    goto LABEL_77;
  }

LABEL_204:
  v62 = *(a2 + 9);
  *(this + 235) |= 0x40u;
  *(this + 9) = v62;
  v37 = *(a2 + 235);
  if ((v37 & 0x80) != 0)
  {
LABEL_78:
    v38 = *(a2 + 10);
    *(this + 235) |= 0x80u;
    *(this + 10) = v38;
    v37 = *(a2 + 235);
  }

LABEL_79:
  if ((v37 & 0xFF00) == 0)
  {
    goto LABEL_86;
  }

  if ((v37 & 0x100) != 0)
  {
    v63 = *(a2 + 11);
    *(this + 235) |= 0x100u;
    *(this + 11) = v63;
    v37 = *(a2 + 235);
    if ((v37 & 0x200) == 0)
    {
LABEL_82:
      if ((v37 & 0x2000) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_208;
    }
  }

  else if ((v37 & 0x200) == 0)
  {
    goto LABEL_82;
  }

  v64 = *(a2 + 16);
  *(this + 235) |= 0x200u;
  *(this + 16) = v64;
  v37 = *(a2 + 235);
  if ((v37 & 0x2000) == 0)
  {
LABEL_83:
    if ((v37 & 0x4000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_209;
  }

LABEL_208:
  v65 = *(a2 + 17);
  *(this + 235) |= 0x2000u;
  *(this + 17) = v65;
  v37 = *(a2 + 235);
  if ((v37 & 0x4000) == 0)
  {
LABEL_84:
    if ((v37 & 0x8000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_209:
  v66 = *(a2 + 26);
  *(this + 235) |= 0x4000u;
  *(this + 26) = v66;
  v37 = *(a2 + 235);
  if ((v37 & 0x8000) != 0)
  {
LABEL_85:
    v39 = *(a2 + 27);
    *(this + 235) |= 0x8000u;
    *(this + 27) = v39;
    v37 = *(a2 + 235);
  }

LABEL_86:
  if ((v37 & 0xFF0000) == 0)
  {
    goto LABEL_95;
  }

  if ((v37 & 0x10000) != 0)
  {
    v67 = *(a2 + 28);
    *(this + 235) |= 0x10000u;
    *(this + 28) = v67;
    v37 = *(a2 + 235);
    if ((v37 & 0x20000) == 0)
    {
LABEL_89:
      if ((v37 & 0x40000) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_213;
    }
  }

  else if ((v37 & 0x20000) == 0)
  {
    goto LABEL_89;
  }

  v68 = *(a2 + 29);
  *(this + 235) |= 0x20000u;
  *(this + 29) = v68;
  v37 = *(a2 + 235);
  if ((v37 & 0x40000) == 0)
  {
LABEL_90:
    if ((v37 & 0x80000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_214;
  }

LABEL_213:
  v69 = *(a2 + 30);
  *(this + 235) |= 0x40000u;
  *(this + 30) = v69;
  v37 = *(a2 + 235);
  if ((v37 & 0x80000) == 0)
  {
LABEL_91:
    if ((v37 & 0x200000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_215;
  }

LABEL_214:
  v70 = *(a2 + 31);
  *(this + 235) |= 0x80000u;
  *(this + 31) = v70;
  v37 = *(a2 + 235);
  if ((v37 & 0x200000) == 0)
  {
LABEL_92:
    if ((v37 & 0x400000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_216;
  }

LABEL_215:
  v71 = *(a2 + 36);
  *(this + 235) |= 0x200000u;
  *(this + 36) = v71;
  v37 = *(a2 + 235);
  if ((v37 & 0x400000) == 0)
  {
LABEL_93:
    if ((v37 & 0x800000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_216:
  v72 = *(a2 + 37);
  *(this + 235) |= 0x400000u;
  *(this + 37) = v72;
  v37 = *(a2 + 235);
  if ((v37 & 0x800000) != 0)
  {
LABEL_94:
    v40 = *(a2 + 46);
    *(this + 235) |= 0x800000u;
    *(this + 46) = v40;
    v37 = *(a2 + 235);
  }

LABEL_95:
  if (!(v37 >> 27))
  {
    goto LABEL_101;
  }

  if ((v37 & 0x8000000) != 0)
  {
    v123 = *(a2 + 47);
    *(this + 235) |= 0x8000000u;
    *(this + 47) = v123;
    v37 = *(a2 + 235);
    if ((v37 & 0x10000000) == 0)
    {
LABEL_98:
      if ((v37 & 0x20000000) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_279;
    }
  }

  else if ((v37 & 0x10000000) == 0)
  {
    goto LABEL_98;
  }

  v124 = *(a2 + 52);
  *(this + 235) |= 0x10000000u;
  *(this + 52) = v124;
  v37 = *(a2 + 235);
  if ((v37 & 0x20000000) == 0)
  {
LABEL_99:
    if ((v37 & 0x40000000) == 0)
    {
      goto LABEL_100;
    }

LABEL_280:
    v126 = *(a2 + 54);
    *(this + 235) |= 0x40000000u;
    *(this + 54) = v126;
    if ((*(a2 + 235) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_281;
  }

LABEL_279:
  v125 = *(a2 + 53);
  *(this + 235) |= 0x20000000u;
  *(this + 53) = v125;
  v37 = *(a2 + 235);
  if ((v37 & 0x40000000) != 0)
  {
    goto LABEL_280;
  }

LABEL_100:
  if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_101;
  }

LABEL_281:
  v127 = *(a2 + 55);
  *(this + 235) |= 0x80000000;
  *(this + 55) = v127;
LABEL_101:
  v41 = *(a2 + 236);
  if (!v41)
  {
    goto LABEL_108;
  }

  if (v41)
  {
    v73 = *(a2 + 56);
    *(this + 236) |= 1u;
    *(this + 56) = v73;
    v41 = *(a2 + 236);
    if ((v41 & 2) == 0)
    {
LABEL_104:
      if ((v41 & 8) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_220;
    }
  }

  else if ((v41 & 2) == 0)
  {
    goto LABEL_104;
  }

  v74 = *(a2 + 57);
  *(this + 236) |= 2u;
  *(this + 57) = v74;
  v41 = *(a2 + 236);
  if ((v41 & 8) == 0)
  {
LABEL_105:
    if ((v41 & 0x10) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_221;
  }

LABEL_220:
  v75 = *(a2 + 62);
  *(this + 236) |= 8u;
  *(this + 62) = v75;
  v41 = *(a2 + 236);
  if ((v41 & 0x10) == 0)
  {
LABEL_106:
    if ((v41 & 0x20) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

LABEL_221:
  v76 = *(a2 + 63);
  *(this + 236) |= 0x10u;
  *(this + 63) = v76;
  v41 = *(a2 + 236);
  if ((v41 & 0x20) != 0)
  {
LABEL_107:
    v42 = *(a2 + 72);
    *(this + 236) |= 0x20u;
    *(this + 72) = v42;
    v41 = *(a2 + 236);
  }

LABEL_108:
  if ((v41 & 0x3FC00) == 0)
  {
    goto LABEL_116;
  }

  if ((v41 & 0x400) != 0)
  {
    v77 = *(a2 + 73);
    *(this + 236) |= 0x400u;
    *(this + 73) = v77;
    v41 = *(a2 + 236);
    if ((v41 & 0x800) == 0)
    {
LABEL_111:
      if ((v41 & 0x1000) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_225;
    }
  }

  else if ((v41 & 0x800) == 0)
  {
    goto LABEL_111;
  }

  v78 = *(a2 + 82);
  *(this + 236) |= 0x800u;
  *(this + 82) = v78;
  v41 = *(a2 + 236);
  if ((v41 & 0x1000) == 0)
  {
LABEL_112:
    if ((v41 & 0x2000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_226;
  }

LABEL_225:
  v79 = *(a2 + 83);
  *(this + 236) |= 0x1000u;
  *(this + 83) = v79;
  v41 = *(a2 + 236);
  if ((v41 & 0x2000) == 0)
  {
LABEL_113:
    if ((v41 & 0x4000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_227;
  }

LABEL_226:
  v80 = *(a2 + 84);
  *(this + 236) |= 0x2000u;
  *(this + 84) = v80;
  v41 = *(a2 + 236);
  if ((v41 & 0x4000) == 0)
  {
LABEL_114:
    if ((v41 & 0x8000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

LABEL_227:
  v81 = *(a2 + 85);
  *(this + 236) |= 0x4000u;
  *(this + 85) = v81;
  v41 = *(a2 + 236);
  if ((v41 & 0x8000) != 0)
  {
LABEL_115:
    v43 = *(a2 + 86);
    *(this + 236) |= 0x8000u;
    *(this + 86) = v43;
    v41 = *(a2 + 236);
  }

LABEL_116:
  if ((v41 & 0xFF0000) == 0)
  {
    goto LABEL_126;
  }

  if ((v41 & 0x10000) != 0)
  {
    v82 = *(a2 + 87);
    *(this + 236) |= 0x10000u;
    *(this + 87) = v82;
    v41 = *(a2 + 236);
    if ((v41 & 0x20000) == 0)
    {
LABEL_119:
      if ((v41 & 0x40000) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_231;
    }
  }

  else if ((v41 & 0x20000) == 0)
  {
    goto LABEL_119;
  }

  v83 = *(a2 + 88);
  *(this + 236) |= 0x20000u;
  *(this + 88) = v83;
  v41 = *(a2 + 236);
  if ((v41 & 0x40000) == 0)
  {
LABEL_120:
    if ((v41 & 0x80000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_232;
  }

LABEL_231:
  v84 = *(a2 + 89);
  *(this + 236) |= 0x40000u;
  *(this + 89) = v84;
  v41 = *(a2 + 236);
  if ((v41 & 0x80000) == 0)
  {
LABEL_121:
    if ((v41 & 0x100000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_233;
  }

LABEL_232:
  v85 = *(a2 + 90);
  *(this + 236) |= 0x80000u;
  *(this + 90) = v85;
  v41 = *(a2 + 236);
  if ((v41 & 0x100000) == 0)
  {
LABEL_122:
    if ((v41 & 0x200000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_234;
  }

LABEL_233:
  v86 = *(a2 + 91);
  *(this + 236) |= 0x100000u;
  *(this + 91) = v86;
  v41 = *(a2 + 236);
  if ((v41 & 0x200000) == 0)
  {
LABEL_123:
    if ((v41 & 0x400000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_235;
  }

LABEL_234:
  v87 = *(a2 + 92);
  *(this + 236) |= 0x200000u;
  *(this + 92) = v87;
  v41 = *(a2 + 236);
  if ((v41 & 0x400000) == 0)
  {
LABEL_124:
    if ((v41 & 0x800000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_235:
  v88 = *(a2 + 93);
  *(this + 236) |= 0x400000u;
  *(this + 93) = v88;
  v41 = *(a2 + 236);
  if ((v41 & 0x800000) != 0)
  {
LABEL_125:
    v44 = *(a2 + 94);
    *(this + 236) |= 0x800000u;
    *(this + 94) = v44;
    v41 = *(a2 + 236);
  }

LABEL_126:
  if (!HIBYTE(v41))
  {
    goto LABEL_132;
  }

  if ((v41 & 0x1000000) != 0)
  {
    v128 = *(a2 + 95);
    *(this + 236) |= 0x1000000u;
    *(this + 95) = v128;
    v41 = *(a2 + 236);
    if ((v41 & 0x2000000) == 0)
    {
LABEL_129:
      if ((v41 & 0x4000000) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_284;
    }
  }

  else if ((v41 & 0x2000000) == 0)
  {
    goto LABEL_129;
  }

  v129 = *(a2 + 96);
  *(this + 236) |= 0x2000000u;
  *(this + 96) = v129;
  v41 = *(a2 + 236);
  if ((v41 & 0x4000000) == 0)
  {
LABEL_130:
    if ((v41 & 0x8000000) == 0)
    {
      goto LABEL_131;
    }

LABEL_285:
    v131 = *(a2 + 102);
    *(this + 236) |= 0x8000000u;
    *(this + 102) = v131;
    if ((*(a2 + 236) & 0x80000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_286;
  }

LABEL_284:
  v130 = *(a2 + 97);
  *(this + 236) |= 0x4000000u;
  *(this + 97) = v130;
  v41 = *(a2 + 236);
  if ((v41 & 0x8000000) != 0)
  {
    goto LABEL_285;
  }

LABEL_131:
  if ((v41 & 0x80000000) == 0)
  {
    goto LABEL_132;
  }

LABEL_286:
  v132 = *(a2 + 103);
  *(this + 236) |= 0x80000000;
  *(this + 103) = v132;
LABEL_132:
  v45 = *(a2 + 237);
  if (!v45)
  {
    goto LABEL_140;
  }

  if (v45)
  {
    v89 = *(a2 + 112);
    *(this + 237) |= 1u;
    *(this + 112) = v89;
    v45 = *(a2 + 237);
    if ((v45 & 2) == 0)
    {
LABEL_135:
      if ((v45 & 4) == 0)
      {
        goto LABEL_136;
      }

      goto LABEL_239;
    }
  }

  else if ((v45 & 2) == 0)
  {
    goto LABEL_135;
  }

  v90 = *(a2 + 113);
  *(this + 237) |= 2u;
  *(this + 113) = v90;
  v45 = *(a2 + 237);
  if ((v45 & 4) == 0)
  {
LABEL_136:
    if ((v45 & 8) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_240;
  }

LABEL_239:
  v91 = *(a2 + 114);
  *(this + 237) |= 4u;
  *(this + 114) = v91;
  v45 = *(a2 + 237);
  if ((v45 & 8) == 0)
  {
LABEL_137:
    if ((v45 & 0x10) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_241;
  }

LABEL_240:
  v92 = *(a2 + 115);
  *(this + 237) |= 8u;
  *(this + 115) = v92;
  v45 = *(a2 + 237);
  if ((v45 & 0x10) == 0)
  {
LABEL_138:
    if ((v45 & 0x40) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_139;
  }

LABEL_241:
  v93 = *(a2 + 116);
  *(this + 237) |= 0x10u;
  *(this + 116) = v93;
  v45 = *(a2 + 237);
  if ((v45 & 0x40) != 0)
  {
LABEL_139:
    v46 = *(a2 + 117);
    *(this + 237) |= 0x40u;
    *(this + 117) = v46;
    v45 = *(a2 + 237);
  }

LABEL_140:
  if ((v45 & 0x8000) != 0)
  {
    v47 = *(a2 + 154);
    *(this + 237) |= 0x8000u;
    *(this + 154) = v47;
    v45 = *(a2 + 237);
  }

  if ((v45 & 0xFF0000) == 0)
  {
    goto LABEL_150;
  }

  if ((v45 & 0x10000) != 0)
  {
    v94 = *(a2 + 155);
    *(this + 237) |= 0x10000u;
    *(this + 155) = v94;
    v45 = *(a2 + 237);
    if ((v45 & 0x20000) == 0)
    {
LABEL_145:
      if ((v45 & 0x40000) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_245;
    }
  }

  else if ((v45 & 0x20000) == 0)
  {
    goto LABEL_145;
  }

  v95 = *(a2 + 156);
  *(this + 237) |= 0x20000u;
  *(this + 156) = v95;
  v45 = *(a2 + 237);
  if ((v45 & 0x40000) == 0)
  {
LABEL_146:
    if ((v45 & 0x80000) == 0)
    {
      goto LABEL_147;
    }

LABEL_246:
    v97 = *(a2 + 158);
    *(this + 237) |= 0x80000u;
    *(this + 158) = v97;
    v45 = *(a2 + 237);
    if ((v45 & 0x100000) == 0)
    {
LABEL_148:
      if ((v45 & 0x400000) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_149;
    }

    goto LABEL_247;
  }

LABEL_245:
  v96 = *(a2 + 157);
  *(this + 237) |= 0x40000u;
  *(this + 157) = v96;
  v45 = *(a2 + 237);
  if ((v45 & 0x80000) != 0)
  {
    goto LABEL_246;
  }

LABEL_147:
  if ((v45 & 0x100000) == 0)
  {
    goto LABEL_148;
  }

LABEL_247:
  v98 = *(a2 + 159);
  *(this + 237) |= 0x100000u;
  *(this + 159) = v98;
  v45 = *(a2 + 237);
  if ((v45 & 0x400000) != 0)
  {
LABEL_149:
    v48 = *(a2 + 180);
    *(this + 237) |= 0x400000u;
    *(this + 180) = v48;
    v45 = *(a2 + 237);
  }

LABEL_150:
  if (v45 < 0)
  {
    v49 = *(a2 + 181);
    *(this + 237) |= 0x80000000;
    *(this + 181) = v49;
  }

  v50 = *(a2 + 238);
  if (!v50)
  {
    goto LABEL_162;
  }

  if (v50)
  {
    v99 = *(a2 + 198);
    *(this + 238) |= 1u;
    *(this + 198) = v99;
    v50 = *(a2 + 238);
    if ((v50 & 2) == 0)
    {
LABEL_155:
      if ((v50 & 4) == 0)
      {
        goto LABEL_156;
      }

      goto LABEL_251;
    }
  }

  else if ((v50 & 2) == 0)
  {
    goto LABEL_155;
  }

  v100 = *(a2 + 199);
  *(this + 238) |= 2u;
  *(this + 199) = v100;
  v50 = *(a2 + 238);
  if ((v50 & 4) == 0)
  {
LABEL_156:
    if ((v50 & 8) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_252;
  }

LABEL_251:
  v101 = *(a2 + 200);
  *(this + 238) |= 4u;
  *(this + 200) = v101;
  v50 = *(a2 + 238);
  if ((v50 & 8) == 0)
  {
LABEL_157:
    if ((v50 & 0x10) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_253;
  }

LABEL_252:
  v102 = *(a2 + 201);
  *(this + 238) |= 8u;
  *(this + 201) = v102;
  v50 = *(a2 + 238);
  if ((v50 & 0x10) == 0)
  {
LABEL_158:
    if ((v50 & 0x20) == 0)
    {
      goto LABEL_159;
    }

LABEL_254:
    v104 = *(a2 + 203);
    *(this + 238) |= 0x20u;
    *(this + 203) = v104;
    v50 = *(a2 + 238);
    if ((v50 & 0x40) == 0)
    {
LABEL_160:
      if ((v50 & 0x80) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_161;
    }

    goto LABEL_255;
  }

LABEL_253:
  v103 = *(a2 + 202);
  *(this + 238) |= 0x10u;
  *(this + 202) = v103;
  v50 = *(a2 + 238);
  if ((v50 & 0x20) != 0)
  {
    goto LABEL_254;
  }

LABEL_159:
  if ((v50 & 0x40) == 0)
  {
    goto LABEL_160;
  }

LABEL_255:
  v105 = *(a2 + 204);
  *(this + 238) |= 0x40u;
  *(this + 204) = v105;
  v50 = *(a2 + 238);
  if ((v50 & 0x80) != 0)
  {
LABEL_161:
    v51 = *(a2 + 205);
    *(this + 238) |= 0x80u;
    *(this + 205) = v51;
    v50 = *(a2 + 238);
  }

LABEL_162:
  if ((v50 & 0xFF00) == 0)
  {
    goto LABEL_172;
  }

  if ((v50 & 0x100) != 0)
  {
    v106 = *(a2 + 206);
    *(this + 238) |= 0x100u;
    *(this + 206) = v106;
    v50 = *(a2 + 238);
    if ((v50 & 0x200) == 0)
    {
LABEL_165:
      if ((v50 & 0x400) == 0)
      {
        goto LABEL_166;
      }

      goto LABEL_259;
    }
  }

  else if ((v50 & 0x200) == 0)
  {
    goto LABEL_165;
  }

  v107 = *(a2 + 207);
  *(this + 238) |= 0x200u;
  *(this + 207) = v107;
  v50 = *(a2 + 238);
  if ((v50 & 0x400) == 0)
  {
LABEL_166:
    if ((v50 & 0x800) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_260;
  }

LABEL_259:
  v108 = *(a2 + 208);
  *(this + 238) |= 0x400u;
  *(this + 208) = v108;
  v50 = *(a2 + 238);
  if ((v50 & 0x800) == 0)
  {
LABEL_167:
    if ((v50 & 0x1000) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_261;
  }

LABEL_260:
  v109 = *(a2 + 209);
  *(this + 238) |= 0x800u;
  *(this + 209) = v109;
  v50 = *(a2 + 238);
  if ((v50 & 0x1000) == 0)
  {
LABEL_168:
    if ((v50 & 0x2000) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_262;
  }

LABEL_261:
  v110 = *(a2 + 210);
  *(this + 238) |= 0x1000u;
  *(this + 210) = v110;
  v50 = *(a2 + 238);
  if ((v50 & 0x2000) == 0)
  {
LABEL_169:
    if ((v50 & 0x4000) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_263;
  }

LABEL_262:
  v111 = *(a2 + 211);
  *(this + 238) |= 0x2000u;
  *(this + 211) = v111;
  v50 = *(a2 + 238);
  if ((v50 & 0x4000) == 0)
  {
LABEL_170:
    if ((v50 & 0x8000) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_171;
  }

LABEL_263:
  v112 = *(a2 + 212);
  *(this + 238) |= 0x4000u;
  *(this + 212) = v112;
  v50 = *(a2 + 238);
  if ((v50 & 0x8000) != 0)
  {
LABEL_171:
    v52 = *(a2 + 213);
    *(this + 238) |= 0x8000u;
    *(this + 213) = v52;
    v50 = *(a2 + 238);
  }

LABEL_172:
  if ((v50 & 0xFF0000) == 0)
  {
    goto LABEL_182;
  }

  if ((v50 & 0x10000) != 0)
  {
    v113 = *(a2 + 214);
    *(this + 238) |= 0x10000u;
    *(this + 214) = v113;
    v50 = *(a2 + 238);
    if ((v50 & 0x20000) == 0)
    {
LABEL_175:
      if ((v50 & 0x40000) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_267;
    }
  }

  else if ((v50 & 0x20000) == 0)
  {
    goto LABEL_175;
  }

  v114 = *(a2 + 215);
  *(this + 238) |= 0x20000u;
  *(this + 215) = v114;
  v50 = *(a2 + 238);
  if ((v50 & 0x40000) == 0)
  {
LABEL_176:
    if ((v50 & 0x80000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_268;
  }

LABEL_267:
  v115 = *(a2 + 216);
  *(this + 238) |= 0x40000u;
  *(this + 216) = v115;
  v50 = *(a2 + 238);
  if ((v50 & 0x80000) == 0)
  {
LABEL_177:
    if ((v50 & 0x100000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_269;
  }

LABEL_268:
  v116 = *(a2 + 217);
  *(this + 238) |= 0x80000u;
  *(this + 217) = v116;
  v50 = *(a2 + 238);
  if ((v50 & 0x100000) == 0)
  {
LABEL_178:
    if ((v50 & 0x200000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_270;
  }

LABEL_269:
  v117 = *(a2 + 218);
  *(this + 238) |= 0x100000u;
  *(this + 218) = v117;
  v50 = *(a2 + 238);
  if ((v50 & 0x200000) == 0)
  {
LABEL_179:
    if ((v50 & 0x400000) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_271;
  }

LABEL_270:
  v118 = *(a2 + 219);
  *(this + 238) |= 0x200000u;
  *(this + 219) = v118;
  v50 = *(a2 + 238);
  if ((v50 & 0x400000) == 0)
  {
LABEL_180:
    if ((v50 & 0x800000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_181;
  }

LABEL_271:
  v119 = *(a2 + 220);
  *(this + 238) |= 0x400000u;
  *(this + 220) = v119;
  v50 = *(a2 + 238);
  if ((v50 & 0x800000) != 0)
  {
LABEL_181:
    v53 = *(a2 + 221);
    *(this + 238) |= 0x800000u;
    *(this + 221) = v53;
    v50 = *(a2 + 238);
  }

LABEL_182:
  if (!HIBYTE(v50))
  {
    goto LABEL_191;
  }

  if ((v50 & 0x1000000) != 0)
  {
    v133 = *(a2 + 222);
    *(this + 238) |= 0x1000000u;
    *(this + 222) = v133;
    v50 = *(a2 + 238);
    if ((v50 & 0x2000000) == 0)
    {
LABEL_185:
      if ((v50 & 0x4000000) == 0)
      {
        goto LABEL_186;
      }

      goto LABEL_289;
    }
  }

  else if ((v50 & 0x2000000) == 0)
  {
    goto LABEL_185;
  }

  v134 = *(a2 + 223);
  *(this + 238) |= 0x2000000u;
  *(this + 223) = v134;
  v50 = *(a2 + 238);
  if ((v50 & 0x4000000) == 0)
  {
LABEL_186:
    if ((v50 & 0x8000000) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_290;
  }

LABEL_289:
  v135 = *(a2 + 224);
  *(this + 238) |= 0x4000000u;
  *(this + 224) = v135;
  v50 = *(a2 + 238);
  if ((v50 & 0x8000000) == 0)
  {
LABEL_187:
    if ((v50 & 0x10000000) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_291;
  }

LABEL_290:
  v136 = *(a2 + 225);
  *(this + 238) |= 0x8000000u;
  *(this + 225) = v136;
  v50 = *(a2 + 238);
  if ((v50 & 0x10000000) == 0)
  {
LABEL_188:
    if ((v50 & 0x20000000) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_292;
  }

LABEL_291:
  v137 = *(a2 + 226);
  *(this + 238) |= 0x10000000u;
  *(this + 226) = v137;
  v50 = *(a2 + 238);
  if ((v50 & 0x20000000) == 0)
  {
LABEL_189:
    if ((v50 & 0x40000000) == 0)
    {
      goto LABEL_190;
    }

LABEL_293:
    v139 = *(a2 + 228);
    *(this + 238) |= 0x40000000u;
    *(this + 228) = v139;
    if ((*(a2 + 238) & 0x80000000) == 0)
    {
      goto LABEL_191;
    }

    goto LABEL_294;
  }

LABEL_292:
  v138 = *(a2 + 227);
  *(this + 238) |= 0x20000000u;
  *(this + 227) = v138;
  v50 = *(a2 + 238);
  if ((v50 & 0x40000000) != 0)
  {
    goto LABEL_293;
  }

LABEL_190:
  if ((v50 & 0x80000000) == 0)
  {
    goto LABEL_191;
  }

LABEL_294:
  v140 = *(a2 + 229);
  *(this + 238) |= 0x80000000;
  *(this + 229) = v140;
LABEL_191:
  LOBYTE(v54) = *(a2 + 956);
  if (!v54)
  {
    return;
  }

  if (*(a2 + 956))
  {
    v120 = *(a2 + 230);
    *(this + 239) |= 1u;
    *(this + 230) = v120;
    v54 = *(a2 + 239);
    if ((v54 & 2) == 0)
    {
LABEL_194:
      if ((v54 & 4) == 0)
      {
        goto LABEL_195;
      }

      goto LABEL_275;
    }
  }

  else if ((*(a2 + 956) & 2) == 0)
  {
    goto LABEL_194;
  }

  v121 = *(a2 + 231);
  *(this + 239) |= 2u;
  *(this + 231) = v121;
  v54 = *(a2 + 239);
  if ((v54 & 4) == 0)
  {
LABEL_195:
    if ((v54 & 8) == 0)
    {
      return;
    }

    goto LABEL_196;
  }

LABEL_275:
  v122 = *(a2 + 232);
  *(this + 239) |= 4u;
  *(this + 232) = v122;
  if ((*(a2 + 239) & 8) != 0)
  {
LABEL_196:
    v55 = *(a2 + 233);
    *(this + 239) |= 8u;
    *(this + 233) = v55;
  }
}

void sub_296385978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryDailyUsage::~BluetoothAccessoryDailyUsage(awd::metrics::BluetoothAccessoryDailyUsage *this)
{
  *this = &unk_2A1D4B9B8;
  v2 = *(this + 97);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 95);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 93);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 91);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 88);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 86);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 84);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(this + 82);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 80);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(this + 75);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(this + 73);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(this + 71);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  v14 = *(this + 69);
  if (v14)
  {
    MEMORY[0x29C259EE0](v14, 0x1000C8052888210);
  }

  v15 = *(this + 67);
  if (v15)
  {
    MEMORY[0x29C259EE0](v15, 0x1000C8052888210);
  }

  v16 = *(this + 65);
  if (v16)
  {
    MEMORY[0x29C259EE0](v16, 0x1000C8052888210);
  }

  v17 = *(this + 63);
  if (v17)
  {
    MEMORY[0x29C259EE0](v17, 0x1000C8052888210);
  }

  v18 = *(this + 61);
  if (v18)
  {
    MEMORY[0x29C259EE0](v18, 0x1000C8052888210);
  }

  v19 = *(this + 59);
  if (v19)
  {
    MEMORY[0x29C259EE0](v19, 0x1000C8052888210);
  }

  v20 = *(this + 54);
  if (v20)
  {
    MEMORY[0x29C259EE0](v20, 0x1000C8052888210);
  }

  v21 = *(this + 52);
  if (v21)
  {
    MEMORY[0x29C259EE0](v21, 0x1000C8052888210);
  }

  v22 = *(this + 49);
  if (v22)
  {
    MEMORY[0x29C259EE0](v22, 0x1000C8052888210);
  }

  v23 = *(this + 39);
  if (v23)
  {
    MEMORY[0x29C259EE0](v23, 0x1000C8052888210);
  }

  v24 = *(this + 37);
  if (v24)
  {
    MEMORY[0x29C259EE0](v24, 0x1000C8052888210);
  }

  v25 = *(this + 34);
  if (v25)
  {
    MEMORY[0x29C259EE0](v25, 0x1000C8052888210);
  }

  v26 = *(this + 32);
  if (v26)
  {
    MEMORY[0x29C259EE0](v26, 0x1000C8052888210);
  }

  v27 = *(this + 29);
  if (v27)
  {
    MEMORY[0x29C259EE0](v27, 0x1000C8052888210);
  }

  v28 = *(this + 24);
  if (v28)
  {
    MEMORY[0x29C259EE0](v28, 0x1000C8052888210);
  }

  v29 = *(this + 21);
  if (v29)
  {
    MEMORY[0x29C259EE0](v29, 0x1000C8052888210);
  }

  v30 = *(this + 19);
  if (v30)
  {
    MEMORY[0x29C259EE0](v30, 0x1000C8052888210);
  }

  v31 = *(this + 16);
  if (v31)
  {
    MEMORY[0x29C259EE0](v31, 0x1000C8052888210);
  }

  v32 = *(this + 11);
  if (v32)
  {
    MEMORY[0x29C259EE0](v32, 0x1000C8052888210);
  }

  v33 = *(this + 9);
  if (v33)
  {
    MEMORY[0x29C259EE0](v33, 0x1000C8052888210);
  }

  v34 = *(this + 6);
  if (v34)
  {
    MEMORY[0x29C259EE0](v34, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAccessoryDailyUsage::~BluetoothAccessoryDailyUsage(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAccessoryDailyUsage::default_instance(awd::metrics::BluetoothAccessoryDailyUsage *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryDailyUsage::default_instance_;
  if (!awd::metrics::BluetoothAccessoryDailyUsage::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryDailyUsage::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryDailyUsage::Clear(uint64_t this)
{
  v1 = *(this + 940);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 44) = 0;
    *(this + 64) = 0;
    *(this + 104) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 144) = 0;
    *(this + 184) = 0;
    *(this + 112) = 0;
    *(this + 120) = 0;
  }

  if (v1 >> 27)
  {
    *(this + 188) = 0;
    *(this + 208) = 0;
    *(this + 216) = 0;
  }

  v2 = *(this + 944);
  if (v2)
  {
    *(this + 224) = 0;
    *(this + 248) = 0;
    *(this + 288) = 0;
  }

  if ((v2 & 0x3FC00) != 0)
  {
    *(this + 292) = 0;
    *(this + 328) = 0;
    *(this + 336) = 0;
    *(this + 344) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 348) = 0u;
    *(this + 364) = 0u;
  }

  if (HIBYTE(v2))
  {
    *(this + 380) = 0;
    *(this + 384) = 0;
    *(this + 408) = 0;
  }

  v3 = *(this + 948);
  if (v3)
  {
    *(this + 448) = 0;
    *(this + 456) = 0;
    *(this + 464) = 0;
  }

  if ((v3 & 0x7F8000) != 0)
  {
    *(this + 616) = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(this + 720) = 0;
    *(this + 636) = 0;
    *(this + 620) = 0u;
  }

  if (v3 < 0)
  {
    *(this + 724) = 0;
  }

  v4 = *(this + 952);
  if (v4)
  {
    *(this + 792) = 0u;
    *(this + 808) = 0u;
  }

  if ((v4 & 0xFF00) != 0)
  {
    *(this + 824) = 0u;
    *(this + 840) = 0u;
  }

  if ((v4 & 0xFF0000) != 0)
  {
    *(this + 856) = 0u;
    *(this + 872) = 0u;
  }

  if (HIBYTE(v4))
  {
    *(this + 888) = 0u;
    *(this + 904) = 0u;
  }

  if (*(this + 956))
  {
    *(this + 920) = 0u;
  }

  *(this + 56) = 0;
  *(this + 80) = 0;
  *(this + 96) = 0;
  *(this + 136) = 0;
  *(this + 160) = 0;
  *(this + 176) = 0;
  *(this + 200) = 0;
  *(this + 240) = 0;
  *(this + 264) = 0;
  *(this + 280) = 0;
  *(this + 304) = 0;
  *(this + 320) = 0;
  *(this + 400) = 0;
  *(this + 424) = 0;
  *(this + 440) = 0;
  *(this + 480) = 0;
  *(this + 496) = 0;
  *(this + 512) = 0;
  *(this + 528) = 0;
  *(this + 544) = 0;
  *(this + 560) = 0;
  *(this + 576) = 0;
  *(this + 592) = 0;
  *(this + 608) = 0;
  *(this + 648) = 0;
  *(this + 664) = 0;
  *(this + 680) = 0;
  *(this + 696) = 0;
  *(this + 712) = 0;
  *(this + 736) = 0;
  *(this + 752) = 0;
  *(this + 768) = 0;
  *(this + 784) = 0;
  *(this + 940) = 0;
  *(this + 948) = 0;
  *(this + 956) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAccessoryDailyUsage::MergePartialFromCodedStream(awd::metrics::BluetoothAccessoryDailyUsage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v752 = (this + 288);
  v764 = (this + 292);
  v758 = (this + 328);
  v754 = (this + 332);
  v751 = (this + 336);
  v745 = (this + 340);
  v743 = (this + 344);
  v739 = (this + 348);
  v737 = (this + 352);
  v734 = (this + 384);
  v735 = (this + 372);
  v732 = (this + 408);
  v733 = (this + 388);
  v763 = (this + 412);
  v757 = (this + 448);
  v753 = (this + 452);
  v748 = (this + 456);
  v744 = (this + 460);
  v742 = (this + 464);
  v762 = (this + 468);
  v766 = (this + 616);
  v760 = (this + 620);
  v756 = (this + 624);
  v750 = (this + 628);
  v747 = (this + 632);
  v741 = (this + 636);
  v761 = (this + 720);
  v765 = (this + 724);
  v759 = (this + 792);
  v755 = (this + 796);
  v749 = (this + 800);
  v746 = (this + 804);
  v740 = (this + 808);
  v738 = (this + 812);
  v736 = (this + 816);
  v730 = (this + 824);
  v731 = (this + 820);
  v728 = (this + 832);
  v729 = (this + 828);
  v726 = (this + 840);
  v727 = (this + 836);
  v724 = (this + 848);
  v725 = (this + 844);
  v722 = (this + 856);
  v723 = (this + 852);
  v720 = (this + 864);
  v721 = (this + 860);
  v718 = (this + 872);
  v719 = (this + 868);
  v716 = (this + 880);
  v717 = (this + 876);
  v714 = (this + 888);
  v715 = (this + 884);
  v712 = (this + 896);
  v713 = (this + 892);
  v710 = (this + 904);
  v711 = (this + 900);
  v4 = (this + 908);
  v5 = (this + 912);
  v6 = (this + 916);
  v7 = (this + 920);
  v8 = (this + 924);
  v9 = (this + 928);
  v10 = (this + 932);
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
          goto LABEL_339;
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

        *(this + 235) |= 1u;
        if (v17 < v14 && *v17 == 16)
        {
          v42 = v17 + 1;
          *(a2 + 1) = v42;
          goto LABEL_381;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v42 = *(a2 + 1);
        v14 = *(a2 + 2);
LABEL_381:
        if (v42 >= v14 || (v151 = *v42, v151 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v152 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v151;
          v152 = v42 + 1;
          *(a2 + 1) = v152;
        }

        *(this + 235) |= 2u;
        if (v152 >= v14 || *v152 != 24)
        {
          continue;
        }

        v50 = v152 + 1;
        *(a2 + 1) = v50;
LABEL_389:
        if (v50 >= v14 || (v153 = *v50, v153 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v154 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v153;
          v154 = v50 + 1;
          *(a2 + 1) = v154;
        }

        *(this + 235) |= 4u;
        if (v154 >= v14 || *v154 != 32)
        {
          continue;
        }

        v89 = v154 + 1;
        *(a2 + 1) = v89;
LABEL_397:
        if (v89 >= v14 || (v155 = *v89, v155 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v156 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v155;
          v156 = v89 + 1;
          *(a2 + 1) = v156;
        }

        *(this + 235) |= 8u;
        if (v156 >= v14 || *v156 != 40)
        {
          continue;
        }

        v56 = v156 + 1;
        *(a2 + 1) = v56;
LABEL_405:
        if (v56 >= v14 || (v157 = *v56, v157 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v158 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v157;
          v158 = v56 + 1;
          *(a2 + 1) = v158;
        }

        *(this + 235) |= 0x10u;
        if (v158 >= v14 || *v158 != 48)
        {
          continue;
        }

        v88 = v158 + 1;
        *(a2 + 1) = v88;
LABEL_413:
        if (v88 >= v14 || (v159 = *v88, v159 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v160 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v159;
          v160 = v88 + 1;
          *(a2 + 1) = v160;
        }

        *(this + 235) |= 0x20u;
        if (v160 >= v14 || *v160 != 56)
        {
          continue;
        }

        v64 = v160 + 1;
        *(a2 + 1) = v64;
LABEL_421:
        if (v64 >= v14 || (v161 = *v64, v161 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v162 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v161;
          v162 = v64 + 1;
          *(a2 + 1) = v162;
        }

        *(this + 235) |= 0x40u;
        if (v162 >= v14 || *v162 != 64)
        {
          continue;
        }

        v103 = v162 + 1;
        *(a2 + 1) = v103;
LABEL_429:
        if (v103 >= v14 || (v163 = *v103, v163 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v164 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v163;
          v164 = v103 + 1;
          *(a2 + 1) = v164;
        }

        *(this + 235) |= 0x80u;
        if (v164 >= v14 || *v164 != 72)
        {
          continue;
        }

        v18 = v164 + 1;
        *(a2 + 1) = v18;
LABEL_437:
        if (v18 >= v14 || (v165 = *v18, v165 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v166 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v165;
          v166 = v18 + 1;
          *(a2 + 1) = v166;
        }

        *(this + 235) |= 0x100u;
        if (v166 >= v14 || *v166 != 80)
        {
          continue;
        }

        v20 = v166 + 1;
        *(a2 + 1) = v20;
LABEL_445:
        if (v20 >= v14 || (v167 = *v20, v167 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v168 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v167;
          v168 = (v20 + 1);
          *(a2 + 1) = v168;
        }

        *(this + 235) |= 0x200u;
        if (v168 >= v14)
        {
          continue;
        }

        v169 = *v168;
        goto LABEL_472;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v50 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_389;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v89 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_397;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v56 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_405;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v88 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_413;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v64 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_421;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v103 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_429;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v18 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_437;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v20 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_445;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          if (v13 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 48);
            if (!result)
            {
              return result;
            }

            goto LABEL_470;
          }

          goto LABEL_339;
        }

        v133 = *(a2 + 1);
        v14 = *(a2 + 2);
        while (1)
        {
          v767 = 0;
          if (v133 >= v14 || *v133 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
            {
              return 0;
            }
          }

          else
          {
            v767 = *v133;
            *(a2 + 1) = v133 + 1;
          }

          v170 = *(this + 14);
          if (v170 == *(this + 15))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v170 + 1);
            v170 = *(this + 14);
          }

          v171 = v767;
          v172 = *(this + 6);
          *(this + 14) = v170 + 1;
          *(v172 + 4 * v170) = v171;
          v173 = *(this + 15) - *(this + 14);
          if (v173 >= 1)
          {
            v174 = v173 + 1;
            do
            {
              v175 = *(a2 + 1);
              v176 = *(a2 + 2);
              if (v175 >= v176 || *v175 != 88)
              {
                break;
              }

              *(a2 + 1) = v175 + 1;
              if ((v175 + 1) >= v176 || v175[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                {
                  return 0;
                }
              }

              else
              {
                v767 = v175[1];
                *(a2 + 1) = v175 + 2;
              }

              v177 = *(this + 14);
              if (v177 >= *(this + 15))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                v177 = *(this + 14);
              }

              v178 = v767;
              v179 = *(this + 6);
              *(this + 14) = v177 + 1;
              *(v179 + 4 * v177) = v178;
              --v174;
            }

            while (v174 > 1);
          }

LABEL_470:
          v168 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v168 >= v14)
          {
            goto LABEL_2;
          }

          v169 = *v168;
          if (v169 == 96)
          {
            goto LABEL_474;
          }

LABEL_472:
          if (v169 != 88)
          {
            goto LABEL_2;
          }

          v133 = (v168 + 1);
          *(a2 + 1) = v133;
        }

      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          if (v13 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 72);
            if (!result)
            {
              return result;
            }

            goto LABEL_492;
          }

          goto LABEL_339;
        }

        v120 = *(a2 + 1);
        v14 = *(a2 + 2);
        while (1)
        {
          v767 = 0;
          if (v120 >= v14 || *v120 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
            {
              return 0;
            }
          }

          else
          {
            v767 = *v120;
            *(a2 + 1) = v120 + 1;
          }

          v180 = *(this + 20);
          if (v180 == *(this + 21))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 9, v180 + 1);
            v180 = *(this + 20);
          }

          v181 = v767;
          v182 = *(this + 9);
          *(this + 20) = v180 + 1;
          *(v182 + 4 * v180) = v181;
          v183 = *(this + 21) - *(this + 20);
          if (v183 >= 1)
          {
            v184 = v183 + 1;
            do
            {
              v185 = *(a2 + 1);
              v186 = *(a2 + 2);
              if (v185 >= v186 || *v185 != 96)
              {
                break;
              }

              *(a2 + 1) = v185 + 1;
              if ((v185 + 1) >= v186 || v185[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                {
                  return 0;
                }
              }

              else
              {
                v767 = v185[1];
                *(a2 + 1) = v185 + 2;
              }

              v187 = *(this + 20);
              if (v187 >= *(this + 21))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                v187 = *(this + 20);
              }

              v188 = v767;
              v189 = *(this + 9);
              *(this + 20) = v187 + 1;
              *(v189 + 4 * v187) = v188;
              --v184;
            }

            while (v184 > 1);
          }

LABEL_492:
          v168 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v168 >= v14)
          {
            goto LABEL_2;
          }

          v190 = *v168;
          if (v190 == 104)
          {
            goto LABEL_496;
          }

          if (v190 != 96)
          {
            goto LABEL_2;
          }

LABEL_474:
          v120 = (v168 + 1);
          *(a2 + 1) = v120;
        }

      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          if (v13 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 88);
            if (!result)
            {
              return result;
            }

            goto LABEL_514;
          }

LABEL_339:
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
          v139 = *(a2 + 1);
          v14 = *(a2 + 2);
          while (1)
          {
            v767 = 0;
            if (v139 >= v14 || *v139 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
              {
                return 0;
              }
            }

            else
            {
              v767 = *v139;
              *(a2 + 1) = v139 + 1;
            }

            v191 = *(this + 24);
            if (v191 == *(this + 25))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 11, v191 + 1);
              v191 = *(this + 24);
            }

            v192 = v767;
            v193 = *(this + 11);
            *(this + 24) = v191 + 1;
            *(v193 + 4 * v191) = v192;
            v194 = *(this + 25) - *(this + 24);
            if (v194 >= 1)
            {
              v195 = v194 + 1;
              do
              {
                v196 = *(a2 + 1);
                v197 = *(a2 + 2);
                if (v196 >= v197 || *v196 != 104)
                {
                  break;
                }

                *(a2 + 1) = v196 + 1;
                if ((v196 + 1) >= v197 || v196[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                  {
                    return 0;
                  }
                }

                else
                {
                  v767 = v196[1];
                  *(a2 + 1) = v196 + 2;
                }

                v198 = *(this + 24);
                if (v198 >= *(this + 25))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                  v198 = *(this + 24);
                }

                v199 = v767;
                v200 = *(this + 11);
                *(this + 24) = v198 + 1;
                *(v200 + 4 * v198) = v199;
                --v195;
              }

              while (v195 > 1);
            }

LABEL_514:
            v168 = *(a2 + 1);
            v14 = *(a2 + 2);
            if (v168 >= v14)
            {
              goto LABEL_2;
            }

            v201 = *v168;
            if (v201 == 112)
            {
              break;
            }

            if (v201 != 104)
            {
              goto LABEL_2;
            }

LABEL_496:
            v139 = (v168 + 1);
            *(a2 + 1) = v139;
          }

          v95 = (v168 + 1);
          *(a2 + 1) = v95;
LABEL_519:
          if (v95 >= v14 || (v202 = *v95, v202 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
            if (!result)
            {
              return result;
            }

            v203 = *(a2 + 1);
            v14 = *(a2 + 2);
          }

          else
          {
            *(this + 17) = v202;
            v203 = v95 + 1;
            *(a2 + 1) = v203;
          }

          *(this + 235) |= 0x2000u;
          if (v203 < v14 && *v203 == 120)
          {
            v49 = v203 + 1;
            *(a2 + 1) = v49;
LABEL_527:
            if (v49 >= v14 || (v204 = *v49, v204 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
              if (!result)
              {
                return result;
              }

              v205 = *(a2 + 1);
              v14 = *(a2 + 2);
            }

            else
            {
              *(this + 26) = v204;
              v205 = (v49 + 1);
              *(a2 + 1) = v205;
            }

            *(this + 235) |= 0x4000u;
            if (v14 - v205 >= 2 && *v205 == 128 && v205[1] == 1)
            {
              v100 = (v205 + 2);
              *(a2 + 1) = v100;
LABEL_536:
              if (v100 >= v14 || (v206 = *v100, v206 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
                if (!result)
                {
                  return result;
                }

                v207 = *(a2 + 1);
                v14 = *(a2 + 2);
              }

              else
              {
                *(this + 27) = v206;
                v207 = (v100 + 1);
                *(a2 + 1) = v207;
              }

              *(this + 235) |= 0x8000u;
              if (v14 - v207 >= 2 && *v207 == 136 && v207[1] == 1)
              {
                v93 = (v207 + 2);
                *(a2 + 1) = v93;
LABEL_545:
                v768[0] = 0;
                if (v93 >= v14 || (v208 = *v93, (v208 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v768);
                  if (!result)
                  {
                    return result;
                  }

                  v208 = v768[0];
                  v209 = *(a2 + 1);
                  v14 = *(a2 + 2);
                }

                else
                {
                  v209 = (v93 + 1);
                  *(a2 + 1) = v209;
                }

                *(this + 28) = v208;
                *(this + 235) |= 0x10000u;
                if (v14 - v209 >= 2 && *v209 == 144 && v209[1] == 1)
                {
                  v31 = (v209 + 2);
                  *(a2 + 1) = v31;
LABEL_554:
                  v768[0] = 0;
                  if (v31 >= v14 || (v210 = *v31, (v210 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v768);
                    if (!result)
                    {
                      return result;
                    }

                    v210 = v768[0];
                    v211 = *(a2 + 1);
                    v14 = *(a2 + 2);
                  }

                  else
                  {
                    v211 = (v31 + 1);
                    *(a2 + 1) = v211;
                  }

                  *(this + 29) = v210;
                  *(this + 235) |= 0x20000u;
                  if (v14 - v211 >= 2 && *v211 == 152 && v211[1] == 1)
                  {
                    v33 = (v211 + 2);
                    *(a2 + 1) = v33;
LABEL_563:
                    v768[0] = 0;
                    if (v33 >= v14 || (v212 = *v33, (v212 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v768);
                      if (!result)
                      {
                        return result;
                      }

                      v212 = v768[0];
                      v213 = *(a2 + 1);
                      v14 = *(a2 + 2);
                    }

                    else
                    {
                      v213 = (v33 + 1);
                      *(a2 + 1) = v213;
                    }

                    *(this + 30) = v212;
                    *(this + 235) |= 0x40000u;
                    if (v14 - v213 >= 2 && *v213 == 160 && v213[1] == 1)
                    {
                      v94 = (v213 + 2);
                      *(a2 + 1) = v94;
LABEL_572:
                      v768[0] = 0;
                      if (v94 >= v14 || (v214 = *v94, (v214 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v768);
                        if (!result)
                        {
                          return result;
                        }

                        v214 = v768[0];
                        v215 = *(a2 + 1);
                        v14 = *(a2 + 2);
                      }

                      else
                      {
                        v215 = (v94 + 1);
                        *(a2 + 1) = v215;
                      }

                      *(this + 31) = v214;
                      *(this + 235) |= 0x80000u;
                      if (v14 - v215 >= 2 && *v215 == 168 && v215[1] == 1)
                      {
                        while (1)
                        {
                          v146 = (v215 + 2);
                          *(a2 + 1) = v146;
LABEL_581:
                          v767 = 0;
                          if (v146 >= v14 || *v146 < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v767 = *v146;
                            *(a2 + 1) = v146 + 1;
                          }

                          v216 = *(this + 34);
                          if (v216 == *(this + 35))
                          {
                            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v216 + 1);
                            v216 = *(this + 34);
                          }

                          v217 = v767;
                          v218 = *(this + 16);
                          *(this + 34) = v216 + 1;
                          *(v218 + 4 * v216) = v217;
                          v219 = *(this + 35) - *(this + 34);
                          if (v219 >= 1)
                          {
                            v220 = v219 + 1;
                            do
                            {
                              v221 = *(a2 + 1);
                              v222 = *(a2 + 2);
                              if (v222 - v221 < 2 || *v221 != 168 || v221[1] != 1)
                              {
                                break;
                              }

                              *(a2 + 1) = v221 + 2;
                              if ((v221 + 2) >= v222 || v221[2] < 0)
                              {
                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                {
                                  return 0;
                                }
                              }

                              else
                              {
                                v767 = v221[2];
                                *(a2 + 1) = v221 + 3;
                              }

                              v223 = *(this + 34);
                              if (v223 >= *(this + 35))
                              {
                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                v223 = *(this + 34);
                              }

                              v224 = v767;
                              v225 = *(this + 16);
                              *(this + 34) = v223 + 1;
                              *(v225 + 4 * v223) = v224;
                              --v220;
                            }

                            while (v220 > 1);
                          }

LABEL_599:
                          v215 = *(a2 + 1);
                          v14 = *(a2 + 2);
                          if (v14 - v215 < 2)
                          {
                            goto LABEL_2;
                          }

                          v226 = *v215;
                          if (v226 == 176)
                          {
                            break;
                          }

                          if (v226 != 168 || v215[1] != 1)
                          {
                            goto LABEL_2;
                          }
                        }

                        if (v215[1] == 1)
                        {
                          v19 = (v215 + 2);
                          *(a2 + 1) = v19;
LABEL_606:
                          if (v19 >= v14 || (v227 = *v19, v227 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 36);
                            if (!result)
                            {
                              return result;
                            }

                            v228 = *(a2 + 1);
                            v14 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 36) = v227;
                            v228 = (v19 + 1);
                            *(a2 + 1) = v228;
                          }

                          *(this + 235) |= 0x200000u;
                          if (v14 - v228 >= 2 && *v228 == 184 && v228[1] == 1)
                          {
                            v22 = (v228 + 2);
                            *(a2 + 1) = v22;
LABEL_615:
                            if (v22 >= v14 || (v229 = *v22, v229 < 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 37);
                              if (!result)
                              {
                                return result;
                              }

                              v230 = *(a2 + 1);
                              v14 = *(a2 + 2);
                            }

                            else
                            {
                              *(this + 37) = v229;
                              v230 = (v22 + 1);
                              *(a2 + 1) = v230;
                            }

                            *(this + 235) |= 0x400000u;
                            if (v14 - v230 >= 2 && *v230 == 192 && v230[1] == 1)
                            {
                              v32 = (v230 + 2);
                              *(a2 + 1) = v32;
LABEL_624:
                              if (v32 >= v14 || (v231 = *v32, v231 < 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 46);
                                if (!result)
                                {
                                  return result;
                                }

                                v232 = *(a2 + 1);
                                v14 = *(a2 + 2);
                              }

                              else
                              {
                                *(this + 46) = v231;
                                v232 = (v32 + 1);
                                *(a2 + 1) = v232;
                              }

                              *(this + 235) |= 0x800000u;
                              if (v14 - v232 >= 2 && *v232 == 200 && v232[1] == 1)
                              {
                                while (1)
                                {
                                  v128 = (v232 + 2);
                                  *(a2 + 1) = v128;
LABEL_633:
                                  v767 = 0;
                                  if (v128 >= v14 || *v128 < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v767 = *v128;
                                    *(a2 + 1) = v128 + 1;
                                  }

                                  v233 = *(this + 40);
                                  if (v233 == *(this + 41))
                                  {
                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 19, v233 + 1);
                                    v233 = *(this + 40);
                                  }

                                  v234 = v767;
                                  v235 = *(this + 19);
                                  *(this + 40) = v233 + 1;
                                  *(v235 + 4 * v233) = v234;
                                  v236 = *(this + 41) - *(this + 40);
                                  if (v236 >= 1)
                                  {
                                    v237 = v236 + 1;
                                    do
                                    {
                                      v238 = *(a2 + 1);
                                      v239 = *(a2 + 2);
                                      if (v239 - v238 < 2 || *v238 != 200 || v238[1] != 1)
                                      {
                                        break;
                                      }

                                      *(a2 + 1) = v238 + 2;
                                      if ((v238 + 2) >= v239 || v238[2] < 0)
                                      {
                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                        {
                                          return 0;
                                        }
                                      }

                                      else
                                      {
                                        v767 = v238[2];
                                        *(a2 + 1) = v238 + 3;
                                      }

                                      v240 = *(this + 40);
                                      if (v240 >= *(this + 41))
                                      {
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                        v240 = *(this + 40);
                                      }

                                      v241 = v767;
                                      v242 = *(this + 19);
                                      *(this + 40) = v240 + 1;
                                      *(v242 + 4 * v240) = v241;
                                      --v237;
                                    }

                                    while (v237 > 1);
                                  }

LABEL_651:
                                  v232 = *(a2 + 1);
                                  v14 = *(a2 + 2);
                                  if (v14 - v232 < 2)
                                  {
                                    goto LABEL_2;
                                  }

                                  v243 = *v232;
                                  if (v243 == 208)
                                  {
                                    break;
                                  }

                                  if (v243 != 200 || v232[1] != 1)
                                  {
                                    goto LABEL_2;
                                  }
                                }

                                if (v232[1] == 1)
                                {
                                  while (1)
                                  {
                                    v119 = (v232 + 2);
                                    *(a2 + 1) = v119;
LABEL_658:
                                    v767 = 0;
                                    if (v119 >= v14 || *v119 < 0)
                                    {
                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                      {
                                        return 0;
                                      }
                                    }

                                    else
                                    {
                                      v767 = *v119;
                                      *(a2 + 1) = v119 + 1;
                                    }

                                    v244 = *(this + 44);
                                    if (v244 == *(this + 45))
                                    {
                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 21, v244 + 1);
                                      v244 = *(this + 44);
                                    }

                                    v245 = v767;
                                    v246 = *(this + 21);
                                    *(this + 44) = v244 + 1;
                                    *(v246 + 4 * v244) = v245;
                                    v247 = *(this + 45) - *(this + 44);
                                    if (v247 >= 1)
                                    {
                                      v248 = v247 + 1;
                                      do
                                      {
                                        v249 = *(a2 + 1);
                                        v250 = *(a2 + 2);
                                        if (v250 - v249 < 2 || *v249 != 208 || v249[1] != 1)
                                        {
                                          break;
                                        }

                                        *(a2 + 1) = v249 + 2;
                                        if ((v249 + 2) >= v250 || v249[2] < 0)
                                        {
                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                          {
                                            return 0;
                                          }
                                        }

                                        else
                                        {
                                          v767 = v249[2];
                                          *(a2 + 1) = v249 + 3;
                                        }

                                        v251 = *(this + 44);
                                        if (v251 >= *(this + 45))
                                        {
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                          v251 = *(this + 44);
                                        }

                                        v252 = v767;
                                        v253 = *(this + 21);
                                        *(this + 44) = v251 + 1;
                                        *(v253 + 4 * v251) = v252;
                                        --v248;
                                      }

                                      while (v248 > 1);
                                    }

LABEL_676:
                                    v232 = *(a2 + 1);
                                    v14 = *(a2 + 2);
                                    if (v14 - v232 < 2)
                                    {
                                      goto LABEL_2;
                                    }

                                    v254 = *v232;
                                    if (v254 == 216)
                                    {
                                      break;
                                    }

                                    if (v254 != 208 || v232[1] != 1)
                                    {
                                      goto LABEL_2;
                                    }
                                  }

                                  if (v232[1] == 1)
                                  {
                                    while (1)
                                    {
                                      v121 = (v232 + 2);
                                      *(a2 + 1) = v121;
LABEL_683:
                                      v767 = 0;
                                      if (v121 >= v14 || *v121 < 0)
                                      {
                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                        {
                                          return 0;
                                        }
                                      }

                                      else
                                      {
                                        v767 = *v121;
                                        *(a2 + 1) = v121 + 1;
                                      }

                                      v255 = *(this + 50);
                                      if (v255 == *(this + 51))
                                      {
                                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v255 + 1);
                                        v255 = *(this + 50);
                                      }

                                      v256 = v767;
                                      v257 = *(this + 24);
                                      *(this + 50) = v255 + 1;
                                      *(v257 + 4 * v255) = v256;
                                      v258 = *(this + 51) - *(this + 50);
                                      if (v258 >= 1)
                                      {
                                        v259 = v258 + 1;
                                        do
                                        {
                                          v260 = *(a2 + 1);
                                          v261 = *(a2 + 2);
                                          if (v261 - v260 < 2 || *v260 != 216 || v260[1] != 1)
                                          {
                                            break;
                                          }

                                          *(a2 + 1) = v260 + 2;
                                          if ((v260 + 2) >= v261 || v260[2] < 0)
                                          {
                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                            {
                                              return 0;
                                            }
                                          }

                                          else
                                          {
                                            v767 = v260[2];
                                            *(a2 + 1) = v260 + 3;
                                          }

                                          v262 = *(this + 50);
                                          if (v262 >= *(this + 51))
                                          {
                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                            v262 = *(this + 50);
                                          }

                                          v263 = v767;
                                          v264 = *(this + 24);
                                          *(this + 50) = v262 + 1;
                                          *(v264 + 4 * v262) = v263;
                                          --v259;
                                        }

                                        while (v259 > 1);
                                      }

LABEL_701:
                                      v232 = *(a2 + 1);
                                      v14 = *(a2 + 2);
                                      if (v14 - v232 < 2)
                                      {
                                        goto LABEL_2;
                                      }

                                      v265 = *v232;
                                      if (v265 == 224)
                                      {
                                        break;
                                      }

                                      if (v265 != 216 || v232[1] != 1)
                                      {
                                        goto LABEL_2;
                                      }
                                    }

                                    if (v232[1] == 1)
                                    {
                                      v108 = (v232 + 2);
                                      *(a2 + 1) = v108;
LABEL_708:
                                      if (v108 >= v14 || (v266 = *v108, v266 < 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 47);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v267 = *(a2 + 1);
                                        v14 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *(this + 47) = v266;
                                        v267 = (v108 + 1);
                                        *(a2 + 1) = v267;
                                      }

                                      *(this + 235) |= 0x8000000u;
                                      if (v14 - v267 >= 2 && *v267 == 232 && v267[1] == 1)
                                      {
                                        v110 = (v267 + 2);
                                        *(a2 + 1) = v110;
LABEL_717:
                                        if (v110 >= v14 || (v268 = *v110, v268 < 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 52);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v269 = *(a2 + 1);
                                          v14 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          *(this + 52) = v268;
                                          v269 = (v110 + 1);
                                          *(a2 + 1) = v269;
                                        }

                                        *(this + 235) |= 0x10000000u;
                                        if (v14 - v269 >= 2 && *v269 == 240 && v269[1] == 1)
                                        {
                                          v30 = (v269 + 2);
                                          *(a2 + 1) = v30;
LABEL_726:
                                          if (v30 >= v14 || (v270 = *v30, v270 < 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 53);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v271 = *(a2 + 1);
                                            v14 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            *(this + 53) = v270;
                                            v271 = (v30 + 1);
                                            *(a2 + 1) = v271;
                                          }

                                          *(this + 235) |= 0x20000000u;
                                          if (v14 - v271 >= 2 && *v271 == 248 && v271[1] == 1)
                                          {
                                            v112 = (v271 + 2);
                                            *(a2 + 1) = v112;
LABEL_735:
                                            v768[0] = 0;
                                            if (v112 >= v14 || (v272 = *v112, (v272 & 0x80000000) != 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v768);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v272 = v768[0];
                                              v273 = *(a2 + 1);
                                              v14 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              v273 = (v112 + 1);
                                              *(a2 + 1) = v273;
                                            }

                                            *(this + 54) = v272;
                                            *(this + 235) |= 0x40000000u;
                                            if (v14 - v273 >= 2 && *v273 == 128 && v273[1] == 2)
                                            {
                                              v115 = (v273 + 2);
                                              *(a2 + 1) = v115;
LABEL_744:
                                              v768[0] = 0;
                                              if (v115 >= v14 || (v274 = *v115, (v274 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v768);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v274 = v768[0];
                                                v275 = *(a2 + 1);
                                                v14 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                v275 = (v115 + 1);
                                                *(a2 + 1) = v275;
                                              }

                                              *(this + 55) = v274;
                                              *(this + 235) |= 0x80000000;
                                              if (v14 - v275 >= 2 && *v275 == 136 && v275[1] == 2)
                                              {
                                                v117 = (v275 + 2);
                                                *(a2 + 1) = v117;
LABEL_753:
                                                v768[0] = 0;
                                                if (v117 >= v14 || (v276 = *v117, (v276 & 0x80000000) != 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v768);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v276 = v768[0];
                                                  v277 = *(a2 + 1);
                                                  v14 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  v277 = (v117 + 1);
                                                  *(a2 + 1) = v277;
                                                }

                                                *(this + 56) = v276;
                                                *(this + 236) |= 1u;
                                                if (v14 - v277 >= 2 && *v277 == 144 && v277[1] == 2)
                                                {
                                                  v70 = (v277 + 2);
                                                  *(a2 + 1) = v70;
LABEL_762:
                                                  v768[0] = 0;
                                                  if (v70 >= v14 || (v278 = *v70, (v278 & 0x80000000) != 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v768);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v278 = v768[0];
                                                    v279 = *(a2 + 1);
                                                    v14 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    v279 = (v70 + 1);
                                                    *(a2 + 1) = v279;
                                                  }

                                                  *(this + 57) = v278;
                                                  *(this + 236) |= 2u;
                                                  if (v14 - v279 >= 2 && *v279 == 152 && v279[1] == 2)
                                                  {
                                                    while (1)
                                                    {
                                                      v150 = (v279 + 2);
                                                      *(a2 + 1) = v150;
LABEL_771:
                                                      v767 = 0;
                                                      if (v150 >= v14 || *v150 < 0)
                                                      {
                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                        {
                                                          return 0;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v767 = *v150;
                                                        *(a2 + 1) = v150 + 1;
                                                      }

                                                      v280 = *(this + 60);
                                                      if (v280 == *(this + 61))
                                                      {
                                                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 29, v280 + 1);
                                                        v280 = *(this + 60);
                                                      }

                                                      v281 = v767;
                                                      v282 = *(this + 29);
                                                      *(this + 60) = v280 + 1;
                                                      *(v282 + 4 * v280) = v281;
                                                      v283 = *(this + 61) - *(this + 60);
                                                      if (v283 >= 1)
                                                      {
                                                        v284 = v283 + 1;
                                                        do
                                                        {
                                                          v285 = *(a2 + 1);
                                                          v286 = *(a2 + 2);
                                                          if (v286 - v285 < 2 || *v285 != 152 || v285[1] != 2)
                                                          {
                                                            break;
                                                          }

                                                          *(a2 + 1) = v285 + 2;
                                                          if ((v285 + 2) >= v286 || v285[2] < 0)
                                                          {
                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                            {
                                                              return 0;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v767 = v285[2];
                                                            *(a2 + 1) = v285 + 3;
                                                          }

                                                          v287 = *(this + 60);
                                                          if (v287 >= *(this + 61))
                                                          {
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                            v287 = *(this + 60);
                                                          }

                                                          v288 = v767;
                                                          v289 = *(this + 29);
                                                          *(this + 60) = v287 + 1;
                                                          *(v289 + 4 * v287) = v288;
                                                          --v284;
                                                        }

                                                        while (v284 > 1);
                                                      }

LABEL_789:
                                                      v279 = *(a2 + 1);
                                                      v14 = *(a2 + 2);
                                                      if (v14 - v279 < 2)
                                                      {
                                                        goto LABEL_2;
                                                      }

                                                      v290 = *v279;
                                                      if (v290 == 160)
                                                      {
                                                        break;
                                                      }

                                                      if (v290 != 152 || v279[1] != 2)
                                                      {
                                                        goto LABEL_2;
                                                      }
                                                    }

                                                    if (v279[1] == 2)
                                                    {
                                                      v26 = (v279 + 2);
                                                      *(a2 + 1) = v26;
LABEL_796:
                                                      if (v26 >= v14 || (v291 = *v26, v291 < 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 62);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v292 = *(a2 + 1);
                                                        v14 = *(a2 + 2);
                                                      }

                                                      else
                                                      {
                                                        *(this + 62) = v291;
                                                        v292 = (v26 + 1);
                                                        *(a2 + 1) = v292;
                                                      }

                                                      *(this + 236) |= 8u;
                                                      if (v14 - v292 >= 2 && *v292 == 168 && v292[1] == 2)
                                                      {
                                                        v114 = (v292 + 2);
                                                        *(a2 + 1) = v114;
LABEL_805:
                                                        if (v114 >= v14 || (v293 = *v114, v293 < 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 63);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v294 = *(a2 + 1);
                                                          v14 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          *(this + 63) = v293;
                                                          v294 = (v114 + 1);
                                                          *(a2 + 1) = v294;
                                                        }

                                                        *(this + 236) |= 0x10u;
                                                        if (v14 - v294 >= 2 && *v294 == 176 && v294[1] == 2)
                                                        {
                                                          v73 = (v294 + 2);
                                                          *(a2 + 1) = v73;
LABEL_814:
                                                          if (v73 >= v14 || (v295 = *v73, (v295 & 0x80000000) != 0))
                                                          {
                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v752);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v296 = *(a2 + 1);
                                                            v14 = *(a2 + 2);
                                                          }

                                                          else
                                                          {
                                                            *v752 = v295;
                                                            v296 = (v73 + 1);
                                                            *(a2 + 1) = v296;
                                                          }

                                                          *(this + 236) |= 0x20u;
                                                          if (v14 - v296 >= 2 && *v296 == 184 && v296[1] == 2)
                                                          {
                                                            while (1)
                                                            {
                                                              v123 = (v296 + 2);
                                                              *(a2 + 1) = v123;
LABEL_823:
                                                              v767 = 0;
                                                              if (v123 >= v14 || *v123 < 0)
                                                              {
                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                {
                                                                  return 0;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v767 = *v123;
                                                                *(a2 + 1) = v123 + 1;
                                                              }

                                                              v297 = *(this + 66);
                                                              if (v297 == *(this + 67))
                                                              {
                                                                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, v297 + 1);
                                                                v297 = *(this + 66);
                                                              }

                                                              v298 = v767;
                                                              v299 = *(this + 32);
                                                              *(this + 66) = v297 + 1;
                                                              *(v299 + 4 * v297) = v298;
                                                              v300 = *(this + 67) - *(this + 66);
                                                              if (v300 >= 1)
                                                              {
                                                                v301 = v300 + 1;
                                                                do
                                                                {
                                                                  v302 = *(a2 + 1);
                                                                  v303 = *(a2 + 2);
                                                                  if (v303 - v302 < 2 || *v302 != 184 || v302[1] != 2)
                                                                  {
                                                                    break;
                                                                  }

                                                                  *(a2 + 1) = v302 + 2;
                                                                  if ((v302 + 2) >= v303 || v302[2] < 0)
                                                                  {
                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                    {
                                                                      return 0;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v767 = v302[2];
                                                                    *(a2 + 1) = v302 + 3;
                                                                  }

                                                                  v304 = *(this + 66);
                                                                  if (v304 >= *(this + 67))
                                                                  {
                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                    v304 = *(this + 66);
                                                                  }

                                                                  v305 = v767;
                                                                  v306 = *(this + 32);
                                                                  *(this + 66) = v304 + 1;
                                                                  *(v306 + 4 * v304) = v305;
                                                                  --v301;
                                                                }

                                                                while (v301 > 1);
                                                              }

LABEL_841:
                                                              v296 = *(a2 + 1);
                                                              v14 = *(a2 + 2);
                                                              if (v14 - v296 < 2)
                                                              {
                                                                goto LABEL_2;
                                                              }

                                                              v307 = *v296;
                                                              if (v307 == 192)
                                                              {
                                                                break;
                                                              }

                                                              if (v307 != 184 || v296[1] != 2)
                                                              {
                                                                goto LABEL_2;
                                                              }
                                                            }

                                                            if (v296[1] == 2)
                                                            {
                                                              while (1)
                                                              {
                                                                v136 = (v296 + 2);
                                                                *(a2 + 1) = v136;
LABEL_848:
                                                                v767 = 0;
                                                                if (v136 >= v14 || *v136 < 0)
                                                                {
                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                  {
                                                                    return 0;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v767 = *v136;
                                                                  *(a2 + 1) = v136 + 1;
                                                                }

                                                                v308 = *(this + 70);
                                                                if (v308 == *(this + 71))
                                                                {
                                                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 34, v308 + 1);
                                                                  v308 = *(this + 70);
                                                                }

                                                                v309 = v767;
                                                                v310 = *(this + 34);
                                                                *(this + 70) = v308 + 1;
                                                                *(v310 + 4 * v308) = v309;
                                                                v311 = *(this + 71) - *(this + 70);
                                                                if (v311 >= 1)
                                                                {
                                                                  v312 = v311 + 1;
                                                                  do
                                                                  {
                                                                    v313 = *(a2 + 1);
                                                                    v314 = *(a2 + 2);
                                                                    if (v314 - v313 < 2 || *v313 != 192 || v313[1] != 2)
                                                                    {
                                                                      break;
                                                                    }

                                                                    *(a2 + 1) = v313 + 2;
                                                                    if ((v313 + 2) >= v314 || v313[2] < 0)
                                                                    {
                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                      {
                                                                        return 0;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v767 = v313[2];
                                                                      *(a2 + 1) = v313 + 3;
                                                                    }

                                                                    v315 = *(this + 70);
                                                                    if (v315 >= *(this + 71))
                                                                    {
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                      v315 = *(this + 70);
                                                                    }

                                                                    v316 = v767;
                                                                    v317 = *(this + 34);
                                                                    *(this + 70) = v315 + 1;
                                                                    *(v317 + 4 * v315) = v316;
                                                                    --v312;
                                                                  }

                                                                  while (v312 > 1);
                                                                }

LABEL_866:
                                                                v296 = *(a2 + 1);
                                                                v14 = *(a2 + 2);
                                                                if (v14 - v296 < 2)
                                                                {
                                                                  goto LABEL_2;
                                                                }

                                                                v318 = *v296;
                                                                if (v318 == 200)
                                                                {
                                                                  break;
                                                                }

                                                                if (v318 != 192 || v296[1] != 2)
                                                                {
                                                                  goto LABEL_2;
                                                                }
                                                              }

                                                              if (v296[1] == 2)
                                                              {
                                                                while (1)
                                                                {
                                                                  v118 = (v296 + 2);
                                                                  *(a2 + 1) = v118;
LABEL_873:
                                                                  v767 = 0;
                                                                  if (v118 >= v14 || *v118 < 0)
                                                                  {
                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                    {
                                                                      return 0;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v767 = *v118;
                                                                    *(a2 + 1) = v118 + 1;
                                                                  }

                                                                  v319 = *(this + 76);
                                                                  if (v319 == *(this + 77))
                                                                  {
                                                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 37, v319 + 1);
                                                                    v319 = *(this + 76);
                                                                  }

                                                                  v320 = v767;
                                                                  v321 = *(this + 37);
                                                                  *(this + 76) = v319 + 1;
                                                                  *(v321 + 4 * v319) = v320;
                                                                  v322 = *(this + 77) - *(this + 76);
                                                                  if (v322 >= 1)
                                                                  {
                                                                    v323 = v322 + 1;
                                                                    do
                                                                    {
                                                                      v324 = *(a2 + 1);
                                                                      v325 = *(a2 + 2);
                                                                      if (v325 - v324 < 2 || *v324 != 200 || v324[1] != 2)
                                                                      {
                                                                        break;
                                                                      }

                                                                      *(a2 + 1) = v324 + 2;
                                                                      if ((v324 + 2) >= v325 || v324[2] < 0)
                                                                      {
                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                        {
                                                                          return 0;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v767 = v324[2];
                                                                        *(a2 + 1) = v324 + 3;
                                                                      }

                                                                      v326 = *(this + 76);
                                                                      if (v326 >= *(this + 77))
                                                                      {
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                        v326 = *(this + 76);
                                                                      }

                                                                      v327 = v767;
                                                                      v328 = *(this + 37);
                                                                      *(this + 76) = v326 + 1;
                                                                      *(v328 + 4 * v326) = v327;
                                                                      --v323;
                                                                    }

                                                                    while (v323 > 1);
                                                                  }

LABEL_891:
                                                                  v296 = *(a2 + 1);
                                                                  v14 = *(a2 + 2);
                                                                  if (v14 - v296 < 2)
                                                                  {
                                                                    goto LABEL_2;
                                                                  }

                                                                  v329 = *v296;
                                                                  if (v329 == 208)
                                                                  {
                                                                    break;
                                                                  }

                                                                  if (v329 != 200 || v296[1] != 2)
                                                                  {
                                                                    goto LABEL_2;
                                                                  }
                                                                }

                                                                if (v296[1] == 2)
                                                                {
                                                                  while (1)
                                                                  {
                                                                    v149 = (v296 + 2);
                                                                    *(a2 + 1) = v149;
LABEL_898:
                                                                    v767 = 0;
                                                                    if (v149 >= v14 || *v149 < 0)
                                                                    {
                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                      {
                                                                        return 0;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v767 = *v149;
                                                                      *(a2 + 1) = v149 + 1;
                                                                    }

                                                                    v330 = *(this + 80);
                                                                    if (v330 == *(this + 81))
                                                                    {
                                                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 39, v330 + 1);
                                                                      v330 = *(this + 80);
                                                                    }

                                                                    v331 = v767;
                                                                    v332 = *(this + 39);
                                                                    *(this + 80) = v330 + 1;
                                                                    *(v332 + 4 * v330) = v331;
                                                                    v333 = *(this + 81) - *(this + 80);
                                                                    if (v333 >= 1)
                                                                    {
                                                                      v334 = v333 + 1;
                                                                      do
                                                                      {
                                                                        v335 = *(a2 + 1);
                                                                        v336 = *(a2 + 2);
                                                                        if (v336 - v335 < 2 || *v335 != 208 || v335[1] != 2)
                                                                        {
                                                                          break;
                                                                        }

                                                                        *(a2 + 1) = v335 + 2;
                                                                        if ((v335 + 2) >= v336 || v335[2] < 0)
                                                                        {
                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                          {
                                                                            return 0;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v767 = v335[2];
                                                                          *(a2 + 1) = v335 + 3;
                                                                        }

                                                                        v337 = *(this + 80);
                                                                        if (v337 >= *(this + 81))
                                                                        {
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                          v337 = *(this + 80);
                                                                        }

                                                                        v338 = v767;
                                                                        v339 = *(this + 39);
                                                                        *(this + 80) = v337 + 1;
                                                                        *(v339 + 4 * v337) = v338;
                                                                        --v334;
                                                                      }

                                                                      while (v334 > 1);
                                                                    }

LABEL_916:
                                                                    v296 = *(a2 + 1);
                                                                    v14 = *(a2 + 2);
                                                                    if (v14 - v296 < 2)
                                                                    {
                                                                      goto LABEL_2;
                                                                    }

                                                                    v340 = *v296;
                                                                    if (v340 == 216)
                                                                    {
                                                                      break;
                                                                    }

                                                                    if (v340 != 208 || v296[1] != 2)
                                                                    {
                                                                      goto LABEL_2;
                                                                    }
                                                                  }

                                                                  if (v296[1] == 2)
                                                                  {
                                                                    v116 = (v296 + 2);
                                                                    *(a2 + 1) = v116;
LABEL_923:
                                                                    if (v116 >= v14 || (v341 = *v116, (v341 & 0x80000000) != 0))
                                                                    {
                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v764);
                                                                      if (!result)
                                                                      {
                                                                        return result;
                                                                      }

                                                                      v342 = *(a2 + 1);
                                                                      v14 = *(a2 + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      *v764 = v341;
                                                                      v342 = (v116 + 1);
                                                                      *(a2 + 1) = v342;
                                                                    }

                                                                    *(this + 236) |= 0x400u;
                                                                    if (v14 - v342 >= 2 && *v342 == 224 && v342[1] == 2)
                                                                    {
                                                                      v29 = (v342 + 2);
                                                                      *(a2 + 1) = v29;
LABEL_932:
                                                                      if (v29 >= v14 || (v343 = *v29, (v343 & 0x80000000) != 0))
                                                                      {
                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v758);
                                                                        if (!result)
                                                                        {
                                                                          return result;
                                                                        }

                                                                        v344 = *(a2 + 1);
                                                                        v14 = *(a2 + 2);
                                                                      }

                                                                      else
                                                                      {
                                                                        *v758 = v343;
                                                                        v344 = (v29 + 1);
                                                                        *(a2 + 1) = v344;
                                                                      }

                                                                      *(this + 236) |= 0x800u;
                                                                      if (v14 - v344 >= 2 && *v344 == 232 && v344[1] == 2)
                                                                      {
                                                                        v106 = (v344 + 2);
                                                                        *(a2 + 1) = v106;
LABEL_941:
                                                                        if (v106 >= v14 || (v345 = *v106, (v345 & 0x80000000) != 0))
                                                                        {
                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v754);
                                                                          if (!result)
                                                                          {
                                                                            return result;
                                                                          }

                                                                          v346 = *(a2 + 1);
                                                                          v14 = *(a2 + 2);
                                                                        }

                                                                        else
                                                                        {
                                                                          *v754 = v345;
                                                                          v346 = (v106 + 1);
                                                                          *(a2 + 1) = v346;
                                                                        }

                                                                        *(this + 236) |= 0x1000u;
                                                                        if (v14 - v346 >= 2 && *v346 == 240 && v346[1] == 2)
                                                                        {
                                                                          v92 = (v346 + 2);
                                                                          *(a2 + 1) = v92;
LABEL_950:
                                                                          if (v92 >= v14 || (v347 = *v92, (v347 & 0x80000000) != 0))
                                                                          {
                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v751);
                                                                            if (!result)
                                                                            {
                                                                              return result;
                                                                            }

                                                                            v348 = *(a2 + 1);
                                                                            v14 = *(a2 + 2);
                                                                          }

                                                                          else
                                                                          {
                                                                            *v751 = v347;
                                                                            v348 = (v92 + 1);
                                                                            *(a2 + 1) = v348;
                                                                          }

                                                                          *(this + 236) |= 0x2000u;
                                                                          if (v14 - v348 >= 2 && *v348 == 248 && v348[1] == 2)
                                                                          {
                                                                            v90 = (v348 + 2);
                                                                            *(a2 + 1) = v90;
LABEL_959:
                                                                            if (v90 >= v14 || (v349 = *v90, (v349 & 0x80000000) != 0))
                                                                            {
                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v745);
                                                                              if (!result)
                                                                              {
                                                                                return result;
                                                                              }

                                                                              v350 = *(a2 + 1);
                                                                              v14 = *(a2 + 2);
                                                                            }

                                                                            else
                                                                            {
                                                                              *v745 = v349;
                                                                              v350 = (v90 + 1);
                                                                              *(a2 + 1) = v350;
                                                                            }

                                                                            *(this + 236) |= 0x4000u;
                                                                            if (v14 - v350 >= 2 && *v350 == 128 && v350[1] == 3)
                                                                            {
                                                                              v21 = (v350 + 2);
                                                                              *(a2 + 1) = v21;
LABEL_968:
                                                                              if (v21 >= v14 || (v351 = *v21, (v351 & 0x80000000) != 0))
                                                                              {
                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v743);
                                                                                if (!result)
                                                                                {
                                                                                  return result;
                                                                                }

                                                                                v352 = *(a2 + 1);
                                                                                v14 = *(a2 + 2);
                                                                              }

                                                                              else
                                                                              {
                                                                                *v743 = v351;
                                                                                v352 = (v21 + 1);
                                                                                *(a2 + 1) = v352;
                                                                              }

                                                                              *(this + 236) |= 0x8000u;
                                                                              if (v14 - v352 >= 2 && *v352 == 136 && v352[1] == 3)
                                                                              {
                                                                                v23 = (v352 + 2);
                                                                                *(a2 + 1) = v23;
LABEL_977:
                                                                                if (v23 >= v14 || (v353 = *v23, (v353 & 0x80000000) != 0))
                                                                                {
                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v739);
                                                                                  if (!result)
                                                                                  {
                                                                                    return result;
                                                                                  }

                                                                                  v354 = *(a2 + 1);
                                                                                  v14 = *(a2 + 2);
                                                                                }

                                                                                else
                                                                                {
                                                                                  *v739 = v353;
                                                                                  v354 = (v23 + 1);
                                                                                  *(a2 + 1) = v354;
                                                                                }

                                                                                *(this + 236) |= 0x10000u;
                                                                                if (v14 - v354 >= 2 && *v354 == 144 && v354[1] == 3)
                                                                                {
                                                                                  v51 = (v354 + 2);
                                                                                  *(a2 + 1) = v51;
LABEL_986:
                                                                                  if (v51 >= v14 || (v355 = *v51, (v355 & 0x80000000) != 0))
                                                                                  {
                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v737);
                                                                                    if (!result)
                                                                                    {
                                                                                      return result;
                                                                                    }

                                                                                    v356 = *(a2 + 1);
                                                                                    v14 = *(a2 + 2);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    *v737 = v355;
                                                                                    v356 = (v51 + 1);
                                                                                    *(a2 + 1) = v356;
                                                                                  }

                                                                                  *(this + 236) |= 0x20000u;
                                                                                  if (v14 - v356 >= 2 && *v356 == 152 && v356[1] == 3)
                                                                                  {
                                                                                    v53 = (v356 + 2);
                                                                                    *(a2 + 1) = v53;
LABEL_995:
                                                                                    v768[0] = 0;
                                                                                    if (v53 >= v14 || (v357 = *v53, (v357 & 0x80000000) != 0))
                                                                                    {
                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v768);
                                                                                      if (!result)
                                                                                      {
                                                                                        return result;
                                                                                      }

                                                                                      v357 = v768[0];
                                                                                      v358 = *(a2 + 1);
                                                                                      v14 = *(a2 + 2);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v358 = (v53 + 1);
                                                                                      *(a2 + 1) = v358;
                                                                                    }

                                                                                    *(this + 89) = v357;
                                                                                    *(this + 236) |= 0x40000u;
                                                                                    if (v14 - v358 >= 2 && *v358 == 160 && v358[1] == 3)
                                                                                    {
                                                                                      v35 = (v358 + 2);
                                                                                      *(a2 + 1) = v35;
LABEL_1004:
                                                                                      v768[0] = 0;
                                                                                      if (v35 >= v14 || (v359 = *v35, (v359 & 0x80000000) != 0))
                                                                                      {
                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v768);
                                                                                        if (!result)
                                                                                        {
                                                                                          return result;
                                                                                        }

                                                                                        v359 = v768[0];
                                                                                        v360 = *(a2 + 1);
                                                                                        v14 = *(a2 + 2);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v360 = (v35 + 1);
                                                                                        *(a2 + 1) = v360;
                                                                                      }

                                                                                      *(this + 90) = v359;
                                                                                      *(this + 236) |= 0x80000u;
                                                                                      if (v14 - v360 >= 2 && *v360 == 168 && v360[1] == 3)
                                                                                      {
                                                                                        v25 = (v360 + 2);
                                                                                        *(a2 + 1) = v25;
LABEL_1013:
                                                                                        v768[0] = 0;
                                                                                        if (v25 >= v14 || (v361 = *v25, (v361 & 0x80000000) != 0))
                                                                                        {
                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v768);
                                                                                          if (!result)
                                                                                          {
                                                                                            return result;
                                                                                          }

                                                                                          v361 = v768[0];
                                                                                          v362 = *(a2 + 1);
                                                                                          v14 = *(a2 + 2);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v362 = (v25 + 1);
                                                                                          *(a2 + 1) = v362;
                                                                                        }

                                                                                        *(this + 91) = v361;
                                                                                        *(this + 236) |= 0x100000u;
                                                                                        if (v14 - v362 >= 2 && *v362 == 176 && v362[1] == 3)
                                                                                        {
                                                                                          v111 = (v362 + 2);
                                                                                          *(a2 + 1) = v111;
LABEL_1022:
                                                                                          v768[0] = 0;
                                                                                          if (v111 >= v14 || (v363 = *v111, (v363 & 0x80000000) != 0))
                                                                                          {
                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v768);
                                                                                            if (!result)
                                                                                            {
                                                                                              return result;
                                                                                            }

                                                                                            v363 = v768[0];
                                                                                            v364 = *(a2 + 1);
                                                                                            v14 = *(a2 + 2);
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v364 = (v111 + 1);
                                                                                            *(a2 + 1) = v364;
                                                                                          }

                                                                                          *(this + 92) = v363;
                                                                                          *(this + 236) |= 0x200000u;
                                                                                          if (v14 - v364 >= 2 && *v364 == 184 && v364[1] == 3)
                                                                                          {
                                                                                            v27 = (v364 + 2);
                                                                                            *(a2 + 1) = v27;
LABEL_1031:
                                                                                            if (v27 >= v14 || (v365 = *v27, (v365 & 0x80000000) != 0))
                                                                                            {
                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v735);
                                                                                              if (!result)
                                                                                              {
                                                                                                return result;
                                                                                              }

                                                                                              v366 = *(a2 + 1);
                                                                                              v14 = *(a2 + 2);
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              *v735 = v365;
                                                                                              v366 = (v27 + 1);
                                                                                              *(a2 + 1) = v366;
                                                                                            }

                                                                                            *(this + 236) |= 0x400000u;
                                                                                            if (v14 - v366 >= 2 && *v366 == 192 && v366[1] == 3)
                                                                                            {
                                                                                              v74 = (v366 + 2);
                                                                                              *(a2 + 1) = v74;
LABEL_1040:
                                                                                              v768[0] = 0;
                                                                                              if (v74 >= v14 || (v367 = *v74, (v367 & 0x80000000) != 0))
                                                                                              {
                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v768);
                                                                                                if (!result)
                                                                                                {
                                                                                                  return result;
                                                                                                }

                                                                                                v367 = v768[0];
                                                                                                v368 = *(a2 + 1);
                                                                                                v14 = *(a2 + 2);
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v368 = (v74 + 1);
                                                                                                *(a2 + 1) = v368;
                                                                                              }

                                                                                              *(this + 94) = v367;
                                                                                              *(this + 236) |= 0x800000u;
                                                                                              if (v14 - v368 >= 2 && *v368 == 200 && v368[1] == 3)
                                                                                              {
                                                                                                v37 = (v368 + 2);
                                                                                                *(a2 + 1) = v37;
LABEL_1049:
                                                                                                v768[0] = 0;
                                                                                                if (v37 >= v14 || (v369 = *v37, (v369 & 0x80000000) != 0))
                                                                                                {
                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v768);
                                                                                                  if (!result)
                                                                                                  {
                                                                                                    return result;
                                                                                                  }

                                                                                                  v369 = v768[0];
                                                                                                  v370 = *(a2 + 1);
                                                                                                  v14 = *(a2 + 2);
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v370 = (v37 + 1);
                                                                                                  *(a2 + 1) = v370;
                                                                                                }

                                                                                                *(this + 95) = v369;
                                                                                                *(this + 236) |= 0x1000000u;
                                                                                                if (v14 - v370 >= 2 && *v370 == 208 && v370[1] == 3)
                                                                                                {
                                                                                                  v107 = (v370 + 2);
                                                                                                  *(a2 + 1) = v107;
LABEL_1058:
                                                                                                  if (v107 >= v14 || (v371 = *v107, (v371 & 0x80000000) != 0))
                                                                                                  {
                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v734);
                                                                                                    if (!result)
                                                                                                    {
                                                                                                      return result;
                                                                                                    }

                                                                                                    v372 = *(a2 + 1);
                                                                                                    v14 = *(a2 + 2);
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    *v734 = v371;
                                                                                                    v372 = (v107 + 1);
                                                                                                    *(a2 + 1) = v372;
                                                                                                  }

                                                                                                  *(this + 236) |= 0x2000000u;
                                                                                                  if (v14 - v372 >= 2 && *v372 == 216 && v372[1] == 3)
                                                                                                  {
                                                                                                    v105 = (v372 + 2);
                                                                                                    *(a2 + 1) = v105;
LABEL_1067:
                                                                                                    if (v105 >= v14 || (v373 = *v105, (v373 & 0x80000000) != 0))
                                                                                                    {
                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v733);
                                                                                                      if (!result)
                                                                                                      {
                                                                                                        return result;
                                                                                                      }

                                                                                                      v374 = *(a2 + 1);
                                                                                                      v14 = *(a2 + 2);
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      *v733 = v373;
                                                                                                      v374 = (v105 + 1);
                                                                                                      *(a2 + 1) = v374;
                                                                                                    }

                                                                                                    *(this + 236) |= 0x4000000u;
                                                                                                    if (v14 - v374 >= 2 && *v374 == 224 && v374[1] == 3)
                                                                                                    {
                                                                                                      v102 = (v374 + 2);
                                                                                                      *(a2 + 1) = v102;
LABEL_1076:
                                                                                                      if (v102 >= v14 || (v375 = *v102, (v375 & 0x80000000) != 0))
                                                                                                      {
                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v732);
                                                                                                        if (!result)
                                                                                                        {
                                                                                                          return result;
                                                                                                        }

                                                                                                        v376 = *(a2 + 1);
                                                                                                        v14 = *(a2 + 2);
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        *v732 = v375;
                                                                                                        v376 = (v102 + 1);
                                                                                                        *(a2 + 1) = v376;
                                                                                                      }

                                                                                                      *(this + 236) |= 0x8000000u;
                                                                                                      if (v14 - v376 >= 2 && *v376 == 232 && v376[1] == 3)
                                                                                                      {
                                                                                                        while (1)
                                                                                                        {
                                                                                                          v125 = (v376 + 2);
                                                                                                          *(a2 + 1) = v125;
LABEL_1085:
                                                                                                          v767 = 0;
                                                                                                          if (v125 >= v14 || *v125 < 0)
                                                                                                          {
                                                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v767 = *v125;
                                                                                                            *(a2 + 1) = v125 + 1;
                                                                                                          }

                                                                                                          v377 = *(this + 100);
                                                                                                          if (v377 == *(this + 101))
                                                                                                          {
                                                                                                            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 49, v377 + 1);
                                                                                                            v377 = *(this + 100);
                                                                                                          }

                                                                                                          v378 = v767;
                                                                                                          v379 = *(this + 49);
                                                                                                          *(this + 100) = v377 + 1;
                                                                                                          *(v379 + 4 * v377) = v378;
                                                                                                          v380 = *(this + 101) - *(this + 100);
                                                                                                          if (v380 >= 1)
                                                                                                          {
                                                                                                            v381 = v380 + 1;
                                                                                                            do
                                                                                                            {
                                                                                                              v382 = *(a2 + 1);
                                                                                                              v383 = *(a2 + 2);
                                                                                                              if (v383 - v382 < 2 || *v382 != 232 || v382[1] != 3)
                                                                                                              {
                                                                                                                break;
                                                                                                              }

                                                                                                              *(a2 + 1) = v382 + 2;
                                                                                                              if ((v382 + 2) >= v383 || v382[2] < 0)
                                                                                                              {
                                                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v767 = v382[2];
                                                                                                                *(a2 + 1) = v382 + 3;
                                                                                                              }

                                                                                                              v384 = *(this + 100);
                                                                                                              if (v384 >= *(this + 101))
                                                                                                              {
                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                v384 = *(this + 100);
                                                                                                              }

                                                                                                              v385 = v767;
                                                                                                              v386 = *(this + 49);
                                                                                                              *(this + 100) = v384 + 1;
                                                                                                              *(v386 + 4 * v384) = v385;
                                                                                                              --v381;
                                                                                                            }

                                                                                                            while (v381 > 1);
                                                                                                          }

LABEL_1103:
                                                                                                          v376 = *(a2 + 1);
                                                                                                          v14 = *(a2 + 2);
                                                                                                          if (v14 - v376 < 2)
                                                                                                          {
                                                                                                            goto LABEL_2;
                                                                                                          }

                                                                                                          v387 = *v376;
                                                                                                          if (v387 == 240)
                                                                                                          {
                                                                                                            break;
                                                                                                          }

                                                                                                          if (v387 != 232 || v376[1] != 3)
                                                                                                          {
                                                                                                            goto LABEL_2;
                                                                                                          }
                                                                                                        }

                                                                                                        if (v376[1] == 3)
                                                                                                        {
                                                                                                          while (1)
                                                                                                          {
                                                                                                            v122 = (v376 + 2);
                                                                                                            *(a2 + 1) = v122;
LABEL_1110:
                                                                                                            v767 = 0;
                                                                                                            if (v122 >= v14 || *v122 < 0)
                                                                                                            {
                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                              {
                                                                                                                return 0;
                                                                                                              }
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v767 = *v122;
                                                                                                              *(a2 + 1) = v122 + 1;
                                                                                                            }

                                                                                                            v388 = *(this + 106);
                                                                                                            if (v388 == *(this + 107))
                                                                                                            {
                                                                                                              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 52, v388 + 1);
                                                                                                              v388 = *(this + 106);
                                                                                                            }

                                                                                                            v389 = v767;
                                                                                                            v390 = *(this + 52);
                                                                                                            *(this + 106) = v388 + 1;
                                                                                                            *(v390 + 4 * v388) = v389;
                                                                                                            v391 = *(this + 107) - *(this + 106);
                                                                                                            if (v391 >= 1)
                                                                                                            {
                                                                                                              v392 = v391 + 1;
                                                                                                              do
                                                                                                              {
                                                                                                                v393 = *(a2 + 1);
                                                                                                                v394 = *(a2 + 2);
                                                                                                                if (v394 - v393 < 2 || *v393 != 240 || v393[1] != 3)
                                                                                                                {
                                                                                                                  break;
                                                                                                                }

                                                                                                                *(a2 + 1) = v393 + 2;
                                                                                                                if ((v393 + 2) >= v394 || v393[2] < 0)
                                                                                                                {
                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                  {
                                                                                                                    return 0;
                                                                                                                  }
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v767 = v393[2];
                                                                                                                  *(a2 + 1) = v393 + 3;
                                                                                                                }

                                                                                                                v395 = *(this + 106);
                                                                                                                if (v395 >= *(this + 107))
                                                                                                                {
                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                  v395 = *(this + 106);
                                                                                                                }

                                                                                                                v396 = v767;
                                                                                                                v397 = *(this + 52);
                                                                                                                *(this + 106) = v395 + 1;
                                                                                                                *(v397 + 4 * v395) = v396;
                                                                                                                --v392;
                                                                                                              }

                                                                                                              while (v392 > 1);
                                                                                                            }

LABEL_1128:
                                                                                                            v376 = *(a2 + 1);
                                                                                                            v14 = *(a2 + 2);
                                                                                                            if (v14 - v376 < 2)
                                                                                                            {
                                                                                                              goto LABEL_2;
                                                                                                            }

                                                                                                            v398 = *v376;
                                                                                                            if (v398 == 248)
                                                                                                            {
                                                                                                              break;
                                                                                                            }

                                                                                                            if (v398 != 240 || v376[1] != 3)
                                                                                                            {
                                                                                                              goto LABEL_2;
                                                                                                            }
                                                                                                          }

                                                                                                          if (v376[1] == 3)
                                                                                                          {
                                                                                                            while (1)
                                                                                                            {
                                                                                                              v130 = (v376 + 2);
                                                                                                              *(a2 + 1) = v130;
LABEL_1135:
                                                                                                              v767 = 0;
                                                                                                              if (v130 >= v14 || *v130 < 0)
                                                                                                              {
                                                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v767 = *v130;
                                                                                                                *(a2 + 1) = v130 + 1;
                                                                                                              }

                                                                                                              v399 = *(this + 110);
                                                                                                              if (v399 == *(this + 111))
                                                                                                              {
                                                                                                                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 54, v399 + 1);
                                                                                                                v399 = *(this + 110);
                                                                                                              }

                                                                                                              v400 = v767;
                                                                                                              v401 = *(this + 54);
                                                                                                              *(this + 110) = v399 + 1;
                                                                                                              *(v401 + 4 * v399) = v400;
                                                                                                              v402 = *(this + 111) - *(this + 110);
                                                                                                              if (v402 >= 1)
                                                                                                              {
                                                                                                                v403 = v402 + 1;
                                                                                                                do
                                                                                                                {
                                                                                                                  v404 = *(a2 + 1);
                                                                                                                  v405 = *(a2 + 2);
                                                                                                                  if (v405 - v404 < 2 || *v404 != 248 || v404[1] != 3)
                                                                                                                  {
                                                                                                                    break;
                                                                                                                  }

                                                                                                                  *(a2 + 1) = v404 + 2;
                                                                                                                  if ((v404 + 2) >= v405 || v404[2] < 0)
                                                                                                                  {
                                                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v767 = v404[2];
                                                                                                                    *(a2 + 1) = v404 + 3;
                                                                                                                  }

                                                                                                                  v406 = *(this + 110);
                                                                                                                  if (v406 >= *(this + 111))
                                                                                                                  {
                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                    v406 = *(this + 110);
                                                                                                                  }

                                                                                                                  v407 = v767;
                                                                                                                  v408 = *(this + 54);
                                                                                                                  *(this + 110) = v406 + 1;
                                                                                                                  *(v408 + 4 * v406) = v407;
                                                                                                                  --v403;
                                                                                                                }

                                                                                                                while (v403 > 1);
                                                                                                              }

LABEL_1153:
                                                                                                              v376 = *(a2 + 1);
                                                                                                              v14 = *(a2 + 2);
                                                                                                              if (v14 - v376 < 2)
                                                                                                              {
                                                                                                                goto LABEL_2;
                                                                                                              }

                                                                                                              v409 = *v376;
                                                                                                              if (v409 == 128)
                                                                                                              {
                                                                                                                break;
                                                                                                              }

                                                                                                              if (v409 != 248 || v376[1] != 3)
                                                                                                              {
                                                                                                                goto LABEL_2;
                                                                                                              }
                                                                                                            }

                                                                                                            if (v376[1] == 4)
                                                                                                            {
                                                                                                              v113 = (v376 + 2);
                                                                                                              *(a2 + 1) = v113;
LABEL_1160:
                                                                                                              if (v113 >= v14 || (v410 = *v113, (v410 & 0x80000000) != 0))
                                                                                                              {
                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v763);
                                                                                                                if (!result)
                                                                                                                {
                                                                                                                  return result;
                                                                                                                }

                                                                                                                v411 = *(a2 + 1);
                                                                                                                v14 = *(a2 + 2);
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                *v763 = v410;
                                                                                                                v411 = (v113 + 1);
                                                                                                                *(a2 + 1) = v411;
                                                                                                              }

                                                                                                              *(this + 236) |= 0x80000000;
                                                                                                              if (v14 - v411 >= 2 && *v411 == 136 && v411[1] == 4)
                                                                                                              {
                                                                                                                v44 = (v411 + 2);
                                                                                                                *(a2 + 1) = v44;
LABEL_1169:
                                                                                                                if (v44 >= v14 || (v412 = *v44, (v412 & 0x80000000) != 0))
                                                                                                                {
                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v757);
                                                                                                                  if (!result)
                                                                                                                  {
                                                                                                                    return result;
                                                                                                                  }

                                                                                                                  v413 = *(a2 + 1);
                                                                                                                  v14 = *(a2 + 2);
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  *v757 = v412;
                                                                                                                  v413 = (v44 + 1);
                                                                                                                  *(a2 + 1) = v413;
                                                                                                                }

                                                                                                                *(this + 237) |= 1u;
                                                                                                                if (v14 - v413 >= 2 && *v413 == 144 && v413[1] == 4)
                                                                                                                {
                                                                                                                  v34 = (v413 + 2);
                                                                                                                  *(a2 + 1) = v34;
LABEL_1178:
                                                                                                                  if (v34 >= v14 || (v414 = *v34, (v414 & 0x80000000) != 0))
                                                                                                                  {
                                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v753);
                                                                                                                    if (!result)
                                                                                                                    {
                                                                                                                      return result;
                                                                                                                    }

                                                                                                                    v415 = *(a2 + 1);
                                                                                                                    v14 = *(a2 + 2);
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    *v753 = v414;
                                                                                                                    v415 = (v34 + 1);
                                                                                                                    *(a2 + 1) = v415;
                                                                                                                  }

                                                                                                                  *(this + 237) |= 2u;
                                                                                                                  if (v14 - v415 >= 2 && *v415 == 152 && v415[1] == 4)
                                                                                                                  {
                                                                                                                    v78 = (v415 + 2);
                                                                                                                    *(a2 + 1) = v78;
LABEL_1187:
                                                                                                                    if (v78 >= v14 || (v416 = *v78, (v416 & 0x80000000) != 0))
                                                                                                                    {
                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v748);
                                                                                                                      if (!result)
                                                                                                                      {
                                                                                                                        return result;
                                                                                                                      }

                                                                                                                      v417 = *(a2 + 1);
                                                                                                                      v14 = *(a2 + 2);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      *v748 = v416;
                                                                                                                      v417 = (v78 + 1);
                                                                                                                      *(a2 + 1) = v417;
                                                                                                                    }

                                                                                                                    *(this + 237) |= 4u;
                                                                                                                    if (v14 - v417 >= 2 && *v417 == 160 && v417[1] == 4)
                                                                                                                    {
                                                                                                                      v57 = (v417 + 2);
                                                                                                                      *(a2 + 1) = v57;
LABEL_1196:
                                                                                                                      if (v57 >= v14 || (v418 = *v57, (v418 & 0x80000000) != 0))
                                                                                                                      {
                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v744);
                                                                                                                        if (!result)
                                                                                                                        {
                                                                                                                          return result;
                                                                                                                        }

                                                                                                                        v419 = *(a2 + 1);
                                                                                                                        v14 = *(a2 + 2);
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        *v744 = v418;
                                                                                                                        v419 = (v57 + 1);
                                                                                                                        *(a2 + 1) = v419;
                                                                                                                      }

                                                                                                                      *(this + 237) |= 8u;
                                                                                                                      if (v14 - v419 >= 2 && *v419 == 168 && v419[1] == 4)
                                                                                                                      {
                                                                                                                        v65 = (v419 + 2);
                                                                                                                        *(a2 + 1) = v65;
LABEL_1205:
                                                                                                                        if (v65 >= v14 || (v420 = *v65, (v420 & 0x80000000) != 0))
                                                                                                                        {
                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v742);
                                                                                                                          if (!result)
                                                                                                                          {
                                                                                                                            return result;
                                                                                                                          }

                                                                                                                          v421 = *(a2 + 1);
                                                                                                                          v14 = *(a2 + 2);
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          *v742 = v420;
                                                                                                                          v421 = (v65 + 1);
                                                                                                                          *(a2 + 1) = v421;
                                                                                                                        }

                                                                                                                        *(this + 237) |= 0x10u;
                                                                                                                        if (v14 - v421 >= 2 && *v421 == 176 && v421[1] == 4)
                                                                                                                        {
                                                                                                                          while (1)
                                                                                                                          {
                                                                                                                            v138 = (v421 + 2);
                                                                                                                            *(a2 + 1) = v138;
LABEL_1214:
                                                                                                                            v767 = 0;
                                                                                                                            if (v138 >= v14 || *v138 < 0)
                                                                                                                            {
                                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                              {
                                                                                                                                return 0;
                                                                                                                              }
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v767 = *v138;
                                                                                                                              *(a2 + 1) = v138 + 1;
                                                                                                                            }

                                                                                                                            v422 = *(this + 120);
                                                                                                                            if (v422 == *(this + 121))
                                                                                                                            {
                                                                                                                              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 59, v422 + 1);
                                                                                                                              v422 = *(this + 120);
                                                                                                                            }

                                                                                                                            v423 = v767;
                                                                                                                            v424 = *(this + 59);
                                                                                                                            *(this + 120) = v422 + 1;
                                                                                                                            *(v424 + 4 * v422) = v423;
                                                                                                                            v425 = *(this + 121) - *(this + 120);
                                                                                                                            if (v425 >= 1)
                                                                                                                            {
                                                                                                                              v426 = v425 + 1;
                                                                                                                              do
                                                                                                                              {
                                                                                                                                v427 = *(a2 + 1);
                                                                                                                                v428 = *(a2 + 2);
                                                                                                                                if (v428 - v427 < 2 || *v427 != 176 || v427[1] != 4)
                                                                                                                                {
                                                                                                                                  break;
                                                                                                                                }

                                                                                                                                *(a2 + 1) = v427 + 2;
                                                                                                                                if ((v427 + 2) >= v428 || v427[2] < 0)
                                                                                                                                {
                                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                  {
                                                                                                                                    return 0;
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v767 = v427[2];
                                                                                                                                  *(a2 + 1) = v427 + 3;
                                                                                                                                }

                                                                                                                                v429 = *(this + 120);
                                                                                                                                if (v429 >= *(this + 121))
                                                                                                                                {
                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                  v429 = *(this + 120);
                                                                                                                                }

                                                                                                                                v430 = v767;
                                                                                                                                v431 = *(this + 59);
                                                                                                                                *(this + 120) = v429 + 1;
                                                                                                                                *(v431 + 4 * v429) = v430;
                                                                                                                                --v426;
                                                                                                                              }

                                                                                                                              while (v426 > 1);
                                                                                                                            }

LABEL_1232:
                                                                                                                            v421 = *(a2 + 1);
                                                                                                                            v14 = *(a2 + 2);
                                                                                                                            if (v14 - v421 < 2)
                                                                                                                            {
                                                                                                                              goto LABEL_2;
                                                                                                                            }

                                                                                                                            v432 = *v421;
                                                                                                                            if (v432 == 184)
                                                                                                                            {
                                                                                                                              break;
                                                                                                                            }

                                                                                                                            if (v432 != 176 || v421[1] != 4)
                                                                                                                            {
                                                                                                                              goto LABEL_2;
                                                                                                                            }
                                                                                                                          }

                                                                                                                          if (v421[1] == 4)
                                                                                                                          {
                                                                                                                            v76 = (v421 + 2);
                                                                                                                            *(a2 + 1) = v76;
LABEL_1239:
                                                                                                                            if (v76 >= v14 || (v433 = *v76, (v433 & 0x80000000) != 0))
                                                                                                                            {
                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v762);
                                                                                                                              if (!result)
                                                                                                                              {
                                                                                                                                return result;
                                                                                                                              }

                                                                                                                              v434 = *(a2 + 1);
                                                                                                                              v14 = *(a2 + 2);
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              *v762 = v433;
                                                                                                                              v434 = (v76 + 1);
                                                                                                                              *(a2 + 1) = v434;
                                                                                                                            }

                                                                                                                            *(this + 237) |= 0x40u;
                                                                                                                            if (v14 - v434 >= 2 && *v434 == 192 && v434[1] == 4)
                                                                                                                            {
                                                                                                                              while (1)
                                                                                                                              {
                                                                                                                                v135 = (v434 + 2);
                                                                                                                                *(a2 + 1) = v135;
LABEL_1248:
                                                                                                                                v767 = 0;
                                                                                                                                if (v135 >= v14 || *v135 < 0)
                                                                                                                                {
                                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                  {
                                                                                                                                    return 0;
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v767 = *v135;
                                                                                                                                  *(a2 + 1) = v135 + 1;
                                                                                                                                }

                                                                                                                                v435 = *(this + 124);
                                                                                                                                if (v435 == *(this + 125))
                                                                                                                                {
                                                                                                                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 61, v435 + 1);
                                                                                                                                  v435 = *(this + 124);
                                                                                                                                }

                                                                                                                                v436 = v767;
                                                                                                                                v437 = *(this + 61);
                                                                                                                                *(this + 124) = v435 + 1;
                                                                                                                                *(v437 + 4 * v435) = v436;
                                                                                                                                v438 = *(this + 125) - *(this + 124);
                                                                                                                                if (v438 >= 1)
                                                                                                                                {
                                                                                                                                  v439 = v438 + 1;
                                                                                                                                  do
                                                                                                                                  {
                                                                                                                                    v440 = *(a2 + 1);
                                                                                                                                    v441 = *(a2 + 2);
                                                                                                                                    if (v441 - v440 < 2 || *v440 != 192 || v440[1] != 4)
                                                                                                                                    {
                                                                                                                                      break;
                                                                                                                                    }

                                                                                                                                    *(a2 + 1) = v440 + 2;
                                                                                                                                    if ((v440 + 2) >= v441 || v440[2] < 0)
                                                                                                                                    {
                                                                                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                      {
                                                                                                                                        return 0;
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v767 = v440[2];
                                                                                                                                      *(a2 + 1) = v440 + 3;
                                                                                                                                    }

                                                                                                                                    v442 = *(this + 124);
                                                                                                                                    if (v442 >= *(this + 125))
                                                                                                                                    {
                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                      v442 = *(this + 124);
                                                                                                                                    }

                                                                                                                                    v443 = v767;
                                                                                                                                    v444 = *(this + 61);
                                                                                                                                    *(this + 124) = v442 + 1;
                                                                                                                                    *(v444 + 4 * v442) = v443;
                                                                                                                                    --v439;
                                                                                                                                  }

                                                                                                                                  while (v439 > 1);
                                                                                                                                }

LABEL_1266:
                                                                                                                                v434 = *(a2 + 1);
                                                                                                                                v14 = *(a2 + 2);
                                                                                                                                if (v14 - v434 < 2)
                                                                                                                                {
                                                                                                                                  goto LABEL_2;
                                                                                                                                }

                                                                                                                                v445 = *v434;
                                                                                                                                if (v445 == 200)
                                                                                                                                {
                                                                                                                                  break;
                                                                                                                                }

                                                                                                                                if (v445 != 192 || v434[1] != 4)
                                                                                                                                {
                                                                                                                                  goto LABEL_2;
                                                                                                                                }
                                                                                                                              }

                                                                                                                              if (v434[1] == 4)
                                                                                                                              {
                                                                                                                                while (1)
                                                                                                                                {
                                                                                                                                  v143 = (v434 + 2);
                                                                                                                                  *(a2 + 1) = v143;
LABEL_1273:
                                                                                                                                  v767 = 0;
                                                                                                                                  if (v143 >= v14 || *v143 < 0)
                                                                                                                                  {
                                                                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                    {
                                                                                                                                      return 0;
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v767 = *v143;
                                                                                                                                    *(a2 + 1) = v143 + 1;
                                                                                                                                  }

                                                                                                                                  v446 = *(this + 128);
                                                                                                                                  if (v446 == *(this + 129))
                                                                                                                                  {
                                                                                                                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 63, v446 + 1);
                                                                                                                                    v446 = *(this + 128);
                                                                                                                                  }

                                                                                                                                  v447 = v767;
                                                                                                                                  v448 = *(this + 63);
                                                                                                                                  *(this + 128) = v446 + 1;
                                                                                                                                  *(v448 + 4 * v446) = v447;
                                                                                                                                  v449 = *(this + 129) - *(this + 128);
                                                                                                                                  if (v449 >= 1)
                                                                                                                                  {
                                                                                                                                    v450 = v449 + 1;
                                                                                                                                    do
                                                                                                                                    {
                                                                                                                                      v451 = *(a2 + 1);
                                                                                                                                      v452 = *(a2 + 2);
                                                                                                                                      if (v452 - v451 < 2 || *v451 != 200 || v451[1] != 4)
                                                                                                                                      {
                                                                                                                                        break;
                                                                                                                                      }

                                                                                                                                      *(a2 + 1) = v451 + 2;
                                                                                                                                      if ((v451 + 2) >= v452 || v451[2] < 0)
                                                                                                                                      {
                                                                                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                        {
                                                                                                                                          return 0;
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v767 = v451[2];
                                                                                                                                        *(a2 + 1) = v451 + 3;
                                                                                                                                      }

                                                                                                                                      v453 = *(this + 128);
                                                                                                                                      if (v453 >= *(this + 129))
                                                                                                                                      {
                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                        v453 = *(this + 128);
                                                                                                                                      }

                                                                                                                                      v454 = v767;
                                                                                                                                      v455 = *(this + 63);
                                                                                                                                      *(this + 128) = v453 + 1;
                                                                                                                                      *(v455 + 4 * v453) = v454;
                                                                                                                                      --v450;
                                                                                                                                    }

                                                                                                                                    while (v450 > 1);
                                                                                                                                  }

LABEL_1291:
                                                                                                                                  v434 = *(a2 + 1);
                                                                                                                                  v14 = *(a2 + 2);
                                                                                                                                  if (v14 - v434 < 2)
                                                                                                                                  {
                                                                                                                                    goto LABEL_2;
                                                                                                                                  }

                                                                                                                                  v456 = *v434;
                                                                                                                                  if (v456 == 208)
                                                                                                                                  {
                                                                                                                                    break;
                                                                                                                                  }

                                                                                                                                  if (v456 != 200 || v434[1] != 4)
                                                                                                                                  {
                                                                                                                                    goto LABEL_2;
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                if (v434[1] == 4)
                                                                                                                                {
                                                                                                                                  while (1)
                                                                                                                                  {
                                                                                                                                    v132 = (v434 + 2);
                                                                                                                                    *(a2 + 1) = v132;
LABEL_1298:
                                                                                                                                    v767 = 0;
                                                                                                                                    if (v132 >= v14 || *v132 < 0)
                                                                                                                                    {
                                                                                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                      {
                                                                                                                                        return 0;
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v767 = *v132;
                                                                                                                                      *(a2 + 1) = v132 + 1;
                                                                                                                                    }

                                                                                                                                    v457 = *(this + 132);
                                                                                                                                    if (v457 == *(this + 133))
                                                                                                                                    {
                                                                                                                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 65, v457 + 1);
                                                                                                                                      v457 = *(this + 132);
                                                                                                                                    }

                                                                                                                                    v458 = v767;
                                                                                                                                    v459 = *(this + 65);
                                                                                                                                    *(this + 132) = v457 + 1;
                                                                                                                                    *(v459 + 4 * v457) = v458;
                                                                                                                                    v460 = *(this + 133) - *(this + 132);
                                                                                                                                    if (v460 >= 1)
                                                                                                                                    {
                                                                                                                                      v461 = v460 + 1;
                                                                                                                                      do
                                                                                                                                      {
                                                                                                                                        v462 = *(a2 + 1);
                                                                                                                                        v463 = *(a2 + 2);
                                                                                                                                        if (v463 - v462 < 2 || *v462 != 208 || v462[1] != 4)
                                                                                                                                        {
                                                                                                                                          break;
                                                                                                                                        }

                                                                                                                                        *(a2 + 1) = v462 + 2;
                                                                                                                                        if ((v462 + 2) >= v463 || v462[2] < 0)
                                                                                                                                        {
                                                                                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                          {
                                                                                                                                            return 0;
                                                                                                                                          }
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v767 = v462[2];
                                                                                                                                          *(a2 + 1) = v462 + 3;
                                                                                                                                        }

                                                                                                                                        v464 = *(this + 132);
                                                                                                                                        if (v464 >= *(this + 133))
                                                                                                                                        {
                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                          v464 = *(this + 132);
                                                                                                                                        }

                                                                                                                                        v465 = v767;
                                                                                                                                        v466 = *(this + 65);
                                                                                                                                        *(this + 132) = v464 + 1;
                                                                                                                                        *(v466 + 4 * v464) = v465;
                                                                                                                                        --v461;
                                                                                                                                      }

                                                                                                                                      while (v461 > 1);
                                                                                                                                    }

LABEL_1316:
                                                                                                                                    v434 = *(a2 + 1);
                                                                                                                                    v14 = *(a2 + 2);
                                                                                                                                    if (v14 - v434 < 2)
                                                                                                                                    {
                                                                                                                                      goto LABEL_2;
                                                                                                                                    }

                                                                                                                                    v467 = *v434;
                                                                                                                                    if (v467 == 216)
                                                                                                                                    {
                                                                                                                                      break;
                                                                                                                                    }

                                                                                                                                    if (v467 != 208 || v434[1] != 4)
                                                                                                                                    {
                                                                                                                                      goto LABEL_2;
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  if (v434[1] == 4)
                                                                                                                                  {
                                                                                                                                    while (1)
                                                                                                                                    {
                                                                                                                                      v141 = (v434 + 2);
                                                                                                                                      *(a2 + 1) = v141;
LABEL_1323:
                                                                                                                                      v767 = 0;
                                                                                                                                      if (v141 >= v14 || *v141 < 0)
                                                                                                                                      {
                                                                                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                        {
                                                                                                                                          return 0;
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v767 = *v141;
                                                                                                                                        *(a2 + 1) = v141 + 1;
                                                                                                                                      }

                                                                                                                                      v468 = *(this + 136);
                                                                                                                                      if (v468 == *(this + 137))
                                                                                                                                      {
                                                                                                                                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 67, v468 + 1);
                                                                                                                                        v468 = *(this + 136);
                                                                                                                                      }

                                                                                                                                      v469 = v767;
                                                                                                                                      v470 = *(this + 67);
                                                                                                                                      *(this + 136) = v468 + 1;
                                                                                                                                      *(v470 + 4 * v468) = v469;
                                                                                                                                      v471 = *(this + 137) - *(this + 136);
                                                                                                                                      if (v471 >= 1)
                                                                                                                                      {
                                                                                                                                        v472 = v471 + 1;
                                                                                                                                        do
                                                                                                                                        {
                                                                                                                                          v473 = *(a2 + 1);
                                                                                                                                          v474 = *(a2 + 2);
                                                                                                                                          if (v474 - v473 < 2 || *v473 != 216 || v473[1] != 4)
                                                                                                                                          {
                                                                                                                                            break;
                                                                                                                                          }

                                                                                                                                          *(a2 + 1) = v473 + 2;
                                                                                                                                          if ((v473 + 2) >= v474 || v473[2] < 0)
                                                                                                                                          {
                                                                                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                            {
                                                                                                                                              return 0;
                                                                                                                                            }
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v767 = v473[2];
                                                                                                                                            *(a2 + 1) = v473 + 3;
                                                                                                                                          }

                                                                                                                                          v475 = *(this + 136);
                                                                                                                                          if (v475 >= *(this + 137))
                                                                                                                                          {
                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                            v475 = *(this + 136);
                                                                                                                                          }

                                                                                                                                          v476 = v767;
                                                                                                                                          v477 = *(this + 67);
                                                                                                                                          *(this + 136) = v475 + 1;
                                                                                                                                          *(v477 + 4 * v475) = v476;
                                                                                                                                          --v472;
                                                                                                                                        }

                                                                                                                                        while (v472 > 1);
                                                                                                                                      }

LABEL_1341:
                                                                                                                                      v434 = *(a2 + 1);
                                                                                                                                      v14 = *(a2 + 2);
                                                                                                                                      if (v14 - v434 < 2)
                                                                                                                                      {
                                                                                                                                        goto LABEL_2;
                                                                                                                                      }

                                                                                                                                      v478 = *v434;
                                                                                                                                      if (v478 == 224)
                                                                                                                                      {
                                                                                                                                        break;
                                                                                                                                      }

                                                                                                                                      if (v478 != 216 || v434[1] != 4)
                                                                                                                                      {
                                                                                                                                        goto LABEL_2;
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    if (v434[1] == 4)
                                                                                                                                    {
                                                                                                                                      while (1)
                                                                                                                                      {
                                                                                                                                        v129 = (v434 + 2);
                                                                                                                                        *(a2 + 1) = v129;
LABEL_1348:
                                                                                                                                        v767 = 0;
                                                                                                                                        if (v129 >= v14 || *v129 < 0)
                                                                                                                                        {
                                                                                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                          {
                                                                                                                                            return 0;
                                                                                                                                          }
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v767 = *v129;
                                                                                                                                          *(a2 + 1) = v129 + 1;
                                                                                                                                        }

                                                                                                                                        v479 = *(this + 140);
                                                                                                                                        if (v479 == *(this + 141))
                                                                                                                                        {
                                                                                                                                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 69, v479 + 1);
                                                                                                                                          v479 = *(this + 140);
                                                                                                                                        }

                                                                                                                                        v480 = v767;
                                                                                                                                        v481 = *(this + 69);
                                                                                                                                        *(this + 140) = v479 + 1;
                                                                                                                                        *(v481 + 4 * v479) = v480;
                                                                                                                                        v482 = *(this + 141) - *(this + 140);
                                                                                                                                        if (v482 >= 1)
                                                                                                                                        {
                                                                                                                                          v483 = v482 + 1;
                                                                                                                                          do
                                                                                                                                          {
                                                                                                                                            v484 = *(a2 + 1);
                                                                                                                                            v485 = *(a2 + 2);
                                                                                                                                            if (v485 - v484 < 2 || *v484 != 224 || v484[1] != 4)
                                                                                                                                            {
                                                                                                                                              break;
                                                                                                                                            }

                                                                                                                                            *(a2 + 1) = v484 + 2;
                                                                                                                                            if ((v484 + 2) >= v485 || v484[2] < 0)
                                                                                                                                            {
                                                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                              {
                                                                                                                                                return 0;
                                                                                                                                              }
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v767 = v484[2];
                                                                                                                                              *(a2 + 1) = v484 + 3;
                                                                                                                                            }

                                                                                                                                            v486 = *(this + 140);
                                                                                                                                            if (v486 >= *(this + 141))
                                                                                                                                            {
                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                              v486 = *(this + 140);
                                                                                                                                            }

                                                                                                                                            v487 = v767;
                                                                                                                                            v488 = *(this + 69);
                                                                                                                                            *(this + 140) = v486 + 1;
                                                                                                                                            *(v488 + 4 * v486) = v487;
                                                                                                                                            --v483;
                                                                                                                                          }

                                                                                                                                          while (v483 > 1);
                                                                                                                                        }

LABEL_1366:
                                                                                                                                        v434 = *(a2 + 1);
                                                                                                                                        v14 = *(a2 + 2);
                                                                                                                                        if (v14 - v434 < 2)
                                                                                                                                        {
                                                                                                                                          goto LABEL_2;
                                                                                                                                        }

                                                                                                                                        v489 = *v434;
                                                                                                                                        if (v489 == 232)
                                                                                                                                        {
                                                                                                                                          break;
                                                                                                                                        }

                                                                                                                                        if (v489 != 224 || v434[1] != 4)
                                                                                                                                        {
                                                                                                                                          goto LABEL_2;
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      if (v434[1] == 4)
                                                                                                                                      {
                                                                                                                                        while (1)
                                                                                                                                        {
                                                                                                                                          v147 = (v434 + 2);
                                                                                                                                          *(a2 + 1) = v147;
LABEL_1373:
                                                                                                                                          v767 = 0;
                                                                                                                                          if (v147 >= v14 || *v147 < 0)
                                                                                                                                          {
                                                                                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                            {
                                                                                                                                              return 0;
                                                                                                                                            }
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v767 = *v147;
                                                                                                                                            *(a2 + 1) = v147 + 1;
                                                                                                                                          }

                                                                                                                                          v490 = *(this + 144);
                                                                                                                                          if (v490 == *(this + 145))
                                                                                                                                          {
                                                                                                                                            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 71, v490 + 1);
                                                                                                                                            v490 = *(this + 144);
                                                                                                                                          }

                                                                                                                                          v491 = v767;
                                                                                                                                          v492 = *(this + 71);
                                                                                                                                          *(this + 144) = v490 + 1;
                                                                                                                                          *(v492 + 4 * v490) = v491;
                                                                                                                                          v493 = *(this + 145) - *(this + 144);
                                                                                                                                          if (v493 >= 1)
                                                                                                                                          {
                                                                                                                                            v494 = v493 + 1;
                                                                                                                                            do
                                                                                                                                            {
                                                                                                                                              v495 = *(a2 + 1);
                                                                                                                                              v496 = *(a2 + 2);
                                                                                                                                              if (v496 - v495 < 2 || *v495 != 232 || v495[1] != 4)
                                                                                                                                              {
                                                                                                                                                break;
                                                                                                                                              }

                                                                                                                                              *(a2 + 1) = v495 + 2;
                                                                                                                                              if ((v495 + 2) >= v496 || v495[2] < 0)
                                                                                                                                              {
                                                                                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                {
                                                                                                                                                  return 0;
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v767 = v495[2];
                                                                                                                                                *(a2 + 1) = v495 + 3;
                                                                                                                                              }

                                                                                                                                              v497 = *(this + 144);
                                                                                                                                              if (v497 >= *(this + 145))
                                                                                                                                              {
                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                                v497 = *(this + 144);
                                                                                                                                              }

                                                                                                                                              v498 = v767;
                                                                                                                                              v499 = *(this + 71);
                                                                                                                                              *(this + 144) = v497 + 1;
                                                                                                                                              *(v499 + 4 * v497) = v498;
                                                                                                                                              --v494;
                                                                                                                                            }

                                                                                                                                            while (v494 > 1);
                                                                                                                                          }

LABEL_1391:
                                                                                                                                          v434 = *(a2 + 1);
                                                                                                                                          v14 = *(a2 + 2);
                                                                                                                                          if (v14 - v434 < 2)
                                                                                                                                          {
                                                                                                                                            goto LABEL_2;
                                                                                                                                          }

                                                                                                                                          v500 = *v434;
                                                                                                                                          if (v500 == 240)
                                                                                                                                          {
                                                                                                                                            break;
                                                                                                                                          }

                                                                                                                                          if (v500 != 232 || v434[1] != 4)
                                                                                                                                          {
                                                                                                                                            goto LABEL_2;
                                                                                                                                          }
                                                                                                                                        }

                                                                                                                                        if (v434[1] == 4)
                                                                                                                                        {
                                                                                                                                          while (1)
                                                                                                                                          {
                                                                                                                                            v145 = (v434 + 2);
                                                                                                                                            *(a2 + 1) = v145;
LABEL_1398:
                                                                                                                                            v767 = 0;
                                                                                                                                            if (v145 >= v14 || *v145 < 0)
                                                                                                                                            {
                                                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                              {
                                                                                                                                                return 0;
                                                                                                                                              }
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v767 = *v145;
                                                                                                                                              *(a2 + 1) = v145 + 1;
                                                                                                                                            }

                                                                                                                                            v501 = *(this + 148);
                                                                                                                                            if (v501 == *(this + 149))
                                                                                                                                            {
                                                                                                                                              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 73, v501 + 1);
                                                                                                                                              v501 = *(this + 148);
                                                                                                                                            }

                                                                                                                                            v502 = v767;
                                                                                                                                            v503 = *(this + 73);
                                                                                                                                            *(this + 148) = v501 + 1;
                                                                                                                                            *(v503 + 4 * v501) = v502;
                                                                                                                                            v504 = *(this + 149) - *(this + 148);
                                                                                                                                            if (v504 >= 1)
                                                                                                                                            {
                                                                                                                                              v505 = v504 + 1;
                                                                                                                                              do
                                                                                                                                              {
                                                                                                                                                v506 = *(a2 + 1);
                                                                                                                                                v507 = *(a2 + 2);
                                                                                                                                                if (v507 - v506 < 2 || *v506 != 240 || v506[1] != 4)
                                                                                                                                                {
                                                                                                                                                  break;
                                                                                                                                                }

                                                                                                                                                *(a2 + 1) = v506 + 2;
                                                                                                                                                if ((v506 + 2) >= v507 || v506[2] < 0)
                                                                                                                                                {
                                                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                  {
                                                                                                                                                    return 0;
                                                                                                                                                  }
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v767 = v506[2];
                                                                                                                                                  *(a2 + 1) = v506 + 3;
                                                                                                                                                }

                                                                                                                                                v508 = *(this + 148);
                                                                                                                                                if (v508 >= *(this + 149))
                                                                                                                                                {
                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                                  v508 = *(this + 148);
                                                                                                                                                }

                                                                                                                                                v509 = v767;
                                                                                                                                                v510 = *(this + 73);
                                                                                                                                                *(this + 148) = v508 + 1;
                                                                                                                                                *(v510 + 4 * v508) = v509;
                                                                                                                                                --v505;
                                                                                                                                              }

                                                                                                                                              while (v505 > 1);
                                                                                                                                            }

LABEL_1416:
                                                                                                                                            v434 = *(a2 + 1);
                                                                                                                                            v14 = *(a2 + 2);
                                                                                                                                            if (v14 - v434 < 2)
                                                                                                                                            {
                                                                                                                                              goto LABEL_2;
                                                                                                                                            }

                                                                                                                                            v511 = *v434;
                                                                                                                                            if (v511 == 248)
                                                                                                                                            {
                                                                                                                                              break;
                                                                                                                                            }

                                                                                                                                            if (v511 != 240 || v434[1] != 4)
                                                                                                                                            {
                                                                                                                                              goto LABEL_2;
                                                                                                                                            }
                                                                                                                                          }

                                                                                                                                          if (v434[1] == 4)
                                                                                                                                          {
                                                                                                                                            while (1)
                                                                                                                                            {
                                                                                                                                              v127 = (v434 + 2);
                                                                                                                                              *(a2 + 1) = v127;
LABEL_1423:
                                                                                                                                              v767 = 0;
                                                                                                                                              if (v127 >= v14 || *v127 < 0)
                                                                                                                                              {
                                                                                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                {
                                                                                                                                                  return 0;
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v767 = *v127;
                                                                                                                                                *(a2 + 1) = v127 + 1;
                                                                                                                                              }

                                                                                                                                              v512 = *(this + 152);
                                                                                                                                              if (v512 == *(this + 153))
                                                                                                                                              {
                                                                                                                                                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 75, v512 + 1);
                                                                                                                                                v512 = *(this + 152);
                                                                                                                                              }

                                                                                                                                              v513 = v767;
                                                                                                                                              v514 = *(this + 75);
                                                                                                                                              *(this + 152) = v512 + 1;
                                                                                                                                              *(v514 + 4 * v512) = v513;
                                                                                                                                              v515 = *(this + 153) - *(this + 152);
                                                                                                                                              if (v515 >= 1)
                                                                                                                                              {
                                                                                                                                                v516 = v515 + 1;
                                                                                                                                                do
                                                                                                                                                {
                                                                                                                                                  v517 = *(a2 + 1);
                                                                                                                                                  v518 = *(a2 + 2);
                                                                                                                                                  if (v518 - v517 < 2 || *v517 != 248 || v517[1] != 4)
                                                                                                                                                  {
                                                                                                                                                    break;
                                                                                                                                                  }

                                                                                                                                                  *(a2 + 1) = v517 + 2;
                                                                                                                                                  if ((v517 + 2) >= v518 || v517[2] < 0)
                                                                                                                                                  {
                                                                                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                    {
                                                                                                                                                      return 0;
                                                                                                                                                    }
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v767 = v517[2];
                                                                                                                                                    *(a2 + 1) = v517 + 3;
                                                                                                                                                  }

                                                                                                                                                  v519 = *(this + 152);
                                                                                                                                                  if (v519 >= *(this + 153))
                                                                                                                                                  {
                                                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                                    v519 = *(this + 152);
                                                                                                                                                  }

                                                                                                                                                  v520 = v767;
                                                                                                                                                  v521 = *(this + 75);
                                                                                                                                                  *(this + 152) = v519 + 1;
                                                                                                                                                  *(v521 + 4 * v519) = v520;
                                                                                                                                                  --v516;
                                                                                                                                                }

                                                                                                                                                while (v516 > 1);
                                                                                                                                              }

LABEL_1441:
                                                                                                                                              v434 = *(a2 + 1);
                                                                                                                                              v14 = *(a2 + 2);
                                                                                                                                              if (v14 - v434 < 2)
                                                                                                                                              {
                                                                                                                                                goto LABEL_2;
                                                                                                                                              }

                                                                                                                                              v522 = *v434;
                                                                                                                                              if (v522 == 128)
                                                                                                                                              {
                                                                                                                                                break;
                                                                                                                                              }

                                                                                                                                              if (v522 != 248 || v434[1] != 4)
                                                                                                                                              {
                                                                                                                                                goto LABEL_2;
                                                                                                                                              }
                                                                                                                                            }

                                                                                                                                            if (v434[1] == 5)
                                                                                                                                            {
                                                                                                                                              v104 = (v434 + 2);
                                                                                                                                              *(a2 + 1) = v104;
LABEL_1448:
                                                                                                                                              if (v104 >= v14 || (v523 = *v104, (v523 & 0x80000000) != 0))
                                                                                                                                              {
                                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v766);
                                                                                                                                                if (!result)
                                                                                                                                                {
                                                                                                                                                  return result;
                                                                                                                                                }

                                                                                                                                                v524 = *(a2 + 1);
                                                                                                                                                v14 = *(a2 + 2);
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                *v766 = v523;
                                                                                                                                                v524 = (v104 + 1);
                                                                                                                                                *(a2 + 1) = v524;
                                                                                                                                              }

                                                                                                                                              *(this + 237) |= 0x8000u;
                                                                                                                                              if (v14 - v524 >= 2 && *v524 == 136 && v524[1] == 5)
                                                                                                                                              {
                                                                                                                                                v109 = (v524 + 2);
                                                                                                                                                *(a2 + 1) = v109;
LABEL_1457:
                                                                                                                                                if (v109 >= v14 || (v525 = *v109, (v525 & 0x80000000) != 0))
                                                                                                                                                {
                                                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v760);
                                                                                                                                                  if (!result)
                                                                                                                                                  {
                                                                                                                                                    return result;
                                                                                                                                                  }

                                                                                                                                                  v526 = *(a2 + 1);
                                                                                                                                                  v14 = *(a2 + 2);
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  *v760 = v525;
                                                                                                                                                  v526 = (v109 + 1);
                                                                                                                                                  *(a2 + 1) = v526;
                                                                                                                                                }

                                                                                                                                                *(this + 237) |= 0x10000u;
                                                                                                                                                if (v14 - v526 >= 2 && *v526 == 144 && v526[1] == 5)
                                                                                                                                                {
                                                                                                                                                  v28 = (v526 + 2);
                                                                                                                                                  *(a2 + 1) = v28;
LABEL_1466:
                                                                                                                                                  if (v28 >= v14 || (v527 = *v28, (v527 & 0x80000000) != 0))
                                                                                                                                                  {
                                                                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v756);
                                                                                                                                                    if (!result)
                                                                                                                                                    {
                                                                                                                                                      return result;
                                                                                                                                                    }

                                                                                                                                                    v528 = *(a2 + 1);
                                                                                                                                                    v14 = *(a2 + 2);
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    *v756 = v527;
                                                                                                                                                    v528 = (v28 + 1);
                                                                                                                                                    *(a2 + 1) = v528;
                                                                                                                                                  }

                                                                                                                                                  *(this + 237) |= 0x20000u;
                                                                                                                                                  if (v14 - v528 >= 2 && *v528 == 152 && v528[1] == 5)
                                                                                                                                                  {
                                                                                                                                                    v54 = (v528 + 2);
                                                                                                                                                    *(a2 + 1) = v54;
LABEL_1475:
                                                                                                                                                    if (v54 >= v14 || (v529 = *v54, (v529 & 0x80000000) != 0))
                                                                                                                                                    {
                                                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v750);
                                                                                                                                                      if (!result)
                                                                                                                                                      {
                                                                                                                                                        return result;
                                                                                                                                                      }

                                                                                                                                                      v530 = *(a2 + 1);
                                                                                                                                                      v14 = *(a2 + 2);
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      *v750 = v529;
                                                                                                                                                      v530 = (v54 + 1);
                                                                                                                                                      *(a2 + 1) = v530;
                                                                                                                                                    }

                                                                                                                                                    *(this + 237) |= 0x40000u;
                                                                                                                                                    if (v14 - v530 >= 2 && *v530 == 160 && v530[1] == 5)
                                                                                                                                                    {
                                                                                                                                                      v48 = (v530 + 2);
                                                                                                                                                      *(a2 + 1) = v48;
LABEL_1484:
                                                                                                                                                      if (v48 >= v14 || (v531 = *v48, (v531 & 0x80000000) != 0))
                                                                                                                                                      {
                                                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v747);
                                                                                                                                                        if (!result)
                                                                                                                                                        {
                                                                                                                                                          return result;
                                                                                                                                                        }

                                                                                                                                                        v532 = *(a2 + 1);
                                                                                                                                                        v14 = *(a2 + 2);
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        *v747 = v531;
                                                                                                                                                        v532 = (v48 + 1);
                                                                                                                                                        *(a2 + 1) = v532;
                                                                                                                                                      }

                                                                                                                                                      *(this + 237) |= 0x80000u;
                                                                                                                                                      if (v14 - v532 >= 2 && *v532 == 168 && v532[1] == 5)
                                                                                                                                                      {
                                                                                                                                                        v36 = (v532 + 2);
                                                                                                                                                        *(a2 + 1) = v36;
LABEL_1493:
                                                                                                                                                        if (v36 >= v14 || (v533 = *v36, (v533 & 0x80000000) != 0))
                                                                                                                                                        {
                                                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v741);
                                                                                                                                                          if (!result)
                                                                                                                                                          {
                                                                                                                                                            return result;
                                                                                                                                                          }

                                                                                                                                                          v534 = *(a2 + 1);
                                                                                                                                                          v14 = *(a2 + 2);
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          *v741 = v533;
                                                                                                                                                          v534 = (v36 + 1);
                                                                                                                                                          *(a2 + 1) = v534;
                                                                                                                                                        }

                                                                                                                                                        *(this + 237) |= 0x100000u;
                                                                                                                                                        if (v14 - v534 >= 2 && *v534 == 176 && v534[1] == 5)
                                                                                                                                                        {
                                                                                                                                                          while (1)
                                                                                                                                                          {
                                                                                                                                                            v148 = (v534 + 2);
                                                                                                                                                            *(a2 + 1) = v148;
LABEL_1502:
                                                                                                                                                            v767 = 0;
                                                                                                                                                            if (v148 >= v14 || *v148 < 0)
                                                                                                                                                            {
                                                                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                              {
                                                                                                                                                                return 0;
                                                                                                                                                              }
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v767 = *v148;
                                                                                                                                                              *(a2 + 1) = v148 + 1;
                                                                                                                                                            }

                                                                                                                                                            v535 = *(this + 162);
                                                                                                                                                            if (v535 == *(this + 163))
                                                                                                                                                            {
                                                                                                                                                              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 80, v535 + 1);
                                                                                                                                                              v535 = *(this + 162);
                                                                                                                                                            }

                                                                                                                                                            v536 = v767;
                                                                                                                                                            v537 = *(this + 80);
                                                                                                                                                            *(this + 162) = v535 + 1;
                                                                                                                                                            *(v537 + 4 * v535) = v536;
                                                                                                                                                            v538 = *(this + 163) - *(this + 162);
                                                                                                                                                            if (v538 >= 1)
                                                                                                                                                            {
                                                                                                                                                              v539 = v538 + 1;
                                                                                                                                                              do
                                                                                                                                                              {
                                                                                                                                                                v540 = *(a2 + 1);
                                                                                                                                                                v541 = *(a2 + 2);
                                                                                                                                                                if (v541 - v540 < 2 || *v540 != 176 || v540[1] != 5)
                                                                                                                                                                {
                                                                                                                                                                  break;
                                                                                                                                                                }

                                                                                                                                                                *(a2 + 1) = v540 + 2;
                                                                                                                                                                if ((v540 + 2) >= v541 || v540[2] < 0)
                                                                                                                                                                {
                                                                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                                  {
                                                                                                                                                                    return 0;
                                                                                                                                                                  }
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v767 = v540[2];
                                                                                                                                                                  *(a2 + 1) = v540 + 3;
                                                                                                                                                                }

                                                                                                                                                                v542 = *(this + 162);
                                                                                                                                                                if (v542 >= *(this + 163))
                                                                                                                                                                {
                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                                                  v542 = *(this + 162);
                                                                                                                                                                }

                                                                                                                                                                v543 = v767;
                                                                                                                                                                v544 = *(this + 80);
                                                                                                                                                                *(this + 162) = v542 + 1;
                                                                                                                                                                *(v544 + 4 * v542) = v543;
                                                                                                                                                                --v539;
                                                                                                                                                              }

                                                                                                                                                              while (v539 > 1);
                                                                                                                                                            }

LABEL_1520:
                                                                                                                                                            v534 = *(a2 + 1);
                                                                                                                                                            v14 = *(a2 + 2);
                                                                                                                                                            if (v14 - v534 < 2)
                                                                                                                                                            {
                                                                                                                                                              goto LABEL_2;
                                                                                                                                                            }

                                                                                                                                                            v545 = *v534;
                                                                                                                                                            if (v545 == 184)
                                                                                                                                                            {
                                                                                                                                                              break;
                                                                                                                                                            }

                                                                                                                                                            if (v545 != 176 || v534[1] != 5)
                                                                                                                                                            {
                                                                                                                                                              goto LABEL_2;
                                                                                                                                                            }
                                                                                                                                                          }

                                                                                                                                                          if (v534[1] == 5)
                                                                                                                                                          {
                                                                                                                                                            v87 = (v534 + 2);
                                                                                                                                                            *(a2 + 1) = v87;
LABEL_1527:
                                                                                                                                                            if (v87 >= v14 || (v546 = *v87, (v546 & 0x80000000) != 0))
                                                                                                                                                            {
                                                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v761);
                                                                                                                                                              if (!result)
                                                                                                                                                              {
                                                                                                                                                                return result;
                                                                                                                                                              }

                                                                                                                                                              v547 = *(a2 + 1);
                                                                                                                                                              v14 = *(a2 + 2);
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              *v761 = v546;
                                                                                                                                                              v547 = (v87 + 1);
                                                                                                                                                              *(a2 + 1) = v547;
                                                                                                                                                            }

                                                                                                                                                            *(this + 237) |= 0x400000u;
                                                                                                                                                            if (v14 - v547 >= 2 && *v547 == 192 && v547[1] == 5)
                                                                                                                                                            {
                                                                                                                                                              while (1)
                                                                                                                                                              {
                                                                                                                                                                v131 = (v547 + 2);
                                                                                                                                                                *(a2 + 1) = v131;
LABEL_1536:
                                                                                                                                                                v767 = 0;
                                                                                                                                                                if (v131 >= v14 || *v131 < 0)
                                                                                                                                                                {
                                                                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                                  {
                                                                                                                                                                    return 0;
                                                                                                                                                                  }
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v767 = *v131;
                                                                                                                                                                  *(a2 + 1) = v131 + 1;
                                                                                                                                                                }

                                                                                                                                                                v548 = *(this + 166);
                                                                                                                                                                if (v548 == *(this + 167))
                                                                                                                                                                {
                                                                                                                                                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 82, v548 + 1);
                                                                                                                                                                  v548 = *(this + 166);
                                                                                                                                                                }

                                                                                                                                                                v549 = v767;
                                                                                                                                                                v550 = *(this + 82);
                                                                                                                                                                *(this + 166) = v548 + 1;
                                                                                                                                                                *(v550 + 4 * v548) = v549;
                                                                                                                                                                v551 = *(this + 167) - *(this + 166);
                                                                                                                                                                if (v551 >= 1)
                                                                                                                                                                {
                                                                                                                                                                  v552 = v551 + 1;
                                                                                                                                                                  do
                                                                                                                                                                  {
                                                                                                                                                                    v553 = *(a2 + 1);
                                                                                                                                                                    v554 = *(a2 + 2);
                                                                                                                                                                    if (v554 - v553 < 2 || *v553 != 192 || v553[1] != 5)
                                                                                                                                                                    {
                                                                                                                                                                      break;
                                                                                                                                                                    }

                                                                                                                                                                    *(a2 + 1) = v553 + 2;
                                                                                                                                                                    if ((v553 + 2) >= v554 || v553[2] < 0)
                                                                                                                                                                    {
                                                                                                                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                                      {
                                                                                                                                                                        return 0;
                                                                                                                                                                      }
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v767 = v553[2];
                                                                                                                                                                      *(a2 + 1) = v553 + 3;
                                                                                                                                                                    }

                                                                                                                                                                    v555 = *(this + 166);
                                                                                                                                                                    if (v555 >= *(this + 167))
                                                                                                                                                                    {
                                                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                                                      v555 = *(this + 166);
                                                                                                                                                                    }

                                                                                                                                                                    v556 = v767;
                                                                                                                                                                    v557 = *(this + 82);
                                                                                                                                                                    *(this + 166) = v555 + 1;
                                                                                                                                                                    *(v557 + 4 * v555) = v556;
                                                                                                                                                                    --v552;
                                                                                                                                                                  }

                                                                                                                                                                  while (v552 > 1);
                                                                                                                                                                }

LABEL_1554:
                                                                                                                                                                v547 = *(a2 + 1);
                                                                                                                                                                v14 = *(a2 + 2);
                                                                                                                                                                if (v14 - v547 < 2)
                                                                                                                                                                {
                                                                                                                                                                  goto LABEL_2;
                                                                                                                                                                }

                                                                                                                                                                v558 = *v547;
                                                                                                                                                                if (v558 == 200)
                                                                                                                                                                {
                                                                                                                                                                  break;
                                                                                                                                                                }

                                                                                                                                                                if (v558 != 192 || v547[1] != 5)
                                                                                                                                                                {
                                                                                                                                                                  goto LABEL_2;
                                                                                                                                                                }
                                                                                                                                                              }

                                                                                                                                                              if (v547[1] == 5)
                                                                                                                                                              {
                                                                                                                                                                while (1)
                                                                                                                                                                {
                                                                                                                                                                  v124 = (v547 + 2);
                                                                                                                                                                  *(a2 + 1) = v124;
LABEL_1561:
                                                                                                                                                                  v767 = 0;
                                                                                                                                                                  if (v124 >= v14 || *v124 < 0)
                                                                                                                                                                  {
                                                                                                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                                    {
                                                                                                                                                                      return 0;
                                                                                                                                                                    }
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v767 = *v124;
                                                                                                                                                                    *(a2 + 1) = v124 + 1;
                                                                                                                                                                  }

                                                                                                                                                                  v559 = *(this + 170);
                                                                                                                                                                  if (v559 == *(this + 171))
                                                                                                                                                                  {
                                                                                                                                                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 84, v559 + 1);
                                                                                                                                                                    v559 = *(this + 170);
                                                                                                                                                                  }

                                                                                                                                                                  v560 = v767;
                                                                                                                                                                  v561 = *(this + 84);
                                                                                                                                                                  *(this + 170) = v559 + 1;
                                                                                                                                                                  *(v561 + 4 * v559) = v560;
                                                                                                                                                                  v562 = *(this + 171) - *(this + 170);
                                                                                                                                                                  if (v562 >= 1)
                                                                                                                                                                  {
                                                                                                                                                                    v563 = v562 + 1;
                                                                                                                                                                    do
                                                                                                                                                                    {
                                                                                                                                                                      v564 = *(a2 + 1);
                                                                                                                                                                      v565 = *(a2 + 2);
                                                                                                                                                                      if (v565 - v564 < 2 || *v564 != 200 || v564[1] != 5)
                                                                                                                                                                      {
                                                                                                                                                                        break;
                                                                                                                                                                      }

                                                                                                                                                                      *(a2 + 1) = v564 + 2;
                                                                                                                                                                      if ((v564 + 2) >= v565 || v564[2] < 0)
                                                                                                                                                                      {
                                                                                                                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                                        {
                                                                                                                                                                          return 0;
                                                                                                                                                                        }
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v767 = v564[2];
                                                                                                                                                                        *(a2 + 1) = v564 + 3;
                                                                                                                                                                      }

                                                                                                                                                                      v566 = *(this + 170);
                                                                                                                                                                      if (v566 >= *(this + 171))
                                                                                                                                                                      {
                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                                                        v566 = *(this + 170);
                                                                                                                                                                      }

                                                                                                                                                                      v567 = v767;
                                                                                                                                                                      v568 = *(this + 84);
                                                                                                                                                                      *(this + 170) = v566 + 1;
                                                                                                                                                                      *(v568 + 4 * v566) = v567;
                                                                                                                                                                      --v563;
                                                                                                                                                                    }

                                                                                                                                                                    while (v563 > 1);
                                                                                                                                                                  }

LABEL_1579:
                                                                                                                                                                  v547 = *(a2 + 1);
                                                                                                                                                                  v14 = *(a2 + 2);
                                                                                                                                                                  if (v14 - v547 < 2)
                                                                                                                                                                  {
                                                                                                                                                                    goto LABEL_2;
                                                                                                                                                                  }

                                                                                                                                                                  v569 = *v547;
                                                                                                                                                                  if (v569 == 208)
                                                                                                                                                                  {
                                                                                                                                                                    break;
                                                                                                                                                                  }

                                                                                                                                                                  if (v569 != 200 || v547[1] != 5)
                                                                                                                                                                  {
                                                                                                                                                                    goto LABEL_2;
                                                                                                                                                                  }
                                                                                                                                                                }

                                                                                                                                                                if (v547[1] == 5)
                                                                                                                                                                {
                                                                                                                                                                  while (1)
                                                                                                                                                                  {
                                                                                                                                                                    v142 = (v547 + 2);
                                                                                                                                                                    *(a2 + 1) = v142;
LABEL_1586:
                                                                                                                                                                    v767 = 0;
                                                                                                                                                                    if (v142 >= v14 || *v142 < 0)
                                                                                                                                                                    {
                                                                                                                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                                      {
                                                                                                                                                                        return 0;
                                                                                                                                                                      }
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v767 = *v142;
                                                                                                                                                                      *(a2 + 1) = v142 + 1;
                                                                                                                                                                    }

                                                                                                                                                                    v570 = *(this + 174);
                                                                                                                                                                    if (v570 == *(this + 175))
                                                                                                                                                                    {
                                                                                                                                                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 86, v570 + 1);
                                                                                                                                                                      v570 = *(this + 174);
                                                                                                                                                                    }

                                                                                                                                                                    v571 = v767;
                                                                                                                                                                    v572 = *(this + 86);
                                                                                                                                                                    *(this + 174) = v570 + 1;
                                                                                                                                                                    *(v572 + 4 * v570) = v571;
                                                                                                                                                                    v573 = *(this + 175) - *(this + 174);
                                                                                                                                                                    if (v573 >= 1)
                                                                                                                                                                    {
                                                                                                                                                                      v574 = v573 + 1;
                                                                                                                                                                      do
                                                                                                                                                                      {
                                                                                                                                                                        v575 = *(a2 + 1);
                                                                                                                                                                        v576 = *(a2 + 2);
                                                                                                                                                                        if (v576 - v575 < 2 || *v575 != 208 || v575[1] != 5)
                                                                                                                                                                        {
                                                                                                                                                                          break;
                                                                                                                                                                        }

                                                                                                                                                                        *(a2 + 1) = v575 + 2;
                                                                                                                                                                        if ((v575 + 2) >= v576 || v575[2] < 0)
                                                                                                                                                                        {
                                                                                                                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                                          {
                                                                                                                                                                            return 0;
                                                                                                                                                                          }
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v767 = v575[2];
                                                                                                                                                                          *(a2 + 1) = v575 + 3;
                                                                                                                                                                        }

                                                                                                                                                                        v577 = *(this + 174);
                                                                                                                                                                        if (v577 >= *(this + 175))
                                                                                                                                                                        {
                                                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                                                          v577 = *(this + 174);
                                                                                                                                                                        }

                                                                                                                                                                        v578 = v767;
                                                                                                                                                                        v579 = *(this + 86);
                                                                                                                                                                        *(this + 174) = v577 + 1;
                                                                                                                                                                        *(v579 + 4 * v577) = v578;
                                                                                                                                                                        --v574;
                                                                                                                                                                      }

                                                                                                                                                                      while (v574 > 1);
                                                                                                                                                                    }

LABEL_1604:
                                                                                                                                                                    v547 = *(a2 + 1);
                                                                                                                                                                    v14 = *(a2 + 2);
                                                                                                                                                                    if (v14 - v547 < 2)
                                                                                                                                                                    {
                                                                                                                                                                      goto LABEL_2;
                                                                                                                                                                    }

                                                                                                                                                                    v580 = *v547;
                                                                                                                                                                    if (v580 == 216)
                                                                                                                                                                    {
                                                                                                                                                                      break;
                                                                                                                                                                    }

                                                                                                                                                                    if (v580 != 208 || v547[1] != 5)
                                                                                                                                                                    {
                                                                                                                                                                      goto LABEL_2;
                                                                                                                                                                    }
                                                                                                                                                                  }

                                                                                                                                                                  if (v547[1] == 5)
                                                                                                                                                                  {
                                                                                                                                                                    while (1)
                                                                                                                                                                    {
                                                                                                                                                                      v137 = (v547 + 2);
                                                                                                                                                                      *(a2 + 1) = v137;
LABEL_1611:
                                                                                                                                                                      v767 = 0;
                                                                                                                                                                      if (v137 >= v14 || *v137 < 0)
                                                                                                                                                                      {
                                                                                                                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                                        {
                                                                                                                                                                          return 0;
                                                                                                                                                                        }
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v767 = *v137;
                                                                                                                                                                        *(a2 + 1) = v137 + 1;
                                                                                                                                                                      }

                                                                                                                                                                      v581 = *(this + 178);
                                                                                                                                                                      if (v581 == *(this + 179))
                                                                                                                                                                      {
                                                                                                                                                                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 88, v581 + 1);
                                                                                                                                                                        v581 = *(this + 178);
                                                                                                                                                                      }

                                                                                                                                                                      v582 = v767;
                                                                                                                                                                      v583 = *(this + 88);
                                                                                                                                                                      *(this + 178) = v581 + 1;
                                                                                                                                                                      *(v583 + 4 * v581) = v582;
                                                                                                                                                                      v584 = *(this + 179) - *(this + 178);
                                                                                                                                                                      if (v584 >= 1)
                                                                                                                                                                      {
                                                                                                                                                                        v585 = v584 + 1;
                                                                                                                                                                        do
                                                                                                                                                                        {
                                                                                                                                                                          v586 = *(a2 + 1);
                                                                                                                                                                          v587 = *(a2 + 2);
                                                                                                                                                                          if (v587 - v586 < 2 || *v586 != 216 || v586[1] != 5)
                                                                                                                                                                          {
                                                                                                                                                                            break;
                                                                                                                                                                          }

                                                                                                                                                                          *(a2 + 1) = v586 + 2;
                                                                                                                                                                          if ((v586 + 2) >= v587 || v586[2] < 0)
                                                                                                                                                                          {
                                                                                                                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                                            {
                                                                                                                                                                              return 0;
                                                                                                                                                                            }
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v767 = v586[2];
                                                                                                                                                                            *(a2 + 1) = v586 + 3;
                                                                                                                                                                          }

                                                                                                                                                                          v588 = *(this + 178);
                                                                                                                                                                          if (v588 >= *(this + 179))
                                                                                                                                                                          {
                                                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                                                            v588 = *(this + 178);
                                                                                                                                                                          }

                                                                                                                                                                          v589 = v767;
                                                                                                                                                                          v590 = *(this + 88);
                                                                                                                                                                          *(this + 178) = v588 + 1;
                                                                                                                                                                          *(v590 + 4 * v588) = v589;
                                                                                                                                                                          --v585;
                                                                                                                                                                        }

                                                                                                                                                                        while (v585 > 1);
                                                                                                                                                                      }

LABEL_1629:
                                                                                                                                                                      v547 = *(a2 + 1);
                                                                                                                                                                      v14 = *(a2 + 2);
                                                                                                                                                                      if (v14 - v547 < 2)
                                                                                                                                                                      {
                                                                                                                                                                        goto LABEL_2;
                                                                                                                                                                      }

                                                                                                                                                                      v591 = *v547;
                                                                                                                                                                      if (v591 == 224)
                                                                                                                                                                      {
                                                                                                                                                                        break;
                                                                                                                                                                      }

                                                                                                                                                                      if (v591 != 216 || v547[1] != 5)
                                                                                                                                                                      {
                                                                                                                                                                        goto LABEL_2;
                                                                                                                                                                      }
                                                                                                                                                                    }

                                                                                                                                                                    if (v547[1] == 5)
                                                                                                                                                                    {
                                                                                                                                                                      while (1)
                                                                                                                                                                      {
                                                                                                                                                                        v134 = (v547 + 2);
                                                                                                                                                                        *(a2 + 1) = v134;
LABEL_1636:
                                                                                                                                                                        v767 = 0;
                                                                                                                                                                        if (v134 >= v14 || *v134 < 0)
                                                                                                                                                                        {
                                                                                                                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                                          {
                                                                                                                                                                            return 0;
                                                                                                                                                                          }
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v767 = *v134;
                                                                                                                                                                          *(a2 + 1) = v134 + 1;
                                                                                                                                                                        }

                                                                                                                                                                        v592 = *(this + 184);
                                                                                                                                                                        if (v592 == *(this + 185))
                                                                                                                                                                        {
                                                                                                                                                                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 91, v592 + 1);
                                                                                                                                                                          v592 = *(this + 184);
                                                                                                                                                                        }

                                                                                                                                                                        v593 = v767;
                                                                                                                                                                        v594 = *(this + 91);
                                                                                                                                                                        *(this + 184) = v592 + 1;
                                                                                                                                                                        *(v594 + 4 * v592) = v593;
                                                                                                                                                                        v595 = *(this + 185) - *(this + 184);
                                                                                                                                                                        if (v595 >= 1)
                                                                                                                                                                        {
                                                                                                                                                                          v596 = v595 + 1;
                                                                                                                                                                          do
                                                                                                                                                                          {
                                                                                                                                                                            v597 = *(a2 + 1);
                                                                                                                                                                            v598 = *(a2 + 2);
                                                                                                                                                                            if (v598 - v597 < 2 || *v597 != 224 || v597[1] != 5)
                                                                                                                                                                            {
                                                                                                                                                                              break;
                                                                                                                                                                            }

                                                                                                                                                                            *(a2 + 1) = v597 + 2;
                                                                                                                                                                            if ((v597 + 2) >= v598 || v597[2] < 0)
                                                                                                                                                                            {
                                                                                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                                              {
                                                                                                                                                                                return 0;
                                                                                                                                                                              }
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v767 = v597[2];
                                                                                                                                                                              *(a2 + 1) = v597 + 3;
                                                                                                                                                                            }

                                                                                                                                                                            v599 = *(this + 184);
                                                                                                                                                                            if (v599 >= *(this + 185))
                                                                                                                                                                            {
                                                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                                                              v599 = *(this + 184);
                                                                                                                                                                            }

                                                                                                                                                                            v600 = v767;
                                                                                                                                                                            v601 = *(this + 91);
                                                                                                                                                                            *(this + 184) = v599 + 1;
                                                                                                                                                                            *(v601 + 4 * v599) = v600;
                                                                                                                                                                            --v596;
                                                                                                                                                                          }

                                                                                                                                                                          while (v596 > 1);
                                                                                                                                                                        }

LABEL_1654:
                                                                                                                                                                        v547 = *(a2 + 1);
                                                                                                                                                                        v14 = *(a2 + 2);
                                                                                                                                                                        if (v14 - v547 < 2)
                                                                                                                                                                        {
                                                                                                                                                                          goto LABEL_2;
                                                                                                                                                                        }

                                                                                                                                                                        v602 = *v547;
                                                                                                                                                                        if (v602 == 232)
                                                                                                                                                                        {
                                                                                                                                                                          break;
                                                                                                                                                                        }

                                                                                                                                                                        if (v602 != 224 || v547[1] != 5)
                                                                                                                                                                        {
                                                                                                                                                                          goto LABEL_2;
                                                                                                                                                                        }
                                                                                                                                                                      }

                                                                                                                                                                      if (v547[1] == 5)
                                                                                                                                                                      {
                                                                                                                                                                        while (1)
                                                                                                                                                                        {
                                                                                                                                                                          v140 = (v547 + 2);
                                                                                                                                                                          *(a2 + 1) = v140;
LABEL_1661:
                                                                                                                                                                          v767 = 0;
                                                                                                                                                                          if (v140 >= v14 || *v140 < 0)
                                                                                                                                                                          {
                                                                                                                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                                            {
                                                                                                                                                                              return 0;
                                                                                                                                                                            }
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v767 = *v140;
                                                                                                                                                                            *(a2 + 1) = v140 + 1;
                                                                                                                                                                          }

                                                                                                                                                                          v603 = *(this + 188);
                                                                                                                                                                          if (v603 == *(this + 189))
                                                                                                                                                                          {
                                                                                                                                                                            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 93, v603 + 1);
                                                                                                                                                                            v603 = *(this + 188);
                                                                                                                                                                          }

                                                                                                                                                                          v604 = v767;
                                                                                                                                                                          v605 = *(this + 93);
                                                                                                                                                                          *(this + 188) = v603 + 1;
                                                                                                                                                                          *(v605 + 4 * v603) = v604;
                                                                                                                                                                          v606 = *(this + 189) - *(this + 188);
                                                                                                                                                                          if (v606 >= 1)
                                                                                                                                                                          {
                                                                                                                                                                            v607 = v606 + 1;
                                                                                                                                                                            do
                                                                                                                                                                            {
                                                                                                                                                                              v608 = *(a2 + 1);
                                                                                                                                                                              v609 = *(a2 + 2);
                                                                                                                                                                              if (v609 - v608 < 2 || *v608 != 232 || v608[1] != 5)
                                                                                                                                                                              {
                                                                                                                                                                                break;
                                                                                                                                                                              }

                                                                                                                                                                              *(a2 + 1) = v608 + 2;
                                                                                                                                                                              if ((v608 + 2) >= v609 || v608[2] < 0)
                                                                                                                                                                              {
                                                                                                                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                                                {
                                                                                                                                                                                  return 0;
                                                                                                                                                                                }
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v767 = v608[2];
                                                                                                                                                                                *(a2 + 1) = v608 + 3;
                                                                                                                                                                              }

                                                                                                                                                                              v610 = *(this + 188);
                                                                                                                                                                              if (v610 >= *(this + 189))
                                                                                                                                                                              {
                                                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                                                                v610 = *(this + 188);
                                                                                                                                                                              }

                                                                                                                                                                              v611 = v767;
                                                                                                                                                                              v612 = *(this + 93);
                                                                                                                                                                              *(this + 188) = v610 + 1;
                                                                                                                                                                              *(v612 + 4 * v610) = v611;
                                                                                                                                                                              --v607;
                                                                                                                                                                            }

                                                                                                                                                                            while (v607 > 1);
                                                                                                                                                                          }

LABEL_1679:
                                                                                                                                                                          v547 = *(a2 + 1);
                                                                                                                                                                          v14 = *(a2 + 2);
                                                                                                                                                                          if (v14 - v547 < 2)
                                                                                                                                                                          {
                                                                                                                                                                            goto LABEL_2;
                                                                                                                                                                          }

                                                                                                                                                                          v613 = *v547;
                                                                                                                                                                          if (v613 == 240)
                                                                                                                                                                          {
                                                                                                                                                                            break;
                                                                                                                                                                          }

                                                                                                                                                                          if (v613 != 232 || v547[1] != 5)
                                                                                                                                                                          {
                                                                                                                                                                            goto LABEL_2;
                                                                                                                                                                          }
                                                                                                                                                                        }

                                                                                                                                                                        if (v547[1] == 5)
                                                                                                                                                                        {
                                                                                                                                                                          while (1)
                                                                                                                                                                          {
                                                                                                                                                                            v144 = (v547 + 2);
                                                                                                                                                                            *(a2 + 1) = v144;
LABEL_1686:
                                                                                                                                                                            v767 = 0;
                                                                                                                                                                            if (v144 >= v14 || *v144 < 0)
                                                                                                                                                                            {
                                                                                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                                              {
                                                                                                                                                                                return 0;
                                                                                                                                                                              }
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v767 = *v144;
                                                                                                                                                                              *(a2 + 1) = v144 + 1;
                                                                                                                                                                            }

                                                                                                                                                                            v614 = *(this + 192);
                                                                                                                                                                            if (v614 == *(this + 193))
                                                                                                                                                                            {
                                                                                                                                                                              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 95, v614 + 1);
                                                                                                                                                                              v614 = *(this + 192);
                                                                                                                                                                            }

                                                                                                                                                                            v615 = v767;
                                                                                                                                                                            v616 = *(this + 95);
                                                                                                                                                                            *(this + 192) = v614 + 1;
                                                                                                                                                                            *(v616 + 4 * v614) = v615;
                                                                                                                                                                            v617 = *(this + 193) - *(this + 192);
                                                                                                                                                                            if (v617 >= 1)
                                                                                                                                                                            {
                                                                                                                                                                              v618 = v617 + 1;
                                                                                                                                                                              do
                                                                                                                                                                              {
                                                                                                                                                                                v619 = *(a2 + 1);
                                                                                                                                                                                v620 = *(a2 + 2);
                                                                                                                                                                                if (v620 - v619 < 2 || *v619 != 240 || v619[1] != 5)
                                                                                                                                                                                {
                                                                                                                                                                                  break;
                                                                                                                                                                                }

                                                                                                                                                                                *(a2 + 1) = v619 + 2;
                                                                                                                                                                                if ((v619 + 2) >= v620 || v619[2] < 0)
                                                                                                                                                                                {
                                                                                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                                                                                                                                                                                  {
                                                                                                                                                                                    return 0;
                                                                                                                                                                                  }
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  v767 = v619[2];
                                                                                                                                                                                  *(a2 + 1) = v619 + 3;
                                                                                                                                                                                }

                                                                                                                                                                                v621 = *(this + 192);
                                                                                                                                                                                if (v621 >= *(this + 193))
                                                                                                                                                                                {
                                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                                                                                                                                                                                  v621 = *(this + 192);
                                                                                                                                                                                }

                                                                                                                                                                                v622 = v767;
                                                                                                                                                                                v623 = *(this + 95);
                                                                                                                                                                                *(this + 192) = v621 + 1;
                                                                                                                                                                                *(v623 + 4 * v621) = v622;
                                                                                                                                                                                --v618;
                                                                                                                                                                              }

                                                                                                                                                                              while (v618 > 1);
                                                                                                                                                                            }

LABEL_1704:
                                                                                                                                                                            v547 = *(a2 + 1);
                                                                                                                                                                            v14 = *(a2 + 2);
                                                                                                                                                                            if (v14 - v547 < 2)
                                                                                                                                                                            {
                                                                                                                                                                              goto LABEL_2;
                                                                                                                                                                            }

                                                                                                                                                                            v624 = *v547;
                                                                                                                                                                            if (v624 == 248)
                                                                                                                                                                            {
                                                                                                                                                                              break;
                                                                                                                                                                            }

                                                                                                                                                                            if (v624 != 240 || v547[1] != 5)
                                                                                                                                                                            {
                                                                                                                                                                              goto LABEL_2;
                                                                                                                                                                            }
                                                                                                                                                                          }

                                                                                                                                                                          if (v547[1] == 5)
                                                                                                                                                                          {
LABEL_1710:
                                                                                                                                                                            v126 = (v547 + 2);
                                                                                                                                                                            *(a2 + 1) = v126;
                                                                                                                                                                            goto LABEL_1711;
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
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v95 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_519;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v49 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_527;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v100 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_536;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v93 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_545;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v31 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_554;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v33 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_563;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v94 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_572;
      case 0x15u:
        if ((TagFallback & 7) == 0)
        {
          v146 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_581;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 128);
        if (!result)
        {
          return result;
        }

        goto LABEL_599;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v19 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_606;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v22 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_615;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v32 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_624;
      case 0x19u:
        if ((TagFallback & 7) == 0)
        {
          v128 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_633;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 152);
        if (!result)
        {
          return result;
        }

        goto LABEL_651;
      case 0x1Au:
        if ((TagFallback & 7) == 0)
        {
          v119 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_658;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 168);
        if (!result)
        {
          return result;
        }

        goto LABEL_676;
      case 0x1Bu:
        if ((TagFallback & 7) == 0)
        {
          v121 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_683;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 192);
        if (!result)
        {
          return result;
        }

        goto LABEL_701;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v108 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_708;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v110 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_717;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v30 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_726;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v112 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_735;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v115 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_744;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v117 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_753;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v70 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_762;
      case 0x23u:
        if ((TagFallback & 7) == 0)
        {
          v150 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_771;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 232);
        if (!result)
        {
          return result;
        }

        goto LABEL_789;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v26 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_796;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v114 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_805;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v73 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_814;
      case 0x27u:
        if ((TagFallback & 7) == 0)
        {
          v123 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_823;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 256);
        if (!result)
        {
          return result;
        }

        goto LABEL_841;
      case 0x28u:
        if ((TagFallback & 7) == 0)
        {
          v136 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_848;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 272);
        if (!result)
        {
          return result;
        }

        goto LABEL_866;
      case 0x29u:
        if ((TagFallback & 7) == 0)
        {
          v118 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_873;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 296);
        if (!result)
        {
          return result;
        }

        goto LABEL_891;
      case 0x2Au:
        if ((TagFallback & 7) == 0)
        {
          v149 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_898;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 312);
        if (!result)
        {
          return result;
        }

        goto LABEL_916;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v116 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_923;
      case 0x2Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v29 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_932;
      case 0x2Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v106 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_941;
      case 0x2Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v92 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_950;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v90 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_959;
      case 0x30u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v21 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_968;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v23 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_977;
      case 0x32u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v51 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_986;
      case 0x33u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v53 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_995;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v35 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1004;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v25 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1013;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v111 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1022;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v27 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1031;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v74 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1040;
      case 0x39u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v37 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1049;
      case 0x3Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v107 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1058;
      case 0x3Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v105 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1067;
      case 0x3Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v102 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1076;
      case 0x3Du:
        if ((TagFallback & 7) == 0)
        {
          v125 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1085;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 392);
        if (!result)
        {
          return result;
        }

        goto LABEL_1103;
      case 0x3Eu:
        if ((TagFallback & 7) == 0)
        {
          v122 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1110;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 416);
        if (!result)
        {
          return result;
        }

        goto LABEL_1128;
      case 0x3Fu:
        if ((TagFallback & 7) == 0)
        {
          v130 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1135;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 432);
        if (!result)
        {
          return result;
        }

        goto LABEL_1153;
      case 0x40u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v113 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1160;
      case 0x41u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v44 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1169;
      case 0x42u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v34 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1178;
      case 0x43u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v78 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1187;
      case 0x44u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v57 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1196;
      case 0x45u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v65 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1205;
      case 0x46u:
        if ((TagFallback & 7) == 0)
        {
          v138 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1214;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 472);
        if (!result)
        {
          return result;
        }

        goto LABEL_1232;
      case 0x47u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v76 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1239;
      case 0x48u:
        if ((TagFallback & 7) == 0)
        {
          v135 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1248;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 488);
        if (!result)
        {
          return result;
        }

        goto LABEL_1266;
      case 0x49u:
        if ((TagFallback & 7) == 0)
        {
          v143 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1273;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 504);
        if (!result)
        {
          return result;
        }

        goto LABEL_1291;
      case 0x4Au:
        if ((TagFallback & 7) == 0)
        {
          v132 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1298;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 520);
        if (!result)
        {
          return result;
        }

        goto LABEL_1316;
      case 0x4Bu:
        if ((TagFallback & 7) == 0)
        {
          v141 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1323;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 536);
        if (!result)
        {
          return result;
        }

        goto LABEL_1341;
      case 0x4Cu:
        if ((TagFallback & 7) == 0)
        {
          v129 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1348;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 552);
        if (!result)
        {
          return result;
        }

        goto LABEL_1366;
      case 0x4Du:
        if ((TagFallback & 7) == 0)
        {
          v147 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1373;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 568);
        if (!result)
        {
          return result;
        }

        goto LABEL_1391;
      case 0x4Eu:
        if ((TagFallback & 7) == 0)
        {
          v145 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1398;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 584);
        if (!result)
        {
          return result;
        }

        goto LABEL_1416;
      case 0x4Fu:
        if ((TagFallback & 7) == 0)
        {
          v127 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1423;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 600);
        if (!result)
        {
          return result;
        }

        goto LABEL_1441;
      case 0x50u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v104 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1448;
      case 0x51u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v109 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1457;
      case 0x52u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v28 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1466;
      case 0x53u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v54 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1475;
      case 0x54u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v48 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1484;
      case 0x55u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v36 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1493;
      case 0x56u:
        if ((TagFallback & 7) == 0)
        {
          v148 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1502;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 640);
        if (!result)
        {
          return result;
        }

        goto LABEL_1520;
      case 0x57u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v87 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1527;
      case 0x58u:
        if ((TagFallback & 7) == 0)
        {
          v131 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1536;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 656);
        if (!result)
        {
          return result;
        }

        goto LABEL_1554;
      case 0x59u:
        if ((TagFallback & 7) == 0)
        {
          v124 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1561;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 672);
        if (!result)
        {
          return result;
        }

        goto LABEL_1579;
      case 0x5Au:
        if ((TagFallback & 7) == 0)
        {
          v142 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1586;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 688);
        if (!result)
        {
          return result;
        }

        goto LABEL_1604;
      case 0x5Bu:
        if ((TagFallback & 7) == 0)
        {
          v137 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1611;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 704);
        if (!result)
        {
          return result;
        }

        goto LABEL_1629;
      case 0x5Cu:
        if ((TagFallback & 7) == 0)
        {
          v134 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1636;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 728);
        if (!result)
        {
          return result;
        }

        goto LABEL_1654;
      case 0x5Du:
        if ((TagFallback & 7) == 0)
        {
          v140 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1661;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 744);
        if (!result)
        {
          return result;
        }

        goto LABEL_1679;
      case 0x5Eu:
        if ((TagFallback & 7) == 0)
        {
          v144 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_1686;
        }

        if (v13 != 2)
        {
          goto LABEL_339;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 760);
        if (!result)
        {
          return result;
        }

        goto LABEL_1704;
      case 0x5Fu:
        if ((TagFallback & 7) != 0)
        {
          if (v13 != 2)
          {
            goto LABEL_339;
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 776);
          if (!result)
          {
            return result;
          }

LABEL_1729:
          v547 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v14 - v547 >= 2)
          {
            v635 = *v547;
            if (v635 == 128)
            {
              if (v547[1] == 6)
              {
                v39 = (v547 + 2);
                *(a2 + 1) = v39;
LABEL_1736:
                if (v39 >= v14 || (v636 = *v39, (v636 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v765);
                  if (!result)
                  {
                    return result;
                  }

                  v637 = *(a2 + 1);
                  v14 = *(a2 + 2);
                }

                else
                {
                  *v765 = v636;
                  v637 = (v39 + 1);
                  *(a2 + 1) = v637;
                }

                *(this + 237) |= 0x80000000;
                if (v14 - v637 >= 2 && *v637 == 136 && v637[1] == 6)
                {
                  v38 = (v637 + 2);
                  *(a2 + 1) = v38;
LABEL_1745:
                  if (v38 >= v14 || (v638 = *v38, (v638 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v759);
                    if (!result)
                    {
                      return result;
                    }

                    v639 = *(a2 + 1);
                    v14 = *(a2 + 2);
                  }

                  else
                  {
                    *v759 = v638;
                    v639 = (v38 + 1);
                    *(a2 + 1) = v639;
                  }

                  *(this + 238) |= 1u;
                  if (v14 - v639 >= 2 && *v639 == 144 && v639[1] == 6)
                  {
                    v41 = (v639 + 2);
                    *(a2 + 1) = v41;
LABEL_1754:
                    if (v41 >= v14 || (v640 = *v41, (v640 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v755);
                      if (!result)
                      {
                        return result;
                      }

                      v641 = *(a2 + 1);
                      v14 = *(a2 + 2);
                    }

                    else
                    {
                      *v755 = v640;
                      v641 = (v41 + 1);
                      *(a2 + 1) = v641;
                    }

                    *(this + 238) |= 2u;
                    if (v14 - v641 >= 2 && *v641 == 152 && v641[1] == 6)
                    {
                      v47 = (v641 + 2);
                      *(a2 + 1) = v47;
LABEL_1763:
                      if (v47 >= v14 || (v642 = *v47, (v642 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v749);
                        if (!result)
                        {
                          return result;
                        }

                        v643 = *(a2 + 1);
                        v14 = *(a2 + 2);
                      }

                      else
                      {
                        *v749 = v642;
                        v643 = (v47 + 1);
                        *(a2 + 1) = v643;
                      }

                      *(this + 238) |= 4u;
                      if (v14 - v643 >= 2 && *v643 == 160 && v643[1] == 6)
                      {
                        v86 = (v643 + 2);
                        *(a2 + 1) = v86;
LABEL_1772:
                        if (v86 >= v14 || (v644 = *v86, (v644 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v746);
                          if (!result)
                          {
                            return result;
                          }

                          v645 = *(a2 + 1);
                          v14 = *(a2 + 2);
                        }

                        else
                        {
                          *v746 = v644;
                          v645 = (v86 + 1);
                          *(a2 + 1) = v645;
                        }

                        *(this + 238) |= 8u;
                        if (v14 - v645 >= 2 && *v645 == 168 && v645[1] == 6)
                        {
                          v71 = (v645 + 2);
                          *(a2 + 1) = v71;
LABEL_1781:
                          if (v71 >= v14 || (v646 = *v71, (v646 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v740);
                            if (!result)
                            {
                              return result;
                            }

                            v647 = *(a2 + 1);
                            v14 = *(a2 + 2);
                          }

                          else
                          {
                            *v740 = v646;
                            v647 = (v71 + 1);
                            *(a2 + 1) = v647;
                          }

                          *(this + 238) |= 0x10u;
                          if (v14 - v647 >= 2 && *v647 == 176 && v647[1] == 6)
                          {
                            v85 = (v647 + 2);
                            *(a2 + 1) = v85;
LABEL_1790:
                            if (v85 >= v14 || (v648 = *v85, (v648 & 0x80000000) != 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v738);
                              if (!result)
                              {
                                return result;
                              }

                              v649 = *(a2 + 1);
                              v14 = *(a2 + 2);
                            }

                            else
                            {
                              *v738 = v648;
                              v649 = (v85 + 1);
                              *(a2 + 1) = v649;
                            }

                            *(this + 238) |= 0x20u;
                            if (v14 - v649 >= 2 && *v649 == 184 && v649[1] == 6)
                            {
                              v99 = (v649 + 2);
                              *(a2 + 1) = v99;
LABEL_1799:
                              if (v99 >= v14 || (v650 = *v99, (v650 & 0x80000000) != 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v736);
                                if (!result)
                                {
                                  return result;
                                }

                                v651 = *(a2 + 1);
                                v14 = *(a2 + 2);
                              }

                              else
                              {
                                *v736 = v650;
                                v651 = (v99 + 1);
                                *(a2 + 1) = v651;
                              }

                              *(this + 238) |= 0x40u;
                              if (v14 - v651 >= 2 && *v651 == 192 && v651[1] == 6)
                              {
                                v98 = (v651 + 2);
                                *(a2 + 1) = v98;
LABEL_1808:
                                if (v98 >= v14 || (v652 = *v98, (v652 & 0x80000000) != 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v731);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v653 = *(a2 + 1);
                                  v14 = *(a2 + 2);
                                }

                                else
                                {
                                  *v731 = v652;
                                  v653 = (v98 + 1);
                                  *(a2 + 1) = v653;
                                }

                                *(this + 238) |= 0x80u;
                                if (v14 - v653 >= 2 && *v653 == 200 && v653[1] == 6)
                                {
                                  v40 = (v653 + 2);
                                  *(a2 + 1) = v40;
LABEL_1817:
                                  if (v40 >= v14 || (v654 = *v40, (v654 & 0x80000000) != 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v730);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v655 = *(a2 + 1);
                                    v14 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    *v730 = v654;
                                    v655 = (v40 + 1);
                                    *(a2 + 1) = v655;
                                  }

                                  *(this + 238) |= 0x100u;
                                  if (v14 - v655 >= 2 && *v655 == 208 && v655[1] == 6)
                                  {
                                    v101 = (v655 + 2);
                                    *(a2 + 1) = v101;
LABEL_1826:
                                    if (v101 >= v14 || (v656 = *v101, (v656 & 0x80000000) != 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v729);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v657 = *(a2 + 1);
                                      v14 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *v729 = v656;
                                      v657 = (v101 + 1);
                                      *(a2 + 1) = v657;
                                    }

                                    *(this + 238) |= 0x200u;
                                    if (v14 - v657 >= 2 && *v657 == 216 && v657[1] == 6)
                                    {
                                      v60 = (v657 + 2);
                                      *(a2 + 1) = v60;
LABEL_1835:
                                      if (v60 >= v14 || (v658 = *v60, (v658 & 0x80000000) != 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v728);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v659 = *(a2 + 1);
                                        v14 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *v728 = v658;
                                        v659 = (v60 + 1);
                                        *(a2 + 1) = v659;
                                      }

                                      *(this + 238) |= 0x400u;
                                      if (v14 - v659 >= 2 && *v659 == 224 && v659[1] == 6)
                                      {
                                        v61 = (v659 + 2);
                                        *(a2 + 1) = v61;
LABEL_1844:
                                        if (v61 >= v14 || (v660 = *v61, (v660 & 0x80000000) != 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v727);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v661 = *(a2 + 1);
                                          v14 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          *v727 = v660;
                                          v661 = (v61 + 1);
                                          *(a2 + 1) = v661;
                                        }

                                        *(this + 238) |= 0x800u;
                                        if (v14 - v661 >= 2 && *v661 == 232 && v661[1] == 6)
                                        {
                                          v97 = (v661 + 2);
                                          *(a2 + 1) = v97;
LABEL_1853:
                                          if (v97 >= v14 || (v662 = *v97, (v662 & 0x80000000) != 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v726);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v663 = *(a2 + 1);
                                            v14 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            *v726 = v662;
                                            v663 = (v97 + 1);
                                            *(a2 + 1) = v663;
                                          }

                                          *(this + 238) |= 0x1000u;
                                          if (v14 - v663 >= 2 && *v663 == 240 && v663[1] == 6)
                                          {
                                            v91 = (v663 + 2);
                                            *(a2 + 1) = v91;
LABEL_1862:
                                            if (v91 >= v14 || (v664 = *v91, (v664 & 0x80000000) != 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v725);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v665 = *(a2 + 1);
                                              v14 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              *v725 = v664;
                                              v665 = (v91 + 1);
                                              *(a2 + 1) = v665;
                                            }

                                            *(this + 238) |= 0x2000u;
                                            if (v14 - v665 >= 2 && *v665 == 248 && v665[1] == 6)
                                            {
                                              v79 = (v665 + 2);
                                              *(a2 + 1) = v79;
LABEL_1871:
                                              if (v79 >= v14 || (v666 = *v79, (v666 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v724);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v667 = *(a2 + 1);
                                                v14 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                *v724 = v666;
                                                v667 = (v79 + 1);
                                                *(a2 + 1) = v667;
                                              }

                                              *(this + 238) |= 0x4000u;
                                              if (v14 - v667 >= 2 && *v667 == 128 && v667[1] == 7)
                                              {
                                                v75 = (v667 + 2);
                                                *(a2 + 1) = v75;
LABEL_1880:
                                                if (v75 >= v14 || (v668 = *v75, (v668 & 0x80000000) != 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v723);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v669 = *(a2 + 1);
                                                  v14 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *v723 = v668;
                                                  v669 = (v75 + 1);
                                                  *(a2 + 1) = v669;
                                                }

                                                *(this + 238) |= 0x8000u;
                                                if (v14 - v669 >= 2 && *v669 == 136 && v669[1] == 7)
                                                {
                                                  v96 = (v669 + 2);
                                                  *(a2 + 1) = v96;
LABEL_1889:
                                                  if (v96 >= v14 || (v670 = *v96, (v670 & 0x80000000) != 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v722);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v671 = *(a2 + 1);
                                                    v14 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    *v722 = v670;
                                                    v671 = (v96 + 1);
                                                    *(a2 + 1) = v671;
                                                  }

                                                  *(this + 238) |= 0x10000u;
                                                  if (v14 - v671 >= 2 && *v671 == 144 && v671[1] == 7)
                                                  {
                                                    v82 = (v671 + 2);
                                                    *(a2 + 1) = v82;
LABEL_1898:
                                                    if (v82 >= v14 || (v672 = *v82, (v672 & 0x80000000) != 0))
                                                    {
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v721);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v673 = *(a2 + 1);
                                                      v14 = *(a2 + 2);
                                                    }

                                                    else
                                                    {
                                                      *v721 = v672;
                                                      v673 = (v82 + 1);
                                                      *(a2 + 1) = v673;
                                                    }

                                                    *(this + 238) |= 0x20000u;
                                                    if (v14 - v673 >= 2 && *v673 == 152 && v673[1] == 7)
                                                    {
                                                      v72 = (v673 + 2);
                                                      *(a2 + 1) = v72;
LABEL_1907:
                                                      if (v72 >= v14 || (v674 = *v72, (v674 & 0x80000000) != 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v720);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v675 = *(a2 + 1);
                                                        v14 = *(a2 + 2);
                                                      }

                                                      else
                                                      {
                                                        *v720 = v674;
                                                        v675 = (v72 + 1);
                                                        *(a2 + 1) = v675;
                                                      }

                                                      *(this + 238) |= 0x40000u;
                                                      if (v14 - v675 >= 2 && *v675 == 160 && v675[1] == 7)
                                                      {
                                                        v43 = (v675 + 2);
                                                        *(a2 + 1) = v43;
LABEL_1916:
                                                        if (v43 >= v14 || (v676 = *v43, (v676 & 0x80000000) != 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v719);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v677 = *(a2 + 1);
                                                          v14 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          *v719 = v676;
                                                          v677 = (v43 + 1);
                                                          *(a2 + 1) = v677;
                                                        }

                                                        *(this + 238) |= 0x80000u;
                                                        if (v14 - v677 >= 2 && *v677 == 168 && v677[1] == 7)
                                                        {
                                                          v63 = (v677 + 2);
                                                          *(a2 + 1) = v63;
LABEL_1925:
                                                          if (v63 >= v14 || (v678 = *v63, (v678 & 0x80000000) != 0))
                                                          {
                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v718);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v679 = *(a2 + 1);
                                                          }

                                                          else
                                                          {
                                                            *v718 = v678;
                                                            v679 = (v63 + 1);
                                                            *(a2 + 1) = v679;
                                                          }

                                                          *(this + 238) |= 0x100000u;
                                                          v45 = *(a2 + 2);
                                                          if (v45 - v679 >= 2 && *v679 == 176 && v679[1] == 7)
                                                          {
                                                            v46 = (v679 + 2);
                                                            *(a2 + 1) = v46;
LABEL_1934:
                                                            if (v46 >= v45 || (v680 = *v46, (v680 & 0x80000000) != 0))
                                                            {
                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v717);
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v681 = *(a2 + 1);
                                                              v45 = *(a2 + 2);
                                                            }

                                                            else
                                                            {
                                                              *v717 = v680;
                                                              v681 = (v46 + 1);
                                                              *(a2 + 1) = v681;
                                                            }

                                                            *(this + 238) |= 0x200000u;
                                                            if (v45 - v681 >= 2 && *v681 == 184 && v681[1] == 7)
                                                            {
                                                              v80 = (v681 + 2);
                                                              *(a2 + 1) = v80;
LABEL_1943:
                                                              if (v80 >= v45 || (v682 = *v80, (v682 & 0x80000000) != 0))
                                                              {
                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v716);
                                                                if (!result)
                                                                {
                                                                  return result;
                                                                }

                                                                v683 = *(a2 + 1);
                                                                v45 = *(a2 + 2);
                                                              }

                                                              else
                                                              {
                                                                *v716 = v682;
                                                                v683 = (v80 + 1);
                                                                *(a2 + 1) = v683;
                                                              }

                                                              *(this + 238) |= 0x400000u;
                                                              if (v45 - v683 >= 2 && *v683 == 192 && v683[1] == 7)
                                                              {
                                                                v58 = (v683 + 2);
                                                                *(a2 + 1) = v58;
LABEL_1952:
                                                                if (v58 >= v45 || (v684 = *v58, (v684 & 0x80000000) != 0))
                                                                {
                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v715);
                                                                  if (!result)
                                                                  {
                                                                    return result;
                                                                  }

                                                                  v685 = *(a2 + 1);
                                                                  v45 = *(a2 + 2);
                                                                }

                                                                else
                                                                {
                                                                  *v715 = v684;
                                                                  v685 = (v58 + 1);
                                                                  *(a2 + 1) = v685;
                                                                }

                                                                *(this + 238) |= 0x800000u;
                                                                if (v45 - v685 >= 2 && *v685 == 200 && v685[1] == 7)
                                                                {
                                                                  v52 = (v685 + 2);
                                                                  *(a2 + 1) = v52;
LABEL_1961:
                                                                  if (v52 >= v45 || (v686 = *v52, (v686 & 0x80000000) != 0))
                                                                  {
                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v714);
                                                                    if (!result)
                                                                    {
                                                                      return result;
                                                                    }

                                                                    v687 = *(a2 + 1);
                                                                    v45 = *(a2 + 2);
                                                                  }

                                                                  else
                                                                  {
                                                                    *v714 = v686;
                                                                    v687 = (v52 + 1);
                                                                    *(a2 + 1) = v687;
                                                                  }

                                                                  *(this + 238) |= 0x1000000u;
                                                                  if (v45 - v687 >= 2 && *v687 == 208 && v687[1] == 7)
                                                                  {
                                                                    v83 = (v687 + 2);
                                                                    *(a2 + 1) = v83;
LABEL_1970:
                                                                    if (v83 >= v45 || (v688 = *v83, (v688 & 0x80000000) != 0))
                                                                    {
                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v713);
                                                                      if (!result)
                                                                      {
                                                                        return result;
                                                                      }

                                                                      v689 = *(a2 + 1);
                                                                      v45 = *(a2 + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      *v713 = v688;
                                                                      v689 = (v83 + 1);
                                                                      *(a2 + 1) = v689;
                                                                    }

                                                                    *(this + 238) |= 0x2000000u;
                                                                    if (v45 - v689 >= 2 && *v689 == 216 && v689[1] == 7)
                                                                    {
                                                                      v59 = (v689 + 2);
                                                                      *(a2 + 1) = v59;
LABEL_1979:
                                                                      if (v59 >= v45 || (v690 = *v59, (v690 & 0x80000000) != 0))
                                                                      {
                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v712);
                                                                        if (!result)
                                                                        {
                                                                          return result;
                                                                        }

                                                                        v691 = *(a2 + 1);
                                                                        v45 = *(a2 + 2);
                                                                      }

                                                                      else
                                                                      {
                                                                        *v712 = v690;
                                                                        v691 = (v59 + 1);
                                                                        *(a2 + 1) = v691;
                                                                      }

                                                                      *(this + 238) |= 0x4000000u;
                                                                      if (v45 - v691 >= 2 && *v691 == 224 && v691[1] == 7)
                                                                      {
                                                                        v84 = (v691 + 2);
                                                                        *(a2 + 1) = v84;
LABEL_1988:
                                                                        if (v84 >= v45 || (v692 = *v84, (v692 & 0x80000000) != 0))
                                                                        {
                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v711);
                                                                          if (!result)
                                                                          {
                                                                            return result;
                                                                          }

                                                                          v693 = *(a2 + 1);
                                                                          v45 = *(a2 + 2);
                                                                        }

                                                                        else
                                                                        {
                                                                          *v711 = v692;
                                                                          v693 = (v84 + 1);
                                                                          *(a2 + 1) = v693;
                                                                        }

                                                                        *(this + 238) |= 0x8000000u;
                                                                        if (v45 - v693 >= 2 && *v693 == 232 && v693[1] == 7)
                                                                        {
                                                                          v67 = (v693 + 2);
                                                                          *(a2 + 1) = v67;
LABEL_1997:
                                                                          if (v67 >= v45 || (v694 = *v67, (v694 & 0x80000000) != 0))
                                                                          {
                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v710);
                                                                            if (!result)
                                                                            {
                                                                              return result;
                                                                            }

                                                                            v695 = *(a2 + 1);
                                                                            v45 = *(a2 + 2);
                                                                          }

                                                                          else
                                                                          {
                                                                            *v710 = v694;
                                                                            v695 = (v67 + 1);
                                                                            *(a2 + 1) = v695;
                                                                          }

                                                                          *(this + 238) |= 0x10000000u;
                                                                          if (v45 - v695 >= 2 && *v695 == 240 && v695[1] == 7)
                                                                          {
                                                                            v81 = (v695 + 2);
                                                                            *(a2 + 1) = v81;
LABEL_2006:
                                                                            if (v81 >= v45 || (v696 = *v81, (v696 & 0x80000000) != 0))
                                                                            {
                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v4);
                                                                              if (!result)
                                                                              {
                                                                                return result;
                                                                              }

                                                                              v697 = *(a2 + 1);
                                                                              v45 = *(a2 + 2);
                                                                            }

                                                                            else
                                                                            {
                                                                              *v4 = v696;
                                                                              v697 = (v81 + 1);
                                                                              *(a2 + 1) = v697;
                                                                            }

                                                                            *(this + 238) |= 0x20000000u;
                                                                            if (v45 - v697 >= 2 && *v697 == 248 && v697[1] == 7)
                                                                            {
                                                                              v77 = (v697 + 2);
                                                                              *(a2 + 1) = v77;
LABEL_2015:
                                                                              if (v77 >= v45 || (v698 = *v77, (v698 & 0x80000000) != 0))
                                                                              {
                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
                                                                                if (!result)
                                                                                {
                                                                                  return result;
                                                                                }

                                                                                v699 = *(a2 + 1);
                                                                                v45 = *(a2 + 2);
                                                                              }

                                                                              else
                                                                              {
                                                                                *v5 = v698;
                                                                                v699 = (v77 + 1);
                                                                                *(a2 + 1) = v699;
                                                                              }

                                                                              *(this + 238) |= 0x40000000u;
                                                                              if (v45 - v699 >= 2 && *v699 == 128 && v699[1] == 8)
                                                                              {
                                                                                v55 = (v699 + 2);
                                                                                *(a2 + 1) = v55;
LABEL_2024:
                                                                                if (v55 >= v45 || (v700 = *v55, (v700 & 0x80000000) != 0))
                                                                                {
                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                                                                                  if (!result)
                                                                                  {
                                                                                    return result;
                                                                                  }

                                                                                  v701 = *(a2 + 1);
                                                                                  v45 = *(a2 + 2);
                                                                                }

                                                                                else
                                                                                {
                                                                                  *v6 = v700;
                                                                                  v701 = (v55 + 1);
                                                                                  *(a2 + 1) = v701;
                                                                                }

                                                                                *(this + 238) |= 0x80000000;
                                                                                if (v45 - v701 >= 2 && *v701 == 136 && v701[1] == 8)
                                                                                {
                                                                                  v66 = (v701 + 2);
                                                                                  *(a2 + 1) = v66;
LABEL_2033:
                                                                                  if (v66 >= v45 || (v702 = *v66, (v702 & 0x80000000) != 0))
                                                                                  {
                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
                                                                                    if (!result)
                                                                                    {
                                                                                      return result;
                                                                                    }

                                                                                    v703 = *(a2 + 1);
                                                                                    v45 = *(a2 + 2);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    *v7 = v702;
                                                                                    v703 = (v66 + 1);
                                                                                    *(a2 + 1) = v703;
                                                                                  }

                                                                                  *(this + 239) |= 1u;
                                                                                  if (v45 - v703 >= 2 && *v703 == 144 && v703[1] == 8)
                                                                                  {
                                                                                    v62 = (v703 + 2);
                                                                                    *(a2 + 1) = v62;
LABEL_2042:
                                                                                    if (v62 >= v45 || (v704 = *v62, (v704 & 0x80000000) != 0))
                                                                                    {
                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
                                                                                      if (!result)
                                                                                      {
                                                                                        return result;
                                                                                      }

                                                                                      v705 = *(a2 + 1);
                                                                                      v45 = *(a2 + 2);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      *v8 = v704;
                                                                                      v705 = (v62 + 1);
                                                                                      *(a2 + 1) = v705;
                                                                                    }

                                                                                    *(this + 239) |= 2u;
                                                                                    if (v45 - v705 >= 2 && *v705 == 152 && v705[1] == 8)
                                                                                    {
                                                                                      v68 = (v705 + 2);
                                                                                      *(a2 + 1) = v68;
LABEL_2051:
                                                                                      if (v68 >= v45 || (v706 = *v68, (v706 & 0x80000000) != 0))
                                                                                      {
                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
                                                                                        if (!result)
                                                                                        {
                                                                                          return result;
                                                                                        }

                                                                                        v707 = *(a2 + 1);
                                                                                        v45 = *(a2 + 2);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        *v9 = v706;
                                                                                        v707 = (v68 + 1);
                                                                                        *(a2 + 1) = v707;
                                                                                      }

                                                                                      *(this + 239) |= 4u;
                                                                                      if (v45 - v707 >= 2 && *v707 == 160 && v707[1] == 8)
                                                                                      {
                                                                                        v69 = (v707 + 2);
                                                                                        *(a2 + 1) = v69;
LABEL_2060:
                                                                                        if (v69 >= v45 || (v708 = *v69, (v708 & 0x80000000) != 0))
                                                                                        {
                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v10);
                                                                                          if (!result)
                                                                                          {
                                                                                            return result;
                                                                                          }

                                                                                          v709 = *(a2 + 1);
                                                                                          v45 = *(a2 + 2);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          *v10 = v708;
                                                                                          v709 = v69 + 1;
                                                                                          *(a2 + 1) = v709;
                                                                                        }

                                                                                        *(this + 239) |= 8u;
                                                                                        if (v709 == v45 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

            else if (v635 == 248 && v547[1] == 5)
            {
              goto LABEL_1710;
            }
          }

          continue;
        }

        v126 = *(a2 + 1);
        v14 = *(a2 + 2);
LABEL_1711:
        v767 = 0;
        if (v126 < v14 && (*v126 & 0x80000000) == 0)
        {
          v767 = *v126;
          *(a2 + 1) = v126 + 1;
          goto LABEL_1715;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
        {
LABEL_1715:
          v625 = *(this + 196);
          if (v625 == *(this + 197))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 97, v625 + 1);
            v625 = *(this + 196);
          }

          v626 = v767;
          v627 = *(this + 97);
          *(this + 196) = v625 + 1;
          *(v627 + 4 * v625) = v626;
          v628 = *(this + 197) - *(this + 196);
          if (v628 >= 1)
          {
            v629 = v628 + 1;
            do
            {
              v630 = *(a2 + 1);
              v631 = *(a2 + 2);
              if (v631 - v630 < 2 || *v630 != 248 || v630[1] != 5)
              {
                break;
              }

              *(a2 + 1) = v630 + 2;
              if ((v630 + 2) >= v631 || v630[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v767))
                {
                  return 0;
                }
              }

              else
              {
                v767 = v630[2];
                *(a2 + 1) = v630 + 3;
              }

              v632 = *(this + 196);
              if (v632 >= *(this + 197))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v768);
                v632 = *(this + 196);
              }

              v633 = v767;
              v634 = *(this + 97);
              *(this + 196) = v632 + 1;
              *(v634 + 4 * v632) = v633;
              --v629;
            }

            while (v629 > 1);
          }

          goto LABEL_1729;
        }

        return 0;
      case 0x60u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v39 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1736;
      case 0x61u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v38 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1745;
      case 0x62u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v41 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1754;
      case 0x63u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v47 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1763;
      case 0x64u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v86 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1772;
      case 0x65u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v71 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1781;
      case 0x66u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v85 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1790;
      case 0x67u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v99 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1799;
      case 0x68u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v98 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1808;
      case 0x69u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v40 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1817;
      case 0x6Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v101 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1826;
      case 0x6Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v60 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1835;
      case 0x6Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v61 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1844;
      case 0x6Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v97 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1853;
      case 0x6Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v91 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1862;
      case 0x6Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v79 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1871;
      case 0x70u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v75 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1880;
      case 0x71u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v96 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1889;
      case 0x72u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v82 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1898;
      case 0x73u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v72 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1907;
      case 0x74u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v43 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1916;
      case 0x75u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v63 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1925;
      case 0x76u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v46 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1934;
      case 0x77u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v80 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1943;
      case 0x78u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v58 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1952;
      case 0x79u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v52 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1961;
      case 0x7Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v83 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1970;
      case 0x7Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v59 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1979;
      case 0x7Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v84 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1988;
      case 0x7Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v67 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_1997;
      case 0x7Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v81 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_2006;
      case 0x7Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v77 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_2015;
      case 0x80u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v55 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_2024;
      case 0x81u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v66 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_2033;
      case 0x82u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v62 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_2042;
      case 0x83u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v68 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_2051;
      case 0x84u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_339;
        }

        v69 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_2060;
      default:
        goto LABEL_339;
    }
  }
}