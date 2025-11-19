uint64_t awd::metrics::LocationEmergencySessionStatistics::set_envtype(uint64_t result, unsigned int a2)
{
  if (a2 >= 5 && a2 - 6 >= 2)
  {
    awd::metrics::LocationEmergencySessionStatistics::set_envtype();
  }

  *(result + 476) |= 0x1000000u;
  *(result + 260) = a2;
  return result;
}

uint64_t awd::metrics::LocationEmergencySessionStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 472);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 472);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_117;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 472);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_118;
  }

LABEL_117:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 472);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_119;
  }

LABEL_118:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 472);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_120;
  }

LABEL_119:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 472);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_121;
  }

LABEL_120:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_122;
  }

LABEL_121:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 52), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_123;
  }

LABEL_122:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 56), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_124;
  }

LABEL_123:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 60), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_125;
  }

LABEL_124:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 64), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_126;
  }

LABEL_125:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 68), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_127;
  }

LABEL_126:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, *(v5 + 72), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_128;
  }

LABEL_127:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, *(v5 + 76), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_129;
  }

LABEL_128:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xF, *(v5 + 80), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_130;
  }

LABEL_129:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x10, *(v5 + 84), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_131;
  }

LABEL_130:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x11, *(v5 + 88), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_132;
  }

LABEL_131:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(v5 + 96), a3);
  v6 = *(v5 + 472);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_133;
  }

LABEL_132:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, *(v5 + 104), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_134;
  }

LABEL_133:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x14, a2, *(v5 + 108), a3);
  v6 = *(v5 + 472);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_135;
  }

LABEL_134:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x15, a2, *(v5 + 112), a3);
  v6 = *(v5 + 472);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_136;
  }

LABEL_135:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x16, *(v5 + 116), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_137;
  }

LABEL_136:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x17, *(v5 + 132), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_138;
  }

LABEL_137:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x18, *(v5 + 133), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_139;
  }

LABEL_138:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x19, *(v5 + 128), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_140;
  }

LABEL_139:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1A, a2, *(v5 + 120), a3);
  v6 = *(v5 + 472);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_141;
  }

LABEL_140:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1B, a2, *(v5 + 136), a3);
  v6 = *(v5 + 472);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_142;
  }

LABEL_141:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x1C, *(v5 + 144), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_143;
  }

LABEL_142:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x1D, *(v5 + 148), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_144;
  }

LABEL_143:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1E, *(v5 + 134), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_145:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x20, *(v5 + 164), a2, a4);
    if ((*(v5 + 472) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_146;
  }

LABEL_144:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1F, *(v5 + 135), a2, a4);
  v6 = *(v5 + 472);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_145;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_146:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x21, *(v5 + 152), a2, a4);
LABEL_33:
  v7 = *(v5 + 476);
  if (v7)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x22, *(v5 + 165), a2, a4);
    v7 = *(v5 + 476);
    if ((v7 & 2) == 0)
    {
LABEL_35:
      if ((v7 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_149;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_35;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x23, *(v5 + 160), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 4) == 0)
  {
LABEL_36:
    if ((v7 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_150;
  }

LABEL_149:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 168), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 8) == 0)
  {
LABEL_37:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_151;
  }

LABEL_150:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x25, *(v5 + 166), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x10) == 0)
  {
LABEL_38:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_152;
  }

LABEL_151:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x26, *(v5 + 167), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x20) == 0)
  {
LABEL_39:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_153;
  }

LABEL_152:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x27, *(v5 + 172), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x40) == 0)
  {
LABEL_40:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_154;
  }

LABEL_153:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x28, *(v5 + 176), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x80) == 0)
  {
LABEL_41:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_155;
  }

LABEL_154:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(v5 + 180), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x100) == 0)
  {
LABEL_42:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_156;
  }

LABEL_155:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2A, *(v5 + 212), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x200) == 0)
  {
LABEL_43:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_157;
  }

LABEL_156:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x2B, *(v5 + 184), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x400) == 0)
  {
LABEL_44:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_158;
  }

LABEL_157:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x2C, *(v5 + 188), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x800) == 0)
  {
LABEL_45:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_159;
  }

LABEL_158:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x2D, *(v5 + 192), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x1000) == 0)
  {
LABEL_46:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_160;
  }

LABEL_159:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x2E, *(v5 + 196), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x2000) == 0)
  {
LABEL_47:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_161;
  }

LABEL_160:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x2F, *(v5 + 200), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x4000) == 0)
  {
LABEL_48:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_162;
  }

LABEL_161:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x30, *(v5 + 204), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x8000) == 0)
  {
LABEL_49:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_163;
  }

LABEL_162:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x31, *(v5 + 208), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x10000) == 0)
  {
LABEL_50:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_164;
  }

LABEL_163:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x32, *(v5 + 213), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x20000) == 0)
  {
LABEL_51:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_165;
  }

LABEL_164:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x33, *(v5 + 214), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x40000) == 0)
  {
LABEL_52:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_166;
  }

LABEL_165:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x34, a2, *(v5 + 216), a3);
  v7 = *(v5 + 476);
  if ((v7 & 0x80000) == 0)
  {
LABEL_53:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_167;
  }

LABEL_166:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x35, a2, *(v5 + 224), a3);
  v7 = *(v5 + 476);
  if ((v7 & 0x100000) == 0)
  {
LABEL_54:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_168;
  }

LABEL_167:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x36, a2, *(v5 + 232), a3);
  v7 = *(v5 + 476);
  if ((v7 & 0x200000) == 0)
  {
LABEL_55:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_169;
  }

LABEL_168:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x37, a2, *(v5 + 240), a3);
  v7 = *(v5 + 476);
  if ((v7 & 0x400000) == 0)
  {
LABEL_56:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_170;
  }

LABEL_169:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x38, a2, *(v5 + 248), a3);
  v7 = *(v5 + 476);
  if ((v7 & 0x800000) == 0)
  {
LABEL_57:
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_171;
  }

LABEL_170:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x39, *(v5 + 256), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x1000000) == 0)
  {
LABEL_58:
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_172;
  }

LABEL_171:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x3A, *(v5 + 260), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x2000000) == 0)
  {
LABEL_59:
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_173;
  }

LABEL_172:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x3B, *(v5 + 215), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x4000000) == 0)
  {
LABEL_60:
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_174;
  }

LABEL_173:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x3C, *(v5 + 264), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x8000000) == 0)
  {
LABEL_61:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_175;
  }

LABEL_174:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x3D, *(v5 + 268), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x10000000) == 0)
  {
LABEL_62:
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_176;
  }

LABEL_175:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x3E, *(v5 + 272), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x20000000) == 0)
  {
LABEL_63:
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_64;
    }

LABEL_177:
    v11 = *(v5 + 280);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v5 + 476) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_178;
  }

LABEL_176:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x3F, *(v5 + 276), a2, a4);
  v7 = *(v5 + 476);
  if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_177;
  }

LABEL_64:
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

LABEL_178:
  v12 = *(v5 + 288);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
LABEL_65:
  v8 = *(v5 + 480);
  if (v8)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x42, *(v5 + 296), a2, a4);
    v8 = *(v5 + 480);
    if ((v8 & 2) == 0)
    {
LABEL_67:
      if ((v8 & 4) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_181;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_67;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x43, *(v5 + 300), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 4) == 0)
  {
LABEL_68:
    if ((v8 & 8) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_182;
  }

LABEL_181:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x44, *(v5 + 304), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 8) == 0)
  {
LABEL_69:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_183;
  }

LABEL_182:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x45, *(v5 + 305), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x10) == 0)
  {
LABEL_70:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_184;
  }

LABEL_183:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x46, *(v5 + 306), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x20) == 0)
  {
LABEL_71:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_185;
  }

LABEL_184:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x47, *(v5 + 308), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x40) == 0)
  {
LABEL_72:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_186;
  }

LABEL_185:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x48, *(v5 + 312), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x80) == 0)
  {
LABEL_73:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_187;
  }

LABEL_186:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x49, *(v5 + 316), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x100) == 0)
  {
LABEL_74:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_188;
  }

LABEL_187:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4A, *(v5 + 320), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x200) == 0)
  {
LABEL_75:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_189;
  }

LABEL_188:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4B, *(v5 + 324), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x400) == 0)
  {
LABEL_76:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_190;
  }

LABEL_189:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x4C, *(v5 + 307), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x800) == 0)
  {
LABEL_77:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_191;
  }

LABEL_190:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x4D, *(v5 + 328), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x1000) == 0)
  {
LABEL_78:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_192;
  }

LABEL_191:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x4E, *(v5 + 329), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x2000) == 0)
  {
LABEL_79:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_193;
  }

LABEL_192:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x4F, *(v5 + 330), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x4000) == 0)
  {
LABEL_80:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_194;
  }

LABEL_193:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x50, *(v5 + 331), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x8000) == 0)
  {
LABEL_81:
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_195;
  }

LABEL_194:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x51, *(v5 + 332), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x10000) == 0)
  {
LABEL_82:
    if ((v8 & 0x20000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_196;
  }

LABEL_195:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x52, *(v5 + 336), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x20000) == 0)
  {
LABEL_83:
    if ((v8 & 0x40000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_197;
  }

LABEL_196:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x53, *(v5 + 340), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x40000) == 0)
  {
LABEL_84:
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_198;
  }

LABEL_197:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x54, *(v5 + 344), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x80000) == 0)
  {
LABEL_85:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_199;
  }

LABEL_198:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x55, *(v5 + 345), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x100000) == 0)
  {
LABEL_86:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_200;
  }

LABEL_199:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x56, *(v5 + 346), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x200000) == 0)
  {
LABEL_87:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_201;
  }

LABEL_200:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x57, *(v5 + 348), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x400000) == 0)
  {
LABEL_88:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_202;
  }

LABEL_201:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x58, *(v5 + 352), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x800000) == 0)
  {
LABEL_89:
    if ((v8 & 0x1000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_203;
  }

LABEL_202:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x59, *(v5 + 356), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x1000000) == 0)
  {
LABEL_90:
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_204;
  }

LABEL_203:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x5A, *(v5 + 360), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x2000000) == 0)
  {
LABEL_91:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_205;
  }

LABEL_204:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x5B, *(v5 + 364), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x4000000) == 0)
  {
LABEL_92:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_206;
  }

LABEL_205:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x5C, *(v5 + 368), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x8000000) == 0)
  {
LABEL_93:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_207;
  }

LABEL_206:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x5D, *(v5 + 372), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x10000000) == 0)
  {
LABEL_94:
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_208;
  }

LABEL_207:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x5E, *(v5 + 376), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x20000000) == 0)
  {
LABEL_95:
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_96;
    }

LABEL_209:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x60, *(v5 + 384), a2, a4);
    if ((*(v5 + 480) & 0x80000000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_210;
  }

LABEL_208:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x5F, *(v5 + 380), a2, a4);
  v8 = *(v5 + 480);
  if ((v8 & 0x40000000) != 0)
  {
    goto LABEL_209;
  }

LABEL_96:
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_97;
  }

LABEL_210:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x61, *(v5 + 388), a2, a4);
LABEL_97:
  v9 = *(v5 + 484);
  if (v9)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x62, *(v5 + 392), a2, a4);
    v9 = *(v5 + 484);
    if ((v9 & 2) == 0)
    {
LABEL_99:
      if ((v9 & 4) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_213;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_99;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x63, *(v5 + 396), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 4) == 0)
  {
LABEL_100:
    if ((v9 & 8) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_214;
  }

LABEL_213:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x64, *(v5 + 400), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 8) == 0)
  {
LABEL_101:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_215;
  }

LABEL_214:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x65, *(v5 + 404), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x10) == 0)
  {
LABEL_102:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_216;
  }

LABEL_215:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x66, *(v5 + 416), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x20) == 0)
  {
LABEL_103:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_217;
  }

LABEL_216:
  v13 = *(v5 + 408);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v9 = *(v5 + 484);
  if ((v9 & 0x40) == 0)
  {
LABEL_104:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_218;
  }

LABEL_217:
  v14 = *(v5 + 424);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v9 = *(v5 + 484);
  if ((v9 & 0x80) == 0)
  {
LABEL_105:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_219;
  }

LABEL_218:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x69, *(v5 + 420), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x100) == 0)
  {
LABEL_106:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_220;
  }

LABEL_219:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6A, *(v5 + 432), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x200) == 0)
  {
LABEL_107:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_221;
  }

LABEL_220:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6B, *(v5 + 436), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x400) == 0)
  {
LABEL_108:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_222;
  }

LABEL_221:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6C, *(v5 + 440), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x800) == 0)
  {
LABEL_109:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_223;
  }

LABEL_222:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6D, *(v5 + 444), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x1000) == 0)
  {
LABEL_110:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_224;
  }

LABEL_223:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6E, *(v5 + 448), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x2000) == 0)
  {
LABEL_111:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_225;
  }

LABEL_224:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x6F, *(v5 + 452), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x4000) == 0)
  {
LABEL_112:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_113;
    }

LABEL_226:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x71, *(v5 + 460), a2, a4);
    if ((*(v5 + 484) & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_227;
  }

LABEL_225:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x70, *(v5 + 456), a2, a4);
  v9 = *(v5 + 484);
  if ((v9 & 0x8000) != 0)
  {
    goto LABEL_226;
  }

LABEL_113:
  if ((v9 & 0x10000) == 0)
  {
    return this;
  }

LABEL_227:
  v15 = *(v5 + 464);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x72, v15, a2, a4);
}

uint64_t awd::metrics::LocationEmergencySessionStatistics::ByteSize(awd::metrics::LocationEmergencySessionStatistics *this)
{
  v2 = *(this + 118);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_43;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 118);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
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
    v2 = *(this + 118);
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
LABEL_16:
  v11 = v3 + 9;
  if ((v2 & 4) == 0)
  {
    v11 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v11 += 9;
  }

  if ((v2 & 0x10) != 0)
  {
    v4 = v11 + 9;
  }

  else
  {
    v4 = v11;
  }

  if ((v2 & 0x20) != 0)
  {
    v12 = *(this + 12);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v2 = *(this + 118);
    }

    else
    {
      v13 = 2;
    }

    v4 = (v13 + v4);
    if ((v2 & 0x40) == 0)
    {
LABEL_25:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_37;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_25;
  }

  v14 = *(this + 13);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 118);
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v2 & 0x80) != 0)
  {
LABEL_37:
    v16 = *(this + 14);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 118);
    }

    else
    {
      v17 = 2;
    }

    v4 = (v17 + v4);
  }

LABEL_43:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_53;
  }

  if ((v2 & 0x100) != 0)
  {
    v20 = *(this + 15);
    if ((v20 & 0x80000000) != 0)
    {
      v21 = 11;
    }

    else if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v2 = *(this + 118);
    }

    else
    {
      v21 = 2;
    }

    v4 = (v21 + v4);
    if ((v2 & 0x200) == 0)
    {
LABEL_46:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_97;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_46;
  }

  v26 = *(this + 16);
  if ((v26 & 0x80000000) != 0)
  {
    v27 = 11;
  }

  else if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v2 = *(this + 118);
  }

  else
  {
    v27 = 2;
  }

  v4 = (v27 + v4);
  if ((v2 & 0x400) == 0)
  {
LABEL_47:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_115;
  }

