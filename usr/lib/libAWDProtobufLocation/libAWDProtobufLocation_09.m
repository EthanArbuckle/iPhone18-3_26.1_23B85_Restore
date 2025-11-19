uint64_t awd::metrics::LocationGPSSessionStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 1360);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 1360);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_208;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v50 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 1360);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_209;
  }

LABEL_208:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 1360);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_210;
  }

LABEL_209:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
  v6 = *(v5 + 1360);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_211;
  }

LABEL_210:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 1360);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_212;
  }

LABEL_211:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 44), a3);
  v6 = *(v5 + 1360);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_212:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 48), a3);
  if ((*(v5 + 1360) & 0x80) != 0)
  {
LABEL_9:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 52), a3);
  }

LABEL_10:
  if (*(v5 + 64) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, *(*(v5 + 56) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 64));
  }

  if (*(v5 + 88) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, *(*(v5 + 80) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 88));
  }

  if ((*(v5 + 1361) & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 432), a2, a4);
  }

  if (*(v5 + 112) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, *(*(v5 + 104) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 112));
  }

  if (*(v5 + 136) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, *(*(v5 + 128) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 136));
  }

  if (*(v5 + 160) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, *(*(v5 + 152) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 160));
  }

  if (*(v5 + 184) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, *(*(v5 + 176) + 8 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 184));
  }

  if (*(v5 + 208) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 200) + 8 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 208));
  }

  if (*(v5 + 232) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, *(*(v5 + 224) + 8 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 232));
  }

  if (*(v5 + 256) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, *(*(v5 + 248) + 8 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 256));
  }

  if (*(v5 + 280) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, *(*(v5 + 272) + 8 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 280));
  }

  if (*(v5 + 304) >= 1)
  {
    v17 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, *(*(v5 + 296) + 8 * v17++), a2, a4);
    }

    while (v17 < *(v5 + 304));
  }

  if (*(v5 + 328) >= 1)
  {
    v18 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, *(*(v5 + 320) + 8 * v18++), a2, a4);
    }

    while (v18 < *(v5 + 328));
  }

  if (*(v5 + 352) >= 1)
  {
    v19 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, *(*(v5 + 344) + 8 * v19++), a2, a4);
    }

    while (v19 < *(v5 + 352));
  }

  if (*(v5 + 376) >= 1)
  {
    v20 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, *(*(v5 + 368) + 8 * v20++), a2, a4);
    }

    while (v20 < *(v5 + 376));
  }

  v21 = *(v5 + 1360);
  if ((v21 & 0x800000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x18, *(v5 + 392), a2, a4);
    v21 = *(v5 + 1360);
    if ((v21 & 0x1000000) == 0)
    {
LABEL_56:
      if ((v21 & 0x2000000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_216;
    }
  }

  else if ((v21 & 0x1000000) == 0)
  {
    goto LABEL_56;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x19, *(v5 + 400), a2, a4);
  v21 = *(v5 + 1360);
  if ((v21 & 0x2000000) == 0)
  {
LABEL_57:
    if ((v21 & 0x4000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_217;
  }

LABEL_216:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x1A, *(v5 + 408), a2, a4);
  v21 = *(v5 + 1360);
  if ((v21 & 0x4000000) == 0)
  {
LABEL_58:
    if ((v21 & 0x8000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_218;
  }

LABEL_217:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x1B, *(v5 + 416), a2, a4);
  v21 = *(v5 + 1360);
  if ((v21 & 0x8000000) == 0)
  {
LABEL_59:
    if ((v21 & 0x10000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_219;
  }

LABEL_218:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x1C, *(v5 + 424), a2, a4);
  v21 = *(v5 + 1360);
  if ((v21 & 0x10000000) == 0)
  {
LABEL_60:
    if ((v21 & 0x20000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_220;
  }

LABEL_219:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1D, *(v5 + 576), a2, a4);
  v21 = *(v5 + 1360);
  if ((v21 & 0x20000000) == 0)
  {
LABEL_61:
    if ((v21 & 0x40000000) == 0)
    {
      goto LABEL_62;
    }

LABEL_221:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x1F, *(v5 + 440), a2, a4);
    if ((*(v5 + 1360) & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_222;
  }

LABEL_220:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1E, *(v5 + 577), a2, a4);
  v21 = *(v5 + 1360);
  if ((v21 & 0x40000000) != 0)
  {
    goto LABEL_221;
  }

LABEL_62:
  if ((v21 & 0x80000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_222:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x20, *(v5 + 448), a2, a4);
LABEL_63:
  v22 = *(v5 + 1364);
  if (v22)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x21, *(v5 + 456), a2, a4);
    v22 = *(v5 + 1364);
    if ((v22 & 2) == 0)
    {
LABEL_65:
      if ((v22 & 4) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_225;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_65;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x22, *(v5 + 464), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 4) == 0)
  {
LABEL_66:
    if ((v22 & 8) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_226;
  }

LABEL_225:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x23, *(v5 + 472), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 8) == 0)
  {
LABEL_67:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_227;
  }

LABEL_226:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x24, *(v5 + 480), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x10) == 0)
  {
LABEL_68:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_228;
  }

LABEL_227:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x25, *(v5 + 488), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x20) == 0)
  {
LABEL_69:
    if ((v22 & 0x40) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_229;
  }

LABEL_228:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x26, *(v5 + 496), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x40) == 0)
  {
LABEL_70:
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_230;
  }

LABEL_229:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x27, *(v5 + 504), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x80) == 0)
  {
LABEL_71:
    if ((v22 & 0x100) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_231;
  }

LABEL_230:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x28, *(v5 + 512), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x100) == 0)
  {
LABEL_72:
    if ((v22 & 0x200) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_232;
  }

LABEL_231:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x29, *(v5 + 520), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x200) == 0)
  {
LABEL_73:
    if ((v22 & 0x400) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_233;
  }

LABEL_232:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2A, *(v5 + 528), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x400) == 0)
  {
LABEL_74:
    if ((v22 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_234;
  }

LABEL_233:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2B, *(v5 + 536), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x800) == 0)
  {
LABEL_75:
    if ((v22 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_235;
  }

LABEL_234:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2C, *(v5 + 544), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x1000) == 0)
  {
LABEL_76:
    if ((v22 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_236;
  }

LABEL_235:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2D, *(v5 + 552), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x2000) == 0)
  {
LABEL_77:
    if ((v22 & 0x4000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_237;
  }

LABEL_236:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2E, *(v5 + 560), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x4000) == 0)
  {
LABEL_78:
    if ((v22 & 0x8000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_238;
  }

LABEL_237:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x2F, *(v5 + 568), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x8000) == 0)
  {
LABEL_79:
    if ((v22 & 0x10000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_239;
  }

LABEL_238:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x30, *(v5 + 436), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x10000) == 0)
  {
LABEL_80:
    if ((v22 & 0x20000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_240;
  }

LABEL_239:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x31, *(v5 + 580), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x20000) == 0)
  {
LABEL_81:
    if ((v22 & 0x40000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_241;
  }

LABEL_240:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x32, *(v5 + 584), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x40000) == 0)
  {
LABEL_82:
    if ((v22 & 0x80000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_242;
  }

LABEL_241:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x33, *(v5 + 588), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x80000) == 0)
  {
LABEL_83:
    if ((v22 & 0x100000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_243;
  }

LABEL_242:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x34, *(v5 + 592), a2, a4);
  v22 = *(v5 + 1364);
  if ((v22 & 0x100000) == 0)
  {
LABEL_84:
    if ((v22 & 0x200000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_244;
  }

LABEL_243:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x35, a2, *(v5 + 596), a3);
  v22 = *(v5 + 1364);
  if ((v22 & 0x200000) == 0)
  {
LABEL_85:
    if ((v22 & 0x400000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_245;
  }

LABEL_244:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x36, a2, *(v5 + 600), a3);
  v22 = *(v5 + 1364);
  if ((v22 & 0x400000) == 0)
  {
LABEL_86:
    if ((v22 & 0x800000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_245:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x37, *(v5 + 604), a2, a4);
  if ((*(v5 + 1364) & 0x800000) != 0)
  {
LABEL_87:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x38, *(v5 + 578), a2, a4);
  }

LABEL_88:
  if (*(v5 + 616) >= 1)
  {
    v23 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x39, *(*(v5 + 608) + 8 * v23++), a2, a4);
    }

    while (v23 < *(v5 + 616));
  }

  if ((*(v5 + 1367) & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x3A, *(v5 + 632), a2, a4);
  }

  if (*(v5 + 648) >= 1)
  {
    v24 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3B, *(*(v5 + 640) + 8 * v24++), a2, a4);
    }

    while (v24 < *(v5 + 648));
  }

  v25 = *(v5 + 1364);
  if ((v25 & 0x8000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x3C, *(v5 + 664), a2, a4);
    v25 = *(v5 + 1364);
    if ((v25 & 0x10000000) == 0)
    {
LABEL_98:
      if ((v25 & 0x20000000) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_99;
    }
  }

  else if ((v25 & 0x10000000) == 0)
  {
    goto LABEL_98;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x3D, *(v5 + 672), a2, a4);
  if ((*(v5 + 1364) & 0x20000000) != 0)
  {
LABEL_99:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x3E, *(v5 + 680), a2, a4);
  }

