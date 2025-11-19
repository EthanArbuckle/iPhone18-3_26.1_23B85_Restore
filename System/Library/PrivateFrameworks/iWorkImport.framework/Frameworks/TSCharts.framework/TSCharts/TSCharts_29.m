uint64_t sub_276486470(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527F18, 0);
  if (v4)
  {

    return sub_276486518(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276486518(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_70;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
  }

  if ((v5 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v6 = *(v3 + 40);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C97BA0](v7);
      *(v3 + 40) = v6;
    }

    if (*(a2 + 40))
    {
      v8 = *(a2 + 40);
    }

    else
    {
      v8 = MEMORY[0x277D80BD0];
    }

    result = TSS::StyleArchive::MergeFrom(v6, v8);
  }

  v9 = MEMORY[0x277D80488];
  if ((v5 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v10 = *(v3 + 48);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C97A80](v11);
      *(v3 + 48) = v10;
    }

    if (*(a2 + 48))
    {
      v12 = *(a2 + 48);
    }

    else
    {
      v12 = v9;
    }

    result = TSD::FillArchive::MergeFrom(v10, v12);
  }

  v13 = MEMORY[0x277D804A0];
  if ((v5 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v14 = *(v3 + 56);
    if (!v14)
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C97AA0](v15);
      *(v3 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v16 = *(a2 + 56);
    }

    else
    {
      v16 = v13;
    }

    result = TSD::StrokeArchive::MergeFrom(v14, v16);
    if ((v5 & 0x10) == 0)
    {
LABEL_26:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_27;
      }

LABEL_46:
      *(v3 + 16) |= 0x20u;
      v20 = *(v3 + 72);
      if (!v20)
      {
        v21 = *(v3 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = MEMORY[0x277C97AA0](v21);
        *(v3 + 72) = v20;
      }

      if (*(a2 + 72))
      {
        v22 = *(a2 + 72);
      }

      else
      {
        v22 = v13;
      }

      result = TSD::StrokeArchive::MergeFrom(v20, v22);
      if ((v5 & 0x40) == 0)
      {
LABEL_28:
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_62;
      }

      goto LABEL_54;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_26;
  }

  *(v3 + 16) |= 0x10u;
  v17 = *(v3 + 64);
  if (!v17)
  {
    v18 = *(v3 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x277C97A80](v18);
    *(v3 + 64) = v17;
  }

  if (*(a2 + 64))
  {
    v19 = *(a2 + 64);
  }

  else
  {
    v19 = v9;
  }

  result = TSD::FillArchive::MergeFrom(v17, v19);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_27:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_28;
  }

LABEL_54:
  *(v3 + 16) |= 0x40u;
  v23 = *(v3 + 80);
  if (!v23)
  {
    v24 = *(v3 + 8);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v23 = MEMORY[0x277C97B50](v24);
    *(v3 + 80) = v23;
  }

  if (*(a2 + 80))
  {
    v25 = *(a2 + 80);
  }

  else
  {
    v25 = MEMORY[0x277D809E8];
  }

  result = TSP::Color::MergeFrom(v23, v25);
  if ((v5 & 0x80) != 0)
  {
LABEL_62:
    *(v3 + 16) |= 0x80u;
    v26 = *(v3 + 88);
    if (!v26)
    {
      v27 = *(v3 + 8);
      if (v27)
      {
        v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = MEMORY[0x277C97A90](v27);
      *(v3 + 88) = v26;
    }

    if (*(a2 + 88))
    {
      v28 = *(a2 + 88);
    }

    else
    {
      v28 = MEMORY[0x277D80498];
    }

    result = TSD::ShadowArchive::MergeFrom(v26, v28);
  }

LABEL_70:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_144;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v29 = *(v3 + 96);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x277C97A90](v30);
      *(v3 + 96) = v29;
    }

    if (*(a2 + 96))
    {
      v31 = *(a2 + 96);
    }

    else
    {
      v31 = MEMORY[0x277D80498];
    }

    result = TSD::ShadowArchive::MergeFrom(v29, v31);
    if ((v5 & 0x200) == 0)
    {
LABEL_73:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_96;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  *(v3 + 16) |= 0x200u;
  v32 = *(v3 + 104);
  if (!v32)
  {
    v33 = *(v3 + 8);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = MEMORY[0x277C97A90](v33);
    *(v3 + 104) = v32;
  }

  if (*(a2 + 104))
  {
    v34 = *(a2 + 104);
  }

  else
  {
    v34 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v32, v34);
  if ((v5 & 0x400) == 0)
  {
LABEL_74:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_104;
  }

LABEL_96:
  *(v3 + 16) |= 0x400u;
  v35 = *(v3 + 112);
  if (!v35)
  {
    v36 = *(v3 + 8);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = MEMORY[0x277C97A90](v36);
    *(v3 + 112) = v35;
  }

  if (*(a2 + 112))
  {
    v37 = *(a2 + 112);
  }

  else
  {
    v37 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v35, v37);
  if ((v5 & 0x800) == 0)
  {
LABEL_75:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_112;
  }

LABEL_104:
  *(v3 + 16) |= 0x800u;
  v38 = *(v3 + 120);
  if (!v38)
  {
    v39 = *(v3 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = MEMORY[0x277C97A90](v39);
    *(v3 + 120) = v38;
  }

  if (*(a2 + 120))
  {
    v40 = *(a2 + 120);
  }

  else
  {
    v40 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v38, v40);
  if ((v5 & 0x1000) == 0)
  {
LABEL_76:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(v3 + 16) |= 0x1000u;
  v41 = *(v3 + 128);
  if (!v41)
  {
    v42 = *(v3 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = MEMORY[0x277C97A90](v42);
    *(v3 + 128) = v41;
  }

  if (*(a2 + 128))
  {
    v43 = *(a2 + 128);
  }

  else
  {
    v43 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v41, v43);
  if ((v5 & 0x2000) == 0)
  {
LABEL_77:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_128;
  }

LABEL_120:
  *(v3 + 16) |= 0x2000u;
  v44 = *(v3 + 136);
  if (!v44)
  {
    v45 = *(v3 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = MEMORY[0x277C97A90](v45);
    *(v3 + 136) = v44;
  }

  if (*(a2 + 136))
  {
    v46 = *(a2 + 136);
  }

  else
  {
    v46 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v44, v46);
  if ((v5 & 0x4000) == 0)
  {
LABEL_78:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(v3 + 16) |= 0x4000u;
  v47 = *(v3 + 144);
  if (!v47)
  {
    v48 = *(v3 + 8);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = MEMORY[0x277C97A90](v48);
    *(v3 + 144) = v47;
  }

  if (*(a2 + 144))
  {
    v49 = *(a2 + 144);
  }

  else
  {
    v49 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v47, v49);
  if ((v5 & 0x8000) != 0)
  {
LABEL_136:
    *(v3 + 16) |= 0x8000u;
    v50 = *(v3 + 152);
    if (!v50)
    {
      v51 = *(v3 + 8);
      if (v51)
      {
        v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
      }

      v50 = sub_276447688(v51);
      *(v3 + 152) = v50;
    }

    if (*(a2 + 152))
    {
      v52 = *(a2 + 152);
    }

    else
    {
      v52 = qword_2812F12A8;
    }

    result = sub_27643F1BC(v50, v52);
  }

LABEL_144:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_155;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v54 = *(v3 + 160);
    if (!v54)
    {
      v55 = *(v3 + 8);
      if (v55)
      {
        v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
      }

      v54 = sub_276447688(v55);
      *(v3 + 160) = v54;
    }

    if (*(a2 + 160))
    {
      v56 = *(a2 + 160);
    }

    else
    {
      v56 = qword_2812F12A8;
    }

    result = sub_27643F1BC(v54, v56);
    if ((v5 & 0x20000) == 0)
    {
LABEL_147:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_192;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_147;
  }

  *(v3 + 16) |= 0x20000u;
  v57 = *(v3 + 168);
  if (!v57)
  {
    v58 = *(v3 + 8);
    if (v58)
    {
      v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
    }

    v57 = sub_276447688(v58);
    *(v3 + 168) = v57;
  }

  if (*(a2 + 168))
  {
    v59 = *(a2 + 168);
  }

  else
  {
    v59 = qword_2812F12A8;
  }

  result = sub_27643F1BC(v57, v59);
  if ((v5 & 0x40000) == 0)
  {
LABEL_148:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_200;
  }

LABEL_192:
  *(v3 + 16) |= 0x40000u;
  v60 = *(v3 + 176);
  if (!v60)
  {
    v61 = *(v3 + 8);
    if (v61)
    {
      v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
    }

    v60 = sub_276447688(v61);
    *(v3 + 176) = v60;
  }

  if (*(a2 + 176))
  {
    v62 = *(a2 + 176);
  }

  else
  {
    v62 = qword_2812F12A8;
  }

  result = sub_27643F1BC(v60, v62);
  if ((v5 & 0x80000) == 0)
  {
LABEL_149:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_208;
  }

LABEL_200:
  *(v3 + 16) |= 0x80000u;
  v63 = *(v3 + 184);
  if (!v63)
  {
    v64 = *(v3 + 8);
    if (v64)
    {
      v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
    }

    v63 = sub_276447688(v64);
    *(v3 + 184) = v63;
  }

  if (*(a2 + 184))
  {
    v65 = *(a2 + 184);
  }

  else
  {
    v65 = qword_2812F12A8;
  }

  result = sub_27643F1BC(v63, v65);
  if ((v5 & 0x100000) == 0)
  {
LABEL_150:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_216;
  }

LABEL_208:
  *(v3 + 16) |= 0x100000u;
  v66 = *(v3 + 192);
  if (!v66)
  {
    v67 = *(v3 + 8);
    if (v67)
    {
      v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
    }

    v66 = sub_276447688(v67);
    *(v3 + 192) = v66;
  }

  if (*(a2 + 192))
  {
    v68 = *(a2 + 192);
  }

  else
  {
    v68 = qword_2812F12A8;
  }

  result = sub_27643F1BC(v66, v68);
  if ((v5 & 0x200000) == 0)
  {
LABEL_151:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_152;
    }

LABEL_217:
    *(v3 + 204) = *(a2 + 204);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

LABEL_216:
  *(v3 + 200) = *(a2 + 200);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_217;
  }

LABEL_152:
  if ((v5 & 0x800000) != 0)
  {
LABEL_153:
    *(v3 + 208) = *(a2 + 208);
  }

LABEL_154:
  *(v3 + 16) |= v5;
LABEL_155:
  if (!HIBYTE(v5))
  {
    goto LABEL_165;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 212) = *(a2 + 212);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_158:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_159;
      }

      goto LABEL_228;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_158;
  }

  *(v3 + 216) = *(a2 + 216);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_159:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_229;
  }

LABEL_228:
  *(v3 + 220) = *(a2 + 220);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_160:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_230;
  }

LABEL_229:
  *(v3 + 224) = *(a2 + 224);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_161:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_231;
  }

LABEL_230:
  *(v3 + 228) = *(a2 + 228);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_162:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_163;
    }

LABEL_232:
    *(v3 + 236) = *(a2 + 236);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_164;
    }

LABEL_233:
    *(v3 + 240) = *(a2 + 240);
    goto LABEL_164;
  }

LABEL_231:
  *(v3 + 232) = *(a2 + 232);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_232;
  }

LABEL_163:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_233;
  }

LABEL_164:
  *(v3 + 16) |= v5;
LABEL_165:
  v53 = *(a2 + 20);
  if ((v53 & 0x7F) == 0)
  {
    return result;
  }

  if (v53)
  {
    *(v3 + 241) = *(a2 + 241);
    if ((v53 & 2) == 0)
    {
LABEL_168:
      if ((v53 & 4) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_221;
    }
  }

  else if ((v53 & 2) == 0)
  {
    goto LABEL_168;
  }

  *(v3 + 242) = *(a2 + 242);
  if ((v53 & 4) == 0)
  {
LABEL_169:
    if ((v53 & 8) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_222;
  }

LABEL_221:
  *(v3 + 243) = *(a2 + 243);
  if ((v53 & 8) == 0)
  {
LABEL_170:
    if ((v53 & 0x10) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_223;
  }

LABEL_222:
  *(v3 + 244) = *(a2 + 244);
  if ((v53 & 0x10) == 0)
  {
LABEL_171:
    if ((v53 & 0x20) == 0)
    {
      goto LABEL_172;
    }

LABEL_224:
    *(v3 + 248) = *(a2 + 248);
    if ((v53 & 0x40) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_173;
  }

LABEL_223:
  *(v3 + 245) = *(a2 + 245);
  if ((v53 & 0x20) != 0)
  {
    goto LABEL_224;
  }

LABEL_172:
  if ((v53 & 0x40) != 0)
  {
LABEL_173:
    *(v3 + 252) = *(a2 + 252);
  }

LABEL_174:
  *(v3 + 20) |= v53;
  return result;
}

uint64_t *sub_276486D34(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276483B24(result);

    return sub_276486470(v4, a2);
  }

  return result;
}

uint64_t sub_276486D80(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(a1 + 40));
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 4) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 48));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 56));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x10) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 64));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x20) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 72));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x40) != 0)
    {
      result = TSP::Color::IsInitialized(*(a1 + 80));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x80) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 88));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x100) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 96));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x200) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 104));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x400) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 112));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x800) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 120));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x1000) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 128));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x2000) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 136));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x4000) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 144));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x8000) != 0)
    {
      result = sub_27643F2FC(*(a1 + 152));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x10000) != 0)
    {
      result = sub_27643F2FC(*(a1 + 160));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x20000) != 0)
    {
      result = sub_27643F2FC(*(a1 + 168));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x40000) != 0)
    {
      result = sub_27643F2FC(*(a1 + 176));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x80000) != 0)
    {
      result = sub_27643F2FC(*(a1 + 184));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x100000) == 0)
    {
      return 1;
    }

    result = sub_27643F2FC(*(a1 + 192));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_276486F78(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885279C8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EE3E8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 156) = 0u;
  return a1;
}

uint64_t sub_276487000(uint64_t a1)
{
  sub_276487034(a1);
  sub_2763941F4((a1 + 8));
  return a1;
}

