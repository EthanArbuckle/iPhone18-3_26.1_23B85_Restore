uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
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
      if (v6 >= *(this + 2) || *v6 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v10);
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
        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(a2, v7 + 1);
        v7 = *(a2 + 8);
      }

      v8 = v10;
      v9 = *a2;
      *(a2 + 8) = v7 + 1;
      *(v9 + 4 * v7) = v8;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t awd::metrics::MotionFitnessSession::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 452);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 452);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_115;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_116;
  }

LABEL_115:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 52), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_117;
  }

LABEL_116:
  v11 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 452);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_118;
  }

LABEL_117:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 20), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_119;
  }

LABEL_118:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_120;
  }

LABEL_119:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_121;
  }

LABEL_120:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_122;
  }

LABEL_121:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 53), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_123;
  }

LABEL_122:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 44), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_124;
  }

LABEL_123:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 48), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_125;
  }

LABEL_124:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_126;
  }

LABEL_125:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_127;
  }

LABEL_126:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_128;
  }

LABEL_127:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_129;
  }

LABEL_128:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x10, *(v5 + 54), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_130;
  }

LABEL_129:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x11, *(v5 + 55), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_131;
  }

LABEL_130:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x12, *(v5 + 72), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_132;
  }

LABEL_131:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, *(v5 + 76), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_133;
  }

LABEL_132:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 80), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_134;
  }

LABEL_133:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 84), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_135;
  }

LABEL_134:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x16, *(v5 + 88), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_136;
  }

LABEL_135:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 92), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_137;
  }

LABEL_136:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 96), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_138;
  }

LABEL_137:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 100), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_139;
  }

LABEL_138:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(v5 + 104), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_140;
  }

LABEL_139:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 108), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_141;
  }

LABEL_140:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 112), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_142;
  }

LABEL_141:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(v5 + 116), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_143:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1F, a2, *(v5 + 124), a3);
    if ((*(v5 + 452) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_144;
  }

LABEL_142:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 120), a2, a4);
  v6 = *(v5 + 452);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_143;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_144:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(v5 + 128), a2, a4);
LABEL_33:
  v7 = *(v5 + 456);
  if (v7)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x21, a2, *(v5 + 132), a3);
    v7 = *(v5 + 456);
    if ((v7 & 2) == 0)
    {
LABEL_35:
      if ((v7 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_147;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_35;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x22, a2, *(v5 + 136), a3);
  v7 = *(v5 + 456);
  if ((v7 & 4) == 0)
  {
LABEL_36:
    if ((v7 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_148;
  }

LABEL_147:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(v5 + 140), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 8) == 0)
  {
LABEL_37:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_149;
  }

LABEL_148:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 144), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x10) == 0)
  {
LABEL_38:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_150;
  }

LABEL_149:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, *(v5 + 148), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x20) == 0)
  {
LABEL_39:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_151;
  }

LABEL_150:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x26, *(v5 + 224), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x40) == 0)
  {
LABEL_40:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_152;
  }

LABEL_151:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(v5 + 152), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x80) == 0)
  {
LABEL_41:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_153;
  }

LABEL_152:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(v5 + 156), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x100) == 0)
  {
LABEL_42:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_154;
  }

LABEL_153:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(v5 + 160), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x200) == 0)
  {
LABEL_43:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_155;
  }

LABEL_154:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2A, *(v5 + 225), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x400) == 0)
  {
LABEL_44:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_156;
  }

LABEL_155:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, *(v5 + 164), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x800) == 0)
  {
LABEL_45:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_157;
  }

LABEL_156:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2C, *(v5 + 168), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x1000) == 0)
  {
LABEL_46:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_158;
  }

LABEL_157:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2D, *(v5 + 172), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x2000) == 0)
  {
LABEL_47:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_159;
  }

LABEL_158:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2E, a2, *(v5 + 176), a3);
  v7 = *(v5 + 456);
  if ((v7 & 0x4000) == 0)
  {
LABEL_48:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_160;
  }

LABEL_159:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2F, *(v5 + 180), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x8000) == 0)
  {
LABEL_49:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_161;
  }

LABEL_160:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x30, *(v5 + 184), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x10000) == 0)
  {
LABEL_50:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_162;
  }

LABEL_161:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x31, *(v5 + 188), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x20000) == 0)
  {
LABEL_51:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_163;
  }

LABEL_162:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x32, *(v5 + 192), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x40000) == 0)
  {
LABEL_52:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_164;
  }

LABEL_163:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x33, *(v5 + 196), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x80000) == 0)
  {
LABEL_53:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_165;
  }

LABEL_164:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x34, *(v5 + 200), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x100000) == 0)
  {
LABEL_54:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_166;
  }

LABEL_165:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x35, *(v5 + 204), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x200000) == 0)
  {
LABEL_55:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_167;
  }

LABEL_166:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x36, *(v5 + 208), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x400000) == 0)
  {
LABEL_56:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_168;
  }

LABEL_167:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x37, *(v5 + 212), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x800000) == 0)
  {
LABEL_57:
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_169;
  }

LABEL_168:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x38, *(v5 + 216), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x1000000) == 0)
  {
LABEL_58:
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_170;
  }

LABEL_169:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x39, *(v5 + 220), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x2000000) == 0)
  {
LABEL_59:
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_171;
  }

LABEL_170:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x3A, *(v5 + 226), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x4000000) == 0)
  {
LABEL_60:
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_172;
  }

LABEL_171:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3B, *(v5 + 228), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x8000000) == 0)
  {
LABEL_61:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_173;
  }

LABEL_172:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3C, *(v5 + 232), a2, a4);
  v7 = *(v5 + 456);
  if ((v7 & 0x10000000) == 0)
  {
LABEL_62:
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_173:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3D, *(v5 + 236), a2, a4);
  if ((*(v5 + 456) & 0x20000000) != 0)
  {
LABEL_63:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3E, *(v5 + 256), a2, a4);
  }

LABEL_64:
  if (*(v5 + 248) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3F, *(*(v5 + 240) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 248));
  }

  if ((*(v5 + 456) & 0x80000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0x40, *(v5 + 264), a2, a4);
  }

  v9 = *(v5 + 460);
  if (v9)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x41, *(v5 + 260), a2, a4);
    v9 = *(v5 + 460);
    if ((v9 & 2) == 0)
    {
LABEL_71:
      if ((v9 & 4) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_177;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_71;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x42, *(v5 + 272), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 4) == 0)
  {
LABEL_72:
    if ((v9 & 8) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_178;
  }

LABEL_177:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x43, *(v5 + 276), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 8) == 0)
  {
LABEL_73:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_179;
  }

LABEL_178:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x44, *(v5 + 280), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x10) == 0)
  {
LABEL_74:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_180;
  }

LABEL_179:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x45, *(v5 + 284), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x20) == 0)
  {
LABEL_75:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_181;
  }

LABEL_180:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x46, *(v5 + 288), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x40) == 0)
  {
LABEL_76:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_182;
  }

LABEL_181:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x47, *(v5 + 292), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x80) == 0)
  {
LABEL_77:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_183;
  }

LABEL_182:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x48, *(v5 + 296), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x100) == 0)
  {
LABEL_78:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_184;
  }

LABEL_183:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x49, *(v5 + 300), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x200) == 0)
  {
LABEL_79:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_185;
  }

LABEL_184:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4A, *(v5 + 304), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x400) == 0)
  {
LABEL_80:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_186;
  }

LABEL_185:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4B, *(v5 + 308), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x800) == 0)
  {
LABEL_81:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_187;
  }

LABEL_186:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4C, *(v5 + 312), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x1000) == 0)
  {
LABEL_82:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_188;
  }

LABEL_187:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4D, *(v5 + 316), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x2000) == 0)
  {
LABEL_83:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_189;
  }

LABEL_188:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4E, *(v5 + 320), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x4000) == 0)
  {
LABEL_84:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_190;
  }

LABEL_189:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x4F, *(v5 + 324), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x8000) == 0)
  {
LABEL_85:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_191;
  }

LABEL_190:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x50, *(v5 + 328), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x10000) == 0)
  {
LABEL_86:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_192;
  }

LABEL_191:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x51, *(v5 + 332), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x20000) == 0)
  {
LABEL_87:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_193;
  }

LABEL_192:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x52, *(v5 + 336), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x40000) == 0)
  {
LABEL_88:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_194;
  }

LABEL_193:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x53, *(v5 + 340), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x80000) == 0)
  {
LABEL_89:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_195;
  }

LABEL_194:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x54, *(v5 + 344), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x100000) == 0)
  {
LABEL_90:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_196;
  }

LABEL_195:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x55, *(v5 + 348), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x200000) == 0)
  {
LABEL_91:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_197;
  }

LABEL_196:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x56, *(v5 + 352), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x400000) == 0)
  {
LABEL_92:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_198;
  }

LABEL_197:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x57, *(v5 + 356), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x800000) == 0)
  {
LABEL_93:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_199;
  }

LABEL_198:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x58, *(v5 + 360), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x1000000) == 0)
  {
LABEL_94:
    if ((v9 & 0x2000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_200;
  }

LABEL_199:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x59, *(v5 + 364), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x2000000) == 0)
  {
LABEL_95:
    if ((v9 & 0x4000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_201;
  }

LABEL_200:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5A, *(v5 + 368), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x4000000) == 0)
  {
LABEL_96:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_202;
  }

LABEL_201:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5B, *(v5 + 372), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x8000000) == 0)
  {
LABEL_97:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_203;
  }

LABEL_202:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x5C, *(v5 + 376), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x10000000) == 0)
  {
LABEL_98:
    if ((v9 & 0x20000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_204;
  }

LABEL_203:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x5D, *(v5 + 227), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x20000000) == 0)
  {
LABEL_99:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_100;
    }

LABEL_205:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x5F, *(v5 + 384), a2, a4);
    if ((*(v5 + 460) & 0x80000000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_206;
  }

LABEL_204:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x5E, *(v5 + 380), a2, a4);
  v9 = *(v5 + 460);
  if ((v9 & 0x40000000) != 0)
  {
    goto LABEL_205;
  }

LABEL_100:
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_101;
  }

LABEL_206:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x60, *(v5 + 388), a2, a4);
LABEL_101:
  v10 = *(v5 + 464);
  if (v10)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0x61, *(v5 + 392), a2, a4);
    v10 = *(v5 + 464);
    if ((v10 & 2) == 0)
    {
LABEL_103:
      if ((v10 & 4) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_209;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_103;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(0x62, *(v5 + 400), a2, a4);
  v10 = *(v5 + 464);
  if ((v10 & 4) == 0)
  {
LABEL_104:
    if ((v10 & 8) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_210;
  }

LABEL_209:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x63, a2, *(v5 + 408), a3);
  v10 = *(v5 + 464);
  if ((v10 & 8) == 0)
  {
LABEL_105:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_211;
  }

LABEL_210:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x64, *(v5 + 416), a2, a4);
  v10 = *(v5 + 464);
  if ((v10 & 0x10) == 0)
  {
LABEL_106:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_212;
  }

LABEL_211:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x65, *(v5 + 420), a2, a4);
  v10 = *(v5 + 464);
  if ((v10 & 0x20) == 0)
  {
LABEL_107:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_213;
  }

LABEL_212:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x66, *(v5 + 424), a2, a4);
  v10 = *(v5 + 464);
  if ((v10 & 0x40) == 0)
  {
LABEL_108:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_214;
  }

LABEL_213:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x67, *(v5 + 428), a2, a4);
  v10 = *(v5 + 464);
  if ((v10 & 0x80) == 0)
  {
LABEL_109:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_215;
  }

LABEL_214:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x68, *(v5 + 432), a2, a4);
  v10 = *(v5 + 464);
  if ((v10 & 0x100) == 0)
  {
LABEL_110:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_111;
    }

LABEL_216:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6A, *(v5 + 440), a2, a4);
    if ((*(v5 + 464) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_217;
  }

LABEL_215:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x69, *(v5 + 436), a2, a4);
  v10 = *(v5 + 464);
  if ((v10 & 0x200) != 0)
  {
    goto LABEL_216;
  }

LABEL_111:
  if ((v10 & 0x400) == 0)
  {
    return this;
  }

LABEL_217:
  v12 = *(v5 + 444);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x6B, v12, a2, a4);
}

uint64_t awd::metrics::MotionFitnessSession::ByteSize(awd::metrics::MotionFitnessSession *this)
{
  v2 = *(this + 113);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_46;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 113);
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = *(this + 4);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 113);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_13:
  v4 = ((v2 >> 1) & 2) + v3;
  if ((v2 & 8) != 0)
  {
    v7 = *(this + 3);
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
      v2 = *(this + 113);
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

    v4 += v12 + v8 + 1;
    if ((v2 & 0x10) == 0)
    {
LABEL_15:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(this + 5);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(this + 113);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_32:
  v15 = *(this + 8);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(this + 113);
  }

  else
  {
    v16 = 2;
  }

  v4 += v16;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

LABEL_36:
  v17 = *(this + 9);
  if ((v17 & 0x80000000) != 0)
  {
    v18 = 11;
  }

  else if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v2 = *(this + 113);
  }

  else
  {
    v18 = 2;
  }

  v4 += v18;
  if ((v2 & 0x80) != 0)
  {
LABEL_42:
    v19 = *(this + 10);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v2 = *(this + 113);
    }

    else
    {
      v20 = 2;
    }

    v4 += v20;
  }

LABEL_46:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_86;
  }

  v4 += (v2 >> 7) & 2;
  if ((v2 & 0x200) != 0)
  {
    v21 = *(this + 11);
    if ((v21 & 0x80000000) != 0)
    {
      v22 = 11;
    }

    else if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
      v2 = *(this + 113);
    }

    else
    {
      v22 = 2;
    }

    v4 += v22;
    if ((v2 & 0x400) == 0)
    {
LABEL_49:
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_64;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_49;
  }

  v23 = *(this + 12);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = *(this + 113);
  }

  else
  {
    v24 = 2;
  }

  v4 += v24;
  if ((v2 & 0x800) == 0)
  {
LABEL_50:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_70;
  }

LABEL_64:
  v25 = *(this + 14);
  if ((v25 & 0x80000000) != 0)
  {
    v26 = 11;
  }

  else if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v2 = *(this + 113);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v2 & 0x1000) == 0)
  {
LABEL_51:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_76;
  }

LABEL_70:
  v27 = *(this + 15);
  if ((v27 & 0x80000000) != 0)
  {
    v28 = 11;
  }

  else if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v2 = *(this + 113);
  }

  else
  {
    v28 = 2;
  }

  v4 += v28;
  if ((v2 & 0x2000) == 0)
  {
LABEL_52:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

LABEL_76:
  v29 = *(this + 16);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v2 = *(this + 113);
  }

  else
  {
    v30 = 2;
  }

  v4 += v30;
  if ((v2 & 0x4000) != 0)
  {
LABEL_80:
    v31 = *(this + 17);
    if (v31 >= 0x80)
    {
      v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
      v2 = *(this + 113);
    }

    else
    {
      v32 = 2;
    }

    v4 += v32;
  }

LABEL_84:
  if ((v2 & 0x8000) != 0)
  {
    v4 += 3;
  }

LABEL_86:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_131;
  }

  if ((v2 & 0x10000) != 0)
  {
    v4 += 3;
  }

  if ((v2 & 0x20000) != 0)
  {
    v33 = *(this + 18);
    if ((v33 & 0x80000000) != 0)
    {
      v34 = 12;
    }

    else if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v2 = *(this + 113);
    }

    else
    {
      v34 = 3;
    }

    v4 += v34;
    if ((v2 & 0x40000) == 0)
    {
LABEL_91:
      if ((v2 & 0x80000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_109;
    }
  }

  else if ((v2 & 0x40000) == 0)
  {
    goto LABEL_91;
  }

  v35 = *(this + 19);
  if ((v35 & 0x80000000) != 0)
  {
    v36 = 12;
  }

  else if (v35 >= 0x80)
  {
    v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
    v2 = *(this + 113);
  }

  else
  {
    v36 = 3;
  }

  v4 += v36;
  if ((v2 & 0x80000) == 0)
  {
LABEL_92:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_113;
  }

LABEL_109:
  v37 = *(this + 20);
  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v2 = *(this + 113);
  }

  else
  {
    v38 = 3;
  }

  v4 += v38;
  if ((v2 & 0x100000) == 0)
  {
LABEL_93:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_117;
  }

LABEL_113:
  v39 = *(this + 21);
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    v2 = *(this + 113);
  }

  else
  {
    v40 = 3;
  }

  v4 += v40;
  if ((v2 & 0x200000) == 0)
  {
LABEL_94:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_123;
  }

LABEL_117:
  v41 = *(this + 22);
  if ((v41 & 0x80000000) != 0)
  {
    v42 = 12;
  }

  else if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    v2 = *(this + 113);
  }

  else
  {
    v42 = 3;
  }

  v4 += v42;
  if ((v2 & 0x400000) == 0)
  {
LABEL_95:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_127;
  }

LABEL_123:
  v43 = *(this + 23);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v2 = *(this + 113);
  }

  else
  {
    v44 = 3;
  }

  v4 += v44;
  if ((v2 & 0x800000) != 0)
  {
LABEL_127:
    v45 = *(this + 24);
    if (v45 >= 0x80)
    {
      v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
      v2 = *(this + 113);
    }

    else
    {
      v46 = 3;
    }

    v4 += v46;
  }

LABEL_131:
  if (!HIBYTE(v2))
  {
    goto LABEL_170;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v47 = *(this + 25);
    if (v47 >= 0x80)
    {
      v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
      v2 = *(this + 113);
    }

    else
    {
      v48 = 3;
    }

    v4 += v48;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_134:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_135;
      }

      goto LABEL_147;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_134;
  }

  v49 = *(this + 26);
  if (v49 >= 0x80)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
    v2 = *(this + 113);
  }

  else
  {
    v50 = 3;
  }

  v4 += v50;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_135:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_151;
  }

LABEL_147:
  v51 = *(this + 27);
  if (v51 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
    v2 = *(this + 113);
  }

  else
  {
    v52 = 3;
  }

  v4 += v52;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_136:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_137;
    }

LABEL_155:
    v55 = *(this + 29);
    if (v55 >= 0x80)
    {
      v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
      v2 = *(this + 113);
    }

    else
    {
      v56 = 3;
    }

    v4 += v56;
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_159;
  }

LABEL_151:
  v53 = *(this + 28);
  if (v53 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
    v2 = *(this + 113);
  }

  else
  {
    v54 = 3;
  }

  v4 += v54;
  if ((v2 & 0x10000000) != 0)
  {
    goto LABEL_155;
  }

LABEL_137:
  if ((v2 & 0x20000000) != 0)
  {
LABEL_159:
    v57 = *(this + 30);
    if (v57 >= 0x80)
    {
      v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
      v2 = *(this + 113);
    }

    else
    {
      v58 = 3;
    }

    v4 += v58;
  }

LABEL_163:
  if ((v2 & 0x40000000) != 0)
  {
    v4 += 6;
  }

  if ((v2 & 0x80000000) != 0)
  {
    v59 = *(this + 32);
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

LABEL_170:
  v61 = *(this + 114);
  if (!v61)
  {
    goto LABEL_204;
  }

  v62 = v4 + 6;
  if ((v61 & 1) == 0)
  {
    v62 = v4;
  }

  if ((v61 & 2) != 0)
  {
    v4 = v62 + 6;
  }

  else
  {
    v4 = v62;
  }

  if ((v61 & 4) == 0)
  {
    if ((v61 & 8) == 0)
    {
      goto LABEL_178;
    }

LABEL_184:
    v65 = *(this + 36);
    if (v65 >= 0x80)
    {
      v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65) + 2;
      v61 = *(this + 114);
    }

    else
    {
      v66 = 3;
    }

    v4 += v66;
    if ((v61 & 0x10) == 0)
    {
      goto LABEL_192;
    }

    goto LABEL_188;
  }

  v63 = *(this + 35);
  if (v63 >= 0x80)
  {
    v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63) + 2;
    v61 = *(this + 114);
  }

  else
  {
    v64 = 3;
  }

  v4 += v64;
  if ((v61 & 8) != 0)
  {
    goto LABEL_184;
  }

LABEL_178:
  if ((v61 & 0x10) != 0)
  {
LABEL_188:
    v67 = *(this + 37);
    if (v67 >= 0x80)
    {
      v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67) + 2;
      v61 = *(this + 114);
    }

    else
    {
      v68 = 3;
    }

    v4 += v68;
  }

LABEL_192:
  if ((v61 & 0x20) != 0)
  {
    v4 += 3;
  }

  if ((v61 & 0x40) != 0)
  {
    v69 = *(this + 38);
    if (v69 >= 0x80)
    {
      v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69) + 2;
      v61 = *(this + 114);
    }

    else
    {
      v70 = 3;
    }

    v4 += v70;
  }

  if ((v61 & 0x80) != 0)
  {
    v71 = *(this + 39);
    if (v71 >= 0x80)
    {
      v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71) + 2;
      v61 = *(this + 114);
    }

    else
    {
      v72 = 3;
    }

    v4 += v72;
  }

LABEL_204:
  if ((v61 & 0xFF00) == 0)
  {
    goto LABEL_240;
  }

  if ((v61 & 0x100) != 0)
  {
    v73 = *(this + 40);
    if (v73 >= 0x80)
    {
      v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73) + 2;
      v61 = *(this + 114);
    }

    else
    {
      v74 = 3;
    }

    v4 += v74;
  }

  if ((v61 & 0x200) != 0)
  {
    v4 += 3;
  }

  if ((v61 & 0x400) == 0)
  {
    if ((v61 & 0x800) == 0)
    {
      goto LABEL_214;
    }

LABEL_220:
    v77 = *(this + 42);
    if (v77 >= 0x80)
    {
      v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77) + 2;
      v61 = *(this + 114);
    }

    else
    {
      v78 = 3;
    }

    v4 += v78;
    if ((v61 & 0x1000) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_224;
  }

  v75 = *(this + 41);
  if (v75 >= 0x80)
  {
    v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75) + 2;
    v61 = *(this + 114);
  }

  else
  {
    v76 = 3;
  }

  v4 += v76;
  if ((v61 & 0x800) != 0)
  {
    goto LABEL_220;
  }

LABEL_214:
  if ((v61 & 0x1000) != 0)
  {
LABEL_224:
    v79 = *(this + 43);
    if (v79 >= 0x80)
    {
      v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79) + 2;
      v61 = *(this + 114);
    }

    else
    {
      v80 = 3;
    }

    v4 += v80;
  }

LABEL_228:
  if ((v61 & 0x2000) != 0)
  {
    v4 += 6;
  }

  if ((v61 & 0x4000) != 0)
  {
    v81 = *(this + 45);
    if (v81 >= 0x80)
    {
      v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81) + 2;
      v61 = *(this + 114);
    }

    else
    {
      v82 = 3;
    }

    v4 += v82;
  }

  if ((v61 & 0x8000) != 0)
  {
    v83 = *(this + 46);
    if (v83 >= 0x80)
    {
      v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83) + 2;
      v61 = *(this + 114);
    }

    else
    {
      v84 = 3;
    }

    v4 += v84;
  }

LABEL_240:
  if ((v61 & 0xFF0000) == 0)
  {
    goto LABEL_282;
  }

  if ((v61 & 0x10000) != 0)
  {
    v85 = *(this + 47);
    if (v85 >= 0x80)
    {
      v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85) + 2;
      v61 = *(this + 114);
    }

    else
    {
      v86 = 3;
    }

    v4 += v86;
    if ((v61 & 0x20000) == 0)
    {
LABEL_243:
      if ((v61 & 0x40000) == 0)
      {
        goto LABEL_244;
      }

      goto LABEL_258;
    }
  }

  else if ((v61 & 0x20000) == 0)
  {
    goto LABEL_243;
  }

  v87 = *(this + 48);
  if (v87 >= 0x80)
  {
    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v87) + 2;
    v61 = *(this + 114);
  }

  else
  {
    v88 = 3;
  }

  v4 += v88;
  if ((v61 & 0x40000) == 0)
  {
LABEL_244:
    if ((v61 & 0x80000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_262;
  }

LABEL_258:
  v89 = *(this + 49);
  if (v89 >= 0x80)
  {
    v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89) + 2;
    v61 = *(this + 114);
  }

  else
  {
    v90 = 3;
  }

  v4 += v90;
  if ((v61 & 0x80000) == 0)
  {
LABEL_245:
    if ((v61 & 0x100000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_266;
  }

LABEL_262:
  v91 = *(this + 50);
  if (v91 >= 0x80)
  {
    v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91) + 2;
    v61 = *(this + 114);
  }

  else
  {
    v92 = 3;
  }

  v4 += v92;
  if ((v61 & 0x100000) == 0)
  {
LABEL_246:
    if ((v61 & 0x200000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_270;
  }

LABEL_266:
  v93 = *(this + 51);
  if (v93 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93) + 2;
    v61 = *(this + 114);
  }

  else
  {
    v94 = 3;
  }

  v4 += v94;
  if ((v61 & 0x200000) == 0)
  {
LABEL_247:
    if ((v61 & 0x400000) == 0)
    {
      goto LABEL_248;
    }

    goto LABEL_274;
  }

LABEL_270:
  v95 = *(this + 52);
  if (v95 >= 0x80)
  {
    v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v95) + 2;
    v61 = *(this + 114);
  }

  else
  {
    v96 = 3;
  }

  v4 += v96;
  if ((v61 & 0x400000) == 0)
  {
LABEL_248:
    if ((v61 & 0x800000) == 0)
    {
      goto LABEL_282;
    }

    goto LABEL_278;
  }

LABEL_274:
  v97 = *(this + 53);
  if (v97 >= 0x80)
  {
    v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97) + 2;
    v61 = *(this + 114);
  }

  else
  {
    v98 = 3;
  }

  v4 += v98;
  if ((v61 & 0x800000) != 0)
  {
LABEL_278:
    v99 = *(this + 54);
    if (v99 >= 0x80)
    {
      v100 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v99) + 2;
      v61 = *(this + 114);
    }

    else
    {
      v100 = 3;
    }

    v4 += v100;
  }

LABEL_282:
  if (!HIBYTE(v61))
  {
    goto LABEL_295;
  }

  if ((v61 & 0x1000000) != 0)
  {
    v101 = *(this + 55);
    if (v101 >= 0x80)
    {
      v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101) + 2;
      v61 = *(this + 114);
    }

    else
    {
      v102 = 3;
    }

    v4 += v102;
  }

  if ((v61 & 0x2000000) != 0)
  {
    v4 += 3;
  }

  if ((v61 & 0x4000000) != 0)
  {
    v106 = *(this + 57);
    if (v106 >= 0x80)
    {
      v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v106) + 2;
      v61 = *(this + 114);
    }

    else
    {
      v107 = 3;
    }

    v4 += v107;
    if ((v61 & 0x8000000) == 0)
    {
LABEL_292:
      if ((v61 & 0x10000000) == 0)
      {
        goto LABEL_293;
      }

      goto LABEL_366;
    }
  }

  else if ((v61 & 0x8000000) == 0)
  {
    goto LABEL_292;
  }

  v128 = *(this + 58);
  if (v128 >= 0x80)
  {
    v129 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v128) + 2;
    v61 = *(this + 114);
  }

  else
  {
    v129 = 3;
  }

  v4 += v129;
  if ((v61 & 0x10000000) == 0)
  {
LABEL_293:
    if ((v61 & 0x20000000) == 0)
    {
      goto LABEL_294;
    }

    goto LABEL_370;
  }

LABEL_366:
  v130 = *(this + 59);
  if (v130 >= 0x80)
  {
    v131 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v130) + 2;
    v61 = *(this + 114);
  }

  else
  {
    v131 = 3;
  }

  v4 += v131;
  if ((v61 & 0x20000000) == 0)
  {
LABEL_294:
    if ((v61 & 0x80000000) == 0)
    {
      goto LABEL_295;
    }

    goto LABEL_374;
  }

LABEL_370:
  v132 = *(this + 64);
  if (v132 >= 0x80)
  {
    v133 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v132) + 2;
    v61 = *(this + 114);
  }

  else
  {
    v133 = 3;
  }

  v4 += v133;
  if ((v61 & 0x80000000) != 0)
  {
LABEL_374:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 33)) + 2;
  }

LABEL_295:
  v103 = *(this + 115);
  if (!v103)
  {
    goto LABEL_339;
  }

  if (v103)
  {
    v104 = *(this + 65);
    if (v104 >= 0x80)
    {
      v105 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v104) + 2;
      v103 = *(this + 115);
    }

    else
    {
      v105 = 3;
    }

    v4 += v105;
    if ((v103 & 2) == 0)
    {
LABEL_298:
      if ((v103 & 4) == 0)
      {
        goto LABEL_299;
      }

      goto LABEL_315;
    }
  }

  else if ((v103 & 2) == 0)
  {
    goto LABEL_298;
  }

  v108 = *(this + 68);
  if (v108 >= 0x80)
  {
    v109 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v108) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v109 = 3;
  }

  v4 += v109;
  if ((v103 & 4) == 0)
  {
LABEL_299:
    if ((v103 & 8) == 0)
    {
      goto LABEL_300;
    }

    goto LABEL_319;
  }

LABEL_315:
  v110 = *(this + 69);
  if (v110 >= 0x80)
  {
    v111 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v110) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v111 = 3;
  }

  v4 += v111;
  if ((v103 & 8) == 0)
  {
LABEL_300:
    if ((v103 & 0x10) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_323;
  }

LABEL_319:
  v112 = *(this + 70);
  if (v112 >= 0x80)
  {
    v113 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v112) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v113 = 3;
  }

  v4 += v113;
  if ((v103 & 0x10) == 0)
  {
LABEL_301:
    if ((v103 & 0x20) == 0)
    {
      goto LABEL_302;
    }

    goto LABEL_327;
  }

LABEL_323:
  v114 = *(this + 71);
  if (v114 >= 0x80)
  {
    v115 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v114) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v115 = 3;
  }

  v4 += v115;
  if ((v103 & 0x20) == 0)
  {
LABEL_302:
    if ((v103 & 0x40) == 0)
    {
      goto LABEL_303;
    }

    goto LABEL_331;
  }

LABEL_327:
  v116 = *(this + 72);
  if (v116 >= 0x80)
  {
    v117 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v116) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v117 = 3;
  }

  v4 += v117;
  if ((v103 & 0x40) == 0)
  {
LABEL_303:
    if ((v103 & 0x80) == 0)
    {
      goto LABEL_339;
    }

    goto LABEL_335;
  }

LABEL_331:
  v118 = *(this + 73);
  if (v118 >= 0x80)
  {
    v119 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v119 = 3;
  }

  v4 += v119;
  if ((v103 & 0x80) != 0)
  {
LABEL_335:
    v120 = *(this + 74);
    if (v120 >= 0x80)
    {
      v121 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v120) + 2;
      v103 = *(this + 115);
    }

    else
    {
      v121 = 3;
    }

    v4 += v121;
  }

LABEL_339:
  if ((v103 & 0xFF00) == 0)
  {
    goto LABEL_402;
  }

  if ((v103 & 0x100) != 0)
  {
    v122 = *(this + 75);
    if (v122 >= 0x80)
    {
      v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v122) + 2;
      v103 = *(this + 115);
    }

    else
    {
      v123 = 3;
    }

    v4 += v123;
    if ((v103 & 0x200) == 0)
    {
LABEL_342:
      if ((v103 & 0x400) == 0)
      {
        goto LABEL_343;
      }

      goto LABEL_357;
    }
  }

  else if ((v103 & 0x200) == 0)
  {
    goto LABEL_342;
  }

  v124 = *(this + 76);
  if (v124 >= 0x80)
  {
    v125 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v124) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v125 = 3;
  }

  v4 += v125;
  if ((v103 & 0x400) == 0)
  {
LABEL_343:
    if ((v103 & 0x800) == 0)
    {
      goto LABEL_344;
    }

    goto LABEL_378;
  }

LABEL_357:
  v126 = *(this + 77);
  if ((v126 & 0x80000000) != 0)
  {
    v127 = 12;
  }

  else if (v126 >= 0x80)
  {
    v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v127 = 3;
  }

  v4 += v127;
  if ((v103 & 0x800) == 0)
  {
LABEL_344:
    if ((v103 & 0x1000) == 0)
    {
      goto LABEL_345;
    }

    goto LABEL_382;
  }

LABEL_378:
  v134 = *(this + 78);
  if (v134 >= 0x80)
  {
    v135 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v134) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v135 = 3;
  }

  v4 += v135;
  if ((v103 & 0x1000) == 0)
  {
LABEL_345:
    if ((v103 & 0x2000) == 0)
    {
      goto LABEL_346;
    }

    goto LABEL_388;
  }