LABEL_100:
  if (*(v5 + 696) >= 1)
  {
    v26 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F, *(*(v5 + 688) + 8 * v26++), a2, a4);
    }

    while (v26 < *(v5 + 696));
  }

  if ((*(v5 + 1364) & 0x80000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x40, *(v5 + 808), a2, a4);
  }

  if (*(v5 + 720) >= 1)
  {
    v27 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x41, *(*(v5 + 712) + 8 * v27++), a2, a4);
    }

    while (v27 < *(v5 + 720));
  }

  v28 = *(v5 + 1368);
  if ((v28 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x42, *(v5 + 736), a2, a4);
    v28 = *(v5 + 1368);
    if ((v28 & 4) == 0)
    {
LABEL_110:
      if ((v28 & 8) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_252;
    }
  }

  else if ((v28 & 4) == 0)
  {
    goto LABEL_110;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x43, *(v5 + 744), a2, a4);
  v28 = *(v5 + 1368);
  if ((v28 & 8) == 0)
  {
LABEL_111:
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_253;
  }

LABEL_252:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x44, *(v5 + 752), a2, a4);
  v28 = *(v5 + 1368);
  if ((v28 & 0x10) == 0)
  {
LABEL_112:
    if ((v28 & 0x20) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_254;
  }

LABEL_253:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x45, *(v5 + 760), a2, a4);
  v28 = *(v5 + 1368);
  if ((v28 & 0x20) == 0)
  {
LABEL_113:
    if ((v28 & 0x40) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_255;
  }

LABEL_254:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x46, *(v5 + 768), a2, a4);
  v28 = *(v5 + 1368);
  if ((v28 & 0x40) == 0)
  {
LABEL_114:
    if ((v28 & 0x80) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_256;
  }

LABEL_255:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x47, *(v5 + 776), a2, a4);
  v28 = *(v5 + 1368);
  if ((v28 & 0x80) == 0)
  {
LABEL_115:
    if ((v28 & 0x100) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_257;
  }

LABEL_256:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x48, *(v5 + 784), a2, a4);
  v28 = *(v5 + 1368);
  if ((v28 & 0x100) == 0)
  {
LABEL_116:
    if ((v28 & 0x200) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_258;
  }

LABEL_257:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x49, *(v5 + 792), a2, a4);
  v28 = *(v5 + 1368);
  if ((v28 & 0x200) == 0)
  {
LABEL_117:
    if ((v28 & 0x400) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_259;
  }

LABEL_258:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x4A, *(v5 + 800), a2, a4);
  v28 = *(v5 + 1368);
  if ((v28 & 0x400) == 0)
  {
LABEL_118:
    if ((v28 & 0x800) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_260;
  }

LABEL_259:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x4B, *(v5 + 816), a2, a4);
  v28 = *(v5 + 1368);
  if ((v28 & 0x800) == 0)
  {
LABEL_119:
    if ((v28 & 0x1000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_261;
  }

LABEL_260:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x4C, *(v5 + 824), a2, a4);
  v28 = *(v5 + 1368);
  if ((v28 & 0x1000) == 0)
  {
LABEL_120:
    if ((v28 & 0x2000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_262;
  }

LABEL_261:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x4D, *(v5 + 832), a2, a4);
  v28 = *(v5 + 1368);
  if ((v28 & 0x2000) == 0)
  {
LABEL_121:
    if ((v28 & 0x4000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_263;
  }

LABEL_262:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x4E, *(v5 + 840), a2, a4);
  v28 = *(v5 + 1368);
  if ((v28 & 0x4000) == 0)
  {
LABEL_122:
    if ((v28 & 0x8000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_123;
  }

LABEL_263:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x4F, *(v5 + 848), a2, a4);
  if ((*(v5 + 1368) & 0x8000) != 0)
  {
LABEL_123:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x50, *(v5 + 579), a2, a4);
  }

LABEL_124:
  if (*(v5 + 864) >= 1)
  {
    v29 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x51, *(*(v5 + 856) + 8 * v29++), a2, a4);
    }

    while (v29 < *(v5 + 864));
  }

  v30 = *(v5 + 1368);
  if ((v30 & 0x20000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x52, *(v5 + 880), a2, a4);
    v30 = *(v5 + 1368);
    if ((v30 & 0x40000) == 0)
    {
LABEL_129:
      if ((v30 & 0x80000) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_267;
    }
  }

  else if ((v30 & 0x40000) == 0)
  {
    goto LABEL_129;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x53, *(v5 + 888), a2, a4);
  v30 = *(v5 + 1368);
  if ((v30 & 0x80000) == 0)
  {
LABEL_130:
    if ((v30 & 0x100000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_268;
  }

LABEL_267:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x54, *(v5 + 1044), a2, a4);
  v30 = *(v5 + 1368);
  if ((v30 & 0x100000) == 0)
  {
LABEL_131:
    if ((v30 & 0x200000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_269;
  }

LABEL_268:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x55, *(v5 + 812), a2, a4);
  v30 = *(v5 + 1368);
  if ((v30 & 0x200000) == 0)
  {
LABEL_132:
    if ((v30 & 0x400000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_270;
  }

LABEL_269:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x56, *(v5 + 896), a2, a4);
  v30 = *(v5 + 1368);
  if ((v30 & 0x400000) == 0)
  {
LABEL_133:
    if ((v30 & 0x800000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_271;
  }

LABEL_270:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x57, *(v5 + 900), a2, a4);
  v30 = *(v5 + 1368);
  if ((v30 & 0x800000) == 0)
  {
LABEL_134:
    if ((v30 & 0x1000000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_272;
  }

LABEL_271:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x58, *(v5 + 904), a2, a4);
  v30 = *(v5 + 1368);
  if ((v30 & 0x1000000) == 0)
  {
LABEL_135:
    if ((v30 & 0x2000000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_275;
  }

LABEL_272:
  v51 = *(v5 + 912);
  if (!v51)
  {
    v51 = *(awd::metrics::LocationGPSSessionStatistics::default_instance_ + 912);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x59, v51, a2, a4);
  v30 = *(v5 + 1368);
  if ((v30 & 0x2000000) == 0)
  {
LABEL_136:
    if ((v30 & 0x4000000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_276;
  }

LABEL_275:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5A, *(v5 + 920), a2, a4);
  v30 = *(v5 + 1368);
  if ((v30 & 0x4000000) == 0)
  {
LABEL_137:
    if ((v30 & 0x8000000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_277;
  }

LABEL_276:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5B, *(v5 + 924), a2, a4);
  v30 = *(v5 + 1368);
  if ((v30 & 0x8000000) == 0)
  {
LABEL_138:
    if ((v30 & 0x10000000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_278;
  }

LABEL_277:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5C, *(v5 + 928), a2, a4);
  v30 = *(v5 + 1368);
  if ((v30 & 0x10000000) == 0)
  {
LABEL_139:
    if ((v30 & 0x20000000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_279;
  }

LABEL_278:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5D, *(v5 + 932), a2, a4);
  v30 = *(v5 + 1368);
  if ((v30 & 0x20000000) == 0)
  {
LABEL_140:
    if ((v30 & 0x40000000) == 0)
    {
      goto LABEL_141;
    }

LABEL_280:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5F, *(v5 + 940), a2, a4);
    if ((*(v5 + 1368) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_281;
  }

LABEL_279:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5E, *(v5 + 936), a2, a4);
  v30 = *(v5 + 1368);
  if ((v30 & 0x40000000) != 0)
  {
    goto LABEL_280;
  }

LABEL_141:
  if ((v30 & 0x80000000) == 0)
  {
    goto LABEL_142;
  }

LABEL_281:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x60, *(v5 + 944), a2, a4);
LABEL_142:
  v31 = *(v5 + 1372);
  if (v31)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x61, *(v5 + 948), a2, a4);
    v31 = *(v5 + 1372);
    if ((v31 & 2) == 0)
    {
LABEL_144:
      if ((v31 & 4) == 0)
      {
        goto LABEL_145;
      }

      goto LABEL_284;
    }
  }

  else if ((v31 & 2) == 0)
  {
    goto LABEL_144;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x62, *(v5 + 952), a2, a4);
  v31 = *(v5 + 1372);
  if ((v31 & 4) == 0)
  {
LABEL_145:
    if ((v31 & 8) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_285;
  }

LABEL_284:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x63, *(v5 + 956), a2, a4);
  v31 = *(v5 + 1372);
  if ((v31 & 8) == 0)
  {
LABEL_146:
    if ((v31 & 0x10) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_286;
  }

LABEL_285:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x64, *(v5 + 960), a2, a4);
  v31 = *(v5 + 1372);
  if ((v31 & 0x10) == 0)
  {
LABEL_147:
    if ((v31 & 0x20) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_148;
  }

LABEL_286:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x65, *(v5 + 964), a2, a4);
  if ((*(v5 + 1372) & 0x20) != 0)
  {
LABEL_148:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x66, *(v5 + 1040), a2, a4);
  }

LABEL_149:
  if (*(v5 + 976) >= 1)
  {
    v32 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x67, *(*(v5 + 968) + 8 * v32++), a2, a4);
    }

    while (v32 < *(v5 + 976));
  }

  if (*(v5 + 1000) >= 1)
  {
    v33 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x68, *(*(v5 + 992) + 8 * v33++), a2, a4);
    }

    while (v33 < *(v5 + 1000));
  }

  if (*(v5 + 1024) >= 1)
  {
    v34 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x69, *(*(v5 + 1016) + 8 * v34++), a2, a4);
    }

    while (v34 < *(v5 + 1024));
  }

  if (*(v5 + 1056) >= 1)
  {
    v35 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x6A, *(*(v5 + 1048) + 8 * v35++), a2, a4);
    }

    while (v35 < *(v5 + 1056));
  }

  if ((*(v5 + 1373) & 4) != 0)
  {
    v36 = *(v5 + 1072);
    if (!v36)
    {
      v36 = *(awd::metrics::LocationGPSSessionStatistics::default_instance_ + 1072);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x6B, v36, a2, a4);
  }

  if (*(v5 + 1088) >= 1)
  {
    v37 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x6C, *(*(v5 + 1080) + 8 * v37++), a2, a4);
    }

    while (v37 < *(v5 + 1088));
  }

  if (*(v5 + 1112) >= 1)
  {
    v38 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x6D, *(*(v5 + 1104) + 8 * v38++), a2, a4);
    }

    while (v38 < *(v5 + 1112));
  }

  if (*(v5 + 1136) >= 1)
  {
    v39 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x6E, *(*(v5 + 1128) + 8 * v39++), a2, a4);
    }

    while (v39 < *(v5 + 1136));
  }

  if (*(v5 + 1160) >= 1)
  {
    v40 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x6F, *(*(v5 + 1152) + 8 * v40++), a2, a4);
    }

    while (v40 < *(v5 + 1160));
  }

  if (*(v5 + 1184) >= 1)
  {
    v41 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x70, *(*(v5 + 1176) + 8 * v41++), a2, a4);
    }

    while (v41 < *(v5 + 1184));
  }

  if (*(v5 + 1208) >= 1)
  {
    v42 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x71, *(*(v5 + 1200) + 8 * v42++), a2, a4);
    }

    while (v42 < *(v5 + 1208));
  }

  if (*(v5 + 1232) >= 1)
  {
    v43 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x72, *(*(v5 + 1224) + 8 * v43++), a2, a4);
    }

    while (v43 < *(v5 + 1232));
  }

  if (*(v5 + 1256) >= 1)
  {
    v44 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x73, *(*(v5 + 1248) + 8 * v44++), a2, a4);
    }

    while (v44 < *(v5 + 1256));
  }

  if (*(v5 + 1280) >= 1)
  {
    v45 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x74, *(*(v5 + 1272) + 8 * v45++), a2, a4);
    }

    while (v45 < *(v5 + 1280));
  }

  if (*(v5 + 1304) >= 1)
  {
    v46 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x75, *(*(v5 + 1296) + 8 * v46++), a2, a4);
    }

    while (v46 < *(v5 + 1304));
  }

  v47 = *(v5 + 1372);
  if ((v47 & 0x200000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x76, *(v5 + 1045), a2, a4);
    v47 = *(v5 + 1372);
  }

  if ((v47 & 0x400000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x77, *(v5 + 1046), a2, a4);
  }

  if (*(v5 + 1328) >= 1)
  {
    v48 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x78, *(*(v5 + 1320) + 8 * v48++), a2, a4);
    }

    while (v48 < *(v5 + 1328));
  }

  v49 = *(v5 + 1372);
  if ((v49 & 0x1000000) == 0)
  {
    if ((v49 & 0x2000000) == 0)
    {
      goto LABEL_204;
    }

LABEL_289:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x7A, *(v5 + 1348), a2, a4);
    if ((*(v5 + 1372) & 0x4000000) == 0)
    {
      return this;
    }

    goto LABEL_290;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x79, *(v5 + 1344), a2, a4);
  v49 = *(v5 + 1372);
  if ((v49 & 0x2000000) != 0)
  {
    goto LABEL_289;
  }

LABEL_204:
  if ((v49 & 0x4000000) == 0)
  {
    return this;
  }

LABEL_290:
  v52 = *(v5 + 1352);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x7B, v52, a2, a4);
}

uint64_t awd::metrics::LocationGPSSessionStatistics::ByteSize(awd::metrics::LocationGPSSessionStatistics *this)
{
  v2 = *(this + 340);
  if (!v2)
  {
    v4 = 0;
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 340);
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

  v5 = *(this + 2);
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
    v2 = *(this + 340);
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

  v3 += v10 + v6 + 1;
LABEL_17:
  if ((v2 & 4) != 0)
  {
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v2 = *(this + 340);
    if ((v2 & 8) == 0)
    {
LABEL_19:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_19;
  }

  v14 = *(this + 10);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 340);
  }

  else
  {
    v15 = 2;
  }

  v3 += v15;
  if ((v2 & 0x10) != 0)
  {
LABEL_20:
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
    v2 = *(this + 340);
  }

LABEL_21:
  v11 = v3 + 5;
  if ((v2 & 0x20) == 0)
  {
    v11 = v3;
  }

  if ((v2 & 0x40) != 0)
  {
    v11 += 5;
  }

  if ((v2 & 0x80) != 0)
  {
    v4 = v11 + 5;
  }

  else
  {
    v4 = v11;
  }

  if ((v2 & 0x400) != 0)
  {
LABEL_29:
    v12 = *(this + 108);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v2 = *(this + 340);
    }

    else
    {
      v13 = 2;
    }

    v4 += v13;
  }

LABEL_38:
  if ((v2 & 0x800000) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 49)) + 2;
    v2 = *(this + 340);
  }

  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 50)) + 2;
      v2 = *(this + 340);
      if ((v2 & 0x2000000) == 0)
      {
LABEL_43:
        if ((v2 & 0x4000000) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_95;
      }
    }

    else if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_43;
    }

    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 51)) + 2;
    v2 = *(this + 340);
    if ((v2 & 0x4000000) == 0)
    {
LABEL_44:
      if ((v2 & 0x8000000) == 0)
      {
LABEL_46:
        v16 = v4 + 3;
        if ((v2 & 0x10000000) == 0)
        {
          v16 = v4;
        }

        if ((v2 & 0x20000000) != 0)
        {
          v4 = v16 + 3;
        }

        else
        {
          v4 = v16;
        }

        if ((v2 & 0x40000000) != 0)
        {
          v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 55)) + 2;
          v2 = *(this + 340);
        }

        if ((v2 & 0x80000000) != 0)
        {
          v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 56)) + 2;
        }

        goto LABEL_55;
      }

LABEL_45:
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 53)) + 2;
      v2 = *(this + 340);
      goto LABEL_46;
    }

LABEL_95:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 52)) + 2;
    v2 = *(this + 340);
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_55:
  v17 = *(this + 341);
  if (!v17)
  {
    goto LABEL_65;
  }

  if (v17)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 57)) + 2;
    v17 = *(this + 341);
    if ((v17 & 2) == 0)
    {
LABEL_58:
      if ((v17 & 4) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_77;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_58;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 58)) + 2;
  v17 = *(this + 341);
  if ((v17 & 4) == 0)
  {
LABEL_59:
    if ((v17 & 8) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_78;
  }

LABEL_77:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 59)) + 2;
  v17 = *(this + 341);
  if ((v17 & 8) == 0)
  {
LABEL_60:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_79;
  }

LABEL_78:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 60)) + 2;
  v17 = *(this + 341);
  if ((v17 & 0x10) == 0)
  {
LABEL_61:
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_80;
  }

LABEL_79:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 61)) + 2;
  v17 = *(this + 341);
  if ((v17 & 0x20) == 0)
  {
LABEL_62:
    if ((v17 & 0x40) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_81;
  }

LABEL_80:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 62)) + 2;
  v17 = *(this + 341);
  if ((v17 & 0x40) == 0)
  {
LABEL_63:
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_81:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 63)) + 2;
  v17 = *(this + 341);
  if ((v17 & 0x80) != 0)
  {
LABEL_64:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 64)) + 2;
    v17 = *(this + 341);
  }

LABEL_65:
  if ((v17 & 0xFF00) == 0)
  {
    goto LABEL_103;
  }

  if ((v17 & 0x100) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 65)) + 2;
    v17 = *(this + 341);
    if ((v17 & 0x200) == 0)
    {
LABEL_68:
      if ((v17 & 0x400) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_85;
    }
  }

  else if ((v17 & 0x200) == 0)
  {
    goto LABEL_68;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 66)) + 2;
  v17 = *(this + 341);
  if ((v17 & 0x400) == 0)
  {
LABEL_69:
    if ((v17 & 0x800) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_86;
  }

LABEL_85:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 67)) + 2;
  v17 = *(this + 341);
  if ((v17 & 0x800) == 0)
  {
LABEL_70:
    if ((v17 & 0x1000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_87;
  }

LABEL_86:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 68)) + 2;
  v17 = *(this + 341);
  if ((v17 & 0x1000) == 0)
  {
LABEL_71:
    if ((v17 & 0x2000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_88;
  }

LABEL_87:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 69)) + 2;
  v17 = *(this + 341);
  if ((v17 & 0x2000) == 0)
  {
LABEL_72:
    if ((v17 & 0x4000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_89;
  }

LABEL_88:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 70)) + 2;
  v17 = *(this + 341);
  if ((v17 & 0x4000) == 0)
  {
LABEL_73:
    if ((v17 & 0x8000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_90;
  }

LABEL_89:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 71)) + 2;
  v17 = *(this + 341);
  if ((v17 & 0x8000) == 0)
  {
    goto LABEL_103;
  }

LABEL_90:
  v18 = *(this + 109);
  if ((v18 & 0x80000000) != 0)
  {
    v19 = 12;
  }

  else if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 2;
    v17 = *(this + 341);
  }

  else
  {
    v19 = 3;
  }

  v4 += v19;
LABEL_103:
  if ((v17 & 0xFF0000) == 0)
  {
    goto LABEL_146;
  }

  if ((v17 & 0x10000) != 0)
  {
    v20 = *(this + 145);
    if ((v20 & 0x80000000) != 0)
    {
      v21 = 12;
    }

    else if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 2;
      v17 = *(this + 341);
    }

    else
    {
      v21 = 3;
    }

    v4 += v21;
    if ((v17 & 0x20000) == 0)
    {
LABEL_106:
      if ((v17 & 0x40000) == 0)
      {
        goto LABEL_107;
      }

LABEL_121:
      v24 = *(this + 147);
      if ((v24 & 0x80000000) != 0)
      {
        v25 = 12;
      }

      else if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 2;
        v17 = *(this + 341);
      }

      else
      {
        v25 = 3;
      }

      v4 += v25;
      if ((v17 & 0x80000) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_127;
    }
  }

  else if ((v17 & 0x20000) == 0)
  {
    goto LABEL_106;
  }

  v22 = *(this + 146);
  if ((v22 & 0x80000000) != 0)
  {
    v23 = 12;
  }

  else if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 2;
    v17 = *(this + 341);
  }

  else
  {
    v23 = 3;
  }

  v4 += v23;
  if ((v17 & 0x40000) != 0)
  {
    goto LABEL_121;
  }

LABEL_107:
  if ((v17 & 0x80000) != 0)
  {
LABEL_127:
    v26 = *(this + 148);
    if ((v26 & 0x80000000) != 0)
    {
      v27 = 12;
    }

    else if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 2;
      v17 = *(this + 341);
    }

    else
    {
      v27 = 3;
    }

    v4 += v27;
  }

