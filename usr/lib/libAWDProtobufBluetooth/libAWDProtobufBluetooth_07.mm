uint64_t awd::metrics::BluetoothAccessoryDailyUsage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 940);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 940);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_215;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 940);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_216;
  }

LABEL_215:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 940);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_217;
  }

LABEL_216:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 940);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_218;
  }

LABEL_217:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 940);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_219;
  }

LABEL_218:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 940);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_220;
  }

LABEL_219:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 940);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_221;
  }

LABEL_220:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 940);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_221:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  if ((*(v5 + 940) & 0x200) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 64), a2, a4);
  }

LABEL_12:
  if (*(v5 + 56) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(*(v5 + 48) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 56));
  }

  if (*(v5 + 80) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(*(v5 + 72) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 80));
  }

  if (*(v5 + 96) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(*(v5 + 88) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 96));
  }

  v10 = *(v5 + 940);
  if ((v10 & 0x2000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 68), a2, a4);
    v10 = *(v5 + 940);
    if ((v10 & 0x4000) == 0)
    {
LABEL_23:
      if ((v10 & 0x8000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_225;
    }
  }

  else if ((v10 & 0x4000) == 0)
  {
    goto LABEL_23;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 104), a2, a4);
  v10 = *(v5 + 940);
  if ((v10 & 0x8000) == 0)
  {
LABEL_24:
    if ((v10 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_226;
  }

LABEL_225:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 108), a2, a4);
  v10 = *(v5 + 940);
  if ((v10 & 0x10000) == 0)
  {
LABEL_25:
    if ((v10 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_227;
  }

LABEL_226:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x11, *(v5 + 112), a2, a4);
  v10 = *(v5 + 940);
  if ((v10 & 0x20000) == 0)
  {
LABEL_26:
    if ((v10 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_228;
  }

LABEL_227:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x12, *(v5 + 116), a2, a4);
  v10 = *(v5 + 940);
  if ((v10 & 0x40000) == 0)
  {
LABEL_27:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_228:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x13, *(v5 + 120), a2, a4);
  if ((*(v5 + 940) & 0x80000) != 0)
  {
LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x14, *(v5 + 124), a2, a4);
  }

LABEL_29:
  if (*(v5 + 136) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(*(v5 + 128) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 136));
  }

  v12 = *(v5 + 940);
  if ((v12 & 0x200000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 144), a2, a4);
    v12 = *(v5 + 940);
    if ((v12 & 0x400000) == 0)
    {
LABEL_34:
      if ((v12 & 0x800000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else if ((v12 & 0x400000) == 0)
  {
    goto LABEL_34;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 148), a2, a4);
  if ((*(v5 + 940) & 0x800000) != 0)
  {
LABEL_35:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 184), a2, a4);
  }

LABEL_36:
  if (*(v5 + 160) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(*(v5 + 152) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 160));
  }

  if (*(v5 + 176) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(*(v5 + 168) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 176));
  }

  if (*(v5 + 200) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(*(v5 + 192) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 200));
  }

  v16 = *(v5 + 940);
  if ((v16 & 0x8000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 188), a2, a4);
    v16 = *(v5 + 940);
    if ((v16 & 0x10000000) == 0)
    {
LABEL_47:
      if ((v16 & 0x20000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_235;
    }
  }

  else if ((v16 & 0x10000000) == 0)
  {
    goto LABEL_47;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(v5 + 208), a2, a4);
  v16 = *(v5 + 940);
  if ((v16 & 0x20000000) == 0)
  {
LABEL_48:
    if ((v16 & 0x40000000) == 0)
    {
      goto LABEL_49;
    }

LABEL_236:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x1F, *(v5 + 216), a2, a4);
    if ((*(v5 + 940) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_237;
  }

LABEL_235:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 212), a2, a4);
  v16 = *(v5 + 940);
  if ((v16 & 0x40000000) != 0)
  {
    goto LABEL_236;
  }

LABEL_49:
  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

LABEL_237:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x20, *(v5 + 220), a2, a4);
LABEL_50:
  v17 = *(v5 + 944);
  if (v17)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x21, *(v5 + 224), a2, a4);
    v17 = *(v5 + 944);
  }

  if ((v17 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x22, *(v5 + 228), a2, a4);
  }

  if (*(v5 + 240) >= 1)
  {
    v18 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(*(v5 + 232) + 4 * v18++), a2, a4);
    }

    while (v18 < *(v5 + 240));
  }

  v19 = *(v5 + 944);
  if ((v19 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 248), a2, a4);
    v19 = *(v5 + 944);
    if ((v19 & 0x10) == 0)
    {
LABEL_59:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }
  }

  else if ((v19 & 0x10) == 0)
  {
    goto LABEL_59;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, *(v5 + 252), a2, a4);
  if ((*(v5 + 944) & 0x20) != 0)
  {
LABEL_60:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x26, *(v5 + 288), a2, a4);
  }

LABEL_61:
  if (*(v5 + 264) >= 1)
  {
    v20 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(*(v5 + 256) + 4 * v20++), a2, a4);
    }

    while (v20 < *(v5 + 264));
  }

  if (*(v5 + 280) >= 1)
  {
    v21 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(*(v5 + 272) + 4 * v21++), a2, a4);
    }

    while (v21 < *(v5 + 280));
  }

  if (*(v5 + 304) >= 1)
  {
    v22 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(*(v5 + 296) + 4 * v22++), a2, a4);
    }

    while (v22 < *(v5 + 304));
  }

  if (*(v5 + 320) >= 1)
  {
    v23 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2A, *(*(v5 + 312) + 4 * v23++), a2, a4);
    }

    while (v23 < *(v5 + 320));
  }

  v24 = *(v5 + 944);
  if ((v24 & 0x400) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, *(v5 + 292), a2, a4);
    v24 = *(v5 + 944);
    if ((v24 & 0x800) == 0)
    {
LABEL_75:
      if ((v24 & 0x1000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_243;
    }
  }

  else if ((v24 & 0x800) == 0)
  {
    goto LABEL_75;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2C, *(v5 + 328), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x1000) == 0)
  {
LABEL_76:
    if ((v24 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_244;
  }

LABEL_243:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2D, *(v5 + 332), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x2000) == 0)
  {
LABEL_77:
    if ((v24 & 0x4000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_245;
  }

LABEL_244:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2E, *(v5 + 336), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x4000) == 0)
  {
LABEL_78:
    if ((v24 & 0x8000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_246;
  }

LABEL_245:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2F, *(v5 + 340), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x8000) == 0)
  {
LABEL_79:
    if ((v24 & 0x10000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_247;
  }

LABEL_246:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x30, *(v5 + 344), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x10000) == 0)
  {
LABEL_80:
    if ((v24 & 0x20000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_248;
  }

LABEL_247:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x31, *(v5 + 348), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x20000) == 0)
  {
LABEL_81:
    if ((v24 & 0x40000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_249;
  }

LABEL_248:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x32, *(v5 + 352), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x40000) == 0)
  {
LABEL_82:
    if ((v24 & 0x80000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_250;
  }

LABEL_249:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x33, *(v5 + 356), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x80000) == 0)
  {
LABEL_83:
    if ((v24 & 0x100000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_251;
  }

LABEL_250:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x34, *(v5 + 360), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x100000) == 0)
  {
LABEL_84:
    if ((v24 & 0x200000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_252;
  }

LABEL_251:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x35, *(v5 + 364), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x200000) == 0)
  {
LABEL_85:
    if ((v24 & 0x400000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_253;
  }

LABEL_252:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x36, *(v5 + 368), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x400000) == 0)
  {
LABEL_86:
    if ((v24 & 0x800000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_254;
  }

LABEL_253:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x37, *(v5 + 372), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x800000) == 0)
  {
LABEL_87:
    if ((v24 & 0x1000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_255;
  }

LABEL_254:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x38, *(v5 + 376), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x1000000) == 0)
  {
LABEL_88:
    if ((v24 & 0x2000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_256;
  }

LABEL_255:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x39, *(v5 + 380), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x2000000) == 0)
  {
LABEL_89:
    if ((v24 & 0x4000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_257;
  }

LABEL_256:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3A, *(v5 + 384), a2, a4);
  v24 = *(v5 + 944);
  if ((v24 & 0x4000000) == 0)
  {
LABEL_90:
    if ((v24 & 0x8000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

LABEL_257:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3B, *(v5 + 388), a2, a4);
  if ((*(v5 + 944) & 0x8000000) != 0)
  {
LABEL_91:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3C, *(v5 + 408), a2, a4);
  }

LABEL_92:
  if (*(v5 + 400) >= 1)
  {
    v25 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3D, *(*(v5 + 392) + 4 * v25++), a2, a4);
    }

    while (v25 < *(v5 + 400));
  }

  if (*(v5 + 424) >= 1)
  {
    v26 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3E, *(*(v5 + 416) + 4 * v26++), a2, a4);
    }

    while (v26 < *(v5 + 424));
  }

  if (*(v5 + 440) >= 1)
  {
    v27 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3F, *(*(v5 + 432) + 4 * v27++), a2, a4);
    }

    while (v27 < *(v5 + 440));
  }

  if ((*(v5 + 944) & 0x80000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x40, *(v5 + 412), a2, a4);
  }

  v28 = *(v5 + 948);
  if (v28)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x41, *(v5 + 448), a2, a4);
    v28 = *(v5 + 948);
    if ((v28 & 2) == 0)
    {
LABEL_105:
      if ((v28 & 4) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_261;
    }
  }

  else if ((v28 & 2) == 0)
  {
    goto LABEL_105;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x42, *(v5 + 452), a2, a4);
  v28 = *(v5 + 948);
  if ((v28 & 4) == 0)
  {
LABEL_106:
    if ((v28 & 8) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_262;
  }

LABEL_261:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x43, *(v5 + 456), a2, a4);
  v28 = *(v5 + 948);
  if ((v28 & 8) == 0)
  {
LABEL_107:
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_262:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x44, *(v5 + 460), a2, a4);
  if ((*(v5 + 948) & 0x10) != 0)
  {
LABEL_108:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x45, *(v5 + 464), a2, a4);
  }

LABEL_109:
  if (*(v5 + 480) >= 1)
  {
    v29 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x46, *(*(v5 + 472) + 4 * v29++), a2, a4);
    }

    while (v29 < *(v5 + 480));
  }

  if ((*(v5 + 948) & 0x40) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x47, *(v5 + 468), a2, a4);
  }

  if (*(v5 + 496) >= 1)
  {
    v30 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x48, *(*(v5 + 488) + 4 * v30++), a2, a4);
    }

    while (v30 < *(v5 + 496));
  }

  if (*(v5 + 512) >= 1)
  {
    v31 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x49, *(*(v5 + 504) + 4 * v31++), a2, a4);
    }

    while (v31 < *(v5 + 512));
  }

  if (*(v5 + 528) >= 1)
  {
    v32 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4A, *(*(v5 + 520) + 4 * v32++), a2, a4);
    }

    while (v32 < *(v5 + 528));
  }

  if (*(v5 + 544) >= 1)
  {
    v33 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4B, *(*(v5 + 536) + 4 * v33++), a2, a4);
    }

    while (v33 < *(v5 + 544));
  }

  if (*(v5 + 560) >= 1)
  {
    v34 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4C, *(*(v5 + 552) + 4 * v34++), a2, a4);
    }

    while (v34 < *(v5 + 560));
  }

  if (*(v5 + 576) >= 1)
  {
    v35 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4D, *(*(v5 + 568) + 4 * v35++), a2, a4);
    }

    while (v35 < *(v5 + 576));
  }

  if (*(v5 + 592) >= 1)
  {
    v36 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4E, *(*(v5 + 584) + 4 * v36++), a2, a4);
    }

    while (v36 < *(v5 + 592));
  }

  if (*(v5 + 608) >= 1)
  {
    v37 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4F, *(*(v5 + 600) + 4 * v37++), a2, a4);
    }

    while (v37 < *(v5 + 608));
  }

  v38 = *(v5 + 948);
  if ((v38 & 0x8000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x50, *(v5 + 616), a2, a4);
    v38 = *(v5 + 948);
    if ((v38 & 0x10000) == 0)
    {
LABEL_140:
      if ((v38 & 0x20000) == 0)
      {
        goto LABEL_141;
      }

      goto LABEL_266;
    }
  }

  else if ((v38 & 0x10000) == 0)
  {
    goto LABEL_140;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x51, *(v5 + 620), a2, a4);
  v38 = *(v5 + 948);
  if ((v38 & 0x20000) == 0)
  {
LABEL_141:
    if ((v38 & 0x40000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_267;
  }

LABEL_266:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x52, *(v5 + 624), a2, a4);
  v38 = *(v5 + 948);
  if ((v38 & 0x40000) == 0)
  {
LABEL_142:
    if ((v38 & 0x80000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_268;
  }

LABEL_267:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x53, *(v5 + 628), a2, a4);
  v38 = *(v5 + 948);
  if ((v38 & 0x80000) == 0)
  {
LABEL_143:
    if ((v38 & 0x100000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_144;
  }

LABEL_268:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x54, *(v5 + 632), a2, a4);
  if ((*(v5 + 948) & 0x100000) != 0)
  {
LABEL_144:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x55, *(v5 + 636), a2, a4);
  }

LABEL_145:
  if (*(v5 + 648) >= 1)
  {
    v39 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x56, *(*(v5 + 640) + 4 * v39++), a2, a4);
    }

    while (v39 < *(v5 + 648));
  }

  if ((*(v5 + 950) & 0x40) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x57, *(v5 + 720), a2, a4);
  }

  if (*(v5 + 664) >= 1)
  {
    v40 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x58, *(*(v5 + 656) + 4 * v40++), a2, a4);
    }

    while (v40 < *(v5 + 664));
  }

  if (*(v5 + 680) >= 1)
  {
    v41 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x59, *(*(v5 + 672) + 4 * v41++), a2, a4);
    }

    while (v41 < *(v5 + 680));
  }

  if (*(v5 + 696) >= 1)
  {
    v42 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5A, *(*(v5 + 688) + 4 * v42++), a2, a4);
    }

    while (v42 < *(v5 + 696));
  }

  if (*(v5 + 712) >= 1)
  {
    v43 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5B, *(*(v5 + 704) + 4 * v43++), a2, a4);
    }

    while (v43 < *(v5 + 712));
  }

  if (*(v5 + 736) >= 1)
  {
    v44 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5C, *(*(v5 + 728) + 4 * v44++), a2, a4);
    }

    while (v44 < *(v5 + 736));
  }

  if (*(v5 + 752) >= 1)
  {
    v45 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5D, *(*(v5 + 744) + 4 * v45++), a2, a4);
    }

    while (v45 < *(v5 + 752));
  }

  if (*(v5 + 768) >= 1)
  {
    v46 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5E, *(*(v5 + 760) + 4 * v46++), a2, a4);
    }

    while (v46 < *(v5 + 768));
  }

  if (*(v5 + 784) >= 1)
  {
    v47 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5F, *(*(v5 + 776) + 4 * v47++), a2, a4);
    }

    while (v47 < *(v5 + 784));
  }

  if ((*(v5 + 948) & 0x80000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x60, *(v5 + 724), a2, a4);
  }

  v48 = *(v5 + 952);
  if (v48)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x61, *(v5 + 792), a2, a4);
    v48 = *(v5 + 952);
    if ((v48 & 2) == 0)
    {
LABEL_178:
      if ((v48 & 4) == 0)
      {
        goto LABEL_179;
      }

      goto LABEL_272;
    }
  }

  else if ((v48 & 2) == 0)
  {
    goto LABEL_178;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x62, *(v5 + 796), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 4) == 0)
  {
LABEL_179:
    if ((v48 & 8) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_273;
  }

LABEL_272:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x63, *(v5 + 800), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 8) == 0)
  {
LABEL_180:
    if ((v48 & 0x10) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_274;
  }

LABEL_273:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x64, *(v5 + 804), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x10) == 0)
  {
LABEL_181:
    if ((v48 & 0x20) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_275;
  }

LABEL_274:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x65, *(v5 + 808), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x20) == 0)
  {
LABEL_182:
    if ((v48 & 0x40) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_276;
  }

LABEL_275:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x66, *(v5 + 812), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x40) == 0)
  {
LABEL_183:
    if ((v48 & 0x80) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_277;
  }

LABEL_276:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x67, *(v5 + 816), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x80) == 0)
  {
LABEL_184:
    if ((v48 & 0x100) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_278;
  }

LABEL_277:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x68, *(v5 + 820), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x100) == 0)
  {
LABEL_185:
    if ((v48 & 0x200) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_279;
  }

LABEL_278:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x69, *(v5 + 824), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x200) == 0)
  {
LABEL_186:
    if ((v48 & 0x400) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_280;
  }

LABEL_279:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6A, *(v5 + 828), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x400) == 0)
  {
LABEL_187:
    if ((v48 & 0x800) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_281;
  }

LABEL_280:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6B, *(v5 + 832), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x800) == 0)
  {
LABEL_188:
    if ((v48 & 0x1000) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_282;
  }

LABEL_281:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6C, *(v5 + 836), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x1000) == 0)
  {
LABEL_189:
    if ((v48 & 0x2000) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_283;
  }

LABEL_282:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6D, *(v5 + 840), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x2000) == 0)
  {
LABEL_190:
    if ((v48 & 0x4000) == 0)
    {
      goto LABEL_191;
    }

    goto LABEL_284;
  }

