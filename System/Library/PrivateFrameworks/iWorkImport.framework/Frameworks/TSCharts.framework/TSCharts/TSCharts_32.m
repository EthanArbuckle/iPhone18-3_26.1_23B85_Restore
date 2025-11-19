void sub_27649D064(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527FC0, 0);
  if (v4)
  {

    sub_27649D10C(a1, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

float sub_27649D10C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2763D4F88((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 16);
  if (!v6)
  {
    goto LABEL_71;
  }

  if (v6)
  {
    *(a1 + 16) |= 1u;
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  if ((v6 & 2) != 0)
  {
    *(a1 + 16) |= 2u;
    v7 = *(a1 + 40);
    if (!v7)
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x277C97BA0](v8);
      *(a1 + 40) = v7;
    }

    if (*(a2 + 40))
    {
      v9 = *(a2 + 40);
    }

    else
    {
      v9 = MEMORY[0x277D80BD0];
    }

    TSS::StyleArchive::MergeFrom(v7, v9);
  }

  if ((v6 & 4) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_17;
    }

LABEL_27:
    *(a1 + 16) |= 8u;
    v13 = *(a1 + 56);
    if (!v13)
    {
      v14 = *(a1 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = sub_27649DC64(v14);
      *(a1 + 56) = v13;
    }

    if (*(a2 + 56))
    {
      v15 = *(a2 + 56);
    }

    else
    {
      v15 = &unk_2812F2728;
    }

    sub_276483348(v13, v15);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_35;
  }

  *(a1 + 16) |= 4u;
  v10 = *(a1 + 48);
  if (!v10)
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = sub_27649DC64(v11);
    *(a1 + 48) = v10;
  }

  if (*(a2 + 48))
  {
    v12 = *(a2 + 48);
  }

  else
  {
    v12 = &unk_2812F2728;
  }

  sub_276483348(v10, v12);
  if ((v6 & 8) != 0)
  {
    goto LABEL_27;
  }

LABEL_17:
  if ((v6 & 0x10) != 0)
  {
LABEL_35:
    *(a1 + 16) |= 0x10u;
    v16 = *(a1 + 64);
    if (!v16)
    {
      v17 = *(a1 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = sub_27649DC64(v17);
      *(a1 + 64) = v16;
    }

    if (*(a2 + 64))
    {
      v18 = *(a2 + 64);
    }

    else
    {
      v18 = &unk_2812F2728;
    }

    sub_276483348(v16, v18);
  }

LABEL_43:
  if ((v6 & 0x20) != 0)
  {
    *(a1 + 16) |= 0x20u;
    v19 = *(a1 + 72);
    if (!v19)
    {
      v20 = *(a1 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = sub_276406A94(v20);
      *(a1 + 72) = v19;
    }

    if (*(a2 + 72))
    {
      v21 = *(a2 + 72);
    }

    else
    {
      v21 = &qword_2812F01D8;
    }

    sub_276400DA8(v19, v21);
    if ((v6 & 0x40) == 0)
    {
LABEL_45:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_63;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_45;
  }

  *(a1 + 16) |= 0x40u;
  v22 = *(a1 + 80);
  if (!v22)
  {
    v23 = *(a1 + 8);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = sub_276406A94(v23);
    *(a1 + 80) = v22;
  }

  if (*(a2 + 80))
  {
    v24 = *(a2 + 80);
  }

  else
  {
    v24 = &qword_2812F01D8;
  }

  sub_276400DA8(v22, v24);
  if ((v6 & 0x80) != 0)
  {
LABEL_63:
    *(a1 + 16) |= 0x80u;
    v25 = *(a1 + 88);
    if (!v25)
    {
      v26 = *(a1 + 8);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = sub_276406A94(v26);
      *(a1 + 88) = v25;
    }

    if (*(a2 + 88))
    {
      v27 = *(a2 + 88);
    }

    else
    {
      v27 = &qword_2812F01D8;
    }

    sub_276400DA8(v25, v27);
  }

LABEL_71:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_82;
  }

  if ((v6 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v29 = *(a1 + 96);
    if (!v29)
    {
      v30 = *(a1 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = sub_276406A94(v30);
      *(a1 + 96) = v29;
    }

    if (*(a2 + 96))
    {
      v31 = *(a2 + 96);
    }

    else
    {
      v31 = &qword_2812F01D8;
    }

    sub_276400DA8(v29, v31);
    if ((v6 & 0x200) == 0)
    {
LABEL_74:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_158;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_74;
  }

  *(a1 + 104) = *(a2 + 104);
  if ((v6 & 0x400) == 0)
  {
LABEL_75:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_159;
  }

LABEL_158:
  *(a1 + 108) = *(a2 + 108);
  if ((v6 & 0x800) == 0)
  {
LABEL_76:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_160;
  }

LABEL_159:
  *(a1 + 112) = *(a2 + 112);
  if ((v6 & 0x1000) == 0)
  {
LABEL_77:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(a1 + 113) = *(a2 + 113);
  if ((v6 & 0x2000) == 0)
  {
LABEL_78:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_79;
    }

LABEL_162:
    *(a1 + 115) = *(a2 + 115);
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_161:
  *(a1 + 114) = *(a2 + 114);
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_162;
  }

LABEL_79:
  if ((v6 & 0x8000) != 0)
  {
LABEL_80:
    *(a1 + 116) = *(a2 + 116);
  }

LABEL_81:
  *(a1 + 16) |= v6;
LABEL_82:
  if ((v6 & 0xFF0000) == 0)
  {
    goto LABEL_93;
  }

  if ((v6 & 0x10000) != 0)
  {
    *(a1 + 120) = *(a2 + 120);
    if ((v6 & 0x20000) == 0)
    {
LABEL_85:
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_166;
    }
  }

  else if ((v6 & 0x20000) == 0)
  {
    goto LABEL_85;
  }

  *(a1 + 124) = *(a2 + 124);
  if ((v6 & 0x40000) == 0)
  {
LABEL_86:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_167;
  }

LABEL_166:
  *(a1 + 125) = *(a2 + 125);
  if ((v6 & 0x80000) == 0)
  {
LABEL_87:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_168;
  }

LABEL_167:
  *(a1 + 126) = *(a2 + 126);
  if ((v6 & 0x100000) == 0)
  {
LABEL_88:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_169;
  }

LABEL_168:
  *(a1 + 127) = *(a2 + 127);
  if ((v6 & 0x200000) == 0)
  {
LABEL_89:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_90;
    }

LABEL_170:
    *(a1 + 132) = *(a2 + 132);
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

LABEL_169:
  result = *(a2 + 128);
  *(a1 + 128) = result;
  if ((v6 & 0x400000) != 0)
  {
    goto LABEL_170;
  }

LABEL_90:
  if ((v6 & 0x800000) != 0)
  {
LABEL_91:
    result = *(a2 + 136);
    *(a1 + 136) = result;
  }

LABEL_92:
  *(a1 + 16) |= v6;
LABEL_93:
  if (!HIBYTE(v6))
  {
    goto LABEL_103;
  }

  if ((v6 & 0x1000000) != 0)
  {
    *(a1 + 140) = *(a2 + 140);
    if ((v6 & 0x2000000) == 0)
    {
LABEL_96:
      if ((v6 & 0x4000000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_198;
    }
  }

  else if ((v6 & 0x2000000) == 0)
  {
    goto LABEL_96;
  }

  *(a1 + 144) = *(a2 + 144);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_97:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_199;
  }

LABEL_198:
  *(a1 + 148) = *(a2 + 148);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_98:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_200;
  }

LABEL_199:
  *(a1 + 149) = *(a2 + 149);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_99:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_201;
  }

LABEL_200:
  *(a1 + 150) = *(a2 + 150);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_100:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_101;
    }

LABEL_202:
    *(a1 + 152) = *(a2 + 152);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_102;
    }

LABEL_203:
    *(a1 + 156) = *(a2 + 156);
    goto LABEL_102;
  }

LABEL_201:
  *(a1 + 151) = *(a2 + 151);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_202;
  }

LABEL_101:
  if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_203;
  }

LABEL_102:
  *(a1 + 16) |= v6;