LABEL_97:
  v31 = *(this + 17);
  if ((v31 & 0x80000000) != 0)
  {
    v32 = 11;
  }

  else if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v2 = *(this + 118);
  }

  else
  {
    v32 = 2;
  }

  v4 = (v32 + v4);
  if ((v2 & 0x800) == 0)
  {
LABEL_48:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_121;
  }

LABEL_115:
  v37 = *(this + 18);
  if ((v37 & 0x80000000) != 0)
  {
    v38 = 11;
  }

  else if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 1;
    v2 = *(this + 118);
  }

  else
  {
    v38 = 2;
  }

  v4 = (v38 + v4);
  if ((v2 & 0x1000) == 0)
  {
LABEL_49:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_127;
  }

LABEL_121:
  v39 = *(this + 19);
  if ((v39 & 0x80000000) != 0)
  {
    v40 = 11;
  }

  else if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 1;
    v2 = *(this + 118);
  }

  else
  {
    v40 = 2;
  }

  v4 = (v40 + v4);
  if ((v2 & 0x2000) == 0)
  {
LABEL_50:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_133;
  }

LABEL_127:
  v41 = *(this + 20);
  if ((v41 & 0x80000000) != 0)
  {
    v42 = 11;
  }

  else if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 1;
    v2 = *(this + 118);
  }

  else
  {
    v42 = 2;
  }

  v4 = (v42 + v4);
  if ((v2 & 0x4000) == 0)
  {
LABEL_51:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_133:
  v43 = *(this + 21);
  if ((v43 & 0x80000000) != 0)
  {
    v44 = 12;
  }

  else if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v2 = *(this + 118);
  }

  else
  {
    v44 = 3;
  }

  v4 = (v44 + v4);
  if ((v2 & 0x8000) != 0)
  {
LABEL_52:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 11)) + 2;
    v2 = *(this + 118);
  }

LABEL_53:
  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      LODWORD(v4) = v4 + 10;
    }

    if ((v2 & 0x20000) != 0)
    {
      v18 = *(this + 26);
      if ((v18 & 0x80000000) != 0)
      {
        v19 = 12;
      }

      else if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 2;
        v2 = *(this + 118);
      }

      else
      {
        v19 = 3;
      }

      LODWORD(v4) = v19 + v4;
    }

    v22 = v4 + 6;
    if ((v2 & 0x40000) == 0)
    {
      v22 = v4;
    }

    if ((v2 & 0x80000) != 0)
    {
      v23 = v22 + 6;
    }

    else
    {
      v23 = v22;
    }

    if ((v2 & 0x100000) != 0)
    {
      v24 = *(this + 29);
      if ((v24 & 0x80000000) != 0)
      {
        v25 = 12;
      }

      else if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 2;
        v2 = *(this + 118);
      }

      else
      {
        v25 = 3;
      }

      v23 += v25;
    }

    v28 = v23 + 3;
    if ((v2 & 0x200000) == 0)
    {
      v28 = v23;
    }

    if ((v2 & 0x400000) != 0)
    {
      v4 = v28 + 3;
    }

    else
    {
      v4 = v28;
    }

    if ((v2 & 0x800000) != 0)
    {
      v29 = *(this + 32);
      if ((v29 & 0x80000000) != 0)
      {
        v30 = 12;
      }

      else if (v29 >= 0x80)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 2;
        v2 = *(this + 118);
      }

      else
      {
        v30 = 3;
      }

      v4 = (v30 + v4);
    }
  }

  if (HIBYTE(v2))
  {
    v33 = v4 + 10;
    if ((v2 & 0x1000000) == 0)
    {
      v33 = v4;
    }

    if ((v2 & 0x2000000) != 0)
    {
      v34 = v33 + 10;
    }

    else
    {
      v34 = v33;
    }

    if ((v2 & 0x4000000) != 0)
    {
      v35 = *(this + 36);
      if ((v35 & 0x80000000) != 0)
      {
        v36 = 12;
      }

      else if (v35 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
        v2 = *(this + 118);
      }

      else
      {
        v36 = 3;
      }

      v34 += v36;
    }

    if ((v2 & 0x8000000) != 0)
    {
      v45 = *(this + 37);
      if ((v45 & 0x80000000) != 0)
      {
        v46 = 12;
      }

      else if (v45 >= 0x80)
      {
        v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
        v2 = *(this + 118);
      }

      else
      {
        v46 = 3;
      }

      v34 += v46;
    }

    v47 = v34 + 3;
    if ((v2 & 0x10000000) == 0)
    {
      v47 = v34;
    }

    if ((v2 & 0x20000000) != 0)
    {
      v47 += 3;
    }

    if ((v2 & 0x40000000) != 0)
    {
      v4 = v47 + 3;
    }

    else
    {
      v4 = v47;
    }

    if ((v2 & 0x80000000) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 19)) + 2;
    }
  }

  v48 = *(this + 119);
  if (v48)
  {
    if (v48)
    {
      LODWORD(v4) = v4 + 3;
    }

    if ((v48 & 2) != 0)
    {
      v49 = *(this + 40);
      if ((v49 & 0x80000000) != 0)
      {
        v50 = 12;
      }

      else if (v49 >= 0x80)
      {
        v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
        v48 = *(this + 119);
      }

      else
      {
        v50 = 3;
      }

      LODWORD(v4) = v50 + v4;
    }

    if ((v48 & 4) != 0)
    {
      v51 = *(this + 42);
      if (v51 >= 0x80)
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
        v48 = *(this + 119);
      }

      else
      {
        v52 = 3;
      }

      LODWORD(v4) = v52 + v4;
    }

    v53 = v4 + 3;
    if ((v48 & 8) == 0)
    {
      v53 = v4;
    }

    if ((v48 & 0x10) != 0)
    {
      v4 = v53 + 3;
    }

    else
    {
      v4 = v53;
    }

    if ((v48 & 0x20) != 0)
    {
      v54 = *(this + 43);
      if ((v54 & 0x80000000) != 0)
      {
        v55 = 12;
      }

      else if (v54 >= 0x80)
      {
        v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 2;
        v48 = *(this + 119);
      }

      else
      {
        v55 = 3;
      }

      v4 = (v55 + v4);
      if ((v48 & 0x40) == 0)
      {
LABEL_181:
        if ((v48 & 0x80) == 0)
        {
          goto LABEL_199;
        }

        goto LABEL_195;
      }
    }

    else if ((v48 & 0x40) == 0)
    {
      goto LABEL_181;
    }

    v56 = *(this + 44);
    if ((v56 & 0x80000000) != 0)
    {
      v57 = 12;
    }

    else if (v56 >= 0x80)
    {
      v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56) + 2;
      v48 = *(this + 119);
    }

    else
    {
      v57 = 3;
    }

    v4 = (v57 + v4);
    if ((v48 & 0x80) != 0)
    {
LABEL_195:
      v58 = *(this + 45);
      if (v58 >= 0x80)
      {
        v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58) + 2;
        v48 = *(this + 119);
      }

      else
      {
        v59 = 3;
      }

      v4 = (v59 + v4);
    }
  }

LABEL_199:
  if ((v48 & 0xFF00) == 0)
  {
    goto LABEL_251;
  }

  if ((v48 & 0x100) != 0)
  {
    v4 = (v4 + 3);
  }

  else
  {
    v4 = v4;
  }

  if ((v48 & 0x200) != 0)
  {
    v60 = *(this + 46);
    if (v60 >= 0x80)
    {
      v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60) + 2;
      v48 = *(this + 119);
    }

    else
    {
      v61 = 3;
    }

    v4 = (v61 + v4);
    if ((v48 & 0x400) == 0)
    {
LABEL_205:
      if ((v48 & 0x800) == 0)
      {
        goto LABEL_206;
      }

      goto LABEL_221;
    }
  }

  else if ((v48 & 0x400) == 0)
  {
    goto LABEL_205;
  }

  v62 = *(this + 47);
  if ((v62 & 0x80000000) != 0)
  {
    v63 = 12;
  }

  else if (v62 >= 0x80)
  {
    v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62) + 2;
    v48 = *(this + 119);
  }

  else
  {
    v63 = 3;
  }

  v4 = (v63 + v4);
  if ((v48 & 0x800) == 0)
  {
LABEL_206:
    if ((v48 & 0x1000) == 0)
    {
      goto LABEL_207;
    }

    goto LABEL_227;
  }

LABEL_221:
  v64 = *(this + 48);
  if ((v64 & 0x80000000) != 0)
  {
    v65 = 12;
  }

  else if (v64 >= 0x80)
  {
    v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64) + 2;
    v48 = *(this + 119);
  }

  else
  {
    v65 = 3;
  }

  v4 = (v65 + v4);
  if ((v48 & 0x1000) == 0)
  {
LABEL_207:
    if ((v48 & 0x2000) == 0)
    {
      goto LABEL_208;
    }

    goto LABEL_233;
  }

LABEL_227:
  v66 = *(this + 49);
  if ((v66 & 0x80000000) != 0)
  {
    v67 = 12;
  }

  else if (v66 >= 0x80)
  {
    v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66) + 2;
    v48 = *(this + 119);
  }

  else
  {
    v67 = 3;
  }

  v4 = (v67 + v4);
  if ((v48 & 0x2000) == 0)
  {
LABEL_208:
    if ((v48 & 0x4000) == 0)
    {
      goto LABEL_209;
    }

    goto LABEL_239;
  }

LABEL_233:
  v68 = *(this + 50);
  if ((v68 & 0x80000000) != 0)
  {
    v69 = 12;
  }

  else if (v68 >= 0x80)
  {
    v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68) + 2;
    v48 = *(this + 119);
  }

  else
  {
    v69 = 3;
  }

  v4 = (v69 + v4);
  if ((v48 & 0x4000) == 0)
  {
LABEL_209:
    if ((v48 & 0x8000) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_245;
  }

LABEL_239:
  v70 = *(this + 51);
  if ((v70 & 0x80000000) != 0)
  {
    v71 = 12;
  }

  else if (v70 >= 0x80)
  {
    v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70) + 2;
    v48 = *(this + 119);
  }

  else
  {
    v71 = 3;
  }

  v4 = (v71 + v4);
  if ((v48 & 0x8000) != 0)
  {
LABEL_245:
    v72 = *(this + 52);
    if ((v72 & 0x80000000) != 0)
    {
      v73 = 12;
    }

    else if (v72 >= 0x80)
    {
      v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72) + 2;
      v48 = *(this + 119);
    }

    else
    {
      v73 = 3;
    }

    v4 = (v73 + v4);
  }

LABEL_251:
  if ((v48 & 0xFF0000) != 0)
  {
    v74 = v4 + 3;
    if ((v48 & 0x10000) == 0)
    {
      v74 = v4;
    }

    if ((v48 & 0x20000) != 0)
    {
      v74 += 3;
    }

    if ((v48 & 0x40000) != 0)
    {
      v74 += 10;
    }

    if ((v48 & 0x80000) != 0)
    {
      v74 += 10;
    }

    if ((v48 & 0x100000) != 0)
    {
      v74 += 10;
    }

    if ((v48 & 0x200000) != 0)
    {
      v74 += 10;
    }

    if ((v48 & 0x400000) != 0)
    {
      v4 = v74 + 10;
    }

    else
    {
      v4 = v74;
    }

    if ((v48 & 0x800000) != 0)
    {
      v75 = *(this + 64);
      if ((v75 & 0x80000000) != 0)
      {
        v76 = 12;
      }

      else if (v75 >= 0x80)
      {
        v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75) + 2;
        v48 = *(this + 119);
      }

      else
      {
        v76 = 3;
      }

      v4 = (v76 + v4);
    }
  }

  if (!HIBYTE(v48))
  {
    goto LABEL_334;
  }

  if ((v48 & 0x1000000) != 0)
  {
    v77 = *(this + 65);
    if ((v77 & 0x80000000) != 0)
    {
      v78 = 12;
    }

    else if (v77 >= 0x80)
    {
      v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77) + 2;
      v48 = *(this + 119);
    }

    else
    {
      v78 = 3;
    }

    LODWORD(v4) = v78 + v4;
  }

  if ((v48 & 0x2000000) != 0)
  {
    v4 = (v4 + 3);
  }

  else
  {
    v4 = v4;
  }

  if ((v48 & 0x4000000) != 0)
  {
    v79 = *(this + 66);
    if ((v79 & 0x80000000) != 0)
    {
      v80 = 12;
    }

    else if (v79 >= 0x80)
    {
      v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79) + 2;
      v48 = *(this + 119);
    }

    else
    {
      v80 = 3;
    }

    v4 = (v80 + v4);
    if ((v48 & 0x8000000) == 0)
    {
LABEL_287:
      if ((v48 & 0x10000000) == 0)
      {
        goto LABEL_288;
      }

      goto LABEL_304;
    }
  }

  else if ((v48 & 0x8000000) == 0)
  {
    goto LABEL_287;
  }

  v81 = *(this + 67);
  if ((v81 & 0x80000000) != 0)
  {
    v82 = 12;
  }

  else if (v81 >= 0x80)
  {
    v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81) + 2;
    v48 = *(this + 119);
  }

  else
  {
    v82 = 3;
  }

  v4 = (v82 + v4);
  if ((v48 & 0x10000000) == 0)
  {
LABEL_288:
    if ((v48 & 0x20000000) == 0)
    {
      goto LABEL_289;
    }

LABEL_310:
    v85 = *(this + 69);
    if ((v85 & 0x80000000) != 0)
    {
      v86 = 12;
    }

    else if (v85 >= 0x80)
    {
      v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85) + 2;
      v48 = *(this + 119);
    }

    else
    {
      v86 = 3;
    }

    v4 = (v86 + v4);
    if ((v48 & 0x40000000) == 0)
    {
LABEL_290:
      if ((v48 & 0x80000000) == 0)
      {
        goto LABEL_334;
      }

      goto LABEL_325;
    }

    goto LABEL_316;
  }

LABEL_304:
  v83 = *(this + 68);
  if ((v83 & 0x80000000) != 0)
  {
    v84 = 12;
  }

  else if (v83 >= 0x80)
  {
    v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83) + 2;
    v48 = *(this + 119);
  }

  else
  {
    v84 = 3;
  }

  v4 = (v84 + v4);
  if ((v48 & 0x20000000) != 0)
  {
    goto LABEL_310;
  }

LABEL_289:
  if ((v48 & 0x40000000) == 0)
  {
    goto LABEL_290;
  }