LABEL_283:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6E, *(v5 + 844), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x4000) == 0)
  {
LABEL_191:
    if ((v48 & 0x8000) == 0)
    {
      goto LABEL_192;
    }

    goto LABEL_285;
  }

LABEL_284:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6F, *(v5 + 848), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x8000) == 0)
  {
LABEL_192:
    if ((v48 & 0x10000) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_286;
  }

LABEL_285:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x70, *(v5 + 852), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x10000) == 0)
  {
LABEL_193:
    if ((v48 & 0x20000) == 0)
    {
      goto LABEL_194;
    }

    goto LABEL_287;
  }

LABEL_286:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x71, *(v5 + 856), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x20000) == 0)
  {
LABEL_194:
    if ((v48 & 0x40000) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_288;
  }

LABEL_287:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x72, *(v5 + 860), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x40000) == 0)
  {
LABEL_195:
    if ((v48 & 0x80000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_289;
  }

LABEL_288:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x73, *(v5 + 864), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x80000) == 0)
  {
LABEL_196:
    if ((v48 & 0x100000) == 0)
    {
      goto LABEL_197;
    }

    goto LABEL_290;
  }

LABEL_289:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x74, *(v5 + 868), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x100000) == 0)
  {
LABEL_197:
    if ((v48 & 0x200000) == 0)
    {
      goto LABEL_198;
    }

    goto LABEL_291;
  }

LABEL_290:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x75, *(v5 + 872), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x200000) == 0)
  {
LABEL_198:
    if ((v48 & 0x400000) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_292;
  }

LABEL_291:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x76, *(v5 + 876), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x400000) == 0)
  {
LABEL_199:
    if ((v48 & 0x800000) == 0)
    {
      goto LABEL_200;
    }

    goto LABEL_293;
  }

LABEL_292:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x77, *(v5 + 880), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x800000) == 0)
  {
LABEL_200:
    if ((v48 & 0x1000000) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_294;
  }

LABEL_293:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x78, *(v5 + 884), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x1000000) == 0)
  {
LABEL_201:
    if ((v48 & 0x2000000) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_295;
  }

LABEL_294:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x79, *(v5 + 888), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x2000000) == 0)
  {
LABEL_202:
    if ((v48 & 0x4000000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_296;
  }

LABEL_295:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x7A, *(v5 + 892), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x4000000) == 0)
  {
LABEL_203:
    if ((v48 & 0x8000000) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_297;
  }

LABEL_296:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x7B, *(v5 + 896), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x8000000) == 0)
  {
LABEL_204:
    if ((v48 & 0x10000000) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_298;
  }

LABEL_297:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x7C, *(v5 + 900), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x10000000) == 0)
  {
LABEL_205:
    if ((v48 & 0x20000000) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_299;
  }

LABEL_298:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x7D, *(v5 + 904), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x20000000) == 0)
  {
LABEL_206:
    if ((v48 & 0x40000000) == 0)
    {
      goto LABEL_207;
    }

LABEL_300:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x7F, *(v5 + 912), a2, a4);
    if ((*(v5 + 952) & 0x80000000) == 0)
    {
      goto LABEL_208;
    }

    goto LABEL_301;
  }

LABEL_299:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x7E, *(v5 + 908), a2, a4);
  v48 = *(v5 + 952);
  if ((v48 & 0x40000000) != 0)
  {
    goto LABEL_300;
  }

LABEL_207:
  if ((v48 & 0x80000000) == 0)
  {
    goto LABEL_208;
  }

LABEL_301:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x80, *(v5 + 916), a2, a4);
LABEL_208:
  v49 = *(v5 + 956);
  if (v49)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x81, *(v5 + 920), a2, a4);
    v49 = *(v5 + 956);
    if ((v49 & 2) == 0)
    {
LABEL_210:
      if ((v49 & 4) == 0)
      {
        goto LABEL_211;
      }

LABEL_304:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x83, *(v5 + 928), a2, a4);
      if ((*(v5 + 956) & 8) == 0)
      {
        return this;
      }

      goto LABEL_305;
    }
  }

  else if ((v49 & 2) == 0)
  {
    goto LABEL_210;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x82, *(v5 + 924), a2, a4);
  v49 = *(v5 + 956);
  if ((v49 & 4) != 0)
  {
    goto LABEL_304;
  }

LABEL_211:
  if ((v49 & 8) == 0)
  {
    return this;
  }

LABEL_305:
  v50 = *(v5 + 932);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x84, v50, a2, a4);
}

uint64_t awd::metrics::BluetoothAccessoryDailyUsage::ByteSize(awd::metrics::BluetoothAccessoryDailyUsage *this)
{
  v2 = *(this + 235);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 235);
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
    v2 = *(this + 235);
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
      v2 = *(this + 235);
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
    v2 = *(this + 235);
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
    v2 = *(this + 235);
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
    v2 = *(this + 235);
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
    v2 = *(this + 235);
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
      v2 = *(this + 235);
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
    goto LABEL_69;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = *(this + 11);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v2 = *(this + 235);
    }

    else
    {
      v19 = 2;
    }

    v3 += v19;
    if ((v2 & 0x200) == 0)
    {
LABEL_45:
      if ((v2 & 0x2000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_57;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v20 = *(this + 16);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 235);
  }

  else
  {
    v21 = 2;
  }

  v3 += v21;
  if ((v2 & 0x2000) == 0)
  {
LABEL_46:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_61;
  }

LABEL_57:
  v22 = *(this + 17);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 235);
  }

  else
  {
    v23 = 2;
  }

  v3 += v23;
  if ((v2 & 0x4000) == 0)
  {
LABEL_47:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_65;
  }

LABEL_61:
  v24 = *(this + 26);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v2 = *(this + 235);
  }

  else
  {
    v25 = 2;
  }

  v3 += v25;
  if ((v2 & 0x8000) != 0)
  {
LABEL_65:
    v26 = *(this + 27);
    if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 2;
      v2 = *(this + 235);
    }

    else
    {
      v27 = 3;
    }

    v3 += v27;
  }

LABEL_69:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_114;
  }

  if ((v2 & 0x10000) != 0)
  {
    v28 = *(this + 28);
    if ((v28 & 0x80000000) != 0)
    {
      v29 = 12;
    }

    else if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 2;
      v2 = *(this + 235);
    }

    else
    {
      v29 = 3;
    }

    v3 += v29;
    if ((v2 & 0x20000) == 0)
    {
LABEL_72:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_90;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_72;
  }

  v30 = *(this + 29);
  if ((v30 & 0x80000000) != 0)
  {
    v31 = 12;
  }

  else if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 2;
    v2 = *(this + 235);
  }

  else
  {
    v31 = 3;
  }

  v3 += v31;
  if ((v2 & 0x40000) == 0)
  {
LABEL_73:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_96;
  }

LABEL_90:
  v32 = *(this + 30);
  if ((v32 & 0x80000000) != 0)
  {
    v33 = 12;
  }

  else if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
    v2 = *(this + 235);
  }

  else
  {
    v33 = 3;
  }

  v3 += v33;
  if ((v2 & 0x80000) == 0)
  {
LABEL_74:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_102;
  }

LABEL_96:
  v34 = *(this + 31);
  if ((v34 & 0x80000000) != 0)
  {
    v35 = 12;
  }

  else if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
    v2 = *(this + 235);
  }

  else
  {
    v35 = 3;
  }

  v3 += v35;
  if ((v2 & 0x200000) == 0)
  {
LABEL_75:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_106;
  }

LABEL_102:
  v36 = *(this + 36);
  if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
    v2 = *(this + 235);
  }

  else
  {
    v37 = 3;
  }

  v3 += v37;
  if ((v2 & 0x400000) == 0)
  {
LABEL_76:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_110;
  }

LABEL_106:
  v38 = *(this + 37);
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    v2 = *(this + 235);
  }

  else
  {
    v39 = 3;
  }

  v3 += v39;
  if ((v2 & 0x800000) != 0)
  {
LABEL_110:
    v40 = *(this + 46);
    if (v40 >= 0x80)
    {
      v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
      v2 = *(this + 235);
    }

    else
    {
      v41 = 3;
    }

    v3 += v41;
  }

LABEL_114:
  if (!(v2 >> 27))
  {
    goto LABEL_145;
  }

  if ((v2 & 0x8000000) != 0)
  {
    v42 = *(this + 47);
    if (v42 >= 0x80)
    {
      v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
      v2 = *(this + 235);
    }

    else
    {
      v43 = 3;
    }

    v3 += v43;
    if ((v2 & 0x10000000) == 0)
    {
LABEL_117:
      if ((v2 & 0x20000000) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_129;
    }
  }

  else if ((v2 & 0x10000000) == 0)
  {
    goto LABEL_117;
  }

  v44 = *(this + 52);
  if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
    v2 = *(this + 235);
  }

  else
  {
    v45 = 3;
  }

  v3 += v45;
  if ((v2 & 0x20000000) == 0)
  {
LABEL_118:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_133;
  }

LABEL_129:
  v46 = *(this + 53);
  if (v46 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
    v2 = *(this + 235);
  }

  else
  {
    v47 = 3;
  }

  v3 += v47;
  if ((v2 & 0x40000000) == 0)
  {
LABEL_119:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_139;
  }

LABEL_133:
  v48 = *(this + 54);
  if ((v48 & 0x80000000) != 0)
  {
    v49 = 12;
  }

  else if (v48 >= 0x80)
  {
    v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 2;
    v2 = *(this + 235);
  }

  else
  {
    v49 = 3;
  }

  v3 += v49;
  if ((v2 & 0x80000000) != 0)
  {
LABEL_139:
    v50 = *(this + 55);
    if ((v50 & 0x80000000) != 0)
    {
      v51 = 12;
    }

    else if (v50 >= 0x80)
    {
      v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
    }

    else
    {
      v51 = 3;
    }

    v3 += v51;
  }

LABEL_145:
  v52 = *(this + 236);
  if (!v52)
  {
    goto LABEL_176;
  }

  if (v52)
  {
    v53 = *(this + 56);
    if ((v53 & 0x80000000) != 0)
    {
      v54 = 12;
    }

    else if (v53 >= 0x80)
    {
      v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
      v52 = *(this + 236);
    }

    else
    {
      v54 = 3;
    }

    v3 += v54;
    if ((v52 & 2) == 0)
    {
LABEL_148:
      if ((v52 & 8) == 0)
      {
        goto LABEL_149;
      }

      goto LABEL_164;
    }
  }

  else if ((v52 & 2) == 0)
  {
    goto LABEL_148;
  }

  v55 = *(this + 57);
  if ((v55 & 0x80000000) != 0)
  {
    v56 = 12;
  }

  else if (v55 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
    v52 = *(this + 236);
  }

  else
  {
    v56 = 3;
  }

  v3 += v56;
  if ((v52 & 8) == 0)
  {
LABEL_149:
    if ((v52 & 0x10) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_168;
  }

LABEL_164:
  v57 = *(this + 62);
  if (v57 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
    v52 = *(this + 236);
  }

  else
  {
    v58 = 3;
  }

  v3 += v58;
  if ((v52 & 0x10) == 0)
  {
LABEL_150:
    if ((v52 & 0x20) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_172;
  }

LABEL_168:
  v59 = *(this + 63);
  if (v59 >= 0x80)
  {
    v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59) + 2;
    v52 = *(this + 236);
  }

  else
  {
    v60 = 3;
  }

  v3 += v60;
  if ((v52 & 0x20) != 0)
  {
LABEL_172:
    v61 = *(this + 72);
    if (v61 >= 0x80)
    {
      v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61) + 2;
      v52 = *(this + 236);
    }

    else
    {
      v62 = 3;
    }

    v3 += v62;
  }

LABEL_176:
  if ((v52 & 0x3FC00) == 0)
  {
    goto LABEL_208;
  }

  if ((v52 & 0x400) != 0)
  {
    v63 = *(this + 73);
    if (v63 >= 0x80)
    {
      v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63) + 2;
      v52 = *(this + 236);
    }

    else
    {
      v64 = 3;
    }

    v3 += v64;
    if ((v52 & 0x800) == 0)
    {
LABEL_179:
      if ((v52 & 0x1000) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_192;
    }
  }

  else if ((v52 & 0x800) == 0)
  {
    goto LABEL_179;
  }

  v65 = *(this + 82);
  if (v65 >= 0x80)
  {
    v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65) + 2;
    v52 = *(this + 236);
  }

  else
  {
    v66 = 3;
  }

  v3 += v66;
  if ((v52 & 0x1000) == 0)
  {
LABEL_180:
    if ((v52 & 0x2000) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_196;
  }

LABEL_192:
  v67 = *(this + 83);
  if (v67 >= 0x80)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67) + 2;
    v52 = *(this + 236);
  }

  else
  {
    v68 = 3;
  }

  v3 += v68;
  if ((v52 & 0x2000) == 0)
  {
LABEL_181:
    if ((v52 & 0x4000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_200;
  }

LABEL_196:
  v69 = *(this + 84);
  if (v69 >= 0x80)
  {
    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69) + 2;
    v52 = *(this + 236);
  }

  else
  {
    v70 = 3;
  }

  v3 += v70;
  if ((v52 & 0x4000) == 0)
  {
LABEL_182:
    if ((v52 & 0x8000) == 0)
    {
      goto LABEL_208;
    }

    goto LABEL_204;
  }

LABEL_200:
  v71 = *(this + 85);
  if (v71 >= 0x80)
  {
    v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71) + 2;
    v52 = *(this + 236);
  }

  else
  {
    v72 = 3;
  }

  v3 += v72;
  if ((v52 & 0x8000) != 0)
  {
LABEL_204:
    v73 = *(this + 86);
    if (v73 >= 0x80)
    {
      v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73) + 2;
      v52 = *(this + 236);
    }

    else
    {
      v74 = 3;
    }

    v3 += v74;
  }

LABEL_208:
  if ((v52 & 0xFF0000) == 0)
  {
    goto LABEL_260;
  }

  if ((v52 & 0x10000) != 0)
  {
    v75 = *(this + 87);
    if (v75 >= 0x80)
    {
      v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75) + 2;
      v52 = *(this + 236);
    }

    else
    {
      v76 = 3;
    }

    v3 += v76;
    if ((v52 & 0x20000) == 0)
    {
LABEL_211:
      if ((v52 & 0x40000) == 0)
      {
        goto LABEL_212;
      }

      goto LABEL_226;
    }
  }

  else if ((v52 & 0x20000) == 0)
  {
    goto LABEL_211;
  }

  v77 = *(this + 88);
  if (v77 >= 0x80)
  {
    v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77) + 2;
    v52 = *(this + 236);
  }

  else
  {
    v78 = 3;
  }

  v3 += v78;
  if ((v52 & 0x40000) == 0)
  {
LABEL_212:
    if ((v52 & 0x80000) == 0)
    {
      goto LABEL_213;
    }

    goto LABEL_232;
  }

LABEL_226:
  v79 = *(this + 89);
  if ((v79 & 0x80000000) != 0)
  {
    v80 = 12;
  }

  else if (v79 >= 0x80)
  {
    v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79) + 2;
    v52 = *(this + 236);
  }

  else
  {
    v80 = 3;
  }

  v3 += v80;
  if ((v52 & 0x80000) == 0)
  {
LABEL_213:
    if ((v52 & 0x100000) == 0)
    {
      goto LABEL_214;
    }

    goto LABEL_238;
  }

LABEL_232:
  v81 = *(this + 90);
  if ((v81 & 0x80000000) != 0)
  {
    v82 = 12;
  }

  else if (v81 >= 0x80)
  {
    v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81) + 2;
    v52 = *(this + 236);
  }

  else
  {
    v82 = 3;
  }

  v3 += v82;
  if ((v52 & 0x100000) == 0)
  {
LABEL_214:
    if ((v52 & 0x200000) == 0)
    {
      goto LABEL_215;
    }

    goto LABEL_244;
  }

LABEL_238:
  v83 = *(this + 91);
  if ((v83 & 0x80000000) != 0)
  {
    v84 = 12;
  }

  else if (v83 >= 0x80)
  {
    v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83) + 2;
    v52 = *(this + 236);
  }

  else
  {
    v84 = 3;
  }

  v3 += v84;
  if ((v52 & 0x200000) == 0)
  {
LABEL_215:
    if ((v52 & 0x400000) == 0)
    {
      goto LABEL_216;
    }

    goto LABEL_250;
  }

