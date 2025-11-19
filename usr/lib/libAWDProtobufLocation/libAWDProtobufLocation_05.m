void sub_29642C7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v9 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v9);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
  {
LABEL_10:
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = 0;
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v10);
      if (!result)
      {
        break;
      }

      v6 = v10;
      v7 = *(a2 + 8);
      if (v7 == *(a2 + 12))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(a2, v7 + 1);
        v7 = *(a2 + 8);
      }

      v8 = *a2;
      *(a2 + 8) = v7 + 1;
      *(v8 + 4 * v7) = v6;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
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

uint64_t awd::metrics::MotionFitnessAllDay::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 868);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 868);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_205;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 68), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_206;
  }

LABEL_205:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 69), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_207;
  }

LABEL_206:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 16), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_208;
  }

LABEL_207:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 20), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_209;
  }

LABEL_208:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 24), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_210;
  }

LABEL_209:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 28), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_211;
  }

LABEL_210:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 32), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_212;
  }

LABEL_211:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 36), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_213;
  }

LABEL_212:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 40), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_214;
  }

LABEL_213:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 44), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_215;
  }

LABEL_214:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 48), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_216;
  }

LABEL_215:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 52), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_217;
  }

LABEL_216:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 56), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_218;
  }

LABEL_217:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 60), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_219;
  }

LABEL_218:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 64), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_220;
  }

LABEL_219:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 72), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_221;
  }

LABEL_220:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 76), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_222;
  }

LABEL_221:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 80), a2, a4);
  v6 = *(v5 + 868);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_222:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 84), a2, a4);
  if ((*(v5 + 868) & 0x100000) != 0)
  {
LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 184), a2, a4);
  }

LABEL_23:
  if (*(v5 + 96) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x16, a2, *(*(v5 + 88) + 4 * v7++), a3);
    }

    while (v7 < *(v5 + 96));
  }

  if (*(v5 + 112) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x17, a2, *(*(v5 + 104) + 4 * v8++), a3);
    }

    while (v8 < *(v5 + 112));
  }

  if (*(v5 + 128) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x18, a2, *(*(v5 + 120) + 4 * v9++), a3);
    }

    while (v9 < *(v5 + 128));
  }

  if (*(v5 + 144) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x19, a2, *(*(v5 + 136) + 4 * v10++), a3);
    }

    while (v10 < *(v5 + 144));
  }

  if (*(v5 + 160) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1A, a2, *(*(v5 + 152) + 4 * v11++), a3);
    }

    while (v11 < *(v5 + 160));
  }

  if (*(v5 + 176) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1B, a2, *(*(v5 + 168) + 4 * v12++), a3);
    }

    while (v12 < *(v5 + 176));
  }

  if ((*(v5 + 871) & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1C, *(v5 + 70), a2, a4);
  }

  if (*(v5 + 200) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(*(v5 + 192) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 200));
  }

  if (*(v5 + 216) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(*(v5 + 208) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 216));
  }

  if (*(v5 + 232) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(*(v5 + 224) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 232));
  }

  if ((*(v5 + 868) & 0x80000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x20, *(v5 + 71), a2, a4);
  }

  v16 = *(v5 + 872);
  if (v16)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x21, *(v5 + 444), a2, a4);
    v16 = *(v5 + 872);
    if ((v16 & 2) == 0)
    {
LABEL_56:
      if ((v16 & 4) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_226;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_56;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x22, *(v5 + 188), a2, a4);
  v16 = *(v5 + 872);
  if ((v16 & 4) == 0)
  {
LABEL_57:
    if ((v16 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_227;
  }

LABEL_226:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x23, *(v5 + 240), a2, a4);
  v16 = *(v5 + 872);
  if ((v16 & 8) == 0)
  {
LABEL_58:
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_228;
  }

LABEL_227:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x24, *(v5 + 244), a2, a4);
  v16 = *(v5 + 872);
  if ((v16 & 0x10) == 0)
  {
LABEL_59:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_229;
  }

LABEL_228:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x25, *(v5 + 248), a2, a4);
  v16 = *(v5 + 872);
  if ((v16 & 0x20) == 0)
  {
LABEL_60:
    if ((v16 & 0x40) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_230;
  }

LABEL_229:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x26, *(v5 + 252), a2, a4);
  v16 = *(v5 + 872);
  if ((v16 & 0x40) == 0)
  {
LABEL_61:
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_231;
  }

LABEL_230:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x27, *(v5 + 256), a2, a4);
  v16 = *(v5 + 872);
  if ((v16 & 0x80) == 0)
  {
LABEL_62:
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_232;
  }

LABEL_231:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x28, *(v5 + 260), a2, a4);
  v16 = *(v5 + 872);
  if ((v16 & 0x100) == 0)
  {
LABEL_63:
    if ((v16 & 0x200) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_232:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x29, *(v5 + 264), a2, a4);
  if ((*(v5 + 872) & 0x200) != 0)
  {
LABEL_64:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x2A, *(v5 + 268), a2, a4);
  }

LABEL_65:
  if (*(v5 + 280) >= 1)
  {
    v17 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2B, a2, *(*(v5 + 272) + 4 * v17++), a3);
    }

    while (v17 < *(v5 + 280));
  }

  if ((*(v5 + 873) & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2C, a2, *(v5 + 288), a3);
  }

  if (*(v5 + 304) >= 1)
  {
    v18 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2D, a2, *(*(v5 + 296) + 4 * v18++), a3);
    }

    while (v18 < *(v5 + 304));
  }

  v19 = *(v5 + 872);
  if ((v19 & 0x2000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2E, a2, *(v5 + 292), a3);
    v19 = *(v5 + 872);
    if ((v19 & 0x4000) == 0)
    {
LABEL_75:
      if ((v19 & 0x8000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_236;
    }
  }

  else if ((v19 & 0x4000) == 0)
  {
    goto LABEL_75;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2F, a2, *(v5 + 312), a3);
  v19 = *(v5 + 872);
  if ((v19 & 0x8000) == 0)
  {
LABEL_76:
    if ((v19 & 0x10000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_237;
  }

LABEL_236:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x30, a2, *(v5 + 316), a3);
  v19 = *(v5 + 872);
  if ((v19 & 0x10000) == 0)
  {
LABEL_77:
    if ((v19 & 0x20000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_238;
  }

LABEL_237:
  v41 = *(v5 + 320);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v19 = *(v5 + 872);
  if ((v19 & 0x20000) == 0)
  {
LABEL_78:
    if ((v19 & 0x40000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_239;
  }

LABEL_238:
  v42 = *(v5 + 328);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v19 = *(v5 + 872);
  if ((v19 & 0x40000) == 0)
  {
LABEL_79:
    if ((v19 & 0x80000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_240;
  }

LABEL_239:
  v43 = *(v5 + 336);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v19 = *(v5 + 872);
  if ((v19 & 0x80000) == 0)
  {
LABEL_80:
    if ((v19 & 0x100000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

LABEL_240:
  v44 = *(v5 + 344);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  if ((*(v5 + 872) & 0x100000) != 0)
  {
LABEL_81:
    v20 = *(v5 + 352);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  }

LABEL_82:
  if (*(v5 + 368) >= 1)
  {
    v21 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x36, *(*(v5 + 360) + 4 * v21++), a2, a4);
    }

    while (v21 < *(v5 + 368));
  }

  v22 = *(v5 + 872);
  if ((v22 & 0x400000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x37, *(v5 + 376), a2, a4);
    v22 = *(v5 + 872);
    if ((v22 & 0x800000) == 0)
    {
LABEL_87:
      if ((v22 & 0x1000000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_244;
    }
  }

  else if ((v22 & 0x800000) == 0)
  {
    goto LABEL_87;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x38, *(v5 + 380), a2, a4);
  v22 = *(v5 + 872);
  if ((v22 & 0x1000000) == 0)
  {
LABEL_88:
    if ((v22 & 0x2000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_245;
  }

LABEL_244:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x39, *(v5 + 384), a2, a4);
  v22 = *(v5 + 872);
  if ((v22 & 0x2000000) == 0)
  {
LABEL_89:
    if ((v22 & 0x4000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_246;
  }

LABEL_245:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3A, *(v5 + 388), a2, a4);
  v22 = *(v5 + 872);
  if ((v22 & 0x4000000) == 0)
  {
LABEL_90:
    if ((v22 & 0x8000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_247;
  }

LABEL_246:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3B, *(v5 + 392), a2, a4);
  v22 = *(v5 + 872);
  if ((v22 & 0x8000000) == 0)
  {
LABEL_91:
    if ((v22 & 0x10000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_248;
  }

LABEL_247:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3C, *(v5 + 396), a2, a4);
  v22 = *(v5 + 872);
  if ((v22 & 0x10000000) == 0)
  {
LABEL_92:
    if ((v22 & 0x20000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_249;
  }

LABEL_248:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3D, *(v5 + 400), a2, a4);
  v22 = *(v5 + 872);
  if ((v22 & 0x20000000) == 0)
  {
LABEL_93:
    if ((v22 & 0x40000000) == 0)
    {
      goto LABEL_94;
    }

LABEL_250:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3F, *(v5 + 408), a2, a4);
    if ((*(v5 + 872) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_251;
  }

LABEL_249:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3E, *(v5 + 404), a2, a4);
  v22 = *(v5 + 872);
  if ((v22 & 0x40000000) != 0)
  {
    goto LABEL_250;
  }

LABEL_94:
  if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_95;
  }

LABEL_251:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x40, *(v5 + 412), a2, a4);
LABEL_95:
  v23 = *(v5 + 876);
  if (v23)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x41, *(v5 + 416), a2, a4);
    v23 = *(v5 + 876);
    if ((v23 & 2) == 0)
    {
LABEL_97:
      if ((v23 & 4) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_254;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_97;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x42, *(v5 + 420), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 4) == 0)
  {
LABEL_98:
    if ((v23 & 8) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_255;
  }

LABEL_254:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x43, *(v5 + 424), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 8) == 0)
  {
LABEL_99:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_256;
  }

LABEL_255:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x44, *(v5 + 428), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x10) == 0)
  {
LABEL_100:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_257;
  }

LABEL_256:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x45, *(v5 + 432), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x20) == 0)
  {
LABEL_101:
    if ((v23 & 0x40) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_258;
  }

LABEL_257:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x46, *(v5 + 436), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x40) == 0)
  {
LABEL_102:
    if ((v23 & 0x80) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_259;
  }

LABEL_258:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x47, *(v5 + 440), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x80) == 0)
  {
LABEL_103:
    if ((v23 & 0x100) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_260;
  }

LABEL_259:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x48, *(v5 + 448), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x100) == 0)
  {
LABEL_104:
    if ((v23 & 0x200) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_261;
  }

LABEL_260:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x49, *(v5 + 452), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x200) == 0)
  {
LABEL_105:
    if ((v23 & 0x400) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_262;
  }

LABEL_261:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4A, *(v5 + 456), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x400) == 0)
  {
LABEL_106:
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_263;
  }

LABEL_262:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4B, *(v5 + 460), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x800) == 0)
  {
LABEL_107:
    if ((v23 & 0x1000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_264;
  }

LABEL_263:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4C, *(v5 + 464), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x1000) == 0)
  {
LABEL_108:
    if ((v23 & 0x2000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_265;
  }

LABEL_264:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4D, *(v5 + 468), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x2000) == 0)
  {
LABEL_109:
    if ((v23 & 0x4000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_266;
  }

LABEL_265:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4E, *(v5 + 472), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x4000) == 0)
  {
LABEL_110:
    if ((v23 & 0x8000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_267;
  }

LABEL_266:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4F, *(v5 + 476), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x8000) == 0)
  {
LABEL_111:
    if ((v23 & 0x10000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_268;
  }

LABEL_267:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x50, *(v5 + 480), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x10000) == 0)
  {
LABEL_112:
    if ((v23 & 0x20000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_269;
  }

LABEL_268:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x51, *(v5 + 484), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x20000) == 0)
  {
LABEL_113:
    if ((v23 & 0x40000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_270;
  }

LABEL_269:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x52, *(v5 + 488), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x40000) == 0)
  {
LABEL_114:
    if ((v23 & 0x80000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_271;
  }

LABEL_270:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x53, *(v5 + 492), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x80000) == 0)
  {
LABEL_115:
    if ((v23 & 0x100000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_272;
  }

LABEL_271:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x54, *(v5 + 445), a2, a4);
  v23 = *(v5 + 876);
  if ((v23 & 0x100000) == 0)
  {
LABEL_116:
    if ((v23 & 0x200000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_117;
  }

LABEL_272:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x55, *(v5 + 446), a2, a4);
  if ((*(v5 + 876) & 0x200000) != 0)
  {
LABEL_117:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x56, *(v5 + 447), a2, a4);
  }

LABEL_118:
  if (*(v5 + 504) >= 1)
  {
    v24 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x57, *(*(v5 + 496) + 4 * v24++), a2, a4);
    }

    while (v24 < *(v5 + 504));
  }

  if (*(v5 + 520) >= 1)
  {
    v25 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x58, a2, *(*(v5 + 512) + 4 * v25++), a3);
    }

    while (v25 < *(v5 + 520));
  }

  v26 = *(v5 + 876);
  if ((v26 & 0x1000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x59, *(v5 + 528), a2, a4);
    v26 = *(v5 + 876);
    if ((v26 & 0x2000000) == 0)
    {
LABEL_126:
      if ((v26 & 0x4000000) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_276;
    }
  }

  else if ((v26 & 0x2000000) == 0)
  {
    goto LABEL_126;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x5A, *(v5 + 532), a2, a4);
  v26 = *(v5 + 876);
  if ((v26 & 0x4000000) == 0)
  {
LABEL_127:
    if ((v26 & 0x8000000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_277;
  }

LABEL_276:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x5B, *(v5 + 536), a2, a4);
  v26 = *(v5 + 876);
  if ((v26 & 0x8000000) == 0)
  {
LABEL_128:
    if ((v26 & 0x10000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_278;
  }

LABEL_277:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x5C, *(v5 + 540), a2, a4);
  v26 = *(v5 + 876);
  if ((v26 & 0x10000000) == 0)
  {
LABEL_129:
    if ((v26 & 0x20000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_279;
  }

LABEL_278:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x5D, *(v5 + 544), a2, a4);
  v26 = *(v5 + 876);
  if ((v26 & 0x20000000) == 0)
  {
LABEL_130:
    if ((v26 & 0x40000000) == 0)
    {
      goto LABEL_131;
    }

LABEL_280:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x5F, *(v5 + 552), a2, a4);
    if ((*(v5 + 876) & 0x80000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_281;
  }

LABEL_279:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x5E, *(v5 + 548), a2, a4);
  v26 = *(v5 + 876);
  if ((v26 & 0x40000000) != 0)
  {
    goto LABEL_280;
  }

LABEL_131:
  if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_132;
  }

LABEL_281:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x60, *(v5 + 556), a2, a4);
LABEL_132:
  v27 = *(v5 + 880);
  if (v27)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x61, *(v5 + 560), a2, a4);
    v27 = *(v5 + 880);
    if ((v27 & 2) == 0)
    {
LABEL_134:
      if ((v27 & 4) == 0)
      {
        goto LABEL_135;
      }

      goto LABEL_284;
    }
  }

  else if ((v27 & 2) == 0)
  {
    goto LABEL_134;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x62, *(v5 + 564), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 4) == 0)
  {
LABEL_135:
    if ((v27 & 8) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_285;
  }

LABEL_284:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x63, *(v5 + 568), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 8) == 0)
  {
LABEL_136:
    if ((v27 & 0x10) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_286;
  }

LABEL_285:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x64, *(v5 + 572), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 0x10) == 0)
  {
LABEL_137:
    if ((v27 & 0x20) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_287;
  }

LABEL_286:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x65, *(v5 + 576), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 0x20) == 0)
  {
LABEL_138:
    if ((v27 & 0x40) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_288;
  }

LABEL_287:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x66, *(v5 + 580), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 0x40) == 0)
  {
LABEL_139:
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_289;
  }

LABEL_288:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x67, *(v5 + 584), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 0x80) == 0)
  {
LABEL_140:
    if ((v27 & 0x100) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_290;
  }

LABEL_289:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x68, *(v5 + 588), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 0x100) == 0)
  {
LABEL_141:
    if ((v27 & 0x200) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_291;
  }

LABEL_290:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x69, *(v5 + 592), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 0x200) == 0)
  {
LABEL_142:
    if ((v27 & 0x400) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_292;
  }

LABEL_291:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6A, *(v5 + 596), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 0x400) == 0)
  {
LABEL_143:
    if ((v27 & 0x800) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_293;
  }

LABEL_292:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6B, *(v5 + 600), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 0x800) == 0)
  {
LABEL_144:
    if ((v27 & 0x1000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_294;
  }

LABEL_293:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6C, *(v5 + 604), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 0x1000) == 0)
  {
LABEL_145:
    if ((v27 & 0x2000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_295;
  }

LABEL_294:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6D, *(v5 + 608), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 0x2000) == 0)
  {
LABEL_146:
    if ((v27 & 0x4000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_296;
  }

LABEL_295:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6E, *(v5 + 612), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 0x4000) == 0)
  {
LABEL_147:
    if ((v27 & 0x8000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_297;
  }

LABEL_296:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6F, *(v5 + 616), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 0x8000) == 0)
  {
LABEL_148:
    if ((v27 & 0x10000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_298;
  }

LABEL_297:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x70, *(v5 + 620), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 0x10000) == 0)
  {
LABEL_149:
    if ((v27 & 0x20000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_299;
  }

LABEL_298:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x71, *(v5 + 624), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 0x20000) == 0)
  {
LABEL_150:
    if ((v27 & 0x40000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_300;
  }

LABEL_299:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x72, *(v5 + 628), a2, a4);
  v27 = *(v5 + 880);
  if ((v27 & 0x40000) == 0)
  {
LABEL_151:
    if ((v27 & 0x80000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_152;
  }

LABEL_300:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x73, *(v5 + 632), a2, a4);
  if ((*(v5 + 880) & 0x80000) != 0)
  {
LABEL_152:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x74, *(v5 + 636), a2, a4);
  }

LABEL_153:
  if (*(v5 + 648) >= 1)
  {
    v28 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x75, *(*(v5 + 640) + 4 * v28++), a2, a4);
    }

    while (v28 < *(v5 + 648));
  }

  if (*(v5 + 664) >= 1)
  {
    v29 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x76, *(*(v5 + 656) + 4 * v29++), a2, a4);
    }

    while (v29 < *(v5 + 664));
  }

  if (*(v5 + 680) >= 1)
  {
    v30 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x77, *(*(v5 + 672) + 4 * v30++), a2, a4);
    }

    while (v30 < *(v5 + 680));
  }

  if (*(v5 + 696) >= 1)
  {
    v31 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x78, *(*(v5 + 688) + 4 * v31++), a2, a4);
    }

    while (v31 < *(v5 + 696));
  }

  if (*(v5 + 712) >= 1)
  {
    v32 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x79, *(*(v5 + 704) + 8 * v32++), a2, a4);
    }

    while (v32 < *(v5 + 712));
  }

  if (*(v5 + 728) >= 1)
  {
    v33 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x7A, *(*(v5 + 720) + 8 * v33++), a2, a4);
    }

    while (v33 < *(v5 + 728));
  }

  if (*(v5 + 744) >= 1)
  {
    v34 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x7B, *(*(v5 + 736) + 8 * v34++), a2, a4);
    }

    while (v34 < *(v5 + 744));
  }

  if (*(v5 + 776) >= 1)
  {
    v35 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x7D, *(*(v5 + 768) + 8 * v35++), a2, a4);
    }

    while (v35 < *(v5 + 776));
  }

  v36 = *(v5 + 880);
  if ((v36 & 0x20000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x7E, *(v5 + 784), a2, a4);
    v36 = *(v5 + 880);
  }

  if ((v36 & 0x40000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x7F, *(v5 + 788), a2, a4);
  }

  if (*(v5 + 800) >= 1)
  {
    v37 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x80, *(*(v5 + 792) + 8 * v37++), a2, a4);
    }

    while (v37 < *(v5 + 800));
  }

  v38 = *(v5 + 884);
  if (v38)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x81, *(v5 + 808), a2, a4);
    v38 = *(v5 + 884);
    if ((v38 & 2) == 0)
    {
LABEL_186:
      if ((v38 & 4) == 0)
      {
        goto LABEL_187;
      }

      goto LABEL_304;
    }
  }

  else if ((v38 & 2) == 0)
  {
    goto LABEL_186;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x82, *(v5 + 812), a2, a4);
  v38 = *(v5 + 884);
  if ((v38 & 4) == 0)
  {
LABEL_187:
    if ((v38 & 8) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_305;
  }

LABEL_304:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x83, *(v5 + 816), a2, a4);
  v38 = *(v5 + 884);
  if ((v38 & 8) == 0)
  {
LABEL_188:
    if ((v38 & 0x10) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_189;
  }

LABEL_305:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x84, *(v5 + 820), a2, a4);
  if ((*(v5 + 884) & 0x10) != 0)
  {
LABEL_189:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x85, *(v5 + 824), a2, a4);
  }