LABEL_316:
  v87 = *(this + 35);
  v88 = *(v87 + 23);
  v89 = v88;
  v90 = *(v87 + 8);
  if ((v88 & 0x80u) == 0)
  {
    v91 = *(v87 + 23);
  }

  else
  {
    v91 = v90;
  }

  if (v91 >= 0x80)
  {
    v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91);
    v88 = *(v87 + 23);
    v90 = *(v87 + 8);
    v48 = *(this + 119);
    v89 = *(v87 + 23);
  }

  else
  {
    v92 = 1;
  }

  if (v89 < 0)
  {
    v88 = v90;
  }

  v4 = (v4 + v92 + v88 + 2);
  if ((v48 & 0x80000000) != 0)
  {
LABEL_325:
    v93 = *(this + 36);
    v94 = *(v93 + 23);
    v95 = v94;
    v96 = *(v93 + 8);
    if ((v94 & 0x80u) == 0)
    {
      v97 = *(v93 + 23);
    }

    else
    {
      v97 = v96;
    }

    if (v97 >= 0x80)
    {
      v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97);
      v94 = *(v93 + 23);
      v96 = *(v93 + 8);
      v95 = *(v93 + 23);
    }

    else
    {
      v98 = 1;
    }

    if (v95 < 0)
    {
      v94 = v96;
    }

    v4 = (v4 + v98 + v94 + 2);
  }

LABEL_334:
  v99 = *(this + 120);
  if (!v99)
  {
    goto LABEL_374;
  }

  if (v99)
  {
    v100 = *(this + 74);
    if (v100 >= 0x80)
    {
      v101 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100) + 2;
      v99 = *(this + 120);
    }

    else
    {
      v101 = 3;
    }

    LODWORD(v4) = v101 + v4;
  }

  if ((v99 & 2) != 0)
  {
    v102 = *(this + 75);
    if (v102 >= 0x80)
    {
      v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102) + 2;
      v99 = *(this + 120);
    }

    else
    {
      v103 = 3;
    }

    LODWORD(v4) = v103 + v4;
  }

  v104 = v4 + 3;
  if ((v99 & 4) == 0)
  {
    v104 = v4;
  }

  if ((v99 & 8) != 0)
  {
    v104 += 3;
  }

  if ((v99 & 0x10) != 0)
  {
    v4 = v104 + 3;
  }

  else
  {
    v4 = v104;
  }

  if ((v99 & 0x20) != 0)
  {
    v105 = *(this + 77);
    if ((v105 & 0x80000000) != 0)
    {
      v106 = 12;
    }

    else if (v105 >= 0x80)
    {
      v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105) + 2;
      v99 = *(this + 120);
    }

    else
    {
      v106 = 3;
    }

    v4 = (v106 + v4);
    if ((v99 & 0x40) == 0)
    {
LABEL_354:
      if ((v99 & 0x80) == 0)
      {
        goto LABEL_374;
      }

      goto LABEL_368;
    }
  }

  else if ((v99 & 0x40) == 0)
  {
    goto LABEL_354;
  }

  v107 = *(this + 78);
  if ((v107 & 0x80000000) != 0)
  {
    v108 = 12;
  }

  else if (v107 >= 0x80)
  {
    v108 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v107) + 2;
    v99 = *(this + 120);
  }

  else
  {
    v108 = 3;
  }

  v4 = (v108 + v4);
  if ((v99 & 0x80) != 0)
  {
LABEL_368:
    v109 = *(this + 79);
    if ((v109 & 0x80000000) != 0)
    {
      v110 = 12;
    }

    else if (v109 >= 0x80)
    {
      v110 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v109) + 2;
      v99 = *(this + 120);
    }

    else
    {
      v110 = 3;
    }

    v4 = (v110 + v4);
  }

LABEL_374:
  if ((v99 & 0xFF00) != 0)
  {
    if ((v99 & 0x100) != 0)
    {
      v111 = *(this + 80);
      if (v111 >= 0x80)
      {
        v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v111) + 2;
        v99 = *(this + 120);
      }

      else
      {
        v112 = 3;
      }

      LODWORD(v4) = v112 + v4;
    }

    if ((v99 & 0x200) != 0)
    {
      v113 = *(this + 81);
      if (v113 >= 0x80)
      {
        v114 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v113) + 2;
        v99 = *(this + 120);
      }

      else
      {
        v114 = 3;
      }

      LODWORD(v4) = v114 + v4;
    }

    v115 = v4 + 3;
    if ((v99 & 0x400) == 0)
    {
      v115 = v4;
    }

    if ((v99 & 0x800) != 0)
    {
      v115 += 3;
    }

    if ((v99 & 0x1000) != 0)
    {
      v115 += 3;
    }

    if ((v99 & 0x2000) != 0)
    {
      v115 += 3;
    }

    if ((v99 & 0x4000) != 0)
    {
      v4 = v115 + 3;
    }

    else
    {
      v4 = v115;
    }

    if ((v99 & 0x8000) != 0)
    {
      v116 = *(this + 83);
      if ((v116 & 0x80000000) != 0)
      {
        v117 = 12;
      }

      else if (v116 >= 0x80)
      {
        v117 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v116) + 2;
        v99 = *(this + 120);
      }

      else
      {
        v117 = 3;
      }

      v4 = (v117 + v4);
    }
  }

  if ((v99 & 0xFF0000) != 0)
  {
    if ((v99 & 0x10000) != 0)
    {
      v118 = *(this + 84);
      if ((v118 & 0x80000000) != 0)
      {
        v119 = 12;
      }

      else if (v118 >= 0x80)
      {
        v119 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118) + 2;
        v99 = *(this + 120);
      }

      else
      {
        v119 = 3;
      }

      LODWORD(v4) = v119 + v4;
    }

    if ((v99 & 0x20000) != 0)
    {
      v120 = *(this + 85);
      if ((v120 & 0x80000000) != 0)
      {
        v121 = 12;
      }

      else if (v120 >= 0x80)
      {
        v121 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v120) + 2;
        v99 = *(this + 120);
      }

      else
      {
        v121 = 3;
      }

      LODWORD(v4) = v121 + v4;
    }

    v122 = v4 + 3;
    if ((v99 & 0x40000) == 0)
    {
      v122 = v4;
    }

    if ((v99 & 0x80000) != 0)
    {
      v122 += 3;
    }

    if ((v99 & 0x100000) != 0)
    {
      v4 = v122 + 3;
    }

    else
    {
      v4 = v122;
    }

    if ((v99 & 0x200000) != 0)
    {
      v123 = *(this + 87);
      if ((v123 & 0x80000000) != 0)
      {
        v124 = 12;
      }

      else if (v123 >= 0x80)
      {
        v124 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v123) + 2;
        v99 = *(this + 120);
      }

      else
      {
        v124 = 3;
      }

      v4 = (v124 + v4);
      if ((v99 & 0x400000) == 0)
      {
LABEL_427:
        if ((v99 & 0x800000) == 0)
        {
          goto LABEL_445;
        }

        goto LABEL_439;
      }
    }

    else if ((v99 & 0x400000) == 0)
    {
      goto LABEL_427;
    }

    v125 = *(this + 88);
    if (v125 >= 0x80)
    {
      v126 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v125) + 2;
      v99 = *(this + 120);
    }

    else
    {
      v126 = 3;
    }

    v4 = (v126 + v4);
    if ((v99 & 0x800000) != 0)
    {
LABEL_439:
      v127 = *(this + 89);
      if ((v127 & 0x80000000) != 0)
      {
        v128 = 12;
      }

      else if (v127 >= 0x80)
      {
        v128 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v127) + 2;
        v99 = *(this + 120);
      }

      else
      {
        v128 = 3;
      }

      v4 = (v128 + v4);
    }
  }

LABEL_445:
  if (!HIBYTE(v99))
  {
    goto LABEL_503;
  }

  if ((v99 & 0x1000000) != 0)
  {
    v129 = *(this + 90);
    if ((v129 & 0x80000000) != 0)
    {
      v130 = 12;
    }

    else if (v129 >= 0x80)
    {
      v130 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v129) + 2;
      v99 = *(this + 120);
    }

    else
    {
      v130 = 3;
    }

    v4 = (v130 + v4);
    if ((v99 & 0x2000000) == 0)
    {
LABEL_448:
      if ((v99 & 0x4000000) == 0)
      {
        goto LABEL_449;
      }

      goto LABEL_467;
    }
  }

  else if ((v99 & 0x2000000) == 0)
  {
    goto LABEL_448;
  }

  v131 = *(this + 91);
  if ((v131 & 0x80000000) != 0)
  {
    v132 = 12;
  }

  else if (v131 >= 0x80)
  {
    v132 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v131) + 2;
    v99 = *(this + 120);
  }

  else
  {
    v132 = 3;
  }

  v4 = (v132 + v4);
  if ((v99 & 0x4000000) == 0)
  {
LABEL_449:
    if ((v99 & 0x8000000) == 0)
    {
      goto LABEL_450;
    }

    goto LABEL_473;
  }

LABEL_467:
  v133 = *(this + 92);
  if ((v133 & 0x80000000) != 0)
  {
    v134 = 12;
  }

  else if (v133 >= 0x80)
  {
    v134 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v133) + 2;
    v99 = *(this + 120);
  }

  else
  {
    v134 = 3;
  }

  v4 = (v134 + v4);
  if ((v99 & 0x8000000) == 0)
  {
LABEL_450:
    if ((v99 & 0x10000000) == 0)
    {
      goto LABEL_451;
    }

    goto LABEL_479;
  }

LABEL_473:
  v135 = *(this + 93);
  if ((v135 & 0x80000000) != 0)
  {
    v136 = 12;
  }

  else if (v135 >= 0x80)
  {
    v136 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v135) + 2;
    v99 = *(this + 120);
  }

  else
  {
    v136 = 3;
  }

  v4 = (v136 + v4);
  if ((v99 & 0x10000000) == 0)
  {
LABEL_451:
    if ((v99 & 0x20000000) == 0)
    {
      goto LABEL_452;
    }

    goto LABEL_485;
  }

LABEL_479:
  v137 = *(this + 94);
  if ((v137 & 0x80000000) != 0)
  {
    v138 = 12;
  }

  else if (v137 >= 0x80)
  {
    v138 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v137) + 2;
    v99 = *(this + 120);
  }

  else
  {
    v138 = 3;
  }

  v4 = (v138 + v4);
  if ((v99 & 0x20000000) == 0)
  {
LABEL_452:
    if ((v99 & 0x40000000) == 0)
    {
      goto LABEL_453;
    }

    goto LABEL_491;
  }

LABEL_485:
  v139 = *(this + 95);
  if ((v139 & 0x80000000) != 0)
  {
    v140 = 12;
  }

  else if (v139 >= 0x80)
  {
    v140 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v139) + 2;
    v99 = *(this + 120);
  }

  else
  {
    v140 = 3;
  }

  v4 = (v140 + v4);
  if ((v99 & 0x40000000) == 0)
  {
LABEL_453:
    if ((v99 & 0x80000000) == 0)
    {
      goto LABEL_503;
    }

    goto LABEL_497;
  }

LABEL_491:
  v141 = *(this + 96);
  if ((v141 & 0x80000000) != 0)
  {
    v142 = 12;
  }

  else if (v141 >= 0x80)
  {
    v142 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v141) + 2;
    v99 = *(this + 120);
  }

  else
  {
    v142 = 3;
  }

  v4 = (v142 + v4);
  if ((v99 & 0x80000000) != 0)
  {
LABEL_497:
    v143 = *(this + 97);
    if ((v143 & 0x80000000) != 0)
    {
      v144 = 12;
    }

    else if (v143 >= 0x80)
    {
      v144 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v143) + 2;
    }

    else
    {
      v144 = 3;
    }

    v4 = (v144 + v4);
  }

LABEL_503:
  v145 = *(this + 121);
  if (!v145)
  {
    goto LABEL_567;
  }

  if (v145)
  {
    v146 = *(this + 98);
    if ((v146 & 0x80000000) != 0)
    {
      v147 = 12;
    }

    else if (v146 >= 0x80)
    {
      v147 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v146) + 2;
      v145 = *(this + 121);
    }

    else
    {
      v147 = 3;
    }

    v4 = (v147 + v4);
    if ((v145 & 2) == 0)
    {
LABEL_506:
      if ((v145 & 4) == 0)
      {
        goto LABEL_507;
      }

      goto LABEL_525;
    }
  }

  else if ((v145 & 2) == 0)
  {
    goto LABEL_506;
  }

  v148 = *(this + 99);
  if ((v148 & 0x80000000) != 0)
  {
    v149 = 12;
  }

  else if (v148 >= 0x80)
  {
    v149 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v148) + 2;
    v145 = *(this + 121);
  }

  else
  {
    v149 = 3;
  }

  v4 = (v149 + v4);
  if ((v145 & 4) == 0)
  {
LABEL_507:
    if ((v145 & 8) == 0)
    {
      goto LABEL_508;
    }

    goto LABEL_531;
  }

LABEL_525:
  v150 = *(this + 100);
  if ((v150 & 0x80000000) != 0)
  {
    v151 = 12;
  }

  else if (v150 >= 0x80)
  {
    v151 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v150) + 2;
    v145 = *(this + 121);
  }

  else
  {
    v151 = 3;
  }

  v4 = (v151 + v4);
  if ((v145 & 8) == 0)
  {
LABEL_508:
    if ((v145 & 0x10) == 0)
    {
      goto LABEL_509;
    }

    goto LABEL_537;
  }

LABEL_531:
  v152 = *(this + 101);
  if ((v152 & 0x80000000) != 0)
  {
    v153 = 12;
  }

  else if (v152 >= 0x80)
  {
    v153 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v152) + 2;
    v145 = *(this + 121);
  }

  else
  {
    v153 = 3;
  }

  v4 = (v153 + v4);
  if ((v145 & 0x10) == 0)
  {
LABEL_509:
    if ((v145 & 0x20) == 0)
    {
      goto LABEL_510;
    }

    goto LABEL_543;
  }

LABEL_537:
  v154 = *(this + 104);
  if ((v154 & 0x80000000) != 0)
  {
    v155 = 12;
  }

  else if (v154 >= 0x80)
  {
    v155 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v154) + 2;
    v145 = *(this + 121);
  }

  else
  {
    v155 = 3;
  }

  v4 = (v155 + v4);
  if ((v145 & 0x20) == 0)
  {
LABEL_510:
    if ((v145 & 0x40) == 0)
    {
      goto LABEL_511;
    }

    goto LABEL_552;
  }

LABEL_543:
  v156 = *(this + 51);
  v157 = *(v156 + 23);
  v158 = v157;
  v159 = *(v156 + 8);
  if ((v157 & 0x80u) == 0)
  {
    v160 = *(v156 + 23);
  }

  else
  {
    v160 = v159;
  }

  if (v160 >= 0x80)
  {
    v161 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v160);
    v157 = *(v156 + 23);
    v159 = *(v156 + 8);
    v145 = *(this + 121);
    v158 = *(v156 + 23);
  }

  else
  {
    v161 = 1;
  }

  if (v158 < 0)
  {
    v157 = v159;
  }

  v4 = (v4 + v161 + v157 + 2);
  if ((v145 & 0x40) == 0)
  {
LABEL_511:
    if ((v145 & 0x80) == 0)
    {
      goto LABEL_567;
    }

    goto LABEL_561;
  }