uint64_t sub_276487034(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812F28C8)
  {
    if (*(v1 + 32))
    {
      v3 = MEMORY[0x277C976F0]();
      MEMORY[0x277C98580](v3, 0x10A1C40AC828A93);
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      v5 = sub_276446C88(v4);
      MEMORY[0x277C98580](v5, 0x1081C40825B58B5);
    }

    v6 = *(v1 + 48);
    if (v6)
    {
      v7 = sub_276446C88(v6);
      MEMORY[0x277C98580](v7, 0x1081C40825B58B5);
    }

    v8 = *(v1 + 56);
    if (v8)
    {
      v9 = sub_276446C88(v8);
      MEMORY[0x277C98580](v9, 0x1081C40825B58B5);
    }

    v10 = *(v1 + 64);
    if (v10)
    {
      v11 = sub_276446C88(v10);
      MEMORY[0x277C98580](v11, 0x1081C40825B58B5);
    }

    v12 = *(v1 + 72);
    if (v12)
    {
      v13 = sub_276446C88(v12);
      MEMORY[0x277C98580](v13, 0x1081C40825B58B5);
    }

    v14 = *(v1 + 80);
    if (v14)
    {
      v15 = sub_276446C88(v14);
      MEMORY[0x277C98580](v15, 0x1081C40825B58B5);
    }

    v16 = *(v1 + 88);
    if (v16)
    {
      v17 = sub_276446C88(v16);
      MEMORY[0x277C98580](v17, 0x1081C40825B58B5);
    }

    v18 = *(v1 + 96);
    if (v18)
    {
      v19 = sub_276446C88(v18);
      MEMORY[0x277C98580](v19, 0x1081C40825B58B5);
    }

    if (*(v1 + 104))
    {
      v20 = sub_27643EBB8();
      MEMORY[0x277C98580](v20, 0x10A1C4000E43543);
    }

    if (*(v1 + 112))
    {
      v21 = sub_27643EBB8();
      MEMORY[0x277C98580](v21, 0x10A1C4000E43543);
    }

    if (*(v1 + 120))
    {
      v22 = sub_27643EBB8();
      MEMORY[0x277C98580](v22, 0x10A1C4000E43543);
    }

    if (*(v1 + 128))
    {
      v23 = sub_27643EBB8();
      MEMORY[0x277C98580](v23, 0x10A1C4000E43543);
    }

    if (*(v1 + 136))
    {
      v24 = sub_27643EBB8();
      MEMORY[0x277C98580](v24, 0x10A1C4000E43543);
    }

    result = *(v1 + 144);
    if (result)
    {
      sub_27643EBB8();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_276487214(uint64_t a1)
{
  sub_276487000(a1);

  JUMPOUT(0x277C98580);
}

void *sub_276487254()
{
  if (atomic_load_explicit(dword_2812EE3E8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F28C8;
}

uint64_t *sub_276487294(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    v5 = result[3] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_39:
  result = TSS::StyleArchive::Clear(result[4]);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = sub_27643B6DC(v1[5]);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = sub_27643B6DC(v1[6]);
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_43:
    result = sub_27643B6DC(v1[8]);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_42:
  result = sub_27643B6DC(v1[7]);
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_43;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_44:
  result = sub_27643B6DC(v1[9]);
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = sub_27643B6DC(v1[10]);
  }

LABEL_11:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 & 0x100) != 0)
  {
    result = sub_27643B6DC(v1[11]);
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = sub_27643B6DC(v1[12]);
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = sub_27643EBFC(v1[13]);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = sub_27643EBFC(v1[14]);
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = sub_27643EBFC(v1[15]);
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = sub_27643EBFC(v1[16]);
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_36:
  result = sub_27643EBFC(v1[17]);
  if ((v2 & 0x8000) != 0)
  {
LABEL_20:
    result = sub_27643EBFC(v1[18]);
  }

LABEL_21:
  if ((v2 & 0xFF0000) != 0)
  {
    v1[19] = 0;
    v1[20] = 0;
    *(v1 + 42) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_276487428(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v67 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v67) & 1) == 0)
  {
    while (1)
    {
      v7 = (v67 + 1);
      v8 = *v67;
      if ((*v67 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v67, (v9 - 128));
      v67 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_158;
      }

      v7 = TagFallback;
      v8 = v15;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 0xC)
      {
        if (v8 >> 3 <= 0xA)
        {
          if (v10 == 1)
          {
            if (v8 == 10)
            {
              *(a1 + 16) |= 2u;
              v21 = *(a1 + 32);
              if (!v21)
              {
                v22 = *(a1 + 8);
                if (v22)
                {
                  v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
                }

                v23 = MEMORY[0x277C97BA0](v22);
                LODWORD(v21) = v23;
                *(a1 + 32) = v23;
                v7 = v67;
              }

              v13 = sub_2764AC1AC(a3, v21, v7);
LABEL_125:
              v67 = v13;
              if (!v13)
              {
                goto LABEL_158;
              }

              goto LABEL_126;
            }
          }

          else if (v10 == 10 && v8 == 82)
          {
            *(a1 + 16) |= 1u;
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v13 = google::protobuf::internal::InlineGreedyStringParser();
            goto LABEL_125;
          }

LABEL_138:
          if (v8)
          {
            v54 = (v8 & 7) == 4;
          }

          else
          {
            v54 = 1;
          }

          if (v54)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_125;
        }

        if (v10 == 11)
        {
          if (v8 != 88)
          {
            goto LABEL_138;
          }

          v5 |= 0x80000u;
          v25 = (v7 + 1);
          v24 = *v7;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_42;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if ((v26 & 0x80000000) == 0)
          {
            v25 = (v7 + 2);
LABEL_42:
            v67 = v25;
            *(a1 + 164) = v24 != 0;
            goto LABEL_126;
          }

          v55 = google::protobuf::internal::VarintParseSlow64(v7, v24);
          v67 = v55;
          *(a1 + 164) = v56 != 0;
          if (!v55)
          {
            goto LABEL_158;
          }
        }

        else
        {
          if (v10 != 12 || v8 != 101)
          {
            goto LABEL_138;
          }

          v17 = *v7;
          v16 = (v7 + 4);
          v5 |= 0x10000u;
          *(a1 + 152) = v17;
LABEL_85:
          v67 = v16;
        }
      }

      else
      {
        switch(v10)
        {
          case 0x12Cu:
            if (v8 != 98)
            {
              goto LABEL_138;
            }

            *(a1 + 16) |= 4u;
            v11 = *(a1 + 40);
            if (v11)
            {
              goto LABEL_117;
            }

            v12 = *(a1 + 8);
            if (v12)
            {
              v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
            }

            v11 = sub_276447FD4(v12);
            *(a1 + 40) = v11;
            goto LABEL_116;
          case 0x12Du:
            if (v8 != 106)
            {
              goto LABEL_138;
            }

            *(a1 + 16) |= 8u;
            v11 = *(a1 + 48);
            if (v11)
            {
              goto LABEL_117;
            }

            v37 = *(a1 + 8);
            if (v37)
            {
              v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
            }

            v11 = sub_276447FD4(v37);
            *(a1 + 48) = v11;
            goto LABEL_116;
          case 0x12Eu:
            if (v8 != 114)
            {
              goto LABEL_138;
            }

            *(a1 + 16) |= 0x10u;
            v11 = *(a1 + 56);
            if (v11)
            {
              goto LABEL_117;
            }

            v39 = *(a1 + 8);
            if (v39)
            {
              v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
            }

            v11 = sub_276447FD4(v39);
            *(a1 + 56) = v11;
            goto LABEL_116;
          case 0x12Fu:
            if (v8 != 122)
            {
              goto LABEL_138;
            }

            *(a1 + 16) |= 0x20u;
            v11 = *(a1 + 64);
            if (v11)
            {
              goto LABEL_117;
            }

            v43 = *(a1 + 8);
            if (v43)
            {
              v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
            }

            v11 = sub_276447FD4(v43);
            *(a1 + 64) = v11;
            goto LABEL_116;
          case 0x130u:
            if (v8 != 130)
            {
              goto LABEL_138;
            }

            *(a1 + 16) |= 0x40u;
            v11 = *(a1 + 72);
            if (v11)
            {
              goto LABEL_117;
            }

            v36 = *(a1 + 8);
            if (v36)
            {
              v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
            }

            v11 = sub_276447FD4(v36);
            *(a1 + 72) = v11;
            goto LABEL_116;
          case 0x131u:
            if (v8 != 138)
            {
              goto LABEL_138;
            }

            *(a1 + 16) |= 0x80u;
            v11 = *(a1 + 80);
            if (v11)
            {
              goto LABEL_117;
            }

            v46 = *(a1 + 8);
            if (v46)
            {
              v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
            }

            v11 = sub_276447FD4(v46);
            *(a1 + 80) = v11;
            goto LABEL_116;
          case 0x132u:
            if (v8 != 146)
            {
              goto LABEL_138;
            }

            *(a1 + 16) |= 0x100u;
            v11 = *(a1 + 88);
            if (v11)
            {
              goto LABEL_117;
            }

            v44 = *(a1 + 8);
            if (v44)
            {
              v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
            }

            v11 = sub_276447FD4(v44);
            *(a1 + 88) = v11;
            goto LABEL_116;
          case 0x133u:
          case 0x134u:
          case 0x135u:
          case 0x136u:
          case 0x137u:
          case 0x138u:
          case 0x13Au:
          case 0x13Bu:
          case 0x13Cu:
          case 0x13Du:
          case 0x13Eu:
          case 0x13Fu:
          case 0x148u:
          case 0x149u:
          case 0x14Au:
          case 0x14Cu:
          case 0x14Du:
          case 0x14Eu:
          case 0x14Fu:
            goto LABEL_138;
          case 0x139u:
            if (v8 != 202)
            {
              goto LABEL_138;
            }

            *(a1 + 16) |= 0x200u;
            v11 = *(a1 + 96);
            if (v11)
            {
              goto LABEL_117;
            }

            v35 = *(a1 + 8);
            if (v35)
            {
              v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
            }

            v11 = sub_276447FD4(v35);
            *(a1 + 96) = v11;
LABEL_116:
            v7 = v67;
LABEL_117:
            v13 = sub_2764A8A98(a3, v11, v7);
            goto LABEL_125;
          case 0x140u:
            if (v8 != 2)
            {
              goto LABEL_138;
            }

            *(a1 + 16) |= 0x400u;
            v27 = *(a1 + 104);
            if (v27)
            {
              goto LABEL_124;
            }

            v47 = *(a1 + 8);
            if (v47)
            {
              v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
            }

            v27 = sub_276447688(v47);
            *(a1 + 104) = v27;
            goto LABEL_123;
          case 0x141u:
            if (v8 != 10)
            {
              goto LABEL_138;
            }

            *(a1 + 16) |= 0x800u;
            v27 = *(a1 + 112);
            if (v27)
            {
              goto LABEL_124;
            }

            v33 = *(a1 + 8);
            if (v33)
            {
              v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
            }

            v27 = sub_276447688(v33);
            *(a1 + 112) = v27;
            goto LABEL_123;
          case 0x142u:
            if (v8 != 18)
            {
              goto LABEL_138;
            }

            *(a1 + 16) |= 0x1000u;
            v27 = *(a1 + 120);
            if (v27)
            {
              goto LABEL_124;
            }

            v29 = *(a1 + 8);
            if (v29)
            {
              v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
            }

            v27 = sub_276447688(v29);
            *(a1 + 120) = v27;
            goto LABEL_123;
          case 0x143u:
            if (v8 != 26)
            {
              goto LABEL_138;
            }

            *(a1 + 16) |= 0x2000u;
            v27 = *(a1 + 128);
            if (v27)
            {
              goto LABEL_124;
            }

            v28 = *(a1 + 8);
            if (v28)
            {
              v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
            }

            v27 = sub_276447688(v28);
            *(a1 + 128) = v27;
            goto LABEL_123;
          case 0x144u:
            if (v8 != 34)
            {
              goto LABEL_138;
            }

            *(a1 + 16) |= 0x4000u;
            v27 = *(a1 + 136);
            if (v27)
            {
              goto LABEL_124;
            }

            v45 = *(a1 + 8);
            if (v45)
            {
              v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
            }

            v27 = sub_276447688(v45);
            *(a1 + 136) = v27;
            goto LABEL_123;
          case 0x145u:
            if (v8 != 42)
            {
              goto LABEL_138;
            }

            *(a1 + 16) |= 0x8000u;
            v27 = *(a1 + 144);
            if (v27)
            {
              goto LABEL_124;
            }

            v34 = *(a1 + 8);
            if (v34)
            {
              v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
            }

            v27 = sub_276447688(v34);
            *(a1 + 144) = v27;
LABEL_123:
            v7 = v67;
LABEL_124:
            v13 = sub_2764A89C8(a3, v27, v7);
            goto LABEL_125;
          case 0x146u:
            if (v8 != 48)
            {
              goto LABEL_138;
            }

            v5 |= 0x200000u;
            v31 = (v7 + 1);
            v30 = *v7;
            if ((v30 & 0x8000000000000000) == 0)
            {
              goto LABEL_57;
            }

            v32 = *v31;
            v30 = (v32 << 7) + v30 - 128;
            if (v32 < 0)
            {
              v57 = google::protobuf::internal::VarintParseSlow64(v7, v30);
              v67 = v57;
              *(a1 + 166) = v58 != 0;
              if (!v57)
              {
                goto LABEL_158;
              }
            }

            else
            {
              v31 = (v7 + 2);
LABEL_57:
              v67 = v31;
              *(a1 + 166) = v30 != 0;
            }

            break;
          case 0x147u:
            if (v8 != 56)
            {
              goto LABEL_138;
            }

            v5 |= 0x400000u;
            v41 = (v7 + 1);
            v40 = *v7;
            if ((v40 & 0x8000000000000000) == 0)
            {
              goto LABEL_95;
            }

            v42 = *v41;
            v40 = (v42 << 7) + v40 - 128;
            if (v42 < 0)
            {
              v59 = google::protobuf::internal::VarintParseSlow64(v7, v40);
              v67 = v59;
              *(a1 + 167) = v60 != 0;
              if (!v59)
              {
                goto LABEL_158;
              }
            }

            else
            {
              v41 = (v7 + 2);
LABEL_95:
              v67 = v41;
              *(a1 + 167) = v40 != 0;
            }

            break;
          case 0x14Bu:
            if (v8 != 93)
            {
              goto LABEL_138;
            }

            v38 = *v7;
            v16 = (v7 + 4);
            v5 |= 0x800000u;
            *(a1 + 168) = v38;
            goto LABEL_85;
          case 0x150u:
            if (v8 != 128)
            {
              goto LABEL_138;
            }

            v5 |= 0x40000u;
            v49 = (v7 + 1);
            LODWORD(v48) = *v7;
            if ((v48 & 0x80) == 0)
            {
              goto LABEL_132;
            }

            v50 = *v49;
            v48 = (v48 + (v50 << 7) - 128);
            if (v50 < 0)
            {
              v61 = google::protobuf::internal::VarintParseSlow64(v7, v48);
              v67 = v61;
              *(a1 + 160) = v62;
              if (!v61)
              {
                goto LABEL_158;
              }
            }

            else
            {
              v49 = (v7 + 2);
LABEL_132:
              v67 = v49;
              *(a1 + 160) = v48;
            }

            break;
          default:
            if (v10 == 13)
            {
              if (v8 != 104)
              {
                goto LABEL_138;
              }

              v5 |= 0x100000u;
              v52 = (v7 + 1);
              v51 = *v7;
              if ((v51 & 0x8000000000000000) == 0)
              {
                goto LABEL_137;
              }

              v53 = *v52;
              v51 = (v53 << 7) + v51 - 128;
              if ((v53 & 0x80000000) == 0)
              {
                v52 = (v7 + 2);
LABEL_137:
                v67 = v52;
                *(a1 + 165) = v51 != 0;
                break;
              }

              v65 = google::protobuf::internal::VarintParseSlow64(v7, v51);
              v67 = v65;
              *(a1 + 165) = v66 != 0;
              if (!v65)
              {
LABEL_158:
                v67 = 0;
                goto LABEL_2;
              }
            }

            else
            {
              if (v10 != 25 || v8 != 200)
              {
                goto LABEL_138;
              }

              v5 |= 0x20000u;
              v19 = (v7 + 1);
              LODWORD(v18) = *v7;
              if ((v18 & 0x80) == 0)
              {
                goto LABEL_31;
              }

              v20 = *v19;
              v18 = (v18 + (v20 << 7) - 128);
              if ((v20 & 0x80000000) == 0)
              {
                v19 = (v7 + 2);
LABEL_31:
                v67 = v19;
                *(a1 + 156) = v18;
                break;
              }

              v63 = google::protobuf::internal::VarintParseSlow64(v7, v18);
              v67 = v63;
              *(a1 + 156) = v64;
              if (!v63)
              {
                goto LABEL_158;
              }
            }

            break;
        }
      }

LABEL_126:
      if (sub_2763D4D98(a3, &v67))
      {
        goto LABEL_2;
      }
    }

    v7 = (v67 + 2);
LABEL_6:
    v67 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v67;
}

unsigned __int8 *sub_276487D4C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*this <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v7 = *(a1 + 32);
    *v4 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = TSS::StyleArchive::_InternalSerialize(v7, v9, this);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_2763DD938(this, 10, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x80000) == 0)
  {
LABEL_4:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v13 = *(a1 + 164);
  *v4 = 88;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 0x10000) == 0)
  {
LABEL_5:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_40:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v14 = *(a1 + 152);
  *v4 = 101;
  *(v4 + 1) = v14;
  v4 += 5;
  if ((v6 & 0x100000) == 0)
  {
LABEL_6:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_7;
    }

LABEL_46:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v16 = *(a1 + 156);
    *v4 = 456;
    if (v16 > 0x7F)
    {
      v4[2] = v16 | 0x80;
      v17 = v16 >> 7;
      if (v16 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v17 | 0x80;
          v18 = v17 >> 7;
          ++v4;
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
        *(v4 - 1) = v18;
        if ((v6 & 4) != 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v4[3] = v17;
        v4 += 4;
        if ((v6 & 4) != 0)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
      v4[2] = v16;
      v4 += 3;
      if ((v6 & 4) != 0)
      {
        goto LABEL_57;
      }
    }

LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_67;
  }

LABEL_43:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v15 = *(a1 + 165);
  *v4 = 104;
  v4[1] = v15;
  v4 += 2;
  if ((v6 & 0x20000) != 0)
  {
    goto LABEL_46;
  }

LABEL_7:
  if ((v6 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_57:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v20 = *(a1 + 40);
  *v4 = 4834;
  v21 = *(v20 + 20);
  if (v21 > 0x7F)
  {
    v4[2] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = (v4 + 4);
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      v4[3] = v23;
      v22 = (v4 + 4);
    }
  }

  else
  {
    v4[2] = v21;
    v22 = (v4 + 3);
  }

  v4 = sub_276446ECC(v20, v22, this);
  if ((v6 & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_77;
  }

LABEL_67:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v26 = *(a1 + 48);
  *v4 = 4842;
  v27 = *(v26 + 20);
  if (v27 > 0x7F)
  {
    v4[2] = v27 | 0x80;
    v29 = v27 >> 7;
    if (v27 >> 14)
    {
      v28 = (v4 + 4);
      do
      {
        *(v28 - 1) = v29 | 0x80;
        v30 = v29 >> 7;
        ++v28;
        v31 = v29 >> 14;
        v29 >>= 7;
      }

      while (v31);
      *(v28 - 1) = v30;
    }

    else
    {
      v4[3] = v29;
      v28 = (v4 + 4);
    }
  }

  else
  {
    v4[2] = v27;
    v28 = (v4 + 3);
  }

  v4 = sub_276446ECC(v26, v28, this);
  if ((v6 & 0x10) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_87;
  }

LABEL_77:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v32 = *(a1 + 56);
  *v4 = 4850;
  v33 = *(v32 + 20);
  if (v33 > 0x7F)
  {
    v4[2] = v33 | 0x80;
    v35 = v33 >> 7;
    if (v33 >> 14)
    {
      v34 = (v4 + 4);
      do
      {
        *(v34 - 1) = v35 | 0x80;
        v36 = v35 >> 7;
        ++v34;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
      *(v34 - 1) = v36;
    }

    else
    {
      v4[3] = v35;
      v34 = (v4 + 4);
    }
  }

  else
  {
    v4[2] = v33;
    v34 = (v4 + 3);
  }

  v4 = sub_276446ECC(v32, v34, this);
  if ((v6 & 0x20) == 0)
  {
LABEL_11:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_97;
  }

LABEL_87:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v38 = *(a1 + 64);
  *v4 = 4858;
  v39 = *(v38 + 20);
  if (v39 > 0x7F)
  {
    v4[2] = v39 | 0x80;
    v41 = v39 >> 7;
    if (v39 >> 14)
    {
      v40 = (v4 + 4);
      do
      {
        *(v40 - 1) = v41 | 0x80;
        v42 = v41 >> 7;
        ++v40;
        v43 = v41 >> 14;
        v41 >>= 7;
      }

      while (v43);
      *(v40 - 1) = v42;
    }

    else
    {
      v4[3] = v41;
      v40 = (v4 + 4);
    }
  }

  else
  {
    v4[2] = v39;
    v40 = (v4 + 3);
  }

  v4 = sub_276446ECC(v38, v40, this);
  if ((v6 & 0x40) == 0)
  {
LABEL_12:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_107;
  }

LABEL_97:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v44 = *(a1 + 72);
  *v4 = 4994;
  v45 = *(v44 + 20);
  if (v45 > 0x7F)
  {
    v4[2] = v45 | 0x80;
    v47 = v45 >> 7;
    if (v45 >> 14)
    {
      v46 = (v4 + 4);
      do
      {
        *(v46 - 1) = v47 | 0x80;
        v48 = v47 >> 7;
        ++v46;
        v49 = v47 >> 14;
        v47 >>= 7;
      }

      while (v49);
      *(v46 - 1) = v48;
    }

    else
    {
      v4[3] = v47;
      v46 = (v4 + 4);
    }
  }

  else
  {
    v4[2] = v45;
    v46 = (v4 + 3);
  }

  v4 = sub_276446ECC(v44, v46, this);
  if ((v6 & 0x80) == 0)
  {
LABEL_13:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_117;
  }

LABEL_107:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v50 = *(a1 + 80);
  *v4 = 5002;
  v51 = *(v50 + 20);
  if (v51 > 0x7F)
  {
    v4[2] = v51 | 0x80;
    v53 = v51 >> 7;
    if (v51 >> 14)
    {
      v52 = (v4 + 4);
      do
      {
        *(v52 - 1) = v53 | 0x80;
        v54 = v53 >> 7;
        ++v52;
        v55 = v53 >> 14;
        v53 >>= 7;
      }

      while (v55);
      *(v52 - 1) = v54;
    }

    else
    {
      v4[3] = v53;
      v52 = (v4 + 4);
    }
  }

  else
  {
    v4[2] = v51;
    v52 = (v4 + 3);
  }

  v4 = sub_276446ECC(v50, v52, this);
  if ((v6 & 0x100) == 0)
  {
LABEL_14:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_127;
  }

LABEL_117:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v56 = *(a1 + 88);
  *v4 = 5010;
  v57 = *(v56 + 20);
  if (v57 > 0x7F)
  {
    v4[2] = v57 | 0x80;
    v59 = v57 >> 7;
    if (v57 >> 14)
    {
      v58 = (v4 + 4);
      do
      {
        *(v58 - 1) = v59 | 0x80;
        v60 = v59 >> 7;
        ++v58;
        v61 = v59 >> 14;
        v59 >>= 7;
      }

      while (v61);
      *(v58 - 1) = v60;
    }

    else
    {
      v4[3] = v59;
      v58 = (v4 + 4);
    }
  }

  else
  {
    v4[2] = v57;
    v58 = (v4 + 3);
  }

  v4 = sub_276446ECC(v56, v58, this);
  if ((v6 & 0x200) == 0)
  {
LABEL_15:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_137;
  }

LABEL_127:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v62 = *(a1 + 96);
  *v4 = 5066;
  v63 = *(v62 + 20);
  if (v63 > 0x7F)
  {
    v4[2] = v63 | 0x80;
    v65 = v63 >> 7;
    if (v63 >> 14)
    {
      v64 = (v4 + 4);
      do
      {
        *(v64 - 1) = v65 | 0x80;
        v66 = v65 >> 7;
        ++v64;
        v67 = v65 >> 14;
        v65 >>= 7;
      }

      while (v67);
      *(v64 - 1) = v66;
    }

    else
    {
      v4[3] = v65;
      v64 = (v4 + 4);
    }
  }

  else
  {
    v4[2] = v63;
    v64 = (v4 + 3);
  }

  v4 = sub_276446ECC(v62, v64, this);
  if ((v6 & 0x400) == 0)
  {
LABEL_16:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_147;
  }

LABEL_137:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v68 = *(a1 + 104);
  *v4 = 5250;
  v69 = *(v68 + 20);
  if (v69 > 0x7F)
  {
    v4[2] = v69 | 0x80;
    v71 = v69 >> 7;
    if (v69 >> 14)
    {
      v70 = v4 + 4;
      do
      {
        *(v70 - 1) = v71 | 0x80;
        v72 = v71 >> 7;
        ++v70;
        v73 = v71 >> 14;
        v71 >>= 7;
      }

      while (v73);
      *(v70 - 1) = v72;
    }

    else
    {
      v4[3] = v71;
      v70 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v69;
    v70 = v4 + 3;
  }

  v4 = sub_27643EEC4(v68, v70, this);
  if ((v6 & 0x800) == 0)
  {
LABEL_17:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_157;
  }

LABEL_147:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v74 = *(a1 + 112);
  *v4 = 5258;
  v75 = *(v74 + 20);
  if (v75 > 0x7F)
  {
    v4[2] = v75 | 0x80;
    v77 = v75 >> 7;
    if (v75 >> 14)
    {
      v76 = v4 + 4;
      do
      {
        *(v76 - 1) = v77 | 0x80;
        v78 = v77 >> 7;
        ++v76;
        v79 = v77 >> 14;
        v77 >>= 7;
      }

      while (v79);
      *(v76 - 1) = v78;
    }

    else
    {
      v4[3] = v77;
      v76 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v75;
    v76 = v4 + 3;
  }

  v4 = sub_27643EEC4(v74, v76, this);
  if ((v6 & 0x1000) == 0)
  {
LABEL_18:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_167;
  }

LABEL_157:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v80 = *(a1 + 120);
  *v4 = 5266;
  v81 = *(v80 + 20);
  if (v81 > 0x7F)
  {
    v4[2] = v81 | 0x80;
    v83 = v81 >> 7;
    if (v81 >> 14)
    {
      v82 = v4 + 4;
      do
      {
        *(v82 - 1) = v83 | 0x80;
        v84 = v83 >> 7;
        ++v82;
        v85 = v83 >> 14;
        v83 >>= 7;
      }

      while (v85);
      *(v82 - 1) = v84;
    }

    else
    {
      v4[3] = v83;
      v82 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v81;
    v82 = v4 + 3;
  }

  v4 = sub_27643EEC4(v80, v82, this);
  if ((v6 & 0x2000) == 0)
  {
LABEL_19:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_177;
  }

LABEL_167:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v86 = *(a1 + 128);
  *v4 = 5274;
  v87 = *(v86 + 20);
  if (v87 > 0x7F)
  {
    v4[2] = v87 | 0x80;
    v89 = v87 >> 7;
    if (v87 >> 14)
    {
      v88 = v4 + 4;
      do
      {
        *(v88 - 1) = v89 | 0x80;
        v90 = v89 >> 7;
        ++v88;
        v91 = v89 >> 14;
        v89 >>= 7;
      }

      while (v91);
      *(v88 - 1) = v90;
    }

    else
    {
      v4[3] = v89;
      v88 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v87;
    v88 = v4 + 3;
  }

  v4 = sub_27643EEC4(v86, v88, this);
  if ((v6 & 0x4000) == 0)
  {
LABEL_20:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_187;
  }

LABEL_177:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v92 = *(a1 + 136);
  *v4 = 5282;
  v93 = *(v92 + 20);
  if (v93 > 0x7F)
  {
    v4[2] = v93 | 0x80;
    v95 = v93 >> 7;
    if (v93 >> 14)
    {
      v94 = v4 + 4;
      do
      {
        *(v94 - 1) = v95 | 0x80;
        v96 = v95 >> 7;
        ++v94;
        v97 = v95 >> 14;
        v95 >>= 7;
      }

      while (v97);
      *(v94 - 1) = v96;
    }

    else
    {
      v4[3] = v95;
      v94 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v93;
    v94 = v4 + 3;
  }

  v4 = sub_27643EEC4(v92, v94, this);
  if ((v6 & 0x8000) == 0)
  {
LABEL_21:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_197;
  }

LABEL_187:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v98 = *(a1 + 144);
  *v4 = 5290;
  v99 = *(v98 + 20);
  if (v99 > 0x7F)
  {
    v4[2] = v99 | 0x80;
    v101 = v99 >> 7;
    if (v99 >> 14)
    {
      v100 = v4 + 4;
      do
      {
        *(v100 - 1) = v101 | 0x80;
        v102 = v101 >> 7;
        ++v100;
        v103 = v101 >> 14;
        v101 >>= 7;
      }

      while (v103);
      *(v100 - 1) = v102;
    }

    else
    {
      v4[3] = v101;
      v100 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v99;
    v100 = v4 + 3;
  }

  v4 = sub_27643EEC4(v98, v100, this);
  if ((v6 & 0x200000) == 0)
  {
LABEL_22:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_200;
  }

LABEL_197:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v104 = *(a1 + 166);
  *v4 = 5296;
  v4[2] = v104;
  v4 += 3;
  if ((v6 & 0x400000) == 0)
  {
LABEL_23:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_203;
  }

LABEL_200:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v105 = *(a1 + 167);
  *v4 = 5304;
  v4[2] = v105;
  v4 += 3;
  if ((v6 & 0x800000) == 0)
  {
LABEL_24:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_215;
    }

    goto LABEL_206;
  }

LABEL_203:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v106 = *(a1 + 168);
  *v4 = 5341;
  *(v4 + 2) = v106;
  v4 += 6;
  if ((v6 & 0x40000) != 0)
  {
LABEL_206:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v107 = *(a1 + 160);
    *v4 = 5504;
    if (v107 > 0x7F)
    {
      v4[2] = v107 | 0x80;
      v108 = v107 >> 7;
      if (v107 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v108 | 0x80;
          v109 = v108 >> 7;
          ++v4;
          v110 = v108 >> 14;
          v108 >>= 7;
        }

        while (v110);
        *(v4 - 1) = v109;
      }

      else
      {
        v4[3] = v108;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v107;
      v4 += 3;
    }
  }

LABEL_215:
  v111 = *(a1 + 8);
  if ((v111 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v111 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276488988(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    v4 = TSS::StyleArchive::ByteSizeLong(*(a1 + 32));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_8:
  if ((v2 & 0xFC) == 0)
  {
    goto LABEL_16;
  }

  if ((v2 & 4) != 0)
  {
    v13 = sub_276447014(*(a1 + 40));
    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 8) == 0)
    {
LABEL_11:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_11;
  }

  v14 = sub_276447014(*(a1 + 48));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  v15 = sub_276447014(*(a1 + 56));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v16 = sub_276447014(*(a1 + 64));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_36:
  v17 = sub_276447014(*(a1 + 72));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80) != 0)
  {
LABEL_15:
    v8 = sub_276447014(*(a1 + 80));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_16:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = sub_276447014(*(a1 + 88));
    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_19:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_40;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v19 = sub_276447014(*(a1 + 96));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_20:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  v20 = sub_27643F014(*(a1 + 104));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) == 0)
  {
LABEL_21:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  v21 = sub_27643F014(*(a1 + 112));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) == 0)
  {
LABEL_22:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  v22 = sub_27643F014(*(a1 + 120));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) == 0)
  {
LABEL_23:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_43:
  v23 = sub_27643F014(*(a1 + 128));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000) == 0)
  {
LABEL_24:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_44:
  v24 = sub_27643F014(*(a1 + 136));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_25:
    v9 = sub_27643F014(*(a1 + 144));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_26:
  if ((v2 & 0xFF0000) != 0)
  {
    v10 = v3 + 5;
    if ((v2 & 0x10000) == 0)
    {
      v10 = v3;
    }

    if ((v2 & 0x20000) != 0)
    {
      v11 = *(a1 + 156);
      if (v11 < 0)
      {
        v12 = 12;
      }

      else
      {
        v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v10 += v12;
    }

    if ((v2 & 0x40000) != 0)
    {
      v25 = *(a1 + 160);
      v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v25 >= 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 12;
      }

      v10 += v27;
    }

    v28 = v10 + ((v2 >> 19) & 2) + ((v2 >> 18) & 2);
    if ((v2 & 0x200000) != 0)
    {
      v28 += 3;
    }

    if ((v2 & 0x400000) != 0)
    {
      v28 += 3;
    }

    if ((v2 & 0x800000) != 0)
    {
      v3 = v28 + 6;
    }

    else
    {
      v3 = v28;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_276488E10(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527F30, 0);
  if (v4)
  {

    return sub_276488EB8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276488EB8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_70;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
  }

  if ((v5 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C97BA0](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = MEMORY[0x277D80BD0];
    }

    result = TSS::StyleArchive::MergeFrom(v6, v8);
  }

  if ((v5 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v9 = *(v3 + 40);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_276447FD4(v10);
      *(v3 + 40) = v9;
    }

    if (*(a2 + 40))
    {
      v11 = *(a2 + 40);
    }

    else
    {
      v11 = &qword_2812F15A8;
    }

    result = sub_27643BB14(v9, v11);
    if ((v5 & 8) == 0)
    {
LABEL_17:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_38;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 16) |= 8u;
  v12 = *(v3 + 48);
  if (!v12)
  {
    v13 = *(v3 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = sub_276447FD4(v13);
    *(v3 + 48) = v12;
  }

  if (*(a2 + 48))
  {
    v14 = *(a2 + 48);
  }

  else
  {
    v14 = &qword_2812F15A8;
  }

  result = sub_27643BB14(v12, v14);
  if ((v5 & 0x10) == 0)
  {
LABEL_18:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_46:
    *(v3 + 16) |= 0x20u;
    v18 = *(v3 + 64);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = sub_276447FD4(v19);
      *(v3 + 64) = v18;
    }

    if (*(a2 + 64))
    {
      v20 = *(a2 + 64);
    }

    else
    {
      v20 = &qword_2812F15A8;
    }

    result = sub_27643BB14(v18, v20);
    if ((v5 & 0x40) == 0)
    {
LABEL_20:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_62;
    }

    goto LABEL_54;
  }

LABEL_38:
  *(v3 + 16) |= 0x10u;
  v15 = *(v3 + 56);
  if (!v15)
  {
    v16 = *(v3 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = sub_276447FD4(v16);
    *(v3 + 56) = v15;
  }

  if (*(a2 + 56))
  {
    v17 = *(a2 + 56);
  }

  else
  {
    v17 = &qword_2812F15A8;
  }

  result = sub_27643BB14(v15, v17);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_19:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_54:
  *(v3 + 16) |= 0x40u;
  v21 = *(v3 + 72);
  if (!v21)
  {
    v22 = *(v3 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = sub_276447FD4(v22);
    *(v3 + 72) = v21;
  }

  if (*(a2 + 72))
  {
    v23 = *(a2 + 72);
  }

  else
  {
    v23 = &qword_2812F15A8;
  }

  result = sub_27643BB14(v21, v23);
  if ((v5 & 0x80) != 0)
  {
LABEL_62:
    *(v3 + 16) |= 0x80u;
    v24 = *(v3 + 80);
    if (!v24)
    {
      v25 = *(v3 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = sub_276447FD4(v25);
      *(v3 + 80) = v24;
    }

    if (*(a2 + 80))
    {
      v26 = *(a2 + 80);
    }

    else
    {
      v26 = &qword_2812F15A8;
    }

    result = sub_27643BB14(v24, v26);
  }

LABEL_70:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_144;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v27 = *(v3 + 88);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = sub_276447FD4(v28);
      *(v3 + 88) = v27;
    }

    if (*(a2 + 88))
    {
      v29 = *(a2 + 88);
    }

    else
    {
      v29 = &qword_2812F15A8;
    }

    result = sub_27643BB14(v27, v29);
  }

  if ((v5 & 0x200) != 0)
  {
    *(v3 + 16) |= 0x200u;
    v30 = *(v3 + 96);
    if (!v30)
    {
      v31 = *(v3 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = sub_276447FD4(v31);
      *(v3 + 96) = v30;
    }

    if (*(a2 + 96))
    {
      v32 = *(a2 + 96);
    }

    else
    {
      v32 = &qword_2812F15A8;
    }

    result = sub_27643BB14(v30, v32);
  }

  if ((v5 & 0x400) != 0)
  {
    *(v3 + 16) |= 0x400u;
    v33 = *(v3 + 104);
    if (!v33)
    {
      v34 = *(v3 + 8);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = sub_276447688(v34);
      *(v3 + 104) = v33;
    }

    if (*(a2 + 104))
    {
      v35 = *(a2 + 104);
    }

    else
    {
      v35 = qword_2812F12A8;
    }

    result = sub_27643F1BC(v33, v35);
    if ((v5 & 0x800) == 0)
    {
LABEL_91:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_112;
    }
  }

  else if ((v5 & 0x800) == 0)
  {
    goto LABEL_91;
  }

  *(v3 + 16) |= 0x800u;
  v36 = *(v3 + 112);
  if (!v36)
  {
    v37 = *(v3 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = sub_276447688(v37);
    *(v3 + 112) = v36;
  }

  if (*(a2 + 112))
  {
    v38 = *(a2 + 112);
  }

  else
  {
    v38 = qword_2812F12A8;
  }

  result = sub_27643F1BC(v36, v38);
  if ((v5 & 0x1000) == 0)
  {
LABEL_92:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(v3 + 16) |= 0x1000u;
  v39 = *(v3 + 120);
  if (!v39)
  {
    v40 = *(v3 + 8);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = sub_276447688(v40);
    *(v3 + 120) = v39;
  }

  if (*(a2 + 120))
  {
    v41 = *(a2 + 120);
  }

  else
  {
    v41 = qword_2812F12A8;
  }

  result = sub_27643F1BC(v39, v41);
  if ((v5 & 0x2000) == 0)
  {
LABEL_93:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_128;
  }

LABEL_120:
  *(v3 + 16) |= 0x2000u;
  v42 = *(v3 + 128);
  if (!v42)
  {
    v43 = *(v3 + 8);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = sub_276447688(v43);
    *(v3 + 128) = v42;
  }

  if (*(a2 + 128))
  {
    v44 = *(a2 + 128);
  }

  else
  {
    v44 = qword_2812F12A8;
  }

  result = sub_27643F1BC(v42, v44);
  if ((v5 & 0x4000) == 0)
  {
LABEL_94:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(v3 + 16) |= 0x4000u;
  v45 = *(v3 + 136);
  if (!v45)
  {
    v46 = *(v3 + 8);
    if (v46)
    {
      v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
    }

    v45 = sub_276447688(v46);
    *(v3 + 136) = v45;
  }

  if (*(a2 + 136))
  {
    v47 = *(a2 + 136);
  }

  else
  {
    v47 = qword_2812F12A8;
  }

  result = sub_27643F1BC(v45, v47);
  if ((v5 & 0x8000) != 0)
  {
LABEL_136:
    *(v3 + 16) |= 0x8000u;
    v48 = *(v3 + 144);
    if (!v48)
    {
      v49 = *(v3 + 8);
      if (v49)
      {
        v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
      }

      v48 = sub_276447688(v49);
      *(v3 + 144) = v48;
    }

    if (*(a2 + 144))
    {
      v50 = *(a2 + 144);
    }

    else
    {
      v50 = qword_2812F12A8;
    }

    result = sub_27643F1BC(v48, v50);
  }

LABEL_144:
  if ((v5 & 0xFF0000) == 0)
  {
    return result;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 152) = *(a2 + 152);
    if ((v5 & 0x20000) == 0)
    {
LABEL_147:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_158;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_147;
  }

  *(v3 + 156) = *(a2 + 156);
  if ((v5 & 0x40000) == 0)
  {
LABEL_148:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_159;
  }

LABEL_158:
  *(v3 + 160) = *(a2 + 160);
  if ((v5 & 0x80000) == 0)
  {
LABEL_149:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_160;
  }

LABEL_159:
  *(v3 + 164) = *(a2 + 164);
  if ((v5 & 0x100000) == 0)
  {
LABEL_150:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(v3 + 165) = *(a2 + 165);
  if ((v5 & 0x200000) == 0)
  {
LABEL_151:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_152;
    }

LABEL_162:
    *(v3 + 167) = *(a2 + 167);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

LABEL_161:
  *(v3 + 166) = *(a2 + 166);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_162;
  }

LABEL_152:
  if ((v5 & 0x800000) != 0)
  {
LABEL_153:
    *(v3 + 168) = *(a2 + 168);
  }

LABEL_154:
  *(v3 + 16) |= v5;
  return result;
}

uint64_t *sub_27648942C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276487294(result);

    return sub_276488E10(v4, a2);
  }

  return result;
}

uint64_t sub_276489478(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(a1 + 32));
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 4) != 0)
    {
      result = sub_27643BC1C(*(a1 + 40));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) != 0)
    {
      result = sub_27643BC1C(*(a1 + 48));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x10) != 0)
    {
      result = sub_27643BC1C(*(a1 + 56));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x20) != 0)
    {
      result = sub_27643BC1C(*(a1 + 64));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x40) != 0)
    {
      result = sub_27643BC1C(*(a1 + 72));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x80) != 0)
    {
      result = sub_27643BC1C(*(a1 + 80));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x100) != 0)
    {
      result = sub_27643BC1C(*(a1 + 88));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x200) != 0)
    {
      result = sub_27643BC1C(*(a1 + 96));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x400) != 0)
    {
      result = sub_27643F2FC(*(a1 + 104));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x800) != 0)
    {
      result = sub_27643F2FC(*(a1 + 112));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x1000) != 0)
    {
      result = sub_27643F2FC(*(a1 + 120));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x2000) != 0)
    {
      result = sub_27643F2FC(*(a1 + 128));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x4000) != 0)
    {
      result = sub_27643F2FC(*(a1 + 136));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x8000) == 0)
    {
      return 1;
    }

    result = sub_27643F2FC(*(a1 + 144));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t *sub_27648960C(uint64_t *a1)
{
  sub_276489640(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_276489640(uint64_t *result)
{
  if (result != &qword_2812F2978)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277C976F0]();
      MEMORY[0x277C98580](v2, 0x10A1C40AC828A93);
    }

    if (v1[4])
    {
      v3 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v3, 0x10A1C4042C41316);
    }

    if (v1[5])
    {
      v4 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v4, 0x10A1C4078DB9C03);
    }

    result = v1[6];
    if (result)
    {
      MEMORY[0x277C97200]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27648970C(uint64_t *a1)
{
  sub_27648960C(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27648974C()
{
  if (atomic_load_explicit(dword_2812EE540, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812F2978;
}

uint64_t *sub_27648978C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_14:
    result = TSD::FillArchive::Clear(v1[4]);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = TSS::StyleArchive::Clear(result[3]);
  if ((v2 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  result = TSD::StrokeArchive::Clear(v1[5]);
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = TSD::ShadowArchive::Clear(v1[6]);
  }

LABEL_7:
  if ((v2 & 0x30) != 0)
  {
    v1[7] = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_276489830(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v32) & 1) == 0)
  {
    while (1)
    {
      v7 = (v32 + 1);
      v8 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v9 - 128));
      v32 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_60;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 0xD)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_45;
          }

          *(a1 + 16) |= 1u;
          v18 = *(a1 + 24);
          if (!v18)
          {
            v19 = *(a1 + 8);
            if (v19)
            {
              v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = MEMORY[0x277C97BA0](v19);
            LODWORD(v18) = v20;
            *(a1 + 24) = v20;
            v7 = v32;
          }

          v14 = sub_2764AC1AC(a3, v18, v7);
        }

        else if (v10 == 10)
        {
          if (v8 != 82)
          {
            goto LABEL_45;
          }

          *(a1 + 16) |= 2u;
          v24 = *(a1 + 32);
          if (!v24)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = MEMORY[0x277C97A80](v25);
            LODWORD(v24) = v26;
            *(a1 + 32) = v26;
            v7 = v32;
          }

          v14 = sub_2764AC00C(a3, v24, v7);
        }

        else
        {
          if (v10 != 11 || v8 != 90)
          {
            goto LABEL_45;
          }

          *(a1 + 16) |= 4u;
          v11 = *(a1 + 40);
          if (!v11)
          {
            v12 = *(a1 + 8);
            if (v12)
            {
              v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
            }

            v13 = MEMORY[0x277C97AA0](v12);
            LODWORD(v11) = v13;
            *(a1 + 40) = v13;
            v7 = v32;
          }

          v14 = sub_2764AC69C(a3, v11, v7);
        }

        goto LABEL_52;
      }

      if (v10 == 14)
      {
        if (v8 != 114)
        {
          goto LABEL_45;
        }

        *(a1 + 16) |= 8u;
        v21 = *(a1 + 48);
        if (!v21)
        {
          v22 = *(a1 + 8);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = MEMORY[0x277C97A90](v22);
          LODWORD(v21) = v23;
          *(a1 + 48) = v23;
          v7 = v32;
        }

        v14 = sub_2764AC76C(a3, v21, v7);
        goto LABEL_52;
      }

      if (v10 == 15)
      {
        if (v8 == 125)
        {
          v5 |= 0x10u;
          *(a1 + 56) = *v7;
          v32 = (v7 + 4);
          goto LABEL_53;
        }

LABEL_45:
        if (v8)
        {
          v27 = (v8 & 7) == 4;
        }

        else
        {
          v27 = 1;
        }

        if (v27)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v14 = google::protobuf::internal::UnknownFieldParse();
LABEL_52:
        v32 = v14;
        if (!v14)
        {
          goto LABEL_60;
        }

        goto LABEL_53;
      }

      if (v10 != 16 || v8 != 128)
      {
        goto LABEL_45;
      }

      v5 |= 0x20u;
      v16 = (v7 + 1);
      LODWORD(v15) = *v7;
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      v17 = *v16;
      v15 = (v15 + (v17 << 7) - 128);
      if ((v17 & 0x80000000) == 0)
      {
        v16 = (v7 + 2);
LABEL_24:
        v32 = v16;
        *(a1 + 60) = v15;
        goto LABEL_53;
      }

      v30 = google::protobuf::internal::VarintParseSlow64(v7, v15);
      v32 = v30;
      *(a1 + 60) = v31;
      if (!v30)
      {
LABEL_60:
        v32 = 0;
        goto LABEL_2;
      }

LABEL_53:
      if (sub_2763D4D98(a3, &v32))
      {
        goto LABEL_2;
      }
    }

    v7 = (v32 + 2);