LABEL_190:
  if (*(v5 + 760) >= 1)
  {
    v39 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x86, *(*(v5 + 752) + 8 * v39++), a2, a4);
    }

    while (v39 < *(v5 + 760));
  }

  v40 = *(v5 + 884);
  if ((v40 & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x87, *(v5 + 828), a2, a4);
    v40 = *(v5 + 884);
    if ((v40 & 0x40) == 0)
    {
LABEL_195:
      if ((v40 & 0x80) == 0)
      {
        goto LABEL_196;
      }

      goto LABEL_309;
    }
  }

  else if ((v40 & 0x40) == 0)
  {
    goto LABEL_195;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x88, *(v5 + 832), a2, a4);
  v40 = *(v5 + 884);
  if ((v40 & 0x80) == 0)
  {
LABEL_196:
    if ((v40 & 0x100) == 0)
    {
      goto LABEL_197;
    }

    goto LABEL_310;
  }

LABEL_309:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x89, *(v5 + 836), a2, a4);
  v40 = *(v5 + 884);
  if ((v40 & 0x100) == 0)
  {
LABEL_197:
    if ((v40 & 0x200) == 0)
    {
      goto LABEL_198;
    }

    goto LABEL_311;
  }

LABEL_310:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x8A, *(v5 + 840), a2, a4);
  v40 = *(v5 + 884);
  if ((v40 & 0x200) == 0)
  {
LABEL_198:
    if ((v40 & 0x400) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_312;
  }

LABEL_311:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x8B, *(v5 + 844), a2, a4);
  v40 = *(v5 + 884);
  if ((v40 & 0x400) == 0)
  {
LABEL_199:
    if ((v40 & 0x800) == 0)
    {
      goto LABEL_200;
    }

    goto LABEL_313;
  }

LABEL_312:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x8C, *(v5 + 848), a2, a4);
  v40 = *(v5 + 884);
  if ((v40 & 0x800) == 0)
  {
LABEL_200:
    if ((v40 & 0x1000) == 0)
    {
      goto LABEL_201;
    }

LABEL_314:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x8E, *(v5 + 856), a2, a4);
    if ((*(v5 + 884) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_315;
  }

LABEL_313:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x8D, *(v5 + 852), a2, a4);
  v40 = *(v5 + 884);
  if ((v40 & 0x1000) != 0)
  {
    goto LABEL_314;
  }

LABEL_201:
  if ((v40 & 0x2000) == 0)
  {
    return this;
  }

LABEL_315:
  v45 = *(v5 + 860);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x8F, v45, a2, a4);
}

uint64_t awd::metrics::MotionFitnessAllDay::ByteSize(awd::metrics::MotionFitnessAllDay *this)
{
  v1 = this;
  v2 = *(this + 217);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(v1 + 217);
  }

  else
  {
    v3 = 0;
  }

  v4 = (v2 & 2) + v3 + ((v2 >> 1) & 2);
  if ((v2 & 8) != 0)
  {
    v5 = *(v1 + 4);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(v1 + 217);
    }

    else
    {
      v6 = 2;
    }

    v4 += v6;
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(v1 + 5);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(v1 + 217);
  }

  else
  {
    v8 = 2;
  }

  v4 += v8;
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_20:
  v9 = *(v1 + 6);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(v1 + 217);
  }

  else
  {
    v10 = 2;
  }

  v4 += v10;
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_24:
  v11 = *(v1 + 7);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(v1 + 217);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v2 & 0x80) != 0)
  {
LABEL_28:
    v13 = *(v1 + 8);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v2 = *(v1 + 217);
    }

    else
    {
      v14 = 2;
    }

    v4 += v14;
  }

LABEL_32:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_74;
  }

  if ((v2 & 0x100) != 0)
  {
    v15 = *(v1 + 9);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v2 = *(v1 + 217);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
    if ((v2 & 0x200) == 0)
    {
LABEL_35:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_50;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_35;
  }

  v17 = *(v1 + 10);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v2 = *(v1 + 217);
  }

  else
  {
    v18 = 2;
  }

  v4 += v18;
  if ((v2 & 0x400) == 0)
  {
LABEL_36:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_54;
  }

LABEL_50:
  v19 = *(v1 + 11);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v2 = *(v1 + 217);
  }

  else
  {
    v20 = 2;
  }

  v4 += v20;
  if ((v2 & 0x800) == 0)
  {
LABEL_37:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_58;
  }

LABEL_54:
  v21 = *(v1 + 12);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v2 = *(v1 + 217);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v2 & 0x1000) == 0)
  {
LABEL_38:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_62;
  }

LABEL_58:
  v23 = *(v1 + 13);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = *(v1 + 217);
  }

  else
  {
    v24 = 2;
  }

  v4 += v24;
  if ((v2 & 0x2000) == 0)
  {
LABEL_39:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_66;
  }

LABEL_62:
  v25 = *(v1 + 14);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v2 = *(v1 + 217);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v2 & 0x4000) == 0)
  {
LABEL_40:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_70;
  }

LABEL_66:
  v27 = *(v1 + 15);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v2 = *(v1 + 217);
  }

  else
  {
    v28 = 2;
  }

  v4 += v28;
  if ((v2 & 0x8000) != 0)
  {
LABEL_70:
    v29 = *(v1 + 16);
    if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 2;
      v2 = *(v1 + 217);
    }

    else
    {
      v30 = 3;
    }

    v4 += v30;
  }

LABEL_74:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_101;
  }

  if ((v2 & 0x10000) != 0)
  {
    v31 = *(v1 + 18);
    if (v31 >= 0x80)
    {
      v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 2;
      v2 = *(v1 + 217);
    }

    else
    {
      v32 = 3;
    }

    v4 += v32;
    if ((v2 & 0x20000) == 0)
    {
LABEL_77:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_89;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_77;
  }

  v33 = *(v1 + 19);
  if (v33 >= 0x80)
  {
    v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
    v2 = *(v1 + 217);
  }

  else
  {
    v34 = 3;
  }

  v4 += v34;
  if ((v2 & 0x40000) == 0)
  {
LABEL_78:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_93;
  }

LABEL_89:
  v35 = *(v1 + 20);
  if (v35 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
    v2 = *(v1 + 217);
  }

  else
  {
    v36 = 3;
  }

  v4 += v36;
  if ((v2 & 0x80000) == 0)
  {
LABEL_79:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_97;
  }

LABEL_93:
  v37 = *(v1 + 21);
  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v2 = *(v1 + 217);
  }

  else
  {
    v38 = 3;
  }

  v4 += v38;
  if ((v2 & 0x100000) != 0)
  {
LABEL_97:
    v39 = *(v1 + 46);
    if (v39 >= 0x80)
    {
      v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
      v2 = *(v1 + 217);
    }

    else
    {
      v40 = 3;
    }

    v4 += v40;
  }

LABEL_101:
  if (v2 >> 27)
  {
    v41 = v4 + 3;
    if ((v2 & 0x8000000) == 0)
    {
      v41 = v4;
    }

    if (v2 >= 0)
    {
      v4 = v41;
    }

    else
    {
      v4 = v41 + 3;
    }
  }

  v42 = *(v1 + 218);
  if (!v42)
  {
    goto LABEL_160;
  }

  if (v42)
  {
    v4 += 3;
  }

  if ((v42 & 2) != 0)
  {
    v43 = *(v1 + 47);
    if ((v43 & 0x80000000) != 0)
    {
      v44 = 12;
    }

    else if (v43 >= 0x80)
    {
      v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
      v42 = *(v1 + 218);
    }

    else
    {
      v44 = 3;
    }

    v4 += v44;
    if ((v42 & 4) == 0)
    {
LABEL_112:
      if ((v42 & 8) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_130;
    }
  }

  else if ((v42 & 4) == 0)
  {
    goto LABEL_112;
  }

  v45 = *(v1 + 60);
  if ((v45 & 0x80000000) != 0)
  {
    v46 = 12;
  }

  else if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
    v42 = *(v1 + 218);
  }

  else
  {
    v46 = 3;
  }

  v4 += v46;
  if ((v42 & 8) == 0)
  {
LABEL_113:
    if ((v42 & 0x10) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_136;
  }

LABEL_130:
  v47 = *(v1 + 61);
  if ((v47 & 0x80000000) != 0)
  {
    v48 = 12;
  }

  else if (v47 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
    v42 = *(v1 + 218);
  }

  else
  {
    v48 = 3;
  }

  v4 += v48;
  if ((v42 & 0x10) == 0)
  {
LABEL_114:
    if ((v42 & 0x20) == 0)
    {
      goto LABEL_115;
    }

LABEL_142:
    v51 = *(v1 + 63);
    if ((v51 & 0x80000000) != 0)
    {
      v52 = 12;
    }

    else if (v51 >= 0x80)
    {
      v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
      v42 = *(v1 + 218);
    }

    else
    {
      v52 = 3;
    }

    v4 += v52;
    if ((v42 & 0x40) == 0)
    {
LABEL_116:
      if ((v42 & 0x80) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_154;
    }

    goto LABEL_148;
  }

LABEL_136:
  v49 = *(v1 + 62);
  if ((v49 & 0x80000000) != 0)
  {
    v50 = 12;
  }

  else if (v49 >= 0x80)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
    v42 = *(v1 + 218);
  }

  else
  {
    v50 = 3;
  }

  v4 += v50;
  if ((v42 & 0x20) != 0)
  {
    goto LABEL_142;
  }

LABEL_115:
  if ((v42 & 0x40) == 0)
  {
    goto LABEL_116;
  }

LABEL_148:
  v53 = *(v1 + 64);
  if ((v53 & 0x80000000) != 0)
  {
    v54 = 12;
  }

  else if (v53 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
    v42 = *(v1 + 218);
  }

  else
  {
    v54 = 3;
  }

  v4 += v54;
  if ((v42 & 0x80) != 0)
  {
LABEL_154:
    v55 = *(v1 + 65);
    if ((v55 & 0x80000000) != 0)
    {
      v56 = 12;
    }

    else if (v55 >= 0x80)
    {
      v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
      v42 = *(v1 + 218);
    }

    else
    {
      v56 = 3;
    }

    v4 += v56;
  }

LABEL_160:
  if ((v42 & 0xFF00) != 0)
  {
    if ((v42 & 0x100) != 0)
    {
      v57 = *(v1 + 66);
      if ((v57 & 0x80000000) != 0)
      {
        v58 = 12;
      }

      else if (v57 >= 0x80)
      {
        v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
        v42 = *(v1 + 218);
      }

      else
      {
        v58 = 3;
      }

      v4 += v58;
    }

    if ((v42 & 0x200) != 0)
    {
      v59 = *(v1 + 67);
      if ((v59 & 0x80000000) != 0)
      {
        v60 = 12;
      }

      else if (v59 >= 0x80)
      {
        v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59) + 2;
        v42 = *(v1 + 218);
      }

      else
      {
        v60 = 3;
      }

      v4 += v60;
    }

    v61 = v4 + 6;
    if ((v42 & 0x800) == 0)
    {
      v61 = v4;
    }

    if ((v42 & 0x2000) != 0)
    {
      v61 += 6;
    }

    if ((v42 & 0x4000) != 0)
    {
      v61 += 6;
    }

    if ((v42 & 0x8000) != 0)
    {
      v4 = v61 + 6;
    }

    else
    {
      v4 = v61;
    }
  }

  if ((v42 & 0xFF0000) == 0)
  {
    goto LABEL_250;
  }

  if ((v42 & 0x10000) != 0)
  {
    v62 = *(v1 + 40);
    v63 = *(v62 + 23);
    v64 = v63;
    v65 = *(v62 + 8);
    if ((v63 & 0x80u) == 0)
    {
      v66 = *(v62 + 23);
    }

    else
    {
      v66 = v65;
    }

    if (v66 >= 0x80)
    {
      v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66);
      v63 = *(v62 + 23);
      v65 = *(v62 + 8);
      v42 = *(v1 + 218);
      v64 = *(v62 + 23);
    }

    else
    {
      v67 = 1;
    }

    if (v64 < 0)
    {
      v63 = v65;
    }

    v4 += v67 + v63 + 2;
    if ((v42 & 0x20000) == 0)
    {
LABEL_187:
      if ((v42 & 0x40000) == 0)
      {
        goto LABEL_188;
      }

      goto LABEL_211;
    }
  }

  else if ((v42 & 0x20000) == 0)
  {
    goto LABEL_187;
  }

  v68 = *(v1 + 41);
  v69 = *(v68 + 23);
  v70 = v69;
  v71 = *(v68 + 8);
  if ((v69 & 0x80u) == 0)
  {
    v72 = *(v68 + 23);
  }

  else
  {
    v72 = v71;
  }

  if (v72 >= 0x80)
  {
    v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72);
    v69 = *(v68 + 23);
    v71 = *(v68 + 8);
    v42 = *(v1 + 218);
    v70 = *(v68 + 23);
  }

  else
  {
    v73 = 1;
  }

  if (v70 < 0)
  {
    v69 = v71;
  }

  v4 += v73 + v69 + 2;
  if ((v42 & 0x40000) == 0)
  {
LABEL_188:
    if ((v42 & 0x80000) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_220;
  }

LABEL_211:
  v74 = *(v1 + 42);
  v75 = *(v74 + 23);
  v76 = v75;
  v77 = *(v74 + 8);
  if ((v75 & 0x80u) == 0)
  {
    v78 = *(v74 + 23);
  }

  else
  {
    v78 = v77;
  }

  if (v78 >= 0x80)
  {
    v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78);
    v75 = *(v74 + 23);
    v77 = *(v74 + 8);
    v42 = *(v1 + 218);
    v76 = *(v74 + 23);
  }

  else
  {
    v79 = 1;
  }

  if (v76 < 0)
  {
    v75 = v77;
  }

  v4 += v79 + v75 + 2;
  if ((v42 & 0x80000) == 0)
  {
LABEL_189:
    if ((v42 & 0x100000) == 0)
    {
      goto LABEL_190;
    }

LABEL_229:
    v86 = *(v1 + 44);
    v87 = *(v86 + 23);
    v88 = v87;
    v89 = *(v86 + 8);
    if ((v87 & 0x80u) == 0)
    {
      v90 = *(v86 + 23);
    }

    else
    {
      v90 = v89;
    }

    if (v90 >= 0x80)
    {
      v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90);
      v87 = *(v86 + 23);
      v89 = *(v86 + 8);
      v42 = *(v1 + 218);
      v88 = *(v86 + 23);
    }

    else
    {
      v91 = 1;
    }

    if (v88 < 0)
    {
      v87 = v89;
    }

    v4 += v91 + v87 + 2;
    if ((v42 & 0x400000) == 0)
    {
LABEL_191:
      if ((v42 & 0x800000) == 0)
      {
        goto LABEL_250;
      }

      goto LABEL_244;
    }

    goto LABEL_238;
  }

LABEL_220:
  v80 = *(v1 + 43);
  v81 = *(v80 + 23);
  v82 = v81;
  v83 = *(v80 + 8);
  if ((v81 & 0x80u) == 0)
  {
    v84 = *(v80 + 23);
  }

  else
  {
    v84 = v83;
  }

  if (v84 >= 0x80)
  {
    v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84);
    v81 = *(v80 + 23);
    v83 = *(v80 + 8);
    v42 = *(v1 + 218);
    v82 = *(v80 + 23);
  }

  else
  {
    v85 = 1;
  }

  if (v82 < 0)
  {
    v81 = v83;
  }

  v4 += v85 + v81 + 2;
  if ((v42 & 0x100000) != 0)
  {
    goto LABEL_229;
  }

LABEL_190:
  if ((v42 & 0x400000) == 0)
  {
    goto LABEL_191;
  }

LABEL_238:
  v92 = *(v1 + 94);
  if ((v92 & 0x80000000) != 0)
  {
    v93 = 12;
  }

  else if (v92 >= 0x80)
  {
    v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92) + 2;
    v42 = *(v1 + 218);
  }

  else
  {
    v93 = 3;
  }

  v4 += v93;
  if ((v42 & 0x800000) != 0)
  {
LABEL_244:
    v94 = *(v1 + 95);
    if ((v94 & 0x80000000) != 0)
    {
      v95 = 12;
    }

    else if (v94 >= 0x80)
    {
      v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v94) + 2;
      v42 = *(v1 + 218);
    }

    else
    {
      v95 = 3;
    }

    v4 += v95;
  }

LABEL_250:
  if (!HIBYTE(v42))
  {
    goto LABEL_308;
  }

  if ((v42 & 0x1000000) != 0)
  {
    v96 = *(v1 + 96);
    if ((v96 & 0x80000000) != 0)
    {
      v97 = 12;
    }

    else if (v96 >= 0x80)
    {
      v97 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96) + 2;
      v42 = *(v1 + 218);
    }

    else
    {
      v97 = 3;
    }

    v4 += v97;
    if ((v42 & 0x2000000) == 0)
    {
LABEL_253:
      if ((v42 & 0x4000000) == 0)
      {
        goto LABEL_254;
      }

      goto LABEL_272;
    }
  }

  else if ((v42 & 0x2000000) == 0)
  {
    goto LABEL_253;
  }

  v98 = *(v1 + 97);
  if ((v98 & 0x80000000) != 0)
  {
    v99 = 12;
  }

  else if (v98 >= 0x80)
  {
    v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98) + 2;
    v42 = *(v1 + 218);
  }

  else
  {
    v99 = 3;
  }

  v4 += v99;
  if ((v42 & 0x4000000) == 0)
  {
LABEL_254:
    if ((v42 & 0x8000000) == 0)
    {
      goto LABEL_255;
    }

    goto LABEL_278;
  }

LABEL_272:
  v100 = *(v1 + 98);
  if ((v100 & 0x80000000) != 0)
  {
    v101 = 12;
  }

  else if (v100 >= 0x80)
  {
    v101 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100) + 2;
    v42 = *(v1 + 218);
  }

  else
  {
    v101 = 3;
  }

  v4 += v101;
  if ((v42 & 0x8000000) == 0)
  {
LABEL_255:
    if ((v42 & 0x10000000) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_284;
  }

LABEL_278:
  v102 = *(v1 + 99);
  if ((v102 & 0x80000000) != 0)
  {
    v103 = 12;
  }

  else if (v102 >= 0x80)
  {
    v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102) + 2;
    v42 = *(v1 + 218);
  }

  else
  {
    v103 = 3;
  }

  v4 += v103;
  if ((v42 & 0x10000000) == 0)
  {
LABEL_256:
    if ((v42 & 0x20000000) == 0)
    {
      goto LABEL_257;
    }

    goto LABEL_290;
  }

LABEL_284:
  v104 = *(v1 + 100);
  if ((v104 & 0x80000000) != 0)
  {
    v105 = 12;
  }

  else if (v104 >= 0x80)
  {
    v105 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v104) + 2;
    v42 = *(v1 + 218);
  }

  else
  {
    v105 = 3;
  }

  v4 += v105;
  if ((v42 & 0x20000000) == 0)
  {
LABEL_257:
    if ((v42 & 0x40000000) == 0)
    {
      goto LABEL_258;
    }

    goto LABEL_296;
  }