LABEL_552:
  v162 = *(this + 53);
  v163 = *(v162 + 23);
  v164 = v163;
  v165 = *(v162 + 8);
  if ((v163 & 0x80u) == 0)
  {
    v166 = *(v162 + 23);
  }

  else
  {
    v166 = v165;
  }

  if (v166 >= 0x80)
  {
    v167 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v166);
    v163 = *(v162 + 23);
    v165 = *(v162 + 8);
    v145 = *(this + 121);
    v164 = *(v162 + 23);
  }

  else
  {
    v167 = 1;
  }

  if (v164 < 0)
  {
    v163 = v165;
  }

  v4 = (v4 + v167 + v163 + 2);
  if ((v145 & 0x80) != 0)
  {
LABEL_561:
    v168 = *(this + 105);
    if ((v168 & 0x80000000) != 0)
    {
      v169 = 12;
    }

    else if (v168 >= 0x80)
    {
      v169 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v168) + 2;
      v145 = *(this + 121);
    }

    else
    {
      v169 = 3;
    }

    v4 = (v169 + v4);
  }

LABEL_567:
  if ((v145 & 0xFF00) == 0)
  {
    goto LABEL_576;
  }

  if ((v145 & 0x100) != 0)
  {
    v170 = *(this + 108);
    if ((v170 & 0x80000000) != 0)
    {
      v171 = 12;
    }

    else if (v170 >= 0x80)
    {
      v171 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v170) + 2;
      v145 = *(this + 121);
    }

    else
    {
      v171 = 3;
    }

    v4 = (v171 + v4);
    if ((v145 & 0x200) == 0)
    {
LABEL_570:
      if ((v145 & 0x400) == 0)
      {
        goto LABEL_571;
      }

      goto LABEL_590;
    }
  }

  else if ((v145 & 0x200) == 0)
  {
    goto LABEL_570;
  }

  v172 = *(this + 109);
  if ((v172 & 0x80000000) != 0)
  {
    v173 = 12;
  }

  else if (v172 >= 0x80)
  {
    v173 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v172) + 2;
    v145 = *(this + 121);
  }

  else
  {
    v173 = 3;
  }

  v4 = (v173 + v4);
  if ((v145 & 0x400) == 0)
  {
LABEL_571:
    if ((v145 & 0x800) == 0)
    {
      goto LABEL_572;
    }

    goto LABEL_596;
  }

LABEL_590:
  v174 = *(this + 110);
  if ((v174 & 0x80000000) != 0)
  {
    v175 = 12;
  }

  else if (v174 >= 0x80)
  {
    v175 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v174) + 2;
    v145 = *(this + 121);
  }

  else
  {
    v175 = 3;
  }

  v4 = (v175 + v4);
  if ((v145 & 0x800) == 0)
  {
LABEL_572:
    if ((v145 & 0x1000) == 0)
    {
      goto LABEL_573;
    }

    goto LABEL_602;
  }

LABEL_596:
  v176 = *(this + 111);
  if ((v176 & 0x80000000) != 0)
  {
    v177 = 12;
  }

  else if (v176 >= 0x80)
  {
    v177 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v176) + 2;
    v145 = *(this + 121);
  }

  else
  {
    v177 = 3;
  }

  v4 = (v177 + v4);
  if ((v145 & 0x1000) == 0)
  {
LABEL_573:
    if ((v145 & 0x2000) == 0)
    {
      goto LABEL_574;
    }

    goto LABEL_608;
  }

LABEL_602:
  v178 = *(this + 112);
  if ((v178 & 0x80000000) != 0)
  {
    v179 = 12;
  }

  else if (v178 >= 0x80)
  {
    v179 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v178) + 2;
    v145 = *(this + 121);
  }

  else
  {
    v179 = 3;
  }

  v4 = (v179 + v4);
  if ((v145 & 0x2000) == 0)
  {
LABEL_574:
    if ((v145 & 0x4000) == 0)
    {
      goto LABEL_575;
    }

    goto LABEL_614;
  }

LABEL_608:
  v180 = *(this + 113);
  if ((v180 & 0x80000000) != 0)
  {
    v181 = 12;
  }

  else if (v180 >= 0x80)
  {
    v181 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v180) + 2;
    v145 = *(this + 121);
  }

  else
  {
    v181 = 3;
  }

  v4 = (v181 + v4);
  if ((v145 & 0x4000) == 0)
  {
LABEL_575:
    if ((v145 & 0x8000) == 0)
    {
      goto LABEL_576;
    }

    goto LABEL_620;
  }

LABEL_614:
  v182 = *(this + 114);
  if ((v182 & 0x80000000) != 0)
  {
    v183 = 12;
  }

  else if (v182 >= 0x80)
  {
    v183 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v182) + 2;
    v145 = *(this + 121);
  }

  else
  {
    v183 = 3;
  }

  v4 = (v183 + v4);
  if ((v145 & 0x8000) == 0)
  {
LABEL_576:
    if ((v145 & 0x10000) == 0)
    {
      goto LABEL_632;
    }

    goto LABEL_626;
  }

LABEL_620:
  v184 = *(this + 115);
  if ((v184 & 0x80000000) != 0)
  {
    v185 = 12;
  }

  else if (v184 >= 0x80)
  {
    v185 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v184) + 2;
    v145 = *(this + 121);
  }

  else
  {
    v185 = 3;
  }

  v4 = (v185 + v4);
  if ((v145 & 0x10000) != 0)
  {
LABEL_626:
    v186 = *(this + 116);
    if ((v186 & 0x80000000) != 0)
    {
      v187 = 12;
    }

    else if (v186 >= 0x80)
    {
      v187 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v186) + 2;
    }

    else
    {
      v187 = 3;
    }

    v4 = (v187 + v4);
  }

LABEL_632:
  *(this + 117) = v4;
  return v4;
}

void awd::metrics::LocationEmergencySessionStatistics::CheckTypeAndMergeFrom(awd::metrics::LocationEmergencySessionStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationEmergencySessionStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationEmergencySessionStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationEmergencySessionStatistics::CopyFrom(awd::metrics::LocationEmergencySessionStatistics *this, const awd::metrics::LocationEmergencySessionStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationEmergencySessionStatistics::MergeFrom(this, a2);
  }
}

double awd::metrics::LocationEmergencySessionStatistics::Swap(awd::metrics::LocationEmergencySessionStatistics *this, awd::metrics::LocationEmergencySessionStatistics *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v7;
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
    v8 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v8;
    v9 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v9;
    LODWORD(v8) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v8;
    LODWORD(v9) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v9;
    LODWORD(v9) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v9;
    LODWORD(v8) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v8;
    LOBYTE(v8) = *(this + 132);
    *(this + 132) = *(a2 + 132);
    *(a2 + 132) = v8;
    LOBYTE(v8) = *(this + 133);
    *(this + 133) = *(a2 + 133);
    *(a2 + 133) = v8;
    LODWORD(v8) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v8;
    v10 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v10;
    v11 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v11;
    LODWORD(v8) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v8;
    LODWORD(v8) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v8;
    LOBYTE(v8) = *(this + 134);
    *(this + 134) = *(a2 + 134);
    *(a2 + 134) = v8;
    LOBYTE(v8) = *(this + 135);
    *(this + 135) = *(a2 + 135);
    *(a2 + 135) = v8;
    LOBYTE(v8) = *(this + 164);
    *(this + 164) = *(a2 + 164);
    *(a2 + 164) = v8;
    v12 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v12;
    LOBYTE(v12) = *(this + 165);
    *(this + 165) = *(a2 + 165);
    *(a2 + 165) = v12;
    LODWORD(v12) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v12;
    LODWORD(v12) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v12;
    LOBYTE(v12) = *(this + 166);
    *(this + 166) = *(a2 + 166);
    *(a2 + 166) = v12;
    LOBYTE(v12) = *(this + 167);
    *(this + 167) = *(a2 + 167);
    *(a2 + 167) = v12;
    LODWORD(v12) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v12;
    LODWORD(v12) = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v12;
    LODWORD(v12) = *(this + 45);
    *(this + 45) = *(a2 + 45);
    *(a2 + 45) = v12;
    LOBYTE(v12) = *(this + 212);
    *(this + 212) = *(a2 + 212);
    *(a2 + 212) = v12;
    LODWORD(v12) = *(this + 46);
    *(this + 46) = *(a2 + 46);
    *(a2 + 46) = v12;
    LODWORD(v12) = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v12;
    LODWORD(v12) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v12;
    LODWORD(v12) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v12;
    LODWORD(v12) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v12;
    LODWORD(v12) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v12;
    LODWORD(v12) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v12;
    LOBYTE(v12) = *(this + 213);
    *(this + 213) = *(a2 + 213);
    *(a2 + 213) = v12;
    LOBYTE(v12) = *(this + 214);
    *(this + 214) = *(a2 + 214);
    *(a2 + 214) = v12;
    v13 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v13;
    v14 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v14;
    v15 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v15;
    v16 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v16;
    result = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = result;
    LODWORD(v12) = *(this + 64);
    *(this + 64) = *(a2 + 64);
    *(a2 + 64) = v12;
    LODWORD(v12) = *(this + 65);
    *(this + 65) = *(a2 + 65);
    *(a2 + 65) = v12;
    LOBYTE(v12) = *(this + 215);
    *(this + 215) = *(a2 + 215);
    *(a2 + 215) = v12;
    LODWORD(v12) = *(this + 66);
    *(this + 66) = *(a2 + 66);
    *(a2 + 66) = v12;
    LODWORD(v12) = *(this + 67);
    *(this + 67) = *(a2 + 67);
    *(a2 + 67) = v12;
    LODWORD(v12) = *(this + 68);
    *(this + 68) = *(a2 + 68);
    *(a2 + 68) = v12;
    LODWORD(v12) = *(this + 69);
    *(this + 69) = *(a2 + 69);
    *(a2 + 69) = v12;
    v18 = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v18;
    v19 = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v19;
    LODWORD(v19) = *(this + 74);
    *(this + 74) = *(a2 + 74);
    *(a2 + 74) = v19;
    LODWORD(v19) = *(this + 75);
    *(this + 75) = *(a2 + 75);
    *(a2 + 75) = v19;
    LOBYTE(v19) = *(this + 304);
    *(this + 304) = *(a2 + 304);
    *(a2 + 304) = v19;
    LOBYTE(v19) = *(this + 305);
    *(this + 305) = *(a2 + 305);
    *(a2 + 305) = v19;
    LOBYTE(v19) = *(this + 306);
    *(this + 306) = *(a2 + 306);
    *(a2 + 306) = v19;
    LODWORD(v19) = *(this + 77);
    *(this + 77) = *(a2 + 77);
    *(a2 + 77) = v19;
    LODWORD(v19) = *(this + 78);
    *(this + 78) = *(a2 + 78);
    *(a2 + 78) = v19;
    LODWORD(v19) = *(this + 79);
    *(this + 79) = *(a2 + 79);
    *(a2 + 79) = v19;
    LODWORD(v19) = *(this + 80);
    *(this + 80) = *(a2 + 80);
    *(a2 + 80) = v19;
    LODWORD(v19) = *(this + 81);
    *(this + 81) = *(a2 + 81);
    *(a2 + 81) = v19;
    LOBYTE(v19) = *(this + 307);
    *(this + 307) = *(a2 + 307);
    *(a2 + 307) = v19;
    LOBYTE(v19) = *(this + 328);
    *(this + 328) = *(a2 + 328);
    *(a2 + 328) = v19;
    LOBYTE(v19) = *(this + 329);
    *(this + 329) = *(a2 + 329);
    *(a2 + 329) = v19;
    LOBYTE(v19) = *(this + 330);
    *(this + 330) = *(a2 + 330);
    *(a2 + 330) = v19;
    LOBYTE(v19) = *(this + 331);
    *(this + 331) = *(a2 + 331);
    *(a2 + 331) = v19;
    LODWORD(v19) = *(this + 83);
    *(this + 83) = *(a2 + 83);
    *(a2 + 83) = v19;
    LODWORD(v19) = *(this + 84);
    *(this + 84) = *(a2 + 84);
    *(a2 + 84) = v19;
    LODWORD(v19) = *(this + 85);
    *(this + 85) = *(a2 + 85);
    *(a2 + 85) = v19;
    LOBYTE(v19) = *(this + 344);
    *(this + 344) = *(a2 + 344);
    *(a2 + 344) = v19;
    LOBYTE(v19) = *(this + 345);
    *(this + 345) = *(a2 + 345);
    *(a2 + 345) = v19;
    LOBYTE(v19) = *(this + 346);
    *(this + 346) = *(a2 + 346);
    *(a2 + 346) = v19;
    LODWORD(v19) = *(this + 87);
    *(this + 87) = *(a2 + 87);
    *(a2 + 87) = v19;
    LODWORD(v19) = *(this + 88);
    *(this + 88) = *(a2 + 88);
    *(a2 + 88) = v19;
    LODWORD(v19) = *(this + 89);
    *(this + 89) = *(a2 + 89);
    *(a2 + 89) = v19;
    LODWORD(v19) = *(this + 90);
    *(this + 90) = *(a2 + 90);
    *(a2 + 90) = v19;
    LODWORD(v19) = *(this + 91);
    *(this + 91) = *(a2 + 91);
    *(a2 + 91) = v19;
    LODWORD(v19) = *(this + 92);
    *(this + 92) = *(a2 + 92);
    *(a2 + 92) = v19;
    LODWORD(v19) = *(this + 93);
    *(this + 93) = *(a2 + 93);
    *(a2 + 93) = v19;
    LODWORD(v19) = *(this + 94);
    *(this + 94) = *(a2 + 94);
    *(a2 + 94) = v19;
    LODWORD(v19) = *(this + 95);
    *(this + 95) = *(a2 + 95);
    *(a2 + 95) = v19;
    LODWORD(v19) = *(this + 96);
    *(this + 96) = *(a2 + 96);
    *(a2 + 96) = v19;
    LODWORD(v19) = *(this + 97);
    *(this + 97) = *(a2 + 97);
    *(a2 + 97) = v19;
    LODWORD(v19) = *(this + 98);
    *(this + 98) = *(a2 + 98);
    *(a2 + 98) = v19;
    LODWORD(v19) = *(this + 99);
    *(this + 99) = *(a2 + 99);
    *(a2 + 99) = v19;
    LODWORD(v19) = *(this + 100);
    *(this + 100) = *(a2 + 100);
    *(a2 + 100) = v19;
    LODWORD(v19) = *(this + 101);
    *(this + 101) = *(a2 + 101);
    *(a2 + 101) = v19;
    LODWORD(v19) = *(this + 104);
    *(this + 104) = *(a2 + 104);
    *(a2 + 104) = v19;
    v20 = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v20;
    v21 = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v21;
    LODWORD(v21) = *(this + 105);
    *(this + 105) = *(a2 + 105);
    *(a2 + 105) = v21;
    LODWORD(v21) = *(this + 108);
    *(this + 108) = *(a2 + 108);
    *(a2 + 108) = v21;
    LODWORD(v21) = *(this + 109);
    *(this + 109) = *(a2 + 109);
    *(a2 + 109) = v21;
    LODWORD(v21) = *(this + 110);
    *(this + 110) = *(a2 + 110);
    *(a2 + 110) = v21;
    LODWORD(v21) = *(this + 111);
    *(this + 111) = *(a2 + 111);
    *(a2 + 111) = v21;
    LODWORD(v21) = *(this + 112);
    *(this + 112) = *(a2 + 112);
    *(a2 + 112) = v21;
    LODWORD(v21) = *(this + 113);
    *(this + 113) = *(a2 + 113);
    *(a2 + 113) = v21;
    LODWORD(v21) = *(this + 114);
    *(this + 114) = *(a2 + 114);
    *(a2 + 114) = v21;
    LODWORD(v21) = *(this + 115);
    *(this + 115) = *(a2 + 115);
    *(a2 + 115) = v21;
    LODWORD(v21) = *(this + 116);
    *(this + 116) = *(a2 + 116);
    *(a2 + 116) = v21;
    LODWORD(v21) = *(this + 118);
    *(this + 118) = *(a2 + 118);
    *(a2 + 118) = v21;
    LODWORD(v21) = *(this + 119);
    *(this + 119) = *(a2 + 119);
    *(a2 + 119) = v21;
    LODWORD(v21) = *(this + 120);
    *(this + 120) = *(a2 + 120);
    *(a2 + 120) = v21;
    LODWORD(v21) = *(this + 121);
    *(this + 121) = *(a2 + 121);
    *(a2 + 121) = v21;
    LODWORD(v21) = *(this + 117);
    *(this + 117) = *(a2 + 117);
    *(a2 + 117) = v21;
  }

  return result;
}