LABEL_133:
  v28 = v4 + 6;
  if ((v17 & 0x100000) == 0)
  {
    v28 = v4;
  }

  if ((v17 & 0x200000) != 0)
  {
    v29 = v28 + 6;
  }

  else
  {
    v29 = v28;
  }

  if ((v17 & 0x400000) != 0)
  {
    v30 = *(this + 151);
    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 2;
      v17 = *(this + 341);
    }

    else
    {
      v31 = 3;
    }

    v29 += v31;
  }

  if ((v17 & 0x800000) != 0)
  {
    v4 = v29 + 3;
  }

  else
  {
    v4 = v29;
  }

LABEL_146:
  if (!(v17 >> 25))
  {
    goto LABEL_163;
  }

  if ((v17 & 0x2000000) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 79)) + 2;
    v17 = *(this + 341);
    if ((v17 & 0x8000000) == 0)
    {
LABEL_149:
      if ((v17 & 0x10000000) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_155;
    }
  }

  else if ((v17 & 0x8000000) == 0)
  {
    goto LABEL_149;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 83)) + 2;
  v17 = *(this + 341);
  if ((v17 & 0x10000000) == 0)
  {
LABEL_150:
    if ((v17 & 0x20000000) == 0)
    {
      goto LABEL_151;
    }

LABEL_156:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 85)) + 2;
    if ((*(this + 341) & 0x80000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_157;
  }

LABEL_155:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 84)) + 2;
  v17 = *(this + 341);
  if ((v17 & 0x20000000) != 0)
  {
    goto LABEL_156;
  }

LABEL_151:
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_163;
  }

LABEL_157:
  v32 = *(this + 202);
  if ((v32 & 0x80000000) != 0)
  {
    v33 = 12;
  }

  else if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
  }

  else
  {
    v33 = 3;
  }

  v4 += v33;
LABEL_163:
  v34 = *(this + 342);
  if ((v34 & 0x1FE) == 0)
  {
    goto LABEL_172;
  }

  if ((v34 & 2) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 92)) + 2;
    v34 = *(this + 342);
    if ((v34 & 4) == 0)
    {
LABEL_166:
      if ((v34 & 8) == 0)
      {
        goto LABEL_167;
      }

      goto LABEL_207;
    }
  }

  else if ((v34 & 4) == 0)
  {
    goto LABEL_166;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 93)) + 2;
  v34 = *(this + 342);
  if ((v34 & 8) == 0)
  {
LABEL_167:
    if ((v34 & 0x10) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_208;
  }

LABEL_207:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 94)) + 2;
  v34 = *(this + 342);
  if ((v34 & 0x10) == 0)
  {
LABEL_168:
    if ((v34 & 0x20) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_209;
  }

LABEL_208:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 95)) + 2;
  v34 = *(this + 342);
  if ((v34 & 0x20) == 0)
  {
LABEL_169:
    if ((v34 & 0x40) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_210;
  }

LABEL_209:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 96)) + 2;
  v34 = *(this + 342);
  if ((v34 & 0x40) == 0)
  {
LABEL_170:
    if ((v34 & 0x80) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_171;
  }

LABEL_210:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 97)) + 2;
  v34 = *(this + 342);
  if ((v34 & 0x80) != 0)
  {
LABEL_171:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 98)) + 2;
    v34 = *(this + 342);
  }

LABEL_172:
  if ((v34 & 0xFF00) == 0)
  {
    goto LABEL_183;
  }

  if ((v34 & 0x100) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 99)) + 2;
    v34 = *(this + 342);
    if ((v34 & 0x200) == 0)
    {
LABEL_175:
      if ((v34 & 0x400) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_214;
    }
  }

  else if ((v34 & 0x200) == 0)
  {
    goto LABEL_175;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 100)) + 2;
  v34 = *(this + 342);
  if ((v34 & 0x400) == 0)
  {
LABEL_176:
    if ((v34 & 0x800) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_215;
  }

LABEL_214:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 102)) + 2;
  v34 = *(this + 342);
  if ((v34 & 0x800) == 0)
  {
LABEL_177:
    if ((v34 & 0x1000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_216;
  }

LABEL_215:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 103)) + 2;
  v34 = *(this + 342);
  if ((v34 & 0x1000) == 0)
  {
LABEL_178:
    if ((v34 & 0x2000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_217;
  }

LABEL_216:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 104)) + 2;
  v34 = *(this + 342);
  if ((v34 & 0x2000) == 0)
  {
LABEL_179:
    if ((v34 & 0x4000) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_180;
  }

LABEL_217:
  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 105)) + 2;
  v34 = *(this + 342);
  if ((v34 & 0x4000) != 0)
  {
LABEL_180:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 106)) + 2;
    v34 = *(this + 342);
  }

LABEL_181:
  if ((v34 & 0x8000) != 0)
  {
    v4 += 3;
  }

LABEL_183:
  if ((v34 & 0x1FE0000) == 0)
  {
    goto LABEL_195;
  }

  if ((v34 & 0x20000) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 110)) + 2;
    v34 = *(this + 342);
  }

  if ((v34 & 0x40000) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 111)) + 2;
    v34 = *(this + 342);
  }

  if ((v34 & 0x80000) != 0)
  {
    v4 += 3;
  }

  if ((v34 & 0x100000) != 0)
  {
    v35 = *(this + 203);
    if ((v35 & 0x80000000) != 0)
    {
      v36 = 12;
    }

    else if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
      v34 = *(this + 342);
    }

    else
    {
      v36 = 3;
    }

    v4 += v36;
    if ((v34 & 0x200000) == 0)
    {
LABEL_192:
      if ((v34 & 0x400000) == 0)
      {
        goto LABEL_193;
      }

      goto LABEL_263;
    }
  }

  else if ((v34 & 0x200000) == 0)
  {
    goto LABEL_192;
  }

  v55 = *(this + 224);
  if ((v55 & 0x80000000) != 0)
  {
    v56 = 12;
  }

  else if (v55 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
    v34 = *(this + 342);
  }

  else
  {
    v56 = 3;
  }

  v4 += v56;
  if ((v34 & 0x400000) == 0)
  {
LABEL_193:
    if ((v34 & 0x800000) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_194;
  }

LABEL_263:
  v57 = *(this + 225);
  if ((v57 & 0x80000000) != 0)
  {
    v58 = 12;
  }

  else if (v57 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
    v34 = *(this + 342);
  }

  else
  {
    v58 = 3;
  }

  v4 += v58;
  if ((v34 & 0x800000) != 0)
  {
LABEL_194:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 113)) + 2;
    v34 = *(this + 342);
  }

LABEL_195:
  if (!HIBYTE(v34))
  {
    goto LABEL_272;
  }

  if ((v34 & 0x1000000) != 0)
  {
    v37 = *(this + 114);
    if (!v37)
    {
      v37 = *(awd::metrics::LocationGPSSessionStatistics::default_instance_ + 912);
    }

    v38 = awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::ByteSize(v37);
    v39 = v38;
    if (v38 >= 0x80)
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
    }

    else
    {
      v40 = 1;
    }

    v4 += v39 + v40 + 2;
    v34 = *(this + 342);
    if ((v34 & 0x2000000) == 0)
    {
LABEL_198:
      if ((v34 & 0x4000000) == 0)
      {
        goto LABEL_199;
      }

      goto LABEL_232;
    }
  }

  else if ((v34 & 0x2000000) == 0)
  {
    goto LABEL_198;
  }

  v41 = *(this + 230);
  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    v34 = *(this + 342);
  }

  else
  {
    v42 = 3;
  }

  v4 += v42;
  if ((v34 & 0x4000000) == 0)
  {
LABEL_199:
    if ((v34 & 0x8000000) == 0)
    {
      goto LABEL_200;
    }

    goto LABEL_236;
  }

LABEL_232:
  v43 = *(this + 231);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v34 = *(this + 342);
  }

  else
  {
    v44 = 3;
  }

  v4 += v44;
  if ((v34 & 0x8000000) == 0)
  {
LABEL_200:
    if ((v34 & 0x10000000) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_240;
  }

LABEL_236:
  v45 = *(this + 232);
  if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
    v34 = *(this + 342);
  }

  else
  {
    v46 = 3;
  }

  v4 += v46;
  if ((v34 & 0x10000000) == 0)
  {
LABEL_201:
    if ((v34 & 0x20000000) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_244;
  }

LABEL_240:
  v47 = *(this + 233);
  if (v47 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
    v34 = *(this + 342);
  }

  else
  {
    v48 = 3;
  }

  v4 += v48;
  if ((v34 & 0x20000000) == 0)
  {
LABEL_202:
    if ((v34 & 0x40000000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_248;
  }

LABEL_244:
  v49 = *(this + 234);
  if (v49 >= 0x80)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
    v34 = *(this + 342);
  }

  else
  {
    v50 = 3;
  }

  v4 += v50;
  if ((v34 & 0x40000000) == 0)
  {
LABEL_203:
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_272;
    }

    goto LABEL_252;
  }

LABEL_248:
  v51 = *(this + 235);
  if (v51 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
    v34 = *(this + 342);
  }

  else
  {
    v52 = 3;
  }

  v4 += v52;
  if ((v34 & 0x80000000) != 0)
  {
LABEL_252:
    v53 = *(this + 236);
    if (v53 >= 0x80)
    {
      v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
    }

    else
    {
      v54 = 3;
    }

    v4 += v54;
  }

LABEL_272:
  v59 = *(this + 343);
  if (!v59)
  {
    goto LABEL_279;
  }

  if (v59)
  {
    v60 = *(this + 237);
    if (v60 >= 0x80)
    {
      v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60) + 2;
      v59 = *(this + 343);
    }

    else
    {
      v61 = 3;
    }

    v4 += v61;
    if ((v59 & 2) == 0)
    {
LABEL_275:
      if ((v59 & 4) == 0)
      {
        goto LABEL_276;
      }

      goto LABEL_289;
    }
  }

  else if ((v59 & 2) == 0)
  {
    goto LABEL_275;
  }

  v62 = *(this + 238);
  if (v62 >= 0x80)
  {
    v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62) + 2;
    v59 = *(this + 343);
  }

  else
  {
    v63 = 3;
  }

  v4 += v63;
  if ((v59 & 4) == 0)
  {
LABEL_276:
    if ((v59 & 8) == 0)
    {
      goto LABEL_277;
    }

    goto LABEL_293;
  }

LABEL_289:
  v64 = *(this + 239);
  if (v64 >= 0x80)
  {
    v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64) + 2;
    v59 = *(this + 343);
  }

  else
  {
    v65 = 3;
  }

  v4 += v65;
  if ((v59 & 8) == 0)
  {
LABEL_277:
    if ((v59 & 0x10) == 0)
    {
      goto LABEL_278;
    }

    goto LABEL_297;
  }

LABEL_293:
  v66 = *(this + 240);
  if (v66 >= 0x80)
  {
    v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66) + 2;
    v59 = *(this + 343);
  }

  else
  {
    v67 = 3;
  }

  v4 += v67;
  if ((v59 & 0x10) == 0)
  {
LABEL_278:
    if ((v59 & 0x20) == 0)
    {
      goto LABEL_279;
    }

LABEL_301:
    v70 = *(this + 260);
    if (v70 >= 0x80)
    {
      v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70) + 2;
      v59 = *(this + 343);
    }

    else
    {
      v71 = 3;
    }

    v4 += v71;
    if ((v59 & 0x400) == 0)
    {
      goto LABEL_311;
    }

    goto LABEL_305;
  }

LABEL_297:
  v68 = *(this + 241);
  if (v68 >= 0x80)
  {
    v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68) + 2;
    v59 = *(this + 343);
  }

  else
  {
    v69 = 3;
  }

  v4 += v69;
  if ((v59 & 0x20) != 0)
  {
    goto LABEL_301;
  }

LABEL_279:
  if ((v59 & 0x400) == 0)
  {
    goto LABEL_311;
  }

LABEL_305:
  v72 = *(this + 134);
  if (!v72)
  {
    v72 = *(awd::metrics::LocationGPSSessionStatistics::default_instance_ + 1072);
  }

  v73 = awd::metrics::LocationGPSSessionStatistics_BarometricAltitudeDriftRateInfo::ByteSize(v72);
  v74 = v73;
  if (v73 >= 0x80)
  {
    v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73);
  }

  else
  {
    v75 = 1;
  }

  v4 += v74 + v75 + 2;
  v59 = *(this + 343);
LABEL_311:
  v76 = v4 + 3;
  if ((v59 & 0x200000) == 0)
  {
    v76 = v4;
  }

  if ((v59 & 0x400000) != 0)
  {
    v76 += 3;
  }

  if ((v59 & 0x1FE00000) != 0)
  {
    v77 = v76;
  }

  else
  {
    v77 = v4;
  }

  if (HIBYTE(v59))
  {
    if ((v59 & 0x1000000) != 0)
    {
      v78 = *(this + 336);
      if ((v78 & 0x80000000) != 0)
      {
        v79 = 12;
      }

      else if (v78 >= 0x80)
      {
        v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78) + 2;
        v59 = *(this + 343);
      }

      else
      {
        v79 = 3;
      }

      v77 += v79;
      if ((v59 & 0x2000000) == 0)
      {
LABEL_321:
        if ((v59 & 0x4000000) == 0)
        {
          goto LABEL_341;
        }

        goto LABEL_335;
      }
    }

    else if ((v59 & 0x2000000) == 0)
    {
      goto LABEL_321;
    }

    v80 = *(this + 337);
    if ((v80 & 0x80000000) != 0)
    {
      v81 = 12;
    }

    else if (v80 >= 0x80)
    {
      v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v80) + 2;
      v59 = *(this + 343);
    }

    else
    {
      v81 = 3;
    }

    v77 += v81;
    if ((v59 & 0x4000000) != 0)
    {
LABEL_335:
      v82 = *(this + 338);
      if ((v82 & 0x80000000) != 0)
      {
        v83 = 12;
      }

      else if (v82 >= 0x80)
      {
        v83 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82) + 2;
      }

      else
      {
        v83 = 3;
      }

      v77 += v83;
    }
  }