LABEL_6:
    v32 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

unsigned __int8 *sub_276489B44(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSS::StyleArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(a1 + 32);
  *a2 = 82;
  v13 = *(v12 + 11);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_28:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 40);
  *a2 = 90;
  v19 = *(v18 + 5);
  if (v19 > 0x7F)
  {
    a2[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = a2 + 3;
      do
      {
        *(v20 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++v20;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(v20 - 1) = v22;
    }

    else
    {
      a2[2] = v21;
      v20 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v19;
    v20 = a2 + 2;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(a1 + 48);
  *a2 = 114;
  v25 = *(v24 + 5);
  if (v25 > 0x7F)
  {
    a2[1] = v25 | 0x80;
    v27 = v25 >> 7;
    if (v25 >> 14)
    {
      v26 = a2 + 3;
      do
      {
        *(v26 - 1) = v27 | 0x80;
        v28 = v27 >> 7;
        ++v26;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
      *(v26 - 1) = v28;
    }

    else
    {
      a2[2] = v27;
      v26 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v25;
    v26 = a2 + 2;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_51;
  }

LABEL_48:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(a1 + 56);
  *a2 = 125;
  *(a2 + 1) = v30;
  a2 += 5;
  if ((v5 & 0x20) != 0)
  {
LABEL_51:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v31 = *(a1 + 60);
    *a2 = 384;
    if (v31 > 0x7F)
    {
      a2[2] = v31 | 0x80;
      v32 = v31 >> 7;
      if (v31 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v32 | 0x80;
          v33 = v32 >> 7;
          ++a2;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
        *(a2 - 1) = v33;
      }

      else
      {
        a2[3] = v32;
        a2 += 4;
      }
    }

    else
    {
      a2[2] = v31;
      a2 += 3;
    }
  }

LABEL_60:
  v35 = *(a1 + 8);
  if ((v35 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v35 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276489ECC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = TSS::StyleArchive::ByteSizeLong(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x3E) == 0)
  {
    goto LABEL_19;
  }

  if ((v2 & 2) == 0)
  {
    if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    v9 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 40));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = TSD::FillArchive::ByteSizeLong(*(a1 + 32));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v2 & 8) != 0)
  {
LABEL_8:
    v5 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 48));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  if ((v2 & 0x10) != 0)
  {
    v3 += 5;
  }

  if ((v2 & 0x20) != 0)
  {
    v6 = *(a1 + 60);
    if (v6 < 0)
    {
      v7 = 12;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v7;
  }

LABEL_19:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_27648A050(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527F48, 0);
  if (v4)
  {

    return sub_27648A0F8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27648A0F8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x3F) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C97BA0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80BD0];
      }

      result = TSS::StyleArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_29;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C97A80](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = MEMORY[0x277D80488];
    }

    result = TSD::FillArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }

LABEL_29:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C97AA0](v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277C97A90](v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 48))
    {
      v17 = *(a2 + 48);
    }

    else
    {
      v17 = MEMORY[0x277D80498];
    }

    result = TSD::ShadowArchive::MergeFrom(v15, v17);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
LABEL_11:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_10:
      *(v3 + 60) = *(a2 + 60);
      goto LABEL_11;
    }

LABEL_45:
    *(v3 + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t *sub_27648A2B4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27648978C(result);

    return sub_27648A050(v4, a2);
  }

  return result;
}

uint64_t sub_27648A300(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(a1 + 24));
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 2) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 32));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 40));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    result = TSD::ShadowArchive::IsInitialized(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t *sub_27648A3B8(uint64_t *a1)
{
  if (a1 != &qword_2812F29B8 && a1[3])
  {
    v2 = MEMORY[0x277C976F0]();
    MEMORY[0x277C98580](v2, 0x10A1C40AC828A93);
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_27648A41C(uint64_t *a1)
{
  sub_27648A3B8(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27648A45C()
{
  if (atomic_load_explicit(dword_2812EE520, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812F29B8;
}

uint64_t *sub_27648A49C(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSS::StyleArchive::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_27648A4F8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_2763D4D98(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C97BA0](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_2764AC1AC(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_27648A640(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSS::StyleArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27648A730(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSS::StyleArchive::ByteSizeLong(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_27648A7BC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527F60, 0);
  if (v4)
  {

    return sub_27648A864(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27648A864(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C97BA0](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80BD0];
    }

    return TSS::StyleArchive::MergeFrom(v6, v8);
  }

  return result;
}

uint64_t *sub_27648A90C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27648A49C(result);

    return sub_27648A7BC(v4, a2);
  }

  return result;
}

uint64_t sub_27648A958(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return TSS::StyleArchive::IsInitialized(*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_27648A9A8(uint64_t *a1)
{
  sub_27648A9DC(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_27648A9DC(uint64_t *result)
{
  if (result != &qword_2812F29D8)
  {
    v1 = result;
    if (result[4])
    {
      v2 = MEMORY[0x277C976F0]();
      MEMORY[0x277C98580](v2, 0x10A1C40AC828A93);
    }

    if (v1[5])
    {
      v3 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v3, 0x10A1C4078DB9C03);
    }

    if (v1[6])
    {
      v4 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v4, 0x10A1C4078DB9C03);
    }

    if (v1[7])
    {
      v5 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v5, 0x10A1C40C8B7F858);
    }

    if (v1[8])
    {
      v6 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v6, 0x10A1C40C8B7F858);
    }

    if (v1[9])
    {
      v7 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v7, 0x10A1C4078DB9C03);
    }

    if (v1[10])
    {
      v8 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v8, 0x10A1C4078DB9C03);
    }

    if (v1[11])
    {
      v9 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v9, 0x10A1C40C8B7F858);
    }

    if (v1[12])
    {
      v10 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v10, 0x10A1C40C8B7F858);
    }

    if (v1[13])
    {
      v11 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v11, 0x10A1C4078DB9C03);
    }

    result = v1[14];
    if (result)
    {
      MEMORY[0x277C97240]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27648AB3C(uint64_t *a1)
{
  sub_27648A9A8(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27648AB7C()
{
  if (atomic_load_explicit(dword_2812EE308, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812F29D8;
}

uint64_t *sub_27648ABBC(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    result = TSS::StyleArchive::Clear(result[4]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = TSD::StrokeArchive::Clear(v1[5]);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = TSD::StrokeArchive::Clear(v1[6]);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = TSD::ShadowArchive::Clear(v1[7]);
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_35:
    result = TSD::StrokeArchive::Clear(v1[9]);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_34:
  result = TSD::ShadowArchive::Clear(v1[8]);
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_36:
  result = TSD::StrokeArchive::Clear(v1[10]);
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = TSD::ShadowArchive::Clear(v1[11]);
  }

LABEL_11:
  if ((v2 & 0x700) == 0)
  {
    goto LABEL_16;
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSD::ShadowArchive::Clear(v1[12]);
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSD::StrokeArchive::Clear(v1[13]);
  if ((v2 & 0x400) != 0)
  {
LABEL_15:
    result = TSD::StrokeArchive::Clear(v1[14]);
  }

LABEL_16:
  if ((v2 & 0xF800) != 0)
  {
    v1[15] = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    v1[16] = 0;
    v1[17] = 0;
    *(v1 + 36) = 0;
  }

  if (HIBYTE(v2))
  {
    *(v1 + 156) = 0;
    *(v1 + 148) = 0;
    *(v1 + 41) = 0;
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    *(v1 + 23) = 0u;
    *(v1 + 21) = 0u;
  }

  if ((v3 & 0x300) != 0)
  {
    v1[25] = 0;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 1;
  v4[1] = 0;
  if (v5)
  {

    return sub_2763D4FD4(v4);
  }

  return result;
}

google::protobuf::internal *sub_27648AD20(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v159 = a2;
  if ((sub_2763D4D98(a3, &v159) & 1) == 0)
  {
    while (1)
    {
      v6 = (v159 + 1);
      v7 = *v159;
      if ((*v159 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v159, (v8 - 128));
      v159 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v18;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 > 0x65)
      {
        if (v7 >> 3 <= 0x71)
        {
          if (v7 >> 3 <= 0x6E)
          {
            if (v9 == 102)
            {
              if (v7 != 53)
              {
                goto LABEL_216;
              }

              *(a1 + 20) |= 2u;
              v98 = *v6;
              v22 = (v6 + 4);
              *(a1 + 172) = v98;
LABEL_195:
              v159 = v22;
              goto LABEL_214;
            }

            if (v9 != 110 || v7 != 112)
            {
              goto LABEL_216;
            }

            *(a1 + 20) |= 4u;
            v25 = (v6 + 1);
            LODWORD(v24) = *v6;
            if ((v24 & 0x80) == 0)
            {
              goto LABEL_46;
            }

            v26 = *v25;
            v24 = (v24 + (v26 << 7) - 128);
            if ((v26 & 0x80000000) == 0)
            {
              v25 = (v6 + 2);
LABEL_46:
              v159 = v25;
              *(a1 + 176) = v24;
              goto LABEL_214;
            }

            v147 = google::protobuf::internal::VarintParseSlow64(v6, v24);
            v159 = v147;
            *(a1 + 176) = v148;
            if (!v147)
            {
              return 0;
            }
          }

          else if (v9 == 111)
          {
            if (v7 != 120)
            {
              goto LABEL_216;
            }

            *(a1 + 20) |= 8u;
            v107 = (v6 + 1);
            LODWORD(v106) = *v6;
            if ((v106 & 0x80) == 0)
            {
              goto LABEL_200;
            }

            v108 = *v107;
            v106 = (v106 + (v108 << 7) - 128);
            if ((v108 & 0x80000000) == 0)
            {
              v107 = (v6 + 2);
LABEL_200:
              v159 = v107;
              *(a1 + 180) = v106;
              goto LABEL_214;
            }

            v155 = google::protobuf::internal::VarintParseSlow64(v6, v106);
            v159 = v155;
            *(a1 + 180) = v156;
            if (!v155)
            {
              return 0;
            }
          }

          else if (v9 == 112)
          {
            if (v7 != 128)
            {
              goto LABEL_216;
            }

            *(a1 + 20) |= 0x10u;
            v100 = (v6 + 1);
            LODWORD(v99) = *v6;
            if ((v99 & 0x80) == 0)
            {
              goto LABEL_187;
            }

            v101 = *v100;
            v99 = (v99 + (v101 << 7) - 128);
            if ((v101 & 0x80000000) == 0)
            {
              v100 = (v6 + 2);
LABEL_187:
              v159 = v100;
              *(a1 + 184) = v99;
              goto LABEL_214;
            }

            v151 = google::protobuf::internal::VarintParseSlow64(v6, v99);
            v159 = v151;
            *(a1 + 184) = v152;
            if (!v151)
            {
              return 0;
            }
          }

          else
          {
            if (v7 != 136)
            {
              goto LABEL_216;
            }

            *(a1 + 20) |= 0x20u;
            v20 = (v6 + 1);
            LODWORD(v19) = *v6;
            if ((v19 & 0x80) == 0)
            {
              goto LABEL_34;
            }

            v21 = *v20;
            v19 = (v19 + (v21 << 7) - 128);
            if ((v21 & 0x80000000) == 0)
            {
              v20 = (v6 + 2);
LABEL_34:
              v159 = v20;
              *(a1 + 188) = v19;
              goto LABEL_214;
            }

            v149 = google::protobuf::internal::VarintParseSlow64(v6, v19);
            v159 = v149;
            *(a1 + 188) = v150;
            if (!v149)
            {
              return 0;
            }
          }
        }

        else
        {
          if (v7 >> 3 > 0x14B)
          {
            if (v9 == 332)
            {
              if (v7 == 98)
              {
                *(a1 + 16) |= 0x400u;
                v14 = *(a1 + 112);
                if (!v14)
                {
                  v112 = *(a1 + 8);
                  if (v112)
                  {
                    v112 = *(v112 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v113 = MEMORY[0x277C97AA0](v112);
                  LODWORD(v14) = v113;
                  *(a1 + 112) = v113;
LABEL_211:
                  v6 = v159;
                }

LABEL_212:
                v13 = sub_2764AC69C(a3, v14, v6);
LABEL_213:
                v159 = v13;
                if (!v13)
                {
                  return 0;
                }

                goto LABEL_214;
              }

LABEL_216:
              if (v7)
              {
                v114 = (v7 & 7) == 4;
              }

              else
              {
                v114 = 1;
              }

              if (v114)
              {
                *(a3 + 80) = v7 - 1;
                return v159;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_2763D4E10((a1 + 8));
              }

              v13 = google::protobuf::internal::UnknownFieldParse();
              goto LABEL_213;
            }

            if (v9 == 333)
            {
              if (v7 != 109)
              {
                goto LABEL_216;
              }

              *(a1 + 20) |= 0x100u;
              v105 = *v6;
              v22 = (v6 + 4);
              *(a1 + 200) = v105;
            }

            else
            {
              if (v9 != 334 || v7 != 117)
              {
                goto LABEL_216;
              }

              *(a1 + 20) |= 0x200u;
              v23 = *v6;
              v22 = (v6 + 4);
              *(a1 + 204) = v23;
            }

            goto LABEL_195;
          }

          if (v9 == 114)
          {
            if (v7 != 144)
            {
              goto LABEL_216;
            }

            *(a1 + 20) |= 0x40u;
            v110 = (v6 + 1);
            LODWORD(v109) = *v6;
            if ((v109 & 0x80) == 0)
            {
              goto LABEL_205;
            }

            v111 = *v110;
            v109 = (v109 + (v111 << 7) - 128);
            if ((v111 & 0x80000000) == 0)
            {
              v110 = (v6 + 2);
LABEL_205:
              v159 = v110;
              *(a1 + 192) = v109;
              goto LABEL_214;
            }

            v157 = google::protobuf::internal::VarintParseSlow64(v6, v109);
            v159 = v157;
            *(a1 + 192) = v158;
            if (!v157)
            {
              return 0;
            }
          }

          else
          {
            if (v9 != 115)
            {
              if (v9 == 331 && v7 == 90)
              {
                *(a1 + 16) |= 0x200u;
                v14 = *(a1 + 104);
                if (!v14)
                {
                  v15 = *(a1 + 8);
                  if (v15)
                  {
                    v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v16 = MEMORY[0x277C97AA0](v15);
                  LODWORD(v14) = v16;
                  *(a1 + 104) = v16;
                  goto LABEL_211;
                }

                goto LABEL_212;
              }

              goto LABEL_216;
            }

            if (v7 != 152)
            {
              goto LABEL_216;
            }

            *(a1 + 20) |= 0x80u;
            v103 = (v6 + 1);
            LODWORD(v102) = *v6;
            if ((v102 & 0x80) == 0)
            {
              goto LABEL_192;
            }

            v104 = *v103;
            v102 = (v102 + (v104 << 7) - 128);
            if ((v104 & 0x80000000) == 0)
            {
              v103 = (v6 + 2);
LABEL_192:
              v159 = v103;
              *(a1 + 196) = v102;
              goto LABEL_214;
            }

            v153 = google::protobuf::internal::VarintParseSlow64(v6, v102);
            v159 = v153;
            *(a1 + 196) = v154;
            if (!v153)
            {
              return 0;
            }
          }
        }
      }

      else
      {
        switch(v9)
        {
          case 1u:
            if (v7 != 10)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 1u;
            v10 = *(a1 + 32);
            if (!v10)
            {
              v11 = *(a1 + 8);
              if (v11)
              {
                v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
              }

              v12 = MEMORY[0x277C97BA0](v11);
              LODWORD(v10) = v12;
              *(a1 + 32) = v12;
              v6 = v159;
            }

            v13 = sub_2764AC1AC(a3, v10, v6);
            goto LABEL_213;
          case 0xAu:
            if (v7 != 80)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x800u;
            v60 = (v6 + 1);
            v59 = *v6;
            if ((v59 & 0x8000000000000000) == 0)
            {
              goto LABEL_109;
            }

            v61 = *v60;
            v59 = (v61 << 7) + v59 - 128;
            if (v61 < 0)
            {
              v129 = google::protobuf::internal::VarintParseSlow64(v6, v59);
              v159 = v129;
              *(a1 + 120) = v130 != 0;
              if (!v129)
              {
                return 0;
              }
            }

            else
            {
              v60 = (v6 + 2);
LABEL_109:
              v159 = v60;
              *(a1 + 120) = v59 != 0;
            }

            break;
          case 0xBu:
            if (v7 != 88)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x1000u;
            v52 = (v6 + 1);
            v51 = *v6;
            if ((v51 & 0x8000000000000000) == 0)
            {
              goto LABEL_95;
            }

            v53 = *v52;
            v51 = (v53 << 7) + v51 - 128;
            if (v53 < 0)
            {
              v125 = google::protobuf::internal::VarintParseSlow64(v6, v51);
              v159 = v125;
              *(a1 + 121) = v126 != 0;
              if (!v125)
              {
                return 0;
              }
            }

            else
            {
              v52 = (v6 + 2);
LABEL_95:
              v159 = v52;
              *(a1 + 121) = v51 != 0;
            }

            break;
          case 0xCu:
            if (v7 != 98)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 2u;
            v14 = *(a1 + 40);
            if (v14)
            {
              goto LABEL_212;
            }

            v49 = *(a1 + 8);
            if (v49)
            {
              v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
            }

            v50 = MEMORY[0x277C97AA0](v49);
            LODWORD(v14) = v50;
            *(a1 + 40) = v50;
            goto LABEL_211;
          case 0xDu:
            if (v7 != 106)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 4u;
            v14 = *(a1 + 48);
            if (v14)
            {
              goto LABEL_212;
            }

            v66 = *(a1 + 8);
            if (v66)
            {
              v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
            }

            v67 = MEMORY[0x277C97AA0](v66);
            LODWORD(v14) = v67;
            *(a1 + 48) = v67;
            goto LABEL_211;
          case 0xEu:
            if (v7 != 112)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x8000u;
            v73 = (v6 + 1);
            LODWORD(v72) = *v6;
            if ((v72 & 0x80) == 0)
            {
              goto LABEL_133;
            }

            v74 = *v73;
            v72 = (v72 + (v74 << 7) - 128);
            if (v74 < 0)
            {
              v135 = google::protobuf::internal::VarintParseSlow64(v6, v72);
              v159 = v135;
              *(a1 + 124) = v136;
              if (!v135)
              {
                return 0;
              }
            }

            else
            {
              v73 = (v6 + 2);
LABEL_133:
              v159 = v73;
              *(a1 + 124) = v72;
            }

            break;
          case 0xFu:
            if (v7 != 120)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x2000u;
            v46 = (v6 + 1);
            v45 = *v6;
            if ((v45 & 0x8000000000000000) == 0)
            {
              goto LABEL_83;
            }

            v47 = *v46;
            v45 = (v47 << 7) + v45 - 128;
            if (v47 < 0)
            {
              v123 = google::protobuf::internal::VarintParseSlow64(v6, v45);
              v159 = v123;
              *(a1 + 122) = v124 != 0;
              if (!v123)
              {
                return 0;
              }
            }

            else
            {
              v46 = (v6 + 2);
LABEL_83:
              v159 = v46;
              *(a1 + 122) = v45 != 0;
            }

            break;
          case 0x10u:
            if (v7 != 128)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x4000u;
            v70 = (v6 + 1);
            v69 = *v6;
            if ((v69 & 0x8000000000000000) == 0)
            {
              goto LABEL_128;
            }

            v71 = *v70;
            v69 = (v71 << 7) + v69 - 128;
            if (v71 < 0)
            {
              v133 = google::protobuf::internal::VarintParseSlow64(v6, v69);
              v159 = v133;
              *(a1 + 123) = v134 != 0;
              if (!v133)
              {
                return 0;
              }
            }

            else
            {
              v70 = (v6 + 2);
LABEL_128:
              v159 = v70;
              *(a1 + 123) = v69 != 0;
            }

            break;
          case 0x11u:
            if (v7 != 141)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x10000u;
            v58 = *v6;
            v22 = (v6 + 4);
            *(a1 + 128) = v58;
            goto LABEL_195;
          case 0x12u:
            if (v7 != 144)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x80000u;
            v81 = (v6 + 1);
            v80 = *v6;
            if ((v80 & 0x8000000000000000) == 0)
            {
              goto LABEL_148;
            }

            v82 = *v81;
            v80 = (v82 << 7) + v80 - 128;
            if (v82 < 0)
            {
              v139 = google::protobuf::internal::VarintParseSlow64(v6, v80);
              v159 = v139;
              *(a1 + 140) = v140 != 0;
              if (!v139)
              {
                return 0;
              }
            }

            else
            {
              v81 = (v6 + 2);
LABEL_148:
              v159 = v81;
              *(a1 + 140) = v80 != 0;
            }

            break;
          case 0x15u:
            if (v7 != 170)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 8u;
            v39 = *(a1 + 56);
            if (v39)
            {
              goto LABEL_175;
            }

            v40 = *(a1 + 8);
            if (v40)
            {
              v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
            }

            v41 = MEMORY[0x277C97A90](v40);
            LODWORD(v39) = v41;
            *(a1 + 56) = v41;
            goto LABEL_174;
          case 0x16u:
            if (v7 != 178)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x10u;
            v39 = *(a1 + 64);
            if (v39)
            {
              goto LABEL_175;
            }

            v75 = *(a1 + 8);
            if (v75)
            {
              v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
            }

            v76 = MEMORY[0x277C97A90](v75);
            LODWORD(v39) = v76;
            *(a1 + 64) = v76;
            goto LABEL_174;
          case 0x17u:
            if (v7 != 189)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x20000u;
            v57 = *v6;
            v22 = (v6 + 4);
            *(a1 + 132) = v57;
            goto LABEL_195;
          case 0x18u:
            if (v7 != 197)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x40000u;
            v48 = *v6;
            v22 = (v6 + 4);
            *(a1 + 136) = v48;
            goto LABEL_195;
          case 0x19u:
            if (v7 != 200)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x100000u;
            v43 = (v6 + 1);
            v42 = *v6;
            if ((v42 & 0x8000000000000000) == 0)
            {
              goto LABEL_78;
            }

            v44 = *v43;
            v42 = (v44 << 7) + v42 - 128;
            if (v44 < 0)
            {
              v121 = google::protobuf::internal::VarintParseSlow64(v6, v42);
              v159 = v121;
              *(a1 + 141) = v122 != 0;
              if (!v121)
              {
                return 0;
              }
            }

            else
            {
              v43 = (v6 + 2);
LABEL_78:
              v159 = v43;
              *(a1 + 141) = v42 != 0;
            }

            break;
          case 0x32u:
            if (v7 != 144)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x200000u;
            v34 = (v6 + 1);
            v33 = *v6;
            if ((v33 & 0x8000000000000000) == 0)
            {
              goto LABEL_61;
            }

            v35 = *v34;
            v33 = (v35 << 7) + v33 - 128;
            if (v35 < 0)
            {
              v119 = google::protobuf::internal::VarintParseSlow64(v6, v33);
              v159 = v119;
              *(a1 + 142) = v120 != 0;
              if (!v119)
              {
                return 0;
              }
            }

            else
            {
              v34 = (v6 + 2);
LABEL_61:
              v159 = v34;
              *(a1 + 142) = v33 != 0;
            }

            break;
          case 0x33u:
            if (v7 != 152)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x400000u;
            v78 = (v6 + 1);
            v77 = *v6;
            if ((v77 & 0x8000000000000000) == 0)
            {
              goto LABEL_143;
            }

            v79 = *v78;
            v77 = (v79 << 7) + v77 - 128;
            if (v79 < 0)
            {
              v137 = google::protobuf::internal::VarintParseSlow64(v6, v77);
              v159 = v137;
              *(a1 + 143) = v138 != 0;
              if (!v137)
              {
                return 0;
              }
            }

            else
            {
              v78 = (v6 + 2);
LABEL_143:
              v159 = v78;
              *(a1 + 143) = v77 != 0;
            }

            break;
          case 0x34u:
            if (v7 != 162)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x20u;
            v14 = *(a1 + 72);
            if (v14)
            {
              goto LABEL_212;
            }

            v83 = *(a1 + 8);
            if (v83)
            {
              v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
            }

            v84 = MEMORY[0x277C97AA0](v83);
            LODWORD(v14) = v84;
            *(a1 + 72) = v84;
            goto LABEL_211;
          case 0x35u:
            if (v7 != 170)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x40u;
            v14 = *(a1 + 80);
            if (v14)
            {
              goto LABEL_212;
            }

            v36 = *(a1 + 8);
            if (v36)
            {
              v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
            }

            v37 = MEMORY[0x277C97AA0](v36);
            LODWORD(v14) = v37;
            *(a1 + 80) = v37;
            goto LABEL_211;
          case 0x36u:
            if (v7 != 176)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x800000u;
            v31 = (v6 + 1);
            LODWORD(v30) = *v6;
            if ((v30 & 0x80) == 0)
            {
              goto LABEL_56;
            }

            v32 = *v31;
            v30 = (v30 + (v32 << 7) - 128);
            if (v32 < 0)
            {
              v117 = google::protobuf::internal::VarintParseSlow64(v6, v30);
              v159 = v117;
              *(a1 + 144) = v118;
              if (!v117)
              {
                return 0;
              }
            }

            else
            {
              v31 = (v6 + 2);
LABEL_56:
              v159 = v31;
              *(a1 + 144) = v30;
            }

            break;
          case 0x37u:
            if (v7 != 184)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x8000000u;
            v55 = (v6 + 1);
            v54 = *v6;
            if ((v54 & 0x8000000000000000) == 0)
            {
              goto LABEL_100;
            }

            v56 = *v55;
            v54 = (v56 << 7) + v54 - 128;
            if (v56 < 0)
            {
              v127 = google::protobuf::internal::VarintParseSlow64(v6, v54);
              v159 = v127;
              *(a1 + 160) = v128 != 0;
              if (!v127)
              {
                return 0;
              }
            }

            else
            {
              v55 = (v6 + 2);
LABEL_100:
              v159 = v55;
              *(a1 + 160) = v54 != 0;
            }

            break;
          case 0x38u:
            if (v7 != 192)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x10000000u;
            v89 = (v6 + 1);
            v88 = *v6;
            if ((v88 & 0x8000000000000000) == 0)
            {
              goto LABEL_163;
            }

            v90 = *v89;
            v88 = (v90 << 7) + v88 - 128;
            if (v90 < 0)
            {
              v143 = google::protobuf::internal::VarintParseSlow64(v6, v88);
              v159 = v143;
              *(a1 + 161) = v144 != 0;
              if (!v143)
              {
                return 0;
              }
            }

            else
            {
              v89 = (v6 + 2);
LABEL_163:
              v159 = v89;
              *(a1 + 161) = v88 != 0;
            }

            break;
          case 0x39u:
            if (v7 != 205)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x1000000u;
            v38 = *v6;
            v22 = (v6 + 4);
            *(a1 + 148) = v38;
            goto LABEL_195;
          case 0x3Au:
            if (v7 != 208)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x2000000u;
            v86 = (v6 + 1);
            LODWORD(v85) = *v6;
            if ((v85 & 0x80) == 0)
            {
              goto LABEL_158;
            }

            v87 = *v86;
            v85 = (v85 + (v87 << 7) - 128);
            if (v87 < 0)
            {
              v141 = google::protobuf::internal::VarintParseSlow64(v6, v85);
              v159 = v141;
              *(a1 + 152) = v142;
              if (!v141)
              {
                return 0;
              }
            }

            else
            {
              v86 = (v6 + 2);
LABEL_158:
              v159 = v86;
              *(a1 + 152) = v85;
            }

            break;
          case 0x3Bu:
            if (v7 != 216)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x4000000u;
            v64 = (v6 + 1);
            LODWORD(v63) = *v6;
            if ((v63 & 0x80) == 0)
            {
              goto LABEL_116;
            }

            v65 = *v64;
            v63 = (v63 + (v65 << 7) - 128);
            if (v65 < 0)
            {
              v131 = google::protobuf::internal::VarintParseSlow64(v6, v63);
              v159 = v131;
              *(a1 + 156) = v132;
              if (!v131)
              {
                return 0;
              }
            }

            else
            {
              v64 = (v6 + 2);
LABEL_116:
              v159 = v64;
              *(a1 + 156) = v63;
            }

            break;
          case 0x3Cu:
            if (v7 != 224)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x20000000u;
            v28 = (v6 + 1);
            v27 = *v6;
            if ((v27 & 0x8000000000000000) == 0)
            {
              goto LABEL_51;
            }

            v29 = *v28;
            v27 = (v29 << 7) + v27 - 128;
            if (v29 < 0)
            {
              v115 = google::protobuf::internal::VarintParseSlow64(v6, v27);
              v159 = v115;
              *(a1 + 162) = v116 != 0;
              if (!v115)
              {
                return 0;
              }
            }

            else
            {
              v28 = (v6 + 2);
LABEL_51:
              v159 = v28;
              *(a1 + 162) = v27 != 0;
            }

            break;
          case 0x3Fu:
            if (v7 != 250)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x80u;
            v39 = *(a1 + 88);
            if (v39)
            {
              goto LABEL_175;
            }

            v91 = *(a1 + 8);
            if (v91)
            {
              v91 = *(v91 & 0xFFFFFFFFFFFFFFFELL);
            }

            v92 = MEMORY[0x277C97A90](v91);
            LODWORD(v39) = v92;
            *(a1 + 88) = v92;
            goto LABEL_174;
          case 0x40u:
            if (v7 != 2)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x100u;
            v39 = *(a1 + 96);
            if (v39)
            {
              goto LABEL_175;
            }

            v93 = *(a1 + 8);
            if (v93)
            {
              v93 = *(v93 & 0xFFFFFFFFFFFFFFFELL);
            }

            v94 = MEMORY[0x277C97A90](v93);
            LODWORD(v39) = v94;
            *(a1 + 96) = v94;
LABEL_174:
            v6 = v159;
LABEL_175:
            v13 = sub_2764AC76C(a3, v39, v6);
            goto LABEL_213;
          case 0x41u:
            if (v7 != 13)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x80000000;
            v62 = *v6;
            v22 = (v6 + 4);
            *(a1 + 164) = v62;
            goto LABEL_195;
          case 0x42u:
            if (v7 != 21)
            {
              goto LABEL_216;
            }

            *(a1 + 20) |= 1u;
            v68 = *v6;
            v22 = (v6 + 4);
            *(a1 + 168) = v68;
            goto LABEL_195;
          case 0x43u:
            if (v7 != 24)
            {
              goto LABEL_216;
            }

            *(a1 + 16) |= 0x40000000u;
            v96 = (v6 + 1);
            v95 = *v6;
            if ((v95 & 0x8000000000000000) == 0)
            {
              goto LABEL_180;
            }

            v97 = *v96;
            v95 = (v97 << 7) + v95 - 128;
            if (v97 < 0)
            {
              v145 = google::protobuf::internal::VarintParseSlow64(v6, v95);
              v159 = v145;
              *(a1 + 163) = v146 != 0;
              if (!v145)
              {
                return 0;
              }
            }

            else
            {
              v96 = (v6 + 2);
LABEL_180:
              v159 = v96;
              *(a1 + 163) = v95 != 0;
            }

            break;
          default:
            goto LABEL_216;
        }
      }

LABEL_214:
      if (sub_2763D4D98(a3, &v159))
      {
        return v159;
      }
    }

    v6 = (v159 + 2);
LABEL_6:
    v159 = v6;
    goto LABEL_7;
  }

  return v159;
}

unsigned __int8 *sub_27648BD6C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 32);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSS::StyleArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 0x800) == 0)
    {
LABEL_3:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((v5 & 0x800) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(a1 + 120);
  *a2 = 80;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 0x1000) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(a1 + 121);
  *a2 = 88;
  a2[1] = v13;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_57;
  }

LABEL_47:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(a1 + 40);
  *a2 = 98;
  v15 = *(v14 + 5);
  if (v15 > 0x7F)
  {
    a2[1] = v15 | 0x80;
    v17 = v15 >> 7;
    if (v15 >> 14)
    {
      v16 = a2 + 3;
      do
      {
        *(v16 - 1) = v17 | 0x80;
        v18 = v17 >> 7;
        ++v16;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
      *(v16 - 1) = v18;
    }

    else
    {
      a2[2] = v17;
      v16 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v15;
    v16 = a2 + 2;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v14, v16, a3);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

LABEL_67:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(a1 + 124);
    *a2 = 112;
    if (v26 > 0x7F)
    {
      a2[1] = v26 | 0x80;
      v27 = v26 >> 7;
      if (v26 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v27 | 0x80;
          v28 = v27 >> 7;
          ++a2;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
        *(a2 - 1) = v28;
        if ((v5 & 0x2000) != 0)
        {
          goto LABEL_78;
        }
      }

      else
      {
        a2[2] = v27;
        a2 += 3;
        if ((v5 & 0x2000) != 0)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      a2[1] = v26;
      a2 += 2;
      if ((v5 & 0x2000) != 0)
      {
        goto LABEL_78;
      }
    }

LABEL_8:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_81;
  }

LABEL_57:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(a1 + 48);
  *a2 = 106;
  v21 = *(v20 + 5);
  if (v21 > 0x7F)
  {
    a2[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = a2 + 3;
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      a2[2] = v23;
      v22 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v21;
    v22 = a2 + 2;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v20, v22, a3);
  if ((v5 & 0x8000) != 0)
  {
    goto LABEL_67;
  }

LABEL_7:
  if ((v5 & 0x2000) == 0)
  {
    goto LABEL_8;
  }

LABEL_78:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(a1 + 122);
  *a2 = 120;
  a2[1] = v30;
  a2 += 2;
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_84;
  }

LABEL_81:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v31 = *(a1 + 123);
  *a2 = 384;
  a2[2] = v31;
  a2 += 3;
  if ((v5 & 0x10000) == 0)
  {
LABEL_10:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_87;
  }

LABEL_84:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v32 = *(a1 + 128);
  *a2 = 397;
  *(a2 + 2) = v32;
  a2 += 6;
  if ((v5 & 0x80000) == 0)
  {
LABEL_11:
    if ((v5 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_90;
  }

LABEL_87:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v33 = *(a1 + 140);
  *a2 = 400;
  a2[2] = v33;
  a2 += 3;
  if ((v5 & 8) == 0)
  {
LABEL_12:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_100;
  }

LABEL_90:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v34 = *(a1 + 56);
  *a2 = 426;
  v35 = *(v34 + 5);
  if (v35 > 0x7F)
  {
    a2[2] = v35 | 0x80;
    v37 = v35 >> 7;
    if (v35 >> 14)
    {
      v36 = a2 + 4;
      do
      {
        *(v36 - 1) = v37 | 0x80;
        v38 = v37 >> 7;
        ++v36;
        v39 = v37 >> 14;
        v37 >>= 7;
      }

      while (v39);
      *(v36 - 1) = v38;
    }

    else
    {
      a2[3] = v37;
      v36 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v35;
    v36 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v34, v36, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_13:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_110;
  }

LABEL_100:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v40 = *(a1 + 64);
  *a2 = 434;
  v41 = *(v40 + 5);
  if (v41 > 0x7F)
  {
    a2[2] = v41 | 0x80;
    v43 = v41 >> 7;
    if (v41 >> 14)
    {
      v42 = a2 + 4;
      do
      {
        *(v42 - 1) = v43 | 0x80;
        v44 = v43 >> 7;
        ++v42;
        v45 = v43 >> 14;
        v43 >>= 7;
      }

      while (v45);
      *(v42 - 1) = v44;
    }

    else
    {
      a2[3] = v43;
      v42 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v41;
    v42 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v40, v42, a3);
  if ((v5 & 0x20000) == 0)
  {
LABEL_14:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_113;
  }

LABEL_110:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v46 = *(a1 + 132);
  *a2 = 445;
  *(a2 + 2) = v46;
  a2 += 6;
  if ((v5 & 0x40000) == 0)
  {
LABEL_15:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_116;
  }

LABEL_113:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v47 = *(a1 + 136);
  *a2 = 453;
  *(a2 + 2) = v47;
  a2 += 6;
  if ((v5 & 0x100000) == 0)
  {
LABEL_16:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_119;
  }

LABEL_116:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v48 = *(a1 + 141);
  *a2 = 456;
  a2[2] = v48;
  a2 += 3;
  if ((v5 & 0x200000) == 0)
  {
LABEL_17:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_122;
  }

LABEL_119:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v49 = *(a1 + 142);
  *a2 = 912;
  a2[2] = v49;
  a2 += 3;
  if ((v5 & 0x400000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_125;
  }

LABEL_122:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v50 = *(a1 + 143);
  *a2 = 920;
  a2[2] = v50;
  a2 += 3;
  if ((v5 & 0x20) == 0)
  {
LABEL_19:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_135;
  }

LABEL_125:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v51 = *(a1 + 72);
  *a2 = 930;
  v52 = *(v51 + 5);
  if (v52 > 0x7F)
  {
    a2[2] = v52 | 0x80;
    v54 = v52 >> 7;
    if (v52 >> 14)
    {
      v53 = a2 + 4;
      do
      {
        *(v53 - 1) = v54 | 0x80;
        v55 = v54 >> 7;
        ++v53;
        v56 = v54 >> 14;
        v54 >>= 7;
      }

      while (v56);
      *(v53 - 1) = v55;
    }

    else
    {
      a2[3] = v54;
      v53 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v52;
    v53 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v51, v53, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_20:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

LABEL_145:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v63 = *(a1 + 144);
    *a2 = 944;
    if (v63 > 0x7F)
    {
      a2[2] = v63 | 0x80;
      v64 = v63 >> 7;
      if (v63 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v64 | 0x80;
          v65 = v64 >> 7;
          ++a2;
          v66 = v64 >> 14;
          v64 >>= 7;
        }

        while (v66);
        *(a2 - 1) = v65;
        if ((v5 & 0x8000000) != 0)
        {
          goto LABEL_156;
        }
      }

      else
      {
        a2[3] = v64;
        a2 += 4;
        if ((v5 & 0x8000000) != 0)
        {
          goto LABEL_156;
        }
      }
    }

    else
    {
      a2[2] = v63;
      a2 += 3;
      if ((v5 & 0x8000000) != 0)
      {
        goto LABEL_156;
      }
    }

LABEL_22:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_159;
  }

LABEL_135:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v57 = *(a1 + 80);
  *a2 = 938;
  v58 = *(v57 + 5);
  if (v58 > 0x7F)
  {
    a2[2] = v58 | 0x80;
    v60 = v58 >> 7;
    if (v58 >> 14)
    {
      v59 = a2 + 4;
      do
      {
        *(v59 - 1) = v60 | 0x80;
        v61 = v60 >> 7;
        ++v59;
        v62 = v60 >> 14;
        v60 >>= 7;
      }

      while (v62);
      *(v59 - 1) = v61;
    }

    else
    {
      a2[3] = v60;
      v59 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v58;
    v59 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v57, v59, a3);
  if ((v5 & 0x800000) != 0)
  {
    goto LABEL_145;
  }

LABEL_21:
  if ((v5 & 0x8000000) == 0)
  {
    goto LABEL_22;
  }

LABEL_156:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v67 = *(a1 + 160);
  *a2 = 952;
  a2[2] = v67;
  a2 += 3;
  if ((v5 & 0x10000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_162;
  }

LABEL_159:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v68 = *(a1 + 161);
  *a2 = 960;
  a2[2] = v68;
  a2 += 3;
  if ((v5 & 0x1000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_165;
  }

LABEL_162:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v69 = *(a1 + 148);
  *a2 = 973;
  *(a2 + 2) = v69;
  a2 += 6;
  if ((v5 & 0x2000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_176:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v74 = *(a1 + 156);
    *a2 = 984;
    if (v74 > 0x7F)
    {
      a2[2] = v74 | 0x80;
      v75 = v74 >> 7;
      if (v74 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v75 | 0x80;
          v76 = v75 >> 7;
          ++a2;
          v77 = v75 >> 14;
          v75 >>= 7;
        }

        while (v77);
        *(a2 - 1) = v76;
        if ((v5 & 0x20000000) != 0)
        {
          goto LABEL_187;
        }
      }

      else
      {
        a2[3] = v75;
        a2 += 4;
        if ((v5 & 0x20000000) != 0)
        {
          goto LABEL_187;
        }
      }
    }

    else
    {
      a2[2] = v74;
      a2 += 3;
      if ((v5 & 0x20000000) != 0)
      {
        goto LABEL_187;
      }
    }

LABEL_27:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_190;
  }

LABEL_165:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v70 = *(a1 + 152);
  *a2 = 976;
  if (v70 > 0x7F)
  {
    a2[2] = v70 | 0x80;
    v71 = v70 >> 7;
    if (v70 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v71 | 0x80;
        v72 = v71 >> 7;
        ++a2;
        v73 = v71 >> 14;
        v71 >>= 7;
      }

      while (v73);
      *(a2 - 1) = v72;
      if ((v5 & 0x4000000) != 0)
      {
        goto LABEL_176;
      }
    }

    else
    {
      a2[3] = v71;
      a2 += 4;
      if ((v5 & 0x4000000) != 0)
      {
        goto LABEL_176;
      }
    }
  }

  else
  {
    a2[2] = v70;
    a2 += 3;
    if ((v5 & 0x4000000) != 0)
    {
      goto LABEL_176;
    }
  }

LABEL_26:
  if ((v5 & 0x20000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_187:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v78 = *(a1 + 162);
  *a2 = 992;
  a2[2] = v78;
  a2 += 3;
  if ((v5 & 0x80) == 0)
  {
LABEL_28:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_200;
  }

LABEL_190:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v79 = *(a1 + 88);
  *a2 = 1018;
  v80 = *(v79 + 5);
  if (v80 > 0x7F)
  {
    a2[2] = v80 | 0x80;
    v82 = v80 >> 7;
    if (v80 >> 14)
    {
      v81 = a2 + 4;
      do
      {
        *(v81 - 1) = v82 | 0x80;
        v83 = v82 >> 7;
        ++v81;
        v84 = v82 >> 14;
        v82 >>= 7;
      }

      while (v84);
      *(v81 - 1) = v83;
    }

    else
    {
      a2[3] = v82;
      v81 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v80;
    v81 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v79, v81, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_29:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_213;
    }

    goto LABEL_210;
  }

LABEL_200:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v85 = *(a1 + 96);
  *a2 = 1154;
  v86 = *(v85 + 5);
  if (v86 > 0x7F)
  {
    a2[2] = v86 | 0x80;
    v88 = v86 >> 7;
    if (v86 >> 14)
    {
      v87 = a2 + 4;
      do
      {
        *(v87 - 1) = v88 | 0x80;
        v89 = v88 >> 7;
        ++v87;
        v90 = v88 >> 14;
        v88 >>= 7;
      }

      while (v90);
      *(v87 - 1) = v89;
    }

    else
    {
      a2[3] = v88;
      v87 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v86;
    v87 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v85, v87, a3);
  if (v5 < 0)
  {
LABEL_210:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v91 = *(a1 + 164);
    *a2 = 1165;
    *(a2 + 2) = v91;
    a2 += 6;
  }

LABEL_213:
  if (*(a1 + 20))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v92 = *(a1 + 168);
    *a2 = 1173;
    *(a2 + 2) = v92;
    a2 += 6;
  }

  if ((*(a1 + 19) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v93 = *(a1 + 163);
    *a2 = 1176;
    a2[2] = v93;
    a2 += 3;
  }

  v94 = *(a1 + 20);
  if ((v94 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v96 = *(a1 + 172);
    *a2 = 1717;
    *(a2 + 2) = v96;
    a2 += 6;
    if ((v94 & 4) == 0)
    {
LABEL_223:
      if ((v94 & 8) == 0)
      {
        goto LABEL_224;
      }

LABEL_251:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v104 = *(a1 + 180);
      *a2 = 1784;
      if (v104 > 0x7F)
      {
        a2[2] = v104 | 0x80;
        v105 = v104 >> 7;
        if (v104 >> 14)
        {
          a2 += 4;
          do
          {
            *(a2 - 1) = v105 | 0x80;
            v106 = v105 >> 7;
            ++a2;
            v107 = v105 >> 14;
            v105 >>= 7;
          }

          while (v107);
          *(a2 - 1) = v106;
          if ((v94 & 0x10) != 0)
          {
            goto LABEL_262;
          }
        }

        else
        {
          a2[3] = v105;
          a2 += 4;
          if ((v94 & 0x10) != 0)
          {
            goto LABEL_262;
          }
        }
      }

      else
      {
        a2[2] = v104;
        a2 += 3;
        if ((v94 & 0x10) != 0)
        {
          goto LABEL_262;
        }
      }

LABEL_225:
      if ((v94 & 0x20) == 0)
      {
        goto LABEL_226;
      }

LABEL_273:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v112 = *(a1 + 188);
      *a2 = 1928;
      if (v112 > 0x7F)
      {
        a2[2] = v112 | 0x80;
        v113 = v112 >> 7;
        if (v112 >> 14)
        {
          a2 += 4;
          do
          {
            *(a2 - 1) = v113 | 0x80;
            v114 = v113 >> 7;
            ++a2;
            v115 = v113 >> 14;
            v113 >>= 7;
          }

          while (v115);
          *(a2 - 1) = v114;
          if ((v94 & 0x40) != 0)
          {
            goto LABEL_284;
          }
        }

        else
        {
          a2[3] = v113;
          a2 += 4;
          if ((v94 & 0x40) != 0)
          {
            goto LABEL_284;
          }
        }
      }

      else
      {
        a2[2] = v112;
        a2 += 3;
        if ((v94 & 0x40) != 0)
        {
          goto LABEL_284;
        }
      }

LABEL_227:
      if ((v94 & 0x80) == 0)
      {
        goto LABEL_295;
      }

      goto LABEL_228;
    }
  }

  else if ((v94 & 4) == 0)
  {
    goto LABEL_223;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v97 = *(a1 + 176);
  *a2 = 1776;
  if (v97 > 0x7F)
  {
    a2[2] = v97 | 0x80;
    v99 = v97 >> 7;
    if (v97 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v99 | 0x80;
        v102 = v99 >> 7;
        ++a2;
        v103 = v99 >> 14;
        v99 >>= 7;
      }

      while (v103);
      *(a2 - 1) = v102;
      if ((v94 & 8) != 0)
      {
        goto LABEL_251;
      }
    }

    else
    {
      a2[3] = v99;
      a2 += 4;
      if ((v94 & 8) != 0)
      {
        goto LABEL_251;
      }
    }
  }

  else
  {
    a2[2] = v97;
    a2 += 3;
    if ((v94 & 8) != 0)
    {
      goto LABEL_251;
    }
  }

LABEL_224:
  if ((v94 & 0x10) == 0)
  {
    goto LABEL_225;
  }

LABEL_262:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v108 = *(a1 + 184);
  *a2 = 1920;
  if (v108 > 0x7F)
  {
    a2[2] = v108 | 0x80;
    v109 = v108 >> 7;
    if (v108 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v109 | 0x80;
        v110 = v109 >> 7;
        ++a2;
        v111 = v109 >> 14;
        v109 >>= 7;
      }

      while (v111);
      *(a2 - 1) = v110;
      if ((v94 & 0x20) != 0)
      {
        goto LABEL_273;
      }
    }

    else
    {
      a2[3] = v109;
      a2 += 4;
      if ((v94 & 0x20) != 0)
      {
        goto LABEL_273;
      }
    }
  }

  else
  {
    a2[2] = v108;
    a2 += 3;
    if ((v94 & 0x20) != 0)
    {
      goto LABEL_273;
    }
  }

LABEL_226:
  if ((v94 & 0x40) == 0)
  {
    goto LABEL_227;
  }

LABEL_284:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v116 = *(a1 + 192);
  *a2 = 1936;
  if (v116 > 0x7F)
  {
    a2[2] = v116 | 0x80;
    v117 = v116 >> 7;
    if (v116 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v117 | 0x80;
        v118 = v117 >> 7;
        ++a2;
        v119 = v117 >> 14;
        v117 >>= 7;
      }

      while (v119);
      *(a2 - 1) = v118;
      if ((v94 & 0x80) == 0)
      {
        goto LABEL_295;
      }
    }

    else
    {
      a2[3] = v117;
      a2 += 4;
      if ((v94 & 0x80) == 0)
      {
        goto LABEL_295;
      }
    }
  }

  else
  {
    a2[2] = v116;
    a2 += 3;
    if ((v94 & 0x80) == 0)
    {
      goto LABEL_295;
    }
  }

LABEL_228:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v95 = *(a1 + 196);
  *a2 = 1944;
  if (v95 > 0x7F)
  {
    a2[2] = v95 | 0x80;
    v98 = v95 >> 7;
    if (v95 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v98 | 0x80;
        v100 = v98 >> 7;
        ++a2;
        v101 = v98 >> 14;
        v98 >>= 7;
      }

      while (v101);
      *(a2 - 1) = v100;
    }

    else
    {
      a2[3] = v98;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v95;
    a2 += 3;
  }

LABEL_295:
  v120 = *(a1 + 16);
  if ((v120 & 0x200) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v121 = *(a1 + 104);
    *a2 = 5338;
    v122 = *(v121 + 5);
    if (v122 > 0x7F)
    {
      a2[2] = v122 | 0x80;
      v124 = v122 >> 7;
      if (v122 >> 14)
      {
        v123 = a2 + 4;
        do
        {
          *(v123 - 1) = v124 | 0x80;
          v125 = v124 >> 7;
          ++v123;
          v126 = v124 >> 14;
          v124 >>= 7;
        }

        while (v126);
        *(v123 - 1) = v125;
      }

      else
      {
        a2[3] = v124;
        v123 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v122;
      v123 = a2 + 3;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v121, v123, a3);
  }

  if ((v120 & 0x400) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v127 = *(a1 + 112);
    *a2 = 5346;
    v128 = *(v127 + 5);
    if (v128 > 0x7F)
    {
      a2[2] = v128 | 0x80;
      v130 = v128 >> 7;
      if (v128 >> 14)
      {
        v129 = a2 + 4;
        do
        {
          *(v129 - 1) = v130 | 0x80;
          v131 = v130 >> 7;
          ++v129;
          v132 = v130 >> 14;
          v130 >>= 7;
        }

        while (v132);
        *(v129 - 1) = v131;
      }

      else
      {
        a2[3] = v130;
        v129 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v128;
      v129 = a2 + 3;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v127, v129, a3);
  }

  v133 = *(a1 + 20);
  if ((v133 & 0x100) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v134 = *(a1 + 200);
    *a2 = 5357;
    *(a2 + 2) = v134;
    a2 += 6;
  }

  if ((v133 & 0x200) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v135 = *(a1 + 204);
    *a2 = 5365;
    *(a2 + 2) = v135;
    a2 += 6;
  }

  v136 = *(a1 + 8);
  if ((v136 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v136 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27648CE88(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = TSS::StyleArchive::ByteSizeLong(*(a1 + 32));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xFE) == 0)
  {
    goto LABEL_13;
  }

  if ((v2 & 2) != 0)
  {
    v18 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 40));
    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
LABEL_7:
      if ((v2 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_55;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_7;
  }

  v19 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 48));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_8:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  v20 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 56));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_57:
    v22 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 72));
    v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x40) == 0)
    {
LABEL_11:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_56:
  v21 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 64));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_57;
  }

LABEL_10:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_58:
  v23 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 80));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80) != 0)
  {
LABEL_12:
    v5 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 88));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_13:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v2 & 0x100) != 0)
  {
    v24 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 96));
    v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_16:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v25 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 104));
  v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) != 0)
  {
LABEL_17:
    v6 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 112));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_18:
  v7 = (v2 >> 12) & 2;
  if ((v2 & 0x4000) != 0)
  {
    v3 += ((v2 >> 11) & 2) + ((v2 >> 10) & 2) + v7 + 3;
  }

  else
  {
    v3 += ((v2 >> 11) & 2) + ((v2 >> 10) & 2) + v7;
  }

  if ((v2 & 0x8000) != 0)
  {
    v8 = *(a1 + 124);
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 11;
    }

    v3 += v10;
  }

LABEL_26:
  if ((v2 & 0xFF0000) != 0)
  {
    v11 = v3 + 6;
    if ((v2 & 0x10000) == 0)
    {
      v11 = v3;
    }

    if ((v2 & 0x20000) != 0)
    {
      v11 += 6;
    }

    if ((v2 & 0x40000) != 0)
    {
      v11 += 6;
    }

    if ((v2 & 0x80000) != 0)
    {
      v11 += 3;
    }

    if ((v2 & 0x100000) != 0)
    {
      v11 += 3;
    }

    if ((v2 & 0x200000) != 0)
    {
      v11 += 3;
    }

    if ((v2 & 0x400000) != 0)
    {
      v3 = v11 + 3;
    }

    else
    {
      v3 = v11;
    }

    if ((v2 & 0x800000) != 0)
    {
      v12 = *(a1 + 144);
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v12 >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 12;
      }

      v3 += v14;
    }
  }

  if (HIBYTE(v2))
  {
    v15 = v3 + 6;
    if ((v2 & 0x1000000) == 0)
    {
      v15 = v3;
    }

    if ((v2 & 0x2000000) != 0)
    {
      v16 = *(a1 + 152);
      if (v16 < 0)
      {
        v17 = 12;
      }

      else
      {
        v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v15 += v17;
    }

    if ((v2 & 0x4000000) != 0)
    {
      v26 = *(a1 + 156);
      if (v26 < 0)
      {
        v27 = 12;
      }

      else
      {
        v27 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v15 += v27;
    }

    if ((v2 & 0x8000000) != 0)
    {
      v15 += 3;
    }

    if ((v2 & 0x10000000) != 0)
    {
      v15 += 3;
    }

    if ((v2 & 0x20000000) != 0)
    {
      v15 += 3;
    }

    if ((v2 & 0x40000000) != 0)
    {
      v15 += 3;
    }

    if ((v2 & 0x80000000) == 0)
    {
      v3 = v15;
    }

    else
    {
      v3 = v15 + 6;
    }
  }

  v28 = *(a1 + 20);
  if (!v28)
  {
    goto LABEL_97;
  }

  v29 = v3 + 6;
  if ((v28 & 1) == 0)
  {
    v29 = v3;
  }

  if ((v28 & 2) != 0)
  {
    v3 = v29 + 6;
  }

  else
  {
    v3 = v29;
  }

  if ((v28 & 4) != 0)
  {
    v36 = *(a1 + 176);
    v37 = ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v36 >= 0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 12;
    }

    v3 += v38;
    if ((v28 & 8) == 0)
    {
LABEL_89:
      if ((v28 & 0x10) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_114;
    }
  }

  else if ((v28 & 8) == 0)
  {
    goto LABEL_89;
  }

  v39 = *(a1 + 180);
  v40 = ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v39 >= 0)
  {
    v41 = v40;
  }

  else
  {
    v41 = 12;
  }

  v3 += v41;
  if ((v28 & 0x10) == 0)
  {
LABEL_90:
    if ((v28 & 0x20) == 0)
    {
      goto LABEL_91;
    }

LABEL_118:
    v45 = *(a1 + 188);
    v46 = ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v45 >= 0)
    {
      v47 = v46;
    }

    else
    {
      v47 = 12;
    }

    v3 += v47;
    if ((v28 & 0x40) == 0)
    {
LABEL_92:
      if ((v28 & 0x80) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_93;
    }

    goto LABEL_122;
  }

LABEL_114:
  v42 = *(a1 + 184);
  v43 = ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v42 >= 0)
  {
    v44 = v43;
  }

  else
  {
    v44 = 12;
  }

  v3 += v44;
  if ((v28 & 0x20) != 0)
  {
    goto LABEL_118;
  }

LABEL_91:
  if ((v28 & 0x40) == 0)
  {
    goto LABEL_92;
  }

LABEL_122:
  v48 = *(a1 + 192);
  v49 = ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v48 >= 0)
  {
    v50 = v49;
  }

  else
  {
    v50 = 12;
  }

  v3 += v50;
  if ((v28 & 0x80) != 0)
  {
LABEL_93:
    v30 = *(a1 + 196);
    v31 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v30 >= 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 12;
    }

    v3 += v32;
  }