double awd::metrics::LocationMapMatching::SharedCtor(awd::metrics::LocationMapMatching *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

awd::metrics::LocationMapMatching *awd::metrics::LocationMapMatching::LocationMapMatching(awd::metrics::LocationMapMatching *this, const awd::metrics::LocationMapMatching *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4ED50;
  *(this + 1) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  awd::metrics::LocationMapMatching::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationMapMatching::MergeFrom(awd::metrics::LocationMapMatching *this, const awd::metrics::LocationMapMatching *a2)
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

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 10) |= 2u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 10);
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
    v9 = *(a2 + 6);
    *(this + 10) |= 4u;
    *(this + 6) = v9;
    v4 = *(a2 + 10);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_16:
    v10 = *(a2 + 7);
    *(this + 10) |= 8u;
    *(this + 7) = v10;
    if ((*(a2 + 10) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 8);
    *(this + 10) |= 0x10u;
    *(this + 8) = v5;
  }
}

void sub_296411254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMapMatching::~LocationMapMatching(awd::metrics::LocationMapMatching *this)
{
  *this = &unk_2A1D4ED50;
  awd::metrics::LocationMapMatching::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4ED50;
  awd::metrics::LocationMapMatching::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4ED50;
  awd::metrics::LocationMapMatching::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationMapMatching::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::LocationMapMatching::default_instance(awd::metrics::LocationMapMatching *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMapMatching::default_instance_;
  if (!awd::metrics::LocationMapMatching::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMapMatching::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMapMatching::Clear(uint64_t this)
{
  v1 = *(this + 40);
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
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::LocationMapMatching::MergePartialFromCodedStream(awd::metrics::LocationMapMatching *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_22;
          }

          v11 = *(this + 10);
          goto LABEL_33;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
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

        v11 = *(this + 10) | 1;
        *(this + 10) = v11;
        if (v17 < v14 && *v17 == 18)
        {
          *(a2 + 1) = v17 + 1;
LABEL_33:
          *(this + 10) = v11 | 2;
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
          v9 = *(a2 + 2);
          if (v18 < v9 && *v18 == 24)
          {
            v12 = v18 + 1;
            *(a2 + 1) = v12;
LABEL_39:
            v28 = 0;
            if (v12 >= v9 || (v19 = *v12, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
              if (!result)
              {
                return result;
              }

              v19 = v28;
              v20 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v20 = v12 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 6) = v19;
            *(this + 10) |= 4u;
            if (v20 < v9 && *v20 == 32)
            {
              v13 = v20 + 1;
              *(a2 + 1) = v13;
              goto LABEL_47;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_39;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_22;
      }

      v13 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_47:
      v27 = 0;
      if (v13 >= v9 || (v21 = *v13, (v21 & 0x80000000) != 0))
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
        v22 = v13 + 1;
        *(a2 + 1) = v22;
      }

      *(this + 7) = v21;
      *(this + 10) |= 8u;
      if (v22 < v9 && *v22 == 40)
      {
        v10 = v22 + 1;
        *(a2 + 1) = v10;
LABEL_55:
        v26 = 0;
        if (v10 >= v9 || (v23 = *v10, (v23 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
          if (!result)
          {
            return result;
          }

          v23 = v26;
          v24 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v24 = v10 + 1;
          *(a2 + 1) = v24;
        }

        *(this + 8) = v23;
        *(this + 10) |= 0x10u;
        if (v24 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_55;
    }

LABEL_22:
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

uint64_t awd::metrics::LocationMapMatching::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 28), a2, a4);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v8, a2, a4);
}

uint64_t awd::metrics::LocationMapMatching::ByteSize(awd::metrics::LocationMapMatching *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_38;
  }

  if (*(this + 40))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 10);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_16;
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
    v2 = *(this + 10);
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
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v10 = *(this + 6);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v2 = *(this + 10);
    }

    else
    {
      v11 = 2;
    }

    v3 = (v11 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(this + 7);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 10);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x10) != 0)
  {
LABEL_32:
    v14 = *(this + 8);
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

    v3 = (v15 + v3);
  }

LABEL_38:
  *(this + 9) = v3;
  return v3;
}

void awd::metrics::LocationMapMatching::CheckTypeAndMergeFrom(awd::metrics::LocationMapMatching *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMapMatching::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMapMatching::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMapMatching::CopyFrom(awd::metrics::LocationMapMatching *this, const awd::metrics::LocationMapMatching *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMapMatching::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationMapMatching::Swap(uint64_t this, awd::metrics::LocationMapMatching *a2)
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
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
  }

  return this;
}

double awd::metrics::LocationRealTimeHarvest::SharedCtor(awd::metrics::LocationRealTimeHarvest *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::LocationRealTimeHarvest *awd::metrics::LocationRealTimeHarvest::LocationRealTimeHarvest(awd::metrics::LocationRealTimeHarvest *this, const awd::metrics::LocationRealTimeHarvest *a2)
{
  *this = &unk_2A1D4EDC8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  awd::metrics::LocationRealTimeHarvest::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationRealTimeHarvest::MergeFrom(awd::metrics::LocationRealTimeHarvest *this, const awd::metrics::LocationRealTimeHarvest *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v6 = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 13);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 13) |= 2u;
    *(this + 2) = v7;
    v4 = *(a2 + 13);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 3);
    *(this + 13) |= 4u;
    *(this + 3) = v8;
    v4 = *(a2 + 13);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 4);
    *(this + 13) |= 8u;
    *(this + 4) = v9;
    if ((*(a2 + 13) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 5);
    *(this + 13) |= 0x10u;
    *(this + 5) = v5;
  }
}