LABEL_103:
  v28 = *(a2 + 20);
  if (!v28)
  {
    goto LABEL_114;
  }

  if (v28)
  {
    *(a1 + 160) = *(a2 + 160);
    if ((v28 & 2) == 0)
    {
LABEL_106:
      if ((v28 & 4) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_174;
    }
  }

  else if ((v28 & 2) == 0)
  {
    goto LABEL_106;
  }

  *(a1 + 164) = *(a2 + 164);
  if ((v28 & 4) == 0)
  {
LABEL_107:
    if ((v28 & 8) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_175;
  }

LABEL_174:
  *(a1 + 168) = *(a2 + 168);
  if ((v28 & 8) == 0)
  {
LABEL_108:
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_176;
  }

LABEL_175:
  *(a1 + 169) = *(a2 + 169);
  if ((v28 & 0x10) == 0)
  {
LABEL_109:
    if ((v28 & 0x20) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_177;
  }

LABEL_176:
  *(a1 + 170) = *(a2 + 170);
  if ((v28 & 0x20) == 0)
  {
LABEL_110:
    if ((v28 & 0x40) == 0)
    {
      goto LABEL_111;
    }

LABEL_178:
    *(a1 + 172) = *(a2 + 172);
    if ((v28 & 0x80) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_177:
  *(a1 + 171) = *(a2 + 171);
  if ((v28 & 0x40) != 0)
  {
    goto LABEL_178;
  }

LABEL_111:
  if ((v28 & 0x80) != 0)
  {
LABEL_112:
    *(a1 + 176) = *(a2 + 176);
  }

LABEL_113:
  *(a1 + 20) |= v28;
LABEL_114:
  if ((v28 & 0xFF00) == 0)
  {
    goto LABEL_125;
  }

  if ((v28 & 0x100) != 0)
  {
    *(a1 + 180) = *(a2 + 180);
    if ((v28 & 0x200) == 0)
    {
LABEL_117:
      if ((v28 & 0x400) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_182;
    }
  }

  else if ((v28 & 0x200) == 0)
  {
    goto LABEL_117;
  }

  *(a1 + 184) = *(a2 + 184);
  if ((v28 & 0x400) == 0)
  {
LABEL_118:
    if ((v28 & 0x800) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_183;
  }

LABEL_182:
  *(a1 + 188) = *(a2 + 188);
  if ((v28 & 0x800) == 0)
  {
LABEL_119:
    if ((v28 & 0x1000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_184;
  }

LABEL_183:
  *(a1 + 192) = *(a2 + 192);
  if ((v28 & 0x1000) == 0)
  {
LABEL_120:
    if ((v28 & 0x2000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_185;
  }

LABEL_184:
  *(a1 + 196) = *(a2 + 196);
  if ((v28 & 0x2000) == 0)
  {
LABEL_121:
    if ((v28 & 0x4000) == 0)
    {
      goto LABEL_122;
    }

LABEL_186:
    result = *(a2 + 204);
    *(a1 + 204) = result;
    if ((v28 & 0x8000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_123;
  }

LABEL_185:
  *(a1 + 200) = *(a2 + 200);
  if ((v28 & 0x4000) != 0)
  {
    goto LABEL_186;
  }

LABEL_122:
  if ((v28 & 0x8000) != 0)
  {
LABEL_123:
    result = *(a2 + 208);
    *(a1 + 208) = result;
  }

LABEL_124:
  *(a1 + 20) |= v28;
LABEL_125:
  if ((v28 & 0xFF0000) == 0)
  {
    goto LABEL_136;
  }

  if ((v28 & 0x10000) != 0)
  {
    result = *(a2 + 212);
    *(a1 + 212) = result;
    if ((v28 & 0x20000) == 0)
    {
LABEL_128:
      if ((v28 & 0x40000) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_190;
    }
  }

  else if ((v28 & 0x20000) == 0)
  {
    goto LABEL_128;
  }

  result = *(a2 + 216);
  *(a1 + 216) = result;
  if ((v28 & 0x40000) == 0)
  {
LABEL_129:
    if ((v28 & 0x80000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_191;
  }

LABEL_190:
  result = *(a2 + 220);
  *(a1 + 220) = result;
  if ((v28 & 0x80000) == 0)
  {
LABEL_130:
    if ((v28 & 0x100000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_192;
  }

LABEL_191:
  result = *(a2 + 224);
  *(a1 + 224) = result;
  if ((v28 & 0x100000) == 0)
  {
LABEL_131:
    if ((v28 & 0x200000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_193;
  }

LABEL_192:
  *(a1 + 228) = *(a2 + 228);
  if ((v28 & 0x200000) == 0)
  {
LABEL_132:
    if ((v28 & 0x400000) == 0)
    {
      goto LABEL_133;
    }

LABEL_194:
    *(a1 + 230) = *(a2 + 230);
    if ((v28 & 0x800000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_134;
  }

LABEL_193:
  *(a1 + 229) = *(a2 + 229);
  if ((v28 & 0x400000) != 0)
  {
    goto LABEL_194;
  }

LABEL_133:
  if ((v28 & 0x800000) != 0)
  {
LABEL_134:
    *(a1 + 231) = *(a2 + 231);
  }

LABEL_135:
  *(a1 + 20) |= v28;
LABEL_136:
  if (!HIBYTE(v28))
  {
    goto LABEL_146;
  }

  if ((v28 & 0x1000000) != 0)
  {
    result = *(a2 + 232);
    *(a1 + 232) = result;
    if ((v28 & 0x2000000) == 0)
    {
LABEL_139:
      if ((v28 & 0x4000000) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_206;
    }
  }

  else if ((v28 & 0x2000000) == 0)
  {
    goto LABEL_139;
  }

  result = *(a2 + 236);
  *(a1 + 236) = result;
  if ((v28 & 0x4000000) == 0)
  {
LABEL_140:
    if ((v28 & 0x8000000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_207;
  }

LABEL_206:
  result = *(a2 + 240);
  *(a1 + 240) = result;
  if ((v28 & 0x8000000) == 0)
  {
LABEL_141:
    if ((v28 & 0x10000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_208;
  }

LABEL_207:
  result = *(a2 + 244);
  *(a1 + 244) = result;
  if ((v28 & 0x10000000) == 0)
  {
LABEL_142:
    if ((v28 & 0x20000000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_209;
  }

LABEL_208:
  *(a1 + 248) = *(a2 + 248);
  if ((v28 & 0x20000000) == 0)
  {
LABEL_143:
    if ((v28 & 0x40000000) == 0)
    {
      goto LABEL_144;
    }

LABEL_210:
    *(a1 + 256) = *(a2 + 256);
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_145;
    }

LABEL_211:
    *(a1 + 257) = *(a2 + 257);
    goto LABEL_145;
  }

LABEL_209:
  *(a1 + 252) = *(a2 + 252);
  if ((v28 & 0x40000000) != 0)
  {
    goto LABEL_210;
  }

LABEL_144:
  if ((v28 & 0x80000000) != 0)
  {
    goto LABEL_211;
  }

LABEL_145:
  *(a1 + 20) |= v28;
LABEL_146:
  if (*(a2 + 24))
  {
    result = *(a2 + 260);
    *(a1 + 24) |= 1u;
    *(a1 + 260) = result;
  }

  return result;
}

void sub_27649D808(uint64_t *a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    sub_2764992A8(a1);

    sub_27649D064(a1, a2);
  }
}

uint64_t sub_27649D854(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(a1 + 40));
  if (!result)
  {
    return result;
  }

  v3 = *(a1 + 16);
  if ((v3 & 4) != 0)
  {
    v4 = *(a1 + 48);
    if ((~*(v4 + 16) & 0x7FFFE0) != 0)
    {
      return 0;
    }

    result = TSP::IndexSet::IsInitialized(*(v4 + 88));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 16);
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      return 1;
    }

    goto LABEL_14;
  }

  v5 = *(a1 + 56);
  if ((~*(v5 + 16) & 0x7FFFE0) != 0)
  {
    return 0;
  }

  result = TSP::IndexSet::IsInitialized(*(v5 + 88));
  if (!result)
  {
    return result;
  }

  if ((*(a1 + 16) & 0x10) == 0)
  {
    return 1;
  }

LABEL_14:
  v6 = *(a1 + 64);
  if ((~*(v6 + 16) & 0x7FFFE0) != 0)
  {
    return 0;
  }

  result = TSP::IndexSet::IsInitialized(*(v6 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_27649D960(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27649E5FC(a1, 1);
  sub_27647B794(v2, a1);
  return v2;
}

uint64_t sub_27649D9EC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27649E688(a1);
}

uint64_t sub_27649DAC0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27649E790(a1, 1);
  sub_27647F5C4(v2, a1);
  return v2;
}

uint64_t sub_27649DB4C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27649E81C(a1, 1);
  *result = &unk_288527708;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_27649DBDC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27649E8A8(a1, 1);
  sub_276480870(v2, a1);
  return v2;
}

uint64_t sub_27649DC68(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27649E934(a1, 1);
  sub_27648140C(v2, a1);
  return v2;
}

uint64_t sub_27649DCF4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27649E9C0(a1, 1);
  sub_276483744(v2, a1);
  return v2;
}

uint64_t sub_27649DD80(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27649EA4C(a1, 1);
  sub_276486F78(v2, a1);
  return v2;
}

uint64_t sub_27649DE0C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27649EAD8(a1);
}

void *sub_27649DEE4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27649EBE4(a1);
}

uint64_t sub_27649DFB0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27649ECE4(a1);
}

uint64_t sub_27649E098(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27649EE00(a1, 1);
  sub_27648DC98(v2, a1);
  return v2;
}

uint64_t sub_27649E124(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27649EE8C(a1);
}

uint64_t sub_27649E1FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27649EF98(a1);
}

uint64_t *sub_27649E458(uint64_t *result)
{
  v1 = *(result + 2);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = result[2] + 8;
    do
    {
      result = (*v3 + 8);
      v4 = *result;
      *(*v3 + 16) = 0;
      if (v4)
      {
        result = sub_2763D4FD4(result);
      }

      v3 += 8;
      --v1;
    }

    while (v1);
    *(v2 + 2) = 0;
  }

  return result;
}

void sub_27649E4B8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_2764803DC(*v3);
          MEMORY[0x277C98580](v5, 0x1081C4085BC40B3);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_27649E53C(uint64_t *result, uint64_t **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27649E5EC(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_27649DB48(v18);
      result = sub_27649E5EC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_27649E5FC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0EC4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 280, sub_27649E684);
}

uint64_t sub_27649E688(uint64_t a1)
{
  v2 = sub_27649E704(a1, 1);
  *v2 = &unk_2885275A8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EE4F8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27649E704(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0F00(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_27649E78C);
}

uint64_t sub_27649E790(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0F3C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, sub_27649E818);
}

uint64_t sub_27649E81C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0F78(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_27649E8A4);
}

uint64_t sub_27649E8A8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0FB4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, sub_27649E930);
}

uint64_t sub_27649E934(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0FE4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 160, sub_27649E9BC);
}

uint64_t sub_27649E9C0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B1020(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 256, sub_27649EA48);
}

uint64_t sub_27649EA4C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B105C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 176, sub_27649EAD4);
}

uint64_t sub_27649EAD8(uint64_t a1)
{
  v2 = sub_27649EB58(a1, 1);
  *v2 = &unk_288527A78;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EE540, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27649EB58(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B1098(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_27649EBE0);
}

void *sub_27649EBE4(uint64_t a1)
{
  v2 = sub_27649EC58(a1, 1);
  *v2 = &unk_288527B28;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EE520, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27649EC58(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B10D4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27649ECE0);
}

uint64_t sub_27649ECE4(uint64_t a1)
{
  v2 = sub_27649ED74(a1, 1);
  *v2 = &unk_288527BD8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (atomic_load_explicit(dword_2812EE308, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  return v2;
}

uint64_t sub_27649ED74(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B1104(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 208, sub_27649EDFC);
}

uint64_t sub_27649EE00(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B1140(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, sub_27649EE88);
}

uint64_t sub_27649EE8C(uint64_t a1)
{
  v2 = sub_27649EF0C(a1, 1);
  *v2 = &unk_288527D38;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  if (atomic_load_explicit(dword_2812EE448, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  bzero((v2 + 40), 0x27CuLL);
  return v2;
}

uint64_t sub_27649EF0C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B1170(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 680, sub_27649EF94);
}

uint64_t sub_27649EF98(uint64_t a1)
{
  v2 = sub_27649F050(a1, 1);
  *v2 = &unk_288527DE8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (atomic_load_explicit(dword_2812EE418, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = MEMORY[0x277D80A90];
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  return v2;
}

uint64_t sub_27649F050(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B11AC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 264, sub_27649F0D8);
}

__n128 sub_2764A029C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2764A02A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2764A02C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_2764A0308(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2764A0314(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2764A0334(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_2764A0384(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t TSCHChartGridLayoutItem.renderers(withRep:)(uint64_t a1)
{
  sub_2764A0458(&qword_280A46378);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2764FC4F0;
  *(v3 + 32) = [objc_allocWithZone(TSCHChartGridRenderer) initWithChartRep:a1 layoutItem:v1];
  return v3;
}

uint64_t sub_2764A0458(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id TSCHChartGridLayoutItem.__allocating_init(parent:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithParent_];

  return v3;
}

id TSCHChartGridLayoutItem.init(parent:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TSCHChartGridLayoutItem();
  v3 = objc_msgSendSuper2(&v5, sel_initWithParent_, a1);

  return v3;
}

id TSCHChartGridLayoutItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TSCHChartGridLayoutItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2764A06AC()
{
  result = qword_280A46380;
  if (!qword_280A46380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A46380);
  }

  return result;
}

uint64_t static TSCHChartLayout.normalizeRect(_:outerRect:)()
{
  TSUSubtractPoints();

  return TSURectWithOriginAndSize();
}

void static TSCHChartLayout.outerRect(for:)(uint64_t a1)
{
  v1 = *MEMORY[0x277CBF398];
  v2 = *(MEMORY[0x277CBF398] + 8);
  v3 = *(MEMORY[0x277CBF398] + 16);
  v4 = *(MEMORY[0x277CBF398] + 24);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 56;
    do
    {
      *&v1 = CGRectUnion(*&v1, *(v6 - 24));
      v6 += 32;
      --v5;
    }

    while (v5);
  }
}

void sub_2764A0A28()
{
  swift_getObjectType();
  [v0 layoutSize];
  TSURectWithSize();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 chart];
  v10 = [v9 model];

  if (v10)
  {
    v11 = [v10 valueAxisList];
    sub_2764A12F8(0, &qword_280A46390);
    v12 = sub_2764B1228();

    v13 = sub_2764A0F94(v12);

    v14 = [v10 numberOfGroupsInAllSeries];
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      [swift_getObjCClassFromMetadata() halfProtrusionForRegularPolygonWithSides:v14 strokeWidth:v13];
      v16 = v15;
      v17 = [v10 categoryAxisList];
      v18 = sub_2764B1228();

      v19 = sub_2764A0F94(v18);

      v20 = v19 * 0.5;
      if (v19 * 0.5 <= v16)
      {
        v20 = v16;
      }

      v21 = -v20;
      v28.origin.x = v2;
      v28.origin.y = v4;
      v28.size.width = v6;
      v28.size.height = v8;
      CGRectInset(v28, v21, v21);
    }
  }

  else
  {
    sub_2764B12B8();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = sub_2764B12A8();
    v24 = objc_opt_self();
    sub_2764B1278();
    v25 = sub_2764B11F8();

    sub_2764B1278();
    v26 = sub_2764B11F8();

    sub_2764B1278();
    v27 = sub_2764B11F8();

    [v24 handleFailureInFunction:v25 file:v26 lineNumber:34 isFatal:0 format:v27 args:v23];
  }
}

id sub_2764A0D60(double a1, double a2)
{
  v5 = [v2 model];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(TSCHChartAxisID) initWithType:6 ordinal:0];
    v8 = [v6 axisForID_];

    if (v8)
    {
      v9 = [v8 intValueForProperty:1054 defaultValue:0];
      v10 = [v8 intValueForProperty:1052 defaultValue:0];
      if ([v8 intValueForProperty:1050 defaultValue:0])
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11 && v10 == 0)
      {
      }

      else
      {
        [v8 floatValueForProperty:1033 defaultValue:0.0];

        TSUMultiplySizeScalar();
        a1 = v13;
        a2 = v14;
      }
    }
  }

  return [v2 setLayoutSize_];
}

id sub_2764A0F3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TSCHChartPolarGridLayoutItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_2764A0F94(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_34:
    v3 = sub_2764B12C8();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = MEMORY[0x277D84F90];
      while (1)
      {
        v22 = v5;
        v6 = v4;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x277C95FF0](v6, a1);
          }

          else
          {
            if (v6 >= *(v2 + 16))
            {
              goto LABEL_33;
            }

            v7 = *(a1 + 8 * v6 + 32);
          }

          v8 = v7;
          v4 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          if ([v7 valueForProperty_])
          {
            sub_2764B1268();
            swift_unknownObjectRelease();
          }

          else
          {
            v24 = 0u;
            v25 = 0u;
          }

          v26[0] = v24;
          v26[1] = v25;
          sub_2764A1220(v26, &v24);
          if (*(&v25 + 1))
          {
            break;
          }

          sub_2764A1290(&v24);
LABEL_6:
          sub_2764A1290(v26);
          ++v6;
          if (v4 == v3)
          {
            v5 = v22;
            goto LABEL_25;
          }
        }

        sub_2764A12F8(0, &qword_280A463A0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        [v23 width];
        v10 = v9;

        sub_2764A1290(v26);
        v11 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_2764A5C1C(0, *(v22 + 2) + 1, 1, v22);
        }

        v13 = *(v11 + 2);
        v12 = *(v11 + 3);
        v14 = v11;
        if (v13 >= v12 >> 1)
        {
          v14 = sub_2764A5C1C((v12 > 1), v13 + 1, 1, v11);
        }

        v5 = v14;
        *(v14 + 2) = v13 + 1;
        *&v14[8 * v13 + 32] = v10;
        if (v4 == v3)
        {
LABEL_25:
          v15 = *(v5 + 2);
          if (!v15)
          {
            goto LABEL_36;
          }

LABEL_26:
          v16 = *(v5 + 4);
          v17 = v15 - 1;
          if (v17)
          {
            v18 = (v5 + 40);
            do
            {
              v19 = *v18++;
              v20 = v19;
              if (v16 < v19)
              {
                v16 = v20;
              }

              --v17;
            }

            while (v17);
          }

          goto LABEL_37;
        }
      }

      goto LABEL_6;
    }
  }

  v5 = MEMORY[0x277D84F90];
  v15 = *(MEMORY[0x277D84F90] + 16);
  if (v15)
  {
    goto LABEL_26;
  }

LABEL_36:
  v16 = 0.0;
LABEL_37:

  return v16;
}

uint64_t sub_2764A1220(uint64_t a1, uint64_t a2)
{
  v4 = sub_2764A0458(&qword_280A46398);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2764A1290(uint64_t a1)
{
  v2 = sub_2764A0458(&qword_280A46398);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2764A12F8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t TSCHKnobsDisplayMode.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2764A136C()
{
  result = qword_280A463A8;
  if (!qword_280A463A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A463A8);
  }

  return result;
}

uint64_t sub_2764A13C0()
{
  v1 = *v0;
  sub_2764B12D8();
  MEMORY[0x277C96050](v1);
  return sub_2764B12F8();
}

uint64_t sub_2764A1434()
{
  v1 = *v0;
  sub_2764B12D8();
  MEMORY[0x277C96050](v1);
  return sub_2764B12F8();
}

uint64_t *sub_2764A1478@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t static TSCHChartLayoutItem.radarAreaLayoutItem.getter()
{
  if (qword_280A46350 != -1)
  {
    swift_once();
  }

  return qword_280A463B0;
}

uint64_t sub_2764A155C()
{
  result = type metadata accessor for TSCHChartRadarAreaLayoutItem();
  qword_280A463B0 = result;
  return result;
}

void sub_2764A164C()
{
  v1 = v0;
  v35 = MEMORY[0x277D84F90];
  [v0 layoutSettings];
  if ((v34 & 1) == 0)
  {
    v2 = [objc_allocWithZone(TSCHChartMainTitleLayoutItem) initWithParent_];
    MEMORY[0x277C95F70]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2764B1238();
    }

    sub_2764B1248();
    [v0 setTitleElement_];
  }

  v3 = [objc_allocWithZone(TSCHChartBodyLayoutItem) initWithParent_];
  MEMORY[0x277C95F70]();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2764B1238();
  }

  sub_2764B1248();
  v32 = v3;
  [v0 setBodyLayoutItem_];
  v4 = [objc_allocWithZone(type metadata accessor for TSCHChartPolarGridLayoutItem()) initWithParent_];
  MEMORY[0x277C95F70]();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2764B1238();
  }

  sub_2764B1248();
  v5 = *&v0[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_gridLayoutItem];
  *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_gridLayoutItem] = v4;
  v31 = v4;

  v6 = [objc_allocWithZone(TSCHChartValueAxisLayoutItem) initWithParent:v1 axisPosition:5];
  v7 = objc_allocWithZone(TSCHChartAxisID);
  v8 = v6;
  v9 = [v7 initWithType:5 ordinal:0];
  [v8 setAxisID_];

  MEMORY[0x277C95F70]();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2764B1238();
  }

  sub_2764B1248();
  v10 = *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_valueAxisLayoutItem];
  *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_valueAxisLayoutItem] = v8;
  v11 = v8;

  v12 = [objc_allocWithZone(TSCHChartCategoryAxisLayoutItem) initWithParent:v1 axisPosition:6];
  v13 = objc_allocWithZone(TSCHChartAxisID);
  v14 = v12;
  v15 = [v13 initWithType:6 ordinal:0];
  [v14 setAxisID_];

  MEMORY[0x277C95F70]();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2764B1238();
  }

  sub_2764B1248();
  v16 = *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_categoryAxisLayoutItem];
  *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_categoryAxisLayoutItem] = v14;
  v17 = v14;

  v18 = [objc_allocWithZone(TSCHChartPolarAngleGridlineAxisLayoutItem) initWithParent:v1 axisPosition:6];
  v19 = objc_allocWithZone(TSCHChartAxisID);
  v20 = v18;
  v21 = [v19 initWithType:6 ordinal:0];
  [v20 setAxisID_];

  MEMORY[0x277C95F70]();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2764B1238();
  }

  sub_2764B1248();
  v22 = *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_categoryAxisGridlineTickmarkLayoutItem];
  *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_categoryAxisGridlineTickmarkLayoutItem] = v20;
  v23 = v20;

  v24 = [objc_allocWithZone(TSCHChartPolarRadiusGridlineAxisLayoutItem) initWithParent:v1 axisPosition:5];
  v25 = objc_allocWithZone(TSCHChartAxisID);
  v26 = v24;
  v27 = [v25 initWithType:5 ordinal:0];
  [v26 setAxisID_];

  MEMORY[0x277C95F70]();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2764B1238();
  }

  sub_2764B1248();
  v28 = *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_valueAxisGridlineTickmarkLayoutItem];
  *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_valueAxisGridlineTickmarkLayoutItem] = v26;
  v29 = v26;

  sub_2764A12F8(0, &qword_280A463E8);
  v30 = sub_2764B1218();

  [v1 setChildren_];

  v33.receiver = v1;
  v33.super_class = type metadata accessor for TSCHChartRadarAreaLayoutItem();
  objc_msgSendSuper2(&v33, sel_buildSubTree);
}