LABEL_382:
  v136 = *(this + 79);
  if ((v136 & 0x80000000) != 0)
  {
    v137 = 12;
  }

  else if (v136 >= 0x80)
  {
    v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v136) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v137 = 3;
  }

  v4 += v137;
  if ((v103 & 0x2000) == 0)
  {
LABEL_346:
    if ((v103 & 0x4000) == 0)
    {
      goto LABEL_347;
    }

    goto LABEL_392;
  }

LABEL_388:
  v138 = *(this + 80);
  if (v138 >= 0x80)
  {
    v139 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v138) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v139 = 3;
  }

  v4 += v139;
  if ((v103 & 0x4000) == 0)
  {
LABEL_347:
    if ((v103 & 0x8000) == 0)
    {
      goto LABEL_402;
    }

    goto LABEL_398;
  }

LABEL_392:
  v140 = *(this + 81);
  if ((v140 & 0x80000000) != 0)
  {
    v141 = 12;
  }

  else if (v140 >= 0x80)
  {
    v141 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v140) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v141 = 3;
  }

  v4 += v141;
  if ((v103 & 0x8000) != 0)
  {
LABEL_398:
    v142 = *(this + 82);
    if (v142 >= 0x80)
    {
      v143 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v142) + 2;
      v103 = *(this + 115);
    }

    else
    {
      v143 = 3;
    }

    v4 += v143;
  }

LABEL_402:
  if ((v103 & 0xFF0000) == 0)
  {
    goto LABEL_444;
  }

  if ((v103 & 0x10000) != 0)
  {
    v144 = *(this + 83);
    if (v144 >= 0x80)
    {
      v145 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v144) + 2;
      v103 = *(this + 115);
    }

    else
    {
      v145 = 3;
    }

    v4 += v145;
    if ((v103 & 0x20000) == 0)
    {
LABEL_405:
      if ((v103 & 0x40000) == 0)
      {
        goto LABEL_406;
      }

      goto LABEL_420;
    }
  }

  else if ((v103 & 0x20000) == 0)
  {
    goto LABEL_405;
  }

  v146 = *(this + 84);
  if (v146 >= 0x80)
  {
    v147 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v146) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v147 = 3;
  }

  v4 += v147;
  if ((v103 & 0x40000) == 0)
  {
LABEL_406:
    if ((v103 & 0x80000) == 0)
    {
      goto LABEL_407;
    }

    goto LABEL_424;
  }

LABEL_420:
  v148 = *(this + 85);
  if (v148 >= 0x80)
  {
    v149 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v148) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v149 = 3;
  }

  v4 += v149;
  if ((v103 & 0x80000) == 0)
  {
LABEL_407:
    if ((v103 & 0x100000) == 0)
    {
      goto LABEL_408;
    }

    goto LABEL_428;
  }

LABEL_424:
  v150 = *(this + 86);
  if (v150 >= 0x80)
  {
    v151 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v150) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v151 = 3;
  }

  v4 += v151;
  if ((v103 & 0x100000) == 0)
  {
LABEL_408:
    if ((v103 & 0x200000) == 0)
    {
      goto LABEL_409;
    }

    goto LABEL_432;
  }

LABEL_428:
  v152 = *(this + 87);
  if (v152 >= 0x80)
  {
    v153 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v152) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v153 = 3;
  }

  v4 += v153;
  if ((v103 & 0x200000) == 0)
  {
LABEL_409:
    if ((v103 & 0x400000) == 0)
    {
      goto LABEL_410;
    }

    goto LABEL_436;
  }

LABEL_432:
  v154 = *(this + 88);
  if (v154 >= 0x80)
  {
    v155 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v154) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v155 = 3;
  }

  v4 += v155;
  if ((v103 & 0x400000) == 0)
  {
LABEL_410:
    if ((v103 & 0x800000) == 0)
    {
      goto LABEL_444;
    }

    goto LABEL_440;
  }

LABEL_436:
  v156 = *(this + 89);
  if (v156 >= 0x80)
  {
    v157 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v156) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v157 = 3;
  }

  v4 += v157;
  if ((v103 & 0x800000) != 0)
  {
LABEL_440:
    v158 = *(this + 90);
    if (v158 >= 0x80)
    {
      v159 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v158) + 2;
      v103 = *(this + 115);
    }

    else
    {
      v159 = 3;
    }

    v4 += v159;
  }

LABEL_444:
  if (!HIBYTE(v103))
  {
    goto LABEL_485;
  }

  if ((v103 & 0x1000000) != 0)
  {
    v160 = *(this + 91);
    if (v160 >= 0x80)
    {
      v161 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v160) + 2;
      v103 = *(this + 115);
    }

    else
    {
      v161 = 3;
    }

    v4 += v161;
    if ((v103 & 0x2000000) == 0)
    {
LABEL_447:
      if ((v103 & 0x4000000) == 0)
      {
        goto LABEL_448;
      }

LABEL_458:
      v164 = *(this + 93);
      if (v164 >= 0x80)
      {
        v165 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v164) + 2;
        v103 = *(this + 115);
      }

      else
      {
        v165 = 3;
      }

      v4 += v165;
      if ((v103 & 0x8000000) == 0)
      {
        goto LABEL_466;
      }

      goto LABEL_462;
    }
  }

  else if ((v103 & 0x2000000) == 0)
  {
    goto LABEL_447;
  }

  v162 = *(this + 92);
  if (v162 >= 0x80)
  {
    v163 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v162) + 2;
    v103 = *(this + 115);
  }

  else
  {
    v163 = 3;
  }

  v4 += v163;
  if ((v103 & 0x4000000) != 0)
  {
    goto LABEL_458;
  }

LABEL_448:
  if ((v103 & 0x8000000) != 0)
  {
LABEL_462:
    v166 = *(this + 94);
    if (v166 >= 0x80)
    {
      v167 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v166) + 2;
      v103 = *(this + 115);
    }

    else
    {
      v167 = 3;
    }

    v4 += v167;
  }

LABEL_466:
  v168 = v4 + 3;
  if ((v103 & 0x10000000) == 0)
  {
    v168 = v4;
  }

  if ((v103 & 0x20000000) != 0)
  {
    v4 = v168 + 3;
  }

  else
  {
    v4 = v168;
  }

  if ((v103 & 0x40000000) != 0)
  {
    v169 = *(this + 96);
    if ((v169 & 0x80000000) != 0)
    {
      v170 = 12;
    }

    else if (v169 >= 0x80)
    {
      v170 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v169) + 2;
      v103 = *(this + 115);
    }

    else
    {
      v170 = 3;
    }

    v4 += v170;
  }

  if ((v103 & 0x80000000) != 0)
  {
    v171 = *(this + 97);
    if ((v171 & 0x80000000) != 0)
    {
      v172 = 12;
    }

    else if (v171 >= 0x80)
    {
      v172 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v171) + 2;
    }

    else
    {
      v172 = 3;
    }

    v4 += v172;
  }

LABEL_485:
  v173 = *(this + 116);
  if (!v173)
  {
    goto LABEL_522;
  }

  if (v173)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 49)) + 2;
    v173 = *(this + 116);
  }

  if ((v173 & 2) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 50)) + 2;
    v173 = *(this + 116);
  }

  if ((v173 & 4) != 0)
  {
    v4 += 10;
  }

  if ((v173 & 8) != 0)
  {
    v174 = *(this + 104);
    if (v174 >= 0x80)
    {
      v175 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v174) + 2;
      v173 = *(this + 116);
    }

    else
    {
      v175 = 3;
    }

    v4 += v175;
    if ((v173 & 0x10) == 0)
    {
LABEL_494:
      if ((v173 & 0x20) == 0)
      {
        goto LABEL_495;
      }

      goto LABEL_506;
    }
  }

  else if ((v173 & 0x10) == 0)
  {
    goto LABEL_494;
  }

  v176 = *(this + 105);
  if (v176 >= 0x80)
  {
    v177 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v176) + 2;
    v173 = *(this + 116);
  }

  else
  {
    v177 = 3;
  }

  v4 += v177;
  if ((v173 & 0x20) == 0)
  {
LABEL_495:
    if ((v173 & 0x40) == 0)
    {
      goto LABEL_496;
    }

    goto LABEL_510;
  }

LABEL_506:
  v178 = *(this + 106);
  if (v178 >= 0x80)
  {
    v179 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v178) + 2;
    v173 = *(this + 116);
  }

  else
  {
    v179 = 3;
  }

  v4 += v179;
  if ((v173 & 0x40) == 0)
  {
LABEL_496:
    if ((v173 & 0x80) == 0)
    {
      goto LABEL_522;
    }

    goto LABEL_516;
  }

LABEL_510:
  v180 = *(this + 107);
  if ((v180 & 0x80000000) != 0)
  {
    v181 = 12;
  }

  else if (v180 >= 0x80)
  {
    v181 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v180) + 2;
    v173 = *(this + 116);
  }

  else
  {
    v181 = 3;
  }

  v4 += v181;
  if ((v173 & 0x80) != 0)
  {
LABEL_516:
    v182 = *(this + 108);
    if ((v182 & 0x80000000) != 0)
    {
      v183 = 12;
    }

    else if (v182 >= 0x80)
    {
      v183 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v182) + 2;
      v173 = *(this + 116);
    }

    else
    {
      v183 = 3;
    }

    v4 += v183;
  }

LABEL_522:
  if ((v173 & 0xFF00) == 0)
  {
    goto LABEL_541;
  }

  if ((v173 & 0x100) != 0)
  {
    v184 = *(this + 109);
    if ((v184 & 0x80000000) != 0)
    {
      v185 = 12;
    }

    else if (v184 >= 0x80)
    {
      v185 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v184) + 2;
      v173 = *(this + 116);
    }

    else
    {
      v185 = 3;
    }

    v4 += v185;
    if ((v173 & 0x200) == 0)
    {
LABEL_525:
      if ((v173 & 0x400) == 0)
      {
        goto LABEL_541;
      }

      goto LABEL_537;
    }
  }

  else if ((v173 & 0x200) == 0)
  {
    goto LABEL_525;
  }

  v186 = *(this + 110);
  if (v186 >= 0x80)
  {
    v187 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v186) + 2;
    v173 = *(this + 116);
  }

  else
  {
    v187 = 3;
  }

  v4 += v187;
  if ((v173 & 0x400) != 0)
  {
LABEL_537:
    v188 = *(this + 111);
    if (v188 >= 0x80)
    {
      v189 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v188) + 2;
    }

    else
    {
      v189 = 3;
    }

    v4 += v189;
  }

LABEL_541:
  v190 = *(this + 62);
  if (v190 < 1)
  {
    v192 = 0;
  }

  else
  {
    v191 = 0;
    v192 = 0;
    do
    {
      v193 = *(*(this + 30) + 4 * v191);
      if (v193 >= 0x80)
      {
        v194 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v193);
        v190 = *(this + 62);
      }

      else
      {
        v194 = 1;
      }

      v192 += v194;
      ++v191;
    }

    while (v191 < v190);
  }

  result = (v192 + v4 + 2 * v190);
  *(this + 112) = result;
  return result;
}

void awd::metrics::MotionFitnessSession::CheckTypeAndMergeFrom(awd::metrics::MotionFitnessSession *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::MotionFitnessSession::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionFitnessSession::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionFitnessSession::CopyFrom(awd::metrics::MotionFitnessSession *this, const awd::metrics::MotionFitnessSession *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionFitnessSession::MergeFrom(this, a2);
  }
}

double awd::metrics::MotionFitnessSession::Swap(awd::metrics::MotionFitnessSession *this, awd::metrics::MotionFitnessSession *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    LOBYTE(v2) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    LODWORD(v3) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    LODWORD(v3) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v3;
    LOBYTE(v3) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v3;
    LODWORD(v3) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v3;
    LODWORD(v3) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v3;
    LODWORD(v3) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v3;
    LODWORD(v3) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v3;
    LODWORD(v3) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v3;
    LODWORD(v3) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v3;
    LOBYTE(v3) = *(this + 54);
    *(this + 54) = *(a2 + 54);
    *(a2 + 54) = v3;
    LOBYTE(v3) = *(this + 55);
    *(this + 55) = *(a2 + 55);
    *(a2 + 55) = v3;
    LODWORD(v3) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v3;
    LODWORD(v3) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v3;
    LODWORD(v3) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v3;
    LODWORD(v3) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v3;
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
    LODWORD(v3) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v3;
    LODWORD(v3) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v3;
    LODWORD(v3) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v3;
    v4 = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v4;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v3;
    v5 = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v5;
    v6 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v6;
    LODWORD(v3) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v3;
    LODWORD(v3) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v3;
    LOBYTE(v3) = *(this + 224);
    *(this + 224) = *(a2 + 224);
    *(a2 + 224) = v3;
    LODWORD(v3) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v3;
    LODWORD(v3) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v3;
    LOBYTE(v3) = *(this + 225);
    *(this + 225) = *(a2 + 225);
    *(a2 + 225) = v3;
    LODWORD(v3) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v3;
    LODWORD(v3) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v3;
    LODWORD(v3) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v3;
    v7 = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v7;
    LODWORD(v3) = *(this + 45);
    *(this + 45) = *(a2 + 45);
    *(a2 + 45) = v3;
    LODWORD(v3) = *(this + 46);
    *(this + 46) = *(a2 + 46);
    *(a2 + 46) = v3;
    LODWORD(v3) = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v3;
    LODWORD(v3) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v3;
    LODWORD(v3) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v3;
    LODWORD(v3) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v3;
    LODWORD(v3) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v3;
    LODWORD(v3) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v3;
    LODWORD(v3) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v3;
    LODWORD(v3) = *(this + 54);
    *(this + 54) = *(a2 + 54);
    *(a2 + 54) = v3;
    LODWORD(v3) = *(this + 55);
    *(this + 55) = *(a2 + 55);
    *(a2 + 55) = v3;
    LOBYTE(v3) = *(this + 226);
    *(this + 226) = *(a2 + 226);
    *(a2 + 226) = v3;
    LODWORD(v3) = *(this + 57);
    *(this + 57) = *(a2 + 57);
    *(a2 + 57) = v3;
    LODWORD(v3) = *(this + 58);
    *(this + 58) = *(a2 + 58);
    *(a2 + 58) = v3;
    LODWORD(v3) = *(this + 59);
    *(this + 59) = *(a2 + 59);
    *(a2 + 59) = v3;
    LODWORD(v3) = *(this + 64);
    *(this + 64) = *(a2 + 64);
    *(a2 + 64) = v3;
    v8 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    v9 = *(a2 + 31);
    *(a2 + 30) = v8;
    v10 = *(this + 31);
    *(this + 31) = v9;
    *(a2 + 31) = v10;
    v11 = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v11;
    LODWORD(v11) = *(this + 65);
    *(this + 65) = *(a2 + 65);
    *(a2 + 65) = v11;
    LODWORD(v11) = *(this + 68);
    *(this + 68) = *(a2 + 68);
    *(a2 + 68) = v11;
    LODWORD(v11) = *(this + 69);
    *(this + 69) = *(a2 + 69);
    *(a2 + 69) = v11;
    LODWORD(v11) = *(this + 70);
    *(this + 70) = *(a2 + 70);
    *(a2 + 70) = v11;
    LODWORD(v11) = *(this + 71);
    *(this + 71) = *(a2 + 71);
    *(a2 + 71) = v11;
    LODWORD(v11) = *(this + 72);
    *(this + 72) = *(a2 + 72);
    *(a2 + 72) = v11;
    LODWORD(v11) = *(this + 73);
    *(this + 73) = *(a2 + 73);
    *(a2 + 73) = v11;
    LODWORD(v11) = *(this + 74);
    *(this + 74) = *(a2 + 74);
    *(a2 + 74) = v11;
    LODWORD(v11) = *(this + 75);
    *(this + 75) = *(a2 + 75);
    *(a2 + 75) = v11;
    LODWORD(v11) = *(this + 76);
    *(this + 76) = *(a2 + 76);
    *(a2 + 76) = v11;
    LODWORD(v11) = *(this + 77);
    *(this + 77) = *(a2 + 77);
    *(a2 + 77) = v11;
    LODWORD(v11) = *(this + 78);
    *(this + 78) = *(a2 + 78);
    *(a2 + 78) = v11;
    LODWORD(v11) = *(this + 79);
    *(this + 79) = *(a2 + 79);
    *(a2 + 79) = v11;
    LODWORD(v11) = *(this + 80);
    *(this + 80) = *(a2 + 80);
    *(a2 + 80) = v11;
    LODWORD(v11) = *(this + 81);
    *(this + 81) = *(a2 + 81);
    *(a2 + 81) = v11;
    LODWORD(v11) = *(this + 82);
    *(this + 82) = *(a2 + 82);
    *(a2 + 82) = v11;
    LODWORD(v11) = *(this + 83);
    *(this + 83) = *(a2 + 83);
    *(a2 + 83) = v11;
    LODWORD(v11) = *(this + 84);
    *(this + 84) = *(a2 + 84);
    *(a2 + 84) = v11;
    LODWORD(v11) = *(this + 85);
    *(this + 85) = *(a2 + 85);
    *(a2 + 85) = v11;
    LODWORD(v11) = *(this + 86);
    *(this + 86) = *(a2 + 86);
    *(a2 + 86) = v11;
    LODWORD(v11) = *(this + 87);
    *(this + 87) = *(a2 + 87);
    *(a2 + 87) = v11;
    LODWORD(v11) = *(this + 88);
    *(this + 88) = *(a2 + 88);
    *(a2 + 88) = v11;
    LODWORD(v11) = *(this + 89);
    *(this + 89) = *(a2 + 89);
    *(a2 + 89) = v11;
    LODWORD(v11) = *(this + 90);
    *(this + 90) = *(a2 + 90);
    *(a2 + 90) = v11;
    LODWORD(v11) = *(this + 91);
    *(this + 91) = *(a2 + 91);
    *(a2 + 91) = v11;
    LODWORD(v11) = *(this + 92);
    *(this + 92) = *(a2 + 92);
    *(a2 + 92) = v11;
    LODWORD(v11) = *(this + 93);
    *(this + 93) = *(a2 + 93);
    *(a2 + 93) = v11;
    LODWORD(v11) = *(this + 94);
    *(this + 94) = *(a2 + 94);
    *(a2 + 94) = v11;
    LOBYTE(v11) = *(this + 227);
    *(this + 227) = *(a2 + 227);
    *(a2 + 227) = v11;
    LOBYTE(v11) = *(this + 380);
    *(this + 380) = *(a2 + 380);
    *(a2 + 380) = v11;
    LODWORD(v11) = *(this + 96);
    *(this + 96) = *(a2 + 96);
    *(a2 + 96) = v11;
    LODWORD(v11) = *(this + 97);
    *(this + 97) = *(a2 + 97);
    *(a2 + 97) = v11;
    v12 = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v12;
    v13 = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v13;
    result = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = result;
    LODWORD(v13) = *(this + 104);
    *(this + 104) = *(a2 + 104);
    *(a2 + 104) = v13;
    LODWORD(v13) = *(this + 105);
    *(this + 105) = *(a2 + 105);
    *(a2 + 105) = v13;
    LODWORD(v13) = *(this + 106);
    *(this + 106) = *(a2 + 106);
    *(a2 + 106) = v13;
    LODWORD(v13) = *(this + 107);
    *(this + 107) = *(a2 + 107);
    *(a2 + 107) = v13;
    LODWORD(v13) = *(this + 108);
    *(this + 108) = *(a2 + 108);
    *(a2 + 108) = v13;
    LODWORD(v13) = *(this + 109);
    *(this + 109) = *(a2 + 109);
    *(a2 + 109) = v13;
    LODWORD(v13) = *(this + 110);
    *(this + 110) = *(a2 + 110);
    *(a2 + 110) = v13;
    LODWORD(v13) = *(this + 111);
    *(this + 111) = *(a2 + 111);
    *(a2 + 111) = v13;
    LODWORD(v13) = *(this + 113);
    *(this + 113) = *(a2 + 113);
    *(a2 + 113) = v13;
    LODWORD(v13) = *(this + 114);
    *(this + 114) = *(a2 + 114);
    *(a2 + 114) = v13;
    LODWORD(v13) = *(this + 115);
    *(this + 115) = *(a2 + 115);
    *(a2 + 115) = v13;
    LODWORD(v13) = *(this + 116);
    *(this + 116) = *(a2 + 116);
    *(a2 + 116) = v13;
    LODWORD(v13) = *(this + 112);
    *(this + 112) = *(a2 + 112);
    *(a2 + 112) = v13;
  }

  return result;
}

double awd::metrics::MotionFitnessAllDay::SharedCtor(awd::metrics::MotionFitnessAllDay *this)
{
  *(this + 216) = 0;
  *(this + 23) = 0;
  *(this + 444) = 0;
  *(this + 36) = 0;
  *(this + 39) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 40) = MEMORY[0x29EDC9758];
  *(this + 41) = v2;
  *(this + 42) = v2;
  *(this + 43) = v2;
  *(this + 44) = v2;
  *(this + 98) = 0;
  *(this + 221) = 0;
  *(this + 868) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 110) = 0;
  *(this + 445) = 0u;
  *(this + 461) = 0u;
  *(this + 477) = 0u;
  *(this + 123) = 0;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 107) = 0;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 808) = 0u;
  return result;
}

awd::metrics::MotionFitnessAllDay *awd::metrics::MotionFitnessAllDay::MotionFitnessAllDay(awd::metrics::MotionFitnessAllDay *this, const awd::metrics::MotionFitnessAllDay *a2)
{
  *(this + 88) = 0u;
  *this = &unk_2A1D4F3E0;
  *(this + 12) = 0u;
  *(this + 17) = 0u;
  *(this + 296) = 0u;
  *(this + 360) = 0u;
  *(this + 792) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 40) = 0u;
  awd::metrics::MotionFitnessAllDay::SharedCtor(this);
  awd::metrics::MotionFitnessAllDay::MergeFrom(this, a2);
  return this;
}