LABEL_244:
  v85 = *(this + 92);
  if ((v85 & 0x80000000) != 0)
  {
    v86 = 12;
  }

  else if (v85 >= 0x80)
  {
    v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85) + 2;
    v52 = *(this + 236);
  }

  else
  {
    v86 = 3;
  }

  v3 += v86;
  if ((v52 & 0x400000) == 0)
  {
LABEL_216:
    if ((v52 & 0x800000) == 0)
    {
      goto LABEL_260;
    }

    goto LABEL_254;
  }

LABEL_250:
  v87 = *(this + 93);
  if (v87 >= 0x80)
  {
    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v87) + 2;
    v52 = *(this + 236);
  }

  else
  {
    v88 = 3;
  }

  v3 += v88;
  if ((v52 & 0x800000) != 0)
  {
LABEL_254:
    v89 = *(this + 94);
    if ((v89 & 0x80000000) != 0)
    {
      v90 = 12;
    }

    else if (v89 >= 0x80)
    {
      v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89) + 2;
      v52 = *(this + 236);
    }

    else
    {
      v90 = 3;
    }

    v3 += v90;
  }

LABEL_260:
  if (!HIBYTE(v52))
  {
    goto LABEL_289;
  }

  if ((v52 & 0x1000000) != 0)
  {
    v91 = *(this + 95);
    if ((v91 & 0x80000000) != 0)
    {
      v92 = 12;
    }

    else if (v91 >= 0x80)
    {
      v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91) + 2;
      v52 = *(this + 236);
    }

    else
    {
      v92 = 3;
    }

    v3 += v92;
    if ((v52 & 0x2000000) == 0)
    {
LABEL_263:
      if ((v52 & 0x4000000) == 0)
      {
        goto LABEL_264;
      }

      goto LABEL_277;
    }
  }

  else if ((v52 & 0x2000000) == 0)
  {
    goto LABEL_263;
  }

  v93 = *(this + 96);
  if (v93 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93) + 2;
    v52 = *(this + 236);
  }

  else
  {
    v94 = 3;
  }

  v3 += v94;
  if ((v52 & 0x4000000) == 0)
  {
LABEL_264:
    if ((v52 & 0x8000000) == 0)
    {
      goto LABEL_265;
    }

    goto LABEL_281;
  }

LABEL_277:
  v95 = *(this + 97);
  if (v95 >= 0x80)
  {
    v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v95) + 2;
    v52 = *(this + 236);
  }

  else
  {
    v96 = 3;
  }

  v3 += v96;
  if ((v52 & 0x8000000) == 0)
  {
LABEL_265:
    if ((v52 & 0x80000000) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_285;
  }

LABEL_281:
  v97 = *(this + 102);
  if (v97 >= 0x80)
  {
    v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97) + 2;
    v52 = *(this + 236);
  }

  else
  {
    v98 = 3;
  }

  v3 += v98;
  if ((v52 & 0x80000000) != 0)
  {
LABEL_285:
    v99 = *(this + 103);
    if (v99 >= 0x80)
    {
      v100 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v99) + 2;
    }

    else
    {
      v100 = 3;
    }

    v3 += v100;
  }

LABEL_289:
  v101 = *(this + 237);
  if (!v101)
  {
    goto LABEL_296;
  }

  if (v101)
  {
    v102 = *(this + 112);
    if (v102 >= 0x80)
    {
      v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102) + 2;
      v101 = *(this + 237);
    }

    else
    {
      v103 = 3;
    }

    v3 += v103;
    if ((v101 & 2) == 0)
    {
LABEL_292:
      if ((v101 & 4) == 0)
      {
        goto LABEL_293;
      }

      goto LABEL_306;
    }
  }

  else if ((v101 & 2) == 0)
  {
    goto LABEL_292;
  }

  v104 = *(this + 113);
  if (v104 >= 0x80)
  {
    v105 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v104) + 2;
    v101 = *(this + 237);
  }

  else
  {
    v105 = 3;
  }

  v3 += v105;
  if ((v101 & 4) == 0)
  {
LABEL_293:
    if ((v101 & 8) == 0)
    {
      goto LABEL_294;
    }

    goto LABEL_310;
  }

LABEL_306:
  v106 = *(this + 114);
  if (v106 >= 0x80)
  {
    v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v106) + 2;
    v101 = *(this + 237);
  }

  else
  {
    v107 = 3;
  }

  v3 += v107;
  if ((v101 & 8) == 0)
  {
LABEL_294:
    if ((v101 & 0x10) == 0)
    {
      goto LABEL_295;
    }

    goto LABEL_314;
  }

LABEL_310:
  v108 = *(this + 115);
  if (v108 >= 0x80)
  {
    v109 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v108) + 2;
    v101 = *(this + 237);
  }

  else
  {
    v109 = 3;
  }

  v3 += v109;
  if ((v101 & 0x10) == 0)
  {
LABEL_295:
    if ((v101 & 0x40) == 0)
    {
      goto LABEL_296;
    }

    goto LABEL_318;
  }

LABEL_314:
  v110 = *(this + 116);
  if (v110 >= 0x80)
  {
    v111 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v110) + 2;
    v101 = *(this + 237);
  }

  else
  {
    v111 = 3;
  }

  v3 += v111;
  if ((v101 & 0x40) == 0)
  {
LABEL_296:
    if ((v101 & 0x8000) == 0)
    {
      goto LABEL_326;
    }

    goto LABEL_322;
  }

LABEL_318:
  v112 = *(this + 117);
  if (v112 >= 0x80)
  {
    v113 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v112) + 2;
    v101 = *(this + 237);
  }

  else
  {
    v113 = 3;
  }

  v3 += v113;
  if ((v101 & 0x8000) != 0)
  {
LABEL_322:
    v114 = *(this + 154);
    if (v114 >= 0x80)
    {
      v115 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v114) + 2;
      v101 = *(this + 237);
    }

    else
    {
      v115 = 3;
    }

    v3 += v115;
  }

LABEL_326:
  if ((v101 & 0xFF0000) == 0)
  {
    goto LABEL_333;
  }

  if ((v101 & 0x10000) != 0)
  {
    v116 = *(this + 155);
    if (v116 >= 0x80)
    {
      v117 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v116) + 2;
      v101 = *(this + 237);
    }

    else
    {
      v117 = 3;
    }

    v3 += v117;
    if ((v101 & 0x20000) == 0)
    {
LABEL_329:
      if ((v101 & 0x40000) == 0)
      {
        goto LABEL_330;
      }

      goto LABEL_343;
    }
  }

  else if ((v101 & 0x20000) == 0)
  {
    goto LABEL_329;
  }

  v118 = *(this + 156);
  if (v118 >= 0x80)
  {
    v119 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118) + 2;
    v101 = *(this + 237);
  }

  else
  {
    v119 = 3;
  }

  v3 += v119;
  if ((v101 & 0x40000) == 0)
  {
LABEL_330:
    if ((v101 & 0x80000) == 0)
    {
      goto LABEL_331;
    }

    goto LABEL_347;
  }

LABEL_343:
  v120 = *(this + 157);
  if (v120 >= 0x80)
  {
    v121 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v120) + 2;
    v101 = *(this + 237);
  }

  else
  {
    v121 = 3;
  }

  v3 += v121;
  if ((v101 & 0x80000) == 0)
  {
LABEL_331:
    if ((v101 & 0x100000) == 0)
    {
      goto LABEL_332;
    }

    goto LABEL_351;
  }

LABEL_347:
  v122 = *(this + 158);
  if (v122 >= 0x80)
  {
    v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v122) + 2;
    v101 = *(this + 237);
  }

  else
  {
    v123 = 3;
  }

  v3 += v123;
  if ((v101 & 0x100000) == 0)
  {
LABEL_332:
    if ((v101 & 0x400000) == 0)
    {
      goto LABEL_333;
    }

    goto LABEL_355;
  }

LABEL_351:
  v124 = *(this + 159);
  if (v124 >= 0x80)
  {
    v125 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v124) + 2;
    v101 = *(this + 237);
  }

  else
  {
    v125 = 3;
  }

  v3 += v125;
  if ((v101 & 0x400000) == 0)
  {
LABEL_333:
    if ((v101 & 0x80000000) == 0)
    {
      goto LABEL_363;
    }

    goto LABEL_359;
  }

LABEL_355:
  v126 = *(this + 180);
  if (v126 >= 0x80)
  {
    v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126) + 2;
    v101 = *(this + 237);
  }

  else
  {
    v127 = 3;
  }

  v3 += v127;
  if (v101 < 0)
  {
LABEL_359:
    v128 = *(this + 181);
    if (v128 >= 0x80)
    {
      v129 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v128) + 2;
    }

    else
    {
      v129 = 3;
    }

    v3 += v129;
  }

LABEL_363:
  v130 = *(this + 238);
  if (!v130)
  {
    goto LABEL_405;
  }

  if (v130)
  {
    v131 = *(this + 198);
    if (v131 >= 0x80)
    {
      v132 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v131) + 2;
      v130 = *(this + 238);
    }

    else
    {
      v132 = 3;
    }

    v3 += v132;
    if ((v130 & 2) == 0)
    {
LABEL_366:
      if ((v130 & 4) == 0)
      {
        goto LABEL_367;
      }

      goto LABEL_381;
    }
  }

  else if ((v130 & 2) == 0)
  {
    goto LABEL_366;
  }

  v133 = *(this + 199);
  if (v133 >= 0x80)
  {
    v134 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v133) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v134 = 3;
  }

  v3 += v134;
  if ((v130 & 4) == 0)
  {
LABEL_367:
    if ((v130 & 8) == 0)
    {
      goto LABEL_368;
    }

    goto LABEL_385;
  }

LABEL_381:
  v135 = *(this + 200);
  if (v135 >= 0x80)
  {
    v136 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v135) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v136 = 3;
  }

  v3 += v136;
  if ((v130 & 8) == 0)
  {
LABEL_368:
    if ((v130 & 0x10) == 0)
    {
      goto LABEL_369;
    }

    goto LABEL_389;
  }

LABEL_385:
  v137 = *(this + 201);
  if (v137 >= 0x80)
  {
    v138 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v137) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v138 = 3;
  }

  v3 += v138;
  if ((v130 & 0x10) == 0)
  {
LABEL_369:
    if ((v130 & 0x20) == 0)
    {
      goto LABEL_370;
    }

    goto LABEL_393;
  }

LABEL_389:
  v139 = *(this + 202);
  if (v139 >= 0x80)
  {
    v140 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v139) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v140 = 3;
  }

  v3 += v140;
  if ((v130 & 0x20) == 0)
  {
LABEL_370:
    if ((v130 & 0x40) == 0)
    {
      goto LABEL_371;
    }

    goto LABEL_397;
  }

LABEL_393:
  v141 = *(this + 203);
  if (v141 >= 0x80)
  {
    v142 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v141) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v142 = 3;
  }

  v3 += v142;
  if ((v130 & 0x40) == 0)
  {
LABEL_371:
    if ((v130 & 0x80) == 0)
    {
      goto LABEL_405;
    }

    goto LABEL_401;
  }

LABEL_397:
  v143 = *(this + 204);
  if (v143 >= 0x80)
  {
    v144 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v143) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v144 = 3;
  }

  v3 += v144;
  if ((v130 & 0x80) != 0)
  {
LABEL_401:
    v145 = *(this + 205);
    if (v145 >= 0x80)
    {
      v146 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v145) + 2;
      v130 = *(this + 238);
    }

    else
    {
      v146 = 3;
    }

    v3 += v146;
  }

LABEL_405:
  if ((v130 & 0xFF00) == 0)
  {
    goto LABEL_447;
  }

  if ((v130 & 0x100) != 0)
  {
    v147 = *(this + 206);
    if (v147 >= 0x80)
    {
      v148 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v147) + 2;
      v130 = *(this + 238);
    }

    else
    {
      v148 = 3;
    }

    v3 += v148;
    if ((v130 & 0x200) == 0)
    {
LABEL_408:
      if ((v130 & 0x400) == 0)
      {
        goto LABEL_409;
      }

      goto LABEL_423;
    }
  }

  else if ((v130 & 0x200) == 0)
  {
    goto LABEL_408;
  }

  v149 = *(this + 207);
  if (v149 >= 0x80)
  {
    v150 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v149) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v150 = 3;
  }

  v3 += v150;
  if ((v130 & 0x400) == 0)
  {
LABEL_409:
    if ((v130 & 0x800) == 0)
    {
      goto LABEL_410;
    }

    goto LABEL_427;
  }

LABEL_423:
  v151 = *(this + 208);
  if (v151 >= 0x80)
  {
    v152 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v151) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v152 = 3;
  }

  v3 += v152;
  if ((v130 & 0x800) == 0)
  {
LABEL_410:
    if ((v130 & 0x1000) == 0)
    {
      goto LABEL_411;
    }

    goto LABEL_431;
  }

LABEL_427:
  v153 = *(this + 209);
  if (v153 >= 0x80)
  {
    v154 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v153) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v154 = 3;
  }

  v3 += v154;
  if ((v130 & 0x1000) == 0)
  {
LABEL_411:
    if ((v130 & 0x2000) == 0)
    {
      goto LABEL_412;
    }

    goto LABEL_435;
  }

LABEL_431:
  v155 = *(this + 210);
  if (v155 >= 0x80)
  {
    v156 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v155) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v156 = 3;
  }

  v3 += v156;
  if ((v130 & 0x2000) == 0)
  {
LABEL_412:
    if ((v130 & 0x4000) == 0)
    {
      goto LABEL_413;
    }

    goto LABEL_439;
  }

LABEL_435:
  v157 = *(this + 211);
  if (v157 >= 0x80)
  {
    v158 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v157) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v158 = 3;
  }

  v3 += v158;
  if ((v130 & 0x4000) == 0)
  {
LABEL_413:
    if ((v130 & 0x8000) == 0)
    {
      goto LABEL_447;
    }

    goto LABEL_443;
  }

LABEL_439:
  v159 = *(this + 212);
  if (v159 >= 0x80)
  {
    v160 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v159) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v160 = 3;
  }

  v3 += v160;
  if ((v130 & 0x8000) != 0)
  {
LABEL_443:
    v161 = *(this + 213);
    if (v161 >= 0x80)
    {
      v162 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v161) + 2;
      v130 = *(this + 238);
    }

    else
    {
      v162 = 3;
    }

    v3 += v162;
  }

LABEL_447:
  if ((v130 & 0xFF0000) == 0)
  {
    goto LABEL_489;
  }

  if ((v130 & 0x10000) != 0)
  {
    v163 = *(this + 214);
    if (v163 >= 0x80)
    {
      v164 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v163) + 2;
      v130 = *(this + 238);
    }

    else
    {
      v164 = 3;
    }

    v3 += v164;
    if ((v130 & 0x20000) == 0)
    {
LABEL_450:
      if ((v130 & 0x40000) == 0)
      {
        goto LABEL_451;
      }

      goto LABEL_465;
    }
  }

  else if ((v130 & 0x20000) == 0)
  {
    goto LABEL_450;
  }

  v165 = *(this + 215);
  if (v165 >= 0x80)
  {
    v166 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v165) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v166 = 3;
  }

  v3 += v166;
  if ((v130 & 0x40000) == 0)
  {
LABEL_451:
    if ((v130 & 0x80000) == 0)
    {
      goto LABEL_452;
    }

    goto LABEL_469;
  }

LABEL_465:
  v167 = *(this + 216);
  if (v167 >= 0x80)
  {
    v168 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v167) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v168 = 3;
  }

  v3 += v168;
  if ((v130 & 0x80000) == 0)
  {
LABEL_452:
    if ((v130 & 0x100000) == 0)
    {
      goto LABEL_453;
    }

    goto LABEL_473;
  }

LABEL_469:
  v169 = *(this + 217);
  if (v169 >= 0x80)
  {
    v170 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v169) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v170 = 3;
  }

  v3 += v170;
  if ((v130 & 0x100000) == 0)
  {
LABEL_453:
    if ((v130 & 0x200000) == 0)
    {
      goto LABEL_454;
    }

    goto LABEL_477;
  }

LABEL_473:
  v171 = *(this + 218);
  if (v171 >= 0x80)
  {
    v172 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v171) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v172 = 3;
  }

  v3 += v172;
  if ((v130 & 0x200000) == 0)
  {
LABEL_454:
    if ((v130 & 0x400000) == 0)
    {
      goto LABEL_455;
    }

    goto LABEL_481;
  }

LABEL_477:
  v173 = *(this + 219);
  if (v173 >= 0x80)
  {
    v174 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v173) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v174 = 3;
  }

  v3 += v174;
  if ((v130 & 0x400000) == 0)
  {
LABEL_455:
    if ((v130 & 0x800000) == 0)
    {
      goto LABEL_489;
    }

    goto LABEL_485;
  }

LABEL_481:
  v175 = *(this + 220);
  if (v175 >= 0x80)
  {
    v176 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v175) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v176 = 3;
  }

  v3 += v176;
  if ((v130 & 0x800000) != 0)
  {
LABEL_485:
    v177 = *(this + 221);
    if (v177 >= 0x80)
    {
      v178 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v177) + 2;
      v130 = *(this + 238);
    }

    else
    {
      v178 = 3;
    }

    v3 += v178;
  }