LABEL_97:
  v33 = v3 + 6;
  if ((v28 & 0x100) == 0)
  {
    v33 = v3;
  }

  if ((v28 & 0x200) != 0)
  {
    v33 += 6;
  }

  if ((v28 & 0x300) != 0)
  {
    v34 = v33;
  }

  else
  {
    v34 = v3;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 24) = v34;
    return v34;
  }
}

uint64_t sub_27648D47C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527F78, 0);
  if (v4)
  {

    return sub_27648D524(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27648D524(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_77;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C97BA0](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = MEMORY[0x277D80BD0];
    }

    result = TSS::StyleArchive::MergeFrom(v6, v8);
  }

  v9 = MEMORY[0x277D804A0];
  if ((v5 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v10 = *(v3 + 40);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C97AA0](v11);
      *(v3 + 40) = v10;
    }

    if (*(a2 + 40))
    {
      v12 = *(a2 + 40);
    }

    else
    {
      v12 = v9;
    }

    result = TSD::StrokeArchive::MergeFrom(v10, v12);
  }

  if ((v5 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 48);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C97AA0](v14);
      *(v3 + 48) = v13;
    }

    if (*(a2 + 48))
    {
      v15 = *(a2 + 48);
    }

    else
    {
      v15 = v9;
    }

    result = TSD::StrokeArchive::MergeFrom(v13, v15);
  }

  v16 = MEMORY[0x277D80498];
  if ((v5 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v17 = *(v3 + 56);
    if (!v17)
    {
      v18 = *(v3 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x277C97A90](v18);
      *(v3 + 56) = v17;
    }

    if (*(a2 + 56))
    {
      v19 = *(a2 + 56);
    }

    else
    {
      v19 = v16;
    }

    result = TSD::ShadowArchive::MergeFrom(v17, v19);
    if ((v5 & 0x10) == 0)
    {
LABEL_33:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_34;
      }

LABEL_53:
      *(v3 + 16) |= 0x20u;
      v23 = *(v3 + 72);
      if (!v23)
      {
        v24 = *(v3 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = MEMORY[0x277C97AA0](v24);
        *(v3 + 72) = v23;
      }

      if (*(a2 + 72))
      {
        v25 = *(a2 + 72);
      }

      else
      {
        v25 = v9;
      }

      result = TSD::StrokeArchive::MergeFrom(v23, v25);
      if ((v5 & 0x40) == 0)
      {
LABEL_35:
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_69;
      }

      goto LABEL_61;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_33;
  }

  *(v3 + 16) |= 0x10u;
  v20 = *(v3 + 64);
  if (!v20)
  {
    v21 = *(v3 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = MEMORY[0x277C97A90](v21);
    *(v3 + 64) = v20;
  }

  if (*(a2 + 64))
  {
    v22 = *(a2 + 64);
  }

  else
  {
    v22 = v16;
  }

  result = TSD::ShadowArchive::MergeFrom(v20, v22);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_34:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_35;
  }

LABEL_61:
  *(v3 + 16) |= 0x40u;
  v26 = *(v3 + 80);
  if (!v26)
  {
    v27 = *(v3 + 8);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = MEMORY[0x277C97AA0](v27);
    *(v3 + 80) = v26;
  }

  if (*(a2 + 80))
  {
    v28 = *(a2 + 80);
  }

  else
  {
    v28 = v9;
  }

  result = TSD::StrokeArchive::MergeFrom(v26, v28);
  if ((v5 & 0x80) != 0)
  {
LABEL_69:
    *(v3 + 16) |= 0x80u;
    v29 = *(v3 + 88);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x277C97A90](v30);
      *(v3 + 88) = v29;
    }

    if (*(a2 + 88))
    {
      v31 = *(a2 + 88);
    }

    else
    {
      v31 = v16;
    }

    result = TSD::ShadowArchive::MergeFrom(v29, v31);
  }