void sub_296411D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationRealTimeHarvest::~LocationRealTimeHarvest(awd::metrics::LocationRealTimeHarvest *this)
{
  *this = &unk_2A1D4EDC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EDC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EDC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationRealTimeHarvest::default_instance(awd::metrics::LocationRealTimeHarvest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationRealTimeHarvest::default_instance_;
  if (!awd::metrics::LocationRealTimeHarvest::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationRealTimeHarvest::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationRealTimeHarvest::Clear(uint64_t this)
{
  if (*(this + 52))
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::LocationRealTimeHarvest::MergePartialFromCodedStream(awd::metrics::LocationRealTimeHarvest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
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

        *(this + 13) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v9 = v14 + 1;
          *(a2 + 1) = v9;
LABEL_32:
          v24 = 0;
          if (v9 >= v7 || (v15 = *v9, (v15 & 0x8000000000000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v24);
            if (!result)
            {
              return result;
            }

            v15 = v24;
            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v16 = v9 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 2) = v15;
          *(this + 13) |= 2u;
          if (v16 < v7 && *v16 == 24)
          {
            v10 = v16 + 1;
            *(a2 + 1) = v10;
LABEL_40:
            v24 = 0;
            if (v10 >= v7 || (v17 = *v10, (v17 & 0x8000000000000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v24);
              if (!result)
              {
                return result;
              }

              v17 = v24;
              v18 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v18 = v10 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 3) = v17;
            *(this + 13) |= 4u;
            if (v18 < v7 && *v18 == 32)
            {
              v11 = v18 + 1;
              *(a2 + 1) = v11;
              goto LABEL_48;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_40;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_48:
      if (v11 >= v7 || (v19 = *v11, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v19;
        v20 = v11 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 13) |= 8u;
      if (v20 < v7 && *v20 == 40)
      {
        v8 = v20 + 1;
        *(a2 + 1) = v8;
LABEL_56:
        if (v8 >= v7 || (v21 = *v8, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v21;
          v22 = v8 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 13) |= 0x10u;
        if (v22 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_56;
    }

LABEL_21:
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

uint64_t awd::metrics::LocationRealTimeHarvest::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, v7, a2, a4);
}

uint64_t awd::metrics::LocationRealTimeHarvest::ByteSize(awd::metrics::LocationRealTimeHarvest *this)
{
  LOBYTE(v2) = *(this + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_12;
  }

  if (*(this + 52))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 13);
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((*(this + 52) & 2) != 0)
  {
LABEL_7:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 13);
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
    if ((*(this + 13) & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v2 = *(this + 13);
  if ((v2 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  }

LABEL_12:
  *(this + 12) = v3;
  return v3;
}

void awd::metrics::LocationRealTimeHarvest::CheckTypeAndMergeFrom(awd::metrics::LocationRealTimeHarvest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationRealTimeHarvest::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationRealTimeHarvest::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationRealTimeHarvest::CopyFrom(awd::metrics::LocationRealTimeHarvest *this, const awd::metrics::LocationRealTimeHarvest *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationRealTimeHarvest::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationRealTimeHarvest::Swap(uint64_t this, awd::metrics::LocationRealTimeHarvest *a2)
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
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    LODWORD(v6) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
  }

  return this;
}

double awd::metrics::LocationSecondaryDeviceRequest::SharedCtor(awd::metrics::LocationSecondaryDeviceRequest *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::LocationSecondaryDeviceRequest *awd::metrics::LocationSecondaryDeviceRequest::LocationSecondaryDeviceRequest(awd::metrics::LocationSecondaryDeviceRequest *this, const awd::metrics::LocationSecondaryDeviceRequest *a2)
{
  *this = &unk_2A1D4EE40;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  awd::metrics::LocationSecondaryDeviceRequest::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationSecondaryDeviceRequest::MergeFrom(awd::metrics::LocationSecondaryDeviceRequest *this, const awd::metrics::LocationSecondaryDeviceRequest *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 13);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 13) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 13);
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

  v8 = *(a2 + 4);
  *(this + 13) |= 2u;
  *(this + 4) = v8;
  v4 = *(a2 + 13);
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
  v9 = *(a2 + 5);
  *(this + 13) |= 4u;
  *(this + 5) = v9;
  v4 = *(a2 + 13);
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
  v10 = *(a2 + 6);
  *(this + 13) |= 8u;
  *(this + 6) = v10;
  v4 = *(a2 + 13);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = *(a2 + 8);
    *(this + 13) |= 0x20u;
    *(this + 8) = v12;
    v4 = *(a2 + 13);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v11 = *(a2 + 7);
  *(this + 13) |= 0x10u;
  *(this + 7) = v11;
  v4 = *(a2 + 13);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = *(a2 + 9);
  *(this + 13) |= 0x40u;
  *(this + 9) = v13;
  v4 = *(a2 + 13);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 13) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 13);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 11);
    *(this + 13) |= 0x100u;
    *(this + 11) = v6;
  }
}

void sub_2964126E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationSecondaryDeviceRequest::~LocationSecondaryDeviceRequest(awd::metrics::LocationSecondaryDeviceRequest *this)
{
  *this = &unk_2A1D4EE40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EE40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EE40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationSecondaryDeviceRequest::default_instance(awd::metrics::LocationSecondaryDeviceRequest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationSecondaryDeviceRequest::default_instance_;
  if (!awd::metrics::LocationSecondaryDeviceRequest::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationSecondaryDeviceRequest::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationSecondaryDeviceRequest::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 44) = 0;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::LocationSecondaryDeviceRequest::MergePartialFromCodedStream(awd::metrics::LocationSecondaryDeviceRequest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v6 != 3)
            {
              if (v6 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v10 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_62;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v15 = *(a2 + 1);
            v7 = *(a2 + 2);
LABEL_54:
            if (v15 >= v7 || (v21 = *v15, v21 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v22 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v21;
              v22 = v15 + 1;
              *(a2 + 1) = v22;
            }

            *(this + 13) |= 4u;
            if (v22 < v7 && *v22 == 32)
            {
              v10 = v22 + 1;
              *(a2 + 1) = v10;
LABEL_62:
              if (v10 >= v7 || (v23 = *v10, v23 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                if (!result)
                {
                  return result;
                }

                v24 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 6) = v23;
                v24 = v10 + 1;
                *(a2 + 1) = v24;
              }

              *(this + 13) |= 8u;
              if (v24 < v7 && *v24 == 40)
              {
                v17 = v24 + 1;
                *(a2 + 1) = v17;
                goto LABEL_70;
              }
            }
          }

          else
          {
            if (v6 != 1)
            {
              if (v6 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v9 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
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

            *(this + 13) |= 1u;
            if (v14 < v7 && *v14 == 16)
            {
              v9 = v14 + 1;
              *(a2 + 1) = v9;
LABEL_46:
              if (v9 >= v7 || (v19 = *v9, v19 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                if (!result)
                {
                  return result;
                }

                v20 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 4) = v19;
                v20 = v9 + 1;
                *(a2 + 1) = v20;
              }

              *(this + 13) |= 2u;
              if (v20 < v7 && *v20 == 24)
              {
                v15 = v20 + 1;
                *(a2 + 1) = v15;
                goto LABEL_54;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v6 != 5)
        {
          if (v6 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v11 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_78;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_70:
        if (v17 >= v7 || (v25 = *v17, v25 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v26 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v25;
          v26 = v17 + 1;
          *(a2 + 1) = v26;
        }

        *(this + 13) |= 0x10u;
        if (v26 < v7 && *v26 == 48)
        {
          v11 = v26 + 1;
          *(a2 + 1) = v11;
LABEL_78:
          if (v11 >= v7 || (v27 = *v11, v27 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v28 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v27;
            v28 = v11 + 1;
            *(a2 + 1) = v28;
          }

          *(this + 13) |= 0x20u;
          if (v28 < v7 && *v28 == 56)
          {
            v16 = v28 + 1;
            *(a2 + 1) = v16;
LABEL_86:
            if (v16 >= v7 || (v29 = *v16, v29 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
              if (!result)
              {
                return result;
              }

              v30 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 9) = v29;
              v30 = v16 + 1;
              *(a2 + 1) = v30;
            }

            *(this + 13) |= 0x40u;
            if (v30 < v7 && *v30 == 64)
            {
              v18 = v30 + 1;
              *(a2 + 1) = v18;
              goto LABEL_94;
            }
          }
        }
      }

      if (v6 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_86;
      }

      if (v6 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v18 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_94:
      if (v18 >= v7 || (v31 = *v18, v31 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
        if (!result)
        {
          return result;
        }

        v32 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 10) = v31;
        v32 = v18 + 1;
        *(a2 + 1) = v32;
      }

      *(this + 13) |= 0x80u;
      if (v32 < v7 && *v32 == 72)
      {
        v8 = v32 + 1;
        *(a2 + 1) = v8;
LABEL_102:
        if (v8 >= v7 || (v33 = *v8, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v33;
          v34 = v8 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 13) |= 0x100u;
        if (v34 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 9 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_102;
    }

LABEL_37:
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

uint64_t awd::metrics::LocationSecondaryDeviceRequest::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[13];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[13];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[13];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[13];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[13];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[13];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[10], a2, a4);
    if ((v5[13] & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[13];
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
  v7 = v5[11];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v7, a2, a4);
}

uint64_t awd::metrics::LocationSecondaryDeviceRequest::ByteSize(awd::metrics::LocationSecondaryDeviceRequest *this)
{
  v2 = *(this + 13);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 13);
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
    v2 = *(this + 13);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_12:
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
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
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
    v2 = *(this + 13);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_28:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
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
  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_36:
  v14 = *(this + 9);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x80) == 0)
  {
LABEL_18:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

LABEL_40:
  v16 = *(this + 10);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v17 = 2;
  }

  v3 = (v17 + v3);
  if ((v2 & 0x100) != 0)
  {
LABEL_44:
    v18 = *(this + 11);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    }

    else
    {
      v19 = 2;
    }

    v3 = (v19 + v3);
  }

LABEL_48:
  *(this + 12) = v3;
  return v3;
}

void awd::metrics::LocationSecondaryDeviceRequest::CheckTypeAndMergeFrom(awd::metrics::LocationSecondaryDeviceRequest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationSecondaryDeviceRequest::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationSecondaryDeviceRequest::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationSecondaryDeviceRequest::CopyFrom(awd::metrics::LocationSecondaryDeviceRequest *this, const awd::metrics::LocationSecondaryDeviceRequest *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationSecondaryDeviceRequest::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationSecondaryDeviceRequest::Swap(uint64_t this, awd::metrics::LocationSecondaryDeviceRequest *a2)
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
    LODWORD(v2) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
  }

  return this;
}

uint64_t awd::metrics::CompassSession_Rotation::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::CompassSession_Rotation *awd::metrics::CompassSession_Rotation::CompassSession_Rotation(awd::metrics::CompassSession_Rotation *this, const awd::metrics::CompassSession_Rotation *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4EEB8;
  *(this + 6) = 0;
  awd::metrics::CompassSession_Rotation::MergeFrom(this, a2);
  return this;
}

float awd::metrics::CompassSession_Rotation::MergeFrom(awd::metrics::CompassSession_Rotation *this, const awd::metrics::CompassSession_Rotation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      result = *(a2 + 2);
      *(this + 6) |= 1u;
      *(this + 2) = result;
      v5 = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 3);
    *(this + 6) |= 2u;
    *(this + 3) = result;
    if ((*(a2 + 6) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 4);
    *(this + 6) |= 4u;
    *(this + 4) = result;
  }

  return result;
}

void sub_296413338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CompassSession_Rotation::~CompassSession_Rotation(awd::metrics::CompassSession_Rotation *this)
{
  *this = &unk_2A1D4EEB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EEB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EEB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::CompassSession_Rotation::default_instance(awd::metrics::CompassSession_Rotation *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CompassSession_Rotation::default_instance_;
  if (!awd::metrics::CompassSession_Rotation::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::CompassSession_Rotation::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::CompassSession_Rotation::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CompassSession_Rotation::MergePartialFromCodedStream(awd::metrics::CompassSession_Rotation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v7 != 5)
        {
          goto LABEL_20;
        }

LABEL_23:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v11) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v11;
        *(this + 6) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || v7 != 5)
      {
        goto LABEL_20;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v13) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = v13;
      *(this + 6) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 21)
      {
        *(a2 + 1) = v8 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v12;
        *(this + 6) |= 2u;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 29)
        {
          *(a2 + 1) = v9 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v7 == 5)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::CompassSession_Rotation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 24);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 12), a3);
    if ((*(v4 + 24) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 8), a3);
  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v6 = *(v4 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, v6, a3);
}

uint64_t awd::metrics::CompassSession_Rotation::ByteSize(awd::metrics::CompassSession_Rotation *this)
{
  v1 = *(this + 24);
  if (*(this + 24))
  {
    v2 = ((v1 << 31) >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 5) = v1;
  return v1;
}

float awd::metrics::CompassSession_Rotation::CheckTypeAndMergeFrom(awd::metrics::CompassSession_Rotation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::CompassSession_Rotation::CheckTypeAndMergeFrom();
  }

  return awd::metrics::CompassSession_Rotation::MergeFrom(this, lpsrc);
}

float awd::metrics::CompassSession_Rotation::CopyFrom(awd::metrics::CompassSession_Rotation *this, const awd::metrics::CompassSession_Rotation *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::CompassSession_Rotation::MergeFrom(this, a2);
  }

  return result;
}

float awd::metrics::CompassSession_Rotation::Swap(awd::metrics::CompassSession_Rotation *this, awd::metrics::CompassSession_Rotation *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
  }

  return result;
}

double awd::metrics::CompassSession::SharedCtor(awd::metrics::CompassSession *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0xFFFFFFFF00000000;
  *(this + 18) = 0;
  *(this + 212) = 0;
  *(this + 204) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0;
  return result;
}

awd::metrics::CompassSession *awd::metrics::CompassSession::CompassSession(awd::metrics::CompassSession *this, const awd::metrics::CompassSession *a2)
{
  *this = &unk_2A1D4EF30;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0xFFFFFFFF00000000;
  *(this + 18) = 0;
  *(this + 212) = 0;
  *(this + 204) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0;
  awd::metrics::CompassSession::MergeFrom(this, a2);
  return this;
}

void awd::metrics::CompassSession::MergeFrom(awd::metrics::CompassSession *this, const awd::metrics::CompassSession *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v52);
  }

  v4 = *(a2 + 53);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v14 = *(a2 + 1);
    *(this + 53) |= 1u;
    *(this + 1) = v14;
    v4 = *(a2 + 53);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_62;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v15 = *(a2 + 2);
  *(this + 53) |= 2u;
  v16 = *(this + 2);
  if (v16 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v16, v15);
  v4 = *(a2 + 53);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_63;
  }

LABEL_62:
  v17 = *(a2 + 3);
  *(this + 53) |= 4u;
  *(this + 3) = v17;
  v4 = *(a2 + 53);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

LABEL_63:
  v18 = *(a2 + 8);
  *(this + 53) |= 8u;
  *(this + 8) = v18;
  v4 = *(a2 + 53);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_65:
    v20 = *(a2 + 10);
    *(this + 53) |= 0x20u;
    *(this + 10) = v20;
    v4 = *(a2 + 53);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_66;
  }

LABEL_64:
  v19 = *(a2 + 9);
  *(this + 53) |= 0x10u;
  *(this + 9) = v19;
  v4 = *(a2 + 53);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_65;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_66:
  v21 = *(a2 + 11);
  *(this + 53) |= 0x40u;
  *(this + 11) = v21;
  v4 = *(a2 + 53);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 12);
    *(this + 53) |= 0x80u;
    *(this + 12) = v5;
    v4 = *(a2 + 53);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 13);
    *(this + 53) |= 0x100u;
    *(this + 13) = v6;
    v4 = *(a2 + 53);
  }

  if ((v4 & 0x200) != 0)
  {
    *(this + 53) |= 0x200u;
    v22 = *(this + 7);
    if (!v22)
    {
      operator new();
    }

    v23 = *(a2 + 7);
    if (!v23)
    {
      v23 = *(awd::metrics::CompassSession::default_instance_ + 56);
    }

    awd::metrics::CompassSession_Rotation::MergeFrom(v22, v23);
    v4 = *(a2 + 53);
    if ((v4 & 0x400) == 0)
    {
LABEL_18:
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_78;
    }
  }

  else if ((v4 & 0x400) == 0)
  {
    goto LABEL_18;
  }

  *(this + 53) |= 0x400u;
  v24 = *(this + 8);
  if (!v24)
  {
    operator new();
  }

  v25 = *(a2 + 8);
  if (!v25)
  {
    v25 = *(awd::metrics::CompassSession::default_instance_ + 64);
  }

  awd::metrics::CompassSession_Rotation::MergeFrom(v24, v25);
  v4 = *(a2 + 53);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_83;
  }

LABEL_78:
  *(this + 53) |= 0x800u;
  v26 = *(this + 9);
  if (!v26)
  {
    operator new();
  }

  v27 = *(a2 + 9);
  if (!v27)
  {
    v27 = *(awd::metrics::CompassSession::default_instance_ + 72);
  }

  awd::metrics::CompassSession_Rotation::MergeFrom(v26, v27);
  v4 = *(a2 + 53);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_88;
  }

LABEL_83:
  *(this + 53) |= 0x1000u;
  v28 = *(this + 10);
  if (!v28)
  {
    operator new();
  }

  v29 = *(a2 + 10);
  if (!v29)
  {
    v29 = *(awd::metrics::CompassSession::default_instance_ + 80);
  }

  awd::metrics::CompassSession_Rotation::MergeFrom(v28, v29);
  v4 = *(a2 + 53);
  if ((v4 & 0x2000) == 0)
  {
LABEL_21:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_93;
  }

LABEL_88:
  *(this + 53) |= 0x2000u;
  v30 = *(this + 11);
  if (!v30)
  {
    operator new();
  }

  v31 = *(a2 + 11);
  if (!v31)
  {
    v31 = *(awd::metrics::CompassSession::default_instance_ + 88);
  }

  awd::metrics::CompassSession_Rotation::MergeFrom(v30, v31);
  v4 = *(a2 + 53);
  if ((v4 & 0x4000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_93:
  *(this + 53) |= 0x4000u;
  v32 = *(this + 12);
  if (!v32)
  {
    operator new();
  }

  v33 = *(a2 + 12);
  if (!v33)
  {
    v33 = *(awd::metrics::CompassSession::default_instance_ + 96);
  }

  awd::metrics::CompassSession_Rotation::MergeFrom(v32, v33);
  v4 = *(a2 + 53);
  if ((v4 & 0x8000) != 0)
  {
LABEL_23:
    v7 = *(a2 + 26);
    *(this + 53) |= 0x8000u;
    *(this + 26) = v7;
    v4 = *(a2 + 53);
  }

LABEL_24:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_34;
  }

  if ((v4 & 0x10000) != 0)
  {
    v34 = *(a2 + 27);
    *(this + 53) |= 0x10000u;
    *(this + 27) = v34;
    v4 = *(a2 + 53);
    if ((v4 & 0x20000) == 0)
    {
LABEL_27:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_101;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_27;
  }

  v35 = *(a2 + 28);
  *(this + 53) |= 0x20000u;
  *(this + 28) = v35;
  v4 = *(a2 + 53);
  if ((v4 & 0x40000) == 0)
  {
LABEL_28:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_102;
  }

LABEL_101:
  v36 = *(a2 + 29);
  *(this + 53) |= 0x40000u;
  *(this + 29) = v36;
  v4 = *(a2 + 53);
  if ((v4 & 0x80000) == 0)
  {
LABEL_29:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_103;
  }

LABEL_102:
  v37 = *(a2 + 30);
  *(this + 53) |= 0x80000u;
  *(this + 30) = v37;
  v4 = *(a2 + 53);
  if ((v4 & 0x100000) == 0)
  {
LABEL_30:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_104;
  }

LABEL_103:
  v38 = *(a2 + 31);
  *(this + 53) |= 0x100000u;
  *(this + 31) = v38;
  v4 = *(a2 + 53);
  if ((v4 & 0x200000) == 0)
  {
LABEL_31:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_105;
  }

LABEL_104:
  v39 = *(a2 + 34);
  *(this + 53) |= 0x200000u;
  *(this + 34) = v39;
  v4 = *(a2 + 53);
  if ((v4 & 0x400000) == 0)
  {
LABEL_32:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_105:
  v40 = *(a2 + 16);
  *(this + 53) |= 0x400000u;
  *(this + 16) = v40;
  v4 = *(a2 + 53);
  if ((v4 & 0x800000) != 0)
  {
LABEL_33:
    v8 = *(a2 + 18);
    *(this + 53) |= 0x800000u;
    *(this + 18) = v8;
    v4 = *(a2 + 53);
  }

LABEL_34:
  if (!HIBYTE(v4))
  {
    goto LABEL_45;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v9 = *(a2 + 35);
    if ((v9 + 1) >= 8)
    {
      awd::metrics::CompassSession::MergeFrom();
    }

    *(this + 53) |= 0x1000000u;
    *(this + 35) = v9;
    v4 = *(a2 + 53);
  }

  if ((v4 & 0x2000000) != 0)
  {
    v45 = *(a2 + 38);
    *(this + 53) |= 0x2000000u;
    *(this + 38) = v45;
    v4 = *(a2 + 53);
    if ((v4 & 0x4000000) == 0)
    {
LABEL_40:
      if ((v4 & 0x8000000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_114;
    }
  }

  else if ((v4 & 0x4000000) == 0)
  {
    goto LABEL_40;
  }

  v46 = *(a2 + 39);
  *(this + 53) |= 0x4000000u;
  *(this + 39) = v46;
  v4 = *(a2 + 53);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_41:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_115;
  }

LABEL_114:
  v47 = *(a2 + 40);
  *(this + 53) |= 0x8000000u;
  *(this + 40) = v47;
  v4 = *(a2 + 53);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_42:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_116;
  }

LABEL_115:
  v48 = *(a2 + 41);
  *(this + 53) |= 0x10000000u;
  *(this + 41) = v48;
  v4 = *(a2 + 53);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_43:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_117:
    v50 = *(a2 + 43);
    *(this + 53) |= 0x40000000u;
    *(this + 43) = v50;
    if ((*(a2 + 53) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_118;
  }

LABEL_116:
  v49 = *(a2 + 42);
  *(this + 53) |= 0x20000000u;
  *(this + 42) = v49;
  v4 = *(a2 + 53);
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_117;
  }

LABEL_44:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_118:
  v51 = *(a2 + 44);
  *(this + 53) |= 0x80000000;
  *(this + 44) = v51;
LABEL_45:
  LOBYTE(v10) = *(a2 + 216);
  if (!v10)
  {
    return;
  }

  if (*(a2 + 216))
  {
    v11 = *(a2 + 45);
    *(this + 54) |= 1u;
    *(this + 45) = v11;
    v10 = *(a2 + 54);
  }

  if ((v10 & 2) != 0)
  {
    v12 = *(a2 + 46);
    if (v12 >= 3)
    {
      awd::metrics::CompassSession::MergeFrom();
    }

    *(this + 54) |= 2u;
    *(this + 46) = v12;
    v10 = *(a2 + 54);
  }

  if ((v10 & 4) != 0)
  {
    v41 = *(a2 + 47);
    *(this + 54) |= 4u;
    *(this + 47) = v41;
    v10 = *(a2 + 54);
    if ((v10 & 8) == 0)
    {
LABEL_53:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_109;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_53;
  }

  v42 = *(a2 + 48);
  *(this + 54) |= 8u;
  *(this + 48) = v42;
  v10 = *(a2 + 54);
  if ((v10 & 0x10) == 0)
  {
LABEL_54:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_110;
  }

LABEL_109:
  v43 = *(a2 + 49);
  *(this + 54) |= 0x10u;
  *(this + 49) = v43;
  v10 = *(a2 + 54);
  if ((v10 & 0x20) == 0)
  {
LABEL_55:
    if ((v10 & 0x40) == 0)
    {
      return;
    }

    goto LABEL_56;
  }

LABEL_110:
  v44 = *(a2 + 200);
  *(this + 54) |= 0x20u;
  *(this + 200) = v44;
  if ((*(a2 + 54) & 0x40) != 0)
  {
LABEL_56:
    v13 = *(a2 + 51);
    *(this + 54) |= 0x40u;
    *(this + 51) = v13;
  }
}

void sub_29641416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CompassSession::~CompassSession(awd::metrics::CompassSession *this)
{
  *this = &unk_2A1D4EF30;
  awd::metrics::CompassSession::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EF30;
  awd::metrics::CompassSession::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EF30;
  awd::metrics::CompassSession::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::CompassSession::SharedDtor(void *this)
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

  if (awd::metrics::CompassSession::default_instance_ != v1)
  {
    v4 = v1[7];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[8];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[9];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[10];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[11];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    this = v1[12];
    if (this)
    {
      v9 = *(*this + 8);

      return v9();
    }
  }

  return this;
}

uint64_t awd::metrics::CompassSession::default_instance(awd::metrics::CompassSession *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CompassSession::default_instance_;
  if (!awd::metrics::CompassSession::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::CompassSession::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::CompassSession::Clear(uint64_t this)
{
  v1 = *(this + 212);
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
    *(this + 48) = 0;
    *(this + 40) = 0;
    v1 = *(this + 212);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    if ((v1 & 0x200) != 0)
    {
      v3 = *(this + 56);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 24) = 0;
        v1 = *(this + 212);
      }
    }

    if ((v1 & 0x400) != 0)
    {
      v4 = *(this + 64);
      if (v4)
      {
        if (*(v4 + 24))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 24) = 0;
        v1 = *(this + 212);
      }
    }

    if ((v1 & 0x800) != 0)
    {
      v5 = *(this + 72);
      if (v5)
      {
        if (*(v5 + 24))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 24) = 0;
        v1 = *(this + 212);
      }
    }

    if ((v1 & 0x1000) != 0)
    {
      v6 = *(this + 80);
      if (v6)
      {
        if (*(v6 + 24))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
        }

        *(v6 + 24) = 0;
        v1 = *(this + 212);
      }
    }

    if ((v1 & 0x2000) != 0)
    {
      v7 = *(this + 88);
      if (v7)
      {
        if (*(v7 + 24))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
        }

        *(v7 + 24) = 0;
        v1 = *(this + 212);
      }
    }

    if ((v1 & 0x4000) != 0)
    {
      v8 = *(this + 96);
      if (v8)
      {
        if (*(v8 + 24))
        {
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
        }

        *(v8 + 24) = 0;
        v1 = *(this + 212);
      }
    }

    *(this + 104) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 144) = 0;
    *(this + 108) = 0u;
    *(this + 124) = 0u;
  }

  if (HIBYTE(v1))
  {
    *(this + 140) = -1;
    *(this + 160) = 0;
    *(this + 168) = 0;
    *(this + 152) = 0;
    *(this + 176) = 0;
  }

  if (*(this + 216))
  {
    *(this + 204) = 0;
    *(this + 188) = 0;
    *(this + 180) = 0;
    *(this + 193) = 0;
  }

  *(this + 212) = 0;
  return this;
}