LABEL_489:
  if (!HIBYTE(v130))
  {
    goto LABEL_531;
  }

  if ((v130 & 0x1000000) != 0)
  {
    v179 = *(this + 222);
    if (v179 >= 0x80)
    {
      v180 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v179) + 2;
      v130 = *(this + 238);
    }

    else
    {
      v180 = 3;
    }

    v3 += v180;
    if ((v130 & 0x2000000) == 0)
    {
LABEL_492:
      if ((v130 & 0x4000000) == 0)
      {
        goto LABEL_493;
      }

      goto LABEL_507;
    }
  }

  else if ((v130 & 0x2000000) == 0)
  {
    goto LABEL_492;
  }

  v181 = *(this + 223);
  if (v181 >= 0x80)
  {
    v182 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v181) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v182 = 3;
  }

  v3 += v182;
  if ((v130 & 0x4000000) == 0)
  {
LABEL_493:
    if ((v130 & 0x8000000) == 0)
    {
      goto LABEL_494;
    }

    goto LABEL_511;
  }

LABEL_507:
  v183 = *(this + 224);
  if (v183 >= 0x80)
  {
    v184 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v183) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v184 = 3;
  }

  v3 += v184;
  if ((v130 & 0x8000000) == 0)
  {
LABEL_494:
    if ((v130 & 0x10000000) == 0)
    {
      goto LABEL_495;
    }

    goto LABEL_515;
  }

LABEL_511:
  v185 = *(this + 225);
  if (v185 >= 0x80)
  {
    v186 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v185) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v186 = 3;
  }

  v3 += v186;
  if ((v130 & 0x10000000) == 0)
  {
LABEL_495:
    if ((v130 & 0x20000000) == 0)
    {
      goto LABEL_496;
    }

    goto LABEL_519;
  }

LABEL_515:
  v187 = *(this + 226);
  if (v187 >= 0x80)
  {
    v188 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v187) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v188 = 3;
  }

  v3 += v188;
  if ((v130 & 0x20000000) == 0)
  {
LABEL_496:
    if ((v130 & 0x40000000) == 0)
    {
      goto LABEL_497;
    }

    goto LABEL_523;
  }

LABEL_519:
  v189 = *(this + 227);
  if (v189 >= 0x80)
  {
    v190 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v189) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v190 = 3;
  }

  v3 += v190;
  if ((v130 & 0x40000000) == 0)
  {
LABEL_497:
    if ((v130 & 0x80000000) == 0)
    {
      goto LABEL_531;
    }

    goto LABEL_527;
  }

LABEL_523:
  v191 = *(this + 228);
  if (v191 >= 0x80)
  {
    v192 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v191) + 2;
    v130 = *(this + 238);
  }

  else
  {
    v192 = 3;
  }

  v3 += v192;
  if ((v130 & 0x80000000) != 0)
  {
LABEL_527:
    v193 = *(this + 229);
    if (v193 >= 0x80)
    {
      v194 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v193) + 2;
    }

    else
    {
      v194 = 3;
    }

    v3 += v194;
  }

LABEL_531:
  LOBYTE(v195) = *(this + 956);
  if (!v195)
  {
    goto LABEL_553;
  }

  if (*(this + 956))
  {
    v196 = *(this + 230);
    if (v196 >= 0x80)
    {
      v197 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v196) + 2;
      v195 = *(this + 239);
    }

    else
    {
      v197 = 3;
    }

    v3 += v197;
    if ((v195 & 2) == 0)
    {
LABEL_534:
      if ((v195 & 4) == 0)
      {
        goto LABEL_535;
      }

      goto LABEL_545;
    }
  }

  else if ((*(this + 956) & 2) == 0)
  {
    goto LABEL_534;
  }

  v198 = *(this + 231);
  if (v198 >= 0x80)
  {
    v199 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v198) + 2;
    v195 = *(this + 239);
  }

  else
  {
    v199 = 3;
  }

  v3 += v199;
  if ((v195 & 4) == 0)
  {
LABEL_535:
    if ((v195 & 8) == 0)
    {
      goto LABEL_553;
    }

    goto LABEL_549;
  }

LABEL_545:
  v200 = *(this + 232);
  if (v200 >= 0x80)
  {
    v201 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v200) + 2;
    v195 = *(this + 239);
  }

  else
  {
    v201 = 3;
  }

  v3 += v201;
  if ((v195 & 8) != 0)
  {
LABEL_549:
    v202 = *(this + 233);
    if (v202 >= 0x80)
    {
      v203 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v202) + 2;
    }

    else
    {
      v203 = 3;
    }

    v3 += v203;
  }

LABEL_553:
  v405 = v3;
  v204 = *(this + 14);
  if (v204 < 1)
  {
    v206 = 0;
  }

  else
  {
    v205 = 0;
    v206 = 0;
    do
    {
      v207 = *(*(this + 6) + 4 * v205);
      if (v207 >= 0x80)
      {
        v208 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v207);
        v204 = *(this + 14);
      }

      else
      {
        v208 = 1;
      }

      v206 += v208;
      ++v205;
    }

    while (v205 < v204);
  }

  v209 = *(this + 20);
  if (v209 < 1)
  {
    v211 = 0;
  }

  else
  {
    v210 = 0;
    v211 = 0;
    do
    {
      v212 = *(*(this + 9) + 4 * v210);
      if (v212 >= 0x80)
      {
        v213 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v212);
        v209 = *(this + 20);
      }

      else
      {
        v213 = 1;
      }

      v211 += v213;
      ++v210;
    }

    while (v210 < v209);
  }

  v214 = *(this + 24);
  if (v214 < 1)
  {
    v216 = 0;
  }

  else
  {
    v215 = 0;
    v216 = 0;
    do
    {
      v217 = *(*(this + 11) + 4 * v215);
      if (v217 >= 0x80)
      {
        v218 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v217);
        v214 = *(this + 24);
      }

      else
      {
        v218 = 1;
      }

      v216 += v218;
      ++v215;
    }

    while (v215 < v214);
  }

  v219 = *(this + 34);
  if (v219 < 1)
  {
    v221 = 0;
  }

  else
  {
    v220 = 0;
    v221 = 0;
    do
    {
      v222 = *(*(this + 16) + 4 * v220);
      if (v222 >= 0x80)
      {
        v223 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v222);
        v219 = *(this + 34);
      }

      else
      {
        v223 = 1;
      }

      v221 += v223;
      ++v220;
    }

    while (v220 < v219);
  }

  v224 = *(this + 40);
  if (v224 < 1)
  {
    v427 = 0;
  }

  else
  {
    v225 = 0;
    v427 = 0;
    do
    {
      v226 = v224;
      v227 = *(*(this + 19) + 4 * v225);
      if (v227 >= 0x80)
      {
        v228 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v227);
        v226 = *(this + 40);
      }

      else
      {
        v228 = 1;
      }

      v427 += v228;
      ++v225;
      v224 = v226;
    }

    while (v225 < v226);
  }

  v397 = v224;
  v229 = *(this + 44);
  if (v229 < 1)
  {
    v426 = 0;
  }

  else
  {
    v230 = 0;
    v426 = 0;
    do
    {
      v231 = v229;
      v232 = *(*(this + 21) + 4 * v230);
      if (v232 >= 0x80)
      {
        v233 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v232);
        v231 = *(this + 44);
      }

      else
      {
        v233 = 1;
      }

      v426 += v233;
      ++v230;
      v229 = v231;
    }

    while (v230 < v231);
  }

  v396 = v229;
  v234 = *(this + 50);
  if (v234 < 1)
  {
    v425 = 0;
  }

  else
  {
    v235 = 0;
    v425 = 0;
    do
    {
      v236 = v234;
      v237 = *(*(this + 24) + 4 * v235);
      if (v237 >= 0x80)
      {
        v238 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v237);
        v236 = *(this + 50);
      }

      else
      {
        v238 = 1;
      }

      v425 += v238;
      ++v235;
      v234 = v236;
    }

    while (v235 < v236);
  }

  v395 = v234;
  v239 = *(this + 60);
  if (v239 < 1)
  {
    v424 = 0;
  }

  else
  {
    v240 = 0;
    v424 = 0;
    do
    {
      v241 = v239;
      v242 = *(*(this + 29) + 4 * v240);
      if (v242 >= 0x80)
      {
        v243 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v242);
        v241 = *(this + 60);
      }

      else
      {
        v243 = 1;
      }

      v424 += v243;
      ++v240;
      v239 = v241;
    }

    while (v240 < v241);
  }

  v394 = v239;
  v244 = *(this + 66);
  if (v244 < 1)
  {
    v423 = 0;
  }

  else
  {
    v245 = 0;
    v423 = 0;
    do
    {
      v246 = v244;
      v247 = *(*(this + 32) + 4 * v245);
      if (v247 >= 0x80)
      {
        v248 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v247);
        v246 = *(this + 66);
      }

      else
      {
        v248 = 1;
      }

      v423 += v248;
      ++v245;
      v244 = v246;
    }

    while (v245 < v246);
  }

  v393 = v244;
  v249 = *(this + 70);
  if (v249 < 1)
  {
    v422 = 0;
  }

  else
  {
    v250 = 0;
    v422 = 0;
    do
    {
      v251 = v249;
      v252 = *(*(this + 34) + 4 * v250);
      if (v252 >= 0x80)
      {
        v253 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v252);
        v251 = *(this + 70);
      }

      else
      {
        v253 = 1;
      }

      v422 += v253;
      ++v250;
      v249 = v251;
    }

    while (v250 < v251);
  }

  v392 = v249;
  v254 = *(this + 76);
  if (v254 < 1)
  {
    v421 = 0;
  }

  else
  {
    v255 = 0;
    v421 = 0;
    do
    {
      v256 = v254;
      v257 = *(*(this + 37) + 4 * v255);
      if (v257 >= 0x80)
      {
        v258 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v257);
        v256 = *(this + 76);
      }

      else
      {
        v258 = 1;
      }

      v421 += v258;
      ++v255;
      v254 = v256;
    }

    while (v255 < v256);
  }

  v391 = v254;
  v259 = *(this + 80);
  if (v259 < 1)
  {
    v420 = 0;
  }

  else
  {
    v260 = 0;
    v420 = 0;
    do
    {
      v261 = v259;
      v262 = *(*(this + 39) + 4 * v260);
      if (v262 >= 0x80)
      {
        v263 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v262);
        v261 = *(this + 80);
      }

      else
      {
        v263 = 1;
      }

      v420 += v263;
      ++v260;
      v259 = v261;
    }

    while (v260 < v261);
  }

  v390 = v259;
  v264 = *(this + 100);
  if (v264 < 1)
  {
    v419 = 0;
  }

  else
  {
    v265 = 0;
    v419 = 0;
    do
    {
      v266 = v264;
      v267 = *(*(this + 49) + 4 * v265);
      if (v267 >= 0x80)
      {
        v268 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v267);
        v266 = *(this + 100);
      }

      else
      {
        v268 = 1;
      }

      v419 += v268;
      ++v265;
      v264 = v266;
    }

    while (v265 < v266);
  }

  v389 = v264;
  v269 = *(this + 106);
  if (v269 < 1)
  {
    v418 = 0;
  }

  else
  {
    v270 = 0;
    v418 = 0;
    do
    {
      v271 = v269;
      v272 = *(*(this + 52) + 4 * v270);
      if (v272 >= 0x80)
      {
        v273 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v272);
        v271 = *(this + 106);
      }

      else
      {
        v273 = 1;
      }

      v418 += v273;
      ++v270;
      v269 = v271;
    }

    while (v270 < v271);
  }

  v388 = v269;
  v274 = *(this + 110);
  if (v274 < 1)
  {
    v417 = 0;
  }

  else
  {
    v275 = 0;
    v417 = 0;
    do
    {
      v276 = v274;
      v277 = *(*(this + 54) + 4 * v275);
      if (v277 >= 0x80)
      {
        v278 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v277);
        v276 = *(this + 110);
      }

      else
      {
        v278 = 1;
      }

      v417 += v278;
      ++v275;
      v274 = v276;
    }

    while (v275 < v276);
  }

  v387 = v274;
  v279 = *(this + 120);
  if (v279 < 1)
  {
    v416 = 0;
  }

  else
  {
    v280 = 0;
    v416 = 0;
    do
    {
      v281 = v279;
      v282 = *(*(this + 59) + 4 * v280);
      if (v282 >= 0x80)
      {
        v283 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v282);
        v281 = *(this + 120);
      }

      else
      {
        v283 = 1;
      }

      v416 += v283;
      ++v280;
      v279 = v281;
    }

    while (v280 < v281);
  }

  v386 = v279;
  v284 = *(this + 124);
  if (v284 < 1)
  {
    v415 = 0;
  }

  else
  {
    v285 = 0;
    v415 = 0;
    do
    {
      v286 = v284;
      v287 = *(*(this + 61) + 4 * v285);
      if (v287 >= 0x80)
      {
        v288 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v287);
        v286 = *(this + 124);
      }

      else
      {
        v288 = 1;
      }

      v415 += v288;
      ++v285;
      v284 = v286;
    }

    while (v285 < v286);
  }

  v385 = v284;
  v289 = *(this + 128);
  if (v289 < 1)
  {
    v414 = 0;
  }

  else
  {
    v290 = 0;
    v414 = 0;
    do
    {
      v291 = v289;
      v292 = *(*(this + 63) + 4 * v290);
      if (v292 >= 0x80)
      {
        v293 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v292);
        v291 = *(this + 128);
      }

      else
      {
        v293 = 1;
      }

      v414 += v293;
      ++v290;
      v289 = v291;
    }

    while (v290 < v291);
  }

  v384 = v289;
  v294 = *(this + 132);
  if (v294 < 1)
  {
    v413 = 0;
  }

  else
  {
    v295 = 0;
    v413 = 0;
    do
    {
      v296 = v294;
      v297 = *(*(this + 65) + 4 * v295);
      if (v297 >= 0x80)
      {
        v298 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v297);
        v296 = *(this + 132);
      }

      else
      {
        v298 = 1;
      }

      v413 += v298;
      ++v295;
      v294 = v296;
    }

    while (v295 < v296);
  }

  v383 = v294;
  v299 = *(this + 136);
  if (v299 < 1)
  {
    v412 = 0;
  }

  else
  {
    v300 = 0;
    v412 = 0;
    do
    {
      v301 = v299;
      v302 = *(*(this + 67) + 4 * v300);
      if (v302 >= 0x80)
      {
        v303 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v302);
        v301 = *(this + 136);
      }

      else
      {
        v303 = 1;
      }

      v412 += v303;
      ++v300;
      v299 = v301;
    }

    while (v300 < v301);
  }

  v382 = v299;
  v304 = *(this + 140);
  if (v304 < 1)
  {
    v411 = 0;
  }

  else
  {
    v305 = 0;
    v411 = 0;
    do
    {
      v306 = v304;
      v307 = *(*(this + 69) + 4 * v305);
      if (v307 >= 0x80)
      {
        v308 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v307);
        v306 = *(this + 140);
      }

      else
      {
        v308 = 1;
      }

      v411 += v308;
      ++v305;
      v304 = v306;
    }

    while (v305 < v306);
  }

  v381 = v304;
  v309 = *(this + 144);
  if (v309 < 1)
  {
    v410 = 0;
  }

  else
  {
    v310 = 0;
    v410 = 0;
    do
    {
      v311 = v309;
      v312 = *(*(this + 71) + 4 * v310);
      if (v312 >= 0x80)
      {
        v313 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v312);
        v311 = *(this + 144);
      }

      else
      {
        v313 = 1;
      }

      v410 += v313;
      ++v310;
      v309 = v311;
    }

    while (v310 < v311);
  }

  v380 = v309;
  v314 = *(this + 148);
  if (v314 < 1)
  {
    v409 = 0;
  }

  else
  {
    v315 = 0;
    v409 = 0;
    do
    {
      v316 = v314;
      v317 = *(*(this + 73) + 4 * v315);
      if (v317 >= 0x80)
      {
        v318 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v317);
        v316 = *(this + 148);
      }

      else
      {
        v318 = 1;
      }

      v409 += v318;
      ++v315;
      v314 = v316;
    }

    while (v315 < v316);
  }

  v379 = v314;
  v319 = *(this + 152);
  if (v319 < 1)
  {
    v408 = 0;
  }

  else
  {
    v320 = 0;
    v408 = 0;
    do
    {
      v321 = v319;
      v322 = *(*(this + 75) + 4 * v320);
      if (v322 >= 0x80)
      {
        v323 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v322);
        v321 = *(this + 152);
      }

      else
      {
        v323 = 1;
      }

      v408 += v323;
      ++v320;
      v319 = v321;
    }

    while (v320 < v321);
  }

  v378 = v319;
  v324 = *(this + 162);
  if (v324 < 1)
  {
    v407 = 0;
  }

  else
  {
    v325 = 0;
    v407 = 0;
    do
    {
      v326 = v324;
      v327 = *(*(this + 80) + 4 * v325);
      if (v327 >= 0x80)
      {
        v328 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v327);
        v326 = *(this + 162);
      }

      else
      {
        v328 = 1;
      }

      v407 += v328;
      ++v325;
      v324 = v326;
    }

    while (v325 < v326);
  }

  v377 = v324;
  v400 = v216;
  v329 = *(this + 166);
  if (v329 < 1)
  {
    v331 = 0;
  }

  else
  {
    v330 = 0;
    v331 = 0;
    do
    {
      v332 = *(*(this + 82) + 4 * v330);
      if (v332 >= 0x80)
      {
        v333 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v332);
        v329 = *(this + 166);
      }

      else
      {
        v333 = 1;
      }

      v331 += v333;
      ++v330;
    }

    while (v330 < v329);
  }

  v376 = v329;
  v403 = v206;
  v334 = *(this + 170);
  if (v334 < 1)
  {
    v336 = 0;
  }

  else
  {
    v335 = 0;
    v336 = 0;
    do
    {
      v337 = *(*(this + 84) + 4 * v335);
      if (v337 >= 0x80)
      {
        v338 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v337);
        v334 = *(this + 170);
      }

      else
      {
        v338 = 1;
      }

      v336 += v338;
      ++v335;
    }

    while (v335 < v334);
  }

  v375 = v334;
  v402 = v209;
  v339 = *(this + 174);
  if (v339 < 1)
  {
    v341 = 0;
  }

  else
  {
    v340 = 0;
    v341 = 0;
    do
    {
      v342 = *(*(this + 86) + 4 * v340);
      if (v342 >= 0x80)
      {
        v343 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v342);
        v339 = *(this + 174);
      }

      else
      {
        v343 = 1;
      }

      v341 += v343;
      ++v340;
    }

    while (v340 < v339);
  }

  v374 = v339;
  v401 = v214;
  v344 = *(this + 178);
  if (v344 < 1)
  {
    v346 = 0;
  }

  else
  {
    v345 = 0;
    v346 = 0;
    do
    {
      v347 = *(*(this + 88) + 4 * v345);
      if (v347 >= 0x80)
      {
        v348 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v347);
        v344 = *(this + 178);
      }

      else
      {
        v348 = 1;
      }

      v346 += v348;
      ++v345;
    }

    while (v345 < v344);
  }

  v373 = v344;
  v399 = v221;
  v349 = *(this + 184);
  if (v349 < 1)
  {
    v351 = 0;
  }

  else
  {
    v350 = 0;
    v351 = 0;
    do
    {
      v352 = *(*(this + 91) + 4 * v350);
      if (v352 >= 0x80)
      {
        v353 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v352);
        v349 = *(this + 184);
      }

      else
      {
        v353 = 1;
      }

      v351 += v353;
      ++v350;
    }

    while (v350 < v349);
  }

  v372 = v349;
  v398 = v219;
  v354 = *(this + 188);
  if (v354 < 1)
  {
    v356 = 0;
  }

  else
  {
    v355 = 0;
    v356 = 0;
    do
    {
      v357 = *(*(this + 93) + 4 * v355);
      if (v357 >= 0x80)
      {
        v358 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v357);
        v354 = *(this + 188);
      }

      else
      {
        v358 = 1;
      }

      v356 += v358;
      ++v355;
    }

    while (v355 < v354);
  }

  v371 = v354;
  v404 = v204;
  v359 = *(this + 192);
  if (v359 < 1)
  {
    v361 = 0;
  }

  else
  {
    v360 = 0;
    v361 = 0;
    do
    {
      v362 = *(*(this + 95) + 4 * v360);
      if (v362 >= 0x80)
      {
        v363 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v362);
        v359 = *(this + 192);
      }

      else
      {
        v363 = 1;
      }

      v361 += v363;
      ++v360;
    }

    while (v360 < v359);
  }

  v406 = this;
  v364 = *(this + 196);
  v370 = v359;
  if (v364 < 1)
  {
    v366 = 0;
  }

  else
  {
    v365 = 0;
    v366 = 0;
    do
    {
      v367 = *(*(v406 + 97) + 4 * v365);
      if (v367 >= 0x80)
      {
        v368 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v367);
        v364 = *(v406 + 196);
      }

      else
      {
        v368 = 1;
      }

      v366 += v368;
      ++v365;
    }

    while (v365 < v364);
  }

  result = (v403 + v405 + v404 + v211 + v402 + v400 + v401 + v399 + v427 + v426 + v425 + v424 + v423 + v422 + v421 + v420 + v419 + v418 + v417 + v416 + v415 + v414 + v413 + v412 + v411 + v410 + v409 + v408 + v407 + v331 + v336 + v341 + v346 + v351 + v356 + v361 + v366 + 2 * (v397 + v398 + v396 + v395 + v394 + v393 + v392 + v391 + v390 + v389 + v388 + v387 + v386 + v385 + v384 + v383 + v382 + v381 + v380 + v379 + v378 + v377 + v376 + v375 + v374 + v373 + v372 + v371 + v370 + v364));
  *(v406 + 234) = result;
  return result;
}