LABEL_290:
  v106 = *(v1 + 101);
  if ((v106 & 0x80000000) != 0)
  {
    v107 = 12;
  }

  else if (v106 >= 0x80)
  {
    v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v106) + 2;
    v42 = *(v1 + 218);
  }

  else
  {
    v107 = 3;
  }

  v4 += v107;
  if ((v42 & 0x40000000) == 0)
  {
LABEL_258:
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_302;
  }

LABEL_296:
  v108 = *(v1 + 102);
  if ((v108 & 0x80000000) != 0)
  {
    v109 = 12;
  }

  else if (v108 >= 0x80)
  {
    v109 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v108) + 2;
    v42 = *(v1 + 218);
  }

  else
  {
    v109 = 3;
  }

  v4 += v109;
  if ((v42 & 0x80000000) != 0)
  {
LABEL_302:
    v110 = *(v1 + 103);
    if ((v110 & 0x80000000) != 0)
    {
      v111 = 12;
    }

    else if (v110 >= 0x80)
    {
      v111 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v110) + 2;
    }

    else
    {
      v111 = 3;
    }

    v4 += v111;
  }

LABEL_308:
  v112 = *(v1 + 219);
  if (!v112)
  {
    goto LABEL_366;
  }

  if (v112)
  {
    v113 = *(v1 + 104);
    if ((v113 & 0x80000000) != 0)
    {
      v114 = 12;
    }

    else if (v113 >= 0x80)
    {
      v114 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v113) + 2;
      v112 = *(v1 + 219);
    }

    else
    {
      v114 = 3;
    }

    v4 += v114;
    if ((v112 & 2) == 0)
    {
LABEL_311:
      if ((v112 & 4) == 0)
      {
        goto LABEL_312;
      }

      goto LABEL_330;
    }
  }

  else if ((v112 & 2) == 0)
  {
    goto LABEL_311;
  }

  v115 = *(v1 + 105);
  if ((v115 & 0x80000000) != 0)
  {
    v116 = 12;
  }

  else if (v115 >= 0x80)
  {
    v116 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v115) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v116 = 3;
  }

  v4 += v116;
  if ((v112 & 4) == 0)
  {
LABEL_312:
    if ((v112 & 8) == 0)
    {
      goto LABEL_313;
    }

    goto LABEL_336;
  }

LABEL_330:
  v117 = *(v1 + 106);
  if ((v117 & 0x80000000) != 0)
  {
    v118 = 12;
  }

  else if (v117 >= 0x80)
  {
    v118 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v117) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v118 = 3;
  }

  v4 += v118;
  if ((v112 & 8) == 0)
  {
LABEL_313:
    if ((v112 & 0x10) == 0)
    {
      goto LABEL_314;
    }

    goto LABEL_342;
  }

LABEL_336:
  v119 = *(v1 + 107);
  if ((v119 & 0x80000000) != 0)
  {
    v120 = 12;
  }

  else if (v119 >= 0x80)
  {
    v120 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v119) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v120 = 3;
  }

  v4 += v120;
  if ((v112 & 0x10) == 0)
  {
LABEL_314:
    if ((v112 & 0x20) == 0)
    {
      goto LABEL_315;
    }

    goto LABEL_348;
  }

LABEL_342:
  v121 = *(v1 + 108);
  if ((v121 & 0x80000000) != 0)
  {
    v122 = 12;
  }

  else if (v121 >= 0x80)
  {
    v122 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v121) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v122 = 3;
  }

  v4 += v122;
  if ((v112 & 0x20) == 0)
  {
LABEL_315:
    if ((v112 & 0x40) == 0)
    {
      goto LABEL_316;
    }

    goto LABEL_354;
  }

LABEL_348:
  v123 = *(v1 + 109);
  if ((v123 & 0x80000000) != 0)
  {
    v124 = 12;
  }

  else if (v123 >= 0x80)
  {
    v124 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v123) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v124 = 3;
  }

  v4 += v124;
  if ((v112 & 0x40) == 0)
  {
LABEL_316:
    if ((v112 & 0x80) == 0)
    {
      goto LABEL_366;
    }

    goto LABEL_360;
  }

LABEL_354:
  v125 = *(v1 + 110);
  if ((v125 & 0x80000000) != 0)
  {
    v126 = 12;
  }

  else if (v125 >= 0x80)
  {
    v126 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v125) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v126 = 3;
  }

  v4 += v126;
  if ((v112 & 0x80) != 0)
  {
LABEL_360:
    v127 = *(v1 + 112);
    if ((v127 & 0x80000000) != 0)
    {
      v128 = 12;
    }

    else if (v127 >= 0x80)
    {
      v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v127) + 2;
      v112 = *(v1 + 219);
    }

    else
    {
      v128 = 3;
    }

    v4 += v128;
  }

LABEL_366:
  if ((v112 & 0xFF00) == 0)
  {
    goto LABEL_424;
  }

  if ((v112 & 0x100) != 0)
  {
    v129 = *(v1 + 113);
    if ((v129 & 0x80000000) != 0)
    {
      v130 = 12;
    }

    else if (v129 >= 0x80)
    {
      v130 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v129) + 2;
      v112 = *(v1 + 219);
    }

    else
    {
      v130 = 3;
    }

    v4 += v130;
    if ((v112 & 0x200) == 0)
    {
LABEL_369:
      if ((v112 & 0x400) == 0)
      {
        goto LABEL_370;
      }

      goto LABEL_388;
    }
  }

  else if ((v112 & 0x200) == 0)
  {
    goto LABEL_369;
  }

  v131 = *(v1 + 114);
  if ((v131 & 0x80000000) != 0)
  {
    v132 = 12;
  }

  else if (v131 >= 0x80)
  {
    v132 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v131) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v132 = 3;
  }

  v4 += v132;
  if ((v112 & 0x400) == 0)
  {
LABEL_370:
    if ((v112 & 0x800) == 0)
    {
      goto LABEL_371;
    }

    goto LABEL_394;
  }

LABEL_388:
  v133 = *(v1 + 115);
  if ((v133 & 0x80000000) != 0)
  {
    v134 = 12;
  }

  else if (v133 >= 0x80)
  {
    v134 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v133) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v134 = 3;
  }

  v4 += v134;
  if ((v112 & 0x800) == 0)
  {
LABEL_371:
    if ((v112 & 0x1000) == 0)
    {
      goto LABEL_372;
    }

    goto LABEL_400;
  }

LABEL_394:
  v135 = *(v1 + 116);
  if ((v135 & 0x80000000) != 0)
  {
    v136 = 12;
  }

  else if (v135 >= 0x80)
  {
    v136 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v135) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v136 = 3;
  }

  v4 += v136;
  if ((v112 & 0x1000) == 0)
  {
LABEL_372:
    if ((v112 & 0x2000) == 0)
    {
      goto LABEL_373;
    }

    goto LABEL_406;
  }

LABEL_400:
  v137 = *(v1 + 117);
  if ((v137 & 0x80000000) != 0)
  {
    v138 = 12;
  }

  else if (v137 >= 0x80)
  {
    v138 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v137) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v138 = 3;
  }

  v4 += v138;
  if ((v112 & 0x2000) == 0)
  {
LABEL_373:
    if ((v112 & 0x4000) == 0)
    {
      goto LABEL_374;
    }

    goto LABEL_412;
  }

LABEL_406:
  v139 = *(v1 + 118);
  if ((v139 & 0x80000000) != 0)
  {
    v140 = 12;
  }

  else if (v139 >= 0x80)
  {
    v140 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v139) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v140 = 3;
  }

  v4 += v140;
  if ((v112 & 0x4000) == 0)
  {
LABEL_374:
    if ((v112 & 0x8000) == 0)
    {
      goto LABEL_424;
    }

    goto LABEL_418;
  }

LABEL_412:
  v141 = *(v1 + 119);
  if ((v141 & 0x80000000) != 0)
  {
    v142 = 12;
  }

  else if (v141 >= 0x80)
  {
    v142 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v141) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v142 = 3;
  }

  v4 += v142;
  if ((v112 & 0x8000) != 0)
  {
LABEL_418:
    v143 = *(v1 + 120);
    if ((v143 & 0x80000000) != 0)
    {
      v144 = 12;
    }

    else if (v143 >= 0x80)
    {
      v144 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v143) + 2;
      v112 = *(v1 + 219);
    }

    else
    {
      v144 = 3;
    }

    v4 += v144;
  }

LABEL_424:
  if ((v112 & 0xFF0000) == 0)
  {
    goto LABEL_454;
  }

  if ((v112 & 0x10000) == 0)
  {
    if ((v112 & 0x20000) == 0)
    {
      goto LABEL_427;
    }

LABEL_435:
    v147 = *(v1 + 122);
    if ((v147 & 0x80000000) != 0)
    {
      v148 = 12;
    }

    else if (v147 >= 0x80)
    {
      v148 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v147) + 2;
      v112 = *(v1 + 219);
    }

    else
    {
      v148 = 3;
    }

    v4 += v148;
    if ((v112 & 0x40000) == 0)
    {
      goto LABEL_447;
    }

    goto LABEL_441;
  }

  v145 = *(v1 + 121);
  if ((v145 & 0x80000000) != 0)
  {
    v146 = 12;
  }

  else if (v145 >= 0x80)
  {
    v146 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v145) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v146 = 3;
  }

  v4 += v146;
  if ((v112 & 0x20000) != 0)
  {
    goto LABEL_435;
  }

LABEL_427:
  if ((v112 & 0x40000) != 0)
  {
LABEL_441:
    v149 = *(v1 + 123);
    if ((v149 & 0x80000000) != 0)
    {
      v150 = 12;
    }

    else if (v149 >= 0x80)
    {
      v150 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v149) + 2;
      v112 = *(v1 + 219);
    }

    else
    {
      v150 = 3;
    }

    v4 += v150;
  }

LABEL_447:
  v151 = v4 + 3;
  if ((v112 & 0x80000) == 0)
  {
    v151 = v4;
  }

  if ((v112 & 0x100000) != 0)
  {
    v151 += 3;
  }

  if ((v112 & 0x200000) != 0)
  {
    v4 = v151 + 3;
  }

  else
  {
    v4 = v151;
  }

LABEL_454:
  if (!HIBYTE(v112))
  {
    goto LABEL_512;
  }

  if ((v112 & 0x1000000) != 0)
  {
    v152 = *(v1 + 132);
    if ((v152 & 0x80000000) != 0)
    {
      v153 = 12;
    }

    else if (v152 >= 0x80)
    {
      v153 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v152) + 2;
      v112 = *(v1 + 219);
    }

    else
    {
      v153 = 3;
    }

    v4 += v153;
    if ((v112 & 0x2000000) == 0)
    {
LABEL_457:
      if ((v112 & 0x4000000) == 0)
      {
        goto LABEL_458;
      }

      goto LABEL_476;
    }
  }

  else if ((v112 & 0x2000000) == 0)
  {
    goto LABEL_457;
  }

  v154 = *(v1 + 133);
  if ((v154 & 0x80000000) != 0)
  {
    v155 = 12;
  }

  else if (v154 >= 0x80)
  {
    v155 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v154) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v155 = 3;
  }

  v4 += v155;
  if ((v112 & 0x4000000) == 0)
  {
LABEL_458:
    if ((v112 & 0x8000000) == 0)
    {
      goto LABEL_459;
    }

    goto LABEL_482;
  }

LABEL_476:
  v156 = *(v1 + 134);
  if ((v156 & 0x80000000) != 0)
  {
    v157 = 12;
  }

  else if (v156 >= 0x80)
  {
    v157 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v156) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v157 = 3;
  }

  v4 += v157;
  if ((v112 & 0x8000000) == 0)
  {
LABEL_459:
    if ((v112 & 0x10000000) == 0)
    {
      goto LABEL_460;
    }

    goto LABEL_488;
  }

LABEL_482:
  v158 = *(v1 + 135);
  if ((v158 & 0x80000000) != 0)
  {
    v159 = 12;
  }

  else if (v158 >= 0x80)
  {
    v159 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v158) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v159 = 3;
  }

  v4 += v159;
  if ((v112 & 0x10000000) == 0)
  {
LABEL_460:
    if ((v112 & 0x20000000) == 0)
    {
      goto LABEL_461;
    }

    goto LABEL_494;
  }

LABEL_488:
  v160 = *(v1 + 136);
  if ((v160 & 0x80000000) != 0)
  {
    v161 = 12;
  }

  else if (v160 >= 0x80)
  {
    v161 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v160) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v161 = 3;
  }

  v4 += v161;
  if ((v112 & 0x20000000) == 0)
  {
LABEL_461:
    if ((v112 & 0x40000000) == 0)
    {
      goto LABEL_462;
    }

    goto LABEL_500;
  }

LABEL_494:
  v162 = *(v1 + 137);
  if ((v162 & 0x80000000) != 0)
  {
    v163 = 12;
  }

  else if (v162 >= 0x80)
  {
    v163 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v162) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v163 = 3;
  }

  v4 += v163;
  if ((v112 & 0x40000000) == 0)
  {
LABEL_462:
    if ((v112 & 0x80000000) == 0)
    {
      goto LABEL_512;
    }

    goto LABEL_506;
  }

LABEL_500:
  v164 = *(v1 + 138);
  if ((v164 & 0x80000000) != 0)
  {
    v165 = 12;
  }

  else if (v164 >= 0x80)
  {
    v165 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v164) + 2;
    v112 = *(v1 + 219);
  }

  else
  {
    v165 = 3;
  }

  v4 += v165;
  if ((v112 & 0x80000000) != 0)
  {
LABEL_506:
    v166 = *(v1 + 139);
    if ((v166 & 0x80000000) != 0)
    {
      v167 = 12;
    }

    else if (v166 >= 0x80)
    {
      v167 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v166) + 2;
    }

    else
    {
      v167 = 3;
    }

    v4 += v167;
  }

LABEL_512:
  v168 = *(v1 + 220);
  if (!v168)
  {
    goto LABEL_570;
  }

  if (v168)
  {
    v169 = *(v1 + 140);
    if ((v169 & 0x80000000) != 0)
    {
      v170 = 12;
    }

    else if (v169 >= 0x80)
    {
      v170 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v169) + 2;
      v168 = *(v1 + 220);
    }

    else
    {
      v170 = 3;
    }

    v4 += v170;
    if ((v168 & 2) == 0)
    {
LABEL_515:
      if ((v168 & 4) == 0)
      {
        goto LABEL_516;
      }

      goto LABEL_534;
    }
  }

  else if ((v168 & 2) == 0)
  {
    goto LABEL_515;
  }

  v171 = *(v1 + 141);
  if ((v171 & 0x80000000) != 0)
  {
    v172 = 12;
  }

  else if (v171 >= 0x80)
  {
    v172 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v171) + 2;
    v168 = *(v1 + 220);
  }

  else
  {
    v172 = 3;
  }

  v4 += v172;
  if ((v168 & 4) == 0)
  {
LABEL_516:
    if ((v168 & 8) == 0)
    {
      goto LABEL_517;
    }

    goto LABEL_540;
  }

LABEL_534:
  v173 = *(v1 + 142);
  if ((v173 & 0x80000000) != 0)
  {
    v174 = 12;
  }

  else if (v173 >= 0x80)
  {
    v174 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v173) + 2;
    v168 = *(v1 + 220);
  }

  else
  {
    v174 = 3;
  }

  v4 += v174;
  if ((v168 & 8) == 0)
  {
LABEL_517:
    if ((v168 & 0x10) == 0)
    {
      goto LABEL_518;
    }

    goto LABEL_546;
  }

LABEL_540:
  v175 = *(v1 + 143);
  if ((v175 & 0x80000000) != 0)
  {
    v176 = 12;
  }

  else if (v175 >= 0x80)
  {
    v176 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v175) + 2;
    v168 = *(v1 + 220);
  }

  else
  {
    v176 = 3;
  }

  v4 += v176;
  if ((v168 & 0x10) == 0)
  {
LABEL_518:
    if ((v168 & 0x20) == 0)
    {
      goto LABEL_519;
    }

    goto LABEL_552;
  }

LABEL_546:
  v177 = *(v1 + 144);
  if ((v177 & 0x80000000) != 0)
  {
    v178 = 12;
  }

  else if (v177 >= 0x80)
  {
    v178 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v177) + 2;
    v168 = *(v1 + 220);
  }

  else
  {
    v178 = 3;
  }

  v4 += v178;
  if ((v168 & 0x20) == 0)
  {
LABEL_519:
    if ((v168 & 0x40) == 0)
    {
      goto LABEL_520;
    }

    goto LABEL_558;
  }

LABEL_552:
  v179 = *(v1 + 145);
  if ((v179 & 0x80000000) != 0)
  {
    v180 = 12;
  }

  else if (v179 >= 0x80)
  {
    v180 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v179) + 2;
    v168 = *(v1 + 220);
  }

  else
  {
    v180 = 3;
  }

  v4 += v180;
  if ((v168 & 0x40) == 0)
  {
LABEL_520:
    if ((v168 & 0x80) == 0)
    {
      goto LABEL_570;
    }

    goto LABEL_564;
  }

LABEL_558:
  v181 = *(v1 + 146);
  if ((v181 & 0x80000000) != 0)
  {
    v182 = 12;
  }

  else if (v181 >= 0x80)
  {
    v182 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v181) + 2;
    v168 = *(v1 + 220);
  }

  else
  {
    v182 = 3;
  }

  v4 += v182;
  if ((v168 & 0x80) != 0)
  {
LABEL_564:
    v183 = *(v1 + 147);
    if ((v183 & 0x80000000) != 0)
    {
      v184 = 12;
    }

    else if (v183 >= 0x80)
    {
      v184 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v183) + 2;
      v168 = *(v1 + 220);
    }

    else
    {
      v184 = 3;
    }

    v4 += v184;
  }

LABEL_570:
  if ((v168 & 0xFF00) == 0)
  {
    goto LABEL_628;
  }

  if ((v168 & 0x100) != 0)
  {
    v185 = *(v1 + 148);
    if ((v185 & 0x80000000) != 0)
    {
      v186 = 12;
    }

    else if (v185 >= 0x80)
    {
      v186 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v185) + 2;
      v168 = *(v1 + 220);
    }

    else
    {
      v186 = 3;
    }

    v4 += v186;
    if ((v168 & 0x200) == 0)
    {
LABEL_573:
      if ((v168 & 0x400) == 0)
      {
        goto LABEL_574;
      }

      goto LABEL_592;
    }
  }

  else if ((v168 & 0x200) == 0)
  {
    goto LABEL_573;
  }

  v187 = *(v1 + 149);
  if ((v187 & 0x80000000) != 0)
  {
    v188 = 12;
  }

  else if (v187 >= 0x80)
  {
    v188 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v187) + 2;
    v168 = *(v1 + 220);
  }

  else
  {
    v188 = 3;
  }

  v4 += v188;
  if ((v168 & 0x400) == 0)
  {
LABEL_574:
    if ((v168 & 0x800) == 0)
    {
      goto LABEL_575;
    }

    goto LABEL_598;
  }

LABEL_592:
  v189 = *(v1 + 150);
  if ((v189 & 0x80000000) != 0)
  {
    v190 = 12;
  }

  else if (v189 >= 0x80)
  {
    v190 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v189) + 2;
    v168 = *(v1 + 220);
  }

  else
  {
    v190 = 3;
  }

  v4 += v190;
  if ((v168 & 0x800) == 0)
  {
LABEL_575:
    if ((v168 & 0x1000) == 0)
    {
      goto LABEL_576;
    }

    goto LABEL_604;
  }

LABEL_598:
  v191 = *(v1 + 151);
  if ((v191 & 0x80000000) != 0)
  {
    v192 = 12;
  }

  else if (v191 >= 0x80)
  {
    v192 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v191) + 2;
    v168 = *(v1 + 220);
  }

  else
  {
    v192 = 3;
  }

  v4 += v192;
  if ((v168 & 0x1000) == 0)
  {
LABEL_576:
    if ((v168 & 0x2000) == 0)
    {
      goto LABEL_577;
    }

    goto LABEL_610;
  }