void sub_2764A1C78()
{
  v1 = *&v0[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_valueAxisLayoutItem];
  if (!v1)
  {
    sub_2764B12B8();
    v52 = swift_allocObject();
    v52[2] = 8;
    v52[3] = 0;
    v52[4] = 0;
    v52[5] = 0;
    v53 = sub_2764B12A8();
    v54 = objc_opt_self();
    sub_2764B1278();
    v55 = sub_2764B11F8();

    sub_2764B1278();
    v56 = sub_2764B11F8();

    sub_2764B1278();
    v57 = sub_2764B11F8();

    [v54 handleFailureInFunction:v55 file:v56 lineNumber:85 isFatal:0 format:v57 args:v53];
LABEL_16:

    return;
  }

  v2 = *&v0[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_categoryAxisLayoutItem];
  if (!v2)
  {
    sub_2764B12B8();
    v58 = swift_allocObject();
    v58[2] = 8;
    v58[3] = 0;
    v58[4] = 0;
    v58[5] = 0;
    v59 = v1;
    v60 = sub_2764B12A8();
    v61 = objc_opt_self();
    sub_2764B1278();
    v55 = sub_2764B11F8();

    sub_2764B1278();
    v56 = sub_2764B11F8();

    sub_2764B1278();
    v57 = sub_2764B11F8();

    [v61 handleFailureInFunction:v55 file:v56 lineNumber:86 isFatal:0 format:v57 args:v60];

    goto LABEL_16;
  }

  v3 = v1;
  v4 = v2;
  [v4 overhangRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 layoutOffset];
  v14 = v13;
  [v4 layoutOffset];
  v16 = v15;
  v76.origin.x = v6;
  v76.origin.y = v8;
  v76.size.width = v10;
  v76.size.height = v12;
  v77 = CGRectOffset(v76, v14, v16);
  y = v77.origin.y;
  x = v77.origin.x;
  height = v77.size.height;
  width = v77.size.width;
  v17 = v3;
  [v17 overhangRect];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [v17 layoutOffset];
  v27 = v26;
  [v17 layoutOffset];
  v29 = v28;

  v78.origin.x = v19;
  v78.origin.y = v21;
  v78.size.width = v23;
  v78.size.height = v25;
  v79 = CGRectOffset(v78, v27, v29);
  v30 = v79.origin.x;
  v31 = v79.origin.y;
  v32 = v79.size.width;
  v33 = v79.size.height;
  v34 = [v0 children];
  sub_2764A12F8(0, &qword_280A463E8);
  v35 = sub_2764B1228();

  if (v35 >> 62)
  {
    v36 = sub_2764B12C8();
    if (v36)
    {
      goto LABEL_5;
    }

LABEL_18:

    v38 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
    goto LABEL_18;
  }

LABEL_5:
  v75 = MEMORY[0x277D84F90];
  sub_2764A5E24(0, v36 & ~(v36 >> 63), 0);
  if (v36 < 0)
  {
    __break(1u);
    return;
  }

  v37 = 0;
  v38 = v75;
  do
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x277C95FF0](v37, v35);
    }

    else
    {
      v39 = *(v35 + 8 * v37 + 32);
    }

    v40 = v39;
    [v39 layoutRect];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v50 = *(v75 + 16);
    v49 = *(v75 + 24);
    if (v50 >= v49 >> 1)
    {
      sub_2764A5E24((v49 > 1), v50 + 1, 1);
    }

    ++v37;
    *(v75 + 16) = v50 + 1;
    v51 = (v75 + 32 * v50);
    v51[4] = v42;
    v51[5] = v44;
    v51[6] = v46;
    v51[7] = v48;
  }

  while (v36 != v37);

LABEL_19:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = sub_2764A5D20(0, *(v38 + 2) + 1, 1, v38);
  }

  v63 = *(v38 + 2);
  v62 = *(v38 + 3);
  v64 = v62 >> 1;
  v65 = v63 + 1;
  if (v62 >> 1 <= v63)
  {
    v38 = sub_2764A5D20((v62 > 1), v63 + 1, 1, v38);
    v62 = *(v38 + 3);
    v64 = v62 >> 1;
  }

  *(v38 + 2) = v65;
  v66 = &v38[32 * v63];
  v66[4] = x;
  v66[5] = y;
  v66[6] = width;
  v66[7] = height;
  v67 = v63 + 2;
  if (v64 < v67)
  {
    v38 = sub_2764A5D20((v62 > 1), v67, 1, v38);
  }

  *(v38 + 2) = v67;
  v68 = &v38[32 * v65];
  v68[4] = v30;
  v68[5] = v31;
  v68[6] = v32;
  v68[7] = v33;
  v69 = objc_opt_self();
  type metadata accessor for CGRect(0);
  v70 = sub_2764B1218();

  [v69 outerRectForRects_];
}

void sub_2764A2254(double a1, double a2)
{
  v5 = [v2 bodyLayoutItem];
  if (v5)
  {
    v13 = v5;
    [v13 setLayoutOffset_];
    [v13 setLayoutSize_];

    v6 = [v2 titleElement];
    if (v6)
    {
      v7 = v6;
      [v6 clearMinSize];
    }

    [v2 layoutOutward];
  }

  else
  {
    sub_2764B12B8();
    v8 = swift_allocObject();
    v8[2] = 8;
    v8[3] = 0;
    v8[4] = 0;
    v8[5] = 0;
    v9 = sub_2764B12A8();
    v10 = objc_opt_self();
    sub_2764B1278();
    v11 = sub_2764B11F8();

    sub_2764B1278();
    v12 = sub_2764B11F8();

    sub_2764B1278();
    v13 = sub_2764B11F8();

    [v10 handleFailureInFunction:v11 file:v12 lineNumber:105 isFatal:0 format:v13 args:v9];
  }
}