void awd::metrics::BluetoothAccessoryDailyUsage::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryDailyUsage *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAccessoryDailyUsage::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAccessoryDailyUsage::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAccessoryDailyUsage::CopyFrom(awd::metrics::BluetoothAccessoryDailyUsage *this, const awd::metrics::BluetoothAccessoryDailyUsage *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAccessoryDailyUsage::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothAccessoryDailyUsage::Swap(awd::metrics::BluetoothAccessoryDailyUsage *this, awd::metrics::BluetoothAccessoryDailyUsage *a2)
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
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    v3 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v4 = *(a2 + 7);
    *(a2 + 6) = v3;
    v5 = *(this + 7);
    *(this + 7) = v4;
    *(a2 + 7) = v5;
    v6 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    v7 = *(a2 + 10);
    *(a2 + 9) = v6;
    v8 = *(this + 10);
    *(this + 10) = v7;
    *(a2 + 10) = v8;
    v9 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    v10 = *(a2 + 12);
    *(a2 + 11) = v9;
    v11 = *(this + 12);
    *(this + 12) = v10;
    *(a2 + 12) = v11;
    LODWORD(v9) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v9;
    LODWORD(v9) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v9;
    LODWORD(v9) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v9;
    LODWORD(v9) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v9;
    LODWORD(v9) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v9;
    LODWORD(v9) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v9;
    LODWORD(v9) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v9;
    v12 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    v13 = *(a2 + 17);
    *(a2 + 16) = v12;
    v14 = *(this + 17);
    *(this + 17) = v13;
    *(a2 + 17) = v14;
    LODWORD(v12) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v12;
    LODWORD(v12) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v12;
    LODWORD(v12) = *(this + 46);
    *(this + 46) = *(a2 + 46);
    *(a2 + 46) = v12;
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
    v21 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    v22 = *(a2 + 25);
    *(a2 + 24) = v21;
    v23 = *(this + 25);
    *(this + 25) = v22;
    *(a2 + 25) = v23;
    LODWORD(v21) = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v21;
    LODWORD(v21) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v21;
    LODWORD(v21) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v21;
    LODWORD(v21) = *(this + 54);
    *(this + 54) = *(a2 + 54);
    *(a2 + 54) = v21;
    LODWORD(v21) = *(this + 55);
    *(this + 55) = *(a2 + 55);
    *(a2 + 55) = v21;
    LODWORD(v21) = *(this + 56);
    *(this + 56) = *(a2 + 56);
    *(a2 + 56) = v21;
    LODWORD(v21) = *(this + 57);
    *(this + 57) = *(a2 + 57);
    *(a2 + 57) = v21;
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
    LODWORD(v24) = *(this + 72);
    *(this + 72) = *(a2 + 72);
    *(a2 + 72) = v24;
    v27 = *(this + 32);
    *(this + 32) = *(a2 + 32);
    v28 = *(a2 + 33);
    *(a2 + 32) = v27;
    v29 = *(this + 33);
    *(this + 33) = v28;
    *(a2 + 33) = v29;
    v30 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    v31 = *(a2 + 35);
    *(a2 + 34) = v30;
    v32 = *(this + 35);
    *(this + 35) = v31;
    *(a2 + 35) = v32;
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
    LODWORD(v36) = *(this + 73);
    *(this + 73) = *(a2 + 73);
    *(a2 + 73) = v36;
    LODWORD(v36) = *(this + 82);
    *(this + 82) = *(a2 + 82);
    *(a2 + 82) = v36;
    LODWORD(v36) = *(this + 83);
    *(this + 83) = *(a2 + 83);
    *(a2 + 83) = v36;
    LODWORD(v36) = *(this + 84);
    *(this + 84) = *(a2 + 84);
    *(a2 + 84) = v36;
    LODWORD(v36) = *(this + 85);
    *(this + 85) = *(a2 + 85);
    *(a2 + 85) = v36;
    LODWORD(v36) = *(this + 86);
    *(this + 86) = *(a2 + 86);
    *(a2 + 86) = v36;
    LODWORD(v36) = *(this + 87);
    *(this + 87) = *(a2 + 87);
    *(a2 + 87) = v36;
    LODWORD(v36) = *(this + 88);
    *(this + 88) = *(a2 + 88);
    *(a2 + 88) = v36;
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
    LODWORD(v36) = *(this + 102);
    *(this + 102) = *(a2 + 102);
    *(a2 + 102) = v36;
    v39 = *(this + 49);
    *(this + 49) = *(a2 + 49);
    v40 = *(a2 + 50);
    *(a2 + 49) = v39;
    v41 = *(this + 50);
    *(this + 50) = v40;
    *(a2 + 50) = v41;
    v42 = *(this + 52);
    *(this + 52) = *(a2 + 52);
    v43 = *(a2 + 53);
    *(a2 + 52) = v42;
    v44 = *(this + 53);
    *(this + 53) = v43;
    *(a2 + 53) = v44;
    v45 = *(this + 54);
    *(this + 54) = *(a2 + 54);
    v46 = *(a2 + 55);
    *(a2 + 54) = v45;
    v47 = *(this + 55);
    *(this + 55) = v46;
    *(a2 + 55) = v47;
    LODWORD(v45) = *(this + 103);
    *(this + 103) = *(a2 + 103);
    *(a2 + 103) = v45;
    LODWORD(v45) = *(this + 112);
    *(this + 112) = *(a2 + 112);
    *(a2 + 112) = v45;
    LODWORD(v45) = *(this + 113);
    *(this + 113) = *(a2 + 113);
    *(a2 + 113) = v45;
    LODWORD(v45) = *(this + 114);
    *(this + 114) = *(a2 + 114);
    *(a2 + 114) = v45;
    LODWORD(v45) = *(this + 115);
    *(this + 115) = *(a2 + 115);
    *(a2 + 115) = v45;
    LODWORD(v45) = *(this + 116);
    *(this + 116) = *(a2 + 116);
    *(a2 + 116) = v45;
    v48 = *(this + 59);
    *(this + 59) = *(a2 + 59);
    v49 = *(a2 + 60);
    *(a2 + 59) = v48;
    v50 = *(this + 60);
    *(this + 60) = v49;
    *(a2 + 60) = v50;
    LODWORD(v48) = *(this + 117);
    *(this + 117) = *(a2 + 117);
    *(a2 + 117) = v48;
    v51 = *(this + 61);
    *(this + 61) = *(a2 + 61);
    v52 = *(a2 + 62);
    *(a2 + 61) = v51;
    v53 = *(this + 62);
    *(this + 62) = v52;
    *(a2 + 62) = v53;
    v54 = *(this + 63);
    *(this + 63) = *(a2 + 63);
    v55 = *(a2 + 64);
    *(a2 + 63) = v54;
    v56 = *(this + 64);
    *(this + 64) = v55;
    *(a2 + 64) = v56;
    v57 = *(this + 65);
    *(this + 65) = *(a2 + 65);
    v58 = *(a2 + 66);
    *(a2 + 65) = v57;
    v59 = *(this + 66);
    *(this + 66) = v58;
    *(a2 + 66) = v59;
    v60 = *(this + 67);
    *(this + 67) = *(a2 + 67);
    v61 = *(a2 + 68);
    *(a2 + 67) = v60;
    v62 = *(this + 68);
    *(this + 68) = v61;
    *(a2 + 68) = v62;
    v63 = *(this + 69);
    *(this + 69) = *(a2 + 69);
    v64 = *(a2 + 70);
    *(a2 + 69) = v63;
    v65 = *(this + 70);
    *(this + 70) = v64;
    *(a2 + 70) = v65;
    v66 = *(this + 71);
    *(this + 71) = *(a2 + 71);
    v67 = *(a2 + 72);
    *(a2 + 71) = v66;
    v68 = *(this + 72);
    *(this + 72) = v67;
    *(a2 + 72) = v68;
    v69 = *(this + 73);
    *(this + 73) = *(a2 + 73);
    v70 = *(a2 + 74);
    *(a2 + 73) = v69;
    v71 = *(this + 74);
    *(this + 74) = v70;
    *(a2 + 74) = v71;
    v72 = *(this + 75);
    *(this + 75) = *(a2 + 75);
    v73 = *(a2 + 76);
    *(a2 + 75) = v72;
    v74 = *(this + 76);
    *(this + 76) = v73;
    *(a2 + 76) = v74;
    LODWORD(v72) = *(this + 154);
    *(this + 154) = *(a2 + 154);
    *(a2 + 154) = v72;
    LODWORD(v72) = *(this + 155);
    *(this + 155) = *(a2 + 155);
    *(a2 + 155) = v72;
    LODWORD(v72) = *(this + 156);
    *(this + 156) = *(a2 + 156);
    *(a2 + 156) = v72;
    LODWORD(v72) = *(this + 157);
    *(this + 157) = *(a2 + 157);
    *(a2 + 157) = v72;
    LODWORD(v72) = *(this + 158);
    *(this + 158) = *(a2 + 158);
    *(a2 + 158) = v72;
    LODWORD(v72) = *(this + 159);
    *(this + 159) = *(a2 + 159);
    *(a2 + 159) = v72;
    v75 = *(this + 80);
    *(this + 80) = *(a2 + 80);
    v76 = *(a2 + 81);
    *(a2 + 80) = v75;
    v77 = *(this + 81);
    *(this + 81) = v76;
    *(a2 + 81) = v77;
    LODWORD(v75) = *(this + 180);
    *(this + 180) = *(a2 + 180);
    *(a2 + 180) = v75;
    v78 = *(this + 82);
    *(this + 82) = *(a2 + 82);
    v79 = *(a2 + 83);
    *(a2 + 82) = v78;
    v80 = *(this + 83);
    *(this + 83) = v79;
    *(a2 + 83) = v80;
    v81 = *(this + 84);
    *(this + 84) = *(a2 + 84);
    v82 = *(a2 + 85);
    *(a2 + 84) = v81;
    v83 = *(this + 85);
    *(this + 85) = v82;
    *(a2 + 85) = v83;
    v84 = *(this + 86);
    *(this + 86) = *(a2 + 86);
    v85 = *(a2 + 87);
    *(a2 + 86) = v84;
    v86 = *(this + 87);
    *(this + 87) = v85;
    *(a2 + 87) = v86;
    v87 = *(this + 88);
    *(this + 88) = *(a2 + 88);
    v88 = *(a2 + 89);
    *(a2 + 88) = v87;
    v89 = *(this + 89);
    *(this + 89) = v88;
    *(a2 + 89) = v89;
    v90 = *(this + 91);
    *(this + 91) = *(a2 + 91);
    v91 = *(a2 + 92);
    *(a2 + 91) = v90;
    v92 = *(this + 92);
    *(this + 92) = v91;
    *(a2 + 92) = v92;
    v93 = *(this + 93);
    *(this + 93) = *(a2 + 93);
    v94 = *(a2 + 94);
    *(a2 + 93) = v93;
    v95 = *(this + 94);
    *(this + 94) = v94;
    *(a2 + 94) = v95;
    v96 = *(this + 95);
    *(this + 95) = *(a2 + 95);
    v97 = *(a2 + 96);
    *(a2 + 95) = v96;
    v98 = *(this + 96);
    *(this + 96) = v97;
    *(a2 + 96) = v98;
    v99 = *(this + 97);
    *(this + 97) = *(a2 + 97);
    result = *(a2 + 98);
    *(a2 + 97) = v99;
    v101 = *(this + 98);
    *(this + 98) = result;
    *(a2 + 98) = v101;
    LODWORD(v99) = *(this + 181);
    *(this + 181) = *(a2 + 181);
    *(a2 + 181) = v99;
    LODWORD(v99) = *(this + 198);
    *(this + 198) = *(a2 + 198);
    *(a2 + 198) = v99;
    LODWORD(v99) = *(this + 199);
    *(this + 199) = *(a2 + 199);
    *(a2 + 199) = v99;
    LODWORD(v99) = *(this + 200);
    *(this + 200) = *(a2 + 200);
    *(a2 + 200) = v99;
    LODWORD(v99) = *(this + 201);
    *(this + 201) = *(a2 + 201);
    *(a2 + 201) = v99;
    LODWORD(v99) = *(this + 202);
    *(this + 202) = *(a2 + 202);
    *(a2 + 202) = v99;
    LODWORD(v99) = *(this + 203);
    *(this + 203) = *(a2 + 203);
    *(a2 + 203) = v99;
    LODWORD(v99) = *(this + 204);
    *(this + 204) = *(a2 + 204);
    *(a2 + 204) = v99;
    LODWORD(v99) = *(this + 205);
    *(this + 205) = *(a2 + 205);
    *(a2 + 205) = v99;
    LODWORD(v99) = *(this + 206);
    *(this + 206) = *(a2 + 206);
    *(a2 + 206) = v99;
    LODWORD(v99) = *(this + 207);
    *(this + 207) = *(a2 + 207);
    *(a2 + 207) = v99;
    LODWORD(v99) = *(this + 208);
    *(this + 208) = *(a2 + 208);
    *(a2 + 208) = v99;
    LODWORD(v99) = *(this + 209);
    *(this + 209) = *(a2 + 209);
    *(a2 + 209) = v99;
    LODWORD(v99) = *(this + 210);
    *(this + 210) = *(a2 + 210);
    *(a2 + 210) = v99;
    LODWORD(v99) = *(this + 211);
    *(this + 211) = *(a2 + 211);
    *(a2 + 211) = v99;
    LODWORD(v99) = *(this + 212);
    *(this + 212) = *(a2 + 212);
    *(a2 + 212) = v99;
    LODWORD(v99) = *(this + 213);
    *(this + 213) = *(a2 + 213);
    *(a2 + 213) = v99;
    LODWORD(v99) = *(this + 214);
    *(this + 214) = *(a2 + 214);
    *(a2 + 214) = v99;
    LODWORD(v99) = *(this + 215);
    *(this + 215) = *(a2 + 215);
    *(a2 + 215) = v99;
    LODWORD(v99) = *(this + 216);
    *(this + 216) = *(a2 + 216);
    *(a2 + 216) = v99;
    LODWORD(v99) = *(this + 217);
    *(this + 217) = *(a2 + 217);
    *(a2 + 217) = v99;
    LODWORD(v99) = *(this + 218);
    *(this + 218) = *(a2 + 218);
    *(a2 + 218) = v99;
    LODWORD(v99) = *(this + 219);
    *(this + 219) = *(a2 + 219);
    *(a2 + 219) = v99;
    LODWORD(v99) = *(this + 220);
    *(this + 220) = *(a2 + 220);
    *(a2 + 220) = v99;
    LODWORD(v99) = *(this + 221);
    *(this + 221) = *(a2 + 221);
    *(a2 + 221) = v99;
    LODWORD(v99) = *(this + 222);
    *(this + 222) = *(a2 + 222);
    *(a2 + 222) = v99;
    LODWORD(v99) = *(this + 223);
    *(this + 223) = *(a2 + 223);
    *(a2 + 223) = v99;
    LODWORD(v99) = *(this + 224);
    *(this + 224) = *(a2 + 224);
    *(a2 + 224) = v99;
    LODWORD(v99) = *(this + 225);
    *(this + 225) = *(a2 + 225);
    *(a2 + 225) = v99;
    LODWORD(v99) = *(this + 226);
    *(this + 226) = *(a2 + 226);
    *(a2 + 226) = v99;
    LODWORD(v99) = *(this + 227);
    *(this + 227) = *(a2 + 227);
    *(a2 + 227) = v99;
    LODWORD(v99) = *(this + 228);
    *(this + 228) = *(a2 + 228);
    *(a2 + 228) = v99;
    LODWORD(v99) = *(this + 229);
    *(this + 229) = *(a2 + 229);
    *(a2 + 229) = v99;
    LODWORD(v99) = *(this + 230);
    *(this + 230) = *(a2 + 230);
    *(a2 + 230) = v99;
    LODWORD(v99) = *(this + 231);
    *(this + 231) = *(a2 + 231);
    *(a2 + 231) = v99;
    LODWORD(v99) = *(this + 232);
    *(this + 232) = *(a2 + 232);
    *(a2 + 232) = v99;
    LODWORD(v99) = *(this + 233);
    *(this + 233) = *(a2 + 233);
    *(a2 + 233) = v99;
    LODWORD(v99) = *(this + 235);
    *(this + 235) = *(a2 + 235);
    *(a2 + 235) = v99;
    LODWORD(v99) = *(this + 236);
    *(this + 236) = *(a2 + 236);
    *(a2 + 236) = v99;
    LODWORD(v99) = *(this + 237);
    *(this + 237) = *(a2 + 237);
    *(a2 + 237) = v99;
    LODWORD(v99) = *(this + 238);
    *(this + 238) = *(a2 + 238);
    *(a2 + 238) = v99;
    LODWORD(v99) = *(this + 239);
    *(this + 239) = *(a2 + 239);
    *(a2 + 239) = v99;
    LODWORD(v99) = *(this + 234);
    *(this + 234) = *(a2 + 234);
    *(a2 + 234) = v99;
  }

  return result;
}