LABEL_604:
  v193 = *(v1 + 152);
  if ((v193 & 0x80000000) != 0)
  {
    v194 = 12;
  }

  else if (v193 >= 0x80)
  {
    v194 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v193) + 2;
    v168 = *(v1 + 220);
  }

  else
  {
    v194 = 3;
  }

  v4 += v194;
  if ((v168 & 0x2000) == 0)
  {
LABEL_577:
    if ((v168 & 0x4000) == 0)
    {
      goto LABEL_578;
    }

    goto LABEL_616;
  }

LABEL_610:
  v195 = *(v1 + 153);
  if ((v195 & 0x80000000) != 0)
  {
    v196 = 12;
  }

  else if (v195 >= 0x80)
  {
    v196 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v195) + 2;
    v168 = *(v1 + 220);
  }

  else
  {
    v196 = 3;
  }

  v4 += v196;
  if ((v168 & 0x4000) == 0)
  {
LABEL_578:
    if ((v168 & 0x8000) == 0)
    {
      goto LABEL_628;
    }

    goto LABEL_622;
  }

LABEL_616:
  v197 = *(v1 + 154);
  if ((v197 & 0x80000000) != 0)
  {
    v198 = 12;
  }

  else if (v197 >= 0x80)
  {
    v198 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v197) + 2;
    v168 = *(v1 + 220);
  }

  else
  {
    v198 = 3;
  }

  v4 += v198;
  if ((v168 & 0x8000) != 0)
  {
LABEL_622:
    v199 = *(v1 + 155);
    if ((v199 & 0x80000000) != 0)
    {
      v200 = 12;
    }

    else if (v199 >= 0x80)
    {
      v200 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v199) + 2;
      v168 = *(v1 + 220);
    }

    else
    {
      v200 = 3;
    }

    v4 += v200;
  }

LABEL_628:
  if ((v168 & 0xFF0000) == 0)
  {
    goto LABEL_658;
  }

  if ((v168 & 0x10000) != 0)
  {
    v201 = *(v1 + 156);
    if ((v201 & 0x80000000) != 0)
    {
      v202 = 12;
    }

    else if (v201 >= 0x80)
    {
      v202 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v201) + 2;
      v168 = *(v1 + 220);
    }

    else
    {
      v202 = 3;
    }

    v4 += v202;
    if ((v168 & 0x20000) == 0)
    {
LABEL_631:
      if ((v168 & 0x40000) == 0)
      {
        goto LABEL_632;
      }

      goto LABEL_646;
    }
  }

  else if ((v168 & 0x20000) == 0)
  {
    goto LABEL_631;
  }

  v203 = *(v1 + 157);
  if ((v203 & 0x80000000) != 0)
  {
    v204 = 12;
  }

  else if (v203 >= 0x80)
  {
    v204 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v203) + 2;
    v168 = *(v1 + 220);
  }

  else
  {
    v204 = 3;
  }

  v4 += v204;
  if ((v168 & 0x40000) == 0)
  {
LABEL_632:
    if ((v168 & 0x80000) == 0)
    {
      goto LABEL_658;
    }

    goto LABEL_652;
  }

LABEL_646:
  v205 = *(v1 + 158);
  if ((v205 & 0x80000000) != 0)
  {
    v206 = 12;
  }

  else if (v205 >= 0x80)
  {
    v206 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v205) + 2;
    v168 = *(v1 + 220);
  }

  else
  {
    v206 = 3;
  }

  v4 += v206;
  if ((v168 & 0x80000) != 0)
  {
LABEL_652:
    v207 = *(v1 + 159);
    if ((v207 & 0x80000000) != 0)
    {
      v208 = 12;
    }

    else if (v207 >= 0x80)
    {
      v208 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v207) + 2;
      v168 = *(v1 + 220);
    }

    else
    {
      v208 = 3;
    }

    v4 += v208;
  }

LABEL_658:
  if (v168 >> 29)
  {
    if ((v168 & 0x20000000) != 0)
    {
      v209 = *(v1 + 196);
      if ((v209 & 0x80000000) != 0)
      {
        v210 = 12;
      }

      else if (v209 >= 0x80)
      {
        v210 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v209) + 2;
        v168 = *(v1 + 220);
      }

      else
      {
        v210 = 3;
      }

      v4 += v210;
    }

    if ((v168 & 0x40000000) != 0)
    {
      v211 = *(v1 + 197);
      if ((v211 & 0x80000000) != 0)
      {
        v212 = 12;
      }

      else if (v211 >= 0x80)
      {
        v212 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v211) + 2;
      }

      else
      {
        v212 = 3;
      }

      v4 += v212;
    }
  }

  v213 = *(v1 + 221);
  if (!v213)
  {
    goto LABEL_731;
  }

  if (v213)
  {
    v214 = *(v1 + 202);
    if ((v214 & 0x80000000) != 0)
    {
      v215 = 12;
    }

    else if (v214 >= 0x80)
    {
      v215 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v214) + 2;
      v213 = *(v1 + 221);
    }

    else
    {
      v215 = 3;
    }

    v4 += v215;
    if ((v213 & 2) == 0)
    {
LABEL_676:
      if ((v213 & 4) == 0)
      {
        goto LABEL_677;
      }

      goto LABEL_695;
    }
  }

  else if ((v213 & 2) == 0)
  {
    goto LABEL_676;
  }

  v216 = *(v1 + 203);
  if ((v216 & 0x80000000) != 0)
  {
    v217 = 12;
  }

  else if (v216 >= 0x80)
  {
    v217 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v216) + 2;
    v213 = *(v1 + 221);
  }

  else
  {
    v217 = 3;
  }

  v4 += v217;
  if ((v213 & 4) == 0)
  {
LABEL_677:
    if ((v213 & 8) == 0)
    {
      goto LABEL_678;
    }

    goto LABEL_701;
  }

LABEL_695:
  v218 = *(v1 + 204);
  if ((v218 & 0x80000000) != 0)
  {
    v219 = 12;
  }

  else if (v218 >= 0x80)
  {
    v219 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v218) + 2;
    v213 = *(v1 + 221);
  }

  else
  {
    v219 = 3;
  }

  v4 += v219;
  if ((v213 & 8) == 0)
  {
LABEL_678:
    if ((v213 & 0x10) == 0)
    {
      goto LABEL_679;
    }

    goto LABEL_707;
  }

LABEL_701:
  v220 = *(v1 + 205);
  if ((v220 & 0x80000000) != 0)
  {
    v221 = 12;
  }

  else if (v220 >= 0x80)
  {
    v221 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v220) + 2;
    v213 = *(v1 + 221);
  }

  else
  {
    v221 = 3;
  }

  v4 += v221;
  if ((v213 & 0x10) == 0)
  {
LABEL_679:
    if ((v213 & 0x20) == 0)
    {
      goto LABEL_680;
    }

LABEL_713:
    v224 = *(v1 + 207);
    if ((v224 & 0x80000000) != 0)
    {
      v225 = 12;
    }

    else if (v224 >= 0x80)
    {
      v225 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v224) + 2;
      v213 = *(v1 + 221);
    }

    else
    {
      v225 = 3;
    }

    v4 += v225;
    if ((v213 & 0x40) == 0)
    {
LABEL_681:
      if ((v213 & 0x80) == 0)
      {
        goto LABEL_731;
      }

      goto LABEL_725;
    }

    goto LABEL_719;
  }

LABEL_707:
  v222 = *(v1 + 206);
  if ((v222 & 0x80000000) != 0)
  {
    v223 = 12;
  }

  else if (v222 >= 0x80)
  {
    v223 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v222) + 2;
    v213 = *(v1 + 221);
  }

  else
  {
    v223 = 3;
  }

  v4 += v223;
  if ((v213 & 0x20) != 0)
  {
    goto LABEL_713;
  }

LABEL_680:
  if ((v213 & 0x40) == 0)
  {
    goto LABEL_681;
  }

LABEL_719:
  v226 = *(v1 + 208);
  if ((v226 & 0x80000000) != 0)
  {
    v227 = 12;
  }

  else if (v226 >= 0x80)
  {
    v227 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v226) + 2;
    v213 = *(v1 + 221);
  }

  else
  {
    v227 = 3;
  }

  v4 += v227;
  if ((v213 & 0x80) != 0)
  {
LABEL_725:
    v228 = *(v1 + 209);
    if ((v228 & 0x80000000) != 0)
    {
      v229 = 12;
    }

    else if (v228 >= 0x80)
    {
      v229 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v228) + 2;
      v213 = *(v1 + 221);
    }

    else
    {
      v229 = 3;
    }

    v4 += v229;
  }

LABEL_731:
  if ((v213 & 0xFF00) == 0)
  {
    goto LABEL_775;
  }

  if ((v213 & 0x100) != 0)
  {
    v230 = *(v1 + 210);
    if ((v230 & 0x80000000) != 0)
    {
      v231 = 12;
    }

    else if (v230 >= 0x80)
    {
      v231 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v230) + 2;
      v213 = *(v1 + 221);
    }

    else
    {
      v231 = 3;
    }

    v4 += v231;
    if ((v213 & 0x200) == 0)
    {
LABEL_734:
      if ((v213 & 0x400) == 0)
      {
        goto LABEL_735;
      }

      goto LABEL_751;
    }
  }

  else if ((v213 & 0x200) == 0)
  {
    goto LABEL_734;
  }

  v232 = *(v1 + 211);
  if ((v232 & 0x80000000) != 0)
  {
    v233 = 12;
  }

  else if (v232 >= 0x80)
  {
    v233 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v232) + 2;
    v213 = *(v1 + 221);
  }

  else
  {
    v233 = 3;
  }

  v4 += v233;
  if ((v213 & 0x400) == 0)
  {
LABEL_735:
    if ((v213 & 0x800) == 0)
    {
      goto LABEL_736;
    }

    goto LABEL_757;
  }

LABEL_751:
  v234 = *(v1 + 212);
  if ((v234 & 0x80000000) != 0)
  {
    v235 = 12;
  }

  else if (v234 >= 0x80)
  {
    v235 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v234) + 2;
    v213 = *(v1 + 221);
  }

  else
  {
    v235 = 3;
  }

  v4 += v235;
  if ((v213 & 0x800) == 0)
  {
LABEL_736:
    if ((v213 & 0x1000) == 0)
    {
      goto LABEL_737;
    }

    goto LABEL_763;
  }

LABEL_757:
  v236 = *(v1 + 213);
  if ((v236 & 0x80000000) != 0)
  {
    v237 = 12;
  }

  else if (v236 >= 0x80)
  {
    v237 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v236) + 2;
    v213 = *(v1 + 221);
  }

  else
  {
    v237 = 3;
  }

  v4 += v237;
  if ((v213 & 0x1000) == 0)
  {
LABEL_737:
    if ((v213 & 0x2000) == 0)
    {
      goto LABEL_775;
    }

    goto LABEL_769;
  }

LABEL_763:
  v238 = *(v1 + 214);
  if ((v238 & 0x80000000) != 0)
  {
    v239 = 12;
  }

  else if (v238 >= 0x80)
  {
    v239 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v238) + 2;
    v213 = *(v1 + 221);
  }

  else
  {
    v239 = 3;
  }

  v4 += v239;
  if ((v213 & 0x2000) != 0)
  {
LABEL_769:
    v240 = *(v1 + 215);
    if ((v240 & 0x80000000) != 0)
    {
      v241 = 12;
    }

    else if (v240 >= 0x80)
    {
      v241 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v240) + 2;
    }

    else
    {
      v241 = 3;
    }

    v4 += v241;
  }

LABEL_775:
  v328 = *(v1 + 24);
  v329 = v4;
  v326 = *(v1 + 32);
  v327 = *(v1 + 28);
  v242 = *(v1 + 36);
  v324 = *(v1 + 36);
  v325 = *(v1 + 40);
  v323 = *(v1 + 44);
  v243 = *(v1 + 50);
  if (v243 < 1)
  {
    v245 = 0;
  }

  else
  {
    v244 = 0;
    v245 = 0;
    do
    {
      v246 = *(*(v1 + 24) + 4 * v244);
      if (v246 >= 0x80)
      {
        v247 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v246);
        v243 = *(v1 + 50);
      }

      else
      {
        v247 = 1;
      }

      v245 += v247;
      ++v244;
    }

    while (v244 < v243);
  }

  v248 = *(v1 + 54);
  if (v248 < 1)
  {
    v250 = 0;
  }

  else
  {
    v249 = 0;
    v250 = 0;
    do
    {
      v251 = *(*(v1 + 26) + 4 * v249);
      if (v251 >= 0x80)
      {
        v252 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v251);
        v248 = *(v1 + 54);
      }

      else
      {
        v252 = 1;
      }

      v250 += v252;
      ++v249;
    }

    while (v249 < v248);
  }

  v253 = *(v1 + 58);
  if (v253 < 1)
  {
    v255 = 0;
  }

  else
  {
    v254 = 0;
    v255 = 0;
    do
    {
      v256 = *(*(v1 + 28) + 4 * v254);
      if (v256 >= 0x80)
      {
        v257 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v256);
        v253 = *(v1 + 58);
      }

      else
      {
        v257 = 1;
      }

      v255 += v257;
      ++v254;
    }

    while (v254 < v253);
  }

  v258 = *(v1 + 70);
  v315 = *(v1 + 70);
  v316 = *(v1 + 76);
  v259 = *(v1 + 92);
  if (v259 < 1)
  {
    v261 = 0;
  }

  else
  {
    v260 = 0;
    v261 = 0;
    do
    {
      v262 = *(*(v1 + 45) + 4 * v260);
      if (v262 >= 0x80)
      {
        v263 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v262);
        v259 = *(v1 + 92);
      }

      else
      {
        v263 = 1;
      }

      v261 += v263;
      ++v260;
    }

    while (v260 < v259);
  }

  v313 = v259;
  v330 = *(v1 + 126);
  if (v330 < 1)
  {
    v334 = 0;
  }

  else
  {
    v264 = 0;
    v334 = 0;
    do
    {
      v265 = *(*(v1 + 62) + 4 * v264);
      if ((v265 & 0x80000000) != 0)
      {
        v266 = 10;
      }

      else if (v265 >= 0x80)
      {
        v266 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v265);
        v330 = *(v1 + 126);
      }

      else
      {
        v266 = 1;
      }

      v334 += v266;
      ++v264;
    }

    while (v264 < v330);
  }

  v312 = *(v1 + 130);
  v267 = *(v1 + 162);
  if (v267 < 1)
  {
    v333 = 0;
  }

  else
  {
    v268 = 0;
    v333 = 0;
    do
    {
      v269 = v267;
      v270 = *(*(v1 + 80) + 4 * v268);
      if (v270 >= 0x80)
      {
        v271 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v270);
        v269 = *(v1 + 162);
      }

      else
      {
        v271 = 1;
      }

      v333 += v271;
      ++v268;
      v267 = v269;
    }

    while (v268 < v269);
  }

  v311 = v267;
  v272 = *(v1 + 166);
  if (v272 < 1)
  {
    v332 = 0;
  }

  else
  {
    v273 = 0;
    v332 = 0;
    do
    {
      v274 = *(*(v1 + 82) + 4 * v273);
      if (v274 >= 0x80)
      {
        v275 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v274);
        v272 = *(v1 + 166);
      }

      else
      {
        v275 = 1;
      }

      v332 += v275;
      ++v273;
    }

    while (v273 < v272);
  }

  v310 = v272;
  v276 = *(v1 + 170);
  if (v276 < 1)
  {
    v331 = 0;
  }

  else
  {
    v277 = 0;
    v331 = 0;
    do
    {
      v278 = *(*(v1 + 84) + 4 * v277);
      if (v278 >= 0x80)
      {
        v279 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v278);
        v276 = *(v1 + 170);
      }

      else
      {
        v279 = 1;
      }

      v331 += v279;
      ++v277;
    }

    while (v277 < v276);
  }

  v309 = v276;
  v280 = *(v1 + 174);
  if (v280 < 1)
  {
    v282 = 0;
  }

  else
  {
    v281 = 0;
    v282 = 0;
    do
    {
      v283 = *(*(v1 + 86) + 4 * v281);
      if (v283 >= 0x80)
      {
        v284 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v283);
        v280 = *(v1 + 174);
      }

      else
      {
        v284 = 1;
      }

      v282 += v284;
      ++v281;
    }

    while (v281 < v280);
  }

  v307 = v280;
  v308 = v282;
  LODWORD(v285) = *(v1 + 178);
  if (v285 < 1)
  {
    v287 = 0;
  }

  else
  {
    v286 = 0;
    v287 = 0;
    do
    {
      v287 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v1 + 88) + 8 * v286++));
      v285 = *(v1 + 178);
    }

    while (v286 < v285);
  }

  v306 = v285;
  v322 = v245;
  LODWORD(v285) = *(v1 + 182);
  if (v285 < 1)
  {
    v289 = 0;
  }

  else
  {
    v288 = 0;
    v289 = 0;
    do
    {
      v289 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v1 + 90) + 8 * v288++));
      v285 = *(v1 + 182);
    }

    while (v288 < v285);
  }

  v305 = v285;
  v319 = v248;
  v321 = v243;
  LODWORD(v290) = *(v1 + 186);
  v314 = v261;
  if (v290 < 1)
  {
    v292 = 0;
  }

  else
  {
    v291 = 0;
    v292 = 0;
    do
    {
      v292 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v1 + 92) + 8 * v291++));
      v290 = *(v1 + 186);
    }

    while (v291 < v290);
  }

  v320 = v250;
  LODWORD(v293) = *(v1 + 190);
  v317 = v253;
  if (v293 < 1)
  {
    v295 = 0;
  }

  else
  {
    v294 = 0;
    v295 = 0;
    do
    {
      v295 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v1 + 94) + 8 * v294++));
      v293 = *(v1 + 190);
    }

    while (v294 < v293);
  }

  v318 = v255;
  LODWORD(v296) = *(v1 + 194);
  if (v296 < 1)
  {
    v298 = 0;
  }

  else
  {
    v297 = 0;
    v298 = 0;
    do
    {
      v298 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v1 + 96) + 8 * v297++));
      v296 = *(v1 + 194);
    }

    while (v297 < v296);
  }

  LODWORD(v299) = *(v1 + 200);
  if (v299 < 1)
  {
    v302 = 0;
  }

  else
  {
    v304 = v287;
    v300 = v1;
    v301 = 0;
    v302 = 0;
    do
    {
      v302 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v300 + 99) + 8 * v301++));
      v299 = *(v300 + 200);
    }

    while (v301 < v299);
    v1 = v300;
    v287 = v304;
  }

  result = (v322 + v329 + v320 + v318 + v314 + v334 + 6 * (v327 + v328 + v326 + v324 + v325 + v323 + v315 + v316 + v312) + v333 + v332 + v331 + v308 + v287 + v289 + v292 + v295 + v298 + v302 + 2 * (v319 + v321 + v317 + v313 + v330 + v311 + v310 + v309 + v307 + v306 + v305 + v290 + v293 + v296 + v299));
  *(v1 + 216) = result;
  return result;
}

void awd::metrics::MotionFitnessAllDay::CheckTypeAndMergeFrom(awd::metrics::MotionFitnessAllDay *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::MotionFitnessAllDay::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionFitnessAllDay::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionFitnessAllDay::CopyFrom(awd::metrics::MotionFitnessAllDay *this, const awd::metrics::MotionFitnessAllDay *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionFitnessAllDay::MergeFrom(this, a2);
  }
}