void sub_2764A2430(double a1, double a2)
{
  v3 = v2;
  v6 = &selRef_additionalFillSetMutations;
  v7 = [v2 bodyLayoutItem];
  if (v7)
  {
    v52 = v7;
    v8 = [v2 chart];
    if (v8)
    {
      v9 = v8;
      [v2 layoutOffset];
      v49 = v11;
      v50 = v10;
      [v9 minimumChartBodySize];
      v13 = v12;
      v15 = v14;
      sub_2764A2254(v12, v14);
      TSURectWithSize();
      if (v15 >= v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = v15;
      }

      if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v16 <= -9.22337204e18)
        {
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (v16 >= 9.22337204e18)
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (a2 >= a1)
        {
          v17 = a1;
        }

        else
        {
          v17 = a2;
        }

        if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_48;
        }

        if (v17 <= -9.22337204e18)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if (v17 >= 9.22337204e18)
        {
LABEL_50:
          __break(1u);
          return;
        }

        v48 = v9;
        v18 = 0;
        v19 = v16;
        v20 = v17;
        v51 = v2;
LABEL_16:
        v21 = 20;
        if (v18 > 20)
        {
          v21 = v18;
        }

        v22 = v21 - v18++ + 1;
        while (1)
        {
          if (v20 < v19)
          {
            goto LABEL_38;
          }

          if (!--v22)
          {
            sub_2764B12B8();
            v41 = swift_allocObject();
            v41[2] = 8;
            v41[3] = 0;
            v41[4] = 0;
            v41[5] = 0;
            v42 = sub_2764B12A8();
            v43 = objc_opt_self();
            sub_2764B1278();
            v44 = sub_2764B11F8();

            sub_2764B1278();
            v45 = sub_2764B11F8();

            sub_2764B1278();
            v46 = sub_2764B11F8();

            v47 = v43;
            v3 = v51;
            [v47 handleFailureInFunction:v44 file:v45 lineNumber:135 isFatal:0 format:v46 args:v42];

LABEL_38:
            sub_2764A2254(v13, v15);
            [v52 setLayoutOffset_];
            [v3 setLayoutOffset_];
            v35 = v48;
            goto LABEL_39;
          }

          if (__OFSUB__(v20, v19))
          {
            break;
          }

          v23 = v19 + (v20 - v19) / 2;
          if (__OFADD__(v19, (v20 - v19) / 2))
          {
            goto LABEL_43;
          }

          v24 = [v3 v6[261]];
          if (v24)
          {
            v25 = v24;
            [v25 setLayoutOffset_];
            [v25 setLayoutSize_];

            v26 = [v3 titleElement];
            if (v26)
            {
              v27 = v26;
              [v26 clearMinSize];
            }

            [v3 layoutOutward];
          }

          else
          {
            sub_2764B12B8();
            v28 = swift_allocObject();
            v28[2] = 8;
            v28[3] = 0;
            v28[4] = 0;
            v28[5] = 0;
            v54 = sub_2764B12A8();
            v53 = objc_opt_self();
            sub_2764B1278();
            v29 = sub_2764B11F8();

            sub_2764B1278();
            v30 = sub_2764B11F8();

            sub_2764B1278();
            v25 = sub_2764B11F8();
            v3 = v51;

            [v53 handleFailureInFunction:v29 file:v30 lineNumber:105 isFatal:0 format:v25 args:v54];
            v6 = &selRef_additionalFillSetMutations;
          }

          sub_2764A1C78();
          TSURectWithSize();
          if (TSUNearlyContainsRect())
          {
            v13 = v23;
            v15 = v23;
            v19 = v23 + 1;
            if (!__OFADD__(v23, 1))
            {
              goto LABEL_16;
            }

            __break(1u);
            goto LABEL_35;
          }

          ++v18;
          v20 = v23 - 1;
          if (__OFSUB__(v23, 1))
          {
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
      }

      __break(1u);
      goto LABEL_46;
    }

    sub_2764B12B8();
    v36 = swift_allocObject();
    v36[2] = 8;
    v36[3] = 0;
    v36[4] = 0;
    v36[5] = 0;
    v37 = sub_2764B12A8();
    v38 = objc_opt_self();
    sub_2764B1278();
    v39 = sub_2764B11F8();

    sub_2764B1278();
    v35 = sub_2764B11F8();

    sub_2764B1278();
    v40 = sub_2764B11F8();

    [v38 handleFailureInFunction:v39 file:v35 lineNumber:117 isFatal:0 format:v40 args:v37];

    v52 = v40;
  }

  else
  {
LABEL_35:
    sub_2764B12B8();
    v31 = swift_allocObject();
    v31[2] = 8;
    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
    v32 = sub_2764B12A8();
    v33 = objc_opt_self();
    sub_2764B1278();
    v34 = sub_2764B11F8();

    sub_2764B1278();
    v35 = sub_2764B11F8();

    sub_2764B1278();
    v52 = sub_2764B11F8();

    [v33 handleFailureInFunction:v34 file:v35 lineNumber:116 isFatal:0 format:v52 args:v32];
  }

LABEL_39:
}

void sub_2764A2B34()
{
  v1 = v0;
  if (([v0 treeBuilt] & 1) == 0)
  {
    [v0 buildSubTree];
  }

  v2 = [v0 bodyLayoutItem];
  if (!v2)
  {
    sub_2764B12B8();
    v55 = swift_allocObject();
    v55[2] = 8;
    v55[3] = 0;
    v55[4] = 0;
    v55[5] = 0;
    v56 = sub_2764B12A8();
    v57 = objc_opt_self();
    sub_2764B1278();
    v58 = sub_2764B11F8();

    sub_2764B1278();
    v59 = sub_2764B11F8();

    sub_2764B1278();
    v133 = sub_2764B11F8();

    [v57 handleFailureInFunction:v58 file:v59 lineNumber:168 isFatal:0 format:v133 args:v56];

LABEL_28:
    goto LABEL_29;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_valueAxisLayoutItem];
  if (!v4)
  {
    sub_2764B12B8();
    v60 = swift_allocObject();
    v60[2] = 8;
    v60[3] = 0;
    v60[4] = 0;
    v60[5] = 0;
    v61 = sub_2764B12A8();
    v62 = objc_opt_self();
    sub_2764B1278();
    v63 = sub_2764B11F8();

    sub_2764B1278();
    v59 = sub_2764B11F8();

    sub_2764B1278();
    v133 = sub_2764B11F8();

    [v62 handleFailureInFunction:v63 file:v59 lineNumber:169 isFatal:0 format:v133 args:v61];

    goto LABEL_28;
  }

  v5 = *&v0[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_categoryAxisLayoutItem];
  if (v5)
  {
    v6 = *&v0[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_categoryAxisGridlineTickmarkLayoutItem];
    if (v6)
    {
      v7 = *&v0[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_valueAxisGridlineTickmarkLayoutItem];
      if (v7)
      {
        v8 = *&v0[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_gridLayoutItem];
        if (v8)
        {
          v9 = v4;
          v10 = v5;
          v11 = v6;
          v12 = v7;
          v13 = v8;
          v129 = [v1 chart];
          if (v129)
          {
            [v1 layoutOffset];
            v15 = v14;
            v17 = v16;
            [v1 layoutSize];
            sub_2764A2430(v18, v19);
            v132 = v3;
            [v132 layoutSize];
            v21 = v20;
            v23 = v22;
            [v129 minimumChartBodySize];
            if (v21 < v24 || v23 < v25)
            {
              if (v21 > v24)
              {
                v24 = v21;
              }

              if (v23 > v25)
              {
                v25 = v23;
              }

              if (v25 >= v24)
              {
                v21 = v24;
              }

              else
              {
                v21 = v25;
              }

              v23 = v21;
            }

            [v132 setLayoutSize_];
            v124 = v13;
            sub_2764A0D60(v21, v23);
            v26 = v9;
            [v26 setLayoutSize_];
            v127 = v26;
            [v26 layoutInward];
            v27 = v10;
            [v27 setLayoutSize_];
            v126 = v27;
            [v27 layoutInward];
            v28 = v11;
            [v28 setLayoutSize_];
            [v28 layoutInward];
            v29 = v12;
            [v29 setLayoutSize_];
            [v29 layoutInward];
            v30 = [v1 titleElement];
            if (v30)
            {
              v31 = v30;
              [v31 minSize];
              [v31 setLayoutSize_];

              [v31 layoutInward];
            }

            sub_2764A3A30();
            [v132 layoutRect];
            v32 = &v124[OBJC_IVAR____TtC8TSCharts28TSCHChartPolarGridLayoutItem_baseLayoutRect];
            *v32 = v33;
            *(v32 + 1) = v34;
            *(v32 + 2) = v35;
            *(v32 + 3) = v36;
            v134.receiver = v1;
            v134.super_class = type metadata accessor for TSCHChartRadarAreaLayoutItem();
            objc_msgSendSuper2(&v134, sel_layoutInward);
            sub_2764A1C78();
            v38 = v37;
            v40 = v39;
            v42 = v41;
            v44 = v43;
            if ((TSUNearlyEqualSizes() & 1) == 0)
            {
              [v1 setLayoutSize_];
            }

            v122 = v17;
            v123 = v15;
            v45 = [v1 titleElement];
            if (v45)
            {
              v46 = v45;
              [v45 layoutRect];
              v48 = v47;
              v50 = v49;
              v52 = v51;
              v54 = v53;
            }

            else
            {
              v48 = *MEMORY[0x277CBF398];
              v50 = *(MEMORY[0x277CBF398] + 8);
              v52 = *(MEMORY[0x277CBF398] + 16);
              v54 = *(MEMORY[0x277CBF398] + 24);
            }

            v97 = objc_opt_self();
            [v97 normalizeRect:v48 outerRect:{v50, v52, v54, v38, v40, v42, v44}];
            v99 = v98;
            v101 = v100;
            v102 = [v1 titleElement];
            if (v102)
            {
              v103 = v102;
              [v102 setLayoutOffset_];
            }

            [v132 layoutRect];
            [v97 normalizeRect_outerRect_];
            v105 = v104;
            v107 = v106;
            v109 = v108;
            v111 = v110;
            [v132 setLayoutOffset_];

            v112 = v124;
            [v112 layoutRect];
            [v97 normalizeRect_outerRect_];
            [v112 &selRef_setLegendGeometryFrame_ + 6];

            *v32 = v105;
            *(v32 + 1) = v107;
            *(v32 + 2) = v109;
            *(v32 + 3) = v111;
            [v126 layoutRect];
            [v97 normalizeRect_outerRect_];
            [v126 &selRef_setLegendGeometryFrame_ + 6];

            [v127 layoutRect];
            [v97 normalizeRect_outerRect_];
            [v127 &selRef_setLegendGeometryFrame_ + 6];

            [v28 layoutRect];
            [v97 normalizeRect_outerRect_];
            [v28 &selRef_setLegendGeometryFrame_ + 6];

            [v29 layoutRect];
            [v97 normalizeRect_outerRect_];
            [v29 &selRef_setLegendGeometryFrame_ + 6];

            [v1 layoutOffset];
            if (v114 != v123 || v113 != v122)
            {
              sub_2764B12B8();
              v115 = swift_allocObject();
              v115[2] = 8;
              v115[3] = 0;
              v115[4] = 0;
              v115[5] = 0;
              v125 = sub_2764B12A8();
              v121 = objc_opt_self();
              sub_2764B1278();
              v116 = sub_2764B11F8();

              sub_2764B1278();
              v117 = sub_2764B11F8();

              sub_2764B1278();
              v118 = sub_2764B11F8();

              [v121 handleFailureInFunction:v116 file:v117 lineNumber:257 isFatal:0 format:v118 args:v125];
            }

            [v1 layoutOffset];
            if (v120 != v123 || v119 != v122)
            {
              [v1 setLayoutOffset_];
            }

            return;
          }

          sub_2764B12B8();
          v93 = swift_allocObject();
          v93[2] = 8;
          v93[3] = 0;
          v93[4] = 0;
          v93[5] = 0;
          v128 = sub_2764B12A8();
          v131 = v9;
          v94 = objc_opt_self();
          sub_2764B1278();
          v95 = sub_2764B11F8();

          sub_2764B1278();
          v96 = sub_2764B11F8();

          sub_2764B1278();
          v133 = sub_2764B11F8();

          [v94 handleFailureInFunction:v95 file:v96 lineNumber:174 isFatal:0 format:v133 args:v128];
        }

        else
        {
          sub_2764B12B8();
          v85 = swift_allocObject();
          v85[2] = 8;
          v85[3] = 0;
          v85[4] = 0;
          v85[5] = 0;
          v130 = v4;
          v86 = v5;
          v87 = v6;
          v88 = v7;
          v89 = sub_2764B12A8();
          v90 = objc_opt_self();
          sub_2764B1278();
          v91 = sub_2764B11F8();

          sub_2764B1278();
          v92 = sub_2764B11F8();

          sub_2764B1278();
          v133 = sub_2764B11F8();

          [v90 handleFailureInFunction:v91 file:v92 lineNumber:173 isFatal:0 format:v133 args:v89];
        }
      }

      else
      {
        sub_2764B12B8();
        v77 = swift_allocObject();
        v77[2] = 8;
        v77[3] = 0;
        v77[4] = 0;
        v77[5] = 0;
        v78 = v4;
        v79 = v5;
        v80 = v6;
        v81 = sub_2764B12A8();
        v82 = objc_opt_self();
        sub_2764B1278();
        v83 = sub_2764B11F8();

        sub_2764B1278();
        v84 = sub_2764B11F8();

        sub_2764B1278();
        v133 = sub_2764B11F8();

        [v82 handleFailureInFunction:v83 file:v84 lineNumber:172 isFatal:0 format:v133 args:v81];
      }
    }

    else
    {
      sub_2764B12B8();
      v70 = swift_allocObject();
      v70[2] = 8;
      v70[3] = 0;
      v70[4] = 0;
      v70[5] = 0;
      v71 = v4;
      v72 = v5;
      v73 = sub_2764B12A8();
      v74 = objc_opt_self();
      sub_2764B1278();
      v75 = sub_2764B11F8();

      sub_2764B1278();
      v76 = sub_2764B11F8();

      sub_2764B1278();
      v133 = sub_2764B11F8();

      [v74 handleFailureInFunction:v75 file:v76 lineNumber:171 isFatal:0 format:v133 args:v73];
    }
  }

  else
  {
    sub_2764B12B8();
    v64 = swift_allocObject();
    v64[2] = 8;
    v64[3] = 0;
    v64[4] = 0;
    v64[5] = 0;
    v65 = v4;
    v66 = sub_2764B12A8();
    v67 = objc_opt_self();
    sub_2764B1278();
    v68 = sub_2764B11F8();

    sub_2764B1278();
    v69 = sub_2764B11F8();

    sub_2764B1278();
    v133 = sub_2764B11F8();

    [v67 handleFailureInFunction:v68 file:v69 lineNumber:170 isFatal:0 format:v133 args:v66];
  }

LABEL_29:
}