double awd::metrics::BluetoothAccessoryEvent::SharedCtor(awd::metrics::BluetoothAccessoryEvent *this)
{
  result = 0.0;
  *(this + 11) = 0;
  *(this + 18) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 14) = 0;
  *(this + 15) = 0;
  return result;
}

awd::metrics::BluetoothAccessoryEvent *awd::metrics::BluetoothAccessoryEvent::BluetoothAccessoryEvent(awd::metrics::BluetoothAccessoryEvent *this, const awd::metrics::BluetoothAccessoryEvent *a2)
{
  *this = &unk_2A1D4BA30;
  *(this + 72) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  awd::metrics::BluetoothAccessoryEvent::MergeFrom(this, a2);
  return this;
}

void sub_296390AD0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 16);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  awd::metrics::BluetoothAccessoryEvent::BluetoothAccessoryEvent(v1 + 96, v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryEvent::MergeFrom(awd::metrics::BluetoothAccessoryEvent *this, const awd::metrics::BluetoothAccessoryEvent *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v29);
  }

  v4 = *(a2 + 20);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 9, *(this + 20) + v4);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  v5 = *(a2 + 26);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 26) + v5);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v6 = *(a2 + 34);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 34) + v6);
    memcpy((*(this + 16) + 4 * *(this + 34)), *(a2 + 16), 4 * *(a2 + 34));
    *(this + 34) += *(a2 + 34);
  }

  v7 = *(a2 + 37);
  if (!v7)
  {
    goto LABEL_19;
  }

  if (v7)
  {
    v11 = *(a2 + 1);
    *(this + 37) |= 1u;
    *(this + 1) = v11;
    v7 = *(a2 + 37);
    if ((v7 & 2) == 0)
    {
LABEL_12:
      if ((v7 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_39;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_12;
  }

  v12 = *(a2 + 4);
  *(this + 37) |= 2u;
  *(this + 4) = v12;
  v7 = *(a2 + 37);
  if ((v7 & 4) == 0)
  {
LABEL_13:
    if ((v7 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  v13 = *(a2 + 5);
  *(this + 37) |= 4u;
  *(this + 5) = v13;
  v7 = *(a2 + 37);
  if ((v7 & 8) == 0)
  {
LABEL_14:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  v14 = *(a2 + 6);
  *(this + 37) |= 8u;
  *(this + 6) = v14;
  v7 = *(a2 + 37);
  if ((v7 & 0x10) == 0)
  {
LABEL_15:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_42:
    v16 = *(a2 + 8);
    *(this + 37) |= 0x20u;
    *(this + 8) = v16;
    v7 = *(a2 + 37);
    if ((v7 & 0x40) == 0)
    {
LABEL_17:
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_41:
  v15 = *(a2 + 7);
  *(this + 37) |= 0x10u;
  *(this + 7) = v15;
  v7 = *(a2 + 37);
  if ((v7 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_16:
  if ((v7 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_43:
  v17 = *(a2 + 9);
  *(this + 37) |= 0x40u;
  *(this + 9) = v17;
  v7 = *(a2 + 37);
  if ((v7 & 0x80) != 0)
  {
LABEL_18:
    v8 = *(a2 + 10);
    *(this + 37) |= 0x80u;
    *(this + 10) = v8;
    v7 = *(a2 + 37);
  }

LABEL_19:
  if ((v7 & 0xFF00) == 0)
  {
    goto LABEL_29;
  }

  if ((v7 & 0x100) != 0)
  {
    v18 = *(a2 + 11);
    *(this + 37) |= 0x100u;
    *(this + 11) = v18;
    v7 = *(a2 + 37);
    if ((v7 & 0x200) == 0)
    {
LABEL_22:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_47;
    }
  }

  else if ((v7 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  v19 = *(a2 + 12);
  *(this + 37) |= 0x200u;
  *(this + 12) = v19;
  v7 = *(a2 + 37);
  if ((v7 & 0x400) == 0)
  {
LABEL_23:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_47:
  v20 = *(a2 + 13);
  *(this + 37) |= 0x400u;
  *(this + 13) = v20;
  v7 = *(a2 + 37);
  if ((v7 & 0x800) == 0)
  {
LABEL_24:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_48:
  v21 = *(a2 + 14);
  *(this + 37) |= 0x800u;
  *(this + 14) = v21;
  v7 = *(a2 + 37);
  if ((v7 & 0x1000) == 0)
  {
LABEL_25:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

LABEL_49:
  v22 = *(a2 + 15);
  *(this + 37) |= 0x1000u;
  *(this + 15) = v22;
  v7 = *(a2 + 37);
  if ((v7 & 0x2000) == 0)
  {
LABEL_26:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

LABEL_50:
  v23 = *(a2 + 16);
  *(this + 37) |= 0x2000u;
  *(this + 16) = v23;
  v7 = *(a2 + 37);
  if ((v7 & 0x4000) == 0)
  {
LABEL_27:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_51:
  v24 = *(a2 + 17);
  *(this + 37) |= 0x4000u;
  *(this + 17) = v24;
  v7 = *(a2 + 37);
  if ((v7 & 0x8000) != 0)
  {
LABEL_28:
    v9 = *(a2 + 22);
    *(this + 37) |= 0x8000u;
    *(this + 22) = v9;
    v7 = *(a2 + 37);
  }

LABEL_29:
  if ((v7 & 0x3FC0000) == 0)
  {
    return;
  }

  if ((v7 & 0x40000) != 0)
  {
    v25 = *(a2 + 23);
    *(this + 37) |= 0x40000u;
    *(this + 23) = v25;
    v7 = *(a2 + 37);
    if ((v7 & 0x80000) == 0)
    {
LABEL_32:
      if ((v7 & 0x100000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_55;
    }
  }

  else if ((v7 & 0x80000) == 0)
  {
    goto LABEL_32;
  }

  v26 = *(a2 + 28);
  *(this + 37) |= 0x80000u;
  *(this + 28) = v26;
  v7 = *(a2 + 37);
  if ((v7 & 0x100000) == 0)
  {
LABEL_33:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_56;
  }

LABEL_55:
  v27 = *(a2 + 29);
  *(this + 37) |= 0x100000u;
  *(this + 29) = v27;
  v7 = *(a2 + 37);
  if ((v7 & 0x200000) == 0)
  {
LABEL_34:
    if ((v7 & 0x400000) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

LABEL_56:
  v28 = *(a2 + 30);
  *(this + 37) |= 0x200000u;
  *(this + 30) = v28;
  if ((*(a2 + 37) & 0x400000) == 0)
  {
    return;
  }

LABEL_35:
  v10 = *(a2 + 31);
  *(this + 37) |= 0x400000u;
  *(this + 31) = v10;
}

void sub_296390F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryEvent::~BluetoothAccessoryEvent(awd::metrics::BluetoothAccessoryEvent *this)
{
  *this = &unk_2A1D4BA30;
  v2 = *(this + 16);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 12);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 9);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAccessoryEvent::~BluetoothAccessoryEvent(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAccessoryEvent::default_instance(awd::metrics::BluetoothAccessoryEvent *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryEvent::default_instance_;
  if (!awd::metrics::BluetoothAccessoryEvent::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryEvent::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryEvent::Clear(uint64_t this)
{
  v1 = *(this + 148);
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

  if ((v1 & 0x3FC0000) != 0)
  {
    *(this + 92) = 0;
    *(this + 112) = 0;
    *(this + 120) = 0;
  }

  *(this + 80) = 0;
  *(this + 104) = 0;
  *(this + 136) = 0;
  *(this + 148) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAccessoryEvent::MergePartialFromCodedStream(awd::metrics::BluetoothAccessoryEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        *(this + 37) |= 1u;
        if (v10 < v7 && *v10 == 16)
        {
          v21 = (v10 + 1);
          *(a2 + 1) = v21;
          goto LABEL_74;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_74:
        if (v21 >= v7 || (v35 = *v21, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v35;
          v36 = (v21 + 1);
          *(a2 + 1) = v36;
        }

        *(this + 37) |= 2u;
        if (v36 >= v7 || *v36 != 24)
        {
          continue;
        }

        v17 = (v36 + 1);
        *(a2 + 1) = v17;
LABEL_82:
        if (v17 >= v7 || (v37 = *v17, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v37;
          v38 = (v17 + 1);
          *(a2 + 1) = v38;
        }

        *(this + 37) |= 4u;
        if (v38 >= v7 || *v38 != 32)
        {
          continue;
        }

        v19 = (v38 + 1);
        *(a2 + 1) = v19;
LABEL_90:
        if (v19 >= v7 || (v39 = *v19, v39 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v40 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v39;
          v40 = (v19 + 1);
          *(a2 + 1) = v40;
        }

        *(this + 37) |= 8u;
        if (v40 >= v7 || *v40 != 40)
        {
          continue;
        }

        v14 = (v40 + 1);
        *(a2 + 1) = v14;
LABEL_98:
        if (v14 >= v7 || (v41 = *v14, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v41;
          v42 = (v14 + 1);
          *(a2 + 1) = v42;
        }

        *(this + 37) |= 0x10u;
        if (v42 >= v7 || *v42 != 48)
        {
          continue;
        }

        v23 = (v42 + 1);
        *(a2 + 1) = v23;
LABEL_106:
        if (v23 >= v7 || (v43 = *v23, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v43;
          v44 = (v23 + 1);
          *(a2 + 1) = v44;
        }

        *(this + 37) |= 0x20u;
        if (v44 >= v7 || *v44 != 56)
        {
          continue;
        }

        v26 = (v44 + 1);
        *(a2 + 1) = v26;
LABEL_114:
        if (v26 >= v7 || (v45 = *v26, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v45;
          v46 = (v26 + 1);
          *(a2 + 1) = v46;
        }

        *(this + 37) |= 0x40u;
        if (v46 >= v7 || *v46 != 64)
        {
          continue;
        }

        v20 = (v46 + 1);
        *(a2 + 1) = v20;
LABEL_122:
        if (v20 >= v7 || (v47 = *v20, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v47;
          v48 = (v20 + 1);
          *(a2 + 1) = v48;
        }

        *(this + 37) |= 0x80u;
        if (v48 >= v7 || *v48 != 72)
        {
          continue;
        }

        v29 = (v48 + 1);
        *(a2 + 1) = v29;
LABEL_130:
        if (v29 >= v7 || (v49 = *v29, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v49;
          v50 = (v29 + 1);
          *(a2 + 1) = v50;
        }

        *(this + 37) |= 0x100u;
        if (v50 >= v7 || *v50 != 80)
        {
          continue;
        }

        v16 = (v50 + 1);
        *(a2 + 1) = v16;
LABEL_138:
        if (v16 >= v7 || (v51 = *v16, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v51;
          v52 = (v16 + 1);
          *(a2 + 1) = v52;
        }

        *(this + 37) |= 0x200u;
        if (v52 >= v7 || *v52 != 88)
        {
          continue;
        }

        v28 = (v52 + 1);
        *(a2 + 1) = v28;
LABEL_146:
        if (v28 >= v7 || (v53 = *v28, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v53;
          v54 = (v28 + 1);
          *(a2 + 1) = v54;
        }

        *(this + 37) |= 0x400u;
        if (v54 >= v7 || *v54 != 96)
        {
          continue;
        }

        v13 = (v54 + 1);
        *(a2 + 1) = v13;
LABEL_154:
        if (v13 >= v7 || (v55 = *v13, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v56 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v55;
          v56 = (v13 + 1);
          *(a2 + 1) = v56;
        }

        *(this + 37) |= 0x800u;
        if (v56 >= v7 || *v56 != 104)
        {
          continue;
        }

        v15 = (v56 + 1);
        *(a2 + 1) = v15;
LABEL_162:
        if (v15 >= v7 || (v57 = *v15, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v57;
          v58 = (v15 + 1);
          *(a2 + 1) = v58;
        }

        *(this + 37) |= 0x1000u;
        if (v58 >= v7 || *v58 != 112)
        {
          continue;
        }

        v25 = (v58 + 1);
        *(a2 + 1) = v25;
LABEL_170:
        if (v25 >= v7 || (v59 = *v25, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v59;
          v60 = (v25 + 1);
          *(a2 + 1) = v60;
        }

        *(this + 37) |= 0x2000u;
        if (v60 >= v7 || *v60 != 120)
        {
          continue;
        }

        v12 = (v60 + 1);
        *(a2 + 1) = v12;
LABEL_178:
        if (v12 >= v7 || (v61 = *v12, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v62 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v61;
          v62 = (v12 + 1);
          *(a2 + 1) = v62;
        }

        *(this + 37) |= 0x4000u;
        if (v7 - v62 < 2 || *v62 != 128 || v62[1] != 1)
        {
          continue;
        }

        v18 = (v62 + 2);
        *(a2 + 1) = v18;
LABEL_187:
        if (v18 >= v7 || (v63 = *v18, v63 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v64 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v63;
          v64 = (v18 + 1);
          *(a2 + 1) = v64;
        }

        *(this + 37) |= 0x8000u;
        if (v7 - v64 >= 2 && *v64 == 136 && v64[1] == 1)
        {
          goto LABEL_195;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_82;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_90;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_98;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_106;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v26 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_114;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_122;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v29 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_130;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_138;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v28 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_146;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_154;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_162;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_170;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_178;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_187;
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

            goto LABEL_214;
          }

LABEL_61:
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
          v32 = *(a2 + 1);
          v7 = *(a2 + 2);
          while (1)
          {
            v107 = 0;
            if (v32 >= v7 || *v32 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v107))
              {
                return 0;
              }
            }

            else
            {
              v107 = *v32;
              *(a2 + 1) = v32 + 1;
            }

            v65 = *(this + 20);
            if (v65 == *(this + 21))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 9, v65 + 1);
              v65 = *(this + 20);
            }

            v66 = v107;
            v67 = *(this + 9);
            *(this + 20) = v65 + 1;
            *(v67 + 4 * v65) = v66;
            v68 = *(this + 21) - *(this + 20);
            if (v68 >= 1)
            {
              v69 = v68 + 1;
              do
              {
                v70 = *(a2 + 1);
                v71 = *(a2 + 2);
                if (v71 - v70 < 2 || *v70 != 136 || v70[1] != 1)
                {
                  break;
                }

                *(a2 + 1) = v70 + 2;
                if ((v70 + 2) >= v71 || v70[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v107))
                  {
                    return 0;
                  }
                }

                else
                {
                  v107 = v70[2];
                  *(a2 + 1) = v70 + 3;
                }

                v72 = *(this + 20);
                if (v72 >= *(this + 21))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v108);
                  v72 = *(this + 20);
                }

                v73 = v107;
                v74 = *(this + 9);
                *(this + 20) = v72 + 1;
                *(v74 + 4 * v72) = v73;
                --v69;
              }

              while (v69 > 1);
            }

LABEL_214:
            v64 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v7 - v64 < 2)
            {
              goto LABEL_1;
            }

            v75 = *v64;
            if (v75 == 144)
            {
              break;
            }

            if (v75 != 136 || v64[1] != 1)
            {
              goto LABEL_1;
            }

LABEL_195:
            v32 = (v64 + 2);
            *(a2 + 1) = v32;
          }

          if (v64[1] == 1)
          {
            while (1)
            {
              v33 = (v64 + 2);
              *(a2 + 1) = v33;
LABEL_221:
              v107 = 0;
              if (v33 >= v7 || *v33 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v107))
                {
                  return 0;
                }
              }

              else
              {
                v107 = *v33;
                *(a2 + 1) = v33 + 1;
              }

              v76 = *(this + 26);
              if (v76 == *(this + 27))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v76 + 1);
                v76 = *(this + 26);
              }

              v77 = v107;
              v78 = *(this + 12);
              *(this + 26) = v76 + 1;
              *(v78 + 4 * v76) = v77;
              v79 = *(this + 27) - *(this + 26);
              if (v79 >= 1)
              {
                v80 = v79 + 1;
                do
                {
                  v81 = *(a2 + 1);
                  v82 = *(a2 + 2);
                  if (v82 - v81 < 2 || *v81 != 144 || v81[1] != 1)
                  {
                    break;
                  }

                  *(a2 + 1) = v81 + 2;
                  if ((v81 + 2) >= v82 || v81[2] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v107))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v107 = v81[2];
                    *(a2 + 1) = v81 + 3;
                  }

                  v83 = *(this + 26);
                  if (v83 >= *(this + 27))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v108);
                    v83 = *(this + 26);
                  }

                  v84 = v107;
                  v85 = *(this + 12);
                  *(this + 26) = v83 + 1;
                  *(v85 + 4 * v83) = v84;
                  --v80;
                }

                while (v80 > 1);
              }

LABEL_239:
              v64 = *(a2 + 1);
              v7 = *(a2 + 2);
              if (v7 - v64 < 2)
              {
                goto LABEL_1;
              }

              v86 = *v64;
              if (v86 == 152)
              {
                break;
              }

              if (v86 != 144 || v64[1] != 1)
              {
                goto LABEL_1;
              }
            }

            if (v64[1] == 1)
            {
              v27 = (v64 + 2);
              *(a2 + 1) = v27;
LABEL_246:
              if (v27 >= v7 || (v87 = *v27, v87 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
                if (!result)
                {
                  return result;
                }

                v88 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 23) = v87;
                v88 = (v27 + 1);
                *(a2 + 1) = v88;
              }

              *(this + 37) |= 0x40000u;
              if (v7 - v88 >= 2 && *v88 == 160 && v88[1] == 1)
              {
                v31 = (v88 + 2);
                *(a2 + 1) = v31;
LABEL_255:
                if (v31 >= v7 || (v89 = *v31, v89 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
                  if (!result)
                  {
                    return result;
                  }

                  v90 = *(a2 + 1);
                  v7 = *(a2 + 2);
                }

                else
                {
                  *(this + 28) = v89;
                  v90 = (v31 + 1);
                  *(a2 + 1) = v90;
                }

                *(this + 37) |= 0x80000u;
                if (v7 - v90 >= 2 && *v90 == 168 && v90[1] == 1)
                {
                  v22 = (v90 + 2);
                  *(a2 + 1) = v22;
LABEL_264:
                  if (v22 >= v7 || (v91 = *v22, v91 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
                    if (!result)
                    {
                      return result;
                    }

                    v92 = *(a2 + 1);
                    v7 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 29) = v91;
                    v92 = (v22 + 1);
                    *(a2 + 1) = v92;
                  }

                  *(this + 37) |= 0x100000u;
                  if (v7 - v92 >= 2 && *v92 == 176 && v92[1] == 1)
                  {
                    v24 = (v92 + 2);
                    *(a2 + 1) = v24;
LABEL_273:
                    if (v24 >= v7 || (v93 = *v24, v93 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
                      if (!result)
                      {
                        return result;
                      }

                      v94 = *(a2 + 1);
                      v7 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 30) = v93;
                      v94 = (v24 + 1);
                      *(a2 + 1) = v94;
                    }

                    *(this + 37) |= 0x200000u;
                    if (v7 - v94 >= 2 && *v94 == 184 && v94[1] == 1)
                    {
                      v30 = (v94 + 2);
                      *(a2 + 1) = v30;
LABEL_282:
                      if (v30 >= v7 || (v95 = *v30, v95 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
                        if (!result)
                        {
                          return result;
                        }

                        v96 = *(a2 + 1);
                        v7 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 31) = v95;
                        v96 = (v30 + 1);
                        *(a2 + 1) = v96;
                      }

                      *(this + 37) |= 0x400000u;
                      if (v7 - v96 >= 2 && *v96 == 192 && v96[1] == 1)
                      {
                        goto LABEL_290;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        continue;
      case 0x12u:
        if ((TagFallback & 7) == 0)
        {
          v33 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_221;
        }

        if (v6 != 2)
        {
          goto LABEL_61;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 96);
        if (!result)
        {
          return result;
        }

        goto LABEL_239;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v27 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_246;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v31 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_255;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_264;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v24 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_273;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_61;
        }

        v30 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_282;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 != 2)
          {
            goto LABEL_61;
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 128);
          if (!result)
          {
            return result;
          }

LABEL_309:
          v96 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v7 - v96 >= 2 && *v96 == 192 && v96[1] == 1)
          {
LABEL_290:
            v34 = (v96 + 2);
            *(a2 + 1) = v34;
            goto LABEL_291;
          }

          if (v96 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          continue;
        }

        v34 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_291:
        v107 = 0;
        if (v34 < v7 && (*v34 & 0x80000000) == 0)
        {
          v107 = *v34;
          *(a2 + 1) = v34 + 1;
          goto LABEL_295;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v107))
        {
LABEL_295:
          v97 = *(this + 34);
          if (v97 == *(this + 35))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v97 + 1);
            v97 = *(this + 34);
          }

          v98 = v107;
          v99 = *(this + 16);
          *(this + 34) = v97 + 1;
          *(v99 + 4 * v97) = v98;
          v100 = *(this + 35) - *(this + 34);
          if (v100 >= 1)
          {
            v101 = v100 + 1;
            do
            {
              v102 = *(a2 + 1);
              v103 = *(a2 + 2);
              if (v103 - v102 < 2 || *v102 != 192 || v102[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v102 + 2;
              if ((v102 + 2) >= v103 || v102[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v107))
                {
                  return 0;
                }
              }

              else
              {
                v107 = v102[2];
                *(a2 + 1) = v102 + 3;
              }

              v104 = *(this + 34);
              if (v104 >= *(this + 35))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v108);
                v104 = *(this + 34);
              }

              v105 = v107;
              v106 = *(this + 16);
              *(this + 34) = v104 + 1;
              *(v106 + 4 * v104) = v105;
              --v101;
            }

            while (v101 > 1);
          }

          goto LABEL_309;
        }

        return 0;
      default:
        goto LABEL_61;
    }
  }
}

void sub_296391FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothAccessoryEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 148);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 148);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 148);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  if ((*(v5 + 148) & 0x8000) != 0)
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

  if (*(v5 + 104) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(*(v5 + 96) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 104));
  }

  v9 = *(v5 + 148);
  if ((v9 & 0x40000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 92), a2, a4);
    v9 = *(v5 + 148);
    if ((v9 & 0x80000) == 0)
    {
LABEL_26:
      if ((v9 & 0x100000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_52;
    }
  }

  else if ((v9 & 0x80000) == 0)
  {
    goto LABEL_26;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 112), a2, a4);
  v9 = *(v5 + 148);
  if ((v9 & 0x100000) == 0)
  {
LABEL_27:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 116), a2, a4);
  v9 = *(v5 + 148);
  if ((v9 & 0x200000) == 0)
  {
LABEL_28:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 120), a2, a4);
  if ((*(v5 + 148) & 0x400000) != 0)
  {
LABEL_29:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 124), a2, a4);
  }

LABEL_30:
  if (*(v5 + 136) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(*(v5 + 128) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 136));
  }

  return this;
}

uint64_t awd::metrics::BluetoothAccessoryEvent::ByteSize(awd::metrics::BluetoothAccessoryEvent *this)
{
  v2 = *(this + 37);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 37);
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
    v2 = *(this + 37);
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
      v2 = *(this + 37);
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
    v2 = *(this + 37);
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
    v2 = *(this + 37);
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
    v2 = *(this + 37);
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
    v2 = *(this + 37);
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
      v2 = *(this + 37);
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
      v2 = *(this + 37);
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
    v2 = *(this + 37);
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
    v2 = *(this + 37);
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
    v2 = *(this + 37);
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
    v2 = *(this + 37);
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
    v2 = *(this + 37);
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
    v2 = *(this + 37);
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
      v2 = *(this + 37);
    }

    else
    {
      v33 = 3;
    }

    v3 += v33;
  }

LABEL_84:
  if ((v2 & 0x3FC0000) == 0)
  {
    goto LABEL_111;
  }

  if ((v2 & 0x40000) != 0)
  {
    v34 = *(this + 23);
    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
      v2 = *(this + 37);
    }

    else
    {
      v35 = 3;
    }

    v3 += v35;
    if ((v2 & 0x80000) == 0)
    {
LABEL_87:
      if ((v2 & 0x100000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_99;
    }
  }

  else if ((v2 & 0x80000) == 0)
  {
    goto LABEL_87;
  }

  v36 = *(this + 28);
  if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
    v2 = *(this + 37);
  }

  else
  {
    v37 = 3;
  }

  v3 += v37;
  if ((v2 & 0x100000) == 0)
  {
LABEL_88:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_103;
  }

LABEL_99:
  v38 = *(this + 29);
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    v2 = *(this + 37);
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
      goto LABEL_111;
    }

    goto LABEL_107;
  }

LABEL_103:
  v40 = *(this + 30);
  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
    v2 = *(this + 37);
  }

  else
  {
    v41 = 3;
  }

  v3 += v41;
  if ((v2 & 0x400000) != 0)
  {
LABEL_107:
    v42 = *(this + 31);
    if (v42 >= 0x80)
    {
      v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
    }

    else
    {
      v43 = 3;
    }

    v3 += v43;
  }

LABEL_111:
  v44 = *(this + 20);
  if (v44 < 1)
  {
    v46 = 0;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    do
    {
      v47 = *(*(this + 9) + 4 * v45);
      if (v47 >= 0x80)
      {
        v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47);
        v44 = *(this + 20);
      }

      else
      {
        v48 = 1;
      }

      v46 += v48;
      ++v45;
    }

    while (v45 < v44);
  }

  v49 = *(this + 26);
  if (v49 < 1)
  {
    v51 = 0;
  }

  else
  {
    v50 = 0;
    v51 = 0;
    do
    {
      v52 = *(*(this + 12) + 4 * v50);
      if (v52 >= 0x80)
      {
        v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52);
        v49 = *(this + 26);
      }

      else
      {
        v53 = 1;
      }

      v51 += v53;
      ++v50;
    }

    while (v50 < v49);
  }

  v54 = *(this + 34);
  if (v54 < 1)
  {
    v56 = 0;
  }

  else
  {
    v55 = 0;
    v56 = 0;
    do
    {
      v57 = *(*(this + 16) + 4 * v55);
      if (v57 >= 0x80)
      {
        v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
        v54 = *(this + 34);
      }

      else
      {
        v58 = 1;
      }

      v56 += v58;
      ++v55;
    }

    while (v55 < v54);
  }

  result = (v46 + v3 + v51 + v56 + 2 * (v49 + v44 + v54));
  *(this + 36) = result;
  return result;
}

void awd::metrics::BluetoothAccessoryEvent::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAccessoryEvent::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAccessoryEvent::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAccessoryEvent::CopyFrom(awd::metrics::BluetoothAccessoryEvent *this, const awd::metrics::BluetoothAccessoryEvent *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAccessoryEvent::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothAccessoryEvent::Swap(awd::metrics::BluetoothAccessoryEvent *this, awd::metrics::BluetoothAccessoryEvent *a2)
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
    v4 = *(a2 + 10);
    *(a2 + 9) = v3;
    v5 = *(this + 10);
    *(this + 10) = v4;
    *(a2 + 10) = v5;
    v6 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    v7 = *(a2 + 13);
    *(a2 + 12) = v6;
    v8 = *(this + 13);
    *(this + 13) = v7;
    *(a2 + 13) = v8;
    LODWORD(v6) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v6;
    LODWORD(v6) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v6;
    LODWORD(v6) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v6;
    LODWORD(v6) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v6;
    LODWORD(v6) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v6;
    v9 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    result = *(a2 + 17);
    *(a2 + 16) = v9;
    v11 = *(this + 17);
    *(this + 17) = result;
    *(a2 + 17) = v11;
    LODWORD(v9) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v9;
    LODWORD(v9) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v9;
  }

  return result;
}

double awd::metrics::BluetoothAccessoryCaseCharging::SharedCtor(awd::metrics::BluetoothAccessoryCaseCharging *this)
{
  result = 0.0;
  *(this + 116) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothAccessoryCaseCharging *awd::metrics::BluetoothAccessoryCaseCharging::BluetoothAccessoryCaseCharging(awd::metrics::BluetoothAccessoryCaseCharging *this, const awd::metrics::BluetoothAccessoryCaseCharging *a2)
{
  *this = &unk_2A1D4BAA8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 116) = 0u;
  awd::metrics::BluetoothAccessoryCaseCharging::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothAccessoryCaseCharging::MergeFrom(awd::metrics::BluetoothAccessoryCaseCharging *this, const awd::metrics::BluetoothAccessoryCaseCharging *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v33);
  }

  v4 = *(a2 + 32);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 1);
    *(this + 32) |= 1u;
    *(this + 1) = v9;
    v4 = *(a2 + 32);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_42;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 4);
  *(this + 32) |= 2u;
  *(this + 4) = v10;
  v4 = *(a2 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  v11 = *(a2 + 5);
  *(this + 32) |= 4u;
  *(this + 5) = v11;
  v4 = *(a2 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  v12 = *(a2 + 6);
  *(this + 32) |= 8u;
  *(this + 6) = v12;
  v4 = *(a2 + 32);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_45:
    v14 = *(a2 + 8);
    *(this + 32) |= 0x20u;
    *(this + 8) = v14;
    v4 = *(a2 + 32);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_44:
  v13 = *(a2 + 7);
  *(this + 32) |= 0x10u;
  *(this + 7) = v13;
  v4 = *(a2 + 32);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_45;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_46:
  v15 = *(a2 + 9);
  *(this + 32) |= 0x40u;
  *(this + 9) = v15;
  v4 = *(a2 + 32);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 32) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 32);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 11);
    *(this + 32) |= 0x100u;
    *(this + 11) = v16;
    v4 = *(a2 + 32);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_50;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a2 + 12);
  *(this + 32) |= 0x200u;
  *(this + 12) = v17;
  v4 = *(a2 + 32);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  v18 = *(a2 + 13);
  *(this + 32) |= 0x400u;
  *(this + 13) = v18;
  v4 = *(a2 + 32);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v19 = *(a2 + 14);
  *(this + 32) |= 0x800u;
  *(this + 14) = v19;
  v4 = *(a2 + 32);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v20 = *(a2 + 15);
  *(this + 32) |= 0x1000u;
  *(this + 15) = v20;
  v4 = *(a2 + 32);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  v21 = *(a2 + 16);
  *(this + 32) |= 0x2000u;
  *(this + 16) = v21;
  v4 = *(a2 + 32);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_54:
  v22 = *(a2 + 17);
  *(this + 32) |= 0x4000u;
  *(this + 17) = v22;
  v4 = *(a2 + 32);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 18);
    *(this + 32) |= 0x8000u;
    *(this + 18) = v6;
    v4 = *(a2 + 32);
  }