double awd::metrics::MotionFitnessAllDay::Swap(awd::metrics::MotionFitnessAllDay *this, awd::metrics::MotionFitnessAllDay *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 68);
    *(this + 68) = *(a2 + 68);
    *(a2 + 68) = v2;
    LOBYTE(v2) = *(this + 69);
    *(this + 69) = *(a2 + 69);
    *(a2 + 69) = v2;
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
    LODWORD(v2) = *(this + 46);
    *(this + 46) = *(a2 + 46);
    *(a2 + 46) = v2;
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
    v9 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    v10 = *(a2 + 16);
    *(a2 + 15) = v9;
    v11 = *(this + 16);
    *(this + 16) = v10;
    *(a2 + 16) = v11;
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
    LOBYTE(v18) = *(this + 70);
    *(this + 70) = *(a2 + 70);
    *(a2 + 70) = v18;
    v21 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    v22 = *(a2 + 25);
    *(a2 + 24) = v21;
    v23 = *(this + 25);
    *(this + 25) = v22;
    *(a2 + 25) = v23;
    v24 = *(this + 26);
    *(this + 26) = *(a2 + 26);
    v25 = *(a2 + 27);
    *(a2 + 26) = v24;
    v26 = *(this + 27);
    *(this + 27) = v25;
    *(a2 + 27) = v26;
    v27 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    v28 = *(a2 + 29);
    *(a2 + 28) = v27;
    v29 = *(this + 29);
    *(this + 29) = v28;
    *(a2 + 29) = v29;
    LOBYTE(v27) = *(this + 71);
    *(this + 71) = *(a2 + 71);
    *(a2 + 71) = v27;
    LOBYTE(v27) = *(this + 444);
    *(this + 444) = *(a2 + 444);
    *(a2 + 444) = v27;
    LODWORD(v27) = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v27;
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
    LODWORD(v27) = *(this + 67);
    *(this + 67) = *(a2 + 67);
    *(a2 + 67) = v27;
    v30 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    v31 = *(a2 + 35);
    *(a2 + 34) = v30;
    v32 = *(this + 35);
    *(this + 35) = v31;
    *(a2 + 35) = v32;
    LODWORD(v31) = *(this + 72);
    *(this + 72) = *(a2 + 72);
    *(a2 + 72) = v31;
    v33 = *(this + 37);
    *(this + 37) = *(a2 + 37);
    v34 = *(a2 + 38);
    *(a2 + 37) = v33;
    v35 = *(this + 38);
    *(this + 38) = v34;
    *(a2 + 38) = v35;
    LODWORD(v34) = *(this + 73);
    *(this + 73) = *(a2 + 73);
    *(a2 + 73) = v34;
    LODWORD(v34) = *(this + 78);
    *(this + 78) = *(a2 + 78);
    *(a2 + 78) = v34;
    LODWORD(v34) = *(this + 79);
    *(this + 79) = *(a2 + 79);
    *(a2 + 79) = v34;
    v36 = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v36;
    v37 = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v37;
    v38 = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v38;
    v39 = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v39;
    v40 = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v40;
    v41 = *(this + 45);
    *(this + 45) = *(a2 + 45);
    v42 = *(a2 + 46);
    *(a2 + 45) = v41;
    v43 = *(this + 46);
    *(this + 46) = v42;
    *(a2 + 46) = v43;
    LODWORD(v41) = *(this + 94);
    *(this + 94) = *(a2 + 94);
    *(a2 + 94) = v41;
    LODWORD(v41) = *(this + 95);
    *(this + 95) = *(a2 + 95);
    *(a2 + 95) = v41;
    LODWORD(v41) = *(this + 96);
    *(this + 96) = *(a2 + 96);
    *(a2 + 96) = v41;
    LODWORD(v41) = *(this + 97);
    *(this + 97) = *(a2 + 97);
    *(a2 + 97) = v41;
    LODWORD(v41) = *(this + 98);
    *(this + 98) = *(a2 + 98);
    *(a2 + 98) = v41;
    LODWORD(v41) = *(this + 99);
    *(this + 99) = *(a2 + 99);
    *(a2 + 99) = v41;
    LODWORD(v41) = *(this + 100);
    *(this + 100) = *(a2 + 100);
    *(a2 + 100) = v41;
    LODWORD(v41) = *(this + 101);
    *(this + 101) = *(a2 + 101);
    *(a2 + 101) = v41;
    LODWORD(v41) = *(this + 102);
    *(this + 102) = *(a2 + 102);
    *(a2 + 102) = v41;
    LODWORD(v41) = *(this + 103);
    *(this + 103) = *(a2 + 103);
    *(a2 + 103) = v41;
    LODWORD(v41) = *(this + 104);
    *(this + 104) = *(a2 + 104);
    *(a2 + 104) = v41;
    LODWORD(v41) = *(this + 105);
    *(this + 105) = *(a2 + 105);
    *(a2 + 105) = v41;
    LODWORD(v41) = *(this + 106);
    *(this + 106) = *(a2 + 106);
    *(a2 + 106) = v41;
    LODWORD(v41) = *(this + 107);
    *(this + 107) = *(a2 + 107);
    *(a2 + 107) = v41;
    LODWORD(v41) = *(this + 108);
    *(this + 108) = *(a2 + 108);
    *(a2 + 108) = v41;
    LODWORD(v41) = *(this + 109);
    *(this + 109) = *(a2 + 109);
    *(a2 + 109) = v41;
    LODWORD(v41) = *(this + 110);
    *(this + 110) = *(a2 + 110);
    *(a2 + 110) = v41;
    LODWORD(v41) = *(this + 112);
    *(this + 112) = *(a2 + 112);
    *(a2 + 112) = v41;
    LODWORD(v41) = *(this + 113);
    *(this + 113) = *(a2 + 113);
    *(a2 + 113) = v41;
    LODWORD(v41) = *(this + 114);
    *(this + 114) = *(a2 + 114);
    *(a2 + 114) = v41;
    LODWORD(v41) = *(this + 115);
    *(this + 115) = *(a2 + 115);
    *(a2 + 115) = v41;
    LODWORD(v41) = *(this + 116);
    *(this + 116) = *(a2 + 116);
    *(a2 + 116) = v41;
    LODWORD(v41) = *(this + 117);
    *(this + 117) = *(a2 + 117);
    *(a2 + 117) = v41;
    LODWORD(v41) = *(this + 118);
    *(this + 118) = *(a2 + 118);
    *(a2 + 118) = v41;
    LODWORD(v41) = *(this + 119);
    *(this + 119) = *(a2 + 119);
    *(a2 + 119) = v41;
    LODWORD(v41) = *(this + 120);
    *(this + 120) = *(a2 + 120);
    *(a2 + 120) = v41;
    LODWORD(v41) = *(this + 121);
    *(this + 121) = *(a2 + 121);
    *(a2 + 121) = v41;
    LODWORD(v41) = *(this + 122);
    *(this + 122) = *(a2 + 122);
    *(a2 + 122) = v41;
    LODWORD(v41) = *(this + 123);
    *(this + 123) = *(a2 + 123);
    *(a2 + 123) = v41;
    LOBYTE(v41) = *(this + 445);
    *(this + 445) = *(a2 + 445);
    *(a2 + 445) = v41;
    LOBYTE(v41) = *(this + 446);
    *(this + 446) = *(a2 + 446);
    *(a2 + 446) = v41;
    LOBYTE(v41) = *(this + 447);
    *(this + 447) = *(a2 + 447);
    *(a2 + 447) = v41;
    v44 = *(this + 62);
    *(this + 62) = *(a2 + 62);
    v45 = *(a2 + 63);
    *(a2 + 62) = v44;
    v46 = *(this + 63);
    *(this + 63) = v45;
    *(a2 + 63) = v46;
    v47 = *(this + 64);
    *(this + 64) = *(a2 + 64);
    v48 = *(a2 + 65);
    *(a2 + 64) = v47;
    v49 = *(this + 65);
    *(this + 65) = v48;
    *(a2 + 65) = v49;
    LODWORD(v47) = *(this + 132);
    *(this + 132) = *(a2 + 132);
    *(a2 + 132) = v47;
    LODWORD(v47) = *(this + 133);
    *(this + 133) = *(a2 + 133);
    *(a2 + 133) = v47;
    LODWORD(v47) = *(this + 134);
    *(this + 134) = *(a2 + 134);
    *(a2 + 134) = v47;
    LODWORD(v47) = *(this + 135);
    *(this + 135) = *(a2 + 135);
    *(a2 + 135) = v47;
    LODWORD(v47) = *(this + 136);
    *(this + 136) = *(a2 + 136);
    *(a2 + 136) = v47;
    LODWORD(v47) = *(this + 137);
    *(this + 137) = *(a2 + 137);
    *(a2 + 137) = v47;
    LODWORD(v47) = *(this + 138);
    *(this + 138) = *(a2 + 138);
    *(a2 + 138) = v47;
    LODWORD(v47) = *(this + 139);
    *(this + 139) = *(a2 + 139);
    *(a2 + 139) = v47;
    LODWORD(v47) = *(this + 140);
    *(this + 140) = *(a2 + 140);
    *(a2 + 140) = v47;
    LODWORD(v47) = *(this + 141);
    *(this + 141) = *(a2 + 141);
    *(a2 + 141) = v47;
    LODWORD(v47) = *(this + 142);
    *(this + 142) = *(a2 + 142);
    *(a2 + 142) = v47;
    LODWORD(v47) = *(this + 143);
    *(this + 143) = *(a2 + 143);
    *(a2 + 143) = v47;
    LODWORD(v47) = *(this + 144);
    *(this + 144) = *(a2 + 144);
    *(a2 + 144) = v47;
    LODWORD(v47) = *(this + 145);
    *(this + 145) = *(a2 + 145);
    *(a2 + 145) = v47;
    LODWORD(v47) = *(this + 146);
    *(this + 146) = *(a2 + 146);
    *(a2 + 146) = v47;
    LODWORD(v47) = *(this + 147);
    *(this + 147) = *(a2 + 147);
    *(a2 + 147) = v47;
    LODWORD(v47) = *(this + 148);
    *(this + 148) = *(a2 + 148);
    *(a2 + 148) = v47;
    LODWORD(v47) = *(this + 149);
    *(this + 149) = *(a2 + 149);
    *(a2 + 149) = v47;
    LODWORD(v47) = *(this + 150);
    *(this + 150) = *(a2 + 150);
    *(a2 + 150) = v47;
    LODWORD(v47) = *(this + 151);
    *(this + 151) = *(a2 + 151);
    *(a2 + 151) = v47;
    LODWORD(v47) = *(this + 152);
    *(this + 152) = *(a2 + 152);
    *(a2 + 152) = v47;
    LODWORD(v47) = *(this + 153);
    *(this + 153) = *(a2 + 153);
    *(a2 + 153) = v47;
    LODWORD(v47) = *(this + 154);
    *(this + 154) = *(a2 + 154);
    *(a2 + 154) = v47;
    LODWORD(v47) = *(this + 155);
    *(this + 155) = *(a2 + 155);
    *(a2 + 155) = v47;
    LODWORD(v47) = *(this + 156);
    *(this + 156) = *(a2 + 156);
    *(a2 + 156) = v47;
    LODWORD(v47) = *(this + 157);
    *(this + 157) = *(a2 + 157);
    *(a2 + 157) = v47;
    LODWORD(v47) = *(this + 158);
    *(this + 158) = *(a2 + 158);
    *(a2 + 158) = v47;
    LODWORD(v47) = *(this + 159);
    *(this + 159) = *(a2 + 159);
    *(a2 + 159) = v47;
    v50 = *(this + 80);
    *(this + 80) = *(a2 + 80);
    v51 = *(a2 + 81);
    *(a2 + 80) = v50;
    v52 = *(this + 81);
    *(this + 81) = v51;
    *(a2 + 81) = v52;
    v53 = *(this + 82);
    *(this + 82) = *(a2 + 82);
    v54 = *(a2 + 83);
    *(a2 + 82) = v53;
    v55 = *(this + 83);
    *(this + 83) = v54;
    *(a2 + 83) = v55;
    v56 = *(this + 84);
    *(this + 84) = *(a2 + 84);
    v57 = *(a2 + 85);
    *(a2 + 84) = v56;
    v58 = *(this + 85);
    *(this + 85) = v57;
    *(a2 + 85) = v58;
    v59 = *(this + 86);
    *(this + 86) = *(a2 + 86);
    v60 = *(a2 + 87);
    *(a2 + 86) = v59;
    v61 = *(this + 87);
    *(this + 87) = v60;
    *(a2 + 87) = v61;
    v62 = *(this + 88);
    *(this + 88) = *(a2 + 88);
    v63 = *(a2 + 89);
    *(a2 + 88) = v62;
    v64 = *(this + 89);
    *(this + 89) = v63;
    *(a2 + 89) = v64;
    v65 = *(this + 90);
    *(this + 90) = *(a2 + 90);
    v66 = *(a2 + 91);
    *(a2 + 90) = v65;
    v67 = *(this + 91);
    *(this + 91) = v66;
    *(a2 + 91) = v67;
    v68 = *(this + 92);
    *(this + 92) = *(a2 + 92);
    v69 = *(a2 + 93);
    *(a2 + 92) = v68;
    v70 = *(this + 93);
    *(this + 93) = v69;
    *(a2 + 93) = v70;
    v71 = *(this + 94);
    *(this + 94) = *(a2 + 94);
    v72 = *(a2 + 95);
    *(a2 + 94) = v71;
    v73 = *(this + 95);
    *(this + 95) = v72;
    *(a2 + 95) = v73;
    v74 = *(this + 96);
    *(this + 96) = *(a2 + 96);
    v75 = *(a2 + 97);
    *(a2 + 96) = v74;
    v76 = *(this + 97);
    *(this + 97) = v75;
    *(a2 + 97) = v76;
    LODWORD(v74) = *(this + 196);
    *(this + 196) = *(a2 + 196);
    *(a2 + 196) = v74;
    LODWORD(v74) = *(this + 197);
    *(this + 197) = *(a2 + 197);
    *(a2 + 197) = v74;
    v77 = *(this + 99);
    *(this + 99) = *(a2 + 99);
    result = *(a2 + 100);
    *(a2 + 99) = v77;
    v79 = *(this + 100);
    *(this + 100) = result;
    *(a2 + 100) = v79;
    LODWORD(v77) = *(this + 202);
    *(this + 202) = *(a2 + 202);
    *(a2 + 202) = v77;
    LODWORD(v77) = *(this + 203);
    *(this + 203) = *(a2 + 203);
    *(a2 + 203) = v77;
    LODWORD(v77) = *(this + 204);
    *(this + 204) = *(a2 + 204);
    *(a2 + 204) = v77;
    LODWORD(v77) = *(this + 205);
    *(this + 205) = *(a2 + 205);
    *(a2 + 205) = v77;
    LODWORD(v77) = *(this + 206);
    *(this + 206) = *(a2 + 206);
    *(a2 + 206) = v77;
    LODWORD(v77) = *(this + 207);
    *(this + 207) = *(a2 + 207);
    *(a2 + 207) = v77;
    LODWORD(v77) = *(this + 208);
    *(this + 208) = *(a2 + 208);
    *(a2 + 208) = v77;
    LODWORD(v77) = *(this + 209);
    *(this + 209) = *(a2 + 209);
    *(a2 + 209) = v77;
    LODWORD(v77) = *(this + 210);
    *(this + 210) = *(a2 + 210);
    *(a2 + 210) = v77;
    LODWORD(v77) = *(this + 211);
    *(this + 211) = *(a2 + 211);
    *(a2 + 211) = v77;
    LODWORD(v77) = *(this + 212);
    *(this + 212) = *(a2 + 212);
    *(a2 + 212) = v77;
    LODWORD(v77) = *(this + 213);
    *(this + 213) = *(a2 + 213);
    *(a2 + 213) = v77;
    LODWORD(v77) = *(this + 214);
    *(this + 214) = *(a2 + 214);
    *(a2 + 214) = v77;
    LODWORD(v77) = *(this + 215);
    *(this + 215) = *(a2 + 215);
    *(a2 + 215) = v77;
    LODWORD(v77) = *(this + 217);
    *(this + 217) = *(a2 + 217);
    *(a2 + 217) = v77;
    LODWORD(v77) = *(this + 218);
    *(this + 218) = *(a2 + 218);
    *(a2 + 218) = v77;
    LODWORD(v77) = *(this + 219);
    *(this + 219) = *(a2 + 219);
    *(a2 + 219) = v77;
    LODWORD(v77) = *(this + 220);
    *(this + 220) = *(a2 + 220);
    *(a2 + 220) = v77;
    LODWORD(v77) = *(this + 221);
    *(this + 221) = *(a2 + 221);
    *(a2 + 221) = v77;
    LODWORD(v77) = *(this + 216);
    *(this + 216) = *(a2 + 216);
    *(a2 + 216) = v77;
  }

  return result;
}

void *awd::metrics::MotionPressureTemperature::SharedCtor(void *this)
{
  this[13] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

awd::metrics::MotionPressureTemperature *awd::metrics::MotionPressureTemperature::MotionPressureTemperature(awd::metrics::MotionPressureTemperature *this, const awd::metrics::MotionPressureTemperature *a2)
{
  *this = &unk_2A1D4F458;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 8) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  awd::metrics::MotionPressureTemperature::MergeFrom(this, a2);
  return this;
}

void sub_2964309E8(_Unwind_Exception *a1)
{
  v7 = *(v1 + 11);
  if (v7)
  {
    MEMORY[0x29C25A710](v7, 0x1000C8052888210);
  }

  awd::metrics::MotionPressureTemperature::MotionPressureTemperature(v5, v4, v3, v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionPressureTemperature::MergeFrom(awd::metrics::MotionPressureTemperature *this, const awd::metrics::MotionPressureTemperature *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 3, *(this + 8) + v4);
    memcpy((*(this + 3) + 4 * *(this + 8)), *(a2 + 3), 4 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 5, *(this + 12) + v5);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 7, *(this + 16) + v6);
    memcpy((*(this + 7) + 4 * *(this + 16)), *(a2 + 7), 4 * *(a2 + 16));
    *(this + 16) += *(a2 + 16);
  }

  v7 = *(a2 + 20);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 9, *(this + 20) + v7);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 11, *(this + 24) + v8);
    memcpy((*(this + 11) + 4 * *(this + 24)), *(a2 + 11), 4 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  LOBYTE(v9) = *(a2 + 108);
  if (v9)
  {
    if (*(a2 + 108))
    {
      v11 = *(a2 + 1);
      *(this + 27) |= 1u;
      *(this + 1) = v11;
      v9 = *(a2 + 27);
      if ((v9 & 2) == 0)
      {
LABEL_16:
        if ((v9 & 4) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 108) & 2) == 0)
    {
      goto LABEL_16;
    }

    v12 = *(a2 + 4);
    *(this + 27) |= 2u;
    *(this + 4) = v12;
    if ((*(a2 + 27) & 4) == 0)
    {
      return;
    }

LABEL_17:
    v10 = *(a2 + 5);
    *(this + 27) |= 4u;
    *(this + 5) = v10;
  }
}