LABEL_77:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_88;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v33 = *(v3 + 96);
    if (!v33)
    {
      v34 = *(v3 + 8);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = MEMORY[0x277C97A90](v34);
      *(v3 + 96) = v33;
    }

    if (*(a2 + 96))
    {
      v35 = *(a2 + 96);
    }

    else
    {
      v35 = MEMORY[0x277D80498];
    }

    result = TSD::ShadowArchive::MergeFrom(v33, v35);
    if ((v5 & 0x200) == 0)
    {
LABEL_80:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_143;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(v3 + 16) |= 0x200u;
  v36 = *(v3 + 104);
  if (!v36)
  {
    v37 = *(v3 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = MEMORY[0x277C97AA0](v37);
    *(v3 + 104) = v36;
  }

  if (*(a2 + 104))
  {
    v38 = *(a2 + 104);
  }

  else
  {
    v38 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v36, v38);
  if ((v5 & 0x400) == 0)
  {
LABEL_81:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_151;
  }

LABEL_143:
  *(v3 + 16) |= 0x400u;
  v39 = *(v3 + 112);
  if (!v39)
  {
    v40 = *(v3 + 8);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = MEMORY[0x277C97AA0](v40);
    *(v3 + 112) = v39;
  }

  if (*(a2 + 112))
  {
    v41 = *(a2 + 112);
  }

  else
  {
    v41 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v39, v41);
  if ((v5 & 0x800) == 0)
  {
LABEL_82:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_152;
  }

LABEL_151:
  *(v3 + 120) = *(a2 + 120);
  if ((v5 & 0x1000) == 0)
  {
LABEL_83:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_153;
  }

LABEL_152:
  *(v3 + 121) = *(a2 + 121);
  if ((v5 & 0x2000) == 0)
  {
LABEL_84:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_85;
    }

LABEL_154:
    *(v3 + 123) = *(a2 + 123);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

LABEL_153:
  *(v3 + 122) = *(a2 + 122);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_154;
  }

LABEL_85:
  if ((v5 & 0x8000) != 0)
  {
LABEL_86:
    *(v3 + 124) = *(a2 + 124);
  }

LABEL_87:
  *(v3 + 16) |= v5;
LABEL_88:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_99;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 128) = *(a2 + 128);
    if ((v5 & 0x20000) == 0)
    {
LABEL_91:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_158;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_91;
  }

  *(v3 + 132) = *(a2 + 132);
  if ((v5 & 0x40000) == 0)
  {
LABEL_92:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_159;
  }