LABEL_341:
  v84 = *(this + 16);
  v85 = v84 + v77;
  if (v84 >= 1)
  {
    v86 = 0;
    do
    {
      v87 = awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::ByteSize(*(*(this + 7) + 8 * v86));
      v88 = v87;
      if (v87 >= 0x80)
      {
        v89 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v87);
      }

      else
      {
        v89 = 1;
      }

      v85 += v88 + v89;
      ++v86;
    }

    while (v86 < *(this + 16));
  }

  v90 = *(this + 22);
  v91 = v90 + v85;
  if (v90 >= 1)
  {
    v92 = 0;
    do
    {
      v93 = awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::ByteSize(*(*(this + 10) + 8 * v92));
      v94 = v93;
      if (v93 >= 0x80)
      {
        v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93);
      }

      else
      {
        v95 = 1;
      }

      v91 += v94 + v95;
      ++v92;
    }

    while (v92 < *(this + 22));
  }

  v96 = *(this + 28);
  v97 = v96 + v91;
  if (v96 >= 1)
  {
    v98 = 0;
    do
    {
      v99 = awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::ByteSize(*(*(this + 13) + 8 * v98));
      v100 = v99;
      if (v99 >= 0x80)
      {
        v101 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v99);
      }

      else
      {
        v101 = 1;
      }

      v97 += v100 + v101;
      ++v98;
    }

    while (v98 < *(this + 28));
  }

  v102 = *(this + 34);
  v103 = v102 + v97;
  if (v102 >= 1)
  {
    v104 = 0;
    do
    {
      v105 = awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::ByteSize(*(*(this + 16) + 8 * v104));
      v106 = v105;
      if (v105 >= 0x80)
      {
        v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105);
      }

      else
      {
        v107 = 1;
      }

      v103 += v106 + v107;
      ++v104;
    }

    while (v104 < *(this + 34));
  }

  v108 = *(this + 40);
  v109 = v108 + v103;
  if (v108 >= 1)
  {
    v110 = 0;
    do
    {
      v111 = awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::ByteSize(*(*(this + 19) + 8 * v110));
      v112 = v111;
      if (v111 >= 0x80)
      {
        v113 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v111);
      }

      else
      {
        v113 = 1;
      }

      v109 += v112 + v113;
      ++v110;
    }

    while (v110 < *(this + 40));
  }

  v114 = *(this + 46);
  v115 = v114 + v109;
  if (v114 >= 1)
  {
    v116 = 0;
    do
    {
      v117 = awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::ByteSize(*(*(this + 22) + 8 * v116));
      v118 = v117;
      if (v117 >= 0x80)
      {
        v119 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v117);
      }

      else
      {
        v119 = 1;
      }

      v115 += v118 + v119;
      ++v116;
    }

    while (v116 < *(this + 46));
  }

  v120 = *(this + 52);
  v121 = v115 + 2 * v120;
  if (v120 >= 1)
  {
    v122 = 0;
    do
    {
      v123 = awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::ByteSize(*(*(this + 25) + 8 * v122));
      v124 = v123;
      if (v123 >= 0x80)
      {
        v125 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v123);
      }

      else
      {
        v125 = 1;
      }

      v121 += v124 + v125;
      ++v122;
    }

    while (v122 < *(this + 52));
  }

  v126 = *(this + 58);
  v127 = v121 + 2 * v126;
  if (v126 >= 1)
  {
    v128 = 0;
    do
    {
      v129 = awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::ByteSize(*(*(this + 28) + 8 * v128));
      v130 = v129;
      if (v129 >= 0x80)
      {
        v131 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v129);
      }

      else
      {
        v131 = 1;
      }

      v127 += v130 + v131;
      ++v128;
    }

    while (v128 < *(this + 58));
  }

  v132 = *(this + 64);
  v133 = v127 + 2 * v132;
  if (v132 >= 1)
  {
    v134 = 0;
    do
    {
      v135 = awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::ByteSize(*(*(this + 31) + 8 * v134));
      v136 = v135;
      if (v135 >= 0x80)
      {
        v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v135);
      }

      else
      {
        v137 = 1;
      }

      v133 += v136 + v137;
      ++v134;
    }

    while (v134 < *(this + 64));
  }

  v138 = *(this + 70);
  v139 = v133 + 2 * v138;
  if (v138 >= 1)
  {
    v140 = 0;
    do
    {
      v141 = awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::ByteSize(*(*(this + 34) + 8 * v140));
      v142 = v141;
      if (v141 >= 0x80)
      {
        v143 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v141);
      }

      else
      {
        v143 = 1;
      }

      v139 += v142 + v143;
      ++v140;
    }

    while (v140 < *(this + 70));
  }

  v144 = *(this + 76);
  v145 = v139 + 2 * v144;
  if (v144 >= 1)
  {
    v146 = 0;
    do
    {
      v147 = awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::ByteSize(*(*(this + 37) + 8 * v146));
      v148 = v147;
      if (v147 >= 0x80)
      {
        v149 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v147);
      }

      else
      {
        v149 = 1;
      }

      v145 += v148 + v149;
      ++v146;
    }

    while (v146 < *(this + 76));
  }

  v150 = *(this + 82);
  v151 = v145 + 2 * v150;
  if (v150 >= 1)
  {
    v152 = 0;
    do
    {
      v153 = awd::metrics::LocationGPSSessionStatistics_MotionActivityData::ByteSize(*(*(this + 40) + 8 * v152));
      v154 = v153;
      if (v153 >= 0x80)
      {
        v155 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v153);
      }

      else
      {
        v155 = 1;
      }

      v151 += v154 + v155;
      ++v152;
    }

    while (v152 < *(this + 82));
  }

  v156 = *(this + 88);
  v157 = v151 + 2 * v156;
  if (v156 >= 1)
  {
    v158 = 0;
    do
    {
      v159 = awd::metrics::LocationGPSSessionStatistics_MovingStateData::ByteSize(*(*(this + 43) + 8 * v158));
      v160 = v159;
      if (v159 >= 0x80)
      {
        v161 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v159);
      }

      else
      {
        v161 = 1;
      }

      v157 += v160 + v161;
      ++v158;
    }

    while (v158 < *(this + 88));
  }

  v162 = *(this + 94);
  v163 = v157 + 2 * v162;
  if (v162 >= 1)
  {
    v164 = 0;
    do
    {
      v165 = awd::metrics::LocationGPSSessionStatistics_MountedStateData::ByteSize(*(*(this + 46) + 8 * v164));
      v166 = v165;
      if (v165 >= 0x80)
      {
        v167 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v165);
      }

      else
      {
        v167 = 1;
      }

      v163 += v166 + v167;
      ++v164;
    }

    while (v164 < *(this + 94));
  }

  v168 = *(this + 154);
  v169 = v163 + 2 * v168;
  if (v168 >= 1)
  {
    v170 = 0;
    do
    {
      v171 = awd::metrics::LocationGPSSessionStatistics_ChecksumData::ByteSize(*(*(this + 76) + 8 * v170));
      v172 = v171;
      if (v171 >= 0x80)
      {
        v173 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v171);
      }

      else
      {
        v173 = 1;
      }

      v169 += v172 + v173;
      ++v170;
    }

    while (v170 < *(this + 154));
  }

  v174 = *(this + 162);
  v175 = v169 + 2 * v174;
  if (v174 >= 1)
  {
    v176 = 0;
    do
    {
      v177 = awd::metrics::LocationGPSSessionStatistics_PowerStateData::ByteSize(*(*(this + 80) + 8 * v176));
      v178 = v177;
      if (v177 >= 0x80)
      {
        v179 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v177);
      }

      else
      {
        v179 = 1;
      }

      v175 += v178 + v179;
      ++v176;
    }

    while (v176 < *(this + 162));
  }

  v180 = *(this + 174);
  v181 = v175 + 2 * v180;
  if (v180 >= 1)
  {
    v182 = 0;
    do
    {
      v183 = awd::metrics::LocationGPSSessionStatistics_DeviceOrientationData::ByteSize(*(*(this + 86) + 8 * v182));
      v184 = v183;
      if (v183 >= 0x80)
      {
        v185 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v183);
      }

      else
      {
        v185 = 1;
      }

      v181 += v184 + v185;
      ++v182;
    }

    while (v182 < *(this + 174));
  }

  v186 = *(this + 180);
  v187 = v181 + 2 * v186;
  if (v186 >= 1)
  {
    v188 = 0;
    do
    {
      v189 = awd::metrics::LocationGPSSessionStatistics_PowerMeasurementData::ByteSize(*(*(this + 89) + 8 * v188));
      v190 = v189;
      if (v189 >= 0x80)
      {
        v191 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v189);
      }

      else
      {
        v191 = 1;
      }

      v187 += v190 + v191;
      ++v188;
    }

    while (v188 < *(this + 180));
  }

  v192 = *(this + 216);
  v193 = v187 + 2 * v192;
  if (v192 >= 1)
  {
    v194 = 0;
    do
    {
      v195 = awd::metrics::LocationGPSSessionStatistics_ChecksumData::ByteSize(*(*(this + 107) + 8 * v194));
      v196 = v195;
      if (v195 >= 0x80)
      {
        v197 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v195);
      }

      else
      {
        v197 = 1;
      }

      v193 += v196 + v197;
      ++v194;
    }

    while (v194 < *(this + 216));
  }

  v198 = *(this + 244);
  v199 = v193 + 2 * v198;
  if (v198 >= 1)
  {
    v200 = 0;
    do
    {
      v201 = awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::ByteSize(*(*(this + 121) + 8 * v200));
      v202 = v201;
      if (v201 >= 0x80)
      {
        v203 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v201);
      }

      else
      {
        v203 = 1;
      }

      v199 += v202 + v203;
      ++v200;
    }

    while (v200 < *(this + 244));
  }

  v204 = *(this + 250);
  v205 = v199 + 2 * v204;
  if (v204 >= 1)
  {
    v206 = 0;
    do
    {
      v207 = awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::ByteSize(*(*(this + 124) + 8 * v206));
      v208 = v207;
      if (v207 >= 0x80)
      {
        v209 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v207);
      }

      else
      {
        v209 = 1;
      }

      v205 += v208 + v209;
      ++v206;
    }

    while (v206 < *(this + 250));
  }

  v210 = *(this + 256);
  v211 = v205 + 2 * v210;
  if (v210 >= 1)
  {
    v212 = 0;
    do
    {
      v213 = awd::metrics::LocationGPSSessionStatistics_ChargerTypeData::ByteSize(*(*(this + 127) + 8 * v212));
      v214 = v213;
      if (v213 >= 0x80)
      {
        v215 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v213);
      }

      else
      {
        v215 = 1;
      }

      v211 += v214 + v215;
      ++v212;
    }

    while (v212 < *(this + 256));
  }

  v216 = *(this + 264);
  v217 = v211 + 2 * v216;
  if (v216 >= 1)
  {
    v218 = 0;
    do
    {
      v219 = awd::metrics::LocationGPSSessionStatistics_ThermalLevelData::ByteSize(*(*(this + 131) + 8 * v218));
      v220 = v219;
      if (v219 >= 0x80)
      {
        v221 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v219);
      }

      else
      {
        v221 = 1;
      }

      v217 += v220 + v221;
      ++v218;
    }

    while (v218 < *(this + 264));
  }

  v222 = *(this + 272);
  v223 = v217 + 2 * v222;
  if (v222 >= 1)
  {
    v224 = 0;
    do
    {
      v225 = awd::metrics::LocationGPSSessionStatistics_NSForceOffReason::ByteSize(*(*(this + 135) + 8 * v224));
      v226 = v225;
      if (v225 >= 0x80)
      {
        v227 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v225);
      }

      else
      {
        v227 = 1;
      }

      v223 += v226 + v227;
      ++v224;
    }

    while (v224 < *(this + 272));
  }

  v228 = *(this + 278);
  v229 = v223 + 2 * v228;
  if (v228 >= 1)
  {
    v230 = 0;
    do
    {
      v231 = awd::metrics::LocationGPSSessionStatistics_NSOnOffState::ByteSize(*(*(this + 138) + 8 * v230));
      v232 = v231;
      if (v231 >= 0x80)
      {
        v233 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v231);
      }

      else
      {
        v233 = 1;
      }

      v229 += v232 + v233;
      ++v230;
    }

    while (v230 < *(this + 278));
  }

  v234 = *(this + 284);
  v235 = v229 + 2 * v234;
  if (v234 >= 1)
  {
    v236 = 0;
    do
    {
      v237 = awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::ByteSize(*(*(this + 141) + 8 * v236));
      v238 = v237;
      if (v237 >= 0x80)
      {
        v239 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v237);
      }

      else
      {
        v239 = 1;
      }

      v235 += v238 + v239;
      ++v236;
    }

    while (v236 < *(this + 284));
  }

  v240 = *(this + 290);
  v241 = v235 + 2 * v240;
  if (v240 >= 1)
  {
    v242 = 0;
    do
    {
      v243 = awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::ByteSize(*(*(this + 144) + 8 * v242));
      v244 = v243;
      if (v243 >= 0x80)
      {
        v245 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v243);
      }

      else
      {
        v245 = 1;
      }

      v241 += v244 + v245;
      ++v242;
    }

    while (v242 < *(this + 290));
  }

  v246 = *(this + 296);
  v247 = v241 + 2 * v246;
  if (v246 >= 1)
  {
    v248 = 0;
    do
    {
      v249 = awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::ByteSize(*(*(this + 147) + 8 * v248));
      v250 = v249;
      if (v249 >= 0x80)
      {
        v251 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v249);
      }

      else
      {
        v251 = 1;
      }

      v247 += v250 + v251;
      ++v248;
    }

    while (v248 < *(this + 296));
  }

  v252 = *(this + 302);
  v253 = v247 + 2 * v252;
  if (v252 >= 1)
  {
    v254 = 0;
    do
    {
      v255 = awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::ByteSize(*(*(this + 150) + 8 * v254));
      v256 = v255;
      if (v255 >= 0x80)
      {
        v257 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v255);
      }

      else
      {
        v257 = 1;
      }

      v253 += v256 + v257;
      ++v254;
    }

    while (v254 < *(this + 302));
  }

  v258 = *(this + 308);
  v259 = v253 + 2 * v258;
  if (v258 >= 1)
  {
    v260 = 0;
    do
    {
      v261 = awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::ByteSize(*(*(this + 153) + 8 * v260));
      v262 = v261;
      if (v261 >= 0x80)
      {
        v263 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v261);
      }

      else
      {
        v263 = 1;
      }

      v259 += v262 + v263;
      ++v260;
    }

    while (v260 < *(this + 308));
  }

  v264 = *(this + 314);
  v265 = v259 + 2 * v264;
  if (v264 >= 1)
  {
    v266 = 0;
    do
    {
      v267 = awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::ByteSize(*(*(this + 156) + 8 * v266));
      v268 = v267;
      if (v267 >= 0x80)
      {
        v269 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v267);
      }

      else
      {
        v269 = 1;
      }

      v265 += v268 + v269;
      ++v266;
    }

    while (v266 < *(this + 314));
  }

  v270 = *(this + 320);
  v271 = v265 + 2 * v270;
  if (v270 >= 1)
  {
    v272 = 0;
    do
    {
      v273 = awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::ByteSize(*(*(this + 159) + 8 * v272));
      v274 = v273;
      if (v273 >= 0x80)
      {
        v275 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v273);
      }

      else
      {
        v275 = 1;
      }

      v271 += v274 + v275;
      ++v272;
    }

    while (v272 < *(this + 320));
  }

  v276 = *(this + 326);
  v277 = v271 + 2 * v276;
  if (v276 >= 1)
  {
    v278 = 0;
    do
    {
      v279 = awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::ByteSize(*(*(this + 162) + 8 * v278));
      v280 = v279;
      if (v279 >= 0x80)
      {
        v281 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v279);
      }

      else
      {
        v281 = 1;
      }

      v277 += v280 + v281;
      ++v278;
    }

    while (v278 < *(this + 326));
  }

  v282 = *(this + 332);
  v283 = (v277 + 2 * v282);
  if (v282 >= 1)
  {
    v284 = 0;
    do
    {
      v285 = awd::metrics::LocationGPSSessionStatistics_JammingMetricDataPerSignal::ByteSize(*(*(this + 165) + 8 * v284));
      v286 = v285;
      if (v285 >= 0x80)
      {
        v287 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v285);
      }

      else
      {
        v287 = 1;
      }

      v283 = (v286 + v283 + v287);
      ++v284;
    }

    while (v284 < *(this + 332));
  }

  *(this + 339) = v283;
  return v283;
}