void sub_296430C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionPressureTemperature::~MotionPressureTemperature(awd::metrics::MotionPressureTemperature *this)
{
  *this = &unk_2A1D4F458;
  v2 = *(this + 11);
  if (v2)
  {
    MEMORY[0x29C25A710](v2, 0x1000C8052888210);
  }

  v3 = *(this + 9);
  if (v3)
  {
    MEMORY[0x29C25A710](v3, 0x1000C8052888210);
  }

  v4 = *(this + 7);
  if (v4)
  {
    MEMORY[0x29C25A710](v4, 0x1000C8052888210);
  }

  v5 = *(this + 5);
  if (v5)
  {
    MEMORY[0x29C25A710](v5, 0x1000C8052888210);
  }

  v6 = *(this + 3);
  if (v6)
  {
    MEMORY[0x29C25A710](v6, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MotionPressureTemperature::~MotionPressureTemperature(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionPressureTemperature::default_instance(awd::metrics::MotionPressureTemperature *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionPressureTemperature::default_instance_;
  if (!awd::metrics::MotionPressureTemperature::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionPressureTemperature::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionPressureTemperature::Clear(uint64_t this)
{
  if (*(this + 108))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 80) = 0;
  *(this + 96) = 0;
  *(this + 108) = 0;
  return this;
}

uint64_t awd::metrics::MotionPressureTemperature::MergePartialFromCodedStream(awd::metrics::MotionPressureTemperature *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 <= 4)
          {
            break;
          }

          if (TagFallback >> 3 > 6)
          {
            if (v6 != 7)
            {
              if (v6 == 8)
              {
                if ((TagFallback & 7) == 0)
                {
                  v19 = *(a2 + 1);
                  v8 = *(a2 + 2);
                  goto LABEL_161;
                }

                if (v7 == 2)
                {
                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 88);
                  if (!result)
                  {
                    return result;
                  }

                  goto LABEL_178;
                }
              }

              goto LABEL_43;
            }

            if ((TagFallback & 7) != 0)
            {
              if (v7 == 2)
              {
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 72);
                if (!result)
                {
                  return result;
                }

                goto LABEL_156;
              }

              goto LABEL_43;
            }

            v16 = *(a2 + 1);
            v8 = *(a2 + 2);
            while (1)
            {
              v78 = 0;
              if (v16 >= v8 || *v16 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
                {
                  return 0;
                }
              }

              else
              {
                v78 = *v16;
                *(a2 + 1) = v16 + 1;
              }

              v57 = *(this + 20);
              if (v57 == *(this + 21))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 9, v57 + 1);
                v57 = *(this + 20);
              }

              v58 = v78;
              v59 = *(this + 9);
              *(this + 20) = v57 + 1;
              *(v59 + 4 * v57) = v58;
              v60 = *(this + 21) - *(this + 20);
              if (v60 >= 1)
              {
                v61 = v60 + 1;
                do
                {
                  v62 = *(a2 + 1);
                  v63 = *(a2 + 2);
                  if (v62 >= v63 || *v62 != 56)
                  {
                    break;
                  }

                  *(a2 + 1) = v62 + 1;
                  if ((v62 + 1) >= v63 || v62[1] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v78 = v62[1];
                    *(a2 + 1) = v62 + 2;
                  }

                  v64 = *(this + 20);
                  if (v64 >= *(this + 21))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v79);
                    v64 = *(this + 20);
                  }

                  v65 = v78;
                  v66 = *(this + 9);
                  *(this + 20) = v64 + 1;
                  *(v66 + 4 * v64) = v65;
                  --v61;
                }

                while (v61 > 1);
              }

LABEL_156:
              v23 = *(a2 + 1);
              v8 = *(a2 + 2);
              if (v23 >= v8)
              {
                break;
              }

              v67 = *v23;
              if (v67 == 64)
              {
                do
                {
                  v19 = v23 + 1;
                  *(a2 + 1) = v19;
LABEL_161:
                  v78 = 0;
                  if (v19 >= v8 || *v19 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v78 = *v19;
                    *(a2 + 1) = v19 + 1;
                  }

                  v68 = *(this + 24);
                  if (v68 == *(this + 25))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 11, v68 + 1);
                    v68 = *(this + 24);
                  }

                  v69 = v78;
                  v70 = *(this + 11);
                  *(this + 24) = v68 + 1;
                  *(v70 + 4 * v68) = v69;
                  v71 = *(this + 25) - *(this + 24);
                  if (v71 >= 1)
                  {
                    v72 = v71 + 1;
                    do
                    {
                      v73 = *(a2 + 1);
                      v74 = *(a2 + 2);
                      if (v73 >= v74 || *v73 != 64)
                      {
                        break;
                      }

                      *(a2 + 1) = v73 + 1;
                      if ((v73 + 1) >= v74 || v73[1] < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v78 = v73[1];
                        *(a2 + 1) = v73 + 2;
                      }

                      v75 = *(this + 24);
                      if (v75 >= *(this + 25))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v79);
                        v75 = *(this + 24);
                      }

                      v76 = v78;
                      v77 = *(this + 11);
                      *(this + 24) = v75 + 1;
                      *(v77 + 4 * v75) = v76;
                      --v72;
                    }

                    while (v72 > 1);
                  }

LABEL_178:
                  v23 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                while (v23 < v8 && *v23 == 64);
                if (v23 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }

                goto LABEL_1;
              }

              if (v67 != 56)
              {
                goto LABEL_1;
              }

LABEL_138:
              v16 = v23 + 1;
              *(a2 + 1) = v16;
            }
          }

          else
          {
            if (v6 != 5)
            {
              if (v6 == 6)
              {
                if ((TagFallback & 7) == 0)
                {
                  v17 = *(a2 + 1);
                  v8 = *(a2 + 2);
                  goto LABEL_117;
                }

                if (v7 == 2)
                {
                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 56);
                  if (!result)
                  {
                    return result;
                  }

                  goto LABEL_134;
                }
              }

              goto LABEL_43;
            }

            if ((TagFallback & 7) != 0)
            {
              if (v7 == 2)
              {
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 40);
                if (!result)
                {
                  return result;
                }

                goto LABEL_112;
              }

              goto LABEL_43;
            }

            v15 = *(a2 + 1);
            v8 = *(a2 + 2);
            while (1)
            {
              v78 = 0;
              if (v15 >= v8 || *v15 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
                {
                  return 0;
                }
              }

              else
              {
                v78 = *v15;
                *(a2 + 1) = v15 + 1;
              }

              v35 = *(this + 12);
              if (v35 == *(this + 13))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 5, v35 + 1);
                v35 = *(this + 12);
              }

              v36 = v78;
              v37 = *(this + 5);
              *(this + 12) = v35 + 1;
              *(v37 + 4 * v35) = v36;
              v38 = *(this + 13) - *(this + 12);
              if (v38 >= 1)
              {
                v39 = v38 + 1;
                do
                {
                  v40 = *(a2 + 1);
                  v41 = *(a2 + 2);
                  if (v40 >= v41 || *v40 != 40)
                  {
                    break;
                  }

                  *(a2 + 1) = v40 + 1;
                  if ((v40 + 1) >= v41 || v40[1] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v78 = v40[1];
                    *(a2 + 1) = v40 + 2;
                  }

                  v42 = *(this + 12);
                  if (v42 >= *(this + 13))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v79);
                    v42 = *(this + 12);
                  }

                  v43 = v78;
                  v44 = *(this + 5);
                  *(this + 12) = v42 + 1;
                  *(v44 + 4 * v42) = v43;
                  --v39;
                }

                while (v39 > 1);
              }

LABEL_112:
              v23 = *(a2 + 1);
              v8 = *(a2 + 2);
              if (v23 >= v8)
              {
                break;
              }

              v45 = *v23;
              if (v45 == 48)
              {
                do
                {
                  v17 = v23 + 1;
                  *(a2 + 1) = v17;
LABEL_117:
                  v78 = 0;
                  if (v17 >= v8 || *v17 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v78 = *v17;
                    *(a2 + 1) = v17 + 1;
                  }

                  v46 = *(this + 16);
                  if (v46 == *(this + 17))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 7, v46 + 1);
                    v46 = *(this + 16);
                  }

                  v47 = v78;
                  v48 = *(this + 7);
                  *(this + 16) = v46 + 1;
                  *(v48 + 4 * v46) = v47;
                  v49 = *(this + 17) - *(this + 16);
                  if (v49 >= 1)
                  {
                    v50 = v49 + 1;
                    do
                    {
                      v51 = *(a2 + 1);
                      v52 = *(a2 + 2);
                      if (v51 >= v52 || *v51 != 48)
                      {
                        break;
                      }

                      *(a2 + 1) = v51 + 1;
                      if ((v51 + 1) >= v52 || v51[1] < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v78 = v51[1];
                        *(a2 + 1) = v51 + 2;
                      }

                      v53 = *(this + 16);
                      if (v53 >= *(this + 17))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v79);
                        v53 = *(this + 16);
                      }

                      v54 = v78;
                      v55 = *(this + 7);
                      *(this + 16) = v53 + 1;
                      *(v55 + 4 * v53) = v54;
                      --v50;
                    }

                    while (v50 > 1);
                  }

LABEL_134:
                  v23 = *(a2 + 1);
                  v8 = *(a2 + 2);
                  if (v23 >= v8)
                  {
                    break;
                  }

                  v56 = *v23;
                  if (v56 == 56)
                  {
                    goto LABEL_138;
                  }
                }

                while (v56 == 48);
                goto LABEL_1;
              }

              if (v45 != 40)
              {
                goto LABEL_1;
              }

LABEL_94:
              v15 = v23 + 1;
              *(a2 + 1) = v15;
            }
          }
        }

        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_66;
          }

          goto LABEL_43;
        }

        if (v6 != 4)
        {
          goto LABEL_43;
        }

        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 24);
            if (!result)
            {
              return result;
            }

            goto LABEL_92;
          }

          goto LABEL_43;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v78 = 0;
          if (v18 >= v8 || *v18 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
            {
              return 0;
            }
          }

          else
          {
            v78 = *v18;
            *(a2 + 1) = v18 + 1;
          }

          v25 = *(this + 8);
          if (v25 == *(this + 9))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 3, v25 + 1);
            v25 = *(this + 8);
          }

          v26 = v78;
          v27 = *(this + 3);
          *(this + 8) = v25 + 1;
          *(v27 + 4 * v25) = v26;
          v28 = *(this + 9) - *(this + 8);
          if (v28 >= 1)
          {
            v29 = v28 + 1;
            do
            {
              v30 = *(a2 + 1);
              v31 = *(a2 + 2);
              if (v30 >= v31 || *v30 != 32)
              {
                break;
              }

              *(a2 + 1) = v30 + 1;
              if ((v30 + 1) >= v31 || v30[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
                {
                  return 0;
                }
              }

              else
              {
                v78 = v30[1];
                *(a2 + 1) = v30 + 2;
              }

              v32 = *(this + 8);
              if (v32 >= *(this + 9))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v79);
                v32 = *(this + 8);
              }

              v33 = v78;
              v34 = *(this + 3);
              *(this + 8) = v32 + 1;
              *(v34 + 4 * v32) = v33;
              --v29;
            }

            while (v29 > 1);
          }

LABEL_92:
          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v23 >= v8)
          {
            break;
          }

          v24 = *v23;
          if (v24 == 40)
          {
            goto LABEL_94;
          }

LABEL_73:
          if (v24 != 32)
          {
            goto LABEL_1;
          }

          v18 = v23 + 1;
          *(a2 + 1) = v18;
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_43;
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

      *(this + 27) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_58:
        if (v9 >= v8 || (v20 = *v9, v20 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v21 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v20;
          v21 = v9 + 1;
          *(a2 + 1) = v21;
        }

        *(this + 27) |= 2u;
        if (v21 < v8 && *v21 == 24)
        {
          v14 = v21 + 1;
          *(a2 + 1) = v14;
LABEL_66:
          if (v14 >= v8 || (v22 = *v14, v22 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v23 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v22;
            v23 = v14 + 1;
            *(a2 + 1) = v23;
          }

          *(this + 27) |= 4u;
          if (v23 < v8)
          {
            v24 = *v23;
            goto LABEL_73;
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_58;
    }

LABEL_43:
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

void sub_2964317F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::MotionPressureTemperature::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 108);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 108);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  if ((*(v5 + 108) & 4) != 0)
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
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 40) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 48));
  }

  if (*(v5 + 64) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 56) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 64));
  }

  if (*(v5 + 80) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(*(v5 + 72) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 80));
  }

  if (*(v5 + 96) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 88) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 96));
  }

  return this;
}

uint64_t awd::metrics::MotionPressureTemperature::ByteSize(awd::metrics::MotionPressureTemperature *this)
{
  LOBYTE(v2) = *(this + 108);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (*(this + 108))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 27);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 108) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 27);
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
  v35 = v3;
  v8 = *(this + 8);
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

      v10 += v12;
      ++v9;
    }

    while (v9 < v8);
  }

  v13 = *(this + 12);
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
      v16 = *(*(this + 5) + 4 * v14);
      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(this + 12);
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

  v18 = *(this + 16);
  if (v18 < 1)
  {
    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(*(this + 7) + 4 * v19);
      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
        v18 = *(this + 16);
      }

      else
      {
        v22 = 1;
      }

      v20 += v22;
      ++v19;
    }

    while (v19 < v18);
  }

  v23 = *(this + 20);
  if (v23 < 1)
  {
    v25 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = *(*(this + 9) + 4 * v24);
      if (v26 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
        v23 = *(this + 20);
      }

      else
      {
        v27 = 1;
      }

      v25 += v27;
      ++v24;
    }

    while (v24 < v23);
  }

  v34 = v8;
  v28 = *(this + 24);
  if (v28 < 1)
  {
    v30 = 0;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = *(*(this + 11) + 4 * v29);
      if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
        v28 = *(this + 24);
      }

      else
      {
        v32 = 1;
      }

      v30 += v32;
      ++v29;
    }

    while (v29 < v28);
  }

  result = (v10 + v35 + v34 + v15 + v13 + v20 + v18 + v25 + v23 + v30 + v28);
  *(this + 26) = result;
  return result;
}

void awd::metrics::MotionPressureTemperature::CheckTypeAndMergeFrom(awd::metrics::MotionPressureTemperature *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::MotionPressureTemperature::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionPressureTemperature::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionPressureTemperature::CopyFrom(awd::metrics::MotionPressureTemperature *this, const awd::metrics::MotionPressureTemperature *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionPressureTemperature::MergeFrom(this, a2);
  }
}

double awd::metrics::MotionPressureTemperature::Swap(awd::metrics::MotionPressureTemperature *this, awd::metrics::MotionPressureTemperature *a2)
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
    v9 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    v10 = *(a2 + 8);
    *(a2 + 7) = v9;
    v11 = *(this + 8);
    *(this + 8) = v10;
    *(a2 + 8) = v11;
    v12 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    v13 = *(a2 + 10);
    *(a2 + 9) = v12;
    v14 = *(this + 10);
    *(this + 10) = v13;
    *(a2 + 10) = v14;
    v15 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    result = *(a2 + 12);
    *(a2 + 11) = v15;
    v17 = *(this + 12);
    *(this + 12) = result;
    *(a2 + 12) = v17;
    LODWORD(v15) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v15;
    LODWORD(v15) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v15;
  }

  return result;
}

double awd::metrics::MotionElevationAllDay::SharedCtor(awd::metrics::MotionElevationAllDay *this)
{
  *(this + 1) = 0;
  *&result = 255;
  *(this + 8) = 255;
  *(this + 324) = 0;
  *(this + 83) = 0;
  return result;
}

awd::metrics::MotionElevationAllDay *awd::metrics::MotionElevationAllDay::MotionElevationAllDay(awd::metrics::MotionElevationAllDay *this, const awd::metrics::MotionElevationAllDay *a2)
{
  *this = &unk_2A1D4F4D0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 24) = 0;
  *(this + 23) = 0;
  *(this + 27) = 0;
  *(this + 26) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 72) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 8) = 255;
  *(this + 81) = 0;
  *(this + 41) = 0;
  awd::metrics::MotionElevationAllDay::MergeFrom(this, a2);
  return this;
}

void sub_296431FB0(_Unwind_Exception *a1)
{
  v8 = *(v1 + 38);
  if (v8)
  {
    MEMORY[0x29C25A710](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 35);
  if (v9)
  {
    MEMORY[0x29C25A710](v9, 0x1000C8052888210);
  }

  v10 = *(v1 + 32);
  if (v10)
  {
    MEMORY[0x29C25A710](v10, 0x1000C8052888210);
  }

  if (*v6)
  {
    MEMORY[0x29C25A710](*v6, 0x1000C8052888210);
  }

  if (*v5)
  {
    MEMORY[0x29C25A710](*v5, 0x1000C8052888210);
  }

  if (*v4)
  {
    MEMORY[0x29C25A710](*v4, 0x1000C8052888210);
  }

  if (*v3)
  {
    MEMORY[0x29C25A710](*v3, 0x1000C8052888210);
  }

  v11 = *(v1 + 17);
  if (v11)
  {
    MEMORY[0x29C25A710](v11, 0x1000C8052888210);
  }

  v12 = *(v1 + 15);
  if (v12)
  {
    MEMORY[0x29C25A710](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 13);
  if (v13)
  {
    MEMORY[0x29C25A710](v13, 0x1000C8052888210);
  }

  v14 = *(v1 + 11);
  if (v14)
  {
    MEMORY[0x29C25A710](v14, 0x1000C8052888210);
  }

  if (*v2)
  {
    MEMORY[0x29C25A710](*v2, 0x1000C8052888210);
  }

  v15 = *(v1 + 6);
  if (v15)
  {
    MEMORY[0x29C25A710](v15, 0x1000C8052888210);
  }

  v16 = *(v1 + 4);
  if (v16)
  {
    MEMORY[0x29C25A710](v16, 0x1000C8052888210);
  }

  v17 = *(v1 + 2);
  if (v17)
  {
    MEMORY[0x29C25A710](v17, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionElevationAllDay::MergeFrom(awd::metrics::MotionElevationAllDay *this, const awd::metrics::MotionElevationAllDay *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
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

  v7 = *(a2 + 20);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 9, *(this + 20) + v7);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 11, *(this + 24) + v8);
    memcpy((*(this + 11) + 4 * *(this + 24)), *(a2 + 11), 4 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  v9 = *(a2 + 28);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 13, *(this + 28) + v9);
    memcpy((*(this + 13) + 4 * *(this + 28)), *(a2 + 13), 4 * *(a2 + 28));
    *(this + 28) += *(a2 + 28);
  }

  v10 = *(a2 + 32);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 15, *(this + 32) + v10);
    memcpy((*(this + 15) + 4 * *(this + 32)), *(a2 + 15), 4 * *(a2 + 32));
    *(this + 32) += *(a2 + 32);
  }

  v11 = *(a2 + 36);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 17, *(this + 36) + v11);
    memcpy((*(this + 17) + 4 * *(this + 36)), *(a2 + 17), 4 * *(a2 + 36));
    *(this + 36) += *(a2 + 36);
  }

  v12 = *(a2 + 42);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, *(this + 42) + v12);
    memcpy((*(this + 20) + 4 * *(this + 42)), *(a2 + 20), 4 * *(a2 + 42));
    *(this + 42) += *(a2 + 42);
  }

  v13 = *(a2 + 48);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 23, *(this + 48) + v13);
    memcpy((*(this + 23) + 4 * *(this + 48)), *(a2 + 23), 4 * *(a2 + 48));
    *(this + 48) += *(a2 + 48);
  }

  v14 = *(a2 + 54);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 26, *(this + 54) + v14);
    memcpy((*(this + 26) + 4 * *(this + 54)), *(a2 + 26), 4 * *(a2 + 54));
    *(this + 54) += *(a2 + 54);
  }

  v15 = *(a2 + 60);
  if (v15)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 29, *(this + 60) + v15);
    memcpy((*(this + 29) + 4 * *(this + 60)), *(a2 + 29), 4 * *(a2 + 60));
    *(this + 60) += *(a2 + 60);
  }

  v16 = *(a2 + 66);
  if (v16)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, *(this + 66) + v16);
    memcpy((*(this + 32) + 4 * *(this + 66)), *(a2 + 32), 4 * *(a2 + 66));
    *(this + 66) += *(a2 + 66);
  }

  v17 = *(a2 + 72);
  if (v17)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 35, *(this + 72) + v17);
    memcpy((*(this + 35) + 4 * *(this + 72)), *(a2 + 35), 4 * *(a2 + 72));
    *(this + 72) += *(a2 + 72);
  }

  v18 = *(a2 + 78);
  if (v18)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 38, *(this + 78) + v18);
    memcpy((*(this + 38) + 4 * *(this + 78)), *(a2 + 38), 4 * *(a2 + 78));
    *(this + 78) += *(a2 + 78);
  }

  v19 = *(a2 + 83);
  if (v19)
  {
    if (v19)
    {
      v20 = *(a2 + 1);
      *(this + 83) |= 1u;
      *(this + 1) = v20;
      v19 = *(a2 + 83);
    }

    if ((v19 & 2) != 0)
    {
      v21 = *(a2 + 16);
      if (v21 >= 2 && v21 != 255)
      {
        awd::metrics::MotionElevationAllDay::MergeFrom();
      }

      *(this + 83) |= 2u;
      *(this + 16) = v21;
      v19 = *(a2 + 83);
    }

    if ((v19 & 0x80) != 0)
    {
      v22 = *(a2 + 17);
      *(this + 83) |= 0x80u;
      *(this + 17) = v22;
      v19 = *(a2 + 83);
    }
  }

  if ((v19 & 0x400) != 0)
  {
    v23 = *(a2 + 81);
    *(this + 83) |= 0x400u;
    *(this + 81) = v23;
  }
}