LABEL_23:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_33;
  }

  if ((v4 & 0x10000) != 0)
  {
    v23 = *(a2 + 19);
    *(this + 32) |= 0x10000u;
    *(this + 19) = v23;
    v4 = *(a2 + 32);
    if ((v4 & 0x20000) == 0)
    {
LABEL_26:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_58;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v24 = *(a2 + 20);
  *(this + 32) |= 0x20000u;
  *(this + 20) = v24;
  v4 = *(a2 + 32);
  if ((v4 & 0x40000) == 0)
  {
LABEL_27:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  v25 = *(a2 + 21);
  *(this + 32) |= 0x40000u;
  *(this + 21) = v25;
  v4 = *(a2 + 32);
  if ((v4 & 0x80000) == 0)
  {
LABEL_28:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  v26 = *(a2 + 22);
  *(this + 32) |= 0x80000u;
  *(this + 22) = v26;
  v4 = *(a2 + 32);
  if ((v4 & 0x100000) == 0)
  {
LABEL_29:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  v27 = *(a2 + 23);
  *(this + 32) |= 0x100000u;
  *(this + 23) = v27;
  v4 = *(a2 + 32);
  if ((v4 & 0x200000) == 0)
  {
LABEL_30:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_61:
  v28 = *(a2 + 24);
  *(this + 32) |= 0x200000u;
  *(this + 24) = v28;
  v4 = *(a2 + 32);
  if ((v4 & 0x400000) == 0)
  {
LABEL_31:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_62:
  v29 = *(a2 + 25);
  *(this + 32) |= 0x400000u;
  *(this + 25) = v29;
  v4 = *(a2 + 32);
  if ((v4 & 0x800000) != 0)
  {
LABEL_32:
    v7 = *(a2 + 26);
    *(this + 32) |= 0x800000u;
    *(this + 26) = v7;
    v4 = *(a2 + 32);
  }

LABEL_33:
  if (!HIBYTE(v4))
  {
    return;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v30 = *(a2 + 27);
    *(this + 32) |= 0x1000000u;
    *(this + 27) = v30;
    v4 = *(a2 + 32);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_36:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_66;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_36;
  }

  v31 = *(a2 + 28);
  *(this + 32) |= 0x2000000u;
  *(this + 28) = v31;
  v4 = *(a2 + 32);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x8000000) == 0)
    {
      return;
    }

    goto LABEL_38;
  }

LABEL_66:
  v32 = *(a2 + 29);
  *(this + 32) |= 0x4000000u;
  *(this + 29) = v32;
  if ((*(a2 + 32) & 0x8000000) == 0)
  {
    return;
  }

LABEL_38:
  v8 = *(a2 + 30);
  *(this + 32) |= 0x8000000u;
  *(this + 30) = v8;
}

void sub_296393040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryCaseCharging::~BluetoothAccessoryCaseCharging(awd::metrics::BluetoothAccessoryCaseCharging *this)
{
  *this = &unk_2A1D4BAA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4BAA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4BAA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAccessoryCaseCharging::default_instance(awd::metrics::BluetoothAccessoryCaseCharging *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryCaseCharging::default_instance_;
  if (!awd::metrics::BluetoothAccessoryCaseCharging::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryCaseCharging::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryCaseCharging::Clear(uint64_t this)
{
  v1 = *(this + 128);
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
    *(this + 116) = 0;
    *(this + 108) = 0;
  }

  *(this + 128) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAccessoryCaseCharging::MergePartialFromCodedStream(awd::metrics::BluetoothAccessoryCaseCharging *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_64;
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
LABEL_70:
            *(this + 32) |= 1u;
            if (v9 < v6 && *v9 == 16)
            {
              v24 = v9 + 1;
              *(a2 + 1) = v24;
              goto LABEL_73;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v9 = *(a2 + 1);
          v6 = *(a2 + 2);
          goto LABEL_70;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v24 = *(a2 + 1);
        v6 = *(a2 + 2);
LABEL_73:
        if (v24 >= v6 || (v38 = *v24, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v38;
          v39 = v24 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 32) |= 2u;
        if (v39 >= v6 || *v39 != 24)
        {
          continue;
        }

        v20 = v39 + 1;
        *(a2 + 1) = v20;
LABEL_81:
        if (v20 >= v6 || (v40 = *v20, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v40;
          v41 = v20 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 32) |= 4u;
        if (v41 >= v6 || *v41 != 32)
        {
          continue;
        }

        v22 = v41 + 1;
        *(a2 + 1) = v22;
LABEL_89:
        if (v22 >= v6 || (v42 = *v22, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v42;
          v43 = v22 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 32) |= 8u;
        if (v43 >= v6 || *v43 != 40)
        {
          continue;
        }

        v15 = v43 + 1;
        *(a2 + 1) = v15;
LABEL_97:
        if (v15 >= v6 || (v44 = *v15, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v44;
          v45 = v15 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 32) |= 0x10u;
        if (v45 >= v6 || *v45 != 48)
        {
          continue;
        }

        v27 = v45 + 1;
        *(a2 + 1) = v27;
LABEL_105:
        if (v27 >= v6 || (v46 = *v27, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v46;
          v47 = v27 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 32) |= 0x20u;
        if (v47 >= v6 || *v47 != 56)
        {
          continue;
        }

        v30 = v47 + 1;
        *(a2 + 1) = v30;
LABEL_113:
        if (v30 >= v6 || (v48 = *v30, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v48;
          v49 = v30 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 32) |= 0x40u;
        if (v49 >= v6 || *v49 != 64)
        {
          continue;
        }

        v23 = v49 + 1;
        *(a2 + 1) = v23;
LABEL_121:
        if (v23 >= v6 || (v50 = *v23, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v50;
          v51 = v23 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 32) |= 0x80u;
        if (v51 >= v6 || *v51 != 72)
        {
          continue;
        }

        v33 = v51 + 1;
        *(a2 + 1) = v33;
LABEL_129:
        if (v33 >= v6 || (v52 = *v33, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v52;
          v53 = v33 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 32) |= 0x100u;
        if (v53 >= v6 || *v53 != 80)
        {
          continue;
        }

        v17 = v53 + 1;
        *(a2 + 1) = v17;
LABEL_137:
        if (v17 >= v6 || (v54 = *v17, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v54;
          v55 = v17 + 1;
          *(a2 + 1) = v55;
        }

        *(this + 32) |= 0x200u;
        if (v55 >= v6 || *v55 != 88)
        {
          continue;
        }

        v32 = v55 + 1;
        *(a2 + 1) = v32;
LABEL_145:
        if (v32 >= v6 || (v56 = *v32, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v56;
          v57 = v32 + 1;
          *(a2 + 1) = v57;
        }

        *(this + 32) |= 0x400u;
        if (v57 >= v6 || *v57 != 96)
        {
          continue;
        }

        v14 = v57 + 1;
        *(a2 + 1) = v14;
LABEL_153:
        if (v14 >= v6 || (v58 = *v14, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v58;
          v59 = v14 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 32) |= 0x800u;
        if (v59 >= v6 || *v59 != 104)
        {
          continue;
        }

        v16 = v59 + 1;
        *(a2 + 1) = v16;
LABEL_161:
        if (v16 >= v6 || (v60 = *v16, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v60;
          v61 = v16 + 1;
          *(a2 + 1) = v61;
        }

        *(this + 32) |= 0x1000u;
        if (v61 >= v6 || *v61 != 112)
        {
          continue;
        }

        v29 = v61 + 1;
        *(a2 + 1) = v29;
LABEL_169:
        if (v29 >= v6 || (v62 = *v29, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v63 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v62;
          v63 = v29 + 1;
          *(a2 + 1) = v63;
        }

        *(this + 32) |= 0x2000u;
        if (v63 >= v6 || *v63 != 120)
        {
          continue;
        }

        v13 = v63 + 1;
        *(a2 + 1) = v13;
LABEL_177:
        v93 = 0;
        if (v13 >= v6 || (v64 = *v13, (v64 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93);
          if (!result)
          {
            return result;
          }

          v64 = v93;
          v65 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v65 = (v13 + 1);
          *(a2 + 1) = v65;
        }

        *(this + 17) = v64;
        *(this + 32) |= 0x4000u;
        if (v6 - v65 < 2 || *v65 != 128 || v65[1] != 1)
        {
          continue;
        }

        v21 = (v65 + 2);
        *(a2 + 1) = v21;
LABEL_186:
        v93 = 0;
        if (v21 >= v6 || (v66 = *v21, (v66 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93);
          if (!result)
          {
            return result;
          }

          v66 = v93;
          v67 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v67 = (v21 + 1);
          *(a2 + 1) = v67;
        }

        *(this + 18) = v66;
        *(this + 32) |= 0x8000u;
        if (v6 - v67 < 2 || *v67 != 136 || v67[1] != 1)
        {
          continue;
        }

        v12 = (v67 + 2);
        *(a2 + 1) = v12;
LABEL_195:
        if (v12 >= v6 || (v68 = *v12, v68 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v69 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v68;
          v69 = (v12 + 1);
          *(a2 + 1) = v69;
        }

        *(this + 32) |= 0x10000u;
        if (v6 - v69 < 2 || *v69 != 144 || v69[1] != 1)
        {
          continue;
        }

        v25 = (v69 + 2);
        *(a2 + 1) = v25;
LABEL_204:
        if (v25 >= v6 || (v70 = *v25, v70 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v71 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v70;
          v71 = (v25 + 1);
          *(a2 + 1) = v71;
        }

        *(this + 32) |= 0x20000u;
        if (v6 - v71 < 2 || *v71 != 152 || v71[1] != 1)
        {
          continue;
        }

        v31 = (v71 + 2);
        *(a2 + 1) = v31;
LABEL_213:
        if (v31 >= v6 || (v72 = *v31, v72 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v73 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v72;
          v73 = (v31 + 1);
          *(a2 + 1) = v73;
        }

        *(this + 32) |= 0x40000u;
        if (v6 - v73 < 2 || *v73 != 160 || v73[1] != 1)
        {
          continue;
        }

        v35 = (v73 + 2);
        *(a2 + 1) = v35;
LABEL_222:
        if (v35 >= v6 || (v74 = *v35, v74 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v75 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v74;
          v75 = (v35 + 1);
          *(a2 + 1) = v75;
        }

        *(this + 32) |= 0x80000u;
        if (v6 - v75 < 2 || *v75 != 168 || v75[1] != 1)
        {
          continue;
        }

        v26 = (v75 + 2);
        *(a2 + 1) = v26;
LABEL_231:
        v93 = 0;
        if (v26 >= v6 || (v76 = *v26, (v76 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93);
          if (!result)
          {
            return result;
          }

          v76 = v93;
          v77 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v77 = (v26 + 1);
          *(a2 + 1) = v77;
        }

        *(this + 23) = v76;
        *(this + 32) |= 0x100000u;
        if (v6 - v77 < 2 || *v77 != 176 || v77[1] != 1)
        {
          continue;
        }

        v28 = (v77 + 2);
        *(a2 + 1) = v28;
LABEL_240:
        v93 = 0;
        if (v28 >= v6 || (v78 = *v28, (v78 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93);
          if (!result)
          {
            return result;
          }

          v78 = v93;
          v79 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v79 = (v28 + 1);
          *(a2 + 1) = v79;
        }

        *(this + 24) = v78;
        *(this + 32) |= 0x200000u;
        if (v6 - v79 < 2 || *v79 != 184 || v79[1] != 1)
        {
          continue;
        }

        v34 = (v79 + 2);
        *(a2 + 1) = v34;
LABEL_249:
        if (v34 >= v6 || (v80 = *v34, v80 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
          if (!result)
          {
            return result;
          }

          v81 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 25) = v80;
          v81 = (v34 + 1);
          *(a2 + 1) = v81;
        }

        *(this + 32) |= 0x400000u;
        if (v6 - v81 < 2 || *v81 != 192 || v81[1] != 1)
        {
          continue;
        }

        v36 = (v81 + 2);
        *(a2 + 1) = v36;
LABEL_258:
        v93 = 0;
        if (v36 >= v6 || (v82 = *v36, (v82 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93);
          if (!result)
          {
            return result;
          }

          v82 = v93;
          v83 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v83 = (v36 + 1);
          *(a2 + 1) = v83;
        }

        *(this + 26) = v82;
        *(this + 32) |= 0x800000u;
        if (v6 - v83 < 2 || *v83 != 200 || v83[1] != 1)
        {
          continue;
        }

        v19 = (v83 + 2);
        *(a2 + 1) = v19;
LABEL_267:
        v93 = 0;
        v10 = *(a2 + 2);
        if (v19 >= v10 || (v84 = *v19, (v84 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v93);
          if (!result)
          {
            return result;
          }

          v84 = v93;
          v85 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v85 = (v19 + 1);
          *(a2 + 1) = v85;
        }

        *(this + 27) = v84;
        *(this + 32) |= 0x1000000u;
        if (v10 - v85 < 2 || *v85 != 208 || v85[1] != 1)
        {
          continue;
        }

        v18 = (v85 + 2);
        *(a2 + 1) = v18;
LABEL_276:
        if (v18 >= v10 || (v86 = *v18, v86 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
          if (!result)
          {
            return result;
          }

          v87 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 28) = v86;
          v87 = (v18 + 1);
          *(a2 + 1) = v87;
        }

        *(this + 32) |= 0x2000000u;
        if (v10 - v87 < 2 || *v87 != 216 || v87[1] != 1)
        {
          continue;
        }

        v37 = (v87 + 2);
        *(a2 + 1) = v37;
LABEL_285:
        if (v37 >= v10 || (v88 = *v37, v88 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
          if (!result)
          {
            return result;
          }

          v89 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 29) = v88;
          v89 = (v37 + 1);
          *(a2 + 1) = v89;
        }

        *(this + 32) |= 0x4000000u;
        if (v10 - v89 < 2 || *v89 != 224 || v89[1] != 1)
        {
          continue;
        }

        v11 = (v89 + 2);
        *(a2 + 1) = v11;
LABEL_294:
        if (v11 >= v10 || (v90 = *v11, v90 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
          if (!result)
          {
            return result;
          }

          v91 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 30) = v90;
          v91 = v11 + 1;
          *(a2 + 1) = v91;
        }

        *(this + 32) |= 0x8000000u;
        if (v91 != v10 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
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
          goto LABEL_64;
        }

        v20 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_81;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v22 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_89;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v15 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_97;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v27 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_105;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v30 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_113;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v23 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_121;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v33 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_129;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v17 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_137;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v32 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_145;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v14 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_153;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v16 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_161;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v29 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_169;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v13 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_177;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v21 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_186;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v12 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_195;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v25 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_204;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v31 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_213;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v35 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_222;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v26 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_231;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v28 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_240;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v34 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_249;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v36 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_258;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v19 = *(a2 + 1);
        goto LABEL_267;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_276;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v37 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_285;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_64;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_294;
      default:
LABEL_64:
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