void awd::metrics::LocationGPSSessionStatistics::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics::CopyFrom(awd::metrics::LocationGPSSessionStatistics *this, const awd::metrics::LocationGPSSessionStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    v5 = *(this + 16);
    v6 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v6;
    *(a2 + 1) = v4;
    *(a2 + 2) = v5;
    v7 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v7;
    LODWORD(v7) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v7;
    v8 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v8;
    v9 = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v9;
    v10 = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v10;
    v11 = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v11;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v12 = *(v3 + 432);
    *(v3 + 432) = *(a2 + 108);
    *(a2 + 108) = v12;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v13 = *(v3 + 392);
    *(v3 + 392) = *(a2 + 49);
    *(a2 + 49) = v13;
    v14 = *(v3 + 400);
    *(v3 + 400) = *(a2 + 50);
    *(a2 + 50) = v14;
    v15 = *(v3 + 408);
    *(v3 + 408) = *(a2 + 51);
    *(a2 + 51) = v15;
    v16 = *(v3 + 416);
    *(v3 + 416) = *(a2 + 52);
    *(a2 + 52) = v16;
    v17 = *(v3 + 424);
    *(v3 + 424) = *(a2 + 53);
    *(a2 + 53) = v17;
    LOBYTE(v17) = *(v3 + 576);
    *(v3 + 576) = *(a2 + 576);
    *(a2 + 576) = v17;
    LOBYTE(v17) = *(v3 + 577);
    *(v3 + 577) = *(a2 + 577);
    *(a2 + 577) = v17;
    v18 = *(v3 + 440);
    *(v3 + 440) = *(a2 + 55);
    *(a2 + 55) = v18;
    v19 = *(v3 + 448);
    *(v3 + 448) = *(a2 + 56);
    *(a2 + 56) = v19;
    v20 = *(v3 + 456);
    *(v3 + 456) = *(a2 + 57);
    *(a2 + 57) = v20;
    v21 = *(v3 + 464);
    *(v3 + 464) = *(a2 + 58);
    *(a2 + 58) = v21;
    v22 = *(v3 + 472);
    *(v3 + 472) = *(a2 + 59);
    *(a2 + 59) = v22;
    v23 = *(v3 + 480);
    *(v3 + 480) = *(a2 + 60);
    *(a2 + 60) = v23;
    v24 = *(v3 + 488);
    *(v3 + 488) = *(a2 + 61);
    *(a2 + 61) = v24;
    v25 = *(v3 + 496);
    *(v3 + 496) = *(a2 + 62);
    *(a2 + 62) = v25;
    v26 = *(v3 + 504);
    *(v3 + 504) = *(a2 + 63);
    *(a2 + 63) = v26;
    v27 = *(v3 + 512);
    *(v3 + 512) = *(a2 + 64);
    *(a2 + 64) = v27;
    v28 = *(v3 + 520);
    *(v3 + 520) = *(a2 + 65);
    *(a2 + 65) = v28;
    v29 = *(v3 + 528);
    *(v3 + 528) = *(a2 + 66);
    *(a2 + 66) = v29;
    v30 = *(v3 + 536);
    *(v3 + 536) = *(a2 + 67);
    *(a2 + 67) = v30;
    v31 = *(v3 + 544);
    *(v3 + 544) = *(a2 + 68);
    *(a2 + 68) = v31;
    v32 = *(v3 + 552);
    *(v3 + 552) = *(a2 + 69);
    *(a2 + 69) = v32;
    v33 = *(v3 + 560);
    *(v3 + 560) = *(a2 + 70);
    *(a2 + 70) = v33;
    v34 = *(v3 + 568);
    *(v3 + 568) = *(a2 + 71);
    *(a2 + 71) = v34;
    LODWORD(v34) = *(v3 + 436);
    *(v3 + 436) = *(a2 + 109);
    *(a2 + 109) = v34;
    LODWORD(v34) = *(v3 + 580);
    *(v3 + 580) = *(a2 + 145);
    *(a2 + 145) = v34;
    LODWORD(v34) = *(v3 + 584);
    *(v3 + 584) = *(a2 + 146);
    *(a2 + 146) = v34;
    LODWORD(v34) = *(v3 + 588);
    *(v3 + 588) = *(a2 + 147);
    *(a2 + 147) = v34;
    LODWORD(v34) = *(v3 + 592);
    *(v3 + 592) = *(a2 + 148);
    *(a2 + 148) = v34;
    v35 = *(v3 + 596);
    *(v3 + 596) = *(a2 + 149);
    *(a2 + 149) = v35;
    v36 = *(v3 + 600);
    *(v3 + 600) = *(a2 + 150);
    *(a2 + 150) = v36;
    LODWORD(v34) = *(v3 + 604);
    *(v3 + 604) = *(a2 + 151);
    *(a2 + 151) = v34;
    LOBYTE(v34) = *(v3 + 578);
    *(v3 + 578) = *(a2 + 578);
    *(a2 + 578) = v34;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v37 = *(v3 + 632);
    *(v3 + 632) = *(a2 + 79);
    *(a2 + 79) = v37;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v38 = *(v3 + 664);
    *(v3 + 664) = *(a2 + 83);
    *(a2 + 83) = v38;
    v39 = *(v3 + 672);
    *(v3 + 672) = *(a2 + 84);
    *(a2 + 84) = v39;
    v40 = *(v3 + 680);
    *(v3 + 680) = *(a2 + 85);
    *(a2 + 85) = v40;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v41 = *(v3 + 808);
    *(v3 + 808) = *(a2 + 202);
    *(a2 + 202) = v41;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v42 = *(v3 + 736);
    *(v3 + 736) = *(a2 + 92);
    *(a2 + 92) = v42;
    v43 = *(v3 + 744);
    *(v3 + 744) = *(a2 + 93);
    *(a2 + 93) = v43;
    v44 = *(v3 + 752);
    *(v3 + 752) = *(a2 + 94);
    *(a2 + 94) = v44;
    v45 = *(v3 + 760);
    *(v3 + 760) = *(a2 + 95);
    *(a2 + 95) = v45;
    v46 = *(v3 + 768);
    *(v3 + 768) = *(a2 + 96);
    *(a2 + 96) = v46;
    v47 = *(v3 + 776);
    *(v3 + 776) = *(a2 + 97);
    *(a2 + 97) = v47;
    v48 = *(v3 + 784);
    *(v3 + 784) = *(a2 + 98);
    *(a2 + 98) = v48;
    v49 = *(v3 + 792);
    *(v3 + 792) = *(a2 + 99);
    *(a2 + 99) = v49;
    v50 = *(v3 + 800);
    *(v3 + 800) = *(a2 + 100);
    *(a2 + 100) = v50;
    v51 = *(v3 + 816);
    *(v3 + 816) = *(a2 + 102);
    *(a2 + 102) = v51;
    v52 = *(v3 + 824);
    *(v3 + 824) = *(a2 + 103);
    *(a2 + 103) = v52;
    v53 = *(v3 + 832);
    *(v3 + 832) = *(a2 + 104);
    *(a2 + 104) = v53;
    v54 = *(v3 + 840);
    *(v3 + 840) = *(a2 + 105);
    *(a2 + 105) = v54;
    v55 = *(v3 + 848);
    *(v3 + 848) = *(a2 + 106);
    *(a2 + 106) = v55;
    LOBYTE(v55) = *(v3 + 579);
    *(v3 + 579) = *(a2 + 579);
    *(a2 + 579) = v55;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v56 = *(v3 + 880);
    *(v3 + 880) = *(a2 + 110);
    *(a2 + 110) = v56;
    v57 = *(v3 + 888);
    *(v3 + 888) = *(a2 + 111);
    *(a2 + 111) = v57;
    LOBYTE(v57) = *(v3 + 1044);
    *(v3 + 1044) = *(a2 + 1044);
    *(a2 + 1044) = v57;
    LODWORD(v57) = *(v3 + 812);
    *(v3 + 812) = *(a2 + 203);
    *(a2 + 203) = v57;
    LODWORD(v57) = *(v3 + 896);
    *(v3 + 896) = *(a2 + 224);
    *(a2 + 224) = v57;
    LODWORD(v57) = *(v3 + 900);
    *(v3 + 900) = *(a2 + 225);
    *(a2 + 225) = v57;
    v58 = *(v3 + 904);
    *(v3 + 904) = *(a2 + 113);
    *(a2 + 113) = v58;
    v59 = *(v3 + 912);
    *(v3 + 912) = *(a2 + 114);
    *(a2 + 114) = v59;
    LODWORD(v59) = *(v3 + 920);
    *(v3 + 920) = *(a2 + 230);
    *(a2 + 230) = v59;
    LODWORD(v59) = *(v3 + 924);
    *(v3 + 924) = *(a2 + 231);
    *(a2 + 231) = v59;
    LODWORD(v59) = *(v3 + 928);
    *(v3 + 928) = *(a2 + 232);
    *(a2 + 232) = v59;
    LODWORD(v59) = *(v3 + 932);
    *(v3 + 932) = *(a2 + 233);
    *(a2 + 233) = v59;
    LODWORD(v59) = *(v3 + 936);
    *(v3 + 936) = *(a2 + 234);
    *(a2 + 234) = v59;
    LODWORD(v59) = *(v3 + 940);
    *(v3 + 940) = *(a2 + 235);
    *(a2 + 235) = v59;
    LODWORD(v59) = *(v3 + 944);
    *(v3 + 944) = *(a2 + 236);
    *(a2 + 236) = v59;
    LODWORD(v59) = *(v3 + 948);
    *(v3 + 948) = *(a2 + 237);
    *(a2 + 237) = v59;
    LODWORD(v59) = *(v3 + 952);
    *(v3 + 952) = *(a2 + 238);
    *(a2 + 238) = v59;
    LODWORD(v59) = *(v3 + 956);
    *(v3 + 956) = *(a2 + 239);
    *(a2 + 239) = v59;
    LODWORD(v59) = *(v3 + 960);
    *(v3 + 960) = *(a2 + 240);
    *(a2 + 240) = v59;
    LODWORD(v59) = *(v3 + 964);
    *(v3 + 964) = *(a2 + 241);
    *(a2 + 241) = v59;
    LODWORD(v59) = *(v3 + 1040);
    *(v3 + 1040) = *(a2 + 260);
    *(a2 + 260) = v59;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v60 = *(v3 + 1072);
    *(v3 + 1072) = *(a2 + 134);
    *(a2 + 134) = v60;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v61 = *(v3 + 1045);
    *(v3 + 1045) = *(a2 + 1045);
    *(a2 + 1045) = v61;
    v62 = *(v3 + 1046);
    *(v3 + 1046) = *(a2 + 1046);
    *(a2 + 1046) = v62;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v63 = *(v3 + 1344);
    *(v3 + 1344) = *(a2 + 336);
    *(a2 + 336) = v63;
    v64 = *(v3 + 1348);
    *(v3 + 1348) = *(a2 + 337);
    *(a2 + 337) = v64;
    v65 = *(v3 + 1352);
    *(v3 + 1352) = *(a2 + 338);
    *(a2 + 338) = v65;
    v66 = *(v3 + 1360);
    *(v3 + 1360) = *(a2 + 340);
    *(a2 + 340) = v66;
    v67 = *(v3 + 1364);
    *(v3 + 1364) = *(a2 + 341);
    *(a2 + 341) = v67;
    v68 = *(v3 + 1368);
    *(v3 + 1368) = *(a2 + 342);
    *(a2 + 342) = v68;
    v69 = *(v3 + 1372);
    *(v3 + 1372) = *(a2 + 343);
    *(a2 + 343) = v69;
    v70 = *(v3 + 1356);
    *(v3 + 1356) = *(a2 + 339);
    *(a2 + 339) = v70;
  }

  return this;
}

double awd::metrics::LocationCellTileUsage::SharedCtor(awd::metrics::LocationCellTileUsage *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::LocationCellTileUsage *awd::metrics::LocationCellTileUsage::LocationCellTileUsage(awd::metrics::LocationCellTileUsage *this, const awd::metrics::LocationCellTileUsage *a2)
{
  *this = &unk_2A1D506A0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  awd::metrics::LocationCellTileUsage::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationCellTileUsage::MergeFrom(awd::metrics::LocationCellTileUsage *this, const awd::metrics::LocationCellTileUsage *a2)
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
    v7 = *(a2 + 1);
    *(this + 15) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 15);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 4);
  *(this + 15) |= 2u;
  *(this + 4) = v8;
  v4 = *(a2 + 15);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a2 + 5);
  *(this + 15) |= 4u;
  *(this + 5) = v9;
  v4 = *(a2 + 15);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 6);
  *(this + 15) |= 8u;
  *(this + 6) = v10;
  v4 = *(a2 + 15);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v12 = *(a2 + 8);
    *(this + 15) |= 0x20u;
    *(this + 8) = v12;
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

    goto LABEL_25;
  }

LABEL_23:
  v11 = *(a2 + 7);
  *(this + 15) |= 0x10u;
  *(this + 7) = v11;
  v4 = *(a2 + 15);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v13 = *(a2 + 9);
  *(this + 15) |= 0x40u;
  *(this + 9) = v13;
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
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 11);
    *(this + 15) |= 0x100u;
    *(this + 11) = v14;
    v4 = *(a2 + 15);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 12);
  *(this + 15) |= 0x200u;
  *(this + 12) = v15;
  if ((*(a2 + 15) & 0x400) == 0)
  {
    return;
  }

LABEL_17:
  v6 = *(a2 + 13);
  *(this + 15) |= 0x400u;
  *(this + 13) = v6;
}