void sub_2764A3A30()
{
  v1 = v0;
  v2 = [v0 bodyLayoutItem];
  if (!v2)
  {
    sub_2764B12B8();
    v48 = swift_allocObject();
    v48[2] = 8;
    v48[3] = 0;
    v48[4] = 0;
    v48[5] = 0;
    v49 = sub_2764B12A8();
    v50 = objc_opt_self();
    sub_2764B1278();
    v43 = sub_2764B11F8();

    sub_2764B1278();
    v11 = sub_2764B11F8();

    sub_2764B1278();
    v78 = sub_2764B11F8();

    [v50 handleFailureInFunction:v43 file:v11 lineNumber:264 isFatal:0 format:v78 args:v49];
LABEL_38:

    goto LABEL_39;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_valueAxisLayoutItem];
  if (!v4)
  {
    sub_2764B12B8();
    v51 = swift_allocObject();
    v51[2] = 8;
    v51[3] = 0;
    v51[4] = 0;
    v51[5] = 0;
    v52 = sub_2764B12A8();
    v53 = objc_opt_self();
    sub_2764B1278();
    v43 = sub_2764B11F8();

    sub_2764B1278();
    v11 = sub_2764B11F8();

    sub_2764B1278();
    v78 = sub_2764B11F8();

    [v53 handleFailureInFunction:v43 file:v11 lineNumber:265 isFatal:0 format:v78 args:v52];

    goto LABEL_38;
  }

  v5 = *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_categoryAxisLayoutItem];
  if (!v5)
  {
    sub_2764B12B8();
    v54 = swift_allocObject();
    v54[2] = 8;
    v54[3] = 0;
    v54[4] = 0;
    v54[5] = 0;
    v55 = v4;
    v56 = sub_2764B12A8();
    v57 = objc_opt_self();
    sub_2764B1278();
    v43 = sub_2764B11F8();

    sub_2764B1278();
    v11 = sub_2764B11F8();

    sub_2764B1278();
    v78 = sub_2764B11F8();

    [v57 handleFailureInFunction:v43 file:v11 lineNumber:266 isFatal:0 format:v78 args:v56];

    goto LABEL_38;
  }

  v6 = *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_categoryAxisGridlineTickmarkLayoutItem];
  if (!v6)
  {
    sub_2764B12B8();
    v58 = swift_allocObject();
    v58[2] = 8;
    v58[3] = 0;
    v58[4] = 0;
    v58[5] = 0;
    v59 = v4;
    v60 = v5;
    v61 = sub_2764B12A8();
    v62 = objc_opt_self();
    sub_2764B1278();
    v43 = sub_2764B11F8();

    sub_2764B1278();
    v11 = sub_2764B11F8();

    sub_2764B1278();
    v78 = sub_2764B11F8();

    [v62 handleFailureInFunction:v43 file:v11 lineNumber:267 isFatal:0 format:v78 args:v61];

    goto LABEL_38;
  }

  v7 = *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_valueAxisGridlineTickmarkLayoutItem];
  if (!v7)
  {
    sub_2764B12B8();
    v63 = swift_allocObject();
    v63[2] = 8;
    v63[3] = 0;
    v63[4] = 0;
    v63[5] = 0;
    v64 = v4;
    v65 = v5;
    v66 = v6;
    v67 = sub_2764B12A8();
    v68 = objc_opt_self();
    sub_2764B1278();
    v43 = sub_2764B11F8();

    sub_2764B1278();
    v11 = sub_2764B11F8();

    sub_2764B1278();
    v78 = sub_2764B11F8();

    [v68 handleFailureInFunction:v43 file:v11 lineNumber:268 isFatal:0 format:v78 args:v67];

    goto LABEL_38;
  }

  v8 = *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_gridLayoutItem];
  if (!v8)
  {
    sub_2764B12B8();
    v69 = swift_allocObject();
    v69[2] = 8;
    v69[3] = 0;
    v69[4] = 0;
    v69[5] = 0;
    v77 = v4;
    v70 = v5;
    v71 = v6;
    v72 = v7;
    v73 = sub_2764B12A8();
    v74 = objc_opt_self();
    sub_2764B1278();
    v43 = sub_2764B11F8();

    sub_2764B1278();
    v11 = sub_2764B11F8();

    sub_2764B1278();
    v78 = sub_2764B11F8();

    [v74 handleFailureInFunction:v43 file:v11 lineNumber:269 isFatal:0 format:v78 args:v73];

    goto LABEL_38;
  }

  v9 = v4;
  v10 = v5;
  v11 = v6;
  v75 = v7;
  v12 = v8;
  v13 = [v1 titleElement];
  v14 = 0.0;
  if (v13)
  {
    v15 = v13;
    [v13 layoutSize];
    v17 = v16;
    v18 = 0.0;
    if (v16 > 0.0)
    {
      [v15 overhangMagnitudeForEdge_];
      v18 = v19;
    }

    v14 = v18 + v17;
  }

  v20 = v9;
  [v20 overhangMagnitudeForEdge_];
  v22 = v21;
  v23 = v10;
  [v23 overhangMagnitudeForEdge_];
  if (v22 > v24)
  {
    v25 = v22;
  }

  else
  {
    v25 = v24;
  }

  [v20 overhangMagnitudeForEdge_];
  v27 = v26;
  [v23 overhangMagnitudeForEdge_];
  if (v27 > v28)
  {
    v29 = v27;
  }

  else
  {
    v29 = v28;
  }

  v30 = v12;
  [v30 layoutSize];
  v78 = v3;
  [v78 layoutSize];
  TSUSubtractSizes();
  TSUMultiplySizeScalar();
  if (v25 > v31)
  {
    v33 = v25;
  }

  else
  {
    v33 = v31;
  }

  v34 = v25 - v31;
  if (v34 < 0.0)
  {
    v34 = 0.0;
  }

  v35 = v29 > v32;
  if (v29 > v32)
  {
    v36 = v29;
  }

  else
  {
    v36 = v32;
  }

  v37 = v14 + v36;
  v38 = v14 + v36 - v32;
  if (!v35)
  {
    v38 = v14;
  }

  [v30 setLayoutOffset_];

  [v78 setLayoutOffset_];
  v39 = [v1 titleElement];
  if (v39)
  {
    v40 = v39;
    [v39 setLayoutOffset_];
  }

  [v78 layoutOffset];
  [v20 setLayoutOffset_];

  [v78 layoutOffset];
  [v23 setLayoutOffset_];

  v41 = [v11 axisTickMarksLayoutItem];
  if (v41)
  {
    v42 = v41;
    [v78 layoutOffset];
    [v42 setLayoutOffset_];
  }

  v43 = v76;
  [v78 layoutOffset];
  v45 = v44;
  v47 = v46;

  [v43 setLayoutOffset_];
LABEL_39:
}

void sub_2764A4380()
{
  v1 = v0;
  v2 = [v0 bodyLayoutItem];
  if (!v2)
  {
    sub_2764B12B8();
    v33 = swift_allocObject();
    v33[2] = 8;
    v33[3] = 0;
    v33[4] = 0;
    v33[5] = 0;
    v34 = sub_2764B12A8();
    v35 = objc_opt_self();
    sub_2764B1278();
    v36 = sub_2764B11F8();

    sub_2764B1278();
    v37 = sub_2764B11F8();

    sub_2764B1278();
    v76 = sub_2764B11F8();

    [v35 handleFailureInFunction:v36 file:v37 lineNumber:326 isFatal:0 format:v76 args:v34];
LABEL_14:

    goto LABEL_15;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_valueAxisLayoutItem];
  if (!v4)
  {
    sub_2764B12B8();
    v38 = swift_allocObject();
    v38[2] = 8;
    v38[3] = 0;
    v38[4] = 0;
    v38[5] = 0;
    v39 = sub_2764B12A8();
    v40 = objc_opt_self();
    sub_2764B1278();
    v36 = sub_2764B11F8();

    sub_2764B1278();
    v37 = sub_2764B11F8();

    sub_2764B1278();
    v76 = sub_2764B11F8();

    [v40 handleFailureInFunction:v36 file:v37 lineNumber:327 isFatal:0 format:v76 args:v39];

    goto LABEL_14;
  }

  v5 = *&v0[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_categoryAxisLayoutItem];
  if (v5)
  {
    v6 = *&v0[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_categoryAxisGridlineTickmarkLayoutItem];
    if (v6)
    {
      v7 = *&v0[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_valueAxisGridlineTickmarkLayoutItem];
      if (v7)
      {
        v8 = *&v0[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_gridLayoutItem];
        if (v8)
        {
          v9 = v4;
          v10 = v5;
          v11 = v6;
          v12 = v7;
          v13 = v8;
          v14 = v3;
          [v14 layoutSize];
          v16 = v15;
          v18 = v17;
          [v9 setChartBodySize_];
          [v10 setChartBodySize_];
          [v11 setChartBodySize_];
          [v12 setChartBodySize_];
          v78.receiver = v1;
          v78.super_class = type metadata accessor for TSCHChartRadarAreaLayoutItem();
          objc_msgSendSuper2(&v78, sel_layoutOutward);
          if (v16 <= 0.0 || v18 <= 0.0)
          {

            sub_2764B12B8();
            v69 = swift_allocObject();
            v69[2] = 8;
            v69[3] = 0;
            v69[4] = 0;
            v69[5] = 0;
            v77 = sub_2764B12A8();
            v75 = objc_opt_self();
            sub_2764B1278();
            v73 = sub_2764B11F8();

            sub_2764B1278();
            v70 = v9;
            v71 = sub_2764B11F8();

            sub_2764B1278();
            v72 = sub_2764B11F8();

            [v75 handleFailureInFunction:v73 file:v71 lineNumber:348 isFatal:0 format:v72 args:v77];
          }

          else
          {
            v19 = [v1 titleElement];
            if (v19)
            {
              v20 = v19;
              [v19 setChartBodyWidth_];
              v21 = v20;
              [v21 minSize];
              [v21 setLayoutSize_];

              [v21 layoutInward];
            }

            [v14 setLayoutSize_];
            sub_2764A0D60(v16, v18);
            [v9 setLayoutSize_];
            [v9 layoutInward];
            [v12 setLayoutSize_];
            [v12 layoutInward];
            [v10 setLayoutSize_];
            [v10 layoutInward];
            sub_2764A3A30();
            [v14 layoutRect];
            v23 = v22;
            v25 = v24;
            v27 = v26;
            v29 = v28;

            v30 = &v13[OBJC_IVAR____TtC8TSCharts28TSCHChartPolarGridLayoutItem_baseLayoutRect];
            *v30 = v23;
            *(v30 + 1) = v25;
            *(v30 + 2) = v27;
            *(v30 + 3) = v29;
            sub_2764A1C78();
            [v1 setLayoutSize_];
            [v1 setLayoutOffset_];
          }

          return;
        }

        sub_2764B12B8();
        v62 = swift_allocObject();
        v62[2] = 8;
        v62[3] = 0;
        v62[4] = 0;
        v62[5] = 0;
        v74 = v4;
        v63 = v5;
        v64 = v6;
        v65 = v7;
        v66 = sub_2764B12A8();
        v67 = objc_opt_self();
        sub_2764B1278();
        v68 = sub_2764B11F8();

        sub_2764B1278();
        v61 = sub_2764B11F8();

        sub_2764B1278();
        v76 = sub_2764B11F8();

        [v67 handleFailureInFunction:v68 file:v61 lineNumber:331 isFatal:0 format:v76 args:v66];
      }

      else
      {
        sub_2764B12B8();
        v54 = swift_allocObject();
        v54[2] = 8;
        v54[3] = 0;
        v54[4] = 0;
        v54[5] = 0;
        v55 = v4;
        v56 = v5;
        v57 = v6;
        v58 = sub_2764B12A8();
        v59 = objc_opt_self();
        sub_2764B1278();
        v60 = sub_2764B11F8();

        sub_2764B1278();
        v61 = sub_2764B11F8();

        sub_2764B1278();
        v76 = sub_2764B11F8();

        [v59 handleFailureInFunction:v60 file:v61 lineNumber:330 isFatal:0 format:v76 args:v58];
      }
    }

    else
    {
      sub_2764B12B8();
      v47 = swift_allocObject();
      v47[2] = 8;
      v47[3] = 0;
      v47[4] = 0;
      v47[5] = 0;
      v48 = v4;
      v49 = v5;
      v50 = sub_2764B12A8();
      v51 = objc_opt_self();
      sub_2764B1278();
      v52 = sub_2764B11F8();

      sub_2764B1278();
      v53 = sub_2764B11F8();

      sub_2764B1278();
      v76 = sub_2764B11F8();

      [v51 handleFailureInFunction:v52 file:v53 lineNumber:329 isFatal:0 format:v76 args:v50];
    }
  }

  else
  {
    sub_2764B12B8();
    v41 = swift_allocObject();
    v41[2] = 8;
    v41[3] = 0;
    v41[4] = 0;
    v41[5] = 0;
    v42 = v4;
    v43 = sub_2764B12A8();
    v44 = objc_opt_self();
    sub_2764B1278();
    v45 = sub_2764B11F8();

    sub_2764B1278();
    v46 = sub_2764B11F8();

    sub_2764B1278();
    v76 = sub_2764B11F8();

    [v44 handleFailureInFunction:v45 file:v46 lineNumber:328 isFatal:0 format:v76 args:v43];
  }

LABEL_15:
}