LABEL_158:
  *(v3 + 136) = *(a2 + 136);
  if ((v5 & 0x80000) == 0)
  {
LABEL_93:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_160;
  }

LABEL_159:
  *(v3 + 140) = *(a2 + 140);
  if ((v5 & 0x100000) == 0)
  {
LABEL_94:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(v3 + 141) = *(a2 + 141);
  if ((v5 & 0x200000) == 0)
  {
LABEL_95:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_96;
    }

LABEL_162:
    *(v3 + 143) = *(a2 + 143);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

LABEL_161:
  *(v3 + 142) = *(a2 + 142);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_162;
  }

LABEL_96:
  if ((v5 & 0x800000) != 0)
  {
LABEL_97:
    *(v3 + 144) = *(a2 + 144);
  }

LABEL_98:
  *(v3 + 16) |= v5;
LABEL_99:
  if (!HIBYTE(v5))
  {
    goto LABEL_109;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 148) = *(a2 + 148);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_102:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_174;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_102;
  }

  *(v3 + 152) = *(a2 + 152);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_103:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_175;
  }

LABEL_174:
  *(v3 + 156) = *(a2 + 156);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_104:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_176;
  }

LABEL_175:
  *(v3 + 160) = *(a2 + 160);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_105:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_177;
  }

LABEL_176:
  *(v3 + 161) = *(a2 + 161);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_106:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_107;
    }