void sub_2964325C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionElevationAllDay::~MotionElevationAllDay(awd::metrics::MotionElevationAllDay *this)
{
  *this = &unk_2A1D4F4D0;
  v2 = *(this + 38);
  if (v2)
  {
    MEMORY[0x29C25A710](v2, 0x1000C8052888210);
  }

  v3 = *(this + 35);
  if (v3)
  {
    MEMORY[0x29C25A710](v3, 0x1000C8052888210);
  }

  v4 = *(this + 32);
  if (v4)
  {
    MEMORY[0x29C25A710](v4, 0x1000C8052888210);
  }

  v5 = *(this + 29);
  if (v5)
  {
    MEMORY[0x29C25A710](v5, 0x1000C8052888210);
  }

  v6 = *(this + 26);
  if (v6)
  {
    MEMORY[0x29C25A710](v6, 0x1000C8052888210);
  }

  v7 = *(this + 23);
  if (v7)
  {
    MEMORY[0x29C25A710](v7, 0x1000C8052888210);
  }

  v8 = *(this + 20);
  if (v8)
  {
    MEMORY[0x29C25A710](v8, 0x1000C8052888210);
  }

  v9 = *(this + 17);
  if (v9)
  {
    MEMORY[0x29C25A710](v9, 0x1000C8052888210);
  }

  v10 = *(this + 15);
  if (v10)
  {
    MEMORY[0x29C25A710](v10, 0x1000C8052888210);
  }

  v11 = *(this + 13);
  if (v11)
  {
    MEMORY[0x29C25A710](v11, 0x1000C8052888210);
  }

  v12 = *(this + 11);
  if (v12)
  {
    MEMORY[0x29C25A710](v12, 0x1000C8052888210);
  }

  v13 = *(this + 9);
  if (v13)
  {
    MEMORY[0x29C25A710](v13, 0x1000C8052888210);
  }

  v14 = *(this + 6);
  if (v14)
  {
    MEMORY[0x29C25A710](v14, 0x1000C8052888210);
  }

  v15 = *(this + 4);
  if (v15)
  {
    MEMORY[0x29C25A710](v15, 0x1000C8052888210);
  }

  v16 = *(this + 2);
  if (v16)
  {
    MEMORY[0x29C25A710](v16, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MotionElevationAllDay::~MotionElevationAllDay(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionElevationAllDay::default_instance(awd::metrics::MotionElevationAllDay *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionElevationAllDay::default_instance_;
  if (!awd::metrics::MotionElevationAllDay::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionElevationAllDay::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionElevationAllDay::Clear(uint64_t this)
{
  v1 = *(this + 332);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 64) = 255;
  }

  if ((v1 & 0x3FC00) != 0)
  {
    *(this + 324) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 80) = 0;
  *(this + 96) = 0;
  *(this + 112) = 0;
  *(this + 128) = 0;
  *(this + 144) = 0;
  *(this + 168) = 0;
  *(this + 192) = 0;
  *(this + 216) = 0;
  *(this + 240) = 0;
  *(this + 264) = 0;
  *(this + 288) = 0;
  *(this + 312) = 0;
  *(this + 332) = 0;
  return this;
}

uint64_t awd::metrics::MotionElevationAllDay::MergePartialFromCodedStream(awd::metrics::MotionElevationAllDay *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = (this + 324);
LABEL_2:
  while (2)
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
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_69;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        *(this + 83) |= 1u;
        if (v11 < v8 && *v11 == 24)
        {
          v21 = v11 + 1;
          *(a2 + 1) = v21;
          goto LABEL_101;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_69;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_101:
        v162[0] = 0;
        if (v21 >= v8 || (v39 = *v21, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v162);
          if (!result)
          {
            return result;
          }

          v39 = v162[0];
        }

        else
        {
          *(a2 + 1) = v21 + 1;
        }

        if (v39 < 2 || v39 == 255)
        {
          *(this + 83) |= 2u;
          *(this + 16) = v39;
        }

        v40 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v40 >= v16)
        {
          continue;
        }

        v41 = *v40;
        goto LABEL_111;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 16);
            if (!result)
            {
              return result;
            }

            goto LABEL_130;
          }

          goto LABEL_69;
        }

        v33 = *(a2 + 1);
        v16 = *(a2 + 2);
        while (1)
        {
          v161 = 0;
          if (v33 >= v16 || *v33 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
            {
              return 0;
            }
          }

          else
          {
            v161 = *v33;
            *(a2 + 1) = v33 + 1;
          }

          v42 = *(this + 6);
          if (v42 == *(this + 7))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v42 + 1);
            v42 = *(this + 6);
          }

          v43 = v161;
          v44 = *(this + 2);
          *(this + 6) = v42 + 1;
          *(v44 + 4 * v42) = v43;
          v45 = *(this + 7) - *(this + 6);
          if (v45 >= 1)
          {
            v46 = v45 + 1;
            do
            {
              v47 = *(a2 + 1);
              v48 = *(a2 + 2);
              if (v47 >= v48 || *v47 != 32)
              {
                break;
              }

              *(a2 + 1) = v47 + 1;
              if ((v47 + 1) >= v48 || v47[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
                {
                  return 0;
                }
              }

              else
              {
                v161 = v47[1];
                *(a2 + 1) = v47 + 2;
              }

              v49 = *(this + 6);
              if (v49 >= *(this + 7))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v162);
                v49 = *(this + 6);
              }

              v50 = v161;
              v51 = *(this + 2);
              *(this + 6) = v49 + 1;
              *(v51 + 4 * v49) = v50;
              --v46;
            }

            while (v46 > 1);
          }

LABEL_130:
          v40 = *(a2 + 1);
          v16 = *(a2 + 2);
          if (v40 >= v16)
          {
            goto LABEL_2;
          }

          v41 = *v40;
          if (v41 == 40)
          {
            goto LABEL_132;
          }

LABEL_111:
          if (v41 != 32)
          {
            goto LABEL_2;
          }

          v33 = (v40 + 1);
          *(a2 + 1) = v33;
        }

      case 5u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 32);
            if (!result)
            {
              return result;
            }

            goto LABEL_150;
          }

          goto LABEL_69;
        }

        v32 = *(a2 + 1);
        v16 = *(a2 + 2);
        while (1)
        {
          v161 = 0;
          if (v32 >= v16 || *v32 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
            {
              return 0;
            }
          }

          else
          {
            v161 = *v32;
            *(a2 + 1) = v32 + 1;
          }

          v52 = *(this + 10);
          if (v52 == *(this + 11))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v52 + 1);
            v52 = *(this + 10);
          }

          v53 = v161;
          v54 = *(this + 4);
          *(this + 10) = v52 + 1;
          *(v54 + 4 * v52) = v53;
          v55 = *(this + 11) - *(this + 10);
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
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
                {
                  return 0;
                }
              }

              else
              {
                v161 = v57[1];
                *(a2 + 1) = v57 + 2;
              }

              v59 = *(this + 10);
              if (v59 >= *(this + 11))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v162);
                v59 = *(this + 10);
              }

              v60 = v161;
              v61 = *(this + 4);
              *(this + 10) = v59 + 1;
              *(v61 + 4 * v59) = v60;
              --v56;
            }

            while (v56 > 1);
          }

LABEL_150:
          v40 = *(a2 + 1);
          v16 = *(a2 + 2);
          if (v40 >= v16)
          {
            goto LABEL_2;
          }

          v62 = *v40;
          if (v62 == 48)
          {
            goto LABEL_154;
          }

          if (v62 != 40)
          {
            goto LABEL_2;
          }

LABEL_132:
          v32 = (v40 + 1);
          *(a2 + 1) = v32;
        }

      case 6u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 48);
            if (!result)
            {
              return result;
            }

            goto LABEL_172;
          }

          goto LABEL_69;
        }

        v30 = *(a2 + 1);
        v16 = *(a2 + 2);
        while (1)
        {
          v161 = 0;
          if (v30 >= v16 || *v30 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
            {
              return 0;
            }
          }

          else
          {
            v161 = *v30;
            *(a2 + 1) = v30 + 1;
          }

          v63 = *(this + 14);
          if (v63 == *(this + 15))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v63 + 1);
            v63 = *(this + 14);
          }

          v64 = v161;
          v65 = *(this + 6);
          *(this + 14) = v63 + 1;
          *(v65 + 4 * v63) = v64;
          v66 = *(this + 15) - *(this + 14);
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
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
                {
                  return 0;
                }
              }

              else
              {
                v161 = v68[1];
                *(a2 + 1) = v68 + 2;
              }

              v70 = *(this + 14);
              if (v70 >= *(this + 15))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v162);
                v70 = *(this + 14);
              }

              v71 = v161;
              v72 = *(this + 6);
              *(this + 14) = v70 + 1;
              *(v72 + 4 * v70) = v71;
              --v67;
            }

            while (v67 > 1);
          }

LABEL_172:
          v40 = *(a2 + 1);
          v16 = *(a2 + 2);
          if (v40 >= v16)
          {
            goto LABEL_2;
          }

          v73 = *v40;
          if (v73 == 56)
          {
            goto LABEL_176;
          }

          if (v73 != 48)
          {
            goto LABEL_2;
          }

LABEL_154:
          v30 = (v40 + 1);
          *(a2 + 1) = v30;
        }

      case 7u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 72);
            if (!result)
            {
              return result;
            }

            goto LABEL_194;
          }

          goto LABEL_69;
        }

        v31 = *(a2 + 1);
        v16 = *(a2 + 2);
        while (1)
        {
          v161 = 0;
          if (v31 >= v16 || *v31 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
            {
              return 0;
            }
          }

          else
          {
            v161 = *v31;
            *(a2 + 1) = v31 + 1;
          }

          v74 = *(this + 20);
          if (v74 == *(this + 21))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 9, v74 + 1);
            v74 = *(this + 20);
          }

          v75 = v161;
          v76 = *(this + 9);
          *(this + 20) = v74 + 1;
          *(v76 + 4 * v74) = v75;
          v77 = *(this + 21) - *(this + 20);
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
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
                {
                  return 0;
                }
              }

              else
              {
                v161 = v79[1];
                *(a2 + 1) = v79 + 2;
              }

              v81 = *(this + 20);
              if (v81 >= *(this + 21))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v162);
                v81 = *(this + 20);
              }

              v82 = v161;
              v83 = *(this + 9);
              *(this + 20) = v81 + 1;
              *(v83 + 4 * v81) = v82;
              --v78;
            }

            while (v78 > 1);
          }

LABEL_194:
          v40 = *(a2 + 1);
          v16 = *(a2 + 2);
          if (v40 >= v16)
          {
            goto LABEL_2;
          }

          v84 = *v40;
          if (v84 == 64)
          {
            goto LABEL_198;
          }

          if (v84 != 56)
          {
            goto LABEL_2;
          }

LABEL_176:
          v31 = (v40 + 1);
          *(a2 + 1) = v31;
        }

      case 8u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 88);
            if (!result)
            {
              return result;
            }

            goto LABEL_216;
          }

          goto LABEL_69;
        }

        v34 = *(a2 + 1);
        v16 = *(a2 + 2);
        while (1)
        {
          v161 = 0;
          if (v34 >= v16 || *v34 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
            {
              return 0;
            }
          }

          else
          {
            v161 = *v34;
            *(a2 + 1) = v34 + 1;
          }

          v85 = *(this + 24);
          if (v85 == *(this + 25))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 11, v85 + 1);
            v85 = *(this + 24);
          }

          v86 = v161;
          v87 = *(this + 11);
          *(this + 24) = v85 + 1;
          *(v87 + 4 * v85) = v86;
          v88 = *(this + 25) - *(this + 24);
          if (v88 >= 1)
          {
            v89 = v88 + 1;
            do
            {
              v90 = *(a2 + 1);
              v91 = *(a2 + 2);
              if (v90 >= v91 || *v90 != 64)
              {
                break;
              }

              *(a2 + 1) = v90 + 1;
              if ((v90 + 1) >= v91 || v90[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
                {
                  return 0;
                }
              }

              else
              {
                v161 = v90[1];
                *(a2 + 1) = v90 + 2;
              }

              v92 = *(this + 24);
              if (v92 >= *(this + 25))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v162);
                v92 = *(this + 24);
              }

              v93 = v161;
              v94 = *(this + 11);
              *(this + 24) = v92 + 1;
              *(v94 + 4 * v92) = v93;
              --v89;
            }

            while (v89 > 1);
          }

LABEL_216:
          v40 = *(a2 + 1);
          v16 = *(a2 + 2);
          if (v40 >= v16)
          {
            goto LABEL_2;
          }

          v95 = *v40;
          if (v95 == 72)
          {
            v23 = (v40 + 1);
            *(a2 + 1) = v23;
LABEL_221:
            v162[0] = 0;
            if (v23 >= v16 || (v96 = *v23, (v96 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v162);
              if (!result)
              {
                return result;
              }

              v96 = v162[0];
              v97 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              v97 = (v23 + 1);
              *(a2 + 1) = v97;
            }

            *(this + 17) = v96;
            *(this + 83) |= 0x80u;
            if (v97 < v16)
            {
              v98 = *v97;
              goto LABEL_228;
            }

            goto LABEL_2;
          }

          if (v95 != 64)
          {
            goto LABEL_2;
          }

LABEL_198:
          v34 = (v40 + 1);
          *(a2 + 1) = v34;
        }

      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_69;
        }

        v23 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_221;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 104);
            if (!result)
            {
              return result;
            }

            goto LABEL_247;
          }

          goto LABEL_69;
        }

        v38 = *(a2 + 1);
        v16 = *(a2 + 2);
        while (1)
        {
          v161 = 0;
          if (v38 >= v16 || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
            {
              return 0;
            }
          }

          else
          {
            v161 = *v38;
            *(a2 + 1) = v38 + 1;
          }

          v99 = *(this + 28);
          if (v99 == *(this + 29))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 13, v99 + 1);
            v99 = *(this + 28);
          }

          v100 = v161;
          v101 = *(this + 13);
          *(this + 28) = v99 + 1;
          *(v101 + 4 * v99) = v100;
          v102 = *(this + 29) - *(this + 28);
          if (v102 >= 1)
          {
            v103 = v102 + 1;
            do
            {
              v104 = *(a2 + 1);
              v105 = *(a2 + 2);
              if (v104 >= v105 || *v104 != 80)
              {
                break;
              }

              *(a2 + 1) = v104 + 1;
              if ((v104 + 1) >= v105 || v104[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
                {
                  return 0;
                }
              }

              else
              {
                v161 = v104[1];
                *(a2 + 1) = v104 + 2;
              }

              v106 = *(this + 28);
              if (v106 >= *(this + 29))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v162);
                v106 = *(this + 28);
              }

              v107 = v161;
              v108 = *(this + 13);
              *(this + 28) = v106 + 1;
              *(v108 + 4 * v106) = v107;
              --v103;
            }

            while (v103 > 1);
          }

LABEL_247:
          v97 = *(a2 + 1);
          v16 = *(a2 + 2);
          if (v97 >= v16)
          {
            goto LABEL_2;
          }

          v98 = *v97;
          if (v98 == 88)
          {
            goto LABEL_249;
          }

LABEL_228:
          if (v98 != 80)
          {
            goto LABEL_2;
          }

          v38 = (v97 + 1);
          *(a2 + 1) = v38;
        }

      case 0xBu:
        if ((TagFallback & 7) == 0)
        {
          v35 = *(a2 + 1);
          v16 = *(a2 + 2);
          while (1)
          {
            v161 = 0;
            if (v35 >= v16 || *v35 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
              {
                return 0;
              }
            }

            else
            {
              v161 = *v35;
              *(a2 + 1) = v35 + 1;
            }

            v109 = *(this + 32);
            if (v109 == *(this + 33))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 15, v109 + 1);
              v109 = *(this + 32);
            }

            v110 = v161;
            v111 = *(this + 15);
            *(this + 32) = v109 + 1;
            *(v111 + 4 * v109) = v110;
            v112 = *(this + 33) - *(this + 32);
            if (v112 >= 1)
            {
              v113 = v112 + 1;
              do
              {
                v114 = *(a2 + 1);
                v115 = *(a2 + 2);
                if (v114 >= v115 || *v114 != 88)
                {
                  break;
                }

                *(a2 + 1) = v114 + 1;
                if ((v114 + 1) >= v115 || v114[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
                  {
                    return 0;
                  }
                }

                else
                {
                  v161 = v114[1];
                  *(a2 + 1) = v114 + 2;
                }

                v116 = *(this + 32);
                if (v116 >= *(this + 33))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v162);
                  v116 = *(this + 32);
                }

                v117 = v161;
                v118 = *(this + 15);
                *(this + 32) = v116 + 1;
                *(v118 + 4 * v116) = v117;
                --v113;
              }

              while (v113 > 1);
            }

LABEL_267:
            v97 = *(a2 + 1);
            v16 = *(a2 + 2);
            if (v97 >= v16)
            {
              goto LABEL_2;
            }

            v119 = *v97;
            if (v119 == 96)
            {
              v17 = (v97 + 1);
              *(a2 + 1) = v17;
LABEL_272:
              if (v17 >= v16 || (v120 = *v17, (v120 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v4);
                if (!result)
                {
                  return result;
                }

                v121 = *(a2 + 1);
                v16 = *(a2 + 2);
              }

              else
              {
                *v4 = v120;
                v121 = v17 + 1;
                *(a2 + 1) = v121;
              }

              *(this + 83) |= 0x400u;
              if (v121 < v16 && *v121 == 106)
              {
                v22 = v121 + 1;
                *(a2 + 1) = v22;
                goto LABEL_280;
              }

              goto LABEL_2;
            }

            if (v119 != 88)
            {
              goto LABEL_2;
            }

LABEL_249:
            v35 = (v97 + 1);
            *(a2 + 1) = v35;
          }
        }

        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 120);
          if (!result)
          {
            return result;
          }

          goto LABEL_267;
        }

LABEL_69:
        if (v7 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_69;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_272;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 != 2)
          {
            goto LABEL_69;
          }

          v22 = *(a2 + 1);
          v16 = *(a2 + 2);
LABEL_280:
          v162[0] = 0;
          if (v22 >= v16 || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v162))
            {
              return 0;
            }
          }

          else
          {
            v162[0] = *v22;
            *(a2 + 1) = v22 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v161 = 0;
            v122 = *(a2 + 1);
            if (v122 >= *(a2 + 2) || *v122 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
              {
                return 0;
              }
            }

            else
            {
              v161 = *v122;
              *(a2 + 1) = v122 + 1;
            }

            v123 = *(this + 36);
            if (v123 == *(this + 37))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 17, v123 + 1);
              v123 = *(this + 36);
            }

            v124 = v161;
            v125 = *(this + 17);
            *(this + 36) = v123 + 1;
            *(v125 + 4 * v123) = v124;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        }

        else
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x6Au, a2, this + 136);
          if (!result)
          {
            return result;
          }
        }

        v126 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v126 >= v19 || *v126 != 114)
        {
          continue;
        }

        v20 = v126 + 1;
        *(a2 + 1) = v20;