void sub_2764A4E34(uint64_t a1)
{
  v3 = [v1 bodyLayoutItem];
  if (!v3)
  {
    sub_2764B12B8();
    v39 = swift_allocObject();
    v39[2] = 8;
    v39[3] = 0;
    v39[4] = 0;
    v39[5] = 0;
    v40 = sub_2764B12A8();
    v41 = objc_opt_self();
    sub_2764B1278();
    v42 = sub_2764B11F8();

    sub_2764B1278();
    v43 = sub_2764B11F8();

    sub_2764B1278();
    v44 = sub_2764B11F8();

    [v41 handleFailureInFunction:v42 file:v43 lineNumber:386 isFatal:0 format:v44 args:v40];

    return;
  }

  v4 = v3;
  v5 = *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_valueAxisLayoutItem];
  if (!v5)
  {
    sub_2764B12B8();
    v45 = swift_allocObject();
    v45[2] = 8;
    v45[3] = 0;
    v45[4] = 0;
    v45[5] = 0;
    v46 = sub_2764B12A8();
    v47 = objc_opt_self();
    sub_2764B1278();
    v48 = sub_2764B11F8();

    sub_2764B1278();
    v49 = sub_2764B11F8();

    sub_2764B1278();
    v50 = sub_2764B11F8();

    [v47 handleFailureInFunction:v48 file:v49 lineNumber:387 isFatal:0 format:v50 args:v46];

    return;
  }

  v6 = *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_categoryAxisLayoutItem];
  if (!v6)
  {
    sub_2764B12B8();
    v51 = swift_allocObject();
    v51[2] = 8;
    v51[3] = 0;
    v51[4] = 0;
    v51[5] = 0;
    v52 = v5;
    v53 = sub_2764B12A8();
    v54 = objc_opt_self();
    sub_2764B1278();
    v55 = sub_2764B11F8();

    sub_2764B1278();
    v56 = sub_2764B11F8();

    sub_2764B1278();
    v57 = sub_2764B11F8();

    [v54 handleFailureInFunction:v55 file:v56 lineNumber:388 isFatal:0 format:v57 args:v53];

    return;
  }

  v7 = *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_categoryAxisGridlineTickmarkLayoutItem];
  if (!v7)
  {
    sub_2764B12B8();
    v58 = swift_allocObject();
    v58[2] = 8;
    v58[3] = 0;
    v58[4] = 0;
    v58[5] = 0;
    v59 = v5;
    v60 = v6;
    v61 = sub_2764B12A8();
    v62 = objc_opt_self();
    sub_2764B1278();
    v63 = sub_2764B11F8();

    sub_2764B1278();
    v64 = sub_2764B11F8();

    sub_2764B1278();
    v65 = sub_2764B11F8();

    [v62 handleFailureInFunction:v63 file:v64 lineNumber:389 isFatal:0 format:v65 args:v61];

    return;
  }

  v8 = *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_valueAxisGridlineTickmarkLayoutItem];
  if (!v8)
  {
    sub_2764B12B8();
    v66 = swift_allocObject();
    v66[2] = 8;
    v66[3] = 0;
    v66[4] = 0;
    v66[5] = 0;
    v83 = v5;
    v67 = v6;
    v68 = v7;
    v69 = sub_2764B12A8();
    v70 = objc_opt_self();
    sub_2764B1278();
    v71 = sub_2764B11F8();

    sub_2764B1278();
    v72 = sub_2764B11F8();

    sub_2764B1278();
    v73 = sub_2764B11F8();

    [v70 handleFailureInFunction:v71 file:v72 lineNumber:390 isFatal:0 format:v73 args:v69];

LABEL_25:

    return;
  }

  v9 = *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_gridLayoutItem];
  if (!v9)
  {
    sub_2764B12B8();
    v74 = swift_allocObject();
    v74[2] = 8;
    v74[3] = 0;
    v74[4] = 0;
    v74[5] = 0;
    v84 = v5;
    v81 = v6;
    v75 = v7;
    v76 = v8;
    v77 = sub_2764B12A8();
    v78 = objc_opt_self();
    sub_2764B1278();
    v79 = sub_2764B11F8();

    sub_2764B1278();
    v72 = sub_2764B11F8();

    sub_2764B1278();
    v73 = sub_2764B11F8();

    [v78 handleFailureInFunction:v79 file:v72 lineNumber:391 isFatal:0 format:v73 args:v77];

    goto LABEL_25;
  }

  v85 = MEMORY[0x277D84F90];
  v10 = v5;
  v82 = v6;
  v11 = v7;
  v80 = v8;
  v12 = v9;
  v13 = [v1 titleElement];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 renderersWithRep_];
    sub_2764A12F8(0, &qword_280A46380);
    v16 = sub_2764B1228();

    sub_2764A5974(v16);
  }

  v17 = [v82 renderersWithRep_];
  sub_2764A12F8(0, &qword_280A46380);
  v18 = sub_2764B1228();

  sub_2764A5974(v18);
  v19 = [v10 &selRef_resetTransformsForLayoutBounds + 3];
  v20 = sub_2764B1228();

  sub_2764A5974(v20);
  v21 = [v11 &selRef_resetTransformsForLayoutBounds + 3];
  v22 = sub_2764B1228();

  sub_2764A5974(v22);
  v23 = [v80 &selRef_resetTransformsForLayoutBounds + 3];
  v24 = sub_2764B1228();

  sub_2764A5974(v24);
  v25 = [v12 &selRef_resetTransformsForLayoutBounds + 3];
  v26 = sub_2764B1228();

  sub_2764A5974(v26);
  v27 = objc_allocWithZone(TSCHCompositeRenderer);
  v28 = sub_2764B1218();
  v29 = [v27 initWithChartRep:a1 withSubRenderers:v28];

  if (!v29)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  MEMORY[0x277C95F70]();
  if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2764B1238();
  }

  sub_2764B1248();
  v30 = objc_allocWithZone(TSCHCompositeRenderer);
  v31 = sub_2764B1218();
  v32 = [v30 initWithChartRep:a1 withSubRenderers:v31];

  if (!v32)
  {
    goto LABEL_27;
  }

  MEMORY[0x277C95F70]();
  if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2764B1238();
  }

  sub_2764B1248();
  v33 = [v4 renderersWithRep_];
  v34 = sub_2764B1228();

  sub_2764A5974(v34);
  v35 = objc_allocWithZone(TSCHCompositeRenderer);
  v36 = sub_2764B1218();
  v37 = [v35 initWithChartRep:a1 withSubRenderers:v36];

  if (!v37)
  {
    goto LABEL_28;
  }

  MEMORY[0x277C95F70](v38);
  if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2764B1238();
  }

  sub_2764B1248();
}

uint64_t sub_2764A5974(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2764B12C8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2764B12C8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2764A5F4C(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2764A5FEC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_2764A5B44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TSCHChartRadarAreaLayoutItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2764A5C1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2764A0458(&qword_280A46408);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2764A5D20(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2764A0458(&qword_280A463F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_2764A5E24(char *a1, int64_t a2, char a3)
{
  result = sub_2764A5E48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2764A5E48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2764A0458(&qword_280A463F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_2764A5F4C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2764B12C8();
LABEL_9:
  result = sub_2764B1298();
  *v1 = result;
  return result;
}

uint64_t sub_2764A5FEC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2764B12C8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2764B12C8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2764A6298();
          for (i = 0; i != v6; ++i)
          {
            sub_2764A0458(&qword_280A463F8);
            v9 = sub_2764A617C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2764A12F8(0, &qword_280A46380);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_2764A617C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277C95FF0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2764A61FC;
  }

  __break(1u);
  return result;
}

id sub_2764A6204(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_valueAxisLayoutItem] = 0;
  *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_categoryAxisLayoutItem] = 0;
  *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_categoryAxisGridlineTickmarkLayoutItem] = 0;
  *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_valueAxisGridlineTickmarkLayoutItem] = 0;
  *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_gridLayoutItem] = 0;
  *&v1[OBJC_IVAR____TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem_kTSCHMaxIterationsForBodyRectEstimation] = 20;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TSCHChartRadarAreaLayoutItem();
  return objc_msgSendSuper2(&v4, sel_initWithParent_, a1);
}

unint64_t sub_2764A6298()
{
  result = qword_280A46400;
  if (!qword_280A46400)
  {
    sub_2764A62FC(&qword_280A463F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A46400);
  }

  return result;
}

uint64_t sub_2764A62FC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

long double static TSCHChartLayoutItem.halfProtrusionForRegularPolygon(withSides:strokeWidth:)(uint64_t a1, double a2)
{
  if (a1 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a1;
  }

  return a2 * 0.5 / sin(fmax((v2 + -2.0) * 3.14159265 / v2, 1.04719755) * 0.5);
}

id static TSCHChartType.radar.getter()
{
  if (qword_280A46358 != -1)
  {
    swift_once();
  }

  v1 = qword_280A46410;

  return v1;
}

id sub_2764A64C4()
{
  result = [objc_allocWithZone(type metadata accessor for TSCHChartTypeRadar()) init];
  qword_280A46410 = result;
  return result;
}

id sub_2764A6934()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TSCHChartTypeRadar();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2764A6990(void *a1, void *a2, void *a3)
{
  *a1 = *MEMORY[0x277D808F0];
  *a2 = *MEMORY[0x277D80970];
  sub_2764A12F8(0, &qword_280A46418);
  *a3 = sub_2764B1258();
  v4 = [objc_opt_self() barChart];

  return v4;
}

void sub_2764A6A84()
{
  if (__cxa_guard_acquire(&qword_280A46858))
  {
    __asm { FMOV            V0.2S, #1.5 }

    qword_280A46860 = _D0;
    dword_280A46868 = -1046478848;

    __cxa_guard_release(&qword_280A46858);
  }
}

void sub_2764A6B84()
{
  if (__cxa_guard_acquire(&qword_280A46980))
  {
    qword_280A46978 = 0x4348000041200000;

    __cxa_guard_release(&qword_280A46980);
  }
}

uint64_t sub_2764A6BE8(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a5, a1, a2, a3, "[TSCHCapturedFillSet initWithIdentifier:seriesStyles:numberOfThemeSeriesStyles:]");
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHFillSet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v13, v14, v15, v6, v11, 557, 0, "Out-of-bounds type assignment failed");

  return objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
}