void sub_2964240F0(_Unwind_Exception *a1)
{
  v8 = v3;
  if (*v8)
  {
    MEMORY[0x29C25A710](*v8, 0x1000C8000313F17);
  }

  v10 = *(v1 + 96);
  if (v10)
  {
    MEMORY[0x29C25A710](v10, 0x1000C8000313F17);
  }

  v11 = *(v1 + 94);
  if (v11)
  {
    MEMORY[0x29C25A710](v11, 0x1000C8000313F17);
  }

  v12 = *(v1 + 92);
  if (v12)
  {
    MEMORY[0x29C25A710](v12, 0x1000C8000313F17);
  }

  v13 = *(v1 + 90);
  if (v13)
  {
    MEMORY[0x29C25A710](v13, 0x1000C8000313F17);
  }

  v14 = *(v1 + 88);
  if (v14)
  {
    MEMORY[0x29C25A710](v14, 0x1000C8000313F17);
  }

  v15 = *(v1 + 86);
  if (v15)
  {
    MEMORY[0x29C25A710](v15, 0x1000C8052888210);
  }

  v16 = *(v1 + 84);
  if (v16)
  {
    MEMORY[0x29C25A710](v16, 0x1000C8052888210);
  }

  v17 = *(v1 + 82);
  if (v17)
  {
    MEMORY[0x29C25A710](v17, 0x1000C8052888210);
  }

  if (*v7)
  {
    MEMORY[0x29C25A710](*v7, 0x1000C8052888210);
  }

  v18 = *(v1 + 64);
  if (v18)
  {
    MEMORY[0x29C25A710](v18, 0x1000C8052888210);
  }

  v19 = *(v1 + 62);
  if (v19)
  {
    MEMORY[0x29C25A710](v19, 0x1000C8052888210);
  }

  if (*v6)
  {
    MEMORY[0x29C25A710](*v6, 0x1000C8052888210);
  }

  if (*v5)
  {
    MEMORY[0x29C25A710](*v5, 0x1000C8052888210);
  }

  v20 = *(v1 + 34);
  if (v20)
  {
    MEMORY[0x29C25A710](v20, 0x1000C8052888210);
  }

  v21 = *(v1 + 28);
  if (v21)
  {
    MEMORY[0x29C25A710](v21, 0x1000C8052888210);
  }

  v22 = *(v1 + 26);
  if (v22)
  {
    MEMORY[0x29C25A710](v22, 0x1000C8052888210);
  }

  if (*v4)
  {
    MEMORY[0x29C25A710](*v4, 0x1000C8052888210);
  }

  v23 = *(v1 + 21);
  if (v23)
  {
    MEMORY[0x29C25A710](v23, 0x1000C8052888210);
  }

  v24 = *(v1 + 19);
  if (v24)
  {
    MEMORY[0x29C25A710](v24, 0x1000C8052888210);
  }

  v25 = *(v1 + 17);
  if (v25)
  {
    MEMORY[0x29C25A710](v25, 0x1000C8052888210);
  }

  v26 = *(v1 + 15);
  if (v26)
  {
    MEMORY[0x29C25A710](v26, 0x1000C8052888210);
  }

  v27 = *(v1 + 13);
  if (v27)
  {
    MEMORY[0x29C25A710](v27, 0x1000C8052888210);
  }

  if (*v2)
  {
    MEMORY[0x29C25A710](*v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionFitnessAllDay::MergeFrom(awd::metrics::MotionFitnessAllDay *this, const awd::metrics::MotionFitnessAllDay *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v157);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 11, *(this + 24) + v4);
    memcpy((*(this + 11) + 4 * *(this + 24)), *(a2 + 11), 4 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  v5 = *(a2 + 28);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 13, *(this + 28) + v5);
    memcpy((*(this + 13) + 4 * *(this + 28)), *(a2 + 13), 4 * *(a2 + 28));
    *(this + 28) += *(a2 + 28);
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 15, *(this + 32) + v6);
    memcpy((*(this + 15) + 4 * *(this + 32)), *(a2 + 15), 4 * *(a2 + 32));
    *(this + 32) += *(a2 + 32);
  }

  v7 = *(a2 + 36);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 17, *(this + 36) + v7);
    memcpy((*(this + 17) + 4 * *(this + 36)), *(a2 + 17), 4 * *(a2 + 36));
    *(this + 36) += *(a2 + 36);
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 19, *(this + 40) + v8);
    memcpy((*(this + 19) + 4 * *(this + 40)), *(a2 + 19), 4 * *(a2 + 40));
    *(this + 40) += *(a2 + 40);
  }

  v9 = *(a2 + 44);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 21, *(this + 44) + v9);
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

  v11 = *(a2 + 54);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 26, *(this + 54) + v11);
    memcpy((*(this + 26) + 4 * *(this + 54)), *(a2 + 26), 4 * *(a2 + 54));
    *(this + 54) += *(a2 + 54);
  }

  v12 = *(a2 + 58);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 28, *(this + 58) + v12);
    memcpy((*(this + 28) + 4 * *(this + 58)), *(a2 + 28), 4 * *(a2 + 58));
    *(this + 58) += *(a2 + 58);
  }

  v13 = *(a2 + 70);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 34, *(this + 70) + v13);
    memcpy((*(this + 34) + 4 * *(this + 70)), *(a2 + 34), 4 * *(a2 + 70));
    *(this + 70) += *(a2 + 70);
  }

  v14 = *(a2 + 76);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 37, *(this + 76) + v14);
    memcpy((*(this + 37) + 4 * *(this + 76)), *(a2 + 37), 4 * *(a2 + 76));
    *(this + 76) += *(a2 + 76);
  }

  v15 = *(a2 + 92);
  if (v15)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 45, *(this + 92) + v15);
    memcpy((*(this + 45) + 4 * *(this + 92)), *(a2 + 45), 4 * *(a2 + 92));
    *(this + 92) += *(a2 + 92);
  }

  v16 = *(a2 + 126);
  if (v16)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 62, *(this + 126) + v16);
    memcpy((*(this + 62) + 4 * *(this + 126)), *(a2 + 62), 4 * *(a2 + 126));
    *(this + 126) += *(a2 + 126);
  }

  v17 = *(a2 + 130);
  if (v17)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 64, *(this + 130) + v17);
    memcpy((*(this + 64) + 4 * *(this + 130)), *(a2 + 64), 4 * *(a2 + 130));
    *(this + 130) += *(a2 + 130);
  }

  v18 = *(a2 + 162);
  if (v18)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 80, *(this + 162) + v18);
    memcpy((*(this + 80) + 4 * *(this + 162)), *(a2 + 80), 4 * *(a2 + 162));
    *(this + 162) += *(a2 + 162);
  }

  v19 = *(a2 + 166);
  if (v19)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 82, *(this + 166) + v19);
    memcpy((*(this + 82) + 4 * *(this + 166)), *(a2 + 82), 4 * *(a2 + 166));
    *(this + 166) += *(a2 + 166);
  }

  v20 = *(a2 + 170);
  if (v20)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 84, *(this + 170) + v20);
    memcpy((*(this + 84) + 4 * *(this + 170)), *(a2 + 84), 4 * *(a2 + 170));
    *(this + 170) += *(a2 + 170);
  }

  v21 = *(a2 + 174);
  if (v21)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 86, *(this + 174) + v21);
    memcpy((*(this + 86) + 4 * *(this + 174)), *(a2 + 86), 4 * *(a2 + 174));
    *(this + 174) += *(a2 + 174);
  }

  v22 = *(a2 + 178);
  if (v22)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 88, *(this + 178) + v22);
    memcpy((*(this + 88) + 8 * *(this + 178)), *(a2 + 88), 8 * *(a2 + 178));
    *(this + 178) += *(a2 + 178);
  }

  v23 = *(a2 + 182);
  if (v23)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 90, *(this + 182) + v23);
    memcpy((*(this + 90) + 8 * *(this + 182)), *(a2 + 90), 8 * *(a2 + 182));
    *(this + 182) += *(a2 + 182);
  }

  v24 = *(a2 + 186);
  if (v24)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 92, *(this + 186) + v24);
    memcpy((*(this + 92) + 8 * *(this + 186)), *(a2 + 92), 8 * *(a2 + 186));
    *(this + 186) += *(a2 + 186);
  }

  v25 = *(a2 + 190);
  if (v25)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 94, *(this + 190) + v25);
    memcpy((*(this + 94) + 8 * *(this + 190)), *(a2 + 94), 8 * *(a2 + 190));
    *(this + 190) += *(a2 + 190);
  }

  v26 = *(a2 + 194);
  if (v26)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 96, *(this + 194) + v26);
    memcpy((*(this + 96) + 8 * *(this + 194)), *(a2 + 96), 8 * *(a2 + 194));
    *(this + 194) += *(a2 + 194);
  }

  v27 = *(a2 + 200);
  if (v27)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 99, *(this + 200) + v27);
    memcpy((*(this + 99) + 8 * *(this + 200)), *(a2 + 99), 8 * *(a2 + 200));
    *(this + 200) += *(a2 + 200);
  }

  v28 = *(a2 + 217);
  if (!v28)
  {
    goto LABEL_61;
  }

  if (v28)
  {
    v52 = *(a2 + 1);
    *(this + 217) |= 1u;
    *(this + 1) = v52;
    v28 = *(a2 + 217);
    if ((v28 & 2) == 0)
    {
LABEL_54:
      if ((v28 & 4) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_208;
    }
  }

  else if ((v28 & 2) == 0)
  {
    goto LABEL_54;
  }

  v53 = *(a2 + 68);
  *(this + 217) |= 2u;
  *(this + 68) = v53;
  v28 = *(a2 + 217);
  if ((v28 & 4) == 0)
  {
LABEL_55:
    if ((v28 & 8) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_209;
  }

LABEL_208:
  v54 = *(a2 + 69);
  *(this + 217) |= 4u;
  *(this + 69) = v54;
  v28 = *(a2 + 217);
  if ((v28 & 8) == 0)
  {
LABEL_56:
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_210;
  }

LABEL_209:
  v55 = *(a2 + 4);
  *(this + 217) |= 8u;
  *(this + 4) = v55;
  v28 = *(a2 + 217);
  if ((v28 & 0x10) == 0)
  {
LABEL_57:
    if ((v28 & 0x20) == 0)
    {
      goto LABEL_58;
    }

LABEL_211:
    v57 = *(a2 + 6);
    *(this + 217) |= 0x20u;
    *(this + 6) = v57;
    v28 = *(a2 + 217);
    if ((v28 & 0x40) == 0)
    {
LABEL_59:
      if ((v28 & 0x80) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    goto LABEL_212;
  }

LABEL_210:
  v56 = *(a2 + 5);
  *(this + 217) |= 0x10u;
  *(this + 5) = v56;
  v28 = *(a2 + 217);
  if ((v28 & 0x20) != 0)
  {
    goto LABEL_211;
  }

LABEL_58:
  if ((v28 & 0x40) == 0)
  {
    goto LABEL_59;
  }

LABEL_212:
  v58 = *(a2 + 7);
  *(this + 217) |= 0x40u;
  *(this + 7) = v58;
  v28 = *(a2 + 217);
  if ((v28 & 0x80) != 0)
  {
LABEL_60:
    v29 = *(a2 + 8);
    *(this + 217) |= 0x80u;
    *(this + 8) = v29;
    v28 = *(a2 + 217);
  }

LABEL_61:
  if ((v28 & 0xFF00) == 0)
  {
    goto LABEL_71;
  }

  if ((v28 & 0x100) != 0)
  {
    v59 = *(a2 + 9);
    *(this + 217) |= 0x100u;
    *(this + 9) = v59;
    v28 = *(a2 + 217);
    if ((v28 & 0x200) == 0)
    {
LABEL_64:
      if ((v28 & 0x400) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_216;
    }
  }

  else if ((v28 & 0x200) == 0)
  {
    goto LABEL_64;
  }

  v60 = *(a2 + 10);
  *(this + 217) |= 0x200u;
  *(this + 10) = v60;
  v28 = *(a2 + 217);
  if ((v28 & 0x400) == 0)
  {
LABEL_65:
    if ((v28 & 0x800) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_217;
  }

LABEL_216:
  v61 = *(a2 + 11);
  *(this + 217) |= 0x400u;
  *(this + 11) = v61;
  v28 = *(a2 + 217);
  if ((v28 & 0x800) == 0)
  {
LABEL_66:
    if ((v28 & 0x1000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_218;
  }

LABEL_217:
  v62 = *(a2 + 12);
  *(this + 217) |= 0x800u;
  *(this + 12) = v62;
  v28 = *(a2 + 217);
  if ((v28 & 0x1000) == 0)
  {
LABEL_67:
    if ((v28 & 0x2000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_219;
  }

LABEL_218:
  v63 = *(a2 + 13);
  *(this + 217) |= 0x1000u;
  *(this + 13) = v63;
  v28 = *(a2 + 217);
  if ((v28 & 0x2000) == 0)
  {
LABEL_68:
    if ((v28 & 0x4000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_220;
  }

LABEL_219:
  v64 = *(a2 + 14);
  *(this + 217) |= 0x2000u;
  *(this + 14) = v64;
  v28 = *(a2 + 217);
  if ((v28 & 0x4000) == 0)
  {
LABEL_69:
    if ((v28 & 0x8000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

LABEL_220:
  v65 = *(a2 + 15);
  *(this + 217) |= 0x4000u;
  *(this + 15) = v65;
  v28 = *(a2 + 217);
  if ((v28 & 0x8000) != 0)
  {
LABEL_70:
    v30 = *(a2 + 16);
    *(this + 217) |= 0x8000u;
    *(this + 16) = v30;
    v28 = *(a2 + 217);
  }

LABEL_71:
  if ((v28 & 0xFF0000) == 0)
  {
    goto LABEL_78;
  }

  if ((v28 & 0x10000) != 0)
  {
    v66 = *(a2 + 18);
    *(this + 217) |= 0x10000u;
    *(this + 18) = v66;
    v28 = *(a2 + 217);
    if ((v28 & 0x20000) == 0)
    {
LABEL_74:
      if ((v28 & 0x40000) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_224;
    }
  }

  else if ((v28 & 0x20000) == 0)
  {
    goto LABEL_74;
  }

  v67 = *(a2 + 19);
  *(this + 217) |= 0x20000u;
  *(this + 19) = v67;
  v28 = *(a2 + 217);
  if ((v28 & 0x40000) == 0)
  {
LABEL_75:
    if ((v28 & 0x80000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_225;
  }

LABEL_224:
  v68 = *(a2 + 20);
  *(this + 217) |= 0x40000u;
  *(this + 20) = v68;
  v28 = *(a2 + 217);
  if ((v28 & 0x80000) == 0)
  {
LABEL_76:
    if ((v28 & 0x100000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_225:
  v69 = *(a2 + 21);
  *(this + 217) |= 0x80000u;
  *(this + 21) = v69;
  v28 = *(a2 + 217);
  if ((v28 & 0x100000) != 0)
  {
LABEL_77:
    v31 = *(a2 + 46);
    *(this + 217) |= 0x100000u;
    *(this + 46) = v31;
    v28 = *(a2 + 217);
  }

LABEL_78:
  if (v28 >> 27)
  {
    if ((v28 & 0x8000000) != 0)
    {
      v32 = *(a2 + 70);
      *(this + 217) |= 0x8000000u;
      *(this + 70) = v32;
      v28 = *(a2 + 217);
    }

    if ((v28 & 0x80000000) != 0)
    {
      v33 = *(a2 + 71);
      *(this + 217) |= 0x80000000;
      *(this + 71) = v33;
    }
  }

  v34 = *(a2 + 218);
  if (!v34)
  {
    goto LABEL_93;
  }

  if (v34)
  {
    v70 = *(a2 + 444);
    *(this + 218) |= 1u;
    *(this + 444) = v70;
    v34 = *(a2 + 218);
    if ((v34 & 2) == 0)
    {
LABEL_86:
      if ((v34 & 4) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_229;
    }
  }

  else if ((v34 & 2) == 0)
  {
    goto LABEL_86;
  }

  v71 = *(a2 + 47);
  *(this + 218) |= 2u;
  *(this + 47) = v71;
  v34 = *(a2 + 218);
  if ((v34 & 4) == 0)
  {
LABEL_87:
    if ((v34 & 8) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_230;
  }

LABEL_229:
  v72 = *(a2 + 60);
  *(this + 218) |= 4u;
  *(this + 60) = v72;
  v34 = *(a2 + 218);
  if ((v34 & 8) == 0)
  {
LABEL_88:
    if ((v34 & 0x10) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_231;
  }

LABEL_230:
  v73 = *(a2 + 61);
  *(this + 218) |= 8u;
  *(this + 61) = v73;
  v34 = *(a2 + 218);
  if ((v34 & 0x10) == 0)
  {
LABEL_89:
    if ((v34 & 0x20) == 0)
    {
      goto LABEL_90;
    }

LABEL_232:
    v75 = *(a2 + 63);
    *(this + 218) |= 0x20u;
    *(this + 63) = v75;
    v34 = *(a2 + 218);
    if ((v34 & 0x40) == 0)
    {
LABEL_91:
      if ((v34 & 0x80) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }

    goto LABEL_233;
  }

LABEL_231:
  v74 = *(a2 + 62);
  *(this + 218) |= 0x10u;
  *(this + 62) = v74;
  v34 = *(a2 + 218);
  if ((v34 & 0x20) != 0)
  {
    goto LABEL_232;
  }

LABEL_90:
  if ((v34 & 0x40) == 0)
  {
    goto LABEL_91;
  }

LABEL_233:
  v76 = *(a2 + 64);
  *(this + 218) |= 0x40u;
  *(this + 64) = v76;
  v34 = *(a2 + 218);
  if ((v34 & 0x80) != 0)
  {
LABEL_92:
    v35 = *(a2 + 65);
    *(this + 218) |= 0x80u;
    *(this + 65) = v35;
    v34 = *(a2 + 218);
  }

LABEL_93:
  if ((v34 & 0xFF00) == 0)
  {
    goto LABEL_101;
  }

  if ((v34 & 0x100) != 0)
  {
    v77 = *(a2 + 66);
    *(this + 218) |= 0x100u;
    *(this + 66) = v77;
    v34 = *(a2 + 218);
    if ((v34 & 0x200) == 0)
    {
LABEL_96:
      if ((v34 & 0x800) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_237;
    }
  }

  else if ((v34 & 0x200) == 0)
  {
    goto LABEL_96;
  }

  v78 = *(a2 + 67);
  *(this + 218) |= 0x200u;
  *(this + 67) = v78;
  v34 = *(a2 + 218);
  if ((v34 & 0x800) == 0)
  {
LABEL_97:
    if ((v34 & 0x2000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_238;
  }

LABEL_237:
  v79 = *(a2 + 72);
  *(this + 218) |= 0x800u;
  *(this + 72) = v79;
  v34 = *(a2 + 218);
  if ((v34 & 0x2000) == 0)
  {
LABEL_98:
    if ((v34 & 0x4000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_239;
  }

LABEL_238:
  v80 = *(a2 + 73);
  *(this + 218) |= 0x2000u;
  *(this + 73) = v80;
  v34 = *(a2 + 218);
  if ((v34 & 0x4000) == 0)
  {
LABEL_99:
    if ((v34 & 0x8000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

LABEL_239:
  v81 = *(a2 + 78);
  *(this + 218) |= 0x4000u;
  *(this + 78) = v81;
  v34 = *(a2 + 218);
  if ((v34 & 0x8000) != 0)
  {
LABEL_100:
    v36 = *(a2 + 79);
    *(this + 218) |= 0x8000u;
    *(this + 79) = v36;
    v34 = *(a2 + 218);
  }

LABEL_101:
  if ((v34 & 0xFF0000) == 0)
  {
    goto LABEL_110;
  }

  v37 = MEMORY[0x29EDC9758];
  if ((v34 & 0x10000) != 0)
  {
    v82 = *(a2 + 40);
    *(this + 218) |= 0x10000u;
    v83 = *(this + 40);
    if (v83 == v37)
    {
      operator new();
    }

    std::string::operator=(v83, v82);
    v34 = *(a2 + 218);
    if ((v34 & 0x20000) == 0)
    {
LABEL_104:
      if ((v34 & 0x40000) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_247;
    }
  }

  else if ((v34 & 0x20000) == 0)
  {
    goto LABEL_104;
  }

  v84 = *(a2 + 41);
  *(this + 218) |= 0x20000u;
  v85 = *(this + 41);
  if (v85 == v37)
  {
    operator new();
  }

  std::string::operator=(v85, v84);
  v34 = *(a2 + 218);
  if ((v34 & 0x40000) == 0)
  {
LABEL_105:
    if ((v34 & 0x80000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_250;
  }

LABEL_247:
  v86 = *(a2 + 42);
  *(this + 218) |= 0x40000u;
  v87 = *(this + 42);
  if (v87 == v37)
  {
    operator new();
  }

  std::string::operator=(v87, v86);
  v34 = *(a2 + 218);
  if ((v34 & 0x80000) == 0)
  {
LABEL_106:
    if ((v34 & 0x100000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_253;
  }

LABEL_250:
  v88 = *(a2 + 43);
  *(this + 218) |= 0x80000u;
  v89 = *(this + 43);
  if (v89 == v37)
  {
    operator new();
  }

  std::string::operator=(v89, v88);
  v34 = *(a2 + 218);
  if ((v34 & 0x100000) == 0)
  {
LABEL_107:
    if ((v34 & 0x400000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_256;
  }

LABEL_253:
  v90 = *(a2 + 44);
  *(this + 218) |= 0x100000u;
  v91 = *(this + 44);
  if (v91 == v37)
  {
    operator new();
  }

  std::string::operator=(v91, v90);
  v34 = *(a2 + 218);
  if ((v34 & 0x400000) == 0)
  {
LABEL_108:
    if ((v34 & 0x800000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

LABEL_256:
  v92 = *(a2 + 94);
  *(this + 218) |= 0x400000u;
  *(this + 94) = v92;
  v34 = *(a2 + 218);
  if ((v34 & 0x800000) != 0)
  {
LABEL_109:
    v38 = *(a2 + 95);
    *(this + 218) |= 0x800000u;
    *(this + 95) = v38;
    v34 = *(a2 + 218);
  }

LABEL_110:
  if (!HIBYTE(v34))
  {
    goto LABEL_119;
  }

  if ((v34 & 0x1000000) != 0)
  {
    v141 = *(a2 + 96);
    *(this + 218) |= 0x1000000u;
    *(this + 96) = v141;
    v34 = *(a2 + 218);
    if ((v34 & 0x2000000) == 0)
    {
LABEL_113:
      if ((v34 & 0x4000000) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_316;
    }
  }

  else if ((v34 & 0x2000000) == 0)
  {
    goto LABEL_113;
  }

  v142 = *(a2 + 97);
  *(this + 218) |= 0x2000000u;
  *(this + 97) = v142;
  v34 = *(a2 + 218);
  if ((v34 & 0x4000000) == 0)
  {
LABEL_114:
    if ((v34 & 0x8000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_317;
  }

LABEL_316:
  v143 = *(a2 + 98);
  *(this + 218) |= 0x4000000u;
  *(this + 98) = v143;
  v34 = *(a2 + 218);
  if ((v34 & 0x8000000) == 0)
  {
LABEL_115:
    if ((v34 & 0x10000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_318;
  }

LABEL_317:
  v144 = *(a2 + 99);
  *(this + 218) |= 0x8000000u;
  *(this + 99) = v144;
  v34 = *(a2 + 218);
  if ((v34 & 0x10000000) == 0)
  {
LABEL_116:
    if ((v34 & 0x20000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_319;
  }

LABEL_318:
  v145 = *(a2 + 100);
  *(this + 218) |= 0x10000000u;
  *(this + 100) = v145;
  v34 = *(a2 + 218);
  if ((v34 & 0x20000000) == 0)
  {
LABEL_117:
    if ((v34 & 0x40000000) == 0)
    {
      goto LABEL_118;
    }

LABEL_320:
    v147 = *(a2 + 102);
    *(this + 218) |= 0x40000000u;
    *(this + 102) = v147;
    if ((*(a2 + 218) & 0x80000000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_321;
  }

LABEL_319:
  v146 = *(a2 + 101);
  *(this + 218) |= 0x20000000u;
  *(this + 101) = v146;
  v34 = *(a2 + 218);
  if ((v34 & 0x40000000) != 0)
  {
    goto LABEL_320;
  }

LABEL_118:
  if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_119;
  }

LABEL_321:
  v148 = *(a2 + 103);
  *(this + 218) |= 0x80000000;
  *(this + 103) = v148;
LABEL_119:
  v39 = *(a2 + 219);
  if (!v39)
  {
    goto LABEL_129;
  }

  if (v39)
  {
    v93 = *(a2 + 104);
    *(this + 219) |= 1u;
    *(this + 104) = v93;
    v39 = *(a2 + 219);
    if ((v39 & 2) == 0)
    {
LABEL_122:
      if ((v39 & 4) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_260;
    }
  }

  else if ((v39 & 2) == 0)
  {
    goto LABEL_122;
  }

  v94 = *(a2 + 105);
  *(this + 219) |= 2u;
  *(this + 105) = v94;
  v39 = *(a2 + 219);
  if ((v39 & 4) == 0)
  {
LABEL_123:
    if ((v39 & 8) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_261;
  }

LABEL_260:
  v95 = *(a2 + 106);
  *(this + 219) |= 4u;
  *(this + 106) = v95;
  v39 = *(a2 + 219);
  if ((v39 & 8) == 0)
  {
LABEL_124:
    if ((v39 & 0x10) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_262;
  }

LABEL_261:
  v96 = *(a2 + 107);
  *(this + 219) |= 8u;
  *(this + 107) = v96;
  v39 = *(a2 + 219);
  if ((v39 & 0x10) == 0)
  {
LABEL_125:
    if ((v39 & 0x20) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_263;
  }

LABEL_262:
  v97 = *(a2 + 108);
  *(this + 219) |= 0x10u;
  *(this + 108) = v97;
  v39 = *(a2 + 219);
  if ((v39 & 0x20) == 0)
  {
LABEL_126:
    if ((v39 & 0x40) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_264;
  }

LABEL_263:
  v98 = *(a2 + 109);
  *(this + 219) |= 0x20u;
  *(this + 109) = v98;
  v39 = *(a2 + 219);
  if ((v39 & 0x40) == 0)
  {
LABEL_127:
    if ((v39 & 0x80) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_264:
  v99 = *(a2 + 110);
  *(this + 219) |= 0x40u;
  *(this + 110) = v99;
  v39 = *(a2 + 219);
  if ((v39 & 0x80) != 0)
  {
LABEL_128:
    v40 = *(a2 + 112);
    *(this + 219) |= 0x80u;
    *(this + 112) = v40;
    v39 = *(a2 + 219);
  }

LABEL_129:
  if ((v39 & 0xFF00) == 0)
  {
    goto LABEL_139;
  }

  if ((v39 & 0x100) != 0)
  {
    v100 = *(a2 + 113);
    *(this + 219) |= 0x100u;
    *(this + 113) = v100;
    v39 = *(a2 + 219);
    if ((v39 & 0x200) == 0)
    {
LABEL_132:
      if ((v39 & 0x400) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_268;
    }
  }

  else if ((v39 & 0x200) == 0)
  {
    goto LABEL_132;
  }

  v101 = *(a2 + 114);
  *(this + 219) |= 0x200u;
  *(this + 114) = v101;
  v39 = *(a2 + 219);
  if ((v39 & 0x400) == 0)
  {
LABEL_133:
    if ((v39 & 0x800) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_269;
  }

LABEL_268:
  v102 = *(a2 + 115);
  *(this + 219) |= 0x400u;
  *(this + 115) = v102;
  v39 = *(a2 + 219);
  if ((v39 & 0x800) == 0)
  {
LABEL_134:
    if ((v39 & 0x1000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_270;
  }

LABEL_269:
  v103 = *(a2 + 116);
  *(this + 219) |= 0x800u;
  *(this + 116) = v103;
  v39 = *(a2 + 219);
  if ((v39 & 0x1000) == 0)
  {
LABEL_135:
    if ((v39 & 0x2000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_271;
  }

LABEL_270:
  v104 = *(a2 + 117);
  *(this + 219) |= 0x1000u;
  *(this + 117) = v104;
  v39 = *(a2 + 219);
  if ((v39 & 0x2000) == 0)
  {
LABEL_136:
    if ((v39 & 0x4000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_272;
  }

LABEL_271:
  v105 = *(a2 + 118);
  *(this + 219) |= 0x2000u;
  *(this + 118) = v105;
  v39 = *(a2 + 219);
  if ((v39 & 0x4000) == 0)
  {
LABEL_137:
    if ((v39 & 0x8000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

LABEL_272:
  v106 = *(a2 + 119);
  *(this + 219) |= 0x4000u;
  *(this + 119) = v106;
  v39 = *(a2 + 219);
  if ((v39 & 0x8000) != 0)
  {
LABEL_138:
    v41 = *(a2 + 120);
    *(this + 219) |= 0x8000u;
    *(this + 120) = v41;
    v39 = *(a2 + 219);
  }

LABEL_139:
  if ((v39 & 0xFF0000) == 0)
  {
    goto LABEL_147;
  }

  if ((v39 & 0x10000) != 0)
  {
    v107 = *(a2 + 121);
    *(this + 219) |= 0x10000u;
    *(this + 121) = v107;
    v39 = *(a2 + 219);
    if ((v39 & 0x20000) == 0)
    {
LABEL_142:
      if ((v39 & 0x40000) == 0)
      {
        goto LABEL_143;
      }

      goto LABEL_276;
    }
  }

  else if ((v39 & 0x20000) == 0)
  {
    goto LABEL_142;
  }

  v108 = *(a2 + 122);
  *(this + 219) |= 0x20000u;
  *(this + 122) = v108;
  v39 = *(a2 + 219);
  if ((v39 & 0x40000) == 0)
  {
LABEL_143:
    if ((v39 & 0x80000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_277;
  }

LABEL_276:
  v109 = *(a2 + 123);
  *(this + 219) |= 0x40000u;
  *(this + 123) = v109;
  v39 = *(a2 + 219);
  if ((v39 & 0x80000) == 0)
  {
LABEL_144:
    if ((v39 & 0x100000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_278;
  }

LABEL_277:
  v110 = *(a2 + 445);
  *(this + 219) |= 0x80000u;
  *(this + 445) = v110;
  v39 = *(a2 + 219);
  if ((v39 & 0x100000) == 0)
  {
LABEL_145:
    if ((v39 & 0x200000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_146;
  }

LABEL_278:
  v111 = *(a2 + 446);
  *(this + 219) |= 0x100000u;
  *(this + 446) = v111;
  v39 = *(a2 + 219);
  if ((v39 & 0x200000) != 0)
  {
LABEL_146:
    v42 = *(a2 + 447);
    *(this + 219) |= 0x200000u;
    *(this + 447) = v42;
    v39 = *(a2 + 219);
  }

LABEL_147:
  if (!HIBYTE(v39))
  {
    goto LABEL_156;
  }

  if ((v39 & 0x1000000) != 0)
  {
    v149 = *(a2 + 132);
    *(this + 219) |= 0x1000000u;
    *(this + 132) = v149;
    v39 = *(a2 + 219);
    if ((v39 & 0x2000000) == 0)
    {
LABEL_150:
      if ((v39 & 0x4000000) == 0)
      {
        goto LABEL_151;
      }

      goto LABEL_324;
    }
  }

  else if ((v39 & 0x2000000) == 0)
  {
    goto LABEL_150;
  }

  v150 = *(a2 + 133);
  *(this + 219) |= 0x2000000u;
  *(this + 133) = v150;
  v39 = *(a2 + 219);
  if ((v39 & 0x4000000) == 0)
  {
LABEL_151:
    if ((v39 & 0x8000000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_325;
  }

LABEL_324:
  v151 = *(a2 + 134);
  *(this + 219) |= 0x4000000u;
  *(this + 134) = v151;
  v39 = *(a2 + 219);
  if ((v39 & 0x8000000) == 0)
  {
LABEL_152:
    if ((v39 & 0x10000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_326;
  }

LABEL_325:
  v152 = *(a2 + 135);
  *(this + 219) |= 0x8000000u;
  *(this + 135) = v152;
  v39 = *(a2 + 219);
  if ((v39 & 0x10000000) == 0)
  {
LABEL_153:
    if ((v39 & 0x20000000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_327;
  }

LABEL_326:
  v153 = *(a2 + 136);
  *(this + 219) |= 0x10000000u;
  *(this + 136) = v153;
  v39 = *(a2 + 219);
  if ((v39 & 0x20000000) == 0)
  {
LABEL_154:
    if ((v39 & 0x40000000) == 0)
    {
      goto LABEL_155;
    }

LABEL_328:
    v155 = *(a2 + 138);
    *(this + 219) |= 0x40000000u;
    *(this + 138) = v155;
    if ((*(a2 + 219) & 0x80000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_329;
  }

LABEL_327:
  v154 = *(a2 + 137);
  *(this + 219) |= 0x20000000u;
  *(this + 137) = v154;
  v39 = *(a2 + 219);
  if ((v39 & 0x40000000) != 0)
  {
    goto LABEL_328;
  }

LABEL_155:
  if ((v39 & 0x80000000) == 0)
  {
    goto LABEL_156;
  }

LABEL_329:
  v156 = *(a2 + 139);
  *(this + 219) |= 0x80000000;
  *(this + 139) = v156;
LABEL_156:
  v43 = *(a2 + 220);
  if (!v43)
  {
    goto LABEL_166;
  }

  if (v43)
  {
    v112 = *(a2 + 140);
    *(this + 220) |= 1u;
    *(this + 140) = v112;
    v43 = *(a2 + 220);
    if ((v43 & 2) == 0)
    {
LABEL_159:
      if ((v43 & 4) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_282;
    }
  }

  else if ((v43 & 2) == 0)
  {
    goto LABEL_159;
  }

  v113 = *(a2 + 141);
  *(this + 220) |= 2u;
  *(this + 141) = v113;
  v43 = *(a2 + 220);
  if ((v43 & 4) == 0)
  {
LABEL_160:
    if ((v43 & 8) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_283;
  }

LABEL_282:
  v114 = *(a2 + 142);
  *(this + 220) |= 4u;
  *(this + 142) = v114;
  v43 = *(a2 + 220);
  if ((v43 & 8) == 0)
  {
LABEL_161:
    if ((v43 & 0x10) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_284;
  }

LABEL_283:
  v115 = *(a2 + 143);
  *(this + 220) |= 8u;
  *(this + 143) = v115;
  v43 = *(a2 + 220);
  if ((v43 & 0x10) == 0)
  {
LABEL_162:
    if ((v43 & 0x20) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_285;
  }

LABEL_284:
  v116 = *(a2 + 144);
  *(this + 220) |= 0x10u;
  *(this + 144) = v116;
  v43 = *(a2 + 220);
  if ((v43 & 0x20) == 0)
  {
LABEL_163:
    if ((v43 & 0x40) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_286;
  }

LABEL_285:
  v117 = *(a2 + 145);
  *(this + 220) |= 0x20u;
  *(this + 145) = v117;
  v43 = *(a2 + 220);
  if ((v43 & 0x40) == 0)
  {
LABEL_164:
    if ((v43 & 0x80) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_165;
  }

LABEL_286:
  v118 = *(a2 + 146);
  *(this + 220) |= 0x40u;
  *(this + 146) = v118;
  v43 = *(a2 + 220);
  if ((v43 & 0x80) != 0)
  {
LABEL_165:
    v44 = *(a2 + 147);
    *(this + 220) |= 0x80u;
    *(this + 147) = v44;
    v43 = *(a2 + 220);
  }

LABEL_166:
  if ((v43 & 0xFF00) == 0)
  {
    goto LABEL_176;
  }

  if ((v43 & 0x100) != 0)
  {
    v119 = *(a2 + 148);
    *(this + 220) |= 0x100u;
    *(this + 148) = v119;
    v43 = *(a2 + 220);
    if ((v43 & 0x200) == 0)
    {
LABEL_169:
      if ((v43 & 0x400) == 0)
      {
        goto LABEL_170;
      }

      goto LABEL_290;
    }
  }

  else if ((v43 & 0x200) == 0)
  {
    goto LABEL_169;
  }

  v120 = *(a2 + 149);
  *(this + 220) |= 0x200u;
  *(this + 149) = v120;
  v43 = *(a2 + 220);
  if ((v43 & 0x400) == 0)
  {
LABEL_170:
    if ((v43 & 0x800) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_291;
  }

LABEL_290:
  v121 = *(a2 + 150);
  *(this + 220) |= 0x400u;
  *(this + 150) = v121;
  v43 = *(a2 + 220);
  if ((v43 & 0x800) == 0)
  {
LABEL_171:
    if ((v43 & 0x1000) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_292;
  }

LABEL_291:
  v122 = *(a2 + 151);
  *(this + 220) |= 0x800u;
  *(this + 151) = v122;
  v43 = *(a2 + 220);
  if ((v43 & 0x1000) == 0)
  {
LABEL_172:
    if ((v43 & 0x2000) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_293;
  }

LABEL_292:
  v123 = *(a2 + 152);
  *(this + 220) |= 0x1000u;
  *(this + 152) = v123;
  v43 = *(a2 + 220);
  if ((v43 & 0x2000) == 0)
  {
LABEL_173:
    if ((v43 & 0x4000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_294;
  }

LABEL_293:
  v124 = *(a2 + 153);
  *(this + 220) |= 0x2000u;
  *(this + 153) = v124;
  v43 = *(a2 + 220);
  if ((v43 & 0x4000) == 0)
  {
LABEL_174:
    if ((v43 & 0x8000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_175;
  }

LABEL_294:
  v125 = *(a2 + 154);
  *(this + 220) |= 0x4000u;
  *(this + 154) = v125;
  v43 = *(a2 + 220);
  if ((v43 & 0x8000) != 0)
  {
LABEL_175:
    v45 = *(a2 + 155);
    *(this + 220) |= 0x8000u;
    *(this + 155) = v45;
    v43 = *(a2 + 220);
  }

LABEL_176:
  if ((v43 & 0xFF0000) == 0)
  {
    goto LABEL_182;
  }

  if ((v43 & 0x10000) != 0)
  {
    v126 = *(a2 + 156);
    *(this + 220) |= 0x10000u;
    *(this + 156) = v126;
    v43 = *(a2 + 220);
    if ((v43 & 0x20000) == 0)
    {
LABEL_179:
      if ((v43 & 0x40000) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_298;
    }
  }

  else if ((v43 & 0x20000) == 0)
  {
    goto LABEL_179;
  }

  v127 = *(a2 + 157);
  *(this + 220) |= 0x20000u;
  *(this + 157) = v127;
  v43 = *(a2 + 220);
  if ((v43 & 0x40000) == 0)
  {
LABEL_180:
    if ((v43 & 0x80000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_181;
  }

LABEL_298:
  v128 = *(a2 + 158);
  *(this + 220) |= 0x40000u;
  *(this + 158) = v128;
  v43 = *(a2 + 220);
  if ((v43 & 0x80000) != 0)
  {
LABEL_181:
    v46 = *(a2 + 159);
    *(this + 220) |= 0x80000u;
    *(this + 159) = v46;
    v43 = *(a2 + 220);
  }

LABEL_182:
  if (v43 >> 29)
  {
    if ((v43 & 0x20000000) != 0)
    {
      v47 = *(a2 + 196);
      *(this + 220) |= 0x20000000u;
      *(this + 196) = v47;
      v43 = *(a2 + 220);
    }

    if ((v43 & 0x40000000) != 0)
    {
      v48 = *(a2 + 197);
      *(this + 220) |= 0x40000000u;
      *(this + 197) = v48;
    }
  }

  v49 = *(a2 + 221);
  if (!v49)
  {
    goto LABEL_197;
  }

  if (v49)
  {
    v129 = *(a2 + 202);
    *(this + 221) |= 1u;
    *(this + 202) = v129;
    v49 = *(a2 + 221);
    if ((v49 & 2) == 0)
    {
LABEL_190:
      if ((v49 & 4) == 0)
      {
        goto LABEL_191;
      }

      goto LABEL_302;
    }
  }

  else if ((v49 & 2) == 0)
  {
    goto LABEL_190;
  }

  v130 = *(a2 + 203);
  *(this + 221) |= 2u;
  *(this + 203) = v130;
  v49 = *(a2 + 221);
  if ((v49 & 4) == 0)
  {
LABEL_191:
    if ((v49 & 8) == 0)
    {
      goto LABEL_192;
    }

    goto LABEL_303;
  }

LABEL_302:
  v131 = *(a2 + 204);
  *(this + 221) |= 4u;
  *(this + 204) = v131;
  v49 = *(a2 + 221);
  if ((v49 & 8) == 0)
  {
LABEL_192:
    if ((v49 & 0x10) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_304;
  }

LABEL_303:
  v132 = *(a2 + 205);
  *(this + 221) |= 8u;
  *(this + 205) = v132;
  v49 = *(a2 + 221);
  if ((v49 & 0x10) == 0)
  {
LABEL_193:
    if ((v49 & 0x20) == 0)
    {
      goto LABEL_194;
    }

LABEL_305:
    v134 = *(a2 + 207);
    *(this + 221) |= 0x20u;
    *(this + 207) = v134;
    v49 = *(a2 + 221);
    if ((v49 & 0x40) == 0)
    {
LABEL_195:
      if ((v49 & 0x80) == 0)
      {
        goto LABEL_197;
      }

      goto LABEL_196;
    }

    goto LABEL_306;
  }

LABEL_304:
  v133 = *(a2 + 206);
  *(this + 221) |= 0x10u;
  *(this + 206) = v133;
  v49 = *(a2 + 221);
  if ((v49 & 0x20) != 0)
  {
    goto LABEL_305;
  }

LABEL_194:
  if ((v49 & 0x40) == 0)
  {
    goto LABEL_195;
  }

LABEL_306:
  v135 = *(a2 + 208);
  *(this + 221) |= 0x40u;
  *(this + 208) = v135;
  v49 = *(a2 + 221);
  if ((v49 & 0x80) != 0)
  {
LABEL_196:
    v50 = *(a2 + 209);
    *(this + 221) |= 0x80u;
    *(this + 209) = v50;
    v49 = *(a2 + 221);
  }

LABEL_197:
  if ((v49 & 0xFF00) == 0)
  {
    return;
  }

  if ((v49 & 0x100) != 0)
  {
    v136 = *(a2 + 210);
    *(this + 221) |= 0x100u;
    *(this + 210) = v136;
    v49 = *(a2 + 221);
    if ((v49 & 0x200) == 0)
    {
LABEL_200:
      if ((v49 & 0x400) == 0)
      {
        goto LABEL_201;
      }

      goto LABEL_310;
    }
  }

  else if ((v49 & 0x200) == 0)
  {
    goto LABEL_200;
  }

  v137 = *(a2 + 211);
  *(this + 221) |= 0x200u;
  *(this + 211) = v137;
  v49 = *(a2 + 221);
  if ((v49 & 0x400) == 0)
  {
LABEL_201:
    if ((v49 & 0x800) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_311;
  }

LABEL_310:
  v138 = *(a2 + 212);
  *(this + 221) |= 0x400u;
  *(this + 212) = v138;
  v49 = *(a2 + 221);
  if ((v49 & 0x800) == 0)
  {
LABEL_202:
    if ((v49 & 0x1000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_312;
  }

LABEL_311:
  v139 = *(a2 + 213);
  *(this + 221) |= 0x800u;
  *(this + 213) = v139;
  v49 = *(a2 + 221);
  if ((v49 & 0x1000) == 0)
  {
LABEL_203:
    if ((v49 & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_204;
  }

LABEL_312:
  v140 = *(a2 + 214);
  *(this + 221) |= 0x1000u;
  *(this + 214) = v140;
  if ((*(a2 + 221) & 0x2000) != 0)
  {
LABEL_204:
    v51 = *(a2 + 215);
    *(this + 221) |= 0x2000u;
    *(this + 215) = v51;
  }
}

void sub_2964259DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionFitnessAllDay::~MotionFitnessAllDay(awd::metrics::MotionFitnessAllDay *this)
{
  *this = &unk_2A1D4F3E0;
  awd::metrics::MotionFitnessAllDay::SharedDtor(this);
  v2 = *(this + 99);
  if (v2)
  {
    MEMORY[0x29C25A710](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 96);
  if (v3)
  {
    MEMORY[0x29C25A710](v3, 0x1000C8000313F17);
  }

  v4 = *(this + 94);
  if (v4)
  {
    MEMORY[0x29C25A710](v4, 0x1000C8000313F17);
  }

  v5 = *(this + 92);
  if (v5)
  {
    MEMORY[0x29C25A710](v5, 0x1000C8000313F17);
  }

  v6 = *(this + 90);
  if (v6)
  {
    MEMORY[0x29C25A710](v6, 0x1000C8000313F17);
  }

  v7 = *(this + 88);
  if (v7)
  {
    MEMORY[0x29C25A710](v7, 0x1000C8000313F17);
  }

  v8 = *(this + 86);
  if (v8)
  {
    MEMORY[0x29C25A710](v8, 0x1000C8052888210);
  }

  v9 = *(this + 84);
  if (v9)
  {
    MEMORY[0x29C25A710](v9, 0x1000C8052888210);
  }

  v10 = *(this + 82);
  if (v10)
  {
    MEMORY[0x29C25A710](v10, 0x1000C8052888210);
  }

  v11 = *(this + 80);
  if (v11)
  {
    MEMORY[0x29C25A710](v11, 0x1000C8052888210);
  }

  v12 = *(this + 64);
  if (v12)
  {
    MEMORY[0x29C25A710](v12, 0x1000C8052888210);
  }

  v13 = *(this + 62);
  if (v13)
  {
    MEMORY[0x29C25A710](v13, 0x1000C8052888210);
  }

  v14 = *(this + 45);
  if (v14)
  {
    MEMORY[0x29C25A710](v14, 0x1000C8052888210);
  }

  v15 = *(this + 37);
  if (v15)
  {
    MEMORY[0x29C25A710](v15, 0x1000C8052888210);
  }

  v16 = *(this + 34);
  if (v16)
  {
    MEMORY[0x29C25A710](v16, 0x1000C8052888210);
  }

  v17 = *(this + 28);
  if (v17)
  {
    MEMORY[0x29C25A710](v17, 0x1000C8052888210);
  }

  v18 = *(this + 26);
  if (v18)
  {
    MEMORY[0x29C25A710](v18, 0x1000C8052888210);
  }

  v19 = *(this + 24);
  if (v19)
  {
    MEMORY[0x29C25A710](v19, 0x1000C8052888210);
  }

  v20 = *(this + 21);
  if (v20)
  {
    MEMORY[0x29C25A710](v20, 0x1000C8052888210);
  }

  v21 = *(this + 19);
  if (v21)
  {
    MEMORY[0x29C25A710](v21, 0x1000C8052888210);
  }

  v22 = *(this + 17);
  if (v22)
  {
    MEMORY[0x29C25A710](v22, 0x1000C8052888210);
  }

  v23 = *(this + 15);
  if (v23)
  {
    MEMORY[0x29C25A710](v23, 0x1000C8052888210);
  }

  v24 = *(this + 13);
  if (v24)
  {
    MEMORY[0x29C25A710](v24, 0x1000C8052888210);
  }

  v25 = *(this + 11);
  if (v25)
  {
    MEMORY[0x29C25A710](v25, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MotionFitnessAllDay::~MotionFitnessAllDay(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::MotionFitnessAllDay::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[40];
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C25A730](v2, 0x1012C40EC159624);
  }

  v5 = v1[41];
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C25A730](v5, 0x1012C40EC159624);
  }

  v7 = v1[42];
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x29C25A730](v7, 0x1012C40EC159624);
  }

  v9 = v1[43];
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x29C25A730](v9, 0x1012C40EC159624);
  }

  v11 = v1[44];
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::MotionFitnessAllDay::default_instance(awd::metrics::MotionFitnessAllDay *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionFitnessAllDay::default_instance_;
  if (!awd::metrics::MotionFitnessAllDay::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionFitnessAllDay::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionFitnessAllDay::Clear(uint64_t this)
{
  v1 = *(this + 868);
  if (v1)
  {
    *(this + 68) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 8) = 0;
    *(this + 32) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0u;
    *(this + 36) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 184) = 0;
    *(this + 72) = 0;
    *(this + 80) = 0;
  }

  if (v1 >> 27)
  {
    *(this + 70) = 0;
  }

  v2 = *(this + 872);
  if (v2)
  {
    *(this + 444) = 0;
    *(this + 188) = 0;
    *(this + 248) = 0;
    *(this + 256) = 0;
    *(this + 240) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 264) = 0;
    *(this + 288) = 0;
    *(this + 312) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    v3 = MEMORY[0x29EDC9758];
    if ((v2 & 0x10000) != 0)
    {
      v4 = *(this + 320);
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

    if ((*(this + 874) & 2) != 0)
    {
      v5 = *(this + 328);
      if (v5 != v3)
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

    if ((*(this + 874) & 4) != 0)
    {
      v6 = *(this + 336);
      if (v6 != v3)
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

    if ((*(this + 874) & 8) != 0)
    {
      v7 = *(this + 344);
      if (v7 != v3)
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

    if ((*(this + 874) & 0x10) != 0)
    {
      v8 = *(this + 352);
      if (v8 != v3)
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

    *(this + 376) = 0;
    v2 = *(this + 872);
  }

  if (HIBYTE(v2))
  {
    *(this + 384) = 0u;
    *(this + 400) = 0u;
  }

  v9 = *(this + 876);
  if (v9)
  {
    *(this + 448) = 0;
    *(this + 424) = 0;
    *(this + 432) = 0;
    *(this + 416) = 0;
    *(this + 440) = 0;
  }

  if ((v9 & 0xFF00) != 0)
  {
    *(this + 452) = 0u;
    *(this + 468) = 0u;
  }

  if ((v9 & 0xFF0000) != 0)
  {
    *(this + 484) = 0;
    *(this + 488) = 0;
    *(this + 445) = 0;
    *(this + 447) = 0;
  }

  if (HIBYTE(v9))
  {
    *(this + 528) = 0u;
    *(this + 544) = 0u;
  }

  v10 = *(this + 880);
  if (v10)
  {
    *(this + 560) = 0u;
    *(this + 576) = 0u;
  }

  if ((v10 & 0xFF00) != 0)
  {
    *(this + 592) = 0u;
    *(this + 608) = 0u;
  }

  if ((v10 & 0xFF0000) != 0)
  {
    *(this + 624) = 0u;
  }

  if (v10 >> 29)
  {
    *(this + 784) = 0;
  }

  v11 = *(this + 884);
  if (v11)
  {
    *(this + 808) = 0u;
    *(this + 824) = 0u;
  }

  if ((v11 & 0xFF00) != 0)
  {
    *(this + 856) = 0;
    *(this + 840) = 0u;
  }

  *(this + 96) = 0;
  *(this + 112) = 0;
  *(this + 128) = 0;
  *(this + 144) = 0;
  *(this + 160) = 0;
  *(this + 176) = 0;
  *(this + 200) = 0;
  *(this + 216) = 0;
  *(this + 232) = 0;
  *(this + 280) = 0;
  *(this + 304) = 0;
  *(this + 368) = 0;
  *(this + 504) = 0;
  *(this + 520) = 0;
  *(this + 648) = 0;
  *(this + 664) = 0;
  *(this + 680) = 0;
  *(this + 696) = 0;
  *(this + 712) = 0;
  *(this + 728) = 0;
  *(this + 744) = 0;
  *(this + 760) = 0;
  *(this + 776) = 0;
  *(this + 800) = 0;
  *(this + 868) = 0;
  *(this + 876) = 0;
  *(this + 884) = 0;
  return this;
}

uint64_t awd::metrics::MotionFitnessAllDay::MergePartialFromCodedStream(awd::metrics::MotionFitnessAllDay *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_331;
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

        *(this + 217) |= 1u;
        if (v10 < v7 && *v10 == 16)
        {
          v37 = v10 + 1;
          *(a2 + 1) = v37;
          goto LABEL_373;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v37 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_373:
        v631[0] = 0;
        if (v37 >= v7 || (v141 = *v37, (v141 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
          if (!result)
          {
            return result;
          }

          v141 = v631[0];
          v142 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v142 = v37 + 1;
          *(a2 + 1) = v142;
        }

        *(this + 68) = v141 != 0;
        *(this + 217) |= 2u;
        if (v142 >= v7 || *v142 != 24)
        {
          continue;
        }

        v105 = v142 + 1;
        *(a2 + 1) = v105;
LABEL_381:
        v631[0] = 0;
        if (v105 >= v7 || (v143 = *v105, (v143 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
          if (!result)
          {
            return result;
          }

          v143 = v631[0];
          v144 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v144 = v105 + 1;
          *(a2 + 1) = v144;
        }

        *(this + 69) = v143 != 0;
        *(this + 217) |= 4u;
        if (v144 >= v7 || *v144 != 32)
        {
          continue;
        }

        v67 = v144 + 1;
        *(a2 + 1) = v67;
LABEL_389:
        if (v67 >= v7 || (v145 = *v67, v145 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v146 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v145;
          v146 = v67 + 1;
          *(a2 + 1) = v146;
        }

        *(this + 217) |= 8u;
        if (v146 >= v7 || *v146 != 40)
        {
          continue;
        }

        v101 = v146 + 1;
        *(a2 + 1) = v101;
LABEL_397:
        if (v101 >= v7 || (v147 = *v101, v147 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v148 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v147;
          v148 = v101 + 1;
          *(a2 + 1) = v148;
        }

        *(this + 217) |= 0x10u;
        if (v148 >= v7 || *v148 != 48)
        {
          continue;
        }

        v38 = v148 + 1;
        *(a2 + 1) = v38;
LABEL_405:
        if (v38 >= v7 || (v149 = *v38, v149 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v150 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v149;
          v150 = v38 + 1;
          *(a2 + 1) = v150;
        }

        *(this + 217) |= 0x20u;
        if (v150 >= v7 || *v150 != 56)
        {
          continue;
        }

        v51 = v150 + 1;
        *(a2 + 1) = v51;
LABEL_413:
        if (v51 >= v7 || (v151 = *v51, v151 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v152 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v151;
          v152 = v51 + 1;
          *(a2 + 1) = v152;
        }

        *(this + 217) |= 0x40u;
        if (v152 >= v7 || *v152 != 64)
        {
          continue;
        }

        v26 = v152 + 1;
        *(a2 + 1) = v26;
LABEL_421:
        if (v26 >= v7 || (v153 = *v26, v153 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v154 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v153;
          v154 = v26 + 1;
          *(a2 + 1) = v154;
        }

        *(this + 217) |= 0x80u;
        if (v154 >= v7 || *v154 != 72)
        {
          continue;
        }

        v112 = v154 + 1;
        *(a2 + 1) = v112;
LABEL_429:
        if (v112 >= v7 || (v155 = *v112, v155 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v156 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v155;
          v156 = v112 + 1;
          *(a2 + 1) = v156;
        }

        *(this + 217) |= 0x100u;
        if (v156 >= v7 || *v156 != 80)
        {
          continue;
        }

        v31 = v156 + 1;
        *(a2 + 1) = v31;
LABEL_437:
        if (v31 >= v7 || (v157 = *v31, v157 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v158 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v157;
          v158 = v31 + 1;
          *(a2 + 1) = v158;
        }

        *(this + 217) |= 0x200u;
        if (v158 >= v7 || *v158 != 88)
        {
          continue;
        }

        v17 = v158 + 1;
        *(a2 + 1) = v17;
LABEL_445:
        if (v17 >= v7 || (v159 = *v17, v159 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v160 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v159;
          v160 = v17 + 1;
          *(a2 + 1) = v160;
        }

        *(this + 217) |= 0x400u;
        if (v160 >= v7 || *v160 != 96)
        {
          continue;
        }

        v104 = v160 + 1;
        *(a2 + 1) = v104;
LABEL_453:
        if (v104 >= v7 || (v161 = *v104, v161 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v162 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v161;
          v162 = v104 + 1;
          *(a2 + 1) = v162;
        }

        *(this + 217) |= 0x800u;
        if (v162 >= v7 || *v162 != 104)
        {
          continue;
        }

        v124 = v162 + 1;
        *(a2 + 1) = v124;
LABEL_461:
        if (v124 >= v7 || (v163 = *v124, v163 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v164 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v163;
          v164 = v124 + 1;
          *(a2 + 1) = v164;
        }

        *(this + 217) |= 0x1000u;
        if (v164 >= v7 || *v164 != 112)
        {
          continue;
        }

        v123 = v164 + 1;
        *(a2 + 1) = v123;
LABEL_469:
        if (v123 >= v7 || (v165 = *v123, v165 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v166 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v165;
          v166 = v123 + 1;
          *(a2 + 1) = v166;
        }

        *(this + 217) |= 0x2000u;
        if (v166 >= v7 || *v166 != 120)
        {
          continue;
        }

        v62 = v166 + 1;
        *(a2 + 1) = v62;
LABEL_477:
        if (v62 >= v7 || (v167 = *v62, v167 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v168 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v167;
          v168 = (v62 + 1);
          *(a2 + 1) = v168;
        }

        *(this + 217) |= 0x4000u;
        if (v7 - v168 < 2 || *v168 != 128 || v168[1] != 1)
        {
          continue;
        }

        v61 = (v168 + 2);
        *(a2 + 1) = v61;
LABEL_486:
        if (v61 >= v7 || (v169 = *v61, v169 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v170 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v169;
          v170 = (v61 + 1);
          *(a2 + 1) = v170;
        }

        *(this + 217) |= 0x8000u;
        if (v7 - v170 < 2 || *v170 != 136 || v170[1] != 1)
        {
          continue;
        }

        v122 = (v170 + 2);
        *(a2 + 1) = v122;
LABEL_495:
        if (v122 >= v7 || (v171 = *v122, v171 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v172 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v171;
          v172 = (v122 + 1);
          *(a2 + 1) = v172;
        }

        *(this + 217) |= 0x10000u;
        if (v7 - v172 < 2 || *v172 != 144 || v172[1] != 1)
        {
          continue;
        }

        v125 = (v172 + 2);
        *(a2 + 1) = v125;
LABEL_504:
        if (v125 >= v7 || (v173 = *v125, v173 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v174 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v173;
          v174 = (v125 + 1);
          *(a2 + 1) = v174;
        }

        *(this + 217) |= 0x20000u;
        if (v7 - v174 < 2 || *v174 != 152 || v174[1] != 1)
        {
          continue;
        }

        v13 = (v174 + 2);
        *(a2 + 1) = v13;
LABEL_513:
        if (v13 >= v7 || (v175 = *v13, v175 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v176 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v175;
          v176 = (v13 + 1);
          *(a2 + 1) = v176;
        }

        *(this + 217) |= 0x40000u;
        if (v7 - v176 < 2 || *v176 != 160 || v176[1] != 1)
        {
          continue;
        }

        v11 = (v176 + 2);
        *(a2 + 1) = v11;
LABEL_522:
        if (v11 >= v7 || (v177 = *v11, v177 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v178 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v177;
          v178 = (v11 + 1);
          *(a2 + 1) = v178;
        }

        *(this + 217) |= 0x80000u;
        if (v7 - v178 < 2 || *v178 != 168 || v178[1] != 1)
        {
          continue;
        }

        v18 = (v178 + 2);
        *(a2 + 1) = v18;
LABEL_531:
        if (v18 >= v7 || (v179 = *v18, v179 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 46);
          if (!result)
          {
            return result;
          }

          v180 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 46) = v179;
          v180 = (v18 + 1);
          *(a2 + 1) = v180;
        }

        *(this + 217) |= 0x100000u;
        if (v7 - v180 >= 2 && *v180 == 181 && v180[1] == 1)
        {
          goto LABEL_539;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v105 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_381;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v67 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_389;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v101 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_397;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v38 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_405;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v51 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_413;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v26 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_421;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v112 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_429;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v31 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_437;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_445;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v104 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_453;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v124 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_461;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v123 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_469;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v62 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_477;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v61 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_486;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v122 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_495;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v125 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_504;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_513;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v11 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_522;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_531;
      case 0x16u:
        if (v6 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 88);
          if (!result)
          {
            return result;
          }

          goto LABEL_559;
        }

        if (v6 != 5)
        {
          goto LABEL_331;
        }

LABEL_540:
        if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0xB5) != 2)
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
        }

        v631[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v631) & 1) == 0)
        {
          return 0;
        }

        v181 = v631[0];
        v182 = *(this + 24);
        if (v182 == *(this + 25))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 11, v182 + 1);
          v182 = *(this + 24);
        }

        v183 = *(this + 11);
        v184 = v182 + 1;
        *(this + 24) = v182 + 1;
        *(v183 + 4 * v182) = v181;
        v185 = *(a2 + 1);
        v186 = *(a2 + 4) - v185;
        if (v186 >= 1)
        {
          v187 = v186 / 6u;
          v188 = v187 >= *(this + 25) - v184 ? *(this + 25) - v184 : v187;
          if (v188 >= 1)
          {
            v189 = 0;
            while (*v185 == 181 && v185[1] == 1)
            {
              v190 = *(v185 + 2);
              if (v184 >= *(this + 25))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                v184 = *(this + 24);
                v183 = *(this + 11);
              }

              *(this + 24) = v184 + 1;
              *(v183 + 4 * v184) = v190;
              ++v189;
              v185 += 6;
              ++v184;
              if (v188 == v189)
              {
                goto LABEL_558;
              }
            }

            if (!v189)
            {
              goto LABEL_559;
            }

LABEL_558:
            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
          }
        }

LABEL_559:
        v180 = *(a2 + 1);
        if (*(a2 + 4) - v180 <= 1)
        {
          continue;
        }

        v191 = *v180;
        if (v191 != 189)
        {
          if (v191 == 181 && v180[1] == 1)
          {
LABEL_539:
            *(a2 + 1) = v180 + 2;
            goto LABEL_540;
          }

          continue;
        }

        if (v180[1] != 1)
        {
          continue;
        }

        goto LABEL_565;
      case 0x17u:
        if (v6 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 104);
          if (!result)
          {
            return result;
          }

          goto LABEL_585;
        }

        if (v6 != 5)
        {
          goto LABEL_331;
        }

LABEL_566:
        if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0xBD) != 2)
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
        }

        v631[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v631) & 1) == 0)
        {
          return 0;
        }

        v192 = v631[0];
        v193 = *(this + 28);
        if (v193 == *(this + 29))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 13, v193 + 1);
          v193 = *(this + 28);
        }

        v194 = *(this + 13);
        v195 = v193 + 1;
        *(this + 28) = v193 + 1;
        *(v194 + 4 * v193) = v192;
        v196 = *(a2 + 1);
        v197 = *(a2 + 4) - v196;
        if (v197 >= 1)
        {
          v198 = v197 / 6u;
          v199 = v198 >= *(this + 29) - v195 ? *(this + 29) - v195 : v198;
          if (v199 >= 1)
          {
            v200 = 0;
            while (*v196 == 189 && v196[1] == 1)
            {
              v201 = *(v196 + 2);
              if (v195 >= *(this + 29))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                v195 = *(this + 28);
                v194 = *(this + 13);
              }

              *(this + 28) = v195 + 1;
              *(v194 + 4 * v195) = v201;
              ++v200;
              v196 += 6;
              ++v195;
              if (v199 == v200)
              {
                goto LABEL_584;
              }
            }

            if (!v200)
            {
              goto LABEL_585;
            }

LABEL_584:
            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
          }
        }

LABEL_585:
        v180 = *(a2 + 1);
        if (*(a2 + 4) - v180 <= 1)
        {
          continue;
        }

        v202 = *v180;
        if (v202 != 197)
        {
          if (v202 == 189 && v180[1] == 1)
          {
LABEL_565:
            *(a2 + 1) = v180 + 2;
            goto LABEL_566;
          }

          continue;
        }

        if (v180[1] != 1)
        {
          continue;
        }

        goto LABEL_591;
      case 0x18u:
        if (v6 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 120);
          if (!result)
          {
            return result;
          }

          goto LABEL_611;
        }

        if (v6 != 5)
        {
          goto LABEL_331;
        }

LABEL_592:
        if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0xC5) != 2)
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
        }

        v631[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v631) & 1) == 0)
        {
          return 0;
        }

        v203 = v631[0];
        v204 = *(this + 32);
        if (v204 == *(this + 33))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 15, v204 + 1);
          v204 = *(this + 32);
        }

        v205 = *(this + 15);
        v206 = v204 + 1;
        *(this + 32) = v204 + 1;
        *(v205 + 4 * v204) = v203;
        v207 = *(a2 + 1);
        v208 = *(a2 + 4) - v207;
        if (v208 >= 1)
        {
          v209 = v208 / 6u;
          v210 = v209 >= *(this + 33) - v206 ? *(this + 33) - v206 : v209;
          if (v210 >= 1)
          {
            v211 = 0;
            while (*v207 == 197 && v207[1] == 1)
            {
              v212 = *(v207 + 2);
              if (v206 >= *(this + 33))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                v206 = *(this + 32);
                v205 = *(this + 15);
              }

              *(this + 32) = v206 + 1;
              *(v205 + 4 * v206) = v212;
              ++v211;
              v207 += 6;
              ++v206;
              if (v210 == v211)
              {
                goto LABEL_610;
              }
            }

            if (!v211)
            {
              goto LABEL_611;
            }

LABEL_610:
            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
          }
        }

LABEL_611:
        v180 = *(a2 + 1);
        if (*(a2 + 4) - v180 <= 1)
        {
          continue;
        }

        v213 = *v180;
        if (v213 != 205)
        {
          if (v213 == 197 && v180[1] == 1)
          {
LABEL_591:
            *(a2 + 1) = v180 + 2;
            goto LABEL_592;
          }

          continue;
        }

        if (v180[1] != 1)
        {
          continue;
        }

        goto LABEL_617;
      case 0x19u:
        if (v6 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 136);
          if (!result)
          {
            return result;
          }

          goto LABEL_637;
        }

        if (v6 != 5)
        {
          goto LABEL_331;
        }

LABEL_618:
        if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0xCD) != 2)
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
        }

        v631[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v631) & 1) == 0)
        {
          return 0;
        }

        v214 = v631[0];
        v215 = *(this + 36);
        if (v215 == *(this + 37))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 17, v215 + 1);
          v215 = *(this + 36);
        }

        v216 = *(this + 17);
        v217 = v215 + 1;
        *(this + 36) = v215 + 1;
        *(v216 + 4 * v215) = v214;
        v218 = *(a2 + 1);
        v219 = *(a2 + 4) - v218;
        if (v219 >= 1)
        {
          v220 = v219 / 6u;
          v221 = v220 >= *(this + 37) - v217 ? *(this + 37) - v217 : v220;
          if (v221 >= 1)
          {
            v222 = 0;
            while (*v218 == 205 && v218[1] == 1)
            {
              v223 = *(v218 + 2);
              if (v217 >= *(this + 37))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                v217 = *(this + 36);
                v216 = *(this + 17);
              }

              *(this + 36) = v217 + 1;
              *(v216 + 4 * v217) = v223;
              ++v222;
              v218 += 6;
              ++v217;
              if (v221 == v222)
              {
                goto LABEL_636;
              }
            }

            if (!v222)
            {
              goto LABEL_637;
            }

LABEL_636:
            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
          }
        }

LABEL_637:
        v180 = *(a2 + 1);
        if (*(a2 + 4) - v180 <= 1)
        {
          continue;
        }

        v224 = *v180;
        if (v224 != 213)
        {
          if (v224 == 205 && v180[1] == 1)
          {
LABEL_617:
            *(a2 + 1) = v180 + 2;
            goto LABEL_618;
          }

          continue;
        }

        if (v180[1] != 1)
        {
          continue;
        }

        goto LABEL_643;
      case 0x1Au:
        if (v6 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 152);
          if (!result)
          {
            return result;
          }

          goto LABEL_663;
        }

        if (v6 != 5)
        {
          goto LABEL_331;
        }

LABEL_644:
        if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0xD5) != 2)
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
        }

        v631[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v631) & 1) == 0)
        {
          return 0;
        }

        v225 = v631[0];
        v226 = *(this + 40);
        if (v226 == *(this + 41))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 19, v226 + 1);
          v226 = *(this + 40);
        }

        v227 = *(this + 19);
        v228 = v226 + 1;
        *(this + 40) = v226 + 1;
        *(v227 + 4 * v226) = v225;
        v229 = *(a2 + 1);
        v230 = *(a2 + 4) - v229;
        if (v230 >= 1)
        {
          v231 = v230 / 6u;
          v232 = v231 >= *(this + 41) - v228 ? *(this + 41) - v228 : v231;
          if (v232 >= 1)
          {
            v233 = 0;
            while (*v229 == 213 && v229[1] == 1)
            {
              v234 = *(v229 + 2);
              if (v228 >= *(this + 41))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                v228 = *(this + 40);
                v227 = *(this + 19);
              }

              *(this + 40) = v228 + 1;
              *(v227 + 4 * v228) = v234;
              ++v233;
              v229 += 6;
              ++v228;
              if (v232 == v233)
              {
                goto LABEL_662;
              }
            }

            if (!v233)
            {
              goto LABEL_663;
            }

LABEL_662:
            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
          }
        }

LABEL_663:
        v180 = *(a2 + 1);
        if (*(a2 + 4) - v180 <= 1)
        {
          continue;
        }

        v235 = *v180;
        if (v235 != 221)
        {
          if (v235 == 213 && v180[1] == 1)
          {
LABEL_643:
            *(a2 + 1) = v180 + 2;
            goto LABEL_644;
          }

          continue;
        }

        if (v180[1] != 1)
        {
          continue;
        }

        goto LABEL_669;
      case 0x1Bu:
        if (v6 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 168);
          if (!result)
          {
            return result;
          }

          goto LABEL_689;
        }

        if (v6 != 5)
        {
          goto LABEL_331;
        }

LABEL_670:
        if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0xDD) != 2)
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
        }

        v631[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v631) & 1) == 0)
        {
          return 0;
        }

        v236 = v631[0];
        v237 = *(this + 44);
        if (v237 == *(this + 45))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 21, v237 + 1);
          v237 = *(this + 44);
        }

        v238 = *(this + 21);
        v239 = v237 + 1;
        *(this + 44) = v237 + 1;
        *(v238 + 4 * v237) = v236;
        v240 = *(a2 + 1);
        v241 = *(a2 + 4) - v240;
        if (v241 >= 1)
        {
          v242 = v241 / 6u;
          v243 = v242 >= *(this + 45) - v239 ? *(this + 45) - v239 : v242;
          if (v243 >= 1)
          {
            v244 = 0;
            while (*v240 == 221 && v240[1] == 1)
            {
              v245 = *(v240 + 2);
              if (v239 >= *(this + 45))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                v239 = *(this + 44);
                v238 = *(this + 21);
              }

              *(this + 44) = v239 + 1;
              *(v238 + 4 * v239) = v245;
              ++v244;
              v240 += 6;
              ++v239;
              if (v243 == v244)
              {
                goto LABEL_688;
              }
            }

            if (!v244)
            {
              goto LABEL_689;
            }

LABEL_688:
            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
          }
        }

LABEL_689:
        v180 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v19 - v180 <= 1)
        {
          continue;
        }

        v246 = *v180;
        if (v246 != 224)
        {
          if (v246 == 221 && v180[1] == 1)
          {
LABEL_669:
            *(a2 + 1) = v180 + 2;
            goto LABEL_670;
          }

          continue;
        }

        if (v180[1] != 1)
        {
          continue;
        }

        v68 = (v180 + 2);
        *(a2 + 1) = v68;
LABEL_696:
        v631[0] = 0;
        if (v68 >= v19 || (v247 = *v68, (v247 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
          if (!result)
          {
            return result;
          }

          v247 = v631[0];
          v248 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v248 = (v68 + 1);
          *(a2 + 1) = v248;
        }

        *(this + 70) = v247 != 0;
        *(this + 217) |= 0x8000000u;
        if (v19 - v248 < 2 || *v248 != 232 || v248[1] != 1)
        {
          continue;
        }

        goto LABEL_704;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v68 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_696;
      case 0x1Du:
        if ((TagFallback & 7) == 0)
        {
          v127 = *(a2 + 1);
          v19 = *(a2 + 2);
LABEL_705:
          LODWORD(v630) = 0;
          if (v127 >= v19 || *v127 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v630))
            {
              return 0;
            }
          }

          else
          {
            LODWORD(v630) = *v127;
            *(a2 + 1) = v127 + 1;
          }

          v249 = *(this + 50);
          if (v249 == *(this + 51))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v249 + 1);
            v249 = *(this + 50);
          }

          v250 = v630;
          v251 = *(this + 24);
          *(this + 50) = v249 + 1;
          *(v251 + 4 * v249) = v250;
          v252 = *(this + 51) - *(this + 50);
          if (v252 >= 1)
          {
            v253 = v252 + 1;
            do
            {
              v254 = *(a2 + 1);
              v255 = *(a2 + 2);
              if (v255 - v254 < 2 || *v254 != 232 || v254[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v254 + 2;
              if ((v254 + 2) >= v255 || v254[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v630))
                {
                  return 0;
                }
              }

              else
              {
                LODWORD(v630) = v254[2];
                *(a2 + 1) = v254 + 3;
              }

              v256 = *(this + 50);
              if (v256 >= *(this + 51))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                v256 = *(this + 50);
              }

              v257 = v630;
              v258 = *(this + 24);
              *(this + 50) = v256 + 1;
              *(v258 + 4 * v256) = v257;
              --v253;
            }

            while (v253 > 1);
          }

          goto LABEL_723;
        }

        if (v6 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 192);
        if (!result)
        {
          return result;
        }

LABEL_723:
        v248 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v19 - v248 >= 2)
        {
          v259 = *v248;
          if (v259 == 240)
          {
            if (v248[1] == 1)
            {
              while (1)
              {
                v128 = (v248 + 2);
                *(a2 + 1) = v128;
LABEL_730:
                LODWORD(v630) = 0;
                if (v128 >= v19 || *v128 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v630))
                  {
                    return 0;
                  }
                }

                else
                {
                  LODWORD(v630) = *v128;
                  *(a2 + 1) = v128 + 1;
                }

                v260 = *(this + 54);
                if (v260 == *(this + 55))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 26, v260 + 1);
                  v260 = *(this + 54);
                }

                v261 = v630;
                v262 = *(this + 26);
                *(this + 54) = v260 + 1;
                *(v262 + 4 * v260) = v261;
                v263 = *(this + 55) - *(this + 54);
                if (v263 >= 1)
                {
                  v264 = v263 + 1;
                  do
                  {
                    v265 = *(a2 + 1);
                    v266 = *(a2 + 2);
                    if (v266 - v265 < 2 || *v265 != 240 || v265[1] != 1)
                    {
                      break;
                    }

                    *(a2 + 1) = v265 + 2;
                    if ((v265 + 2) >= v266 || v265[2] < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v630))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      LODWORD(v630) = v265[2];
                      *(a2 + 1) = v265 + 3;
                    }

                    v267 = *(this + 54);
                    if (v267 >= *(this + 55))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                      v267 = *(this + 54);
                    }

                    v268 = v630;
                    v269 = *(this + 26);
                    *(this + 54) = v267 + 1;
                    *(v269 + 4 * v267) = v268;
                    --v264;
                  }

                  while (v264 > 1);
                }

LABEL_748:
                v248 = *(a2 + 1);
                v19 = *(a2 + 2);
                if (v19 - v248 < 2)
                {
                  break;
                }

                v270 = *v248;
                if (v270 == 248)
                {
                  if (v248[1] == 1)
                  {
                    goto LABEL_754;
                  }

                  goto LABEL_1;
                }

                if (v270 != 240 || v248[1] != 1)
                {
                  goto LABEL_1;
                }
              }
            }
          }

          else if (v259 == 232 && v248[1] == 1)
          {
LABEL_704:
            v127 = (v248 + 2);
            *(a2 + 1) = v127;
            goto LABEL_705;
          }
        }

        continue;
      case 0x1Eu:
        if ((TagFallback & 7) == 0)
        {
          v128 = *(a2 + 1);
          v19 = *(a2 + 2);
          goto LABEL_730;
        }

        if (v6 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 208);
        if (!result)
        {
          return result;
        }

        goto LABEL_748;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 224);
            if (!result)
            {
              return result;
            }

            goto LABEL_773;
          }

LABEL_331:
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

        v126 = *(a2 + 1);
        v19 = *(a2 + 2);
LABEL_755:
        LODWORD(v630) = 0;
        if (v126 >= v19 || *v126 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v630))
          {
            return 0;
          }
        }

        else
        {
          LODWORD(v630) = *v126;
          *(a2 + 1) = v126 + 1;
        }

        v271 = *(this + 58);
        if (v271 == *(this + 59))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 28, v271 + 1);
          v271 = *(this + 58);
        }

        v272 = v630;
        v273 = *(this + 28);
        *(this + 58) = v271 + 1;
        *(v273 + 4 * v271) = v272;
        v274 = *(this + 59) - *(this + 58);
        if (v274 >= 1)
        {
          v275 = v274 + 1;
          do
          {
            v276 = *(a2 + 1);
            v277 = *(a2 + 2);
            if (v277 - v276 < 2 || *v276 != 248 || v276[1] != 1)
            {
              break;
            }

            *(a2 + 1) = v276 + 2;
            if ((v276 + 2) >= v277 || v276[2] < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v630))
              {
                return 0;
              }
            }

            else
            {
              LODWORD(v630) = v276[2];
              *(a2 + 1) = v276 + 3;
            }

            v278 = *(this + 58);
            if (v278 >= *(this + 59))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
              v278 = *(this + 58);
            }

            v279 = v630;
            v280 = *(this + 28);
            *(this + 58) = v278 + 1;
            *(v280 + 4 * v278) = v279;
            --v275;
          }

          while (v275 > 1);
        }

LABEL_773:
        v248 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v19 - v248 < 2)
        {
          continue;
        }

        v281 = *v248;
        if (v281 != 128)
        {
          if (v281 == 248 && v248[1] == 1)
          {
LABEL_754:
            v126 = (v248 + 2);
            *(a2 + 1) = v126;
            goto LABEL_755;
          }

          continue;
        }

        if (v248[1] != 2)
        {
          continue;
        }

        v76 = (v248 + 2);
        *(a2 + 1) = v76;
LABEL_780:
        v631[0] = 0;
        if (v76 >= v19 || (v282 = *v76, (v282 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
          if (!result)
          {
            return result;
          }

          v282 = v631[0];
          v283 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v283 = (v76 + 1);
          *(a2 + 1) = v283;
        }

        *(this + 71) = v282 != 0;
        *(this + 217) |= 0x80000000;
        if (v19 - v283 < 2 || *v283 != 136 || v283[1] != 2)
        {
          continue;
        }

        v107 = (v283 + 2);
        *(a2 + 1) = v107;
LABEL_789:
        v631[0] = 0;
        if (v107 >= v19 || (v284 = *v107, (v284 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
          if (!result)
          {
            return result;
          }

          v284 = v631[0];
          v285 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v285 = (v107 + 1);
          *(a2 + 1) = v285;
        }

        *(this + 444) = v284 != 0;
        *(this + 218) |= 1u;
        if (v19 - v285 < 2 || *v285 != 144 || v285[1] != 2)
        {
          continue;
        }

        v33 = (v285 + 2);
        *(a2 + 1) = v33;
LABEL_798:
        v631[0] = 0;
        if (v33 >= v19 || (v286 = *v33, (v286 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
          if (!result)
          {
            return result;
          }

          v286 = v631[0];
          v287 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v287 = (v33 + 1);
          *(a2 + 1) = v287;
        }

        *(this + 47) = v286;
        *(this + 218) |= 2u;
        if (v19 - v287 < 2 || *v287 != 152 || v287[1] != 2)
        {
          continue;
        }

        v73 = (v287 + 2);
        *(a2 + 1) = v73;
LABEL_807:
        v631[0] = 0;
        if (v73 >= v19 || (v288 = *v73, (v288 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
          if (!result)
          {
            return result;
          }

          v288 = v631[0];
          v289 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v289 = (v73 + 1);
          *(a2 + 1) = v289;
        }

        *(this + 60) = v288;
        *(this + 218) |= 4u;
        if (v19 - v289 < 2 || *v289 != 160 || v289[1] != 2)
        {
          continue;
        }

        v95 = (v289 + 2);
        *(a2 + 1) = v95;
LABEL_816:
        v631[0] = 0;
        if (v95 >= v19 || (v290 = *v95, (v290 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
          if (!result)
          {
            return result;
          }

          v290 = v631[0];
          v291 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v291 = (v95 + 1);
          *(a2 + 1) = v291;
        }

        *(this + 61) = v290;
        *(this + 218) |= 8u;
        if (v19 - v291 < 2 || *v291 != 168 || v291[1] != 2)
        {
          continue;
        }

        v20 = (v291 + 2);
        *(a2 + 1) = v20;
LABEL_825:
        v631[0] = 0;
        if (v20 >= v19 || (v292 = *v20, (v292 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
          if (!result)
          {
            return result;
          }

          v292 = v631[0];
          v293 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v293 = (v20 + 1);
          *(a2 + 1) = v293;
        }

        *(this + 62) = v292;
        *(this + 218) |= 0x10u;
        if (v19 - v293 < 2 || *v293 != 176 || v293[1] != 2)
        {
          continue;
        }

        v117 = (v293 + 2);
        *(a2 + 1) = v117;
LABEL_834:
        v631[0] = 0;
        if (v117 >= v19 || (v294 = *v117, (v294 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
          if (!result)
          {
            return result;
          }

          v294 = v631[0];
          v295 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v295 = (v117 + 1);
          *(a2 + 1) = v295;
        }

        *(this + 63) = v294;
        *(this + 218) |= 0x20u;
        if (v19 - v295 < 2 || *v295 != 184 || v295[1] != 2)
        {
          continue;
        }

        v30 = (v295 + 2);
        *(a2 + 1) = v30;
LABEL_843:
        v631[0] = 0;
        if (v30 >= v19 || (v296 = *v30, (v296 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
          if (!result)
          {
            return result;
          }

          v296 = v631[0];
          v297 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v297 = (v30 + 1);
          *(a2 + 1) = v297;
        }

        *(this + 64) = v296;
        *(this + 218) |= 0x40u;
        if (v19 - v297 < 2 || *v297 != 192 || v297[1] != 2)
        {
          continue;
        }

        v119 = (v297 + 2);
        *(a2 + 1) = v119;
LABEL_852:
        v631[0] = 0;
        if (v119 >= v19 || (v298 = *v119, (v298 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
          if (!result)
          {
            return result;
          }

          v298 = v631[0];
          v299 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v299 = (v119 + 1);
          *(a2 + 1) = v299;
        }

        *(this + 65) = v298;
        *(this + 218) |= 0x80u;
        if (v19 - v299 < 2 || *v299 != 200 || v299[1] != 2)
        {
          continue;
        }

        v60 = (v299 + 2);
        *(a2 + 1) = v60;
LABEL_861:
        v631[0] = 0;
        if (v60 >= v19 || (v300 = *v60, (v300 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
          if (!result)
          {
            return result;
          }

          v300 = v631[0];
          v301 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v301 = (v60 + 1);
          *(a2 + 1) = v301;
        }

        *(this + 66) = v300;
        *(this + 218) |= 0x100u;
        if (v19 - v301 < 2 || *v301 != 208 || v301[1] != 2)
        {
          continue;
        }

        v121 = (v301 + 2);
        *(a2 + 1) = v121;
LABEL_870:
        v631[0] = 0;
        if (v121 >= v19 || (v302 = *v121, (v302 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
          if (!result)
          {
            return result;
          }

          v302 = v631[0];
          v303 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v303 = (v121 + 1);
          *(a2 + 1) = v303;
        }

        *(this + 67) = v302;
        *(this + 218) |= 0x200u;
        if (v19 - v303 < 2 || *v303 != 221 || v303[1] != 2)
        {
          continue;
        }

        while (1)
        {
          *(a2 + 1) = v303 + 2;
LABEL_879:
          if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0x15D) != 2)
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
          }

          v631[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v631) & 1) == 0)
          {
            return 0;
          }

          v304 = v631[0];
          v305 = *(this + 70);
          if (v305 == *(this + 71))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 34, v305 + 1);
            v305 = *(this + 70);
          }

          v306 = *(this + 34);
          v307 = v305 + 1;
          *(this + 70) = v305 + 1;
          *(v306 + 4 * v305) = v304;
          v308 = *(a2 + 1);
          v309 = *(a2 + 4) - v308;
          if (v309 >= 1)
          {
            v310 = v309 / 6u;
            v311 = v310 >= *(this + 71) - v307 ? *(this + 71) - v307 : v310;
            if (v311 >= 1)
            {
              v312 = 0;
              while (*v308 == 221 && v308[1] == 2)
              {
                v313 = *(v308 + 2);
                if (v307 >= *(this + 71))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                  v307 = *(this + 70);
                  v306 = *(this + 34);
                }

                *(this + 70) = v307 + 1;
                *(v306 + 4 * v307) = v313;
                ++v312;
                v308 += 6;
                ++v307;
                if (v311 == v312)
                {
                  goto LABEL_897;
                }
              }

              if (!v312)
              {
                goto LABEL_898;
              }

LABEL_897:
              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
            }
          }

LABEL_898:
          v303 = *(a2 + 1);
          if (*(a2 + 4) - v303 <= 1)
          {
            goto LABEL_1;
          }

          v314 = *v303;
          if (v314 == 229)
          {
            break;
          }

          if (v314 != 221 || v303[1] != 2)
          {
            goto LABEL_1;
          }
        }

        if (v303[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v303 + 2;
LABEL_905:
        v631[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v631))
        {
          *(this + 72) = v631[0];
          *(this + 218) |= 0x800u;
          v315 = *(a2 + 1);
          if (*(a2 + 4) - v315 >= 2 && *v315 == 237 && v315[1] == 2)
          {
            while (1)
            {
              *(a2 + 1) = v315 + 2;
LABEL_910:
              if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0x16D) != 2)
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
              }

              v631[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v631) & 1) == 0)
              {
                return 0;
              }

              v316 = v631[0];
              v317 = *(this + 76);
              if (v317 == *(this + 77))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 37, v317 + 1);
                v317 = *(this + 76);
              }

              v318 = *(this + 37);
              v319 = v317 + 1;
              *(this + 76) = v317 + 1;
              *(v318 + 4 * v317) = v316;
              v320 = *(a2 + 1);
              v321 = *(a2 + 4) - v320;
              if (v321 >= 1)
              {
                v322 = v321 / 6u;
                v323 = v322 >= *(this + 77) - v319 ? *(this + 77) - v319 : v322;
                if (v323 >= 1)
                {
                  v324 = 0;
                  while (*v320 == 237 && v320[1] == 2)
                  {
                    v325 = *(v320 + 2);
                    if (v319 >= *(this + 77))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                      v319 = *(this + 76);
                      v318 = *(this + 37);
                    }

                    *(this + 76) = v319 + 1;
                    *(v318 + 4 * v319) = v325;
                    ++v324;
                    v320 += 6;
                    ++v319;
                    if (v323 == v324)
                    {
                      goto LABEL_928;
                    }
                  }

                  if (!v324)
                  {
                    goto LABEL_929;
                  }

LABEL_928:
                  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                }
              }

LABEL_929:
              v315 = *(a2 + 1);
              if (*(a2 + 4) - v315 <= 1)
              {
                break;
              }

              v326 = *v315;
              if (v326 == 245)
              {
                if (v315[1] == 2)
                {
                  *(a2 + 1) = v315 + 2;
LABEL_936:
                  v631[0] = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v631) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 73) = v631[0];
                  *(this + 218) |= 0x2000u;
                  v327 = *(a2 + 1);
                  if (*(a2 + 4) - v327 >= 2 && *v327 == 253 && v327[1] == 2)
                  {
                    *(a2 + 1) = v327 + 2;
LABEL_941:
                    v631[0] = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v631) & 1) == 0)
                    {
                      return 0;
                    }

                    *(this + 78) = v631[0];
                    *(this + 218) |= 0x4000u;
                    v328 = *(a2 + 1);
                    if (*(a2 + 4) - v328 >= 2 && *v328 == 133 && v328[1] == 3)
                    {
                      *(a2 + 1) = v328 + 2;
LABEL_946:
                      v631[0] = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v631) & 1) == 0)
                      {
                        return 0;
                      }

                      *(this + 79) = v631[0];
                      v22 = *(this + 218) | 0x8000;
                      *(this + 218) = v22;
                      v329 = *(a2 + 1);
                      if (*(a2 + 4) - v329 >= 2 && *v329 == 138 && v329[1] == 3)
                      {
                        *(a2 + 1) = v329 + 2;
LABEL_951:
                        *(this + 218) = v22 | 0x10000;
                        if (*(this + 40) == MEMORY[0x29EDC9758])
                        {
                          operator new();
                        }

                        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                        if (!result)
                        {
                          return result;
                        }

                        v330 = *(a2 + 1);
                        if (*(a2 + 4) - v330 >= 2 && *v330 == 146 && v330[1] == 3)
                        {
                          *(a2 + 1) = v330 + 2;
LABEL_958:
                          *(this + 218) |= 0x20000u;
                          if (*(this + 41) == MEMORY[0x29EDC9758])
                          {
                            operator new();
                          }

                          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                          if (!result)
                          {
                            return result;
                          }

                          v331 = *(a2 + 1);
                          if (*(a2 + 4) - v331 >= 2 && *v331 == 154 && v331[1] == 3)
                          {
                            *(a2 + 1) = v331 + 2;
LABEL_965:
                            *(this + 218) |= 0x40000u;
                            if (*(this + 42) == MEMORY[0x29EDC9758])
                            {
                              operator new();
                            }

                            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                            if (!result)
                            {
                              return result;
                            }

                            v332 = *(a2 + 1);
                            if (*(a2 + 4) - v332 >= 2 && *v332 == 162 && v332[1] == 3)
                            {
                              *(a2 + 1) = v332 + 2;
LABEL_972:
                              *(this + 218) |= 0x80000u;
                              if (*(this + 43) == MEMORY[0x29EDC9758])
                              {
                                operator new();
                              }

                              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                              if (!result)
                              {
                                return result;
                              }

                              v333 = *(a2 + 1);
                              if (*(a2 + 4) - v333 >= 2 && *v333 == 170 && v333[1] == 3)
                              {
                                *(a2 + 1) = v333 + 2;
LABEL_979:
                                *(this + 218) |= 0x100000u;
                                if (*(this + 44) == MEMORY[0x29EDC9758])
                                {
                                  operator new();
                                }

                                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
                                if (!result)
                                {
                                  return result;
                                }

                                v334 = *(a2 + 1);
                                v14 = *(a2 + 2);
                                if (v14 - v334 >= 2 && *v334 == 176 && v334[1] == 3)
                                {
                                  while (1)
                                  {
                                    v129 = (v334 + 2);
                                    *(a2 + 1) = v129;
LABEL_986:
                                    LODWORD(v630) = 0;
                                    if (v129 >= v14 || *v129 < 0)
                                    {
                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v630))
                                      {
                                        return 0;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v630) = *v129;
                                      *(a2 + 1) = v129 + 1;
                                    }

                                    v335 = *(this + 92);
                                    if (v335 == *(this + 93))
                                    {
                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 45, v335 + 1);
                                      v335 = *(this + 92);
                                    }

                                    v336 = v630;
                                    v337 = *(this + 45);
                                    *(this + 92) = v335 + 1;
                                    *(v337 + 4 * v335) = v336;
                                    v338 = *(this + 93) - *(this + 92);
                                    if (v338 >= 1)
                                    {
                                      v339 = v338 + 1;
                                      do
                                      {
                                        v340 = *(a2 + 1);
                                        v341 = *(a2 + 2);
                                        if (v341 - v340 < 2 || *v340 != 176 || v340[1] != 3)
                                        {
                                          break;
                                        }

                                        *(a2 + 1) = v340 + 2;
                                        if ((v340 + 2) >= v341 || v340[2] < 0)
                                        {
                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v630))
                                          {
                                            return 0;
                                          }
                                        }

                                        else
                                        {
                                          LODWORD(v630) = v340[2];
                                          *(a2 + 1) = v340 + 3;
                                        }

                                        v342 = *(this + 92);
                                        if (v342 >= *(this + 93))
                                        {
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                                          v342 = *(this + 92);
                                        }

                                        v343 = v630;
                                        v344 = *(this + 45);
                                        *(this + 92) = v342 + 1;
                                        *(v344 + 4 * v342) = v343;
                                        --v339;
                                      }

                                      while (v339 > 1);
                                    }

LABEL_1004:
                                    v334 = *(a2 + 1);
                                    v14 = *(a2 + 2);
                                    if (v14 - v334 < 2)
                                    {
                                      break;
                                    }

                                    v345 = *v334;
                                    if (v345 == 184)
                                    {
                                      if (v334[1] == 3)
                                      {
                                        v57 = (v334 + 2);
                                        *(a2 + 1) = v57;
LABEL_1011:
                                        v631[0] = 0;
                                        if (v57 >= v14 || (v346 = *v57, (v346 & 0x80000000) != 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v346 = v631[0];
                                          v347 = *(a2 + 1);
                                          v14 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          v347 = (v57 + 1);
                                          *(a2 + 1) = v347;
                                        }

                                        *(this + 94) = v346;
                                        *(this + 218) |= 0x400000u;
                                        if (v14 - v347 >= 2 && *v347 == 192 && v347[1] == 3)
                                        {
                                          v114 = (v347 + 2);
                                          *(a2 + 1) = v114;
LABEL_1020:
                                          v631[0] = 0;
                                          if (v114 >= v14 || (v348 = *v114, (v348 & 0x80000000) != 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v348 = v631[0];
                                            v349 = *(a2 + 1);
                                            v14 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            v349 = (v114 + 1);
                                            *(a2 + 1) = v349;
                                          }

                                          *(this + 95) = v348;
                                          *(this + 218) |= 0x800000u;
                                          if (v14 - v349 >= 2 && *v349 == 200 && v349[1] == 3)
                                          {
                                            v15 = (v349 + 2);
                                            *(a2 + 1) = v15;
LABEL_1029:
                                            v631[0] = 0;
                                            if (v15 >= v14 || (v350 = *v15, (v350 & 0x80000000) != 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v350 = v631[0];
                                              v351 = *(a2 + 1);
                                              v14 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              v351 = (v15 + 1);
                                              *(a2 + 1) = v351;
                                            }

                                            *(this + 96) = v350;
                                            *(this + 218) |= 0x1000000u;
                                            if (v14 - v351 >= 2 && *v351 == 208 && v351[1] == 3)
                                            {
                                              v39 = (v351 + 2);
                                              *(a2 + 1) = v39;
LABEL_1038:
                                              v631[0] = 0;
                                              if (v39 >= v14 || (v352 = *v39, (v352 & 0x80000000) != 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v352 = v631[0];
                                                v353 = *(a2 + 1);
                                                v14 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                v353 = (v39 + 1);
                                                *(a2 + 1) = v353;
                                              }

                                              *(this + 97) = v352;
                                              *(this + 218) |= 0x2000000u;
                                              if (v14 - v353 >= 2 && *v353 == 216 && v353[1] == 3)
                                              {
                                                v28 = (v353 + 2);
                                                *(a2 + 1) = v28;
LABEL_1047:
                                                v631[0] = 0;
                                                if (v28 >= v14 || (v354 = *v28, (v354 & 0x80000000) != 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v354 = v631[0];
                                                  v355 = *(a2 + 1);
                                                  v14 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  v355 = (v28 + 1);
                                                  *(a2 + 1) = v355;
                                                }

                                                *(this + 98) = v354;
                                                *(this + 218) |= 0x4000000u;
                                                if (v14 - v355 >= 2 && *v355 == 224 && v355[1] == 3)
                                                {
                                                  v84 = (v355 + 2);
                                                  *(a2 + 1) = v84;
LABEL_1056:
                                                  v631[0] = 0;
                                                  if (v84 >= v14 || (v356 = *v84, (v356 & 0x80000000) != 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v356 = v631[0];
                                                    v357 = *(a2 + 1);
                                                    v14 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    v357 = (v84 + 1);
                                                    *(a2 + 1) = v357;
                                                  }

                                                  *(this + 99) = v356;
                                                  *(this + 218) |= 0x8000000u;
                                                  if (v14 - v357 >= 2 && *v357 == 232 && v357[1] == 3)
                                                  {
                                                    v45 = (v357 + 2);
                                                    *(a2 + 1) = v45;
LABEL_1065:
                                                    v631[0] = 0;
                                                    if (v45 >= v14 || (v358 = *v45, (v358 & 0x80000000) != 0))
                                                    {
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v358 = v631[0];
                                                      v359 = *(a2 + 1);
                                                      v14 = *(a2 + 2);
                                                    }

                                                    else
                                                    {
                                                      v359 = (v45 + 1);
                                                      *(a2 + 1) = v359;
                                                    }

                                                    *(this + 100) = v358;
                                                    *(this + 218) |= 0x10000000u;
                                                    if (v14 - v359 >= 2 && *v359 == 240 && v359[1] == 3)
                                                    {
                                                      v21 = (v359 + 2);
                                                      *(a2 + 1) = v21;
LABEL_1074:
                                                      v631[0] = 0;
                                                      if (v21 >= v14 || (v360 = *v21, (v360 & 0x80000000) != 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v360 = v631[0];
                                                        v361 = *(a2 + 1);
                                                        v14 = *(a2 + 2);
                                                      }

                                                      else
                                                      {
                                                        v361 = (v21 + 1);
                                                        *(a2 + 1) = v361;
                                                      }

                                                      *(this + 101) = v360;
                                                      *(this + 218) |= 0x20000000u;
                                                      if (v14 - v361 >= 2 && *v361 == 248 && v361[1] == 3)
                                                      {
                                                        v16 = (v361 + 2);
                                                        *(a2 + 1) = v16;
LABEL_1083:
                                                        v631[0] = 0;
                                                        if (v16 >= v14 || (v362 = *v16, (v362 & 0x80000000) != 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v362 = v631[0];
                                                          v363 = *(a2 + 1);
                                                          v14 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          v363 = (v16 + 1);
                                                          *(a2 + 1) = v363;
                                                        }

                                                        *(this + 102) = v362;
                                                        *(this + 218) |= 0x40000000u;
                                                        if (v14 - v363 >= 2 && *v363 == 128 && v363[1] == 4)
                                                        {
                                                          v58 = (v363 + 2);
                                                          *(a2 + 1) = v58;
LABEL_1092:
                                                          v631[0] = 0;
                                                          if (v58 >= v14 || (v364 = *v58, (v364 & 0x80000000) != 0))
                                                          {
                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v364 = v631[0];
                                                            v365 = *(a2 + 1);
                                                            v14 = *(a2 + 2);
                                                          }

                                                          else
                                                          {
                                                            v365 = (v58 + 1);
                                                            *(a2 + 1) = v365;
                                                          }

                                                          *(this + 103) = v364;
                                                          *(this + 218) |= 0x80000000;
                                                          if (v14 - v365 >= 2 && *v365 == 136 && v365[1] == 4)
                                                          {
                                                            v23 = (v365 + 2);
                                                            *(a2 + 1) = v23;
LABEL_1101:
                                                            v631[0] = 0;
                                                            if (v23 >= v14 || (v366 = *v23, (v366 & 0x80000000) != 0))
                                                            {
                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                              if (!result)
                                                              {
                                                                return result;
                                                              }

                                                              v366 = v631[0];
                                                              v367 = *(a2 + 1);
                                                              v14 = *(a2 + 2);
                                                            }

                                                            else
                                                            {
                                                              v367 = (v23 + 1);
                                                              *(a2 + 1) = v367;
                                                            }

                                                            *(this + 104) = v366;
                                                            *(this + 219) |= 1u;
                                                            if (v14 - v367 >= 2 && *v367 == 144 && v367[1] == 4)
                                                            {
                                                              v120 = (v367 + 2);
                                                              *(a2 + 1) = v120;
LABEL_1110:
                                                              v631[0] = 0;
                                                              if (v120 >= v14 || (v368 = *v120, (v368 & 0x80000000) != 0))
                                                              {
                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                if (!result)
                                                                {
                                                                  return result;
                                                                }

                                                                v368 = v631[0];
                                                                v369 = *(a2 + 1);
                                                                v14 = *(a2 + 2);
                                                              }

                                                              else
                                                              {
                                                                v369 = (v120 + 1);
                                                                *(a2 + 1) = v369;
                                                              }

                                                              *(this + 105) = v368;
                                                              *(this + 219) |= 2u;
                                                              if (v14 - v369 >= 2 && *v369 == 152 && v369[1] == 4)
                                                              {
                                                                v32 = (v369 + 2);
                                                                *(a2 + 1) = v32;
LABEL_1119:
                                                                v631[0] = 0;
                                                                if (v32 >= v14 || (v370 = *v32, (v370 & 0x80000000) != 0))
                                                                {
                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                  if (!result)
                                                                  {
                                                                    return result;
                                                                  }

                                                                  v370 = v631[0];
                                                                  v371 = *(a2 + 1);
                                                                  v14 = *(a2 + 2);
                                                                }

                                                                else
                                                                {
                                                                  v371 = (v32 + 1);
                                                                  *(a2 + 1) = v371;
                                                                }

                                                                *(this + 106) = v370;
                                                                *(this + 219) |= 4u;
                                                                if (v14 - v371 >= 2 && *v371 == 160 && v371[1] == 4)
                                                                {
                                                                  v83 = (v371 + 2);
                                                                  *(a2 + 1) = v83;
LABEL_1128:
                                                                  v631[0] = 0;
                                                                  if (v83 >= v14 || (v372 = *v83, (v372 & 0x80000000) != 0))
                                                                  {
                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                    if (!result)
                                                                    {
                                                                      return result;
                                                                    }

                                                                    v372 = v631[0];
                                                                    v373 = *(a2 + 1);
                                                                    v14 = *(a2 + 2);
                                                                  }

                                                                  else
                                                                  {
                                                                    v373 = (v83 + 1);
                                                                    *(a2 + 1) = v373;
                                                                  }

                                                                  *(this + 107) = v372;
                                                                  *(this + 219) |= 8u;
                                                                  if (v14 - v373 >= 2 && *v373 == 168 && v373[1] == 4)
                                                                  {
                                                                    v52 = (v373 + 2);
                                                                    *(a2 + 1) = v52;
LABEL_1137:
                                                                    v631[0] = 0;
                                                                    if (v52 >= v14 || (v374 = *v52, (v374 & 0x80000000) != 0))
                                                                    {
                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                      if (!result)
                                                                      {
                                                                        return result;
                                                                      }

                                                                      v374 = v631[0];
                                                                      v375 = *(a2 + 1);
                                                                      v14 = *(a2 + 2);
                                                                    }

                                                                    else
                                                                    {
                                                                      v375 = (v52 + 1);
                                                                      *(a2 + 1) = v375;
                                                                    }

                                                                    *(this + 108) = v374;
                                                                    *(this + 219) |= 0x10u;
                                                                    if (v14 - v375 >= 2 && *v375 == 176 && v375[1] == 4)
                                                                    {
                                                                      v29 = (v375 + 2);
                                                                      *(a2 + 1) = v29;
LABEL_1146:
                                                                      v631[0] = 0;
                                                                      if (v29 >= v14 || (v376 = *v29, (v376 & 0x80000000) != 0))
                                                                      {
                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                        if (!result)
                                                                        {
                                                                          return result;
                                                                        }

                                                                        v376 = v631[0];
                                                                        v377 = *(a2 + 1);
                                                                        v14 = *(a2 + 2);
                                                                      }

                                                                      else
                                                                      {
                                                                        v377 = (v29 + 1);
                                                                        *(a2 + 1) = v377;
                                                                      }

                                                                      *(this + 109) = v376;
                                                                      *(this + 219) |= 0x20u;
                                                                      if (v14 - v377 >= 2 && *v377 == 184 && v377[1] == 4)
                                                                      {
                                                                        v100 = (v377 + 2);
                                                                        *(a2 + 1) = v100;
LABEL_1155:
                                                                        v631[0] = 0;
                                                                        if (v100 >= v14 || (v378 = *v100, (v378 & 0x80000000) != 0))
                                                                        {
                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                          if (!result)
                                                                          {
                                                                            return result;
                                                                          }

                                                                          v378 = v631[0];
                                                                          v379 = *(a2 + 1);
                                                                          v14 = *(a2 + 2);
                                                                        }

                                                                        else
                                                                        {
                                                                          v379 = (v100 + 1);
                                                                          *(a2 + 1) = v379;
                                                                        }

                                                                        *(this + 110) = v378;
                                                                        *(this + 219) |= 0x40u;
                                                                        if (v14 - v379 >= 2 && *v379 == 192 && v379[1] == 4)
                                                                        {
                                                                          v118 = (v379 + 2);
                                                                          *(a2 + 1) = v118;
LABEL_1164:
                                                                          v631[0] = 0;
                                                                          if (v118 >= v14 || (v380 = *v118, (v380 & 0x80000000) != 0))
                                                                          {
                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                            if (!result)
                                                                            {
                                                                              return result;
                                                                            }

                                                                            v380 = v631[0];
                                                                            v381 = *(a2 + 1);
                                                                            v14 = *(a2 + 2);
                                                                          }

                                                                          else
                                                                          {
                                                                            v381 = (v118 + 1);
                                                                            *(a2 + 1) = v381;
                                                                          }

                                                                          *(this + 112) = v380;
                                                                          *(this + 219) |= 0x80u;
                                                                          if (v14 - v381 >= 2 && *v381 == 200 && v381[1] == 4)
                                                                          {
                                                                            v66 = (v381 + 2);
                                                                            *(a2 + 1) = v66;
LABEL_1173:
                                                                            v631[0] = 0;
                                                                            if (v66 >= v14 || (v382 = *v66, (v382 & 0x80000000) != 0))
                                                                            {
                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                              if (!result)
                                                                              {
                                                                                return result;
                                                                              }

                                                                              v382 = v631[0];
                                                                              v383 = *(a2 + 1);
                                                                              v14 = *(a2 + 2);
                                                                            }

                                                                            else
                                                                            {
                                                                              v383 = (v66 + 1);
                                                                              *(a2 + 1) = v383;
                                                                            }

                                                                            *(this + 113) = v382;
                                                                            *(this + 219) |= 0x100u;
                                                                            if (v14 - v383 >= 2 && *v383 == 208 && v383[1] == 4)
                                                                            {
                                                                              v113 = (v383 + 2);
                                                                              *(a2 + 1) = v113;
LABEL_1182:
                                                                              v631[0] = 0;
                                                                              if (v113 >= v14 || (v384 = *v113, (v384 & 0x80000000) != 0))
                                                                              {
                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                if (!result)
                                                                                {
                                                                                  return result;
                                                                                }

                                                                                v384 = v631[0];
                                                                                v385 = *(a2 + 1);
                                                                                v14 = *(a2 + 2);
                                                                              }

                                                                              else
                                                                              {
                                                                                v385 = (v113 + 1);
                                                                                *(a2 + 1) = v385;
                                                                              }

                                                                              *(this + 114) = v384;
                                                                              *(this + 219) |= 0x200u;
                                                                              if (v14 - v385 >= 2 && *v385 == 216 && v385[1] == 4)
                                                                              {
                                                                                v109 = (v385 + 2);
                                                                                *(a2 + 1) = v109;
LABEL_1191:
                                                                                v631[0] = 0;
                                                                                if (v109 >= v14 || (v386 = *v109, (v386 & 0x80000000) != 0))
                                                                                {
                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                  if (!result)
                                                                                  {
                                                                                    return result;
                                                                                  }

                                                                                  v386 = v631[0];
                                                                                  v387 = *(a2 + 1);
                                                                                  v14 = *(a2 + 2);
                                                                                }

                                                                                else
                                                                                {
                                                                                  v387 = (v109 + 1);
                                                                                  *(a2 + 1) = v387;
                                                                                }

                                                                                *(this + 115) = v386;
                                                                                *(this + 219) |= 0x400u;
                                                                                if (v14 - v387 >= 2 && *v387 == 224 && v387[1] == 4)
                                                                                {
                                                                                  v27 = (v387 + 2);
                                                                                  *(a2 + 1) = v27;
LABEL_1200:
                                                                                  v631[0] = 0;
                                                                                  if (v27 >= v14 || (v388 = *v27, (v388 & 0x80000000) != 0))
                                                                                  {
                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                    if (!result)
                                                                                    {
                                                                                      return result;
                                                                                    }

                                                                                    v388 = v631[0];
                                                                                    v389 = *(a2 + 1);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v389 = (v27 + 1);
                                                                                    *(a2 + 1) = v389;
                                                                                  }

                                                                                  *(this + 116) = v388;
                                                                                  *(this + 219) |= 0x800u;
                                                                                  v24 = *(a2 + 2);
                                                                                  if (v24 - v389 >= 2 && *v389 == 232 && v389[1] == 4)
                                                                                  {
                                                                                    v103 = (v389 + 2);
                                                                                    *(a2 + 1) = v103;
LABEL_1209:
                                                                                    v631[0] = 0;
                                                                                    if (v103 >= v24 || (v390 = *v103, (v390 & 0x80000000) != 0))
                                                                                    {
                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                      if (!result)
                                                                                      {
                                                                                        return result;
                                                                                      }

                                                                                      v390 = v631[0];
                                                                                      v391 = *(a2 + 1);
                                                                                      v24 = *(a2 + 2);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v391 = (v103 + 1);
                                                                                      *(a2 + 1) = v391;
                                                                                    }

                                                                                    *(this + 117) = v390;
                                                                                    *(this + 219) |= 0x1000u;
                                                                                    if (v24 - v391 >= 2 && *v391 == 240 && v391[1] == 4)
                                                                                    {
                                                                                      v55 = (v391 + 2);
                                                                                      *(a2 + 1) = v55;
LABEL_1218:
                                                                                      v631[0] = 0;
                                                                                      if (v55 >= v24 || (v392 = *v55, (v392 & 0x80000000) != 0))
                                                                                      {
                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                        if (!result)
                                                                                        {
                                                                                          return result;
                                                                                        }

                                                                                        v392 = v631[0];
                                                                                        v393 = *(a2 + 1);
                                                                                        v24 = *(a2 + 2);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v393 = (v55 + 1);
                                                                                        *(a2 + 1) = v393;
                                                                                      }

                                                                                      *(this + 118) = v392;
                                                                                      *(this + 219) |= 0x2000u;
                                                                                      if (v24 - v393 >= 2 && *v393 == 248 && v393[1] == 4)
                                                                                      {
                                                                                        v98 = (v393 + 2);
                                                                                        *(a2 + 1) = v98;
LABEL_1227:
                                                                                        v631[0] = 0;
                                                                                        if (v98 >= v24 || (v394 = *v98, (v394 & 0x80000000) != 0))
                                                                                        {
                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                          if (!result)
                                                                                          {
                                                                                            return result;
                                                                                          }

                                                                                          v394 = v631[0];
                                                                                          v395 = *(a2 + 1);
                                                                                          v24 = *(a2 + 2);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v395 = (v98 + 1);
                                                                                          *(a2 + 1) = v395;
                                                                                        }

                                                                                        *(this + 119) = v394;
                                                                                        *(this + 219) |= 0x4000u;
                                                                                        if (v24 - v395 >= 2 && *v395 == 128 && v395[1] == 5)
                                                                                        {
                                                                                          v97 = (v395 + 2);
                                                                                          *(a2 + 1) = v97;
LABEL_1236:
                                                                                          v631[0] = 0;
                                                                                          if (v97 >= v24 || (v396 = *v97, (v396 & 0x80000000) != 0))
                                                                                          {
                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                            if (!result)
                                                                                            {
                                                                                              return result;
                                                                                            }

                                                                                            v396 = v631[0];
                                                                                            v397 = *(a2 + 1);
                                                                                            v24 = *(a2 + 2);
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v397 = (v97 + 1);
                                                                                            *(a2 + 1) = v397;
                                                                                          }

                                                                                          *(this + 120) = v396;
                                                                                          *(this + 219) |= 0x8000u;
                                                                                          if (v24 - v397 >= 2 && *v397 == 136 && v397[1] == 5)
                                                                                          {
                                                                                            v116 = (v397 + 2);
                                                                                            *(a2 + 1) = v116;
LABEL_1245:
                                                                                            v631[0] = 0;
                                                                                            if (v116 >= v24 || (v398 = *v116, (v398 & 0x80000000) != 0))
                                                                                            {
                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                              if (!result)
                                                                                              {
                                                                                                return result;
                                                                                              }

                                                                                              v398 = v631[0];
                                                                                              v399 = *(a2 + 1);
                                                                                              v24 = *(a2 + 2);
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v399 = (v116 + 1);
                                                                                              *(a2 + 1) = v399;
                                                                                            }

                                                                                            *(this + 121) = v398;
                                                                                            *(this + 219) |= 0x10000u;
                                                                                            if (v24 - v399 >= 2 && *v399 == 144 && v399[1] == 5)
                                                                                            {
                                                                                              v111 = (v399 + 2);
                                                                                              *(a2 + 1) = v111;
LABEL_1254:
                                                                                              v631[0] = 0;
                                                                                              if (v111 >= v24 || (v400 = *v111, (v400 & 0x80000000) != 0))
                                                                                              {
                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                if (!result)
                                                                                                {
                                                                                                  return result;
                                                                                                }

                                                                                                v400 = v631[0];
                                                                                                v401 = *(a2 + 1);
                                                                                                v24 = *(a2 + 2);
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v401 = (v111 + 1);
                                                                                                *(a2 + 1) = v401;
                                                                                              }

                                                                                              *(this + 122) = v400;
                                                                                              *(this + 219) |= 0x20000u;
                                                                                              if (v24 - v401 >= 2 && *v401 == 152 && v401[1] == 5)
                                                                                              {
                                                                                                v25 = (v401 + 2);
                                                                                                *(a2 + 1) = v25;
LABEL_1263:
                                                                                                v631[0] = 0;
                                                                                                if (v25 >= v24 || (v402 = *v25, (v402 & 0x80000000) != 0))
                                                                                                {
                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                  if (!result)
                                                                                                  {
                                                                                                    return result;
                                                                                                  }

                                                                                                  v402 = v631[0];
                                                                                                  v403 = *(a2 + 1);
                                                                                                  v24 = *(a2 + 2);
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v403 = (v25 + 1);
                                                                                                  *(a2 + 1) = v403;
                                                                                                }

                                                                                                *(this + 123) = v402;
                                                                                                *(this + 219) |= 0x40000u;
                                                                                                if (v24 - v403 >= 2 && *v403 == 160 && v403[1] == 5)
                                                                                                {
                                                                                                  v99 = (v403 + 2);
                                                                                                  *(a2 + 1) = v99;
LABEL_1272:
                                                                                                  v631[0] = 0;
                                                                                                  if (v99 >= v24 || (v404 = *v99, (v404 & 0x80000000) != 0))
                                                                                                  {
                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                    if (!result)
                                                                                                    {
                                                                                                      return result;
                                                                                                    }

                                                                                                    v404 = v631[0];
                                                                                                    v405 = *(a2 + 1);
                                                                                                    v24 = *(a2 + 2);
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v405 = (v99 + 1);
                                                                                                    *(a2 + 1) = v405;
                                                                                                  }

                                                                                                  *(this + 445) = v404 != 0;
                                                                                                  *(this + 219) |= 0x80000u;
                                                                                                  if (v24 - v405 >= 2 && *v405 == 168 && v405[1] == 5)
                                                                                                  {
                                                                                                    v102 = (v405 + 2);
                                                                                                    *(a2 + 1) = v102;
LABEL_1281:
                                                                                                    v631[0] = 0;
                                                                                                    if (v102 >= v24 || (v406 = *v102, (v406 & 0x80000000) != 0))
                                                                                                    {
                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                      if (!result)
                                                                                                      {
                                                                                                        return result;
                                                                                                      }

                                                                                                      v406 = v631[0];
                                                                                                      v407 = *(a2 + 1);
                                                                                                      v24 = *(a2 + 2);
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v407 = (v102 + 1);
                                                                                                      *(a2 + 1) = v407;
                                                                                                    }

                                                                                                    *(this + 446) = v406 != 0;
                                                                                                    *(this + 219) |= 0x100000u;
                                                                                                    if (v24 - v407 >= 2 && *v407 == 176 && v407[1] == 5)
                                                                                                    {
                                                                                                      v40 = (v407 + 2);
                                                                                                      *(a2 + 1) = v40;
LABEL_1290:
                                                                                                      v631[0] = 0;
                                                                                                      if (v40 >= v24 || (v408 = *v40, (v408 & 0x80000000) != 0))
                                                                                                      {
                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                        if (!result)
                                                                                                        {
                                                                                                          return result;
                                                                                                        }

                                                                                                        v408 = v631[0];
                                                                                                        v409 = *(a2 + 1);
                                                                                                        v24 = *(a2 + 2);
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v409 = (v40 + 1);
                                                                                                        *(a2 + 1) = v409;
                                                                                                      }

                                                                                                      *(this + 447) = v408 != 0;
                                                                                                      *(this + 219) |= 0x200000u;
                                                                                                      if (v24 - v409 >= 2 && *v409 == 184 && v409[1] == 5)
                                                                                                      {
                                                                                                        while (1)
                                                                                                        {
                                                                                                          v140 = (v409 + 2);
                                                                                                          *(a2 + 1) = v140;
LABEL_1299:
                                                                                                          v631[0] = 0;
                                                                                                          if (v140 >= v24 || (v410 = *v140, (v410 & 0x80000000) != 0))
                                                                                                          {
                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                            if (!result)
                                                                                                            {
                                                                                                              return result;
                                                                                                            }

                                                                                                            v410 = v631[0];
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            *(a2 + 1) = v140 + 1;
                                                                                                          }

                                                                                                          v411 = *(this + 126);
                                                                                                          if (v411 == *(this + 127))
                                                                                                          {
                                                                                                            wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 62, v411 + 1);
                                                                                                            v411 = *(this + 126);
                                                                                                          }

                                                                                                          v412 = *(this + 62);
                                                                                                          *(this + 126) = v411 + 1;
                                                                                                          *(v412 + 4 * v411) = v410;
                                                                                                          v413 = *(this + 127) - *(this + 126);
                                                                                                          if (v413 >= 1)
                                                                                                          {
                                                                                                            v414 = v413 + 1;
                                                                                                            do
                                                                                                            {
                                                                                                              v415 = *(a2 + 1);
                                                                                                              v416 = *(a2 + 2);
                                                                                                              if (v416 - v415 < 2 || *v415 != 184 || v415[1] != 5)
                                                                                                              {
                                                                                                                break;
                                                                                                              }

                                                                                                              *(a2 + 1) = v415 + 2;
                                                                                                              v631[0] = 0;
                                                                                                              if ((v415 + 2) >= v416 || (v417 = v415[2], (v417 & 0x80000000) != 0))
                                                                                                              {
                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                if (!result)
                                                                                                                {
                                                                                                                  return result;
                                                                                                                }

                                                                                                                v417 = v631[0];
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                *(a2 + 1) = v415 + 3;
                                                                                                              }

                                                                                                              v418 = *(this + 126);
                                                                                                              if (v418 >= *(this + 127))
                                                                                                              {
                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                                                                                                                v418 = *(this + 126);
                                                                                                              }

                                                                                                              v419 = *(this + 62);
                                                                                                              *(this + 126) = v418 + 1;
                                                                                                              *(v419 + 4 * v418) = v417;
                                                                                                              --v414;
                                                                                                            }

                                                                                                            while (v414 > 1);
                                                                                                          }

LABEL_1319:
                                                                                                          v409 = *(a2 + 1);
                                                                                                          v24 = *(a2 + 2);
                                                                                                          if (v24 - v409 <= 1)
                                                                                                          {
                                                                                                            break;
                                                                                                          }

                                                                                                          v420 = *v409;
                                                                                                          if (v420 == 197)
                                                                                                          {
                                                                                                            if (v409[1] == 5)
                                                                                                            {
                                                                                                              while (1)
                                                                                                              {
                                                                                                                *(a2 + 1) = v409 + 2;
LABEL_1326:
                                                                                                                if (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(0x2C5) != 2)
                                                                                                                {
                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                                                                                                                }

                                                                                                                v631[0] = 0;
                                                                                                                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v631) & 1) == 0)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                v421 = v631[0];
                                                                                                                v422 = *(this + 130);
                                                                                                                if (v422 == *(this + 131))
                                                                                                                {
                                                                                                                  wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 64, v422 + 1);
                                                                                                                  v422 = *(this + 130);
                                                                                                                }

                                                                                                                v423 = *(this + 64);
                                                                                                                v424 = v422 + 1;
                                                                                                                *(this + 130) = v422 + 1;
                                                                                                                *(v423 + 4 * v422) = v421;
                                                                                                                v425 = *(a2 + 1);
                                                                                                                v426 = *(a2 + 4) - v425;
                                                                                                                if (v426 >= 1)
                                                                                                                {
                                                                                                                  v427 = v426 / 6u;
                                                                                                                  v428 = v427 >= *(this + 131) - v424 ? *(this + 131) - v424 : v427;
                                                                                                                  if (v428 >= 1)
                                                                                                                  {
                                                                                                                    v429 = 0;
                                                                                                                    while (*v425 == 197 && v425[1] == 5)
                                                                                                                    {
                                                                                                                      v430 = *(v425 + 2);
                                                                                                                      if (v424 >= *(this + 131))
                                                                                                                      {
                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                                                                                                                        v424 = *(this + 130);
                                                                                                                        v423 = *(this + 64);
                                                                                                                      }

                                                                                                                      *(this + 130) = v424 + 1;
                                                                                                                      *(v423 + 4 * v424) = v430;
                                                                                                                      ++v429;
                                                                                                                      v425 += 6;
                                                                                                                      ++v424;
                                                                                                                      if (v428 == v429)
                                                                                                                      {
                                                                                                                        goto LABEL_1344;
                                                                                                                      }
                                                                                                                    }

                                                                                                                    if (!v429)
                                                                                                                    {
                                                                                                                      goto LABEL_1345;
                                                                                                                    }

LABEL_1344:
                                                                                                                    wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                                                                                                                  }
                                                                                                                }

LABEL_1345:
                                                                                                                v409 = *(a2 + 1);
                                                                                                                v34 = *(a2 + 2);
                                                                                                                if (v34 - v409 <= 1)
                                                                                                                {
                                                                                                                  break;
                                                                                                                }

                                                                                                                v431 = *v409;
                                                                                                                if (v431 == 200)
                                                                                                                {
                                                                                                                  if (v409[1] == 5)
                                                                                                                  {
                                                                                                                    v41 = (v409 + 2);
                                                                                                                    *(a2 + 1) = v41;
LABEL_1352:
                                                                                                                    v631[0] = 0;
                                                                                                                    if (v41 >= v34 || (v432 = *v41, (v432 & 0x80000000) != 0))
                                                                                                                    {
                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                      if (!result)
                                                                                                                      {
                                                                                                                        return result;
                                                                                                                      }

                                                                                                                      v432 = v631[0];
                                                                                                                      v433 = *(a2 + 1);
                                                                                                                      v34 = *(a2 + 2);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v433 = (v41 + 1);
                                                                                                                      *(a2 + 1) = v433;
                                                                                                                    }

                                                                                                                    *(this + 132) = v432;
                                                                                                                    *(this + 219) |= 0x1000000u;
                                                                                                                    if (v34 - v433 >= 2 && *v433 == 208 && v433[1] == 5)
                                                                                                                    {
                                                                                                                      v106 = (v433 + 2);
                                                                                                                      *(a2 + 1) = v106;
LABEL_1361:
                                                                                                                      v631[0] = 0;
                                                                                                                      if (v106 >= v34 || (v434 = *v106, (v434 & 0x80000000) != 0))
                                                                                                                      {
                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                        if (!result)
                                                                                                                        {
                                                                                                                          return result;
                                                                                                                        }

                                                                                                                        v434 = v631[0];
                                                                                                                        v435 = *(a2 + 1);
                                                                                                                        v34 = *(a2 + 2);
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v435 = (v106 + 1);
                                                                                                                        *(a2 + 1) = v435;
                                                                                                                      }

                                                                                                                      *(this + 133) = v434;
                                                                                                                      *(this + 219) |= 0x2000000u;
                                                                                                                      if (v34 - v435 >= 2 && *v435 == 216 && v435[1] == 5)
                                                                                                                      {
                                                                                                                        v115 = (v435 + 2);
                                                                                                                        *(a2 + 1) = v115;
LABEL_1370:
                                                                                                                        v631[0] = 0;
                                                                                                                        if (v115 >= v34 || (v436 = *v115, (v436 & 0x80000000) != 0))
                                                                                                                        {
                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                          if (!result)
                                                                                                                          {
                                                                                                                            return result;
                                                                                                                          }

                                                                                                                          v436 = v631[0];
                                                                                                                          v437 = *(a2 + 1);
                                                                                                                          v34 = *(a2 + 2);
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v437 = (v115 + 1);
                                                                                                                          *(a2 + 1) = v437;
                                                                                                                        }

                                                                                                                        *(this + 134) = v436;
                                                                                                                        *(this + 219) |= 0x4000000u;
                                                                                                                        if (v34 - v437 >= 2 && *v437 == 224 && v437[1] == 5)
                                                                                                                        {
                                                                                                                          v36 = (v437 + 2);
                                                                                                                          *(a2 + 1) = v36;
LABEL_1379:
                                                                                                                          v631[0] = 0;
                                                                                                                          if (v36 >= v34 || (v438 = *v36, (v438 & 0x80000000) != 0))
                                                                                                                          {
                                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                            if (!result)
                                                                                                                            {
                                                                                                                              return result;
                                                                                                                            }

                                                                                                                            v438 = v631[0];
                                                                                                                            v439 = *(a2 + 1);
                                                                                                                            v34 = *(a2 + 2);
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v439 = (v36 + 1);
                                                                                                                            *(a2 + 1) = v439;
                                                                                                                          }

                                                                                                                          *(this + 135) = v438;
                                                                                                                          *(this + 219) |= 0x8000000u;
                                                                                                                          if (v34 - v439 >= 2 && *v439 == 232 && v439[1] == 5)
                                                                                                                          {
                                                                                                                            v42 = (v439 + 2);
                                                                                                                            *(a2 + 1) = v42;
LABEL_1388:
                                                                                                                            v631[0] = 0;
                                                                                                                            if (v42 >= v34 || (v440 = *v42, (v440 & 0x80000000) != 0))
                                                                                                                            {
                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                              if (!result)
                                                                                                                              {
                                                                                                                                return result;
                                                                                                                              }

                                                                                                                              v440 = v631[0];
                                                                                                                              v441 = *(a2 + 1);
                                                                                                                              v34 = *(a2 + 2);
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v441 = (v42 + 1);
                                                                                                                              *(a2 + 1) = v441;
                                                                                                                            }

                                                                                                                            *(this + 136) = v440;
                                                                                                                            *(this + 219) |= 0x10000000u;
                                                                                                                            if (v34 - v441 >= 2 && *v441 == 240 && v441[1] == 5)
                                                                                                                            {
                                                                                                                              v82 = (v441 + 2);
                                                                                                                              *(a2 + 1) = v82;
LABEL_1397:
                                                                                                                              v631[0] = 0;
                                                                                                                              if (v82 >= v34 || (v442 = *v82, (v442 & 0x80000000) != 0))
                                                                                                                              {
                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                if (!result)
                                                                                                                                {
                                                                                                                                  return result;
                                                                                                                                }

                                                                                                                                v442 = v631[0];
                                                                                                                                v443 = *(a2 + 1);
                                                                                                                                v34 = *(a2 + 2);
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v443 = (v82 + 1);
                                                                                                                                *(a2 + 1) = v443;
                                                                                                                              }

                                                                                                                              *(this + 137) = v442;
                                                                                                                              *(this + 219) |= 0x20000000u;
                                                                                                                              if (v34 - v443 >= 2 && *v443 == 248 && v443[1] == 5)
                                                                                                                              {
                                                                                                                                v110 = (v443 + 2);
                                                                                                                                *(a2 + 1) = v110;
LABEL_1406:
                                                                                                                                v631[0] = 0;
                                                                                                                                if (v110 >= v34 || (v444 = *v110, (v444 & 0x80000000) != 0))
                                                                                                                                {
                                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                  if (!result)
                                                                                                                                  {
                                                                                                                                    return result;
                                                                                                                                  }

                                                                                                                                  v444 = v631[0];
                                                                                                                                  v445 = *(a2 + 1);
                                                                                                                                  v34 = *(a2 + 2);
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v445 = (v110 + 1);
                                                                                                                                  *(a2 + 1) = v445;
                                                                                                                                }

                                                                                                                                *(this + 138) = v444;
                                                                                                                                *(this + 219) |= 0x40000000u;
                                                                                                                                if (v34 - v445 >= 2 && *v445 == 128 && v445[1] == 6)
                                                                                                                                {
                                                                                                                                  v85 = (v445 + 2);
                                                                                                                                  *(a2 + 1) = v85;
LABEL_1415:
                                                                                                                                  v631[0] = 0;
                                                                                                                                  if (v85 >= v34 || (v446 = *v85, (v446 & 0x80000000) != 0))
                                                                                                                                  {
                                                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                    if (!result)
                                                                                                                                    {
                                                                                                                                      return result;
                                                                                                                                    }

                                                                                                                                    v446 = v631[0];
                                                                                                                                    v447 = *(a2 + 1);
                                                                                                                                    v34 = *(a2 + 2);
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v447 = (v85 + 1);
                                                                                                                                    *(a2 + 1) = v447;
                                                                                                                                  }

                                                                                                                                  *(this + 139) = v446;
                                                                                                                                  *(this + 219) |= 0x80000000;
                                                                                                                                  if (v34 - v447 >= 2 && *v447 == 136 && v447[1] == 6)
                                                                                                                                  {
                                                                                                                                    v78 = (v447 + 2);
                                                                                                                                    *(a2 + 1) = v78;
LABEL_1424:
                                                                                                                                    v631[0] = 0;
                                                                                                                                    if (v78 >= v34 || (v448 = *v78, (v448 & 0x80000000) != 0))
                                                                                                                                    {
                                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                      if (!result)
                                                                                                                                      {
                                                                                                                                        return result;
                                                                                                                                      }

                                                                                                                                      v448 = v631[0];
                                                                                                                                      v449 = *(a2 + 1);
                                                                                                                                      v34 = *(a2 + 2);
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v449 = (v78 + 1);
                                                                                                                                      *(a2 + 1) = v449;
                                                                                                                                    }

                                                                                                                                    *(this + 140) = v448;
                                                                                                                                    *(this + 220) |= 1u;
                                                                                                                                    if (v34 - v449 >= 2 && *v449 == 144 && v449[1] == 6)
                                                                                                                                    {
                                                                                                                                      v53 = (v449 + 2);
                                                                                                                                      *(a2 + 1) = v53;
LABEL_1433:
                                                                                                                                      v631[0] = 0;
                                                                                                                                      if (v53 >= v34 || (v450 = *v53, (v450 & 0x80000000) != 0))
                                                                                                                                      {
                                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                        if (!result)
                                                                                                                                        {
                                                                                                                                          return result;
                                                                                                                                        }

                                                                                                                                        v450 = v631[0];
                                                                                                                                        v451 = *(a2 + 1);
                                                                                                                                        v34 = *(a2 + 2);
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v451 = (v53 + 1);
                                                                                                                                        *(a2 + 1) = v451;
                                                                                                                                      }

                                                                                                                                      *(this + 141) = v450;
                                                                                                                                      *(this + 220) |= 2u;
                                                                                                                                      if (v34 - v451 >= 2 && *v451 == 152 && v451[1] == 6)
                                                                                                                                      {
                                                                                                                                        v35 = (v451 + 2);
                                                                                                                                        *(a2 + 1) = v35;
LABEL_1442:
                                                                                                                                        v631[0] = 0;
                                                                                                                                        if (v35 >= v34 || (v452 = *v35, (v452 & 0x80000000) != 0))
                                                                                                                                        {
                                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                          if (!result)
                                                                                                                                          {
                                                                                                                                            return result;
                                                                                                                                          }

                                                                                                                                          v452 = v631[0];
                                                                                                                                          v453 = *(a2 + 1);
                                                                                                                                          v34 = *(a2 + 2);
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v453 = (v35 + 1);
                                                                                                                                          *(a2 + 1) = v453;
                                                                                                                                        }

                                                                                                                                        *(this + 142) = v452;
                                                                                                                                        *(this + 220) |= 4u;
                                                                                                                                        if (v34 - v453 >= 2 && *v453 == 160 && v453[1] == 6)
                                                                                                                                        {
                                                                                                                                          v96 = (v453 + 2);
                                                                                                                                          *(a2 + 1) = v96;
LABEL_1451:
                                                                                                                                          v631[0] = 0;
                                                                                                                                          if (v96 >= v34 || (v454 = *v96, (v454 & 0x80000000) != 0))
                                                                                                                                          {
                                                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                            if (!result)
                                                                                                                                            {
                                                                                                                                              return result;
                                                                                                                                            }

                                                                                                                                            v454 = v631[0];
                                                                                                                                            v455 = *(a2 + 1);
                                                                                                                                            v34 = *(a2 + 2);
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v455 = (v96 + 1);
                                                                                                                                            *(a2 + 1) = v455;
                                                                                                                                          }

                                                                                                                                          *(this + 143) = v454;
                                                                                                                                          *(this + 220) |= 8u;
                                                                                                                                          if (v34 - v455 >= 2 && *v455 == 168 && v455[1] == 6)
                                                                                                                                          {
                                                                                                                                            v75 = (v455 + 2);
                                                                                                                                            *(a2 + 1) = v75;
LABEL_1460:
                                                                                                                                            v631[0] = 0;
                                                                                                                                            if (v75 >= v34 || (v456 = *v75, (v456 & 0x80000000) != 0))
                                                                                                                                            {
                                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                              if (!result)
                                                                                                                                              {
                                                                                                                                                return result;
                                                                                                                                              }

                                                                                                                                              v456 = v631[0];
                                                                                                                                              v457 = *(a2 + 1);
                                                                                                                                              v34 = *(a2 + 2);
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v457 = (v75 + 1);
                                                                                                                                              *(a2 + 1) = v457;
                                                                                                                                            }

                                                                                                                                            *(this + 144) = v456;
                                                                                                                                            *(this + 220) |= 0x10u;
                                                                                                                                            if (v34 - v457 >= 2 && *v457 == 176 && v457[1] == 6)
                                                                                                                                            {
                                                                                                                                              v63 = (v457 + 2);
                                                                                                                                              *(a2 + 1) = v63;
LABEL_1469:
                                                                                                                                              v631[0] = 0;
                                                                                                                                              if (v63 >= v34 || (v458 = *v63, (v458 & 0x80000000) != 0))
                                                                                                                                              {
                                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                if (!result)
                                                                                                                                                {
                                                                                                                                                  return result;
                                                                                                                                                }

                                                                                                                                                v458 = v631[0];
                                                                                                                                                v459 = *(a2 + 1);
                                                                                                                                                v34 = *(a2 + 2);
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v459 = (v63 + 1);
                                                                                                                                                *(a2 + 1) = v459;
                                                                                                                                              }

                                                                                                                                              *(this + 145) = v458;
                                                                                                                                              *(this + 220) |= 0x20u;
                                                                                                                                              if (v34 - v459 >= 2 && *v459 == 184 && v459[1] == 6)
                                                                                                                                              {
                                                                                                                                                v44 = (v459 + 2);
                                                                                                                                                *(a2 + 1) = v44;
LABEL_1478:
                                                                                                                                                v631[0] = 0;
                                                                                                                                                if (v44 >= v34 || (v460 = *v44, (v460 & 0x80000000) != 0))
                                                                                                                                                {
                                                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                  if (!result)
                                                                                                                                                  {
                                                                                                                                                    return result;
                                                                                                                                                  }

                                                                                                                                                  v460 = v631[0];
                                                                                                                                                  v461 = *(a2 + 1);
                                                                                                                                                  v34 = *(a2 + 2);
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v461 = (v44 + 1);
                                                                                                                                                  *(a2 + 1) = v461;
                                                                                                                                                }

                                                                                                                                                *(this + 146) = v460;
                                                                                                                                                *(this + 220) |= 0x40u;
                                                                                                                                                if (v34 - v461 >= 2 && *v461 == 192 && v461[1] == 6)
                                                                                                                                                {
                                                                                                                                                  v48 = (v461 + 2);
                                                                                                                                                  *(a2 + 1) = v48;
LABEL_1487:
                                                                                                                                                  v631[0] = 0;
                                                                                                                                                  if (v48 >= v34 || (v462 = *v48, (v462 & 0x80000000) != 0))
                                                                                                                                                  {
                                                                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                    if (!result)
                                                                                                                                                    {
                                                                                                                                                      return result;
                                                                                                                                                    }

                                                                                                                                                    v462 = v631[0];
                                                                                                                                                    v463 = *(a2 + 1);
                                                                                                                                                    v34 = *(a2 + 2);
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v463 = (v48 + 1);
                                                                                                                                                    *(a2 + 1) = v463;
                                                                                                                                                  }

                                                                                                                                                  *(this + 147) = v462;
                                                                                                                                                  *(this + 220) |= 0x80u;
                                                                                                                                                  if (v34 - v463 >= 2 && *v463 == 200 && v463[1] == 6)
                                                                                                                                                  {
                                                                                                                                                    v87 = (v463 + 2);
                                                                                                                                                    *(a2 + 1) = v87;
LABEL_1496:
                                                                                                                                                    v631[0] = 0;
                                                                                                                                                    if (v87 >= v34 || (v464 = *v87, (v464 & 0x80000000) != 0))
                                                                                                                                                    {
                                                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                      if (!result)
                                                                                                                                                      {
                                                                                                                                                        return result;
                                                                                                                                                      }

                                                                                                                                                      v464 = v631[0];
                                                                                                                                                      v465 = *(a2 + 1);
                                                                                                                                                      v34 = *(a2 + 2);
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v465 = (v87 + 1);
                                                                                                                                                      *(a2 + 1) = v465;
                                                                                                                                                    }

                                                                                                                                                    *(this + 148) = v464;
                                                                                                                                                    *(this + 220) |= 0x100u;
                                                                                                                                                    if (v34 - v465 >= 2 && *v465 == 208 && v465[1] == 6)
                                                                                                                                                    {
                                                                                                                                                      v49 = (v465 + 2);
                                                                                                                                                      *(a2 + 1) = v49;
LABEL_1505:
                                                                                                                                                      v631[0] = 0;
                                                                                                                                                      if (v49 >= v34 || (v466 = *v49, (v466 & 0x80000000) != 0))
                                                                                                                                                      {
                                                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                        if (!result)
                                                                                                                                                        {
                                                                                                                                                          return result;
                                                                                                                                                        }

                                                                                                                                                        v466 = v631[0];
                                                                                                                                                        v467 = *(a2 + 1);
                                                                                                                                                        v34 = *(a2 + 2);
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v467 = (v49 + 1);
                                                                                                                                                        *(a2 + 1) = v467;
                                                                                                                                                      }

                                                                                                                                                      *(this + 149) = v466;
                                                                                                                                                      *(this + 220) |= 0x200u;
                                                                                                                                                      if (v34 - v467 >= 2 && *v467 == 216 && v467[1] == 6)
                                                                                                                                                      {
                                                                                                                                                        v108 = (v467 + 2);
                                                                                                                                                        *(a2 + 1) = v108;
LABEL_1514:
                                                                                                                                                        v631[0] = 0;
                                                                                                                                                        if (v108 >= v34 || (v468 = *v108, (v468 & 0x80000000) != 0))
                                                                                                                                                        {
                                                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                          if (!result)
                                                                                                                                                          {
                                                                                                                                                            return result;
                                                                                                                                                          }

                                                                                                                                                          v468 = v631[0];
                                                                                                                                                          v469 = *(a2 + 1);
                                                                                                                                                          v34 = *(a2 + 2);
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v469 = (v108 + 1);
                                                                                                                                                          *(a2 + 1) = v469;
                                                                                                                                                        }

                                                                                                                                                        *(this + 150) = v468;
                                                                                                                                                        *(this + 220) |= 0x400u;
                                                                                                                                                        if (v34 - v469 >= 2 && *v469 == 224 && v469[1] == 6)
                                                                                                                                                        {
                                                                                                                                                          v94 = (v469 + 2);
                                                                                                                                                          *(a2 + 1) = v94;
LABEL_1523:
                                                                                                                                                          v631[0] = 0;
                                                                                                                                                          if (v94 >= v34 || (v470 = *v94, (v470 & 0x80000000) != 0))
                                                                                                                                                          {
                                                                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                            if (!result)
                                                                                                                                                            {
                                                                                                                                                              return result;
                                                                                                                                                            }

                                                                                                                                                            v470 = v631[0];
                                                                                                                                                            v471 = *(a2 + 1);
                                                                                                                                                            v34 = *(a2 + 2);
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v471 = (v94 + 1);
                                                                                                                                                            *(a2 + 1) = v471;
                                                                                                                                                          }

                                                                                                                                                          *(this + 151) = v470;
                                                                                                                                                          *(this + 220) |= 0x800u;
                                                                                                                                                          if (v34 - v471 >= 2 && *v471 == 232 && v471[1] == 6)
                                                                                                                                                          {
                                                                                                                                                            v59 = (v471 + 2);
                                                                                                                                                            *(a2 + 1) = v59;
LABEL_1532:
                                                                                                                                                            v631[0] = 0;
                                                                                                                                                            if (v59 >= v34 || (v472 = *v59, (v472 & 0x80000000) != 0))
                                                                                                                                                            {
                                                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                              if (!result)
                                                                                                                                                              {
                                                                                                                                                                return result;
                                                                                                                                                              }

                                                                                                                                                              v472 = v631[0];
                                                                                                                                                              v473 = *(a2 + 1);
                                                                                                                                                              v34 = *(a2 + 2);
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v473 = (v59 + 1);
                                                                                                                                                              *(a2 + 1) = v473;
                                                                                                                                                            }

                                                                                                                                                            *(this + 152) = v472;
                                                                                                                                                            *(this + 220) |= 0x1000u;
                                                                                                                                                            if (v34 - v473 >= 2 && *v473 == 240 && v473[1] == 6)
                                                                                                                                                            {
                                                                                                                                                              v43 = (v473 + 2);
                                                                                                                                                              *(a2 + 1) = v43;
LABEL_1541:
                                                                                                                                                              v631[0] = 0;
                                                                                                                                                              if (v43 >= v34 || (v474 = *v43, (v474 & 0x80000000) != 0))
                                                                                                                                                              {
                                                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                if (!result)
                                                                                                                                                                {
                                                                                                                                                                  return result;
                                                                                                                                                                }

                                                                                                                                                                v474 = v631[0];
                                                                                                                                                                v475 = *(a2 + 1);
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v475 = (v43 + 1);
                                                                                                                                                                *(a2 + 1) = v475;
                                                                                                                                                              }

                                                                                                                                                              *(this + 153) = v474;
                                                                                                                                                              *(this + 220) |= 0x2000u;
                                                                                                                                                              v46 = *(a2 + 2);
                                                                                                                                                              if (v46 - v475 >= 2 && *v475 == 248 && v475[1] == 6)
                                                                                                                                                              {
                                                                                                                                                                v71 = (v475 + 2);
                                                                                                                                                                *(a2 + 1) = v71;
LABEL_1550:
                                                                                                                                                                v631[0] = 0;
                                                                                                                                                                if (v71 >= v46 || (v476 = *v71, (v476 & 0x80000000) != 0))
                                                                                                                                                                {
                                                                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                  if (!result)
                                                                                                                                                                  {
                                                                                                                                                                    return result;
                                                                                                                                                                  }

                                                                                                                                                                  v476 = v631[0];
                                                                                                                                                                  v477 = *(a2 + 1);
                                                                                                                                                                  v46 = *(a2 + 2);
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v477 = (v71 + 1);
                                                                                                                                                                  *(a2 + 1) = v477;
                                                                                                                                                                }

                                                                                                                                                                *(this + 154) = v476;
                                                                                                                                                                *(this + 220) |= 0x4000u;
                                                                                                                                                                if (v46 - v477 >= 2 && *v477 == 128 && v477[1] == 7)
                                                                                                                                                                {
                                                                                                                                                                  v88 = (v477 + 2);
                                                                                                                                                                  *(a2 + 1) = v88;
LABEL_1559:
                                                                                                                                                                  v631[0] = 0;
                                                                                                                                                                  if (v88 >= v46 || (v478 = *v88, (v478 & 0x80000000) != 0))
                                                                                                                                                                  {
                                                                                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                    if (!result)
                                                                                                                                                                    {
                                                                                                                                                                      return result;
                                                                                                                                                                    }

                                                                                                                                                                    v478 = v631[0];
                                                                                                                                                                    v479 = *(a2 + 1);
                                                                                                                                                                    v46 = *(a2 + 2);
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v479 = (v88 + 1);
                                                                                                                                                                    *(a2 + 1) = v479;
                                                                                                                                                                  }

                                                                                                                                                                  *(this + 155) = v478;
                                                                                                                                                                  *(this + 220) |= 0x8000u;
                                                                                                                                                                  if (v46 - v479 >= 2 && *v479 == 136 && v479[1] == 7)
                                                                                                                                                                  {
                                                                                                                                                                    v70 = (v479 + 2);
                                                                                                                                                                    *(a2 + 1) = v70;
LABEL_1568:
                                                                                                                                                                    v631[0] = 0;
                                                                                                                                                                    if (v70 >= v46 || (v480 = *v70, (v480 & 0x80000000) != 0))
                                                                                                                                                                    {
                                                                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                      if (!result)
                                                                                                                                                                      {
                                                                                                                                                                        return result;
                                                                                                                                                                      }

                                                                                                                                                                      v480 = v631[0];
                                                                                                                                                                      v481 = *(a2 + 1);
                                                                                                                                                                      v46 = *(a2 + 2);
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v481 = (v70 + 1);
                                                                                                                                                                      *(a2 + 1) = v481;
                                                                                                                                                                    }

                                                                                                                                                                    *(this + 156) = v480;
                                                                                                                                                                    *(this + 220) |= 0x10000u;
                                                                                                                                                                    if (v46 - v481 >= 2 && *v481 == 144 && v481[1] == 7)
                                                                                                                                                                    {
                                                                                                                                                                      v64 = (v481 + 2);
                                                                                                                                                                      *(a2 + 1) = v64;
LABEL_1577:
                                                                                                                                                                      v631[0] = 0;
                                                                                                                                                                      if (v64 >= v46 || (v482 = *v64, (v482 & 0x80000000) != 0))
                                                                                                                                                                      {
                                                                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                        if (!result)
                                                                                                                                                                        {
                                                                                                                                                                          return result;
                                                                                                                                                                        }

                                                                                                                                                                        v482 = v631[0];
                                                                                                                                                                        v483 = *(a2 + 1);
                                                                                                                                                                        v46 = *(a2 + 2);
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v483 = (v64 + 1);
                                                                                                                                                                        *(a2 + 1) = v483;
                                                                                                                                                                      }

                                                                                                                                                                      *(this + 157) = v482;
                                                                                                                                                                      *(this + 220) |= 0x20000u;
                                                                                                                                                                      if (v46 - v483 >= 2 && *v483 == 152 && v483[1] == 7)
                                                                                                                                                                      {
                                                                                                                                                                        v47 = (v483 + 2);
                                                                                                                                                                        *(a2 + 1) = v47;
LABEL_1586:
                                                                                                                                                                        v631[0] = 0;
                                                                                                                                                                        if (v47 >= v46 || (v484 = *v47, (v484 & 0x80000000) != 0))
                                                                                                                                                                        {
                                                                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                          if (!result)
                                                                                                                                                                          {
                                                                                                                                                                            return result;
                                                                                                                                                                          }

                                                                                                                                                                          v484 = v631[0];
                                                                                                                                                                          v485 = *(a2 + 1);
                                                                                                                                                                          v46 = *(a2 + 2);
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v485 = (v47 + 1);
                                                                                                                                                                          *(a2 + 1) = v485;
                                                                                                                                                                        }

                                                                                                                                                                        *(this + 158) = v484;
                                                                                                                                                                        *(this + 220) |= 0x40000u;
                                                                                                                                                                        if (v46 - v485 >= 2 && *v485 == 160 && v485[1] == 7)
                                                                                                                                                                        {
                                                                                                                                                                          v50 = (v485 + 2);
                                                                                                                                                                          *(a2 + 1) = v50;
LABEL_1595:
                                                                                                                                                                          v631[0] = 0;
                                                                                                                                                                          if (v50 >= v46 || (v486 = *v50, (v486 & 0x80000000) != 0))
                                                                                                                                                                          {
                                                                                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                            if (!result)
                                                                                                                                                                            {
                                                                                                                                                                              return result;
                                                                                                                                                                            }

                                                                                                                                                                            v486 = v631[0];
                                                                                                                                                                            v487 = *(a2 + 1);
                                                                                                                                                                            v46 = *(a2 + 2);
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v487 = (v50 + 1);
                                                                                                                                                                            *(a2 + 1) = v487;
                                                                                                                                                                          }

                                                                                                                                                                          *(this + 159) = v486;
                                                                                                                                                                          *(this + 220) |= 0x80000u;
                                                                                                                                                                          if (v46 - v487 >= 2 && *v487 == 168 && v487[1] == 7)
                                                                                                                                                                          {
                                                                                                                                                                            while (1)
                                                                                                                                                                            {
                                                                                                                                                                              v132 = (v487 + 2);
                                                                                                                                                                              *(a2 + 1) = v132;
LABEL_1604:
                                                                                                                                                                              LODWORD(v630) = 0;
                                                                                                                                                                              if (v132 >= v46 || *v132 < 0)
                                                                                                                                                                              {
                                                                                                                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v630))
                                                                                                                                                                                {
                                                                                                                                                                                  return 0;
                                                                                                                                                                                }
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                LODWORD(v630) = *v132;
                                                                                                                                                                                *(a2 + 1) = v132 + 1;
                                                                                                                                                                              }

                                                                                                                                                                              v488 = *(this + 162);
                                                                                                                                                                              if (v488 == *(this + 163))
                                                                                                                                                                              {
                                                                                                                                                                                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 80, v488 + 1);
                                                                                                                                                                                v488 = *(this + 162);
                                                                                                                                                                              }

                                                                                                                                                                              v489 = v630;
                                                                                                                                                                              v490 = *(this + 80);
                                                                                                                                                                              *(this + 162) = v488 + 1;
                                                                                                                                                                              *(v490 + 4 * v488) = v489;
                                                                                                                                                                              v491 = *(this + 163) - *(this + 162);
                                                                                                                                                                              if (v491 >= 1)
                                                                                                                                                                              {
                                                                                                                                                                                v492 = v491 + 1;
                                                                                                                                                                                do
                                                                                                                                                                                {
                                                                                                                                                                                  v493 = *(a2 + 1);
                                                                                                                                                                                  v494 = *(a2 + 2);
                                                                                                                                                                                  if (v494 - v493 < 2 || *v493 != 168 || v493[1] != 7)
                                                                                                                                                                                  {
                                                                                                                                                                                    break;
                                                                                                                                                                                  }

                                                                                                                                                                                  *(a2 + 1) = v493 + 2;
                                                                                                                                                                                  if ((v493 + 2) >= v494 || v493[2] < 0)
                                                                                                                                                                                  {
                                                                                                                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v630))
                                                                                                                                                                                    {
                                                                                                                                                                                      return 0;
                                                                                                                                                                                    }
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    LODWORD(v630) = v493[2];
                                                                                                                                                                                    *(a2 + 1) = v493 + 3;
                                                                                                                                                                                  }

                                                                                                                                                                                  v495 = *(this + 162);
                                                                                                                                                                                  if (v495 >= *(this + 163))
                                                                                                                                                                                  {
                                                                                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                                                                                                                                                                                    v495 = *(this + 162);
                                                                                                                                                                                  }

                                                                                                                                                                                  v496 = v630;
                                                                                                                                                                                  v497 = *(this + 80);
                                                                                                                                                                                  *(this + 162) = v495 + 1;
                                                                                                                                                                                  *(v497 + 4 * v495) = v496;
                                                                                                                                                                                  --v492;
                                                                                                                                                                                }

                                                                                                                                                                                while (v492 > 1);
                                                                                                                                                                              }

LABEL_1622:
                                                                                                                                                                              v487 = *(a2 + 1);
                                                                                                                                                                              v46 = *(a2 + 2);
                                                                                                                                                                              if (v46 - v487 < 2)
                                                                                                                                                                              {
                                                                                                                                                                                break;
                                                                                                                                                                              }

                                                                                                                                                                              v498 = *v487;
                                                                                                                                                                              if (v498 == 176)
                                                                                                                                                                              {
                                                                                                                                                                                if (v487[1] == 7)
                                                                                                                                                                                {
                                                                                                                                                                                  while (1)
                                                                                                                                                                                  {
                                                                                                                                                                                    v138 = (v487 + 2);
                                                                                                                                                                                    *(a2 + 1) = v138;
LABEL_1629:
                                                                                                                                                                                    LODWORD(v630) = 0;
                                                                                                                                                                                    if (v138 >= v46 || *v138 < 0)
                                                                                                                                                                                    {
                                                                                                                                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v630))
                                                                                                                                                                                      {
                                                                                                                                                                                        return 0;
                                                                                                                                                                                      }
                                                                                                                                                                                    }

                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                      LODWORD(v630) = *v138;
                                                                                                                                                                                      *(a2 + 1) = v138 + 1;
                                                                                                                                                                                    }

                                                                                                                                                                                    v499 = *(this + 166);
                                                                                                                                                                                    if (v499 == *(this + 167))
                                                                                                                                                                                    {
                                                                                                                                                                                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 82, v499 + 1);
                                                                                                                                                                                      v499 = *(this + 166);
                                                                                                                                                                                    }

                                                                                                                                                                                    v500 = v630;
                                                                                                                                                                                    v501 = *(this + 82);
                                                                                                                                                                                    *(this + 166) = v499 + 1;
                                                                                                                                                                                    *(v501 + 4 * v499) = v500;
                                                                                                                                                                                    v502 = *(this + 167) - *(this + 166);
                                                                                                                                                                                    if (v502 >= 1)
                                                                                                                                                                                    {
                                                                                                                                                                                      v503 = v502 + 1;
                                                                                                                                                                                      do
                                                                                                                                                                                      {
                                                                                                                                                                                        v504 = *(a2 + 1);
                                                                                                                                                                                        v505 = *(a2 + 2);
                                                                                                                                                                                        if (v505 - v504 < 2 || *v504 != 176 || v504[1] != 7)
                                                                                                                                                                                        {
                                                                                                                                                                                          break;
                                                                                                                                                                                        }

                                                                                                                                                                                        *(a2 + 1) = v504 + 2;
                                                                                                                                                                                        if ((v504 + 2) >= v505 || v504[2] < 0)
                                                                                                                                                                                        {
                                                                                                                                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v630))
                                                                                                                                                                                          {
                                                                                                                                                                                            return 0;
                                                                                                                                                                                          }
                                                                                                                                                                                        }

                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                          LODWORD(v630) = v504[2];
                                                                                                                                                                                          *(a2 + 1) = v504 + 3;
                                                                                                                                                                                        }

                                                                                                                                                                                        v506 = *(this + 166);
                                                                                                                                                                                        if (v506 >= *(this + 167))
                                                                                                                                                                                        {
                                                                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                                                                                                                                                                                          v506 = *(this + 166);
                                                                                                                                                                                        }

                                                                                                                                                                                        v507 = v630;
                                                                                                                                                                                        v508 = *(this + 82);
                                                                                                                                                                                        *(this + 166) = v506 + 1;
                                                                                                                                                                                        *(v508 + 4 * v506) = v507;
                                                                                                                                                                                        --v503;
                                                                                                                                                                                      }

                                                                                                                                                                                      while (v503 > 1);
                                                                                                                                                                                    }

LABEL_1647:
                                                                                                                                                                                    v487 = *(a2 + 1);
                                                                                                                                                                                    v46 = *(a2 + 2);
                                                                                                                                                                                    if (v46 - v487 < 2)
                                                                                                                                                                                    {
                                                                                                                                                                                      break;
                                                                                                                                                                                    }

                                                                                                                                                                                    v509 = *v487;
                                                                                                                                                                                    if (v509 == 184)
                                                                                                                                                                                    {
                                                                                                                                                                                      if (v487[1] == 7)
                                                                                                                                                                                      {
                                                                                                                                                                                        while (1)
                                                                                                                                                                                        {
                                                                                                                                                                                          v133 = (v487 + 2);
                                                                                                                                                                                          *(a2 + 1) = v133;
LABEL_1654:
                                                                                                                                                                                          LODWORD(v630) = 0;
                                                                                                                                                                                          if (v133 >= v46 || *v133 < 0)
                                                                                                                                                                                          {
                                                                                                                                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v630))
                                                                                                                                                                                            {
                                                                                                                                                                                              return 0;
                                                                                                                                                                                            }
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            LODWORD(v630) = *v133;
                                                                                                                                                                                            *(a2 + 1) = v133 + 1;
                                                                                                                                                                                          }

                                                                                                                                                                                          v510 = *(this + 170);
                                                                                                                                                                                          if (v510 == *(this + 171))
                                                                                                                                                                                          {
                                                                                                                                                                                            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 84, v510 + 1);
                                                                                                                                                                                            v510 = *(this + 170);
                                                                                                                                                                                          }

                                                                                                                                                                                          v511 = v630;
                                                                                                                                                                                          v512 = *(this + 84);
                                                                                                                                                                                          *(this + 170) = v510 + 1;
                                                                                                                                                                                          *(v512 + 4 * v510) = v511;
                                                                                                                                                                                          v513 = *(this + 171) - *(this + 170);
                                                                                                                                                                                          if (v513 >= 1)
                                                                                                                                                                                          {
                                                                                                                                                                                            v514 = v513 + 1;
                                                                                                                                                                                            do
                                                                                                                                                                                            {
                                                                                                                                                                                              v515 = *(a2 + 1);
                                                                                                                                                                                              v516 = *(a2 + 2);
                                                                                                                                                                                              if (v516 - v515 < 2 || *v515 != 184 || v515[1] != 7)
                                                                                                                                                                                              {
                                                                                                                                                                                                break;
                                                                                                                                                                                              }

                                                                                                                                                                                              *(a2 + 1) = v515 + 2;
                                                                                                                                                                                              if ((v515 + 2) >= v516 || v515[2] < 0)
                                                                                                                                                                                              {
                                                                                                                                                                                                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v630))
                                                                                                                                                                                                {
                                                                                                                                                                                                  return 0;
                                                                                                                                                                                                }
                                                                                                                                                                                              }

                                                                                                                                                                                              else
                                                                                                                                                                                              {
                                                                                                                                                                                                LODWORD(v630) = v515[2];
                                                                                                                                                                                                *(a2 + 1) = v515 + 3;
                                                                                                                                                                                              }

                                                                                                                                                                                              v517 = *(this + 170);
                                                                                                                                                                                              if (v517 >= *(this + 171))
                                                                                                                                                                                              {
                                                                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                                                                                                                                                                                                v517 = *(this + 170);
                                                                                                                                                                                              }

                                                                                                                                                                                              v518 = v630;
                                                                                                                                                                                              v519 = *(this + 84);
                                                                                                                                                                                              *(this + 170) = v517 + 1;
                                                                                                                                                                                              *(v519 + 4 * v517) = v518;
                                                                                                                                                                                              --v514;
                                                                                                                                                                                            }

                                                                                                                                                                                            while (v514 > 1);
                                                                                                                                                                                          }

LABEL_1672:
                                                                                                                                                                                          v487 = *(a2 + 1);
                                                                                                                                                                                          v46 = *(a2 + 2);
                                                                                                                                                                                          if (v46 - v487 < 2)
                                                                                                                                                                                          {
                                                                                                                                                                                            break;
                                                                                                                                                                                          }

                                                                                                                                                                                          v520 = *v487;
                                                                                                                                                                                          if (v520 == 192)
                                                                                                                                                                                          {
                                                                                                                                                                                            if (v487[1] == 7)
                                                                                                                                                                                            {
                                                                                                                                                                                              while (1)
                                                                                                                                                                                              {
                                                                                                                                                                                                v135 = (v487 + 2);
                                                                                                                                                                                                *(a2 + 1) = v135;
LABEL_1679:
                                                                                                                                                                                                LODWORD(v630) = 0;
                                                                                                                                                                                                if (v135 >= v46 || *v135 < 0)
                                                                                                                                                                                                {
                                                                                                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v630))
                                                                                                                                                                                                  {
                                                                                                                                                                                                    return 0;
                                                                                                                                                                                                  }
                                                                                                                                                                                                }

                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                  LODWORD(v630) = *v135;
                                                                                                                                                                                                  *(a2 + 1) = v135 + 1;
                                                                                                                                                                                                }

                                                                                                                                                                                                v521 = *(this + 174);
                                                                                                                                                                                                if (v521 == *(this + 175))
                                                                                                                                                                                                {
                                                                                                                                                                                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 86, v521 + 1);
                                                                                                                                                                                                  v521 = *(this + 174);
                                                                                                                                                                                                }

                                                                                                                                                                                                v522 = v630;
                                                                                                                                                                                                v523 = *(this + 86);
                                                                                                                                                                                                *(this + 174) = v521 + 1;
                                                                                                                                                                                                *(v523 + 4 * v521) = v522;
                                                                                                                                                                                                v524 = *(this + 175) - *(this + 174);
                                                                                                                                                                                                if (v524 >= 1)
                                                                                                                                                                                                {
                                                                                                                                                                                                  v525 = v524 + 1;
                                                                                                                                                                                                  do
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v526 = *(a2 + 1);
                                                                                                                                                                                                    v527 = *(a2 + 2);
                                                                                                                                                                                                    if (v527 - v526 < 2 || *v526 != 192 || v526[1] != 7)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    *(a2 + 1) = v526 + 2;
                                                                                                                                                                                                    if ((v526 + 2) >= v527 || v526[2] < 0)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v630))
                                                                                                                                                                                                      {
                                                                                                                                                                                                        return 0;
                                                                                                                                                                                                      }
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                      LODWORD(v630) = v526[2];
                                                                                                                                                                                                      *(a2 + 1) = v526 + 3;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    v528 = *(this + 174);
                                                                                                                                                                                                    if (v528 >= *(this + 175))
                                                                                                                                                                                                    {
                                                                                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                                                                                                                                                                                                      v528 = *(this + 174);
                                                                                                                                                                                                    }

                                                                                                                                                                                                    v529 = v630;
                                                                                                                                                                                                    v530 = *(this + 86);
                                                                                                                                                                                                    *(this + 174) = v528 + 1;
                                                                                                                                                                                                    *(v530 + 4 * v528) = v529;
                                                                                                                                                                                                    --v525;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  while (v525 > 1);
                                                                                                                                                                                                }

LABEL_1697:
                                                                                                                                                                                                v487 = *(a2 + 1);
                                                                                                                                                                                                v46 = *(a2 + 2);
                                                                                                                                                                                                if (v46 - v487 < 2)
                                                                                                                                                                                                {
                                                                                                                                                                                                  break;
                                                                                                                                                                                                }

                                                                                                                                                                                                v531 = *v487;
                                                                                                                                                                                                if (v531 == 200)
                                                                                                                                                                                                {
                                                                                                                                                                                                  if (v487[1] == 7)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    while (1)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v131 = (v487 + 2);
                                                                                                                                                                                                      *(a2 + 1) = v131;
LABEL_1704:
                                                                                                                                                                                                      v630 = 0;
                                                                                                                                                                                                      if (v131 >= v46 || (*v131 & 0x8000000000000000) != 0)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v630))
                                                                                                                                                                                                        {
                                                                                                                                                                                                          return 0;
                                                                                                                                                                                                        }
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v630 = *v131;
                                                                                                                                                                                                        *(a2 + 1) = v131 + 1;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      v532 = *(this + 178);
                                                                                                                                                                                                      v533 = *(this + 179);
                                                                                                                                                                                                      if (v532 == v533)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 88, v532 + 1);
                                                                                                                                                                                                        v532 = *(this + 178);
                                                                                                                                                                                                        v533 = *(this + 179);
                                                                                                                                                                                                      }

                                                                                                                                                                                                      v534 = v630;
                                                                                                                                                                                                      v535 = *(this + 88);
                                                                                                                                                                                                      v536 = v532 + 1;
                                                                                                                                                                                                      *(this + 178) = v532 + 1;
                                                                                                                                                                                                      *(v535 + 8 * v532) = v534;
                                                                                                                                                                                                      if (v533 - (v532 + 1) >= 1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v537 = v533 - v532;
                                                                                                                                                                                                        do
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v538 = *(a2 + 1);
                                                                                                                                                                                                          v539 = *(a2 + 2);
                                                                                                                                                                                                          if (v539 - v538 < 2 || *v538 != 200 || v538[1] != 7)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                          }

                                                                                                                                                                                                          *(a2 + 1) = v538 + 2;
                                                                                                                                                                                                          if ((v538 + 2) >= v539 || (v538[2] & 0x8000000000000000) != 0)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v630))
                                                                                                                                                                                                            {
                                                                                                                                                                                                              return 0;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            v536 = *(this + 178);
                                                                                                                                                                                                          }

                                                                                                                                                                                                          else
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v630 = v538[2];
                                                                                                                                                                                                            *(a2 + 1) = v538 + 3;
                                                                                                                                                                                                          }

                                                                                                                                                                                                          if (v536 >= *(this + 179))
                                                                                                                                                                                                          {
                                                                                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                                                                                                                                                                                                            v536 = *(this + 178);
                                                                                                                                                                                                          }

                                                                                                                                                                                                          v540 = v630;
                                                                                                                                                                                                          v541 = *(this + 88);
                                                                                                                                                                                                          *(this + 178) = v536 + 1;
                                                                                                                                                                                                          *(v541 + 8 * v536) = v540;
                                                                                                                                                                                                          --v537;
                                                                                                                                                                                                          ++v536;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        while (v537 > 1);
                                                                                                                                                                                                      }

LABEL_1723:
                                                                                                                                                                                                      v487 = *(a2 + 1);
                                                                                                                                                                                                      v46 = *(a2 + 2);
                                                                                                                                                                                                      if (v46 - v487 < 2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        break;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      v542 = *v487;
                                                                                                                                                                                                      if (v542 == 208)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        if (v487[1] == 7)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          while (1)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v130 = (v487 + 2);
                                                                                                                                                                                                            *(a2 + 1) = v130;
LABEL_1730:
                                                                                                                                                                                                            v630 = 0;
                                                                                                                                                                                                            if (v130 >= v46 || (*v130 & 0x8000000000000000) != 0)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v630))
                                                                                                                                                                                                              {
                                                                                                                                                                                                                return 0;
                                                                                                                                                                                                              }
                                                                                                                                                                                                            }

                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v630 = *v130;
                                                                                                                                                                                                              *(a2 + 1) = v130 + 1;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            v543 = *(this + 182);
                                                                                                                                                                                                            v544 = *(this + 183);
                                                                                                                                                                                                            if (v543 == v544)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 90, v543 + 1);
                                                                                                                                                                                                              v543 = *(this + 182);
                                                                                                                                                                                                              v544 = *(this + 183);
                                                                                                                                                                                                            }

                                                                                                                                                                                                            v545 = v630;
                                                                                                                                                                                                            v546 = *(this + 90);
                                                                                                                                                                                                            v547 = v543 + 1;
                                                                                                                                                                                                            *(this + 182) = v543 + 1;
                                                                                                                                                                                                            *(v546 + 8 * v543) = v545;
                                                                                                                                                                                                            if (v544 - (v543 + 1) >= 1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v548 = v544 - v543;
                                                                                                                                                                                                              do
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v549 = *(a2 + 1);
                                                                                                                                                                                                                v550 = *(a2 + 2);
                                                                                                                                                                                                                if (v550 - v549 < 2 || *v549 != 208 || v549[1] != 7)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                }

                                                                                                                                                                                                                *(a2 + 1) = v549 + 2;
                                                                                                                                                                                                                if ((v549 + 2) >= v550 || (v549[2] & 0x8000000000000000) != 0)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v630))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    return 0;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  v547 = *(this + 182);
                                                                                                                                                                                                                }

                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v630 = v549[2];
                                                                                                                                                                                                                  *(a2 + 1) = v549 + 3;
                                                                                                                                                                                                                }

                                                                                                                                                                                                                if (v547 >= *(this + 183))
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                                                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                                                                                                                                                                                                                  v547 = *(this + 182);
                                                                                                                                                                                                                }

                                                                                                                                                                                                                v551 = v630;
                                                                                                                                                                                                                v552 = *(this + 90);
                                                                                                                                                                                                                *(this + 182) = v547 + 1;
                                                                                                                                                                                                                *(v552 + 8 * v547) = v551;
                                                                                                                                                                                                                --v548;
                                                                                                                                                                                                                ++v547;
                                                                                                                                                                                                              }

                                                                                                                                                                                                              while (v548 > 1);
                                                                                                                                                                                                            }

LABEL_1749:
                                                                                                                                                                                                            v487 = *(a2 + 1);
                                                                                                                                                                                                            v46 = *(a2 + 2);
                                                                                                                                                                                                            if (v46 - v487 < 2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              break;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            v553 = *v487;
                                                                                                                                                                                                            if (v553 == 216)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              if (v487[1] == 7)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                while (1)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v137 = (v487 + 2);
                                                                                                                                                                                                                  *(a2 + 1) = v137;
LABEL_1756:
                                                                                                                                                                                                                  v630 = 0;
                                                                                                                                                                                                                  if (v137 >= v46 || (*v137 & 0x8000000000000000) != 0)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v630))
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      return 0;
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v630 = *v137;
                                                                                                                                                                                                                    *(a2 + 1) = v137 + 1;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  v554 = *(this + 186);
                                                                                                                                                                                                                  v555 = *(this + 187);
                                                                                                                                                                                                                  if (v554 == v555)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 92, v554 + 1);
                                                                                                                                                                                                                    v554 = *(this + 186);
                                                                                                                                                                                                                    v555 = *(this + 187);
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  v556 = v630;
                                                                                                                                                                                                                  v557 = *(this + 92);
                                                                                                                                                                                                                  v558 = v554 + 1;
                                                                                                                                                                                                                  *(this + 186) = v554 + 1;
                                                                                                                                                                                                                  *(v557 + 8 * v554) = v556;
                                                                                                                                                                                                                  if (v555 - (v554 + 1) >= 1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v559 = v555 - v554;
                                                                                                                                                                                                                    do
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v560 = *(a2 + 1);
                                                                                                                                                                                                                      v561 = *(a2 + 2);
                                                                                                                                                                                                                      if (v561 - v560 < 2 || *v560 != 216 || v560[1] != 7)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      *(a2 + 1) = v560 + 2;
                                                                                                                                                                                                                      if ((v560 + 2) >= v561 || (v560[2] & 0x8000000000000000) != 0)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v630))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          return 0;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        v558 = *(this + 186);
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      else
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        v630 = v560[2];
                                                                                                                                                                                                                        *(a2 + 1) = v560 + 3;
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      if (v558 >= *(this + 187))
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                                                                                                                                                                                                                        v558 = *(this + 186);
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      v562 = v630;
                                                                                                                                                                                                                      v563 = *(this + 92);
                                                                                                                                                                                                                      *(this + 186) = v558 + 1;
                                                                                                                                                                                                                      *(v563 + 8 * v558) = v562;
                                                                                                                                                                                                                      --v559;
                                                                                                                                                                                                                      ++v558;
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    while (v559 > 1);
                                                                                                                                                                                                                  }

LABEL_1775:
                                                                                                                                                                                                                  v487 = *(a2 + 1);
                                                                                                                                                                                                                  v46 = *(a2 + 2);
                                                                                                                                                                                                                  if (v46 - v487 < 2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  v564 = *v487;
                                                                                                                                                                                                                  if (v564 == 232)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    if (v487[1] == 7)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      while (1)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        v139 = (v487 + 2);
                                                                                                                                                                                                                        *(a2 + 1) = v139;
LABEL_1782:
                                                                                                                                                                                                                        v630 = 0;
                                                                                                                                                                                                                        if (v139 >= v46 || (*v139 & 0x8000000000000000) != 0)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v630))
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            return 0;
                                                                                                                                                                                                                          }
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v630 = *v139;
                                                                                                                                                                                                                          *(a2 + 1) = v139 + 1;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        v565 = *(this + 194);
                                                                                                                                                                                                                        v566 = *(this + 195);
                                                                                                                                                                                                                        if (v565 == v566)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 96, v565 + 1);
                                                                                                                                                                                                                          v565 = *(this + 194);
                                                                                                                                                                                                                          v566 = *(this + 195);
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        v567 = v630;
                                                                                                                                                                                                                        v568 = *(this + 96);
                                                                                                                                                                                                                        v569 = v565 + 1;
                                                                                                                                                                                                                        *(this + 194) = v565 + 1;
                                                                                                                                                                                                                        *(v568 + 8 * v565) = v567;
                                                                                                                                                                                                                        if (v566 - (v565 + 1) >= 1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v570 = v566 - v565;
                                                                                                                                                                                                                          do
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v571 = *(a2 + 1);
                                                                                                                                                                                                                            v572 = *(a2 + 2);
                                                                                                                                                                                                                            if (v572 - v571 < 2 || *v571 != 232 || v571[1] != 7)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            *(a2 + 1) = v571 + 2;
                                                                                                                                                                                                                            if ((v571 + 2) >= v572 || (v571[2] & 0x8000000000000000) != 0)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v630))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                return 0;
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              v569 = *(this + 194);
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v630 = v571[2];
                                                                                                                                                                                                                              *(a2 + 1) = v571 + 3;
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            if (v569 >= *(this + 195))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                                                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                                                                                                                                                                                                                              v569 = *(this + 194);
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            v573 = v630;
                                                                                                                                                                                                                            v574 = *(this + 96);
                                                                                                                                                                                                                            *(this + 194) = v569 + 1;
                                                                                                                                                                                                                            *(v574 + 8 * v569) = v573;
                                                                                                                                                                                                                            --v570;
                                                                                                                                                                                                                            ++v569;
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          while (v570 > 1);
                                                                                                                                                                                                                        }

LABEL_1801:
                                                                                                                                                                                                                        v487 = *(a2 + 1);
                                                                                                                                                                                                                        v46 = *(a2 + 2);
                                                                                                                                                                                                                        if (v46 - v487 < 2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        v575 = *v487;
                                                                                                                                                                                                                        if (v575 == 240)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          if (v487[1] == 7)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v86 = (v487 + 2);
                                                                                                                                                                                                                            *(a2 + 1) = v86;
LABEL_1808:
                                                                                                                                                                                                                            v631[0] = 0;
                                                                                                                                                                                                                            if (v86 >= v46 || (v576 = *v86, (v576 & 0x80000000) != 0))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                                                                              if (!result)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                return result;
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              v576 = v631[0];
                                                                                                                                                                                                                              v577 = *(a2 + 1);
                                                                                                                                                                                                                              v46 = *(a2 + 2);
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v577 = (v86 + 1);
                                                                                                                                                                                                                              *(a2 + 1) = v577;
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            *(this + 196) = v576;
                                                                                                                                                                                                                            *(this + 220) |= 0x20000000u;
                                                                                                                                                                                                                            if (v46 - v577 >= 2 && *v577 == 248 && v577[1] == 7)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v54 = (v577 + 2);
                                                                                                                                                                                                                              *(a2 + 1) = v54;
LABEL_1817:
                                                                                                                                                                                                                              v631[0] = 0;
                                                                                                                                                                                                                              if (v54 >= v46 || (v578 = *v54, (v578 & 0x80000000) != 0))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                                                                                if (!result)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  return result;
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                v578 = v631[0];
                                                                                                                                                                                                                                v579 = *(a2 + 1);
                                                                                                                                                                                                                                v46 = *(a2 + 2);
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v579 = (v54 + 1);
                                                                                                                                                                                                                                *(a2 + 1) = v579;
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              *(this + 197) = v578;
                                                                                                                                                                                                                              *(this + 220) |= 0x40000000u;
                                                                                                                                                                                                                              if (v46 - v579 >= 2 && *v579 == 128 && v579[1] == 8)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                while (1)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v136 = (v579 + 2);
                                                                                                                                                                                                                                  *(a2 + 1) = v136;
LABEL_1826:
                                                                                                                                                                                                                                  v630 = 0;
                                                                                                                                                                                                                                  if (v136 >= v46 || (*v136 & 0x8000000000000000) != 0)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v630))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      return 0;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v630 = *v136;
                                                                                                                                                                                                                                    *(a2 + 1) = v136 + 1;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  v580 = *(this + 200);
                                                                                                                                                                                                                                  v581 = *(this + 201);
                                                                                                                                                                                                                                  if (v580 == v581)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 99, v580 + 1);
                                                                                                                                                                                                                                    v580 = *(this + 200);
                                                                                                                                                                                                                                    v581 = *(this + 201);
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  v582 = v630;
                                                                                                                                                                                                                                  v583 = *(this + 99);
                                                                                                                                                                                                                                  v584 = v580 + 1;
                                                                                                                                                                                                                                  *(this + 200) = v580 + 1;
                                                                                                                                                                                                                                  *(v583 + 8 * v580) = v582;
                                                                                                                                                                                                                                  if (v581 - (v580 + 1) >= 1)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v585 = v581 - v580;
                                                                                                                                                                                                                                    do
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      v586 = *(a2 + 1);
                                                                                                                                                                                                                                      v587 = *(a2 + 2);
                                                                                                                                                                                                                                      if (v587 - v586 < 2 || *v586 != 128 || v586[1] != 8)
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      *(a2 + 1) = v586 + 2;
                                                                                                                                                                                                                                      if ((v586 + 2) >= v587 || (v586[2] & 0x8000000000000000) != 0)
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v630))
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          return 0;
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                        v584 = *(this + 200);
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        v630 = v586[2];
                                                                                                                                                                                                                                        *(a2 + 1) = v586 + 3;
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      if (v584 >= *(this + 201))
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                                                                                                                                                                                                                                        v584 = *(this + 200);
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      v588 = v630;
                                                                                                                                                                                                                                      v589 = *(this + 99);
                                                                                                                                                                                                                                      *(this + 200) = v584 + 1;
                                                                                                                                                                                                                                      *(v589 + 8 * v584) = v588;
                                                                                                                                                                                                                                      --v585;
                                                                                                                                                                                                                                      ++v584;
                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                    while (v585 > 1);
                                                                                                                                                                                                                                  }

LABEL_1845:
                                                                                                                                                                                                                                  v579 = *(a2 + 1);
                                                                                                                                                                                                                                  v46 = *(a2 + 2);
                                                                                                                                                                                                                                  if (v46 - v579 < 2)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  v590 = *v579;
                                                                                                                                                                                                                                  if (v590 == 136)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    if (v579[1] == 8)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      v56 = (v579 + 2);
                                                                                                                                                                                                                                      *(a2 + 1) = v56;
LABEL_1852:
                                                                                                                                                                                                                                      v631[0] = 0;
                                                                                                                                                                                                                                      if (v56 >= v46 || (v591 = *v56, (v591 & 0x80000000) != 0))
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                                                                                        if (!result)
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          return result;
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                        v591 = v631[0];
                                                                                                                                                                                                                                        v592 = *(a2 + 1);
                                                                                                                                                                                                                                        v46 = *(a2 + 2);
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        v592 = (v56 + 1);
                                                                                                                                                                                                                                        *(a2 + 1) = v592;
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      *(this + 202) = v591;
                                                                                                                                                                                                                                      *(this + 221) |= 1u;
                                                                                                                                                                                                                                      if (v46 - v592 >= 2 && *v592 == 144 && v592[1] == 8)
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        v90 = (v592 + 2);
                                                                                                                                                                                                                                        *(a2 + 1) = v90;
LABEL_1861:
                                                                                                                                                                                                                                        v631[0] = 0;
                                                                                                                                                                                                                                        if (v90 >= v46 || (v593 = *v90, (v593 & 0x80000000) != 0))
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                                                                                          if (!result)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            return result;
                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                          v593 = v631[0];
                                                                                                                                                                                                                                          v594 = *(a2 + 1);
                                                                                                                                                                                                                                          v46 = *(a2 + 2);
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          v594 = (v90 + 1);
                                                                                                                                                                                                                                          *(a2 + 1) = v594;
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                        *(this + 203) = v593;
                                                                                                                                                                                                                                        *(this + 221) |= 2u;
                                                                                                                                                                                                                                        if (v46 - v594 >= 2 && *v594 == 152 && v594[1] == 8)
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          v72 = (v594 + 2);
                                                                                                                                                                                                                                          *(a2 + 1) = v72;
LABEL_1870:
                                                                                                                                                                                                                                          v631[0] = 0;
                                                                                                                                                                                                                                          if (v72 >= v46 || (v595 = *v72, (v595 & 0x80000000) != 0))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                                                                                            if (!result)
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              return result;
                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                            v595 = v631[0];
                                                                                                                                                                                                                                            v596 = *(a2 + 1);
                                                                                                                                                                                                                                            v46 = *(a2 + 2);
                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            v596 = (v72 + 1);
                                                                                                                                                                                                                                            *(a2 + 1) = v596;
                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                          *(this + 204) = v595;
                                                                                                                                                                                                                                          *(this + 221) |= 4u;
                                                                                                                                                                                                                                          if (v46 - v596 >= 2 && *v596 == 160 && v596[1] == 8)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            v65 = (v596 + 2);
                                                                                                                                                                                                                                            *(a2 + 1) = v65;
LABEL_1879:
                                                                                                                                                                                                                                            v631[0] = 0;
                                                                                                                                                                                                                                            if (v65 >= v46 || (v597 = *v65, (v597 & 0x80000000) != 0))
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                                                                                              if (!result)
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                return result;
                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                              v597 = v631[0];
                                                                                                                                                                                                                                              v598 = *(a2 + 1);
                                                                                                                                                                                                                                              v46 = *(a2 + 2);
                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              v598 = (v65 + 1);
                                                                                                                                                                                                                                              *(a2 + 1) = v598;
                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                            *(this + 205) = v597;
                                                                                                                                                                                                                                            *(this + 221) |= 8u;
                                                                                                                                                                                                                                            if (v46 - v598 >= 2 && *v598 == 168 && v598[1] == 8)
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              v92 = (v598 + 2);
                                                                                                                                                                                                                                              *(a2 + 1) = v92;
LABEL_1888:
                                                                                                                                                                                                                                              v631[0] = 0;
                                                                                                                                                                                                                                              if (v92 >= v46 || (v599 = *v92, (v599 & 0x80000000) != 0))
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                                                                                                if (!result)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  return result;
                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                v599 = v631[0];
                                                                                                                                                                                                                                                v600 = *(a2 + 1);
                                                                                                                                                                                                                                                v46 = *(a2 + 2);
                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                v600 = (v92 + 1);
                                                                                                                                                                                                                                                *(a2 + 1) = v600;
                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                              *(this + 206) = v599;
                                                                                                                                                                                                                                              *(this + 221) |= 0x10u;
                                                                                                                                                                                                                                              if (v46 - v600 >= 2 && *v600 == 176 && v600[1] == 8)
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                while (1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  v134 = (v600 + 2);
                                                                                                                                                                                                                                                  *(a2 + 1) = v134;
LABEL_1897:
                                                                                                                                                                                                                                                  v630 = 0;
                                                                                                                                                                                                                                                  if (v134 >= v46 || (*v134 & 0x8000000000000000) != 0)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v630))
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      return 0;
                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    v630 = *v134;
                                                                                                                                                                                                                                                    *(a2 + 1) = v134 + 1;
                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                  v601 = *(this + 190);
                                                                                                                                                                                                                                                  v602 = *(this + 191);
                                                                                                                                                                                                                                                  if (v601 == v602)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 94, v601 + 1);
                                                                                                                                                                                                                                                    v601 = *(this + 190);
                                                                                                                                                                                                                                                    v602 = *(this + 191);
                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                  v603 = v630;
                                                                                                                                                                                                                                                  v604 = *(this + 94);
                                                                                                                                                                                                                                                  v605 = v601 + 1;
                                                                                                                                                                                                                                                  *(this + 190) = v601 + 1;
                                                                                                                                                                                                                                                  *(v604 + 8 * v601) = v603;
                                                                                                                                                                                                                                                  if (v602 - (v601 + 1) >= 1)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    v606 = v602 - v601;
                                                                                                                                                                                                                                                    do
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      v607 = *(a2 + 1);
                                                                                                                                                                                                                                                      v608 = *(a2 + 2);
                                                                                                                                                                                                                                                      if (v608 - v607 < 2 || *v607 != 176 || v607[1] != 8)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      *(a2 + 1) = v607 + 2;
                                                                                                                                                                                                                                                      if ((v607 + 2) >= v608 || (v607[2] & 0x8000000000000000) != 0)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v630))
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          return 0;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        v605 = *(this + 190);
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        v630 = v607[2];
                                                                                                                                                                                                                                                        *(a2 + 1) = v607 + 3;
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      if (v605 >= *(this + 191))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                                                                                                                                                                                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v631);
                                                                                                                                                                                                                                                        v605 = *(this + 190);
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      v609 = v630;
                                                                                                                                                                                                                                                      v610 = *(this + 94);
                                                                                                                                                                                                                                                      *(this + 190) = v605 + 1;
                                                                                                                                                                                                                                                      *(v610 + 8 * v605) = v609;
                                                                                                                                                                                                                                                      --v606;
                                                                                                                                                                                                                                                      ++v605;
                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                    while (v606 > 1);
                                                                                                                                                                                                                                                  }

LABEL_1916:
                                                                                                                                                                                                                                                  v600 = *(a2 + 1);
                                                                                                                                                                                                                                                  v46 = *(a2 + 2);
                                                                                                                                                                                                                                                  if (v46 - v600 < 2)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                  v611 = *v600;
                                                                                                                                                                                                                                                  if (v611 == 184)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    if (v600[1] == 8)
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      v93 = (v600 + 2);
                                                                                                                                                                                                                                                      *(a2 + 1) = v93;
LABEL_1923:
                                                                                                                                                                                                                                                      v631[0] = 0;
                                                                                                                                                                                                                                                      if (v93 >= v46 || (v612 = *v93, (v612 & 0x80000000) != 0))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                                                                                                        if (!result)
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          return result;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        v612 = v631[0];
                                                                                                                                                                                                                                                        v613 = *(a2 + 1);
                                                                                                                                                                                                                                                        v46 = *(a2 + 2);
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        v613 = (v93 + 1);
                                                                                                                                                                                                                                                        *(a2 + 1) = v613;
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      *(this + 207) = v612;
                                                                                                                                                                                                                                                      *(this + 221) |= 0x20u;
                                                                                                                                                                                                                                                      if (v46 - v613 >= 2 && *v613 == 192 && v613[1] == 8)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        v79 = (v613 + 2);
                                                                                                                                                                                                                                                        *(a2 + 1) = v79;
LABEL_1932:
                                                                                                                                                                                                                                                        v631[0] = 0;
                                                                                                                                                                                                                                                        if (v79 >= v46 || (v614 = *v79, (v614 & 0x80000000) != 0))
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                                                                                                          if (!result)
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            return result;
                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                          v614 = v631[0];
                                                                                                                                                                                                                                                          v615 = *(a2 + 1);
                                                                                                                                                                                                                                                          v46 = *(a2 + 2);
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          v615 = (v79 + 1);
                                                                                                                                                                                                                                                          *(a2 + 1) = v615;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        *(this + 208) = v614;
                                                                                                                                                                                                                                                        *(this + 221) |= 0x40u;
                                                                                                                                                                                                                                                        if (v46 - v615 >= 2 && *v615 == 200 && v615[1] == 8)
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          v91 = (v615 + 2);
                                                                                                                                                                                                                                                          *(a2 + 1) = v91;
LABEL_1941:
                                                                                                                                                                                                                                                          v631[0] = 0;
                                                                                                                                                                                                                                                          if (v91 >= v46 || (v616 = *v91, (v616 & 0x80000000) != 0))
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                                                                                                            if (!result)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              return result;
                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                            v616 = v631[0];
                                                                                                                                                                                                                                                            v617 = *(a2 + 1);
                                                                                                                                                                                                                                                            v46 = *(a2 + 2);
                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            v617 = (v91 + 1);
                                                                                                                                                                                                                                                            *(a2 + 1) = v617;
                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                          *(this + 209) = v616;
                                                                                                                                                                                                                                                          *(this + 221) |= 0x80u;
                                                                                                                                                                                                                                                          if (v46 - v617 >= 2 && *v617 == 208 && v617[1] == 8)
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            v89 = (v617 + 2);
                                                                                                                                                                                                                                                            *(a2 + 1) = v89;
LABEL_1950:
                                                                                                                                                                                                                                                            v631[0] = 0;
                                                                                                                                                                                                                                                            if (v89 >= v46 || (v618 = *v89, (v618 & 0x80000000) != 0))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                                                                                                              if (!result)
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                return result;
                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                              v618 = v631[0];
                                                                                                                                                                                                                                                              v619 = *(a2 + 1);
                                                                                                                                                                                                                                                              v46 = *(a2 + 2);
                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              v619 = (v89 + 1);
                                                                                                                                                                                                                                                              *(a2 + 1) = v619;
                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                            *(this + 210) = v618;
                                                                                                                                                                                                                                                            *(this + 221) |= 0x100u;
                                                                                                                                                                                                                                                            if (v46 - v619 >= 2 && *v619 == 216 && v619[1] == 8)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              v69 = (v619 + 2);
                                                                                                                                                                                                                                                              *(a2 + 1) = v69;
LABEL_1959:
                                                                                                                                                                                                                                                              v631[0] = 0;
                                                                                                                                                                                                                                                              if (v69 >= v46 || (v620 = *v69, (v620 & 0x80000000) != 0))
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                                                                                                                if (!result)
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  return result;
                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                v620 = v631[0];
                                                                                                                                                                                                                                                                v621 = *(a2 + 1);
                                                                                                                                                                                                                                                                v46 = *(a2 + 2);
                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                v621 = (v69 + 1);
                                                                                                                                                                                                                                                                *(a2 + 1) = v621;
                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                              *(this + 211) = v620;
                                                                                                                                                                                                                                                              *(this + 221) |= 0x200u;
                                                                                                                                                                                                                                                              if (v46 - v621 >= 2 && *v621 == 224 && v621[1] == 8)
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                v77 = (v621 + 2);
                                                                                                                                                                                                                                                                *(a2 + 1) = v77;
LABEL_1968:
                                                                                                                                                                                                                                                                v631[0] = 0;
                                                                                                                                                                                                                                                                if (v77 >= v46 || (v622 = *v77, (v622 & 0x80000000) != 0))
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                                                                                                                  if (!result)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    return result;
                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                  v622 = v631[0];
                                                                                                                                                                                                                                                                  v623 = *(a2 + 1);
                                                                                                                                                                                                                                                                  v46 = *(a2 + 2);
                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  v623 = (v77 + 1);
                                                                                                                                                                                                                                                                  *(a2 + 1) = v623;
                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                *(this + 212) = v622;
                                                                                                                                                                                                                                                                *(this + 221) |= 0x400u;
                                                                                                                                                                                                                                                                if (v46 - v623 >= 2 && *v623 == 232 && v623[1] == 8)
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  v74 = (v623 + 2);
                                                                                                                                                                                                                                                                  *(a2 + 1) = v74;
LABEL_1977:
                                                                                                                                                                                                                                                                  v631[0] = 0;
                                                                                                                                                                                                                                                                  if (v74 >= v46 || (v624 = *v74, (v624 & 0x80000000) != 0))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                                                                                                                    if (!result)
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      return result;
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    v624 = v631[0];
                                                                                                                                                                                                                                                                    v625 = *(a2 + 1);
                                                                                                                                                                                                                                                                    v46 = *(a2 + 2);
                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    v625 = (v74 + 1);
                                                                                                                                                                                                                                                                    *(a2 + 1) = v625;
                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                  *(this + 213) = v624;
                                                                                                                                                                                                                                                                  *(this + 221) |= 0x800u;
                                                                                                                                                                                                                                                                  if (v46 - v625 >= 2 && *v625 == 240 && v625[1] == 8)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    v80 = (v625 + 2);
                                                                                                                                                                                                                                                                    *(a2 + 1) = v80;
LABEL_1986:
                                                                                                                                                                                                                                                                    v631[0] = 0;
                                                                                                                                                                                                                                                                    if (v80 >= v46 || (v626 = *v80, (v626 & 0x80000000) != 0))
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                                                                                                                      if (!result)
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        return result;
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      v626 = v631[0];
                                                                                                                                                                                                                                                                      v627 = *(a2 + 1);
                                                                                                                                                                                                                                                                      v46 = *(a2 + 2);
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      v627 = (v80 + 1);
                                                                                                                                                                                                                                                                      *(a2 + 1) = v627;
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    *(this + 214) = v626;
                                                                                                                                                                                                                                                                    *(this + 221) |= 0x1000u;
                                                                                                                                                                                                                                                                    if (v46 - v627 >= 2 && *v627 == 248 && v627[1] == 8)
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      v81 = (v627 + 2);
                                                                                                                                                                                                                                                                      *(a2 + 1) = v81;
LABEL_1995:
                                                                                                                                                                                                                                                                      v631[0] = 0;
                                                                                                                                                                                                                                                                      if (v81 >= v46 || (v628 = *v81, (v628 & 0x80000000) != 0))
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v631);
                                                                                                                                                                                                                                                                        if (!result)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                          return result;
                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                        v628 = v631[0];
                                                                                                                                                                                                                                                                        v629 = *(a2 + 1);
                                                                                                                                                                                                                                                                        v46 = *(a2 + 2);
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        v629 = v81 + 1;
                                                                                                                                                                                                                                                                        *(a2 + 1) = v629;
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      *(this + 215) = v628;
                                                                                                                                                                                                                                                                      *(this + 221) |= 0x2000u;
                                                                                                                                                                                                                                                                      if (v629 == v46 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

                                                                                                                                                                                                                                                    goto LABEL_1;
                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                  if (v611 != 176 || v600[1] != 8)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    goto LABEL_1;
                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                    goto LABEL_1;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  if (v590 != 128 || v579[1] != 8)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    goto LABEL_1;
                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          goto LABEL_1;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        if (v575 != 232 || v487[1] != 7)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          goto LABEL_1;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                      }
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    goto LABEL_1;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  if (v564 != 216 || v487[1] != 7)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    goto LABEL_1;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                }
                                                                                                                                                                                                              }

                                                                                                                                                                                                              goto LABEL_1;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            if (v553 != 208 || v487[1] != 7)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              goto LABEL_1;
                                                                                                                                                                                                            }
                                                                                                                                                                                                          }
                                                                                                                                                                                                        }

                                                                                                                                                                                                        goto LABEL_1;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      if (v542 != 200 || v487[1] != 7)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        goto LABEL_1;
                                                                                                                                                                                                      }
                                                                                                                                                                                                    }
                                                                                                                                                                                                  }

                                                                                                                                                                                                  goto LABEL_1;
                                                                                                                                                                                                }

                                                                                                                                                                                                if (v531 != 192 || v487[1] != 7)
                                                                                                                                                                                                {
                                                                                                                                                                                                  goto LABEL_1;
                                                                                                                                                                                                }
                                                                                                                                                                                              }
                                                                                                                                                                                            }

                                                                                                                                                                                            goto LABEL_1;
                                                                                                                                                                                          }

                                                                                                                                                                                          if (v520 != 184 || v487[1] != 7)
                                                                                                                                                                                          {
                                                                                                                                                                                            goto LABEL_1;
                                                                                                                                                                                          }
                                                                                                                                                                                        }
                                                                                                                                                                                      }

                                                                                                                                                                                      goto LABEL_1;
                                                                                                                                                                                    }

                                                                                                                                                                                    if (v509 != 176 || v487[1] != 7)
                                                                                                                                                                                    {
                                                                                                                                                                                      goto LABEL_1;
                                                                                                                                                                                    }
                                                                                                                                                                                  }
                                                                                                                                                                                }

                                                                                                                                                                                goto LABEL_1;
                                                                                                                                                                              }

                                                                                                                                                                              if (v498 != 168 || v487[1] != 7)
                                                                                                                                                                              {
                                                                                                                                                                                goto LABEL_1;
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

                                                                                                                  goto LABEL_1;
                                                                                                                }

                                                                                                                if (v431 != 197 || v409[1] != 5)
                                                                                                                {
                                                                                                                  goto LABEL_1;
                                                                                                                }
                                                                                                              }
                                                                                                            }

                                                                                                            goto LABEL_1;
                                                                                                          }

                                                                                                          if (v420 != 184 || v409[1] != 5)
                                                                                                          {
                                                                                                            goto LABEL_1;
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

                                      goto LABEL_1;
                                    }

                                    if (v345 != 176 || v334[1] != 3)
                                    {
                                      goto LABEL_1;
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

                goto LABEL_1;
              }

              if (v326 != 237 || v315[1] != 2)
              {
                goto LABEL_1;
              }
            }
          }

          continue;
        }

        return 0;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v76 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_780;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v107 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_789;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v33 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_798;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v73 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_807;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v95 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_816;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_825;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v117 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_834;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v30 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_843;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v119 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_852;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v60 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_861;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v121 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_870;
      case 0x2Bu:
        if (v6 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 272);
          if (!result)
          {
            return result;
          }

          goto LABEL_898;
        }

        if (v6 == 5)
        {
          goto LABEL_879;
        }

        goto LABEL_331;
      case 0x2Cu:
        if (v6 == 5)
        {
          goto LABEL_905;
        }

        goto LABEL_331;
      case 0x2Du:
        if (v6 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 296);
          if (!result)
          {
            return result;
          }

          goto LABEL_929;
        }

        if (v6 != 5)
        {
          goto LABEL_331;
        }

        goto LABEL_910;
      case 0x2Eu:
        if (v6 == 5)
        {
          goto LABEL_936;
        }

        goto LABEL_331;
      case 0x2Fu:
        if (v6 == 5)
        {
          goto LABEL_941;
        }

        goto LABEL_331;
      case 0x30u:
        if (v6 == 5)
        {
          goto LABEL_946;
        }

        goto LABEL_331;
      case 0x31u:
        if (v6 != 2)
        {
          goto LABEL_331;
        }

        v22 = *(this + 218);
        goto LABEL_951;
      case 0x32u:
        if (v6 == 2)
        {
          goto LABEL_958;
        }

        goto LABEL_331;
      case 0x33u:
        if (v6 == 2)
        {
          goto LABEL_965;
        }

        goto LABEL_331;
      case 0x34u:
        if (v6 == 2)
        {
          goto LABEL_972;
        }

        goto LABEL_331;
      case 0x35u:
        if (v6 == 2)
        {
          goto LABEL_979;
        }

        goto LABEL_331;
      case 0x36u:
        if ((TagFallback & 7) == 0)
        {
          v129 = *(a2 + 1);
          v14 = *(a2 + 2);
          goto LABEL_986;
        }

        if (v6 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 360);
        if (!result)
        {
          return result;
        }

        goto LABEL_1004;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v57 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1011;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v114 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1020;
      case 0x39u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1029;
      case 0x3Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v39 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1038;
      case 0x3Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v28 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1047;
      case 0x3Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v84 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1056;
      case 0x3Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v45 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1065;
      case 0x3Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v21 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1074;
      case 0x3Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v16 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1083;
      case 0x40u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v58 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1092;
      case 0x41u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v23 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1101;
      case 0x42u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v120 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1110;
      case 0x43u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v32 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1119;
      case 0x44u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v83 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1128;
      case 0x45u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v52 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1137;
      case 0x46u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v29 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1146;
      case 0x47u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v100 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1155;
      case 0x48u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v118 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1164;
      case 0x49u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v66 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1173;
      case 0x4Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v113 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1182;
      case 0x4Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v109 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1191;
      case 0x4Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v27 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_1200;
      case 0x4Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v103 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1209;
      case 0x4Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v55 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1218;
      case 0x4Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v98 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1227;
      case 0x50u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v97 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1236;
      case 0x51u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v116 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1245;
      case 0x52u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v111 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1254;
      case 0x53u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1263;
      case 0x54u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v99 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1272;
      case 0x55u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v102 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1281;
      case 0x56u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v40 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1290;
      case 0x57u:
        if ((TagFallback & 7) == 0)
        {
          v140 = *(a2 + 1);
          v24 = *(a2 + 2);
          goto LABEL_1299;
        }

        if (v6 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)5>(a2, this + 496);
        if (!result)
        {
          return result;
        }

        goto LABEL_1319;
      case 0x58u:
        if (v6 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<float,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)2>(a2, this + 512);
          if (!result)
          {
            return result;
          }

          goto LABEL_1345;
        }

        if (v6 != 5)
        {
          goto LABEL_331;
        }

        goto LABEL_1326;
      case 0x59u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v41 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1352;
      case 0x5Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v106 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1361;
      case 0x5Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v115 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1370;
      case 0x5Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v36 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1379;
      case 0x5Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v42 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1388;
      case 0x5Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v82 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1397;
      case 0x5Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v110 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1406;
      case 0x60u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v85 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1415;
      case 0x61u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v78 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1424;
      case 0x62u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v53 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1433;
      case 0x63u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v35 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1442;
      case 0x64u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v96 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1451;
      case 0x65u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v75 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1460;
      case 0x66u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v63 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1469;
      case 0x67u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v44 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1478;
      case 0x68u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v48 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1487;
      case 0x69u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v87 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1496;
      case 0x6Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v49 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1505;
      case 0x6Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v108 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1514;
      case 0x6Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v94 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1523;
      case 0x6Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v59 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1532;
      case 0x6Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v43 = *(a2 + 1);
        v34 = *(a2 + 2);
        goto LABEL_1541;
      case 0x6Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v71 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1550;
      case 0x70u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v88 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1559;
      case 0x71u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v70 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1568;
      case 0x72u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v64 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1577;
      case 0x73u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v47 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1586;
      case 0x74u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v50 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1595;
      case 0x75u:
        if ((TagFallback & 7) == 0)
        {
          v132 = *(a2 + 1);
          v46 = *(a2 + 2);
          goto LABEL_1604;
        }

        if (v6 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 640);
        if (!result)
        {
          return result;
        }

        goto LABEL_1622;
      case 0x76u:
        if ((TagFallback & 7) == 0)
        {
          v138 = *(a2 + 1);
          v46 = *(a2 + 2);
          goto LABEL_1629;
        }

        if (v6 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 656);
        if (!result)
        {
          return result;
        }

        goto LABEL_1647;
      case 0x77u:
        if ((TagFallback & 7) == 0)
        {
          v133 = *(a2 + 1);
          v46 = *(a2 + 2);
          goto LABEL_1654;
        }

        if (v6 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 672);
        if (!result)
        {
          return result;
        }

        goto LABEL_1672;
      case 0x78u:
        if ((TagFallback & 7) == 0)
        {
          v135 = *(a2 + 1);
          v46 = *(a2 + 2);
          goto LABEL_1679;
        }

        if (v6 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 688);
        if (!result)
        {
          return result;
        }

        goto LABEL_1697;
      case 0x79u:
        if ((TagFallback & 7) == 0)
        {
          v131 = *(a2 + 1);
          v46 = *(a2 + 2);
          goto LABEL_1704;
        }

        if (v6 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 704);
        if (!result)
        {
          return result;
        }

        goto LABEL_1723;
      case 0x7Au:
        if ((TagFallback & 7) == 0)
        {
          v130 = *(a2 + 1);
          v46 = *(a2 + 2);
          goto LABEL_1730;
        }

        if (v6 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 720);
        if (!result)
        {
          return result;
        }

        goto LABEL_1749;
      case 0x7Bu:
        if ((TagFallback & 7) == 0)
        {
          v137 = *(a2 + 1);
          v46 = *(a2 + 2);
          goto LABEL_1756;
        }

        if (v6 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 736);
        if (!result)
        {
          return result;
        }

        goto LABEL_1775;
      case 0x7Du:
        if ((TagFallback & 7) == 0)
        {
          v139 = *(a2 + 1);
          v46 = *(a2 + 2);
          goto LABEL_1782;
        }

        if (v6 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 768);
        if (!result)
        {
          return result;
        }

        goto LABEL_1801;
      case 0x7Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v86 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1808;
      case 0x7Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v54 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1817;
      case 0x80u:
        if ((TagFallback & 7) == 0)
        {
          v136 = *(a2 + 1);
          v46 = *(a2 + 2);
          goto LABEL_1826;
        }

        if (v6 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 792);
        if (!result)
        {
          return result;
        }

        goto LABEL_1845;
      case 0x81u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v56 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1852;
      case 0x82u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v90 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1861;
      case 0x83u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v72 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1870;
      case 0x84u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v65 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1879;
      case 0x85u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v92 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1888;
      case 0x86u:
        if ((TagFallback & 7) == 0)
        {
          v134 = *(a2 + 1);
          v46 = *(a2 + 2);
          goto LABEL_1897;
        }

        if (v6 != 2)
        {
          goto LABEL_331;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 752);
        if (!result)
        {
          return result;
        }

        goto LABEL_1916;
      case 0x87u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v93 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1923;
      case 0x88u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v79 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1932;
      case 0x89u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v91 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1941;
      case 0x8Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v89 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1950;
      case 0x8Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v69 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1959;
      case 0x8Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v77 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1968;
      case 0x8Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v74 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1977;
      case 0x8Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v80 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1986;
      case 0x8Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_331;
        }

        v81 = *(a2 + 1);
        v46 = *(a2 + 2);
        goto LABEL_1995;
      default:
        goto LABEL_331;
    }
  }
}