void sub_296457FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationCellTileUsage::~LocationCellTileUsage(awd::metrics::LocationCellTileUsage *this)
{
  *this = &unk_2A1D506A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D506A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D506A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationCellTileUsage::default_instance(awd::metrics::LocationCellTileUsage *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationCellTileUsage::default_instance_;
  if (!awd::metrics::LocationCellTileUsage::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationCellTileUsage::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationCellTileUsage::Clear(uint64_t this)
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
    *(this + 48) = 0;
    *(this + 44) = 0;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t awd::metrics::LocationCellTileUsage::MergePartialFromCodedStream(awd::metrics::LocationCellTileUsage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

            v11 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_52;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
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

          *(this + 15) |= 1u;
          if (v14 < v7 && *v14 == 16)
          {
            v11 = v14 + 1;
            *(a2 + 1) = v11;
LABEL_52:
            if (v11 >= v7 || (v21 = *v11, v21 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v22 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v21;
              v22 = v11 + 1;
              *(a2 + 1) = v22;
            }

            *(this + 15) |= 2u;
            if (v22 < v7 && *v22 == 24)
            {
              v18 = v22 + 1;
              *(a2 + 1) = v18;
LABEL_60:
              if (v18 >= v7 || (v23 = *v18, v23 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                if (!result)
                {
                  return result;
                }

                v24 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 5) = v23;
                v24 = v18 + 1;
                *(a2 + 1) = v24;
              }

              *(this + 15) |= 4u;
              if (v24 < v7 && *v24 == 32)
              {
                v15 = v24 + 1;
                *(a2 + 1) = v15;
                goto LABEL_68;
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

            v18 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_60;
          }

          if (v6 != 4)
          {
            if (v6 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_76;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v15 = *(a2 + 1);
          v7 = *(a2 + 2);
LABEL_68:
          if (v15 >= v7 || (v25 = *v15, v25 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v26 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v25;
            v26 = v15 + 1;
            *(a2 + 1) = v26;
          }

          *(this + 15) |= 8u;
          if (v26 < v7 && *v26 == 40)
          {
            v9 = v26 + 1;
            *(a2 + 1) = v9;
LABEL_76:
            if (v9 >= v7 || (v27 = *v9, v27 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v28 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v27;
              v28 = v9 + 1;
              *(a2 + 1) = v28;
            }

            *(this + 15) |= 0x10u;
            if (v28 < v7 && *v28 == 48)
            {
              v19 = v28 + 1;
              *(a2 + 1) = v19;
LABEL_84:
              if (v19 >= v7 || (v29 = *v19, v29 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v30 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v29;
                v30 = v19 + 1;
                *(a2 + 1) = v30;
              }

              *(this + 15) |= 0x20u;
              if (v30 < v7 && *v30 == 56)
              {
                v16 = v30 + 1;
                *(a2 + 1) = v16;
                goto LABEL_92;
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
            v20 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_108;
          }
        }

        else if (v6 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_116;
          }
        }

        else if (v6 == 11 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_124;
        }

        goto LABEL_43;
      }

      if (v6 == 6)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_43;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_84;
      }

      if (v6 != 7)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
      }

      v16 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_92:
      if (v16 >= v7 || (v31 = *v16, v31 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
        if (!result)
        {
          return result;
        }

        v32 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 9) = v31;
        v32 = v16 + 1;
        *(a2 + 1) = v32;
      }

      *(this + 15) |= 0x40u;
      if (v32 < v7 && *v32 == 64)
      {
        v8 = v32 + 1;
        *(a2 + 1) = v8;
LABEL_100:
        if (v8 >= v7 || (v33 = *v8, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v33;
          v34 = v8 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 15) |= 0x80u;
        if (v34 < v7 && *v34 == 72)
        {
          v20 = v34 + 1;
          *(a2 + 1) = v20;
LABEL_108:
          if (v20 >= v7 || (v35 = *v20, v35 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
            if (!result)
            {
              return result;
            }

            v36 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 11) = v35;
            v36 = v20 + 1;
            *(a2 + 1) = v36;
          }

          *(this + 15) |= 0x100u;
          if (v36 < v7 && *v36 == 80)
          {
            v17 = v36 + 1;
            *(a2 + 1) = v17;
LABEL_116:
            if (v17 >= v7 || (v37 = *v17, v37 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
              if (!result)
              {
                return result;
              }

              v38 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 12) = v37;
              v38 = v17 + 1;
              *(a2 + 1) = v38;
            }

            *(this + 15) |= 0x200u;
            if (v38 < v7 && *v38 == 88)
            {
              v10 = v38 + 1;
              *(a2 + 1) = v10;
LABEL_124:
              if (v10 >= v7 || (v39 = *v10, v39 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                if (!result)
                {
                  return result;
                }

                v40 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 13) = v39;
                v40 = v10 + 1;
                *(a2 + 1) = v40;
              }

              *(this + 15) |= 0x400u;
              if (v40 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_100;
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

uint64_t awd::metrics::LocationCellTileUsage::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[15];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[15];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[15];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[15];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[15];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[15];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[15];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[10], a2, a4);
  v6 = v5[15];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[12], a2, a4);
    if ((v5[15] & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[11], a2, a4);
  v6 = v5[15];
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
  v7 = v5[13];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v7, a2, a4);
}

uint64_t awd::metrics::LocationCellTileUsage::ByteSize(awd::metrics::LocationCellTileUsage *this)
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
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_59;
  }

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
    if ((v2 & 0x200) == 0)
    {
LABEL_45:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
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
    v2 = *(this + 15);
  }

  else
  {
    v21 = 2;
  }

  v3 = (v21 + v3);
  if ((v2 & 0x400) != 0)
  {
LABEL_55:
    v22 = *(this + 13);
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    }

    else
    {
      v23 = 2;
    }

    v3 = (v23 + v3);
  }

LABEL_59:
  *(this + 14) = v3;
  return v3;
}

void awd::metrics::LocationCellTileUsage::CheckTypeAndMergeFrom(awd::metrics::LocationCellTileUsage *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationCellTileUsage::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationCellTileUsage::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationCellTileUsage::CopyFrom(awd::metrics::LocationCellTileUsage *this, const awd::metrics::LocationCellTileUsage *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationCellTileUsage::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationCellTileUsage::Swap(uint64_t this, awd::metrics::LocationCellTileUsage *a2)
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
    LODWORD(v2) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v2;
  }

  return this;
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 16) = MEMORY[0x29EDC9758];
  *(this + 24) = 0;
  *(this + 8) = v1;
  *(this + 32) = 0;
  return this;
}

awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint *awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint(awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint *this, const awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D50718;
  *(this + 1) = v3;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::MergeFrom(awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint *this, const awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    v5 = MEMORY[0x29EDC9758];
    if (*(a2 + 32))
    {
      v6 = *(a2 + 1);
      *(this + 8) |= 1u;
      v7 = *(this + 1);
      if (v7 == v5)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 6);
    *(this + 8) |= 2u;
    *(this + 6) = v8;
    if ((*(a2 + 8) & 4) == 0)
    {
      return;
    }

LABEL_12:
    v9 = *(a2 + 2);
    *(this + 8) |= 4u;
    v10 = *(this + 2);
    if (v10 == v5)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
  }
}

void sub_296458E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::~LocationGnssSWRecoveryStatistics_LocationRecoveryPoint(awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint *this)
{
  *this = &unk_2A1D50718;
  awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50718;
  awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50718;
  awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C25A730](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 16);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::default_instance(awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::default_instance_;
  if (!awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    v1 = MEMORY[0x29EDC9758];
    if (*(this + 32))
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

    *(this + 24) = 0;
    if ((*(this + 32) & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3 != v1)
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

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::MergePartialFromCodedStream(awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v8 != 2)
          {
            goto LABEL_23;
          }

          v15 = *(this + 8);
LABEL_32:
          *(this + 8) = v15 | 4;
          if (*(this + 2) == v4)
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

        if (v7 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_23;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_19:
        if (v12 >= v10 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        v15 = *(this + 8) | 2;
        *(this + 8) = v15;
        if (v14 < v10 && *v14 == 26)
        {
          *(a2 + 1) = v14 + 1;
          goto LABEL_32;
        }
      }

      if (v7 != 1 || v8 != 2)
      {
        break;
      }

      *(this + 8) |= 1u;
      if (*(this + 1) == v4)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v11 < v10 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
        goto LABEL_19;
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
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v7 = *(this + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::ByteSize(awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_29;
  }

  if (*(this + 32))
  {
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
      v2 = *(this + 8);
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
    if ((v2 & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v11 = *(this + 6);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
LABEL_19:
  if ((v2 & 4) != 0)
  {
    v13 = *(this + 2);
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
  }

LABEL_29:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::CheckTypeAndMergeFrom(awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::CopyFrom(awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint *this, const awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::Swap(uint64_t this, awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 11) = 0;
  return this;
}

awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus *awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus(awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus *this, const awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus *a2)
{
  *this = &unk_2A1D50790;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 11) = 0;
  awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::MergeFrom(awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus *this, const awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v6 = *(a2 + 12);
      *(this + 5) |= 1u;
      *(this + 12) = v6;
      v4 = *(a2 + 5);
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

    else if ((*(a2 + 20) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 5) |= 2u;
    *(this + 2) = v7;
    v4 = *(a2 + 5);
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
    v8 = *(a2 + 13);
    *(this + 5) |= 4u;
    *(this + 13) = v8;
    if ((*(a2 + 5) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 14);
    *(this + 5) |= 8u;
    *(this + 14) = v5;
  }
}

void sub_2964597E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::~LocationGnssSWRecoveryStatistics_LocationRecoveryStatus(awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus *this)
{
  *this = &unk_2A1D50790;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50790;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50790;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::default_instance(awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::default_instance_;
  if (!awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 11) = 0;
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::MergePartialFromCodedStream(awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v23 = 0;
      v10 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v10 >= v7 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
        if (!result)
        {
          return result;
        }

        v11 = v23;
        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 12) = v11 != 0;
      *(this + 5) |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(a2 + 1) = v8;
LABEL_29:
        if (v8 >= v7 || (v14 = *v8, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v14;
          v15 = v8 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 5) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          v22 = 0;
          if (v13 >= v7 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
            if (!result)
            {
              return result;
            }

            v16 = v22;
            v17 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 13) = v16 != 0;
          *(this + 5) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
LABEL_45:
            v21 = 0;
            if (v9 >= v7 || (v18 = *v9, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
              if (!result)
              {
                return result;
              }

              v18 = v21;
              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v19 = v9 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 14) = v18 != 0;
            *(this + 5) |= 8u;
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

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 12), a2, a4);
    v6 = *(v5 + 20);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 13), a2, a4);
      if ((*(v5 + 20) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 8), a2, a4);
  v6 = *(v5 + 20);
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
  v7 = *(v5 + 14);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::ByteSize(awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = 2 * (v2 & 1);
    if ((v2 & 2) != 0)
    {
      v4 = *(this + 2);
      if (v4 >= 0x80)
      {
        v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        v2 = *(this + 5);
      }

      else
      {
        v5 = 2;
      }

      v3 += v5;
    }

    result = ((v2 >> 1) & 2) + v3 + ((v2 >> 2) & 2);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::CheckTypeAndMergeFrom(awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::CopyFrom(awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus *this, const awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::Swap(uint64_t this, awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v3;
    LOBYTE(v3) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v3;
    LOBYTE(v3) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v3;
    v4 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo *awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo(awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo *this, const awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo *a2)
{
  *this = &unk_2A1D50808;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::MergeFrom(this, a2);
  return this;
}

void sub_296459F08(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::MergeFrom(awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo *this, const awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(this + 4);
  v5 = *(a2 + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
  LODWORD(v6) = *(a2 + 4);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
      }

      v8 = *(*(a2 + 1) + 8 * v7);
      v9 = *(this + 5);
      v10 = *(this + 4);
      if (v10 >= v9)
      {
        if (v9 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
          v9 = *(this + 5);
        }

        *(this + 5) = v9 + 1;
        operator new();
      }

      v11 = *(this + 1);
      *(this + 4) = v10 + 1;
      awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 4);
    }

    while (v7 < v6);
  }

  if ((*(a2 + 44) & 2) != 0)
  {
    *(this + 11) |= 2u;
    v12 = *(this + 4);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 4);
    if (!v13)
    {
      v13 = *(awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::default_instance_ + 32);
    }

    awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::MergeFrom(v12, v13);
  }
}

void sub_29645A15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::~LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo(awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo *this)
{
  *this = &unk_2A1D50808;
  if (awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::default_instance_ != this)
  {
    v2 = *(this + 4);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::~LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::SharedDtor(void *this)
{
  if (awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::default_instance_ != this)
  {
    this = this[4];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::default_instance(awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::default_instance_;
  if (!awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::Clear(awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo *this)
{
  if ((*(this + 44) & 2) != 0)
  {
    v2 = *(this + 4);
    if (v2)
    {
      if (*(v2 + 20))
      {
        *(v2 + 11) = 0;
        *(v2 + 8) = 0;
      }

      *(v2 + 20) = 0;
    }
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint>::TypeHandler>(this + 8);
  *(this + 11) = 0;
  return result;
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::MergePartialFromCodedStream(awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v6 = TagFallback & 7;
      if (TagFallback >> 3 != 2)
      {
        break;
      }

      if (v6 != 2)
      {
        goto LABEL_30;
      }

LABEL_33:
      *(this + 11) |= 2u;
      v19 = *(this + 4);
      if (!v19)
      {
        operator new();
      }

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
      if (!awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::MergePartialFromCodedStream(v19, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v23 = *(a2 + 14);
      v15 = __OFSUB__(v23, 1);
      v24 = v23 - 1;
      if (v24 < 0 == v15)
      {
        *(a2 + 14) = v24;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (TagFallback >> 3 == 1 && v6 == 2)
    {
      while (1)
      {
        v7 = *(this + 5);
        v8 = *(this + 4);
        if (v8 >= v7)
        {
          if (v7 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v7 = *(this + 5);
          }

          *(this + 5) = v7 + 1;
          operator new();
        }

        v9 = *(this + 1);
        *(this + 4) = v8 + 1;
        v10 = *(v9 + 8 * v8);
        v26 = 0;
        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2) || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
          {
            return 0;
          }
        }

        else
        {
          v26 = *v11;
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
        if (!awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::MergePartialFromCodedStream(v10, a2) || *(a2 + 36) != 1)
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

        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2))
        {
          goto LABEL_1;
        }

        v18 = *v17;
        if (v18 != 10)
        {
          if (v18 != 18)
          {
            goto LABEL_1;
          }

          *(a2 + 1) = v17 + 1;
          goto LABEL_33;
        }

        *(a2 + 1) = v17 + 1;
      }
    }

LABEL_30:
    if (v6 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  if ((*(v5 + 44) & 2) != 0)
  {
    v7 = *(v5 + 32);
    if (!v7)
    {
      v7 = *(awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::default_instance_ + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::ByteSize(awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo *this)
{
  if ((*(this + 44) & 2) != 0)
  {
    v3 = *(this + 4);
    if (!v3)
    {
      v3 = *(awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::default_instance_ + 32);
    }

    v4 = awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryStatus::ByteSize(v3);
    v5 = v4;
    if (v4 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
    }

    else
    {
      v6 = 1;
    }

    v2 = v5 + v6 + 1;
  }

  else
  {
    v2 = 0;
  }

  v7 = *(this + 4);
  v8 = (v7 + v2);
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = awd::metrics::LocationGnssSWRecoveryStatistics_LocationRecoveryPoint::ByteSize(*(*(this + 1) + 8 * v9));
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

void awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::CheckTypeAndMergeFrom(awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::CopyFrom(awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo *this, const awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::MergeFrom(this, a2);
  }
}

awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo *awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::Swap(awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo *this, awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 4);
    *(v3 + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v4;
    LODWORD(v4) = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v4;
  }

  return this;
}

void *awd::metrics::LocationGnssSWRecoveryStatistics::SharedCtor(void *this)
{
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  this[3] = 0;
  this[4] = 0;
  return this;
}

awd::metrics::LocationGnssSWRecoveryStatistics *awd::metrics::LocationGnssSWRecoveryStatistics::LocationGnssSWRecoveryStatistics(awd::metrics::LocationGnssSWRecoveryStatistics *this, const awd::metrics::LocationGnssSWRecoveryStatistics *a2)
{
  *this = &unk_2A1D50880;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = v3;
  awd::metrics::LocationGnssSWRecoveryStatistics::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGnssSWRecoveryStatistics::MergeFrom(awd::metrics::LocationGnssSWRecoveryStatistics *this, const awd::metrics::LocationGnssSWRecoveryStatistics *a2)
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
      v5 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 2);
    *(this + 9) |= 2u;
    v7 = *(this + 2);
    if (v7 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v7, v6);
    if ((*(a2 + 9) & 4) != 0)
    {
LABEL_12:
      *(this + 9) |= 4u;
      v8 = *(this + 3);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 3);
      if (!v9)
      {
        v9 = *(awd::metrics::LocationGnssSWRecoveryStatistics::default_instance_ + 24);
      }

      awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::MergeFrom(v8, v9);
    }
  }
}

void sub_29645ABE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGnssSWRecoveryStatistics::~LocationGnssSWRecoveryStatistics(awd::metrics::LocationGnssSWRecoveryStatistics *this)
{
  *this = &unk_2A1D50880;
  awd::metrics::LocationGnssSWRecoveryStatistics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50880;
  awd::metrics::LocationGnssSWRecoveryStatistics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50880;
  awd::metrics::LocationGnssSWRecoveryStatistics::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationGnssSWRecoveryStatistics::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C25A730](v2, 0x1012C40EC159624);
  }

  if (awd::metrics::LocationGnssSWRecoveryStatistics::default_instance_ != v1)
  {
    this = v1[3];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics::default_instance(awd::metrics::LocationGnssSWRecoveryStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGnssSWRecoveryStatistics::default_instance_;
  if (!awd::metrics::LocationGnssSWRecoveryStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGnssSWRecoveryStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 2) != 0)
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

    if ((*(this + 36) & 4) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::Clear(this);
      }
    }
  }

  *(v1 + 36) = 0;
  return this;
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics::MergePartialFromCodedStream(awd::metrics::LocationGnssSWRecoveryStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 == 3)
        {
          if (v8 == 2)
          {
            goto LABEL_31;
          }

          goto LABEL_17;
        }

        if (v7 != 2)
        {
          break;
        }

        if (v8 == 2)
        {
          v13 = *(this + 9);
          goto LABEL_25;
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

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_17;
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

      v13 = *(this + 9) | 1;
      *(this + 9) = v13;
      if (v12 < v9 && *v12 == 18)
      {
        *(a2 + 1) = v12 + 1;
LABEL_25:
        *(this + 9) = v13 | 2;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v15 = *(a2 + 1);
        if (v15 < *(a2 + 2) && *v15 == 26)
        {
          break;
        }
      }
    }

    *(a2 + 1) = v15 + 1;
LABEL_31:
    *(this + 9) |= 4u;
    v16 = *(this + 3);
    if (!v16)
    {
      operator new();
    }

    v23 = 0;
    v17 = *(a2 + 1);
    if (v17 >= *(a2 + 2) || *v17 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
      {
        return 0;
      }
    }

    else
    {
      v23 = *v17;
      *(a2 + 1) = v17 + 1;
    }

    v18 = *(a2 + 14);
    v19 = *(a2 + 15);
    *(a2 + 14) = v18 + 1;
    if (v18 >= v19)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v20 = *(a2 + 14);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (v22 < 0 == v21)
    {
      *(a2 + 14) = v22;
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

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    v7 = *(v5 + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
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
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(awd::metrics::LocationGnssSWRecoveryStatistics::default_instance_ + 24);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics::ByteSize(awd::metrics::LocationGnssSWRecoveryStatistics *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_23;
  }

  if (*(this + 36))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_7:
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
      v2 = *(this + 9);
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
    goto LABEL_16;
  }

  v3 = 0;
  if ((*(this + 36) & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if ((v2 & 4) != 0)
  {
    v10 = *(this + 3);
    if (!v10)
    {
      v10 = *(awd::metrics::LocationGnssSWRecoveryStatistics::default_instance_ + 24);
    }

    v11 = awd::metrics::LocationGnssSWRecoveryStatistics_LocationGnssRecoveryInfo::ByteSize(v10);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    }

    else
    {
      v13 = 1;
    }

    v3 = (v3 + v12 + v13 + 1);
  }

LABEL_23:
  *(this + 8) = v3;
  return v3;
}

void awd::metrics::LocationGnssSWRecoveryStatistics::CheckTypeAndMergeFrom(awd::metrics::LocationGnssSWRecoveryStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGnssSWRecoveryStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGnssSWRecoveryStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGnssSWRecoveryStatistics::CopyFrom(awd::metrics::LocationGnssSWRecoveryStatistics *this, const awd::metrics::LocationGnssSWRecoveryStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGnssSWRecoveryStatistics::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGnssSWRecoveryStatistics::Swap(uint64_t this, awd::metrics::LocationGnssSWRecoveryStatistics *a2)
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
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
    LODWORD(v5) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

uint64_t awd::metrics::LocationVisibilityAssertion::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 48) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationVisibilityAssertion *awd::metrics::LocationVisibilityAssertion::LocationVisibilityAssertion(awd::metrics::LocationVisibilityAssertion *this, const awd::metrics::LocationVisibilityAssertion *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D508F8;
  *(this + 1) = 0;
  *(this + 12) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  awd::metrics::LocationVisibilityAssertion::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationVisibilityAssertion::MergeFrom(awd::metrics::LocationVisibilityAssertion *this, const awd::metrics::LocationVisibilityAssertion *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 12);
  if (!v4)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = *(a2 + 1);
    *(this + 12) |= 1u;
    *(this + 1) = v5;
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

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(a2 + 2);
  *(this + 12) |= 2u;
  v7 = *(this + 2);
  if (v7 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v7, v6);
  v4 = *(a2 + 12);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a2 + 3);
  *(this + 12) |= 4u;
  *(this + 3) = v8;
  v4 = *(a2 + 12);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 32);
  *(this + 12) |= 8u;
  *(this + 32) = v9;
  v4 = *(a2 + 12);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 33);
  *(this + 12) |= 0x10u;
  *(this + 33) = v10;
  v4 = *(a2 + 12);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 34);
  *(this + 12) |= 0x20u;
  *(this + 34) = v11;
  v4 = *(a2 + 12);
  if ((v4 & 0x40) != 0)
  {
LABEL_22:
    v12 = *(a2 + 35);
    *(this + 12) |= 0x40u;
    *(this + 35) = v12;
    v4 = *(a2 + 12);
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_23;
    }

LABEL_12:
    if ((v4 & 0x100) == 0)
    {
      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  if ((v4 & 0x80) == 0)
  {
    goto LABEL_12;
  }

LABEL_23:
  v13 = *(a2 + 9);
  if (v13 >= 2)
  {
    awd::metrics::LocationVisibilityAssertion::MergeFrom();
  }

  *(this + 12) |= 0x80u;
  *(this + 9) = v13;
  if ((*(a2 + 12) & 0x100) != 0)
  {
LABEL_25:
    v14 = *(a2 + 10);
    if (v14 >= 3)
    {
      awd::metrics::LocationVisibilityAssertion::MergeFrom();
    }

    *(this + 12) |= 0x100u;
    *(this + 10) = v14;
  }
}

void sub_29645B758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationVisibilityAssertion::~LocationVisibilityAssertion(awd::metrics::LocationVisibilityAssertion *this)
{
  *this = &unk_2A1D508F8;
  awd::metrics::LocationVisibilityAssertion::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D508F8;
  awd::metrics::LocationVisibilityAssertion::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D508F8;
  awd::metrics::LocationVisibilityAssertion::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationVisibilityAssertion::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
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

uint64_t awd::metrics::LocationVisibilityAssertion::default_instance(awd::metrics::LocationVisibilityAssertion *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationVisibilityAssertion::default_instance_;
  if (!awd::metrics::LocationVisibilityAssertion::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationVisibilityAssertion::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationVisibilityAssertion::Clear(uint64_t this)
{
  v1 = *(this + 48);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
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

    *(this + 24) = 0;
    *(this + 32) = 0;
    v1 = *(this + 48);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::LocationVisibilityAssertion::MergePartialFromCodedStream(awd::metrics::LocationVisibilityAssertion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

              v13 = *(a2 + 1);
              v12 = *(a2 + 2);
              goto LABEL_61;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_38;
            }

            v19 = *(a2 + 1);
            v12 = *(a2 + 2);
LABEL_53:
            if (v19 >= v12 || (v25 = *v19, v25 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v26 = *(a2 + 1);
              v12 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v25;
              v26 = v19 + 1;
              *(a2 + 1) = v26;
            }

            *(this + 12) |= 4u;
            if (v26 < v12 && *v26 == 32)
            {
              v13 = v26 + 1;
              *(a2 + 1) = v13;
LABEL_61:
              v40 = 0;
              if (v13 >= v12 || (v27 = *v13, (v27 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
                if (!result)
                {
                  return result;
                }

                v27 = v40;
                v28 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                v28 = v13 + 1;
                *(a2 + 1) = v28;
              }

              *(this + 32) = v27 != 0;
              *(this + 12) |= 8u;
              if (v28 < v12 && *v28 == 40)
              {
                v21 = v28 + 1;
                *(a2 + 1) = v21;
                goto LABEL_69;
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

              v11 = *(this + 12);
              goto LABEL_47;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_38;
            }

            v16 = *(a2 + 1);
            v15 = *(a2 + 2);
            if (v16 >= v15 || (v17 = *v16, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
              if (!result)
              {
                return result;
              }

              v18 = *(a2 + 1);
              v15 = *(a2 + 2);
            }

            else
            {
              *(this + 1) = v17;
              v18 = v16 + 1;
              *(a2 + 1) = v18;
            }

            v11 = *(this + 12) | 1;
            *(this + 12) = v11;
            if (v18 < v15 && *v18 == 18)
            {
              *(a2 + 1) = v18 + 1;
LABEL_47:
              *(this + 12) = v11 | 2;
              if (*(this + 2) == v4)
              {
                operator new();
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v24 = *(a2 + 1);
              v12 = *(a2 + 2);
              if (v24 < v12 && *v24 == 24)
              {
                v19 = v24 + 1;
                *(a2 + 1) = v19;
                goto LABEL_53;
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

          v14 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_77;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v21 = *(a2 + 1);
        v12 = *(a2 + 2);
LABEL_69:
        v40 = 0;
        if (v21 >= v12 || (v29 = *v21, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
          if (!result)
          {
            return result;
          }

          v29 = v40;
          v30 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v30 = v21 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 33) = v29 != 0;
        *(this + 12) |= 0x10u;
        if (v30 < v12 && *v30 == 48)
        {
          v14 = v30 + 1;
          *(a2 + 1) = v14;
LABEL_77:
          v40 = 0;
          if (v14 >= v12 || (v31 = *v14, (v31 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
            if (!result)
            {
              return result;
            }

            v31 = v40;
            v32 = *(a2 + 1);
            v12 = *(a2 + 2);
          }

          else
          {
            v32 = v14 + 1;
            *(a2 + 1) = v32;
          }

          *(this + 34) = v31 != 0;
          *(this + 12) |= 0x20u;
          if (v32 < v12 && *v32 == 56)
          {
            v20 = v32 + 1;
            *(a2 + 1) = v20;
LABEL_85:
            v40 = 0;
            if (v20 >= v12 || (v33 = *v20, (v33 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
              if (!result)
              {
                return result;
              }

              v33 = v40;
            }

            else
            {
              *(a2 + 1) = v20 + 1;
            }

            if (v33 <= 1)
            {
              *(this + 12) |= 0x80u;
              *(this + 9) = v33;
            }

            v34 = *(a2 + 1);
            v22 = *(a2 + 2);
            if (v34 < v22 && *v34 == 64)
            {
              v23 = v34 + 1;
              *(a2 + 1) = v23;
              goto LABEL_95;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v20 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_85;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_38;
      }

      v23 = *(a2 + 1);
      v22 = *(a2 + 2);
LABEL_95:
      v40 = 0;
      if (v23 >= v22 || (v35 = *v23, (v35 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
        if (!result)
        {
          return result;
        }

        v35 = v40;
      }

      else
      {
        *(a2 + 1) = v23 + 1;
      }

      if (v35 <= 2)
      {
        *(this + 12) |= 0x100u;
        *(this + 10) = v35;
      }

      v36 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v36 < v9 && *v36 == 72)
      {
        v10 = v36 + 1;
        *(a2 + 1) = v10;
LABEL_105:
        v40 = 0;
        if (v10 >= v9 || (v37 = *v10, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40);
          if (!result)
          {
            return result;
          }

          v37 = v40;
          v38 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v38 = v10 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 35) = v37 != 0;
        *(this + 12) |= 0x40u;
        if (v38 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 9 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_105;
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

uint64_t awd::metrics::LocationVisibilityAssertion::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 48);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 48);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 48);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 33), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 34), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 40), a2, a4);
    if ((*(v5 + 48) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_19:
  v8 = *(v5 + 35);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, v8, a2, a4);
}

uint64_t awd::metrics::LocationVisibilityAssertion::ByteSize(awd::metrics::LocationVisibilityAssertion *this)
{
  v2 = *(this + 12);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_7:
    v5 = *(this + 2);
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
      v2 = *(this + 12);
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

    v3 += v10 + v6 + 1;
    goto LABEL_16;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 12);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if ((v2 & 4) != 0)
  {
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v2 = *(this + 12);
  }

  v11.i64[0] = 0x200000002;
  v11.i64[1] = 0x200000002;
  v4 = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_296499260), v11)) + v3);
  if ((v2 & 0x80) != 0)
  {
    v12 = *(this + 9);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v2 = *(this + 12);
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
  }

LABEL_25:
  if ((v2 & 0x100) != 0)
  {
    v14 = *(this + 10);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    }

    else
    {
      v15 = 2;
    }

    v4 = (v15 + v4);
  }

  *(this + 11) = v4;
  return v4;
}

void awd::metrics::LocationVisibilityAssertion::CheckTypeAndMergeFrom(awd::metrics::LocationVisibilityAssertion *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationVisibilityAssertion::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationVisibilityAssertion::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationVisibilityAssertion::CopyFrom(awd::metrics::LocationVisibilityAssertion *this, const awd::metrics::LocationVisibilityAssertion *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationVisibilityAssertion::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationVisibilityAssertion::Swap(uint64_t this, awd::metrics::LocationVisibilityAssertion *a2)
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
    LOBYTE(v5) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v5;
    LOBYTE(v5) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v5;
    LOBYTE(v5) = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v5;
    LOBYTE(v5) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v5;
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
    LODWORD(v5) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
  }

  return this;
}

double awd::metrics::LocationPhoneNumberAvailability::SharedCtor(awd::metrics::LocationPhoneNumberAvailability *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 3) = 0;
  *(this + 29) = 0;
  return result;
}

awd::metrics::LocationPhoneNumberAvailability *awd::metrics::LocationPhoneNumberAvailability::LocationPhoneNumberAvailability(awd::metrics::LocationPhoneNumberAvailability *this, const awd::metrics::LocationPhoneNumberAvailability *a2)
{
  *this = &unk_2A1D50970;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 29) = 0;
  awd::metrics::LocationPhoneNumberAvailability::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationPhoneNumberAvailability::MergeFrom(awd::metrics::LocationPhoneNumberAvailability *this, const awd::metrics::LocationPhoneNumberAvailability *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 14);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 14) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 14);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 2);
  *(this + 14) |= 2u;
  v9 = *(this + 2);
  if (v9 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v4 = *(a2 + 14);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_20:
  v10 = *(a2 + 6);
  if (v10 >= 6)
  {
    awd::metrics::LocationPhoneNumberAvailability::MergeFrom();
  }

  *(this + 14) |= 4u;
  *(this + 6) = v10;
  v4 = *(a2 + 14);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 7);
  *(this + 14) |= 8u;
  *(this + 7) = v11;
  v4 = *(a2 + 14);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v13 = *(a2 + 36);
    *(this + 14) |= 0x20u;
    *(this + 36) = v13;
    v4 = *(a2 + 14);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_23:
  v12 = *(a2 + 8);
  *(this + 14) |= 0x10u;
  *(this + 8) = v12;
  v4 = *(a2 + 14);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v14 = *(a2 + 10);
  *(this + 14) |= 0x40u;
  *(this + 10) = v14;
  v4 = *(a2 + 14);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 11);
    *(this + 14) |= 0x80u;
    *(this + 11) = v5;
    v4 = *(a2 + 14);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 12);
    *(this + 14) |= 0x100u;
    *(this + 12) = v6;
  }
}

void sub_29645C628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationPhoneNumberAvailability::~LocationPhoneNumberAvailability(awd::metrics::LocationPhoneNumberAvailability *this)
{
  *this = &unk_2A1D50970;
  awd::metrics::LocationPhoneNumberAvailability::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50970;
  awd::metrics::LocationPhoneNumberAvailability::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50970;
  awd::metrics::LocationPhoneNumberAvailability::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationPhoneNumberAvailability::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
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

uint64_t awd::metrics::LocationPhoneNumberAvailability::default_instance(awd::metrics::LocationPhoneNumberAvailability *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationPhoneNumberAvailability::default_instance_;
  if (!awd::metrics::LocationPhoneNumberAvailability::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationPhoneNumberAvailability::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationPhoneNumberAvailability::Clear(uint64_t this)
{
  v1 = *(this + 56);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
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
    *(this + 24) = 0;
    *(this + 29) = 0;
    v1 = *(this + 56);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
  }

  *(this + 56) = 0;
  return this;
}

uint64_t awd::metrics::LocationPhoneNumberAvailability::MergePartialFromCodedStream(awd::metrics::LocationPhoneNumberAvailability *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

              v12 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_63;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_38;
            }

            v19 = *(a2 + 1);
            v18 = *(a2 + 2);
LABEL_53:
            v39 = 0;
            if (v19 >= v18 || (v24 = *v19, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
              if (!result)
              {
                return result;
              }

              v24 = v39;
            }

            else
            {
              *(a2 + 1) = v19 + 1;
            }

            if (v24 <= 5)
            {
              *(this + 14) |= 4u;
              *(this + 6) = v24;
            }

            v25 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v25 < v9 && *v25 == 32)
            {
              v12 = v25 + 1;
              *(a2 + 1) = v12;
LABEL_63:
              v39 = 0;
              if (v12 >= v9 || (v26 = *v12, (v26 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                if (!result)
                {
                  return result;
                }

                v26 = v39;
                v27 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v27 = v12 + 1;
                *(a2 + 1) = v27;
              }

              *(this + 7) = v26;
              *(this + 14) |= 8u;
              if (v27 < v9 && *v27 == 40)
              {
                v21 = v27 + 1;
                *(a2 + 1) = v21;
                goto LABEL_71;
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

              v11 = *(this + 14);
              goto LABEL_47;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_38;
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

            v11 = *(this + 14) | 1;
            *(this + 14) = v11;
            if (v17 < v14 && *v17 == 18)
            {
              *(a2 + 1) = v17 + 1;
LABEL_47:
              *(this + 14) = v11 | 2;
              if (*(this + 2) == v4)
              {
                operator new();
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v23 = *(a2 + 1);
              v18 = *(a2 + 2);
              if (v23 < v18 && *v23 == 24)
              {
                v19 = v23 + 1;
                *(a2 + 1) = v19;
                goto LABEL_53;
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

          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_79;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v21 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_71:
        v39 = 0;
        if (v21 >= v9 || (v28 = *v21, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
          if (!result)
          {
            return result;
          }

          v28 = v39;
          v29 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v29 = v21 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 8) = v28;
        *(this + 14) |= 0x10u;
        if (v29 < v9 && *v29 == 48)
        {
          v13 = v29 + 1;
          *(a2 + 1) = v13;
LABEL_79:
          v39 = 0;
          if (v13 >= v9 || (v30 = *v13, (v30 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
            if (!result)
            {
              return result;
            }

            v30 = v39;
            v31 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v31 = v13 + 1;
            *(a2 + 1) = v31;
          }

          *(this + 36) = v30 != 0;
          *(this + 14) |= 0x20u;
          if (v31 < v9 && *v31 == 56)
          {
            v20 = v31 + 1;
            *(a2 + 1) = v20;
LABEL_87:
            if (v20 >= v9 || (v32 = *v20, v32 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v33 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v32;
              v33 = v20 + 1;
              *(a2 + 1) = v33;
            }

            *(this + 14) |= 0x40u;
            if (v33 < v9 && *v33 == 64)
            {
              v22 = v33 + 1;
              *(a2 + 1) = v22;
              goto LABEL_95;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v20 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_87;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_38;
      }

      v22 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_95:
      v39 = 0;
      if (v22 >= v9 || (v34 = *v22, (v34 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
        if (!result)
        {
          return result;
        }

        v34 = v39;
        v35 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v35 = v22 + 1;
        *(a2 + 1) = v35;
      }

      *(this + 11) = v34;
      *(this + 14) |= 0x80u;
      if (v35 < v9 && *v35 == 72)
      {
        v10 = v35 + 1;
        *(a2 + 1) = v10;
LABEL_103:
        v39 = 0;
        if (v10 >= v9 || (v36 = *v10, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
          if (!result)
          {
            return result;
          }

          v36 = v39;
          v37 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v37 = v10 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 12) = v36;
        *(this + 14) |= 0x100u;
        if (v37 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 9 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_103;
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

uint64_t awd::metrics::LocationPhoneNumberAvailability::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 56);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 44), a2, a4);
    if ((*(v5 + 56) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 56);
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
  v8 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, v8, a2, a4);
}

uint64_t awd::metrics::LocationPhoneNumberAvailability::ByteSize(awd::metrics::LocationPhoneNumberAvailability *this)
{
  v2 = *(this + 14);
  if (!v2)
  {
    v4 = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_53;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 14);
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

  v5 = *(this + 2);
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
    v2 = *(this + 14);
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

  v3 += v10 + v6 + 1;
LABEL_17:
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 6);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 14);
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
    if ((v2 & 8) == 0)
    {
LABEL_19:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_19;
  }

  v13 = *(this + 7);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(this + 14);
  }

  else
  {
    v14 = 2;
  }

  v3 += v14;
  if ((v2 & 0x10) != 0)
  {
LABEL_33:
    v15 = *(this + 8);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v2 = *(this + 14);
    }

    else
    {
      v16 = 2;
    }

    v3 += v16;
  }

LABEL_39:
  v4 = ((v2 >> 4) & 2) + v3;
  if ((v2 & 0x40) != 0)
  {
    v17 = *(this + 10);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v2 = *(this + 14);
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
    if ((v2 & 0x80) == 0)
    {
LABEL_41:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_41;
  }

  v19 = *(this + 11);
  if ((v19 & 0x80000000) != 0)
  {
    v20 = 11;
  }

  else if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v2 = *(this + 14);
  }

  else
  {
    v20 = 2;
  }

  v4 = (v20 + v4);
  if ((v2 & 0x100) != 0)
  {
LABEL_53:
    v21 = *(this + 12);
    if ((v21 & 0x80000000) != 0)
    {
      v22 = 11;
    }

    else if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    }

    else
    {
      v22 = 2;
    }

    v4 = (v22 + v4);
  }

LABEL_59:
  *(this + 13) = v4;
  return v4;
}

void awd::metrics::LocationPhoneNumberAvailability::CheckTypeAndMergeFrom(awd::metrics::LocationPhoneNumberAvailability *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationPhoneNumberAvailability::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationPhoneNumberAvailability::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationPhoneNumberAvailability::CopyFrom(awd::metrics::LocationPhoneNumberAvailability *this, const awd::metrics::LocationPhoneNumberAvailability *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationPhoneNumberAvailability::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationPhoneNumberAvailability::Swap(uint64_t this, awd::metrics::LocationPhoneNumberAvailability *a2)
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
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LOBYTE(v2) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v2;
  }

  return this;
}

uint64_t awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = v1;
  *(this + 32) = 0;
  return this;
}

awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus *awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::LocationMobileAssetStatistics_CarrierSettingsStatus(awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus *this, const awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D509E8;
  *(this + 1) = v3;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 0;
  awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::MergeFrom(awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus *this, const awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus *a2)
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
      v6 = *(a2 + 1);
      *(this + 10) |= 1u;
      v7 = *(this + 1);
      if (v7 == MEMORY[0x29EDC9758])
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 10);
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

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 4);
    *(this + 10) |= 2u;
    *(this + 4) = v8;
    v4 = *(a2 + 10);
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
    v9 = *(a2 + 5);
    *(this + 10) |= 4u;
    *(this + 5) = v9;
    v4 = *(a2 + 10);
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
    v10 = *(a2 + 6);
    *(this + 10) |= 8u;
    *(this + 6) = v10;
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

LABEL_18:
    v11 = *(a2 + 7);
    *(this + 10) |= 0x10u;
    *(this + 7) = v11;
    if ((*(a2 + 10) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 32);
    *(this + 10) |= 0x20u;
    *(this + 32) = v5;
  }
}

void sub_29645D52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::~LocationMobileAssetStatistics_CarrierSettingsStatus(awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus *this)
{
  *this = &unk_2A1D509E8;
  awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D509E8;
  awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D509E8;
  awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::default_instance(awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::default_instance_;
  if (!awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    if (*(this + 40))
    {
      v1 = *(this + 8);
      if (v1 != MEMORY[0x29EDC9758])
      {
        if (*(v1 + 23) < 0)
        {
          **v1 = 0;
          *(v1 + 8) = 0;
        }

        else
        {
          *v1 = 0;
          *(v1 + 23) = 0;
        }
      }
    }

    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 32) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus::MergePartialFromCodedStream(awd::metrics::LocationMobileAssetStatistics_CarrierSettingsStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_50;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_58;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_66;
          }

          goto LABEL_33;
        }

        if (v7 != 1)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_33;
        }

        *(this + 10) |= 1u;
        if (*(this + 1) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v13 < v9 && *v13 == 16)
        {
          v14 = v13 + 1;
          *(a2 + 1) = v14;
          goto LABEL_29;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_33;
      }

      v14 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_29:
      v27 = 0;
      if (v14 >= v9 || (v16 = *v14, (v16 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
        if (!result)
        {
          return result;
        }

        v16 = v27;
        v17 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v17 = v14 + 1;
        *(a2 + 1) = v17;
      }

      *(this + 4) = v16;
      *(this + 10) |= 2u;
      if (v17 < v9 && *v17 == 24)
      {
        v10 = v17 + 1;
        *(a2 + 1) = v10;
LABEL_42:
        v27 = 0;
        if (v10 >= v9 || (v19 = *v10, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
          if (!result)
          {
            return result;
          }

          v19 = v27;
          v20 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v20 = v10 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 5) = v19;
        *(this + 10) |= 4u;
        if (v20 < v9 && *v20 == 32)
        {
          v15 = v20 + 1;
          *(a2 + 1) = v15;
LABEL_50:
          v27 = 0;
          if (v15 >= v9 || (v21 = *v15, (v21 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
            if (!result)
            {
              return result;
            }

            v21 = v27;
            v22 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v22 = v15 + 1;
            *(a2 + 1) = v22;
          }

          *(this + 6) = v21;
          *(this + 10) |= 8u;
          if (v22 < v9 && *v22 == 40)
          {
            v18 = v22 + 1;
            *(a2 + 1) = v18;
LABEL_58:
            v27 = 0;
            if (v18 >= v9 || (v23 = *v18, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
              if (!result)
              {
                return result;
              }

              v23 = v27;
              v24 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v24 = v18 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 7) = v23;
            *(this + 10) |= 0x10u;
            if (v24 < v9 && *v24 == 48)
            {
              v11 = v24 + 1;
              *(a2 + 1) = v11;
LABEL_66:
              v27 = 0;
              if (v11 >= v9 || (v25 = *v11, (v25 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
                if (!result)
                {
                  return result;
                }

                v25 = v27;
                v26 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v26 = v11 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 32) = v25 != 0;
              *(this + 10) |= 0x20u;
              if (v26 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_42;
    }

LABEL_33:
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