uint64_t sub_2764A6CDC(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a5, a1, a2, a3, "+[TSCHReferenceLine defaultNonStyleWithContext:referenceLineType:axis:]");
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHReferenceLine.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v13, v14, v15, v6, v11, 120, 0, "Out-of-bounds type assignment was clamped to max");

  v20 = MEMORY[0x277D81150];

  return objc_msgSend_logBacktraceThrottled(v20, v16, v17, v18, v19);
}

uint64_t sub_2764A6ECC()
{
  v3 = sub_2762392F4();
  v8 = objc_msgSend_stringWithUTF8String_(v3, v4, v5, v6, v7, "[TSCHChartModel p_synchronizeSeriesListWithSeriesNonStyleMigration:]");
  v13 = objc_msgSend_stringWithUTF8String_(*(v1 + 3240), v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v14, v15, v16, v17, v8, v13, 587, 0, "Out-of-bounds type assignment was clamped to max");

  return objc_msgSend_logBacktraceThrottled(*(v2 + 336), v18, v19, v20, v21);
}

uint64_t sub_2764A6F50()
{
  v3 = sub_2762392F4();
  v8 = objc_msgSend_stringWithUTF8String_(v3, v4, v5, v6, v7, "[TSCHChartModel seriesForHiddenDataExportAtIndex:]");
  v13 = objc_msgSend_stringWithUTF8String_(*(v1 + 3240), v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartModel.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v14, v15, v16, v17, v8, v13, 1195, 0, "Out-of-bounds type assignment was clamped to max");

  v22 = *(v2 + 336);

  return objc_msgSend_logBacktraceThrottled(v22, v18, v19, v20, v21);
}

uint64_t sub_2764A6FF4()
{
  v3 = sub_2762392F4();
  v8 = objc_msgSend_stringWithUTF8String_(v3, v4, v5, v6, v7, "[TSCHChartSeries hasIntValueForProperty:value:]");
  v13 = objc_msgSend_stringWithUTF8String_(*(v1 + 3240), v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeries.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v14, v15, v16, v17, v8, v13, 677, 0, "Out-of-bounds type assignment was clamped to max");

  v22 = *(v2 + 336);

  return objc_msgSend_logBacktraceThrottled(v22, v18, v19, v20, v21);
}

uint64_t sub_2764A7084()
{
  v3 = sub_2762392F4();
  v8 = objc_msgSend_stringWithUTF8String_(v3, v4, v5, v6, v7, "[TSCHChartSeries intValueForProperty:defaultValue:]");
  v13 = objc_msgSend_stringWithUTF8String_(*(v1 + 3240), v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeries.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v14, v15, v16, v17, v8, v13, 719, 0, "Out-of-bounds type assignment was clamped to max");

  return objc_msgSend_logBacktraceThrottled(*(v2 + 336), v18, v19, v20, v21);
}

uint64_t sub_2764A7B54()
{
  v2 = sub_2762392F4();
  v7 = objc_msgSend_stringWithUTF8String_(v2, v3, v4, v5, v6, "+[TSCHBaseStyle(__PropertyMaps_GEN) g_genericToSpecificPropertySetMap]_block_invoke_2");
  v12 = objc_msgSend_stringWithUTF8String_(*(v0 + 3240), v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMaps.GEN.m");
  sub_2762DECC0(v14, v15, v16, v12, v13);

  v21 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v21, v17, v18, v19, v20);
}

uint64_t sub_2764A7BD0()
{
  v2 = sub_2762392F4();
  v7 = objc_msgSend_stringWithUTF8String_(v2, v3, v4, v5, v6, "+[TSCHBaseStyle(__PropertyMaps_GEN) g_genericToSpecificPropertySetMap]_block_invoke_2");
  v12 = objc_msgSend_stringWithUTF8String_(*(v0 + 3240), v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMaps.GEN.m");
  sub_2762DECC0(v14, v15, v16, v12, v13);

  v21 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v21, v17, v18, v19, v20);
}

uint64_t sub_2764A81C4()
{
  v2 = sub_2762392F4();
  objc_msgSend_stringWithUTF8String_(v2, v3, v4, v5, v6, "+[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerPathForSemanticTag:ofChart:]");
  objc_claimAutoreleasedReturnValue();
  v7 = sub_2762E8E1C();
  v12 = objc_msgSend_stringWithUTF8String_(v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
  v13 = sub_2762E8E0C();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v14, v15, v16, v17);

  v22 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v22, v18, v19, v20, v21);
}

uint64_t sub_2764A8248()
{
  v2 = sub_2762392F4();
  objc_msgSend_stringWithUTF8String_(v2, v3, v4, v5, v6, "+[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerPathForSemanticTag:ofChart:]");
  objc_claimAutoreleasedReturnValue();
  v7 = sub_2762E8E1C();
  v12 = objc_msgSend_stringWithUTF8String_(v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
  v13 = sub_2762E8E0C();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v14, v15, v16, v17);

  v22 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v22, v18, v19, v20, v21);
}

uint64_t sub_2764A82CC()
{
  v2 = sub_2762392F4();
  objc_msgSend_stringWithUTF8String_(v2, v3, v4, v5, v6, "+[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerPathForSemanticTag:ofChart:]");
  objc_claimAutoreleasedReturnValue();
  v7 = sub_2762E8E1C();
  v12 = objc_msgSend_stringWithUTF8String_(v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
  v13 = sub_2762E8E0C();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v14, v15, v16, v17);

  v22 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v22, v18, v19, v20, v21);
}

uint64_t sub_2764A8350()
{
  v2 = sub_2762392F4();
  objc_msgSend_stringWithUTF8String_(v2, v3, v4, v5, v6, "+[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerPathForSemanticTag:ofChart:]");
  objc_claimAutoreleasedReturnValue();
  v7 = sub_2762E8E1C();
  v12 = objc_msgSend_stringWithUTF8String_(v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
  v13 = sub_2762E8E0C();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v14, v15, v16, v17);

  v22 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v22, v18, v19, v20, v21);
}

uint64_t sub_2764A83D4()
{
  v2 = sub_2762392F4();
  objc_msgSend_stringWithUTF8String_(v2, v3, v4, v5, v6, "+[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerPathForSemanticTag:ofChart:]");
  objc_claimAutoreleasedReturnValue();
  v7 = sub_2762E8E1C();
  v12 = objc_msgSend_stringWithUTF8String_(v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
  v13 = sub_2762E8E0C();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v14, v15, v16, v17);

  v22 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v22, v18, v19, v20, v21);
}

uint64_t sub_2764A8458()
{
  v2 = sub_2762392F4();
  objc_msgSend_stringWithUTF8String_(v2, v3, v4, v5, v6, "+[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerPathForSemanticTag:ofChart:]");
  objc_claimAutoreleasedReturnValue();
  v7 = sub_2762E8E1C();
  v12 = objc_msgSend_stringWithUTF8String_(v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
  v13 = sub_2762E8E0C();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v14, v15, v16, v17);

  v22 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v22, v18, v19, v20, v21);
}

uint64_t sub_2764A84DC()
{
  v2 = sub_2762392F4();
  objc_msgSend_stringWithUTF8String_(v2, v3, v4, v5, v6, "+[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerPathForStyleOwner:]");
  objc_claimAutoreleasedReturnValue();
  v7 = sub_2762E8E1C();
  v12 = objc_msgSend_stringWithUTF8String_(v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
  v13 = sub_2762E8E0C();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v14, v15, v16, v17);

  v22 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v22, v18, v19, v20, v21);
}

uint64_t sub_2764A8560()
{
  v2 = sub_2762392F4();
  objc_msgSend_stringWithUTF8String_(v2, v3, v4, v5, v6, "+[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerPathForStyleOwner:]");
  objc_claimAutoreleasedReturnValue();
  v7 = sub_2762E8E1C();
  v12 = objc_msgSend_stringWithUTF8String_(v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
  v13 = sub_2762E8E0C();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v14, v15, v16, v17);

  v22 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v22, v18, v19, v20, v21);
}

uint64_t sub_2764A85E4()
{
  v2 = sub_2762392F4();
  objc_msgSend_stringWithUTF8String_(v2, v3, v4, v5, v6, "+[TSCHStyleOwnerPath(TSCHStyleOwnerCollaborationSupporting) styleOwnerPathForStyleOwner:]");
  objc_claimAutoreleasedReturnValue();
  v7 = sub_2762E8E1C();
  v12 = objc_msgSend_stringWithUTF8String_(v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
  v13 = sub_2762E8E0C();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v14, v15, v16, v17);

  v22 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v22, v18, v19, v20, v21);
}

uint64_t sub_2764A86A4()
{
  v3 = sub_2762392F4();
  v8 = objc_msgSend_stringWithUTF8String_(v3, v4, v5, v6, v7, "[TSCHChartStyleState(AdoptStylesheet) stateByOptimizingParagraphStyleTableWithStylesheet:withMapper:]");
  v13 = objc_msgSend_stringWithUTF8String_(*(v1 + 3240), v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v14, v15, v16, v17, v8, v13, 657, 0, "Out-of-bounds type assignment was clamped to max");

  return objc_msgSend_logBacktraceThrottled(*(v2 + 336), v18, v19, v20, v21);
}

uint64_t sub_2764A8728()
{
  v3 = sub_2762392F4();
  v8 = objc_msgSend_stringWithUTF8String_(v3, v4, v5, v6, v7, "[TSCHChartStyleState(AdoptStylesheet) stateByOptimizingParagraphStyleTableWithStylesheet:withMapper:]");
  v13 = objc_msgSend_stringWithUTF8String_(*(v1 + 3240), v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v14, v15, v16, v17, v8, v13, 663, 0, "Out-of-bounds type assignment was clamped to max");

  return objc_msgSend_logBacktraceThrottled(*(v2 + 336), v18, v19, v20, v21);
}

void sub_2764A8810()
{
  if (__cxa_guard_acquire(qword_280A47C10))
  {
    xmmword_280A47C20 = xmmword_2764D7090;
    unk_280A47C30 = xmmword_2764D6370;
    xmmword_280A47C40 = xmmword_2764D70A0;
    unk_280A47C50 = xmmword_2764D70B0;

    __cxa_guard_release(qword_280A47C10);
  }
}

uint64_t sub_2764A8888(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a5, a1, a2, a3, "[TSCHChartStyleState paragraphStyleIndexesAreValid]");
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStyleState.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v13, v14, v15, v6, v11, 247, 0, "Out-of-bounds type assignment was clamped to min");

  return objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
}