uint64_t awd::metrics::CompassSession::MergePartialFromCodedStream(awd::metrics::CompassSession *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_95;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_95:
        if (v25 >= v7 || (v41 = *v25, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v41;
          v42 = v25 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 53) |= 4u;
        if (v42 >= v7 || *v42 != 56)
        {
          continue;
        }

        v26 = v42 + 1;
        *(a2 + 1) = v26;
LABEL_103:
        v137 = 0;
        if (v26 >= v7 || (v43 = *v26, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v137);
          if (!result)
          {
            return result;
          }

          v43 = v137;
          v44 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v44 = v26 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 8) = v43;
        *(this + 53) |= 8u;
        if (v44 >= v7 || *v44 != 64)
        {
          continue;
        }

        v29 = v44 + 1;
        *(a2 + 1) = v29;
LABEL_111:
        v137 = 0;
        if (v29 >= v7 || (v45 = *v29, (v45 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v137);
          if (!result)
          {
            return result;
          }

          v45 = v137;
          v46 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v46 = v29 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 10) = v45;
        v27 = *(this + 53) | 0x20;
        *(this + 53) = v27;
        if (v46 >= v7 || *v46 != 74)
        {
          continue;
        }

        *(a2 + 1) = v46 + 1;
LABEL_119:
        *(this + 53) = v27 | 2;
        if (*(this + 2) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v47 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v47 >= v17 || *v47 != 80)
        {
          continue;
        }

        v28 = v47 + 1;
        *(a2 + 1) = v28;
LABEL_125:
        v137 = 0;
        if (v28 >= v17 || (v48 = *v28, (v48 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v137);
          if (!result)
          {
            return result;
          }

          v48 = v137;
          v49 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v49 = v28 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 9) = v48;
        *(this + 53) |= 0x10u;
        if (v49 >= v17 || *v49 != 88)
        {
          continue;
        }

        v32 = v49 + 1;
        *(a2 + 1) = v32;
LABEL_133:
        v137 = 0;
        if (v32 >= v17 || (v50 = *v32, (v50 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v137);
          if (!result)
          {
            return result;
          }

          v50 = v137;
          v51 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v51 = v32 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 11) = v50;
        *(this + 53) |= 0x40u;
        if (v51 >= v17 || *v51 != 96)
        {
          continue;
        }

        v33 = v51 + 1;
        *(a2 + 1) = v33;
LABEL_141:
        v137 = 0;
        if (v33 >= v17 || (v52 = *v33, (v52 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v137);
          if (!result)
          {
            return result;
          }

          v52 = v137;
          v53 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v53 = v33 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 12) = v52;
        *(this + 53) |= 0x80u;
        if (v53 >= v17 || *v53 != 104)
        {
          continue;
        }

        v18 = v53 + 1;
        *(a2 + 1) = v18;
LABEL_149:
        v137 = 0;
        if (v18 >= v17 || (v54 = *v18, (v54 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v137);
          if (!result)
          {
            return result;
          }

          v54 = v137;
          v55 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v55 = v18 + 1;
          *(a2 + 1) = v55;
        }

        *(this + 13) = v54;
        v35 = *(this + 53) | 0x100;
        *(this + 53) = v35;
        if (v55 >= v17 || *v55 != 114)
        {
          continue;
        }

        *(a2 + 1) = v55 + 1;
LABEL_157:
        *(this + 53) = v35 | 0x200;
        v56 = *(this + 7);
        if (!v56)
        {
          operator new();
        }

        v137 = 0;
        v57 = *(a2 + 1);
        if (v57 >= *(a2 + 2) || *v57 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v137))
          {
            return 0;
          }
        }

        else
        {
          v137 = *v57;
          *(a2 + 1) = v57 + 1;
        }

        v58 = *(a2 + 14);
        v59 = *(a2 + 15);
        *(a2 + 14) = v58 + 1;
        if (v58 >= v59)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::CompassSession_Rotation::MergePartialFromCodedStream(v56, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v60 = *(a2 + 14);
        v61 = __OFSUB__(v60, 1);
        v62 = v60 - 1;
        if (v62 < 0 == v61)
        {
          *(a2 + 14) = v62;
        }

        v63 = *(a2 + 1);
        if (v63 >= *(a2 + 2) || *v63 != 122)
        {
          continue;
        }

        *(a2 + 1) = v63 + 1;
LABEL_171:
        *(this + 53) |= 0x400u;
        v64 = *(this + 8);
        if (!v64)
        {
          operator new();
        }

        v137 = 0;
        v65 = *(a2 + 1);
        if (v65 >= *(a2 + 2) || *v65 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v137))
          {
            return 0;
          }
        }

        else
        {
          v137 = *v65;
          *(a2 + 1) = v65 + 1;
        }

        v66 = *(a2 + 14);
        v67 = *(a2 + 15);
        *(a2 + 14) = v66 + 1;
        if (v66 >= v67)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::CompassSession_Rotation::MergePartialFromCodedStream(v64, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v68 = *(a2 + 14);
        v61 = __OFSUB__(v68, 1);
        v69 = v68 - 1;
        if (v69 < 0 == v61)
        {
          *(a2 + 14) = v69;
        }

        v70 = *(a2 + 1);
        if (*(a2 + 4) - v70 <= 1 || *v70 != 130 || v70[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v70 + 2;
LABEL_186:
        *(this + 53) |= 0x800u;
        v71 = *(this + 9);
        if (!v71)
        {
          operator new();
        }

        v137 = 0;
        v72 = *(a2 + 1);
        if (v72 >= *(a2 + 2) || *v72 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v137))
          {
            return 0;
          }
        }

        else
        {
          v137 = *v72;
          *(a2 + 1) = v72 + 1;
        }

        v73 = *(a2 + 14);
        v74 = *(a2 + 15);
        *(a2 + 14) = v73 + 1;
        if (v73 >= v74)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::CompassSession_Rotation::MergePartialFromCodedStream(v71, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v75 = *(a2 + 14);
        v61 = __OFSUB__(v75, 1);
        v76 = v75 - 1;
        if (v76 < 0 == v61)
        {
          *(a2 + 14) = v76;
        }

        v77 = *(a2 + 1);
        if (*(a2 + 4) - v77 <= 1 || *v77 != 138 || v77[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v77 + 2;
LABEL_201:
        *(this + 53) |= 0x1000u;
        v78 = *(this + 10);
        if (!v78)
        {
          operator new();
        }

        v137 = 0;
        v79 = *(a2 + 1);
        if (v79 >= *(a2 + 2) || *v79 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v137))
          {
            return 0;
          }
        }

        else
        {
          v137 = *v79;
          *(a2 + 1) = v79 + 1;
        }

        v80 = *(a2 + 14);
        v81 = *(a2 + 15);
        *(a2 + 14) = v80 + 1;
        if (v80 >= v81)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::CompassSession_Rotation::MergePartialFromCodedStream(v78, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v82 = *(a2 + 14);
        v61 = __OFSUB__(v82, 1);
        v83 = v82 - 1;
        if (v83 < 0 == v61)
        {
          *(a2 + 14) = v83;
        }

        v84 = *(a2 + 1);
        if (*(a2 + 4) - v84 <= 1 || *v84 != 146 || v84[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v84 + 2;
LABEL_216:
        *(this + 53) |= 0x2000u;
        v85 = *(this + 11);
        if (!v85)
        {
          operator new();
        }

        v137 = 0;
        v86 = *(a2 + 1);
        if (v86 >= *(a2 + 2) || *v86 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v137))
          {
            return 0;
          }
        }

        else
        {
          v137 = *v86;
          *(a2 + 1) = v86 + 1;
        }

        v87 = *(a2 + 14);
        v88 = *(a2 + 15);
        *(a2 + 14) = v87 + 1;
        if (v87 >= v88)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::CompassSession_Rotation::MergePartialFromCodedStream(v85, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v89 = *(a2 + 14);
        v61 = __OFSUB__(v89, 1);
        v90 = v89 - 1;
        if (v90 < 0 == v61)
        {
          *(a2 + 14) = v90;
        }

        v91 = *(a2 + 1);
        if (*(a2 + 4) - v91 <= 1 || *v91 != 154 || v91[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v91 + 2;
LABEL_231:
        *(this + 53) |= 0x4000u;
        v92 = *(this + 12);
        if (!v92)
        {
          operator new();
        }

        v137 = 0;
        v93 = *(a2 + 1);
        if (v93 >= *(a2 + 2) || *v93 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v137))
          {
            return 0;
          }
        }

        else
        {
          v137 = *v93;
          *(a2 + 1) = v93 + 1;
        }

        v94 = *(a2 + 14);
        v95 = *(a2 + 15);
        *(a2 + 14) = v94 + 1;
        if (v94 >= v95)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::CompassSession_Rotation::MergePartialFromCodedStream(v92, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v96 = *(a2 + 14);
        v61 = __OFSUB__(v96, 1);
        v97 = v96 - 1;
        if (v97 < 0 == v61)
        {
          *(a2 + 14) = v97;
        }

        v98 = *(a2 + 1);
        if (*(a2 + 4) - v98 <= 1 || *v98 != 165 || v98[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v98 + 2;
LABEL_246:
        v137 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v137) & 1) == 0)
        {
          return 0;
        }

        *(this + 26) = v137;
        *(this + 53) |= 0x8000u;
        v99 = *(a2 + 1);
        if (*(a2 + 4) - v99 < 2 || *v99 != 173 || v99[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v99 + 2;
LABEL_251:
        v137 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v137) & 1) == 0)
        {
          return 0;
        }

        *(this + 27) = v137;
        *(this + 53) |= 0x10000u;
        v100 = *(a2 + 1);
        if (*(a2 + 4) - v100 < 2 || *v100 != 181 || v100[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v100 + 2;
LABEL_256:
        v137 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v137) & 1) == 0)
        {
          return 0;
        }

        *(this + 28) = v137;
        *(this + 53) |= 0x20000u;
        v101 = *(a2 + 1);
        if (*(a2 + 4) - v101 < 2 || *v101 != 189 || v101[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v101 + 2;
LABEL_261:
        v137 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v137) & 1) == 0)
        {
          return 0;
        }

        *(this + 29) = v137;
        *(this + 53) |= 0x40000u;
        v102 = *(a2 + 1);
        if (*(a2 + 4) - v102 < 2 || *v102 != 197 || v102[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v102 + 2;
LABEL_266:
        v137 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v137) & 1) == 0)
        {
          return 0;
        }

        *(this + 30) = v137;
        *(this + 53) |= 0x80000u;
        v103 = *(a2 + 1);
        if (*(a2 + 4) - v103 < 2 || *v103 != 205 || v103[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v103 + 2;
LABEL_271:
        v137 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v137) & 1) == 0)
        {
          return 0;
        }

        *(this + 31) = v137;
        *(this + 53) |= 0x100000u;
        v104 = *(a2 + 1);
        if (*(a2 + 4) - v104 < 2 || *v104 != 213 || v104[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v104 + 2;
LABEL_276:
        v137 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v137) & 1) == 0)
        {
          return 0;
        }

        *(this + 34) = v137;
        *(this + 53) |= 0x200000u;
        v105 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v19 - v105 < 2 || *v105 != 216 || v105[1] != 1)
        {
          continue;
        }

        v22 = (v105 + 2);
        *(a2 + 1) = v22;
LABEL_281:
        if (v22 >= v19 || (v106 = *v22, v106 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v107 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v106;
          v107 = (v22 + 1);
          *(a2 + 1) = v107;
        }

        *(this + 53) |= 0x400000u;
        if (v19 - v107 < 2 || *v107 != 224 || v107[1] != 1)
        {
          continue;
        }

        v20 = (v107 + 2);
        *(a2 + 1) = v20;
LABEL_290:
        if (v20 >= v19 || (v108 = *v20, v108 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v109 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v108;
          v109 = (v20 + 1);
          *(a2 + 1) = v109;
        }

        *(this + 53) |= 0x800000u;
        if (v19 - v109 < 2 || *v109 != 232 || v109[1] != 1)
        {
          continue;
        }

        v30 = (v109 + 2);
        *(a2 + 1) = v30;
LABEL_299:
        v137 = 0;
        if (v30 >= v19 || (v110 = *v30, (v110 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v137);
          if (!result)
          {
            return result;
          }

          v110 = v137;
        }

        else
        {
          *(a2 + 1) = v30 + 1;
        }

        if (v110 + 1 <= 7)
        {
          *(this + 53) |= 0x1000000u;
          *(this + 35) = v110;
        }

        v111 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v13 - v111 < 2 || *v111 != 240 || v111[1] != 1)
        {
          continue;
        }

        v14 = (v111 + 2);
        *(a2 + 1) = v14;
LABEL_310:
        if (v14 >= v13 || (v112 = *v14, v112 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 38);
          if (!result)
          {
            return result;
          }

          v113 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 38) = v112;
          v113 = (v14 + 1);
          *(a2 + 1) = v113;
        }

        *(this + 53) |= 0x2000000u;
        if (v13 - v113 < 2 || *v113 != 248 || v113[1] != 1)
        {
          continue;
        }

        v38 = (v113 + 2);
        *(a2 + 1) = v38;
LABEL_319:
        if (v38 >= v13 || (v114 = *v38, v114 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 39);
          if (!result)
          {
            return result;
          }

          v115 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 39) = v114;
          v115 = (v38 + 1);
          *(a2 + 1) = v115;
        }

        *(this + 53) |= 0x4000000u;
        if (v13 - v115 < 2 || *v115 != 128 || v115[1] != 2)
        {
          continue;
        }

        v37 = (v115 + 2);
        *(a2 + 1) = v37;
LABEL_328:
        if (v37 >= v13 || (v116 = *v37, v116 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 40);
          if (!result)
          {
            return result;
          }

          v117 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 40) = v116;
          v117 = (v37 + 1);
          *(a2 + 1) = v117;
        }

        *(this + 53) |= 0x8000000u;
        if (v13 - v117 < 2 || *v117 != 136 || v117[1] != 2)
        {
          continue;
        }

        v21 = (v117 + 2);
        *(a2 + 1) = v21;