LABEL_297:
        v162[0] = 0;
        if (v20 >= v19 || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v162))
          {
            return 0;
          }
        }

        else
        {
          v162[0] = *v20;
          *(a2 + 1) = v20 + 1;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
        {
          v161 = 0;
          v127 = *(a2 + 1);
          if (v127 >= *(a2 + 2) || *v127 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
            {
              return 0;
            }
          }

          else
          {
            v161 = *v127;
            *(a2 + 1) = v127 + 1;
          }

          v128 = *(this + 42);
          if (v128 == *(this + 43))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v128 + 1);
            v128 = *(this + 42);
          }

          v129 = v161;
          v130 = *(this + 20);
          *(this + 42) = v128 + 1;
          *(v130 + 4 * v128) = v129;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
LABEL_311:
        v131 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v131 >= v14 || *v131 != 122)
        {
          continue;
        }

        v15 = v131 + 1;
        *(a2 + 1) = v15;
LABEL_314:
        v162[0] = 0;
        if (v15 >= v14 || *v15 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v162))
          {
            return 0;
          }
        }

        else
        {
          v162[0] = *v15;
          *(a2 + 1) = v15 + 1;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
        {
          v161 = 0;
          v132 = *(a2 + 1);
          if (v132 >= *(a2 + 2) || *v132 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
            {
              return 0;
            }
          }

          else
          {
            v161 = *v132;
            *(a2 + 1) = v132 + 1;
          }

          v133 = *(this + 48);
          if (v133 == *(this + 49))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 23, v133 + 1);
            v133 = *(this + 48);
          }

          v134 = v161;
          v135 = *(this + 23);
          *(this + 48) = v133 + 1;
          *(v135 + 4 * v133) = v134;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
LABEL_328:
        v136 = *(a2 + 1);
        v24 = *(a2 + 2);
        if (v24 - v136 < 2 || *v136 != 130 || v136[1] != 1)
        {
          continue;
        }

        v25 = (v136 + 2);
        *(a2 + 1) = v25;
        goto LABEL_332;
      case 0xEu:
        if ((TagFallback & 7) == 0)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x72u, a2, this + 160);
          if (!result)
          {
            return result;
          }

          goto LABEL_311;
        }

        if (v7 != 2)
        {
          goto LABEL_69;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_297;
      case 0xFu:
        if ((TagFallback & 7) == 0)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x7Au, a2, this + 184);
          if (!result)
          {
            return result;
          }

          goto LABEL_328;
        }

        if (v7 != 2)
        {
          goto LABEL_69;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_314;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 != 2)
          {
            goto LABEL_69;
          }

          v25 = *(a2 + 1);
          v24 = *(a2 + 2);
LABEL_332:
          v162[0] = 0;
          if (v25 >= v24 || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v162))
            {
              return 0;
            }
          }

          else
          {
            v162[0] = *v25;
            *(a2 + 1) = v25 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v161 = 0;
            v137 = *(a2 + 1);
            if (v137 >= *(a2 + 2) || *v137 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
              {
                return 0;
              }
            }

            else
            {
              v161 = *v137;
              *(a2 + 1) = v137 + 1;
            }

            v138 = *(this + 54);
            if (v138 == *(this + 55))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 26, v138 + 1);
              v138 = *(this + 54);
            }

            v139 = v161;
            v140 = *(this + 26);
            *(this + 54) = v138 + 1;
            *(v140 + 4 * v138) = v139;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        }

        else
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(2, 0x82u, a2, this + 208);
          if (!result)
          {
            return result;
          }
        }

        v141 = *(a2 + 1);
        v26 = *(a2 + 2);
        if (v26 - v141 < 2 || *v141 != 138 || v141[1] != 1)
        {
          continue;
        }

        v27 = (v141 + 2);
        *(a2 + 1) = v27;
        goto LABEL_350;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 != 2)
          {
            goto LABEL_69;
          }

          v27 = *(a2 + 1);
          v26 = *(a2 + 2);
LABEL_350:
          v162[0] = 0;
          if (v27 >= v26 || *v27 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v162))
            {
              return 0;
            }
          }

          else
          {
            v162[0] = *v27;
            *(a2 + 1) = v27 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v161 = 0;
            v142 = *(a2 + 1);
            if (v142 >= *(a2 + 2) || *v142 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
              {
                return 0;
              }
            }

            else
            {
              v161 = *v142;
              *(a2 + 1) = v142 + 1;
            }

            v143 = *(this + 60);
            if (v143 == *(this + 61))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 29, v143 + 1);
              v143 = *(this + 60);
            }

            v144 = v161;
            v145 = *(this + 29);
            *(this + 60) = v143 + 1;
            *(v145 + 4 * v143) = v144;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        }

        else
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(2, 0x8Au, a2, this + 232);
          if (!result)
          {
            return result;
          }
        }

        v146 = *(a2 + 1);
        v36 = *(a2 + 2);
        if (v36 - v146 < 2 || *v146 != 146 || v146[1] != 1)
        {
          continue;
        }

        v37 = (v146 + 2);
        *(a2 + 1) = v37;
        goto LABEL_368;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 != 2)
          {
            goto LABEL_69;
          }

          v37 = *(a2 + 1);
          v36 = *(a2 + 2);
LABEL_368:
          v162[0] = 0;
          if (v37 >= v36 || *v37 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v162))
            {
              return 0;
            }
          }

          else
          {
            v162[0] = *v37;
            *(a2 + 1) = v37 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v161 = 0;
            v147 = *(a2 + 1);
            if (v147 >= *(a2 + 2) || *v147 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
              {
                return 0;
              }
            }

            else
            {
              v161 = *v147;
              *(a2 + 1) = v147 + 1;
            }

            v148 = *(this + 66);
            if (v148 == *(this + 67))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 32, v148 + 1);
              v148 = *(this + 66);
            }

            v149 = v161;
            v150 = *(this + 32);
            *(this + 66) = v148 + 1;
            *(v150 + 4 * v148) = v149;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        }

        else
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(2, 0x92u, a2, this + 256);
          if (!result)
          {
            return result;
          }
        }

        v151 = *(a2 + 1);
        v28 = *(a2 + 2);
        if (v28 - v151 >= 2 && *v151 == 154 && v151[1] == 1)
        {
          v29 = (v151 + 2);
          *(a2 + 1) = v29;
LABEL_386:
          v162[0] = 0;
          if (v29 >= v28 || *v29 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v162))
            {
              return 0;
            }
          }

          else
          {
            v162[0] = *v29;
            *(a2 + 1) = v29 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v161 = 0;
            v152 = *(a2 + 1);
            if (v152 >= *(a2 + 2) || *v152 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
              {
                return 0;
              }
            }

            else
            {
              v161 = *v152;
              *(a2 + 1) = v152 + 1;
            }

            v153 = *(this + 72);
            if (v153 == *(this + 73))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 35, v153 + 1);
              v153 = *(this + 72);
            }

            v154 = v161;
            v155 = *(this + 35);
            *(this + 72) = v153 + 1;
            *(v155 + 4 * v153) = v154;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
LABEL_400:
          v156 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v12 - v156 >= 2 && *v156 == 162 && v156[1] == 1)
          {
            v13 = (v156 + 2);
            *(a2 + 1) = v13;
LABEL_404:
            v162[0] = 0;
            if (v13 >= v12 || *v13 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v162))
              {
                return 0;
              }
            }

            else
            {
              v162[0] = *v13;
              *(a2 + 1) = v13 + 1;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
            {
              v161 = 0;
              v157 = *(a2 + 1);
              if (v157 >= *(a2 + 2) || *v157 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v161))
                {
                  return 0;
                }
              }

              else
              {
                v161 = *v157;
                *(a2 + 1) = v157 + 1;
              }

              v158 = *(this + 78);
              if (v158 == *(this + 79))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 38, v158 + 1);
                v158 = *(this + 78);
              }

              v159 = v161;
              v160 = *(this + 38);
              *(this + 78) = v158 + 1;
              *(v160 + 4 * v158) = v159;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
LABEL_418:
            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        continue;
      case 0x13u:
        if ((TagFallback & 7) == 0)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(2, 0x9Au, a2, this + 280);
          if (!result)
          {
            return result;
          }

          goto LABEL_400;
        }

        if (v7 != 2)
        {
          goto LABEL_69;
        }

        v29 = *(a2 + 1);
        v28 = *(a2 + 2);
        goto LABEL_386;
      case 0x14u:
        if ((TagFallback & 7) == 0)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(2, 0xA2u, a2, this + 304);
          if (!result)
          {
            return result;
          }

          goto LABEL_418;
        }

        if (v7 != 2)
        {
          goto LABEL_69;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_404;
      default:
        goto LABEL_69;
    }
  }
}

void sub_296433F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::MotionElevationAllDay::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 332);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 332);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 64), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 16) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 32) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 48) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 56));
  }

  if (*(v5 + 80) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(*(v5 + 72) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 80));
  }

  if (*(v5 + 96) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 88) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 96));
  }

  if ((*(v5 + 332) & 0x80) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, *(v5 + 68), a2, a4);
  }

  if (*(v5 + 112) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(*(v5 + 104) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 112));
  }

  if (*(v5 + 128) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(*(v5 + 120) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 128));
  }

  if ((*(v5 + 333) & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 324), a2, a4);
  }

  if (*(v5 + 144) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v14 = *(v5 + 152);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 144) >= 1)
    {
      v15 = 0;
      do
      {
        v16 = *(*(v5 + 136) + 4 * v15);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v15;
      }

      while (v15 < *(v5 + 144));
    }
  }

  if (*(v5 + 168) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v17 = *(v5 + 176);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 168) >= 1)
    {
      v18 = 0;
      do
      {
        v19 = *(*(v5 + 160) + 4 * v18);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v18;
      }

      while (v18 < *(v5 + 168));
    }
  }

  if (*(v5 + 192) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v20 = *(v5 + 200);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 192) >= 1)
    {
      v21 = 0;
      do
      {
        v22 = *(*(v5 + 184) + 4 * v21);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v21;
      }

      while (v21 < *(v5 + 192));
    }
  }

  if (*(v5 + 216) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v23 = *(v5 + 224);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 216) >= 1)
    {
      v24 = 0;
      do
      {
        v25 = *(*(v5 + 208) + 4 * v24);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v24;
      }

      while (v24 < *(v5 + 216));
    }
  }

  if (*(v5 + 240) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v26 = *(v5 + 248);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 240) >= 1)
    {
      v27 = 0;
      do
      {
        v28 = *(*(v5 + 232) + 4 * v27);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v27;
      }

      while (v27 < *(v5 + 240));
    }
  }

  if (*(v5 + 264) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v29 = *(v5 + 272);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 264) >= 1)
    {
      v30 = 0;
      do
      {
        v31 = *(*(v5 + 256) + 4 * v30);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v30;
      }

      while (v30 < *(v5 + 264));
    }
  }

  if (*(v5 + 288) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v32 = *(v5 + 296);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 288) >= 1)
    {
      v33 = 0;
      do
      {
        v34 = *(*(v5 + 280) + 4 * v33);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v33;
      }

      while (v33 < *(v5 + 288));
    }
  }

  if (*(v5 + 312) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v35 = *(v5 + 320);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 312) >= 1)
    {
      v36 = 0;
      do
      {
        v37 = *(*(v5 + 304) + 4 * v36);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v36;
      }

      while (v36 < *(v5 + 312));
    }
  }

  return this;
}

uint64_t awd::metrics::MotionElevationAllDay::ByteSize(awd::metrics::MotionElevationAllDay *this)
{
  v2 = *(this + 83);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 83);
    if ((v2 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(this + 16);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 11;
  }

  else if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 83);
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_14:
  if ((v2 & 0x80) == 0)
  {
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v6 = *(this + 17);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(this + 83);
  }

  else
  {
    v7 = 2;
  }

  v3 += v7;
  if ((v2 & 0x400) != 0)
  {
LABEL_23:
    v8 = *(this + 81);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    }

    else
    {
      v9 = 2;
    }

    v3 += v9;
  }

LABEL_27:
  v107 = v3;
  v10 = *(this + 6);
  if (v10 < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(*(this + 2) + 4 * v11);
      if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
        v10 = *(this + 6);
      }

      else
      {
        v14 = 1;
      }

      v12 += v14;
      ++v11;
    }

    while (v11 < v10);
  }

  v15 = *(this + 10);
  if (v15 < 1)
  {
    v17 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(*(this + 4) + 4 * v16);
      if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
        v15 = *(this + 10);
      }

      else
      {
        v19 = 1;
      }

      v17 += v19;
      ++v16;
    }

    while (v16 < v15);
  }

  v20 = *(this + 14);
  if (v20 < 1)
  {
    v22 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = *(*(this + 6) + 4 * v21);
      if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
        v20 = *(this + 14);
      }

      else
      {
        v24 = 1;
      }

      v22 += v24;
      ++v21;
    }

    while (v21 < v20);
  }

  v25 = *(this + 20);
  if (v25 < 1)
  {
    v27 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = *(*(this + 9) + 4 * v26);
      if (v28 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
        v25 = *(this + 20);
      }

      else
      {
        v29 = 1;
      }

      v27 += v29;
      ++v26;
    }

    while (v26 < v25);
  }

  v105 = v15;
  v106 = v10;
  v30 = *(this + 24);
  if (v30 < 1)
  {
    v32 = 0;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v33 = *(*(this + 11) + 4 * v31);
      if (v33 >= 0x80)
      {
        v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
        v30 = *(this + 24);
      }

      else
      {
        v34 = 1;
      }

      v32 += v34;
      ++v31;
    }

    while (v31 < v30);
  }

  v103 = v25;
  v104 = v20;
  v35 = *(this + 28);
  if (v35 < 1)
  {
    v37 = 0;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = *(*(this + 13) + 4 * v36);
      if (v38 >= 0x80)
      {
        v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
        v35 = *(this + 28);
      }

      else
      {
        v39 = 1;
      }

      v37 += v39;
      ++v36;
    }

    while (v36 < v35);
  }

  v102 = v30;
  v40 = *(this + 32);
  if (v40 < 1)
  {
    v42 = 0;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    do
    {
      v43 = *(*(this + 15) + 4 * v41);
      if (v43 >= 0x80)
      {
        v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43);
        v40 = *(this + 32);
      }

      else
      {
        v44 = 1;
      }

      v42 += v44;
      ++v41;
    }

    while (v41 < v40);
  }

  v45 = v12 + v107 + v106 + v17 + v105 + v22 + v104 + v27 + v103 + v32 + v102 + v37 + v35 + v42 + v40;
  v46 = *(this + 36);
  if (v46 < 1)
  {
    LODWORD(v48) = 0;
  }

  else
  {
    v47 = 0;
    LODWORD(v48) = 0;
    do
    {
      v49 = *(*(this + 17) + 4 * v47);
      if (v49 >= 0x80)
      {
        v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
        v46 = *(this + 36);
      }

      else
      {
        v50 = 1;
      }

      v48 = (v50 + v48);
      ++v47;
    }

    while (v47 < v46);
    if (v48 > 0)
    {
      if (v48 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 1;
      }

      else
      {
        v51 = 2;
      }

      v45 += v51;
    }
  }

  *(this + 38) = v48;
  v52 = v45 + v48;
  v53 = *(this + 42);
  if (v53 < 1)
  {
    LODWORD(v55) = 0;
  }

  else
  {
    v54 = 0;
    LODWORD(v55) = 0;
    do
    {
      v56 = *(*(this + 20) + 4 * v54);
      if (v56 >= 0x80)
      {
        v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56);
        v53 = *(this + 42);
      }

      else
      {
        v57 = 1;
      }

      v55 = (v57 + v55);
      ++v54;
    }

    while (v54 < v53);
    if (v55 > 0)
    {
      if (v55 >= 0x80)
      {
        v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 1;
      }

      else
      {
        v58 = 2;
      }

      v52 += v58;
    }
  }

  *(this + 44) = v55;
  v59 = v52 + v55;
  v60 = *(this + 48);
  if (v60 < 1)
  {
    LODWORD(v62) = 0;
  }

  else
  {
    v61 = 0;
    LODWORD(v62) = 0;
    do
    {
      v63 = *(*(this + 23) + 4 * v61);
      if (v63 >= 0x80)
      {
        v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63);
        v60 = *(this + 48);
      }

      else
      {
        v64 = 1;
      }

      v62 = (v64 + v62);
      ++v61;
    }

    while (v61 < v60);
    if (v62 > 0)
    {
      if (v62 >= 0x80)
      {
        v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62) + 1;
      }

      else
      {
        v65 = 2;
      }

      v59 += v65;
    }
  }

  *(this + 50) = v62;
  v66 = v59 + v62;
  v67 = *(this + 54);
  if (v67 < 1)
  {
    LODWORD(v69) = 0;
  }

  else
  {
    v68 = 0;
    LODWORD(v69) = 0;
    do
    {
      v70 = *(*(this + 26) + 4 * v68);
      if (v70 >= 0x80)
      {
        v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70);
        v67 = *(this + 54);
      }

      else
      {
        v71 = 1;
      }

      v69 = (v71 + v69);
      ++v68;
    }

    while (v68 < v67);
    if (v69 > 0)
    {
      if (v69 >= 0x80)
      {
        v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69) + 2;
      }

      else
      {
        v72 = 3;
      }

      v66 += v72;
    }
  }

  *(this + 56) = v69;
  v73 = v66 + v69;
  v74 = *(this + 60);
  if (v74 < 1)
  {
    LODWORD(v76) = 0;
  }

  else
  {
    v75 = 0;
    LODWORD(v76) = 0;
    do
    {
      v77 = *(*(this + 29) + 4 * v75);
      if (v77 >= 0x80)
      {
        v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77);
        v74 = *(this + 60);
      }

      else
      {
        v78 = 1;
      }

      v76 = (v78 + v76);
      ++v75;
    }

    while (v75 < v74);
    if (v76 > 0)
    {
      if (v76 >= 0x80)
      {
        v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76) + 2;
      }

      else
      {
        v79 = 3;
      }

      v73 += v79;
    }
  }

  *(this + 62) = v76;
  v80 = v73 + v76;
  v81 = *(this + 66);
  if (v81 < 1)
  {
    LODWORD(v83) = 0;
  }

  else
  {
    v82 = 0;
    LODWORD(v83) = 0;
    do
    {
      v84 = *(*(this + 32) + 4 * v82);
      if (v84 >= 0x80)
      {
        v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84);
        v81 = *(this + 66);
      }

      else
      {
        v85 = 1;
      }

      v83 = (v85 + v83);
      ++v82;
    }

    while (v82 < v81);
    if (v83 > 0)
    {
      if (v83 >= 0x80)
      {
        v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83) + 2;
      }

      else
      {
        v86 = 3;
      }

      v80 += v86;
    }
  }

  *(this + 68) = v83;
  v87 = v80 + v83;
  v88 = *(this + 72);
  if (v88 < 1)
  {
    LODWORD(v90) = 0;
  }

  else
  {
    v89 = 0;
    LODWORD(v90) = 0;
    do
    {
      v91 = *(*(this + 35) + 4 * v89);
      if (v91 >= 0x80)
      {
        v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91);
        v88 = *(this + 72);
      }

      else
      {
        v92 = 1;
      }

      v90 = (v92 + v90);
      ++v89;
    }

    while (v89 < v88);
    if (v90 > 0)
    {
      if (v90 >= 0x80)
      {
        v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90) + 2;
      }

      else
      {
        v93 = 3;
      }

      v87 += v93;
    }
  }

  *(this + 74) = v90;
  v94 = v87 + v90;
  v95 = *(this + 78);
  if (v95 < 1)
  {
    LODWORD(v97) = 0;
  }

  else
  {
    v96 = 0;
    LODWORD(v97) = 0;
    do
    {
      v98 = *(*(this + 38) + 4 * v96);
      if (v98 >= 0x80)
      {
        v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98);
        v95 = *(this + 78);
      }

      else
      {
        v99 = 1;
      }

      v97 = (v99 + v97);
      ++v96;
    }

    while (v96 < v95);
    if (v97 > 0)
    {
      if (v97 >= 0x80)
      {
        v100 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97) + 2;
      }

      else
      {
        v100 = 3;
      }

      v94 += v100;
    }
  }

  *(this + 80) = v97;
  result = (v94 + v97);
  *(this + 82) = result;
  return result;
}