google::protobuf::internal *sub_2764A89C8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27643ECAC(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764A8A98(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276446D10(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764A8B68(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276400A50(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764A8C38(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276400614(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2764A8D08(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::FormatStructArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2764A8DD8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27639432C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764A8EA8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276394A64(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764A8F78(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276395130(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764A9048(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_2763957CC(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764A9118(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276395E68(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764A91E8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276396534(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764A92B8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276398288(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764A9388(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27639886C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2764A9458(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecIntegerArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2764A9528(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecDoubleArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2764A95F8(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecBoolArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2764A96C8(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecStringArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2764A9798(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276397CCC(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2764A9868(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSDSOS::SpecStrokeArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2764A9938(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSDSOS::SpecShadowArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2764A9A08(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v11 = a2;
  while (1)
  {
    if (sub_2763D4D98(a3, &v11))
    {
      return v11;
    }

    TagFallback = (v11 + 1);
    v6 = *v11;
    if ((*v11 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*TagFallback << 7);
    v6 = v7 - 128;
    if ((*TagFallback & 0x80000000) == 0)
    {
      TagFallback = (v11 + 2);
LABEL_6:
      v11 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v11, (v7 - 128));
    v11 = TagFallback;
    if (!TagFallback)
    {
      return TagFallback;
    }

    v6 = v9;
LABEL_7:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return TagFallback;
}

uint64_t sub_2764A9B0C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSDSOS::SpecFillArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2764A9BDC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27639712C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764A9CAC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276397710(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2764A9D7C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSDSOS::SpecLineEndArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2764A9E4C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276396B48(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2764A9F1C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecColorArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2764A9FEC(int a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (!a1 || (a1 & 7) == 4)
  {
    result = 0;
    *(a2 + 80) = a1 - 1;
  }

  else
  {
    if ((*a3 & 1) == 0)
    {
      sub_2763D4E10(a3);
    }

    v6 = google::protobuf::internal::UnknownFieldParse();
    *a4 = v6;
    if (v6)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

google::protobuf::internal *sub_2764AA548(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCH::ChartGridArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t TSCH::ChartMultiDataIndexUpgrade::_InternalParse()
{
  sub_2763FBCF4();
  while (1)
  {
    v3 = sub_2763FBD14(v2);
    v11 = sub_2763FBD58(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_2763FBD04();
    if (v13 < 0)
    {
      sub_2763FBCB0();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_2763FBD40();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_2763FBD7C();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_2763FBD4C();
    }

    else
    {
      sub_2763D4E10((v0 + 8));
      sub_2763FBD70();
    }

    v2 = sub_2763FBD88();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2763FBD64();
  return v21;
}

uint64_t TSCH::ChartPasteboardAdditionsArchive::_InternalParse()
{
  sub_2763FBCF4();
  while (1)
  {
    v3 = sub_2763FBD14(v2);
    v11 = sub_2763FBD58(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_2763FBD04();
    if (v13 < 0)
    {
      sub_2763FBCB0();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_2763FBD40();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_2763FBD7C();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_2763FBD4C();
    }

    else
    {
      sub_2763D4E10((v0 + 8));
      sub_2763FBD70();
    }

    v2 = sub_2763FBD88();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2763FBD64();
  return v21;
}

uint64_t TSCH::ChartPreserveAppearanceForPresetArchive::_InternalParse()
{
  sub_2763FBCF4();
  while (1)
  {
    v3 = sub_2763FBD14(v2);
    v11 = sub_2763FBD58(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_2763FBD04();
    if (v13 < 0)
    {
      sub_2763FBCB0();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_2763FBD40();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_2763FBD7C();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_2763FBD4C();
    }

    else
    {
      sub_2763D4E10((v0 + 8));
      sub_2763FBD70();
    }

    v2 = sub_2763FBD88();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2763FBD64();
  return v21;
}

uint64_t TSCH::ChartSupportsProportionalBendedCalloutLinesArchive::_InternalParse()
{
  sub_2763FBCF4();
  while (1)
  {
    v3 = sub_2763FBD14(v2);
    v11 = sub_2763FBD58(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_2763FBD04();
    if (v13 < 0)
    {
      sub_2763FBCB0();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_2763FBD40();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_2763FBD7C();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_2763FBD4C();
    }

    else
    {
      sub_2763D4E10((v0 + 8));
      sub_2763FBD70();
    }

    v2 = sub_2763FBD88();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2763FBD64();
  return v21;
}

uint64_t TSCH::ChartSupportsRoundedCornersArchive::_InternalParse()
{
  sub_2763FBCF4();
  while (1)
  {
    v3 = sub_2763FBD14(v2);
    v11 = sub_2763FBD58(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_2763FBD04();
    if (v13 < 0)
    {
      sub_2763FBCB0();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_2763FBD40();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_2763FBD7C();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_2763FBD4C();
    }

    else
    {
      sub_2763D4E10((v0 + 8));
      sub_2763FBD70();
    }

    v2 = sub_2763FBD88();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2763FBD64();
  return v21;
}

uint64_t TSCH::ChartSupportsSeriesPropertySpacingArchive::_InternalParse()
{
  sub_2763FBCF4();
  while (1)
  {
    v3 = sub_2763FBD14(v2);
    v11 = sub_2763FBD58(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_2763FBD04();
    if (v13 < 0)
    {
      sub_2763FBCB0();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_2763FBD40();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_2763FBD7C();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_2763FBD4C();
    }

    else
    {
      sub_2763D4E10((v0 + 8));
      sub_2763FBD70();
    }

    v2 = sub_2763FBD88();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2763FBD64();
  return v21;
}

uint64_t TSCH::ChartSupportsStackedSummaryLabelsArchive::_InternalParse()
{
  sub_2763FBCF4();
  while (1)
  {
    v3 = sub_2763FBD14(v2);
    v11 = sub_2763FBD58(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_2763FBD04();
    if (v13 < 0)
    {
      sub_2763FBCB0();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_2763FBD40();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_2763FBD7C();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_2763FBD4C();
    }

    else
    {
      sub_2763D4E10((v0 + 8));
      sub_2763FBD70();
    }

    v2 = sub_2763FBD88();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2763FBD64();
  return v21;
}

google::protobuf::internal *sub_2764AAB3C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AAC0C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCH::ChartGridArchive_ChartGridRowColumnIdMap::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AACDC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCH::ChartSelectionPathTypeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AADAC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCH::ChartSelectionPathArgumentArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2764AAE7C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::DrawableSelectionArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t TSCH::ChartUIStateMultiDataIndexUpgrade::_InternalParse()
{
  sub_2763FBCF4();
  while (1)
  {
    v3 = sub_2763FBD14(v2);
    v11 = sub_2763FBD58(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_2763FBD04();
    if (v13 < 0)
    {
      sub_2763FBCB0();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_2763FBD40();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_2763FBD7C();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_2763FBD4C();
    }

    else
    {
      sub_2763D4E10((v0 + 8));
      sub_2763FBD70();
    }

    v2 = sub_2763FBD88();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2763FBD64();
  return v21;
}

uint64_t TSCH::ChartFormatStructExtensions::_InternalParse()
{
  sub_2763FBCF4();
  while (1)
  {
    v3 = sub_2763FBD14(v2);
    v11 = sub_2763FBD58(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_2763FBD04();
    if (v13 < 0)
    {
      sub_2763FBCB0();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_2763FBD40();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_2763FBD7C();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_2763FBD4C();
    }

    else
    {
      sub_2763D4E10((v0 + 8));
      sub_2763FBD70();
    }

    v2 = sub_2763FBD88();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2763FBD64();
  return v21;
}

google::protobuf::internal *sub_2764AB0C4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCH::ChartReferenceLineNonStyleItem::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AB194(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCH::ChartAxisReferenceLineNonStylesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AB264(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCH::ChartAxisReferenceLineStylesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AB334(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCH::ChartAxisReferenceLineSparseNonStylesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AB404(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCH::CachedAxisDataFormatterPersistableStyleObject::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AB4D4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCH::CachedSeriesDataFormatterPersistableStyleObject::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2764AB5A4()
{
  sub_2763FBDA0();
  if (v1)
  {
    v2 = sub_2763FBDAC(v1);
  }

  else
  {
    v2 = sub_2763D4E10(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_2764AB5E0()
{
  sub_2763FBDA0();
  if (v1)
  {
    v2 = sub_2763FBDAC(v1);
  }

  else
  {
    v2 = sub_2763D4E10(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_2764AB61C()
{
  sub_2763FBDA0();
  if (v1)
  {
    v2 = sub_2763FBDAC(v1);
  }

  else
  {
    v2 = sub_2763D4E10(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

void sub_2764AB658(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(v1 - 8);
  v2 = (v1 - 8);
  if (!v3)
  {
    operator delete(v2);
  }
}

void sub_2764AB66C(int *a1, void *a2)
{
  if (*a1 >= 1 && !*(*a2 - 8))
  {
    operator delete((*a2 - 8));
  }
}

uint64_t sub_2764ABE6C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Point::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2764ABF3C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Size::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2764AC00C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::FillArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AC0DC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27643E364(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2764AC1AC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSS::StyleArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AC27C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276405048(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2764AC34C(uint64_t *a1)
{
  if (*a1)
  {
    v1 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v1 = sub_2763D4E10(a1);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v1);
}

uint64_t sub_2764AC69C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::StrokeArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2764AC76C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::ShadowArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2764AC83C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Color::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AC90C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v11 = a2;
  while (1)
  {
    if (sub_2763D4D98(a3, &v11))
    {
      return v11;
    }

    TagFallback = (v11 + 1);
    v6 = *v11;
    if ((*v11 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*TagFallback << 7);
    v6 = v7 - 128;
    if ((*TagFallback & 0x80000000) == 0)
    {
      TagFallback = (v11 + 2);
LABEL_6:
      v11 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v11, (v7 - 128));
    v11 = TagFallback;
    if (!TagFallback)
    {
      return TagFallback;
    }

    v6 = v9;
LABEL_7:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return TagFallback;
}

uint64_t sub_2764ACA10(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::LineEndArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2764ACE1C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276442920(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764ACEEC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27643B700(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764ACFBC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27643BD74(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AD08C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27643C2E4(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AD15C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276443C50(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AD22C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27644353C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AD2FC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27643A284(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AD3CC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27643CE80(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AD49C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276444C00(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AD56C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27643F56C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AD63C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276445D34(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AD70C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276445698(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AD7DC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276444174(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AD8AC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27643FEC4(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AD97C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276440854(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764ADA4C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276441070(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764ADB1C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27644188C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764ADBEC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_2764420A8(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2764ADCBC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Reference::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2764ADD8C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::DataReference::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2764ADE5C()
{
  sub_2763FBDA0();
  if (v1)
  {
    v2 = sub_2763FBDAC(v1);
  }

  else
  {
    v2 = sub_2763D4E10(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_2764ADE98()
{
  sub_2763FBDA0();
  if (v1)
  {
    v2 = sub_2763FBDAC(v1);
  }

  else
  {
    v2 = sub_2763D4E10(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_2764ADED4()
{
  sub_2763FBDA0();
  if (v1)
  {
    v2 = sub_2763FBDAC(v1);
  }

  else
  {
    v2 = sub_2763D4E10(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_2764ADF10()
{
  sub_2763FBDA0();
  if (v1)
  {
    v2 = sub_2763FBDAC(v1);
  }

  else
  {
    v2 = sub_2763D4E10(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_2764ADF4C()
{
  sub_2763FBDA0();
  if (v1)
  {
    v2 = sub_2763FBDAC(v1);
  }

  else
  {
    v2 = sub_2763D4E10(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_2764AE3C0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUID::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AE490(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276466D8C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AE560(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27644E250(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AE630(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_2764271E0(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AE700(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27642A6F0(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AE7D0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27642B40C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AE8A0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27642ED3C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AE970(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276434D30(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AEA40(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27644BB20(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AEB10(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27645012C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2764AEBE0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSWP::CharacterStylePropertiesArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2764AECB0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSWP::ParagraphStylePropertiesArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AED80(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276451740(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AEE50(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276450DD4(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AEF20(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276451F40(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AEFF0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_2764540A0(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AF0C0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276454790(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AF190(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276454E98(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AF260(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCH::ChartFillSetArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AF330(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_2764056F8(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AF400(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_2763FFE40(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2764AF4D0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSS::ApplyThemeChildCommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2764AF5A0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::CommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2764AF670(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUIDPath::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AF740(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276469D04(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AF810(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27646BB84(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AF8E0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCH::ChartAxisIDArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AF9B0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCH::PropertyValueStorageContainerArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AFA80(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCH::ChartSelectionPathArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2764AFB50(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::DrawableSelectionTransformerArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2764AFC20(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276472EA8(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2764AFCF0()
{
  sub_2763FBDA0();
  if (v1)
  {
    v2 = sub_2763FBDAC(v1);
  }

  else
  {
    v2 = sub_2763D4E10(v0);
  }

  return sub_27647AF50(v2);
}

uint64_t sub_2764B0774(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::DrawableArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2764B0844(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27647F7D4(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764B0914(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27647ED78(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2764B09E4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::SparseReferenceArray::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2764B0AB4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276480A10(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764B0B84(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_276480480(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2764B0C54(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::IndexSet::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2764B0D24(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27648183C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2764B0DF4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_27640110C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

CGRect CGContextConvertRectToDeviceSpace(CGContextRef c, CGRect rect)
{
  MEMORY[0x282110A40](c, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGContextConvertRectToUserSpace(CGContextRef c, CGRect rect)
{
  MEMORY[0x282110A48](c, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CGContextConvertSizeToDeviceSpace(CGContextRef c, CGSize size)
{
  MEMORY[0x282110A50](c, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

CGSize CGContextConvertSizeToUserSpace(CGContextRef c, CGSize size)
{
  MEMORY[0x282110A58](c, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x282110B10](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTFontGetBoundingBox(CTFontRef font)
{
  MEMORY[0x282114778](font);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x282114780](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t String()
{
  return MEMORY[0x2821EB0B8]();
}

{
  return MEMORY[0x2821EB0D0]();
}

{
  return MEMORY[0x2821EB0E8]();
}

{
  return MEMORY[0x2821EB118]();
}

{
  return MEMORY[0x2821EB120]();
}

uint64_t google::protobuf::internal::ArenaStringPtr::Set()
{
  return MEMORY[0x2821EAD00]();
}

{
  return MEMORY[0x2821EAD08]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}