LABEL_337:
        if (v21 >= v13 || (v118 = *v21, v118 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 41);
          if (!result)
          {
            return result;
          }

          v119 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 41) = v118;
          v119 = (v21 + 1);
          *(a2 + 1) = v119;
        }

        *(this + 53) |= 0x10000000u;
        if (v13 - v119 < 2 || *v119 != 144 || v119[1] != 2)
        {
          continue;
        }

        v23 = (v119 + 2);
        *(a2 + 1) = v23;
LABEL_346:
        if (v23 >= v13 || (v120 = *v23, v120 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 42);
          if (!result)
          {
            return result;
          }

          v121 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 42) = v120;
          v121 = (v23 + 1);
          *(a2 + 1) = v121;
        }

        *(this + 53) |= 0x20000000u;
        if (v13 - v121 < 2 || *v121 != 152 || v121[1] != 2)
        {
          continue;
        }

        v34 = (v121 + 2);
        *(a2 + 1) = v34;
LABEL_355:
        if (v34 >= v13 || (v122 = *v34, v122 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 43);
          if (!result)
          {
            return result;
          }

          v123 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 43) = v122;
          v123 = (v34 + 1);
          *(a2 + 1) = v123;
        }

        *(this + 53) |= 0x40000000u;
        if (v13 - v123 < 2 || *v123 != 160 || v123[1] != 2)
        {
          continue;
        }

        v24 = (v123 + 2);
        *(a2 + 1) = v24;
LABEL_364:
        if (v24 >= v13 || (v124 = *v24, v124 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 44);
          if (!result)
          {
            return result;
          }

          v125 = *(a2 + 1);
          v13 = *(a2 + 2);
        }

        else
        {
          *(this + 44) = v124;
          v125 = (v24 + 1);
          *(a2 + 1) = v125;
        }

        *(this + 53) |= 0x80000000;
        if (v13 - v125 < 2 || *v125 != 173 || v125[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v125 + 2;
LABEL_373:
        v137 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v137) & 1) == 0)
        {
          return 0;
        }

        *(this + 45) = v137;
        *(this + 54) |= 1u;
        v126 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v15 - v126 < 2 || *v126 != 176 || v126[1] != 2)
        {
          continue;
        }

        v16 = (v126 + 2);
        *(a2 + 1) = v16;
LABEL_378:
        v137 = 0;
        if (v16 >= v15 || (v127 = *v16, (v127 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v137);
          if (!result)
          {
            return result;
          }

          v127 = v137;
        }

        else
        {
          *(a2 + 1) = v16 + 1;
        }

        if (v127 <= 2)
        {
          *(this + 54) |= 2u;
          *(this + 46) = v127;
        }

        v128 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v11 - v128 < 2 || *v128 != 184 || v128[1] != 2)
        {
          continue;
        }

        v36 = (v128 + 2);
        *(a2 + 1) = v36;
LABEL_389:
        v137 = 0;
        if (v36 >= v11 || (v129 = *v36, (v129 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v137);
          if (!result)
          {
            return result;
          }

          v129 = v137;
          v130 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v130 = (v36 + 1);
          *(a2 + 1) = v130;
        }

        *(this + 47) = v129;
        *(this + 54) |= 4u;
        if (v11 - v130 < 2 || *v130 != 192 || v130[1] != 2)
        {
          continue;
        }

        v39 = (v130 + 2);
        *(a2 + 1) = v39;
LABEL_398:
        if (v39 >= v11 || (v131 = *v39, v131 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
          if (!result)
          {
            return result;
          }

          v132 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 48) = v131;
          v132 = (v39 + 1);
          *(a2 + 1) = v132;
        }

        *(this + 54) |= 8u;
        if (v11 - v132 < 2 || *v132 != 200 || v132[1] != 2)
        {
          continue;
        }

        v12 = (v132 + 2);
        *(a2 + 1) = v12;
LABEL_407:
        if (v12 >= v11 || (v133 = *v12, v133 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 49);
          if (!result)
          {
            return result;
          }

          v134 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(this + 49) = v133;
          v134 = (v12 + 1);
          *(a2 + 1) = v134;
        }

        *(this + 54) |= 0x10u;
        if (v11 - v134 < 2 || *v134 != 208 || v134[1] != 2)
        {
          continue;
        }

        v31 = (v134 + 2);
        *(a2 + 1) = v31;
LABEL_416:
        v137 = 0;
        if (v31 >= v11 || (v135 = *v31, (v135 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v137);
          if (!result)
          {
            return result;
          }

          v135 = v137;
          v136 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v136 = (v31 + 1);
          *(a2 + 1) = v136;
        }

        *(this + 200) = v135 != 0;
        *(this + 54) |= 0x20u;
        if (v11 - v136 < 2 || *v136 != 221 || v136[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v136 + 2;
LABEL_425:
        v137 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v137))
        {
          *(this + 51) = v137;
          *(this + 54) |= 0x40u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          continue;
        }

        return 0;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v26 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_103;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v29 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_111;
      case 9u:
        if (v6 != 2)
        {
          goto LABEL_86;
        }

        v27 = *(this + 53);
        goto LABEL_119;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v28 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_125;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v32 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_133;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v33 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_141;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_149;
      case 0xEu:
        if (v6 != 2)
        {
          goto LABEL_86;
        }

        v35 = *(this + 53);
        goto LABEL_157;
      case 0xFu:
        if (v6 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_86;
      case 0x10u:
        if (v6 == 2)
        {
          goto LABEL_186;
        }

        goto LABEL_86;
      case 0x11u:
        if (v6 == 2)
        {
          goto LABEL_201;
        }

        goto LABEL_86;
      case 0x12u:
        if (v6 == 2)
        {
          goto LABEL_216;
        }

        goto LABEL_86;
      case 0x13u:
        if (v6 == 2)
        {
          goto LABEL_231;
        }

        goto LABEL_86;
      case 0x14u:
        if (v6 == 5)
        {
          goto LABEL_246;
        }

        goto LABEL_86;
      case 0x15u:
        if (v6 == 5)
        {
          goto LABEL_251;
        }

        goto LABEL_86;
      case 0x16u:
        if (v6 == 5)
        {
          goto LABEL_256;
        }

        goto LABEL_86;
      case 0x17u:
        if (v6 == 5)
        {
          goto LABEL_261;
        }

        goto LABEL_86;
      case 0x18u:
        if (v6 == 5)
        {
          goto LABEL_266;
        }

        goto LABEL_86;
      case 0x19u:
        if (v6 == 5)
        {
          goto LABEL_271;
        }

        goto LABEL_86;
      case 0x1Au:
        if (v6 == 5)
        {
          goto LABEL_276;
        }

        goto LABEL_86;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v22 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_281;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_290;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v30 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_299;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_310;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v38 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_319;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v37 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_328;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v21 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_337;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v23 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_346;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v34 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_355;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v24 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_364;
      case 0x25u:
        if (v6 == 5)
        {
          goto LABEL_373;
        }

        goto LABEL_86;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_378;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v36 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_389;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v39 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_398;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_407;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v31 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_416;
      case 0x2Bu:
        if (v6 == 5)
        {
          goto LABEL_425;
        }

        goto LABEL_86;
      default:
LABEL_86:
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
  }
}

uint64_t awd::metrics::CompassSession::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 212);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 212);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  v8 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 212);
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xA, *(v5 + 36), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 44), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(v5 + 48), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, *(v5 + 52), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_50:
  v9 = *(v5 + 56);
  if (!v9)
  {
    v9 = *(awd::metrics::CompassSession::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v9, a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_53:
  v10 = *(v5 + 64);
  if (!v10)
  {
    v10 = *(awd::metrics::CompassSession::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v10, a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_59;
  }

LABEL_56:
  v11 = *(v5 + 72);
  if (!v11)
  {
    v11 = *(awd::metrics::CompassSession::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v11, a2, a4);
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

LABEL_59:
  v12 = *(v5 + 80);
  if (!v12)
  {
    v12 = *(awd::metrics::CompassSession::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v12, a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_62:
  v13 = *(v5 + 88);
  if (!v13)
  {
    v13 = *(awd::metrics::CompassSession::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v13, a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_68;
  }

LABEL_65:
  v14 = *(v5 + 96);
  if (!v14)
  {
    v14 = *(awd::metrics::CompassSession::default_instance_ + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v14, a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x14, a2, *(v5 + 104), a3);
  v6 = *(v5 + 212);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x15, a2, *(v5 + 108), a3);
  v6 = *(v5 + 212);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x16, a2, *(v5 + 112), a3);
  v6 = *(v5 + 212);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x17, a2, *(v5 + 116), a3);
  v6 = *(v5 + 212);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x18, a2, *(v5 + 120), a3);
  v6 = *(v5 + 212);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x19, a2, *(v5 + 124), a3);
  v6 = *(v5 + 212);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1A, a2, *(v5 + 136), a3);
  v6 = *(v5 + 212);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x1B, *(v5 + 128), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x1C, *(v5 + 144), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x1D, *(v5 + 140), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 152), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 156), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(v5 + 160), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 164), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_83:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(v5 + 172), a2, a4);
    if ((*(v5 + 212) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_84;
  }

LABEL_82:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, *(v5 + 168), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_83;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_84:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 176), a2, a4);
LABEL_33:
  v7 = *(v5 + 216);
  if (v7)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x25, a2, *(v5 + 180), a3);
    v7 = *(v5 + 216);
    if ((v7 & 2) == 0)
    {
LABEL_35:
      if ((v7 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_87;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_35;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x26, *(v5 + 184), a2, a4);
  v7 = *(v5 + 216);
  if ((v7 & 4) == 0)
  {
LABEL_36:
    if ((v7 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_88;
  }

LABEL_87:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x27, *(v5 + 188), a2, a4);
  v7 = *(v5 + 216);
  if ((v7 & 8) == 0)
  {
LABEL_37:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_89;
  }

LABEL_88:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(v5 + 192), a2, a4);
  v7 = *(v5 + 216);
  if ((v7 & 0x10) == 0)
  {
LABEL_38:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_39;
    }

LABEL_90:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2A, *(v5 + 200), a2, a4);
    if ((*(v5 + 216) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_91;
  }

LABEL_89:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(v5 + 196), a2, a4);
  v7 = *(v5 + 216);
  if ((v7 & 0x20) != 0)
  {
    goto LABEL_90;
  }

LABEL_39:
  if ((v7 & 0x40) == 0)
  {
    return this;
  }

LABEL_91:
  v15 = *(v5 + 204);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2B, a2, v15, a3);
}