LABEL_178:
    *(v3 + 163) = *(a2 + 163);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_108;
    }

LABEL_179:
    *(v3 + 164) = *(a2 + 164);
    goto LABEL_108;
  }

LABEL_177:
  *(v3 + 162) = *(a2 + 162);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_178;
  }

LABEL_107:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_179;
  }

LABEL_108:
  *(v3 + 16) |= v5;
LABEL_109:
  v32 = *(a2 + 20);
  if (!v32)
  {
    goto LABEL_120;
  }

  if (v32)
  {
    *(v3 + 168) = *(a2 + 168);
    if ((v32 & 2) == 0)
    {
LABEL_112:
      if ((v32 & 4) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_166;
    }
  }

  else if ((v32 & 2) == 0)
  {
    goto LABEL_112;
  }

  *(v3 + 172) = *(a2 + 172);
  if ((v32 & 4) == 0)
  {
LABEL_113:
    if ((v32 & 8) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_167;
  }

LABEL_166:
  *(v3 + 176) = *(a2 + 176);
  if ((v32 & 8) == 0)
  {
LABEL_114:
    if ((v32 & 0x10) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_168;
  }

LABEL_167:
  *(v3 + 180) = *(a2 + 180);
  if ((v32 & 0x10) == 0)
  {
LABEL_115:
    if ((v32 & 0x20) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_169;
  }

LABEL_168:
  *(v3 + 184) = *(a2 + 184);
  if ((v32 & 0x20) == 0)
  {
LABEL_116:
    if ((v32 & 0x40) == 0)
    {
      goto LABEL_117;
    }

LABEL_170:
    *(v3 + 192) = *(a2 + 192);
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

LABEL_169:
  *(v3 + 188) = *(a2 + 188);
  if ((v32 & 0x40) != 0)
  {
    goto LABEL_170;
  }

LABEL_117:
  if ((v32 & 0x80) != 0)
  {
LABEL_118:
    *(v3 + 196) = *(a2 + 196);
  }

LABEL_119:
  *(v3 + 20) |= v32;
LABEL_120:
  if ((v32 & 0x300) != 0)
  {
    if ((v32 & 0x100) != 0)
    {
      *(v3 + 200) = *(a2 + 200);
    }

    if ((v32 & 0x200) != 0)
    {
      *(v3 + 204) = *(a2 + 204);
    }

    *(v3 + 20) |= v32;
  }

  return result;
}