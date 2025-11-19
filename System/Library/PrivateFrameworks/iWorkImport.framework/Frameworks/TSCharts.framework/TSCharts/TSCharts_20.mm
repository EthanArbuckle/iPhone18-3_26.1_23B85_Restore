uint64_t sub_27642ADF4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288523928, 0);
  if (v4)
  {

    return sub_27640E93C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_27642AE9C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27642A65C(result);

    return sub_27642ADF4(v4, a2);
  }

  return result;
}

uint64_t sub_27642AEE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = TSD::StrokeArchive::IsInitialized(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_27642AF80(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288523620;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (atomic_load_explicit(dword_2812ED2D8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 32) = MEMORY[0x277D80A90];
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  return a1;
}

uint64_t sub_27642B028(uint64_t a1)
{
  sub_27642B05C(a1);
  sub_2763941F4((a1 + 8));
  return a1;
}

uint64_t sub_27642B05C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812F0DD0)
  {
    if (*(v1 + 40))
    {
      v3 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v3, 0x10A1C4029F168B5);
    }

    if (*(v1 + 48))
    {
      v4 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v4, 0x10A1C4029F168B5);
    }

    if (*(v1 + 56))
    {
      v5 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v5, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 64))
    {
      v6 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v6, 0x10A1C4029F168B5);
    }

    if (*(v1 + 72))
    {
      v7 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v7, 0x10A1C4029F168B5);
    }

    if (*(v1 + 80))
    {
      v8 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v8, 0x10A1C40C8B7F858);
    }

    if (*(v1 + 88))
    {
      v9 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v9, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 96))
    {
      v10 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v10, 0x10A1C40C8B7F858);
    }

    if (*(v1 + 104))
    {
      v11 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v11, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 112))
    {
      v12 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v12, 0x10A1C4029F168B5);
    }

    v13 = *(v1 + 120);
    if (v13)
    {
      v14 = sub_276400574(v13);
      MEMORY[0x277C98580](v14, 0x1081C404FE48876);
    }

    result = *(v1 + 128);
    if (result)
    {
      sub_276400574(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27642B220(uint64_t a1)
{
  sub_27642B028(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27642B260(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    v6 = result[4] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_41;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_41:
  result = TSK::FormatStructArchive::Clear(result[5]);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = TSK::FormatStructArchive::Clear(v1[6]);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = TSD::StrokeArchive::Clear(v1[7]);
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_45:
    result = TSK::FormatStructArchive::Clear(v1[9]);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_44:
  result = TSK::FormatStructArchive::Clear(v1[8]);
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_45;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_46:
  result = TSD::ShadowArchive::Clear(v1[10]);
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = TSD::StrokeArchive::Clear(v1[11]);
  }

LABEL_11:
  if ((v2 & 0x1F00) == 0)
  {
    goto LABEL_18;
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSD::ShadowArchive::Clear(v1[12]);
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_37;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSD::StrokeArchive::Clear(v1[13]);
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = TSK::FormatStructArchive::Clear(v1[14]);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_38:
  result = sub_2764005FC(v1[15]);
  if ((v2 & 0x1000) != 0)
  {
LABEL_17:
    result = sub_2764005FC(v1[16]);
  }

LABEL_18:
  if ((v2 & 0xE000) != 0)
  {
    *(v1 + 36) = 0;
    v1[17] = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 164) = 0u;
    *(v1 + 148) = 0u;
  }

  if (HIBYTE(v2))
  {
    *(v1 + 188) = 0;
    *(v1 + 180) = 0;
    *(v1 + 196) = 0;
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    *(v1 + 197) = 0;
  }

  if ((v3 & 0x700) != 0)
  {
    *(v1 + 54) = 0;
    v1[26] = 0;
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

google::protobuf::internal *sub_27642B40C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v170 = a2;
  if ((sub_2763D4D98(a3, &v170) & 1) == 0)
  {
    while (1)
    {
      v6 = (v170 + 1);
      v7 = *v170;
      if (*v170 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v170, (v8 - 128));
          v170 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          v7 = v13;
          goto LABEL_7;
        }

        v6 = (v170 + 2);
      }

      v170 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 2u;
          v9 = *(a1 + 40);
          if (v9)
          {
            goto LABEL_153;
          }

          v10 = *(a1 + 8);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x277C97B00](v10);
          LODWORD(v9) = v11;
          *(a1 + 40) = v11;
          goto LABEL_152;
        case 2u:
          if (v7 != 18)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 4u;
          v9 = *(a1 + 48);
          if (v9)
          {
            goto LABEL_153;
          }

          v60 = *(a1 + 8);
          if (v60)
          {
            v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
          }

          v61 = MEMORY[0x277C97B00](v60);
          LODWORD(v9) = v61;
          *(a1 + 48) = v61;
          goto LABEL_152;
        case 3u:
          if (v7 != 29)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x2000u;
          v53 = *v6;
          v38 = (v6 + 4);
          *(a1 + 136) = v53;
          goto LABEL_85;
        case 4u:
          if (v7 != 34)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 8u;
          v32 = *(a1 + 56);
          if (v32)
          {
            goto LABEL_112;
          }

          v55 = *(a1 + 8);
          if (v55)
          {
            v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
          }

          v56 = MEMORY[0x277C97AA0](v55);
          LODWORD(v32) = v56;
          *(a1 + 56) = v56;
          goto LABEL_111;
        case 5u:
          if (v7 != 40)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x4000u;
          v41 = (v6 + 1);
          LODWORD(v40) = *v6;
          if ((v40 & 0x80) == 0)
          {
            goto LABEL_61;
          }

          v42 = *v41;
          v40 = (v40 + (v42 << 7) - 128);
          if (v42 < 0)
          {
            v132 = google::protobuf::internal::VarintParseSlow64(v6, v40);
            v170 = v132;
            *(a1 + 140) = v133;
            if (!v132)
            {
              return 0;
            }
          }

          else
          {
            v41 = (v6 + 2);
LABEL_61:
            v170 = v41;
            *(a1 + 140) = v40;
          }

          goto LABEL_155;
        case 6u:
          if (v7 != 50)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x10u;
          v9 = *(a1 + 64);
          if (v9)
          {
            goto LABEL_153;
          }

          v72 = *(a1 + 8);
          if (v72)
          {
            v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
          }

          v73 = MEMORY[0x277C97B00](v72);
          LODWORD(v9) = v73;
          *(a1 + 64) = v73;
          goto LABEL_152;
        case 7u:
          if (v7 != 58)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x20u;
          v9 = *(a1 + 72);
          if (v9)
          {
            goto LABEL_153;
          }

          v79 = *(a1 + 8);
          if (v79)
          {
            v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
          }

          v80 = MEMORY[0x277C97B00](v79);
          LODWORD(v9) = v80;
          *(a1 + 72) = v80;
          goto LABEL_152;
        case 8u:
          if (v7 != 64)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x8000u;
          v58 = (v6 + 1);
          LODWORD(v57) = *v6;
          if ((v57 & 0x80) == 0)
          {
            goto LABEL_95;
          }

          v59 = *v58;
          v57 = (v57 + (v59 << 7) - 128);
          if (v59 < 0)
          {
            v138 = google::protobuf::internal::VarintParseSlow64(v6, v57);
            v170 = v138;
            *(a1 + 144) = v139;
            if (!v138)
            {
              return 0;
            }
          }

          else
          {
            v58 = (v6 + 2);
LABEL_95:
            v170 = v58;
            *(a1 + 144) = v57;
          }

          goto LABEL_155;
        case 9u:
          if (v7 != 72)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x10000u;
          v87 = (v6 + 1);
          LODWORD(v86) = *v6;
          if ((v86 & 0x80) == 0)
          {
            goto LABEL_166;
          }

          v88 = *v87;
          v86 = (v86 + (v88 << 7) - 128);
          if (v88 < 0)
          {
            v148 = google::protobuf::internal::VarintParseSlow64(v6, v86);
            v170 = v148;
            *(a1 + 148) = v149;
            if (!v148)
            {
              return 0;
            }
          }

          else
          {
            v87 = (v6 + 2);
LABEL_166:
            v170 = v87;
            *(a1 + 148) = v86;
          }

          goto LABEL_155;
        case 0xAu:
          if (v7 != 85)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x20000u;
          v46 = *v6;
          v38 = (v6 + 4);
          *(a1 + 152) = v46;
          goto LABEL_85;
        case 0xBu:
          if (v7 != 88)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x40000u;
          v84 = (v6 + 1);
          LODWORD(v83) = *v6;
          if ((v83 & 0x80) == 0)
          {
            goto LABEL_161;
          }

          v85 = *v84;
          v83 = (v83 + (v85 << 7) - 128);
          if (v85 < 0)
          {
            v146 = google::protobuf::internal::VarintParseSlow64(v6, v83);
            v170 = v146;
            *(a1 + 156) = v147;
            if (!v146)
            {
              return 0;
            }
          }

          else
          {
            v84 = (v6 + 2);
LABEL_161:
            v170 = v84;
            *(a1 + 156) = v83;
          }

          goto LABEL_155;
        case 0xCu:
          if (v7 != 101)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x80000u;
          v39 = *v6;
          v38 = (v6 + 4);
          *(a1 + 160) = v39;
          goto LABEL_85;
        case 0xDu:
          if (v7 != 109)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x100000u;
          v45 = *v6;
          v38 = (v6 + 4);
          *(a1 + 164) = v45;
          goto LABEL_85;
        case 0xEu:
          if (v7 != 114)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x40u;
          v29 = *(a1 + 80);
          if (v29)
          {
            goto LABEL_141;
          }

          v77 = *(a1 + 8);
          if (v77)
          {
            v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
          }

          v78 = MEMORY[0x277C97A90](v77);
          LODWORD(v29) = v78;
          *(a1 + 80) = v78;
          goto LABEL_140;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x80u;
          v32 = *(a1 + 88);
          if (v32)
          {
            goto LABEL_112;
          }

          v33 = *(a1 + 8);
          if (v33)
          {
            v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x277C97AA0](v33);
          LODWORD(v32) = v34;
          *(a1 + 88) = v34;
          goto LABEL_111;
        case 0x10u:
          if (v7 != 133)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x200000u;
          v54 = *v6;
          v38 = (v6 + 4);
          *(a1 + 168) = v54;
LABEL_85:
          v170 = v38;
          goto LABEL_155;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x100u;
          v29 = *(a1 + 96);
          if (v29)
          {
            goto LABEL_141;
          }

          v30 = *(a1 + 8);
          if (v30)
          {
            v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
          }

          v31 = MEMORY[0x277C97A90](v30);
          LODWORD(v29) = v31;
          *(a1 + 96) = v31;
LABEL_140:
          v6 = v170;
LABEL_141:
          v67 = sub_2764AC76C(a3, v29, v6);
          goto LABEL_154;
        case 0x12u:
          if (v7 != 146)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x200u;
          v32 = *(a1 + 104);
          if (v32)
          {
            goto LABEL_112;
          }

          v65 = *(a1 + 8);
          if (v65)
          {
            v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
          }

          v66 = MEMORY[0x277C97AA0](v65);
          LODWORD(v32) = v66;
          *(a1 + 104) = v66;
LABEL_111:
          v6 = v170;
LABEL_112:
          v67 = sub_2764AC69C(a3, v32, v6);
          goto LABEL_154;
        case 0x13u:
          if (v7 != 154)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x400u;
          v9 = *(a1 + 112);
          if (v9)
          {
            goto LABEL_153;
          }

          v81 = *(a1 + 8);
          if (v81)
          {
            v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
          }

          v82 = MEMORY[0x277C97B00](v81);
          LODWORD(v9) = v82;
          *(a1 + 112) = v82;
LABEL_152:
          v6 = v170;
LABEL_153:
          v67 = sub_2764A8D08(a3, v9, v6);
          goto LABEL_154;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x400000u;
          v102 = (v6 + 1);
          LODWORD(v101) = *v6;
          if ((v101 & 0x80) == 0)
          {
            goto LABEL_191;
          }

          v103 = *v102;
          v101 = (v101 + (v103 << 7) - 128);
          if (v103 < 0)
          {
            v158 = google::protobuf::internal::VarintParseSlow64(v6, v101);
            v170 = v158;
            *(a1 + 172) = v159;
            if (!v158)
            {
              return 0;
            }
          }

          else
          {
            v102 = (v6 + 2);
LABEL_191:
            v170 = v102;
            *(a1 + 172) = v101;
          }

          goto LABEL_155;
        case 0x15u:
          if (v7 != 168)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x800000u;
          v70 = (v6 + 1);
          LODWORD(v69) = *v6;
          if ((v69 & 0x80) == 0)
          {
            goto LABEL_124;
          }

          v71 = *v70;
          v69 = (v69 + (v71 << 7) - 128);
          if (v71 < 0)
          {
            v142 = google::protobuf::internal::VarintParseSlow64(v6, v69);
            v170 = v142;
            *(a1 + 176) = v143;
            if (!v142)
            {
              return 0;
            }
          }

          else
          {
            v70 = (v6 + 2);
LABEL_124:
            v170 = v70;
            *(a1 + 176) = v69;
          }

          goto LABEL_155;
        case 0x16u:
          if (v7 != 176)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x1000000u;
          v75 = (v6 + 1);
          LODWORD(v74) = *v6;
          if ((v74 & 0x80) == 0)
          {
            goto LABEL_134;
          }

          v76 = *v75;
          v74 = (v74 + (v76 << 7) - 128);
          if (v76 < 0)
          {
            v144 = google::protobuf::internal::VarintParseSlow64(v6, v74);
            v170 = v144;
            *(a1 + 180) = v145;
            if (!v144)
            {
              return 0;
            }
          }

          else
          {
            v75 = (v6 + 2);
LABEL_134:
            v170 = v75;
            *(a1 + 180) = v74;
          }

          goto LABEL_155;
        case 0x17u:
          if (v7 != 184)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x2000000u;
          v96 = (v6 + 1);
          LODWORD(v95) = *v6;
          if ((v95 & 0x80) == 0)
          {
            goto LABEL_181;
          }

          v97 = *v96;
          v95 = (v95 + (v97 << 7) - 128);
          if (v97 < 0)
          {
            v154 = google::protobuf::internal::VarintParseSlow64(v6, v95);
            v170 = v154;
            *(a1 + 184) = v155;
            if (!v154)
            {
              return 0;
            }
          }

          else
          {
            v96 = (v6 + 2);
LABEL_181:
            v170 = v96;
            *(a1 + 184) = v95;
          }

          goto LABEL_155;
        case 0x18u:
          if (v7 != 192)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x8000000u;
          v108 = (v6 + 1);
          v107 = *v6;
          if ((v107 & 0x8000000000000000) == 0)
          {
            goto LABEL_201;
          }

          v109 = *v108;
          v107 = (v109 << 7) + v107 - 128;
          if (v109 < 0)
          {
            v162 = google::protobuf::internal::VarintParseSlow64(v6, v107);
            v170 = v162;
            *(a1 + 192) = v163 != 0;
            if (!v162)
            {
              return 0;
            }
          }

          else
          {
            v108 = (v6 + 2);
LABEL_201:
            v170 = v108;
            *(a1 + 192) = v107 != 0;
          }

          goto LABEL_155;
        case 0x19u:
          if (v7 != 200)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x4000000u;
          v51 = (v6 + 1);
          LODWORD(v50) = *v6;
          if ((v50 & 0x80) == 0)
          {
            goto LABEL_80;
          }

          v52 = *v51;
          v50 = (v50 + (v52 << 7) - 128);
          if (v52 < 0)
          {
            v136 = google::protobuf::internal::VarintParseSlow64(v6, v50);
            v170 = v136;
            *(a1 + 188) = v137;
            if (!v136)
            {
              return 0;
            }
          }

          else
          {
            v51 = (v6 + 2);
LABEL_80:
            v170 = v51;
            *(a1 + 188) = v50;
          }

          goto LABEL_155;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x10000000u;
          v48 = (v6 + 1);
          v47 = *v6;
          if ((v47 & 0x8000000000000000) == 0)
          {
            goto LABEL_75;
          }

          v49 = *v48;
          v47 = (v49 << 7) + v47 - 128;
          if (v49 < 0)
          {
            v134 = google::protobuf::internal::VarintParseSlow64(v6, v47);
            v170 = v134;
            *(a1 + 193) = v135 != 0;
            if (!v134)
            {
              return 0;
            }
          }

          else
          {
            v48 = (v6 + 2);
LABEL_75:
            v170 = v48;
            *(a1 + 193) = v47 != 0;
          }

          goto LABEL_155;
        case 0x1Bu:
          if (v7 != 216)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x20000000u;
          v117 = (v6 + 1);
          v116 = *v6;
          if ((v116 & 0x8000000000000000) == 0)
          {
            goto LABEL_218;
          }

          v118 = *v117;
          v116 = (v118 << 7) + v116 - 128;
          if (v118 < 0)
          {
            v168 = google::protobuf::internal::VarintParseSlow64(v6, v116);
            v170 = v168;
            *(a1 + 194) = v169 != 0;
            if (!v168)
            {
              return 0;
            }
          }

          else
          {
            v117 = (v6 + 2);
LABEL_218:
            v170 = v117;
            *(a1 + 194) = v116 != 0;
          }

          goto LABEL_155;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x40000000u;
          v24 = (v6 + 1);
          v23 = *v6;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            v126 = google::protobuf::internal::VarintParseSlow64(v6, v23);
            v170 = v126;
            *(a1 + 195) = v127 != 0;
            if (!v126)
            {
              return 0;
            }
          }

          else
          {
            v24 = (v6 + 2);
LABEL_34:
            v170 = v24;
            *(a1 + 195) = v23 != 0;
          }

          goto LABEL_155;
        case 0x1Du:
          if (v7 != 232)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x80000000;
          v111 = (v6 + 1);
          v110 = *v6;
          if ((v110 & 0x8000000000000000) == 0)
          {
            goto LABEL_206;
          }

          v112 = *v111;
          v110 = (v112 << 7) + v110 - 128;
          if (v112 < 0)
          {
            v164 = google::protobuf::internal::VarintParseSlow64(v6, v110);
            v170 = v164;
            *(a1 + 196) = v165 != 0;
            if (!v164)
            {
              return 0;
            }
          }

          else
          {
            v111 = (v6 + 2);
LABEL_206:
            v170 = v111;
            *(a1 + 196) = v110 != 0;
          }

          goto LABEL_155;
        case 0x1Eu:
          if (v7 != 240)
          {
            goto LABEL_219;
          }

          *(a1 + 20) |= 1u;
          v114 = (v6 + 1);
          v113 = *v6;
          if ((v113 & 0x8000000000000000) == 0)
          {
            goto LABEL_211;
          }

          v115 = *v114;
          v113 = (v115 << 7) + v113 - 128;
          if (v115 < 0)
          {
            v166 = google::protobuf::internal::VarintParseSlow64(v6, v113);
            v170 = v166;
            *(a1 + 197) = v167 != 0;
            if (!v166)
            {
              return 0;
            }
          }

          else
          {
            v114 = (v6 + 2);
LABEL_211:
            v170 = v114;
            *(a1 + 197) = v113 != 0;
          }

          goto LABEL_155;
        case 0x1Fu:
          if (v7 != 248)
          {
            goto LABEL_219;
          }

          *(a1 + 20) |= 2u;
          v90 = (v6 + 1);
          v89 = *v6;
          if ((v89 & 0x8000000000000000) == 0)
          {
            goto LABEL_171;
          }

          v91 = *v90;
          v89 = (v91 << 7) + v89 - 128;
          if (v91 < 0)
          {
            v150 = google::protobuf::internal::VarintParseSlow64(v6, v89);
            v170 = v150;
            *(a1 + 198) = v151 != 0;
            if (!v150)
            {
              return 0;
            }
          }

          else
          {
            v90 = (v6 + 2);
LABEL_171:
            v170 = v90;
            *(a1 + 198) = v89 != 0;
          }

          goto LABEL_155;
        case 0x20u:
          if (v7)
          {
            goto LABEL_219;
          }

          *(a1 + 20) |= 4u;
          v63 = (v6 + 1);
          v62 = *v6;
          if ((v62 & 0x8000000000000000) == 0)
          {
            goto LABEL_105;
          }

          v64 = *v63;
          v62 = (v64 << 7) + v62 - 128;
          if (v64 < 0)
          {
            v140 = google::protobuf::internal::VarintParseSlow64(v6, v62);
            v170 = v140;
            *(a1 + 199) = v141 != 0;
            if (!v140)
            {
              return 0;
            }
          }

          else
          {
            v63 = (v6 + 2);
LABEL_105:
            v170 = v63;
            *(a1 + 199) = v62 != 0;
          }

          goto LABEL_155;
        case 0x21u:
          if (v7 != 8)
          {
            goto LABEL_219;
          }

          *(a1 + 20) |= 8u;
          v93 = (v6 + 1);
          v92 = *v6;
          if ((v92 & 0x8000000000000000) == 0)
          {
            goto LABEL_176;
          }

          v94 = *v93;
          v92 = (v94 << 7) + v92 - 128;
          if (v94 < 0)
          {
            v152 = google::protobuf::internal::VarintParseSlow64(v6, v92);
            v170 = v152;
            *(a1 + 200) = v153 != 0;
            if (!v152)
            {
              return 0;
            }
          }

          else
          {
            v93 = (v6 + 2);
LABEL_176:
            v170 = v93;
            *(a1 + 200) = v92 != 0;
          }

          goto LABEL_155;
        case 0x22u:
          if (v7 != 16)
          {
            goto LABEL_219;
          }

          *(a1 + 20) |= 0x10u;
          v36 = (v6 + 1);
          v35 = *v6;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_54;
          }

          v37 = *v36;
          v35 = (v37 << 7) + v35 - 128;
          if (v37 < 0)
          {
            v130 = google::protobuf::internal::VarintParseSlow64(v6, v35);
            v170 = v130;
            *(a1 + 201) = v131 != 0;
            if (!v130)
            {
              return 0;
            }
          }

          else
          {
            v36 = (v6 + 2);
LABEL_54:
            v170 = v36;
            *(a1 + 201) = v35 != 0;
          }

          goto LABEL_155;
        case 0x23u:
          if (v7 != 24)
          {
            goto LABEL_219;
          }

          *(a1 + 20) |= 0x20u;
          v27 = (v6 + 1);
          v26 = *v6;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if (v28 < 0)
          {
            v128 = google::protobuf::internal::VarintParseSlow64(v6, v26);
            v170 = v128;
            *(a1 + 202) = v129 != 0;
            if (!v128)
            {
              return 0;
            }
          }

          else
          {
            v27 = (v6 + 2);
LABEL_39:
            v170 = v27;
            *(a1 + 202) = v26 != 0;
          }

          goto LABEL_155;
        case 0x24u:
          if (v7 != 32)
          {
            goto LABEL_219;
          }

          *(a1 + 20) |= 0x40u;
          v18 = (v6 + 1);
          v17 = *v6;
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v19 = *v18;
          v17 = (v19 << 7) + v17 - 128;
          if (v19 < 0)
          {
            v122 = google::protobuf::internal::VarintParseSlow64(v6, v17);
            v170 = v122;
            *(a1 + 203) = v123 != 0;
            if (!v122)
            {
              return 0;
            }
          }

          else
          {
            v18 = (v6 + 2);
LABEL_24:
            v170 = v18;
            *(a1 + 203) = v17 != 0;
          }

          goto LABEL_155;
        case 0x25u:
          if (v7 != 40)
          {
            goto LABEL_219;
          }

          *(a1 + 20) |= 0x80u;
          v21 = (v6 + 1);
          v20 = *v6;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            v124 = google::protobuf::internal::VarintParseSlow64(v6, v20);
            v170 = v124;
            *(a1 + 204) = v125 != 0;
            if (!v124)
            {
              return 0;
            }
          }

          else
          {
            v21 = (v6 + 2);
LABEL_29:
            v170 = v21;
            *(a1 + 204) = v20 != 0;
          }

          goto LABEL_155;
        case 0x26u:
          if (v7 != 48)
          {
            goto LABEL_219;
          }

          *(a1 + 20) |= 0x100u;
          v15 = (v6 + 1);
          LODWORD(v14) = *v6;
          if ((v14 & 0x80) == 0)
          {
            goto LABEL_19;
          }

          v16 = *v15;
          v14 = (v14 + (v16 << 7) - 128);
          if (v16 < 0)
          {
            v120 = google::protobuf::internal::VarintParseSlow64(v6, v14);
            v170 = v120;
            *(a1 + 208) = v121;
            if (!v120)
            {
              return 0;
            }
          }

          else
          {
            v15 = (v6 + 2);
LABEL_19:
            v170 = v15;
            *(a1 + 208) = v14;
          }

          goto LABEL_155;
        case 0x27u:
          if (v7 != 58)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v67 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_154;
        case 0x28u:
          if (v7 != 64)
          {
            goto LABEL_219;
          }

          *(a1 + 20) |= 0x200u;
          v99 = (v6 + 1);
          LODWORD(v98) = *v6;
          if ((v98 & 0x80) == 0)
          {
            goto LABEL_186;
          }

          v100 = *v99;
          v98 = (v98 + (v100 << 7) - 128);
          if (v100 < 0)
          {
            v156 = google::protobuf::internal::VarintParseSlow64(v6, v98);
            v170 = v156;
            *(a1 + 212) = v157;
            if (!v156)
            {
              return 0;
            }
          }

          else
          {
            v99 = (v6 + 2);
LABEL_186:
            v170 = v99;
            *(a1 + 212) = v98;
          }

          goto LABEL_155;
        case 0x29u:
          if (v7 != 74)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x800u;
          v43 = *(a1 + 120);
          if (v43)
          {
            goto LABEL_119;
          }

          v44 = *(a1 + 8);
          if (v44)
          {
            v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
          }

          v43 = sub_276406A24(v44);
          *(a1 + 120) = v43;
          goto LABEL_118;
        case 0x2Au:
          if (v7 != 82)
          {
            goto LABEL_219;
          }

          *(a1 + 16) |= 0x1000u;
          v43 = *(a1 + 128);
          if (v43)
          {
            goto LABEL_119;
          }

          v68 = *(a1 + 8);
          if (v68)
          {
            v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
          }

          v43 = sub_276406A24(v68);
          *(a1 + 128) = v43;
LABEL_118:
          v6 = v170;
LABEL_119:
          v67 = sub_2764A8C38(a3, v43, v6);
          goto LABEL_154;
        case 0x2Bu:
          if (v7 != 88)
          {
            goto LABEL_219;
          }

          *(a1 + 20) |= 0x400u;
          v105 = (v6 + 1);
          LODWORD(v104) = *v6;
          if ((v104 & 0x80) == 0)
          {
            goto LABEL_196;
          }

          v106 = *v105;
          v104 = (v104 + (v106 << 7) - 128);
          if (v106 < 0)
          {
            v160 = google::protobuf::internal::VarintParseSlow64(v6, v104);
            v170 = v160;
            *(a1 + 216) = v161;
            if (!v160)
            {
              return 0;
            }
          }

          else
          {
            v105 = (v6 + 2);
LABEL_196:
            v170 = v105;
            *(a1 + 216) = v104;
          }

          goto LABEL_155;
        default:
LABEL_219:
          if (v7)
          {
            v119 = (v7 & 7) == 4;
          }

          else
          {
            v119 = 1;
          }

          if (v119)
          {
            *(a3 + 80) = v7 - 1;
            return v170;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v67 = google::protobuf::internal::UnknownFieldParse();
LABEL_154:
          v170 = v67;
          if (!v67)
          {
            return 0;
          }

LABEL_155:
          if (sub_2763D4D98(a3, &v170))
          {
            return v170;
          }

          break;
      }
    }
  }

  return v170;
}

unsigned __int8 *sub_27642C4B4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*this <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v7 = *(a1 + 40);
    *v4 = 10;
    v8 = *(v7 + 12);
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

    v4 = TSK::FormatStructArchive::_InternalSerialize(v7, v9, this);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_51;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v13 = *(a1 + 48);
  *v4 = 18;
  v14 = *(v13 + 12);
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = v4 + 3;
      do
      {
        *(v15 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v15;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v15 - 1) = v17;
    }

    else
    {
      v4[2] = v16;
      v15 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v14;
    v15 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v13, v15, this);
  if ((v6 & 0x2000) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_51:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v19 = *(a1 + 136);
  *v4 = 29;
  *(v4 + 1) = v19;
  v4 += 5;
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

LABEL_64:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v26 = *(a1 + 140);
    *v4 = 40;
    if (v26 > 0x7F)
    {
      v4[1] = v26 | 0x80;
      v27 = v26 >> 7;
      if (v26 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v27 | 0x80;
          v28 = v27 >> 7;
          ++v4;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
        *(v4 - 1) = v28;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v4[2] = v27;
        v4 += 3;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_75;
        }
      }
    }

    else
    {
      v4[1] = v26;
      v4 += 2;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_75;
      }
    }

LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_85;
  }

LABEL_54:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v20 = *(a1 + 56);
  *v4 = 34;
  v21 = *(v20 + 5);
  if (v21 > 0x7F)
  {
    v4[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = v4 + 3;
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
      v4[2] = v23;
      v22 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v21;
    v22 = v4 + 2;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v20, v22, this);
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_64;
  }

LABEL_6:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_75:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v30 = *(a1 + 64);
  *v4 = 50;
  v31 = *(v30 + 12);
  if (v31 > 0x7F)
  {
    v4[1] = v31 | 0x80;
    v33 = v31 >> 7;
    if (v31 >> 14)
    {
      v32 = v4 + 3;
      do
      {
        *(v32 - 1) = v33 | 0x80;
        v34 = v33 >> 7;
        ++v32;
        v35 = v33 >> 14;
        v33 >>= 7;
      }

      while (v35);
      *(v32 - 1) = v34;
    }

    else
    {
      v4[2] = v33;
      v32 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v31;
    v32 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v30, v32, this);
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_95;
  }

LABEL_85:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v36 = *(a1 + 72);
  *v4 = 58;
  v37 = *(v36 + 12);
  if (v37 > 0x7F)
  {
    v4[1] = v37 | 0x80;
    v39 = v37 >> 7;
    if (v37 >> 14)
    {
      v38 = v4 + 3;
      do
      {
        *(v38 - 1) = v39 | 0x80;
        v40 = v39 >> 7;
        ++v38;
        v41 = v39 >> 14;
        v39 >>= 7;
      }

      while (v41);
      *(v38 - 1) = v40;
    }

    else
    {
      v4[2] = v39;
      v38 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v37;
    v38 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v36, v38, this);
  if ((v6 & 0x8000) == 0)
  {
LABEL_9:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

LABEL_106:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v46 = *(a1 + 148);
    *v4 = 72;
    if (v46 > 0x7F)
    {
      v4[1] = v46 | 0x80;
      v47 = v46 >> 7;
      if (v46 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v47 | 0x80;
          v48 = v47 >> 7;
          ++v4;
          v49 = v47 >> 14;
          v47 >>= 7;
        }

        while (v49);
        *(v4 - 1) = v48;
        if ((v6 & 0x20000) != 0)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v4[2] = v47;
        v4 += 3;
        if ((v6 & 0x20000) != 0)
        {
          goto LABEL_117;
        }
      }
    }

    else
    {
      v4[1] = v46;
      v4 += 2;
      if ((v6 & 0x20000) != 0)
      {
        goto LABEL_117;
      }
    }

LABEL_11:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

LABEL_120:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v51 = *(a1 + 156);
    *v4 = 88;
    if (v51 > 0x7F)
    {
      v4[1] = v51 | 0x80;
      v52 = v51 >> 7;
      if (v51 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v52 | 0x80;
          v53 = v52 >> 7;
          ++v4;
          v54 = v52 >> 14;
          v52 >>= 7;
        }

        while (v54);
        *(v4 - 1) = v53;
        if ((v6 & 0x80000) != 0)
        {
          goto LABEL_131;
        }
      }

      else
      {
        v4[2] = v52;
        v4 += 3;
        if ((v6 & 0x80000) != 0)
        {
          goto LABEL_131;
        }
      }
    }

    else
    {
      v4[1] = v51;
      v4 += 2;
      if ((v6 & 0x80000) != 0)
      {
        goto LABEL_131;
      }
    }

LABEL_13:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_134;
  }

LABEL_95:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v42 = *(a1 + 144);
  *v4 = 64;
  if (v42 > 0x7F)
  {
    v4[1] = v42 | 0x80;
    v43 = v42 >> 7;
    if (v42 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v43 | 0x80;
        v44 = v43 >> 7;
        ++v4;
        v45 = v43 >> 14;
        v43 >>= 7;
      }

      while (v45);
      *(v4 - 1) = v44;
      if ((v6 & 0x10000) != 0)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v4[2] = v43;
      v4 += 3;
      if ((v6 & 0x10000) != 0)
      {
        goto LABEL_106;
      }
    }
  }

  else
  {
    v4[1] = v42;
    v4 += 2;
    if ((v6 & 0x10000) != 0)
    {
      goto LABEL_106;
    }
  }

LABEL_10:
  if ((v6 & 0x20000) == 0)
  {
    goto LABEL_11;
  }

LABEL_117:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v50 = *(a1 + 152);
  *v4 = 85;
  *(v4 + 1) = v50;
  v4 += 5;
  if ((v6 & 0x40000) != 0)
  {
    goto LABEL_120;
  }

LABEL_12:
  if ((v6 & 0x80000) == 0)
  {
    goto LABEL_13;
  }

LABEL_131:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v55 = *(a1 + 160);
  *v4 = 101;
  *(v4 + 1) = v55;
  v4 += 5;
  if ((v6 & 0x100000) == 0)
  {
LABEL_14:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_137;
  }

LABEL_134:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v56 = *(a1 + 164);
  *v4 = 109;
  *(v4 + 1) = v56;
  v4 += 5;
  if ((v6 & 0x40) == 0)
  {
LABEL_15:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_147;
  }

LABEL_137:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v57 = *(a1 + 80);
  *v4 = 114;
  v58 = *(v57 + 5);
  if (v58 > 0x7F)
  {
    v4[1] = v58 | 0x80;
    v60 = v58 >> 7;
    if (v58 >> 14)
    {
      v59 = v4 + 3;
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
      v4[2] = v60;
      v59 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v58;
    v59 = v4 + 2;
  }

  v4 = TSD::ShadowArchive::_InternalSerialize(v57, v59, this);
  if ((v6 & 0x80) == 0)
  {
LABEL_16:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_157;
  }

LABEL_147:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v63 = *(a1 + 88);
  *v4 = 122;
  v64 = *(v63 + 5);
  if (v64 > 0x7F)
  {
    v4[1] = v64 | 0x80;
    v66 = v64 >> 7;
    if (v64 >> 14)
    {
      v65 = v4 + 3;
      do
      {
        *(v65 - 1) = v66 | 0x80;
        v67 = v66 >> 7;
        ++v65;
        v68 = v66 >> 14;
        v66 >>= 7;
      }

      while (v68);
      *(v65 - 1) = v67;
    }

    else
    {
      v4[2] = v66;
      v65 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v64;
    v65 = v4 + 2;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v63, v65, this);
  if ((v6 & 0x200000) == 0)
  {
LABEL_17:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_160;
  }

LABEL_157:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v69 = *(a1 + 168);
  *v4 = 389;
  *(v4 + 2) = v69;
  v4 += 6;
  if ((v6 & 0x100) == 0)
  {
LABEL_18:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_170;
  }

LABEL_160:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v70 = *(a1 + 96);
  *v4 = 394;
  v71 = *(v70 + 5);
  if (v71 > 0x7F)
  {
    v4[2] = v71 | 0x80;
    v73 = v71 >> 7;
    if (v71 >> 14)
    {
      v72 = v4 + 4;
      do
      {
        *(v72 - 1) = v73 | 0x80;
        v74 = v73 >> 7;
        ++v72;
        v75 = v73 >> 14;
        v73 >>= 7;
      }

      while (v75);
      *(v72 - 1) = v74;
    }

    else
    {
      v4[3] = v73;
      v72 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v71;
    v72 = v4 + 3;
  }

  v4 = TSD::ShadowArchive::_InternalSerialize(v70, v72, this);
  if ((v6 & 0x200) == 0)
  {
LABEL_19:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_180;
  }

LABEL_170:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v76 = *(a1 + 104);
  *v4 = 402;
  v77 = *(v76 + 5);
  if (v77 > 0x7F)
  {
    v4[2] = v77 | 0x80;
    v79 = v77 >> 7;
    if (v77 >> 14)
    {
      v78 = v4 + 4;
      do
      {
        *(v78 - 1) = v79 | 0x80;
        v80 = v79 >> 7;
        ++v78;
        v81 = v79 >> 14;
        v79 >>= 7;
      }

      while (v81);
      *(v78 - 1) = v80;
    }

    else
    {
      v4[3] = v79;
      v78 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v77;
    v78 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v76, v78, this);
  if ((v6 & 0x400) == 0)
  {
LABEL_20:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_190;
  }

LABEL_180:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v82 = *(a1 + 112);
  *v4 = 410;
  v83 = *(v82 + 12);
  if (v83 > 0x7F)
  {
    v4[2] = v83 | 0x80;
    v85 = v83 >> 7;
    if (v83 >> 14)
    {
      v84 = v4 + 4;
      do
      {
        *(v84 - 1) = v85 | 0x80;
        v86 = v85 >> 7;
        ++v84;
        v87 = v85 >> 14;
        v85 >>= 7;
      }

      while (v87);
      *(v84 - 1) = v86;
    }

    else
    {
      v4[3] = v85;
      v84 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v83;
    v84 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v82, v84, this);
  if ((v6 & 0x400000) == 0)
  {
LABEL_21:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_22;
    }

LABEL_201:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v92 = *(a1 + 176);
    *v4 = 424;
    if (v92 > 0x7F)
    {
      v4[2] = v92 | 0x80;
      v93 = v92 >> 7;
      if (v92 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v93 | 0x80;
          v94 = v93 >> 7;
          ++v4;
          v95 = v93 >> 14;
          v93 >>= 7;
        }

        while (v95);
        *(v4 - 1) = v94;
        if ((v6 & 0x1000000) != 0)
        {
          goto LABEL_212;
        }
      }

      else
      {
        v4[3] = v93;
        v4 += 4;
        if ((v6 & 0x1000000) != 0)
        {
          goto LABEL_212;
        }
      }
    }

    else
    {
      v4[2] = v92;
      v4 += 3;
      if ((v6 & 0x1000000) != 0)
      {
        goto LABEL_212;
      }
    }

LABEL_23:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_223:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v100 = *(a1 + 184);
    *v4 = 440;
    if (v100 > 0x7F)
    {
      v4[2] = v100 | 0x80;
      v101 = v100 >> 7;
      if (v100 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v101 | 0x80;
          v102 = v101 >> 7;
          ++v4;
          v103 = v101 >> 14;
          v101 >>= 7;
        }

        while (v103);
        *(v4 - 1) = v102;
        if ((v6 & 0x8000000) != 0)
        {
          goto LABEL_234;
        }
      }

      else
      {
        v4[3] = v101;
        v4 += 4;
        if ((v6 & 0x8000000) != 0)
        {
          goto LABEL_234;
        }
      }
    }

    else
    {
      v4[2] = v100;
      v4 += 3;
      if ((v6 & 0x8000000) != 0)
      {
        goto LABEL_234;
      }
    }

LABEL_25:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_237:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v105 = *(a1 + 188);
    *v4 = 456;
    if (v105 > 0x7F)
    {
      v4[2] = v105 | 0x80;
      v106 = v105 >> 7;
      if (v105 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v106 | 0x80;
          v107 = v106 >> 7;
          ++v4;
          v108 = v106 >> 14;
          v106 >>= 7;
        }

        while (v108);
        *(v4 - 1) = v107;
        if ((v6 & 0x10000000) != 0)
        {
          goto LABEL_248;
        }
      }

      else
      {
        v4[3] = v106;
        v4 += 4;
        if ((v6 & 0x10000000) != 0)
        {
          goto LABEL_248;
        }
      }
    }

    else
    {
      v4[2] = v105;
      v4 += 3;
      if ((v6 & 0x10000000) != 0)
      {
        goto LABEL_248;
      }
    }

LABEL_27:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_251;
  }

LABEL_190:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v88 = *(a1 + 172);
  *v4 = 416;
  if (v88 > 0x7F)
  {
    v4[2] = v88 | 0x80;
    v89 = v88 >> 7;
    if (v88 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v89 | 0x80;
        v90 = v89 >> 7;
        ++v4;
        v91 = v89 >> 14;
        v89 >>= 7;
      }

      while (v91);
      *(v4 - 1) = v90;
      if ((v6 & 0x800000) != 0)
      {
        goto LABEL_201;
      }
    }

    else
    {
      v4[3] = v89;
      v4 += 4;
      if ((v6 & 0x800000) != 0)
      {
        goto LABEL_201;
      }
    }
  }

  else
  {
    v4[2] = v88;
    v4 += 3;
    if ((v6 & 0x800000) != 0)
    {
      goto LABEL_201;
    }
  }

LABEL_22:
  if ((v6 & 0x1000000) == 0)
  {
    goto LABEL_23;
  }

LABEL_212:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v96 = *(a1 + 180);
  *v4 = 432;
  if (v96 > 0x7F)
  {
    v4[2] = v96 | 0x80;
    v97 = v96 >> 7;
    if (v96 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v97 | 0x80;
        v98 = v97 >> 7;
        ++v4;
        v99 = v97 >> 14;
        v97 >>= 7;
      }

      while (v99);
      *(v4 - 1) = v98;
      if ((v6 & 0x2000000) != 0)
      {
        goto LABEL_223;
      }
    }

    else
    {
      v4[3] = v97;
      v4 += 4;
      if ((v6 & 0x2000000) != 0)
      {
        goto LABEL_223;
      }
    }
  }

  else
  {
    v4[2] = v96;
    v4 += 3;
    if ((v6 & 0x2000000) != 0)
    {
      goto LABEL_223;
    }
  }

LABEL_24:
  if ((v6 & 0x8000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_234:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v104 = *(a1 + 192);
  *v4 = 448;
  v4[2] = v104;
  v4 += 3;
  if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_237;
  }

LABEL_26:
  if ((v6 & 0x10000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_248:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v109 = *(a1 + 193);
  *v4 = 464;
  v4[2] = v109;
  v4 += 3;
  if ((v6 & 0x20000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_254;
  }

LABEL_251:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v110 = *(a1 + 194);
  *v4 = 472;
  v4[2] = v110;
  v4 += 3;
  if ((v6 & 0x40000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_260;
    }

    goto LABEL_257;
  }

LABEL_254:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v111 = *(a1 + 195);
  *v4 = 480;
  v4[2] = v111;
  v4 += 3;
  if (v6 < 0)
  {
LABEL_257:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v112 = *(a1 + 196);
    *v4 = 488;
    v4[2] = v112;
    v4 += 3;
  }

LABEL_260:
  v113 = *(a1 + 20);
  if (v113)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v114 = *(a1 + 197);
    *v4 = 496;
    v4[2] = v114;
    v4 += 3;
    if ((v113 & 2) == 0)
    {
LABEL_262:
      if ((v113 & 4) == 0)
      {
        goto LABEL_263;
      }

      goto LABEL_276;
    }
  }

  else if ((v113 & 2) == 0)
  {
    goto LABEL_262;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v115 = *(a1 + 198);
  *v4 = 504;
  v4[2] = v115;
  v4 += 3;
  if ((v113 & 4) == 0)
  {
LABEL_263:
    if ((v113 & 8) == 0)
    {
      goto LABEL_264;
    }

    goto LABEL_279;
  }

LABEL_276:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v116 = *(a1 + 199);
  *v4 = 640;
  v4[2] = v116;
  v4 += 3;
  if ((v113 & 8) == 0)
  {
LABEL_264:
    if ((v113 & 0x10) == 0)
    {
      goto LABEL_265;
    }

    goto LABEL_282;
  }

LABEL_279:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v117 = *(a1 + 200);
  *v4 = 648;
  v4[2] = v117;
  v4 += 3;
  if ((v113 & 0x10) == 0)
  {
LABEL_265:
    if ((v113 & 0x20) == 0)
    {
      goto LABEL_266;
    }

    goto LABEL_285;
  }

LABEL_282:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v118 = *(a1 + 201);
  *v4 = 656;
  v4[2] = v118;
  v4 += 3;
  if ((v113 & 0x20) == 0)
  {
LABEL_266:
    if ((v113 & 0x40) == 0)
    {
      goto LABEL_267;
    }

    goto LABEL_288;
  }

LABEL_285:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v119 = *(a1 + 202);
  *v4 = 664;
  v4[2] = v119;
  v4 += 3;
  if ((v113 & 0x40) == 0)
  {
LABEL_267:
    if ((v113 & 0x80) == 0)
    {
      goto LABEL_268;
    }

    goto LABEL_291;
  }

LABEL_288:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v120 = *(a1 + 203);
  *v4 = 672;
  v4[2] = v120;
  v4 += 3;
  if ((v113 & 0x80) == 0)
  {
LABEL_268:
    if ((v113 & 0x100) == 0)
    {
      goto LABEL_303;
    }

    goto LABEL_294;
  }

LABEL_291:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v121 = *(a1 + 204);
  *v4 = 680;
  v4[2] = v121;
  v4 += 3;
  if ((v113 & 0x100) != 0)
  {
LABEL_294:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v122 = *(a1 + 208);
    *v4 = 688;
    if (v122 > 0x7F)
    {
      v4[2] = v122 | 0x80;
      v123 = v122 >> 7;
      if (v122 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v123 | 0x80;
          v124 = v123 >> 7;
          ++v4;
          v125 = v123 >> 14;
          v123 >>= 7;
        }

        while (v125);
        *(v4 - 1) = v124;
      }

      else
      {
        v4[3] = v123;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v122;
      v4 += 3;
    }
  }

LABEL_303:
  if (*(a1 + 16))
  {
    v4 = sub_2763DD938(this, 39, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  if ((*(a1 + 21) & 2) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v126 = *(a1 + 212);
    *v4 = 704;
    if (v126 > 0x7F)
    {
      v4[2] = v126 | 0x80;
      v127 = v126 >> 7;
      if (v126 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v127 | 0x80;
          v128 = v127 >> 7;
          ++v4;
          v129 = v127 >> 14;
          v127 >>= 7;
        }

        while (v129);
        *(v4 - 1) = v128;
      }

      else
      {
        v4[3] = v127;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v126;
      v4 += 3;
    }
  }

  v130 = *(a1 + 16);
  if ((v130 & 0x800) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v131 = *(a1 + 120);
    *v4 = 714;
    v132 = *(v131 + 20);
    if (v132 > 0x7F)
    {
      v4[2] = v132 | 0x80;
      v134 = v132 >> 7;
      if (v132 >> 14)
      {
        v133 = (v4 + 4);
        do
        {
          *(v133 - 1) = v134 | 0x80;
          v135 = v134 >> 7;
          ++v133;
          v136 = v134 >> 14;
          v134 >>= 7;
        }

        while (v136);
        *(v133 - 1) = v135;
      }

      else
      {
        v4[3] = v134;
        v133 = (v4 + 4);
      }
    }

    else
    {
      v4[2] = v132;
      v133 = (v4 + 3);
    }

    v4 = sub_27640074C(v131, v133, this);
  }

  if ((v130 & 0x1000) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v137 = *(a1 + 128);
    *v4 = 722;
    v138 = *(v137 + 20);
    if (v138 > 0x7F)
    {
      v4[2] = v138 | 0x80;
      v140 = v138 >> 7;
      if (v138 >> 14)
      {
        v139 = (v4 + 4);
        do
        {
          *(v139 - 1) = v140 | 0x80;
          v141 = v140 >> 7;
          ++v139;
          v142 = v140 >> 14;
          v140 >>= 7;
        }

        while (v142);
        *(v139 - 1) = v141;
      }

      else
      {
        v4[3] = v140;
        v139 = (v4 + 4);
      }
    }

    else
    {
      v4[2] = v138;
      v139 = (v4 + 3);
    }

    v4 = sub_27640074C(v137, v139, this);
  }

  if ((*(a1 + 21) & 4) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v143 = *(a1 + 216);
    *v4 = 728;
    if (v143 > 0x7F)
    {
      v4[2] = v143 | 0x80;
      v144 = v143 >> 7;
      if (v143 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v144 | 0x80;
          v145 = v144 >> 7;
          ++v4;
          v146 = v144 >> 14;
          v144 >>= 7;
        }

        while (v146);
        *(v4 - 1) = v145;
      }

      else
      {
        v4[3] = v144;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v143;
      v4 += 3;
    }
  }

  v147 = *(a1 + 8);
  if ((v147 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v147 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27642D7A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_17;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v4 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v18 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 48));
    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_42;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v19 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 56));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 64));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  v21 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 72));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_44:
  v22 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 80));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_16:
    v8 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 88));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_36;
  }

  if ((v2 & 0x100) != 0)
  {
    v23 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 96));
    v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_20:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_48;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v24 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 104));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_21:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_22;
    }

LABEL_49:
    v26 = sub_2764007DC(*(a1 + 120));
    v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_48:
  v25 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 112));
  v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) != 0)
  {
    goto LABEL_49;
  }

LABEL_22:
  if ((v2 & 0x1000) != 0)
  {
LABEL_23:
    v9 = sub_2764007DC(*(a1 + 128));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_24:
  if ((v2 & 0x2000) != 0)
  {
    v3 += 5;
  }

  if ((v2 & 0x4000) != 0)
  {
    v10 = *(a1 + 140);
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 11;
    }

    v3 += v12;
  }

  if ((v2 & 0x8000) != 0)
  {
    v13 = *(a1 + 144);
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v13 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 11;
    }

    v3 += v15;
  }

LABEL_36:
  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v16 = *(a1 + 148);
      if (v16 < 0)
      {
        v17 = 11;
      }

      else
      {
        v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v17;
    }

    v27 = v3 + 5;
    if ((v2 & 0x20000) == 0)
    {
      v27 = v3;
    }

    if ((v2 & 0x40000) != 0)
    {
      v28 = *(a1 + 156);
      v29 = ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v28 >= 0)
      {
        v30 = v29;
      }

      else
      {
        v30 = 11;
      }

      v27 += v30;
    }

    if ((v2 & 0x80000) != 0)
    {
      v27 += 5;
    }

    if ((v2 & 0x100000) != 0)
    {
      v27 += 5;
    }

    if ((v2 & 0x200000) != 0)
    {
      v3 = v27 + 6;
    }

    else
    {
      v3 = v27;
    }

    if ((v2 & 0x400000) != 0)
    {
      v31 = *(a1 + 172);
      v32 = ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v31 >= 0)
      {
        v33 = v32;
      }

      else
      {
        v33 = 12;
      }

      v3 += v33;
    }

    if ((v2 & 0x800000) != 0)
    {
      v34 = *(a1 + 176);
      v35 = ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v34 >= 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = 12;
      }

      v3 += v36;
    }
  }

  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      v37 = *(a1 + 180);
      if (v37 < 0)
      {
        v38 = 12;
      }

      else
      {
        v38 = ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v38;
      if ((v2 & 0x2000000) == 0)
      {
LABEL_80:
        if ((v2 & 0x4000000) == 0)
        {
LABEL_94:
          v43 = v3 + 3;
          if ((v2 & 0x8000000) == 0)
          {
            v43 = v3;
          }

          if ((v2 & 0x10000000) != 0)
          {
            v43 += 3;
          }

          if ((v2 & 0x20000000) != 0)
          {
            v43 += 3;
          }

          if ((v2 & 0x40000000) != 0)
          {
            v43 += 3;
          }

          if (v2 >= 0)
          {
            v3 = v43;
          }

          else
          {
            v3 = v43 + 3;
          }

          goto LABEL_105;
        }

LABEL_90:
        v41 = *(a1 + 188);
        if (v41 < 0)
        {
          v42 = 12;
        }

        else
        {
          v42 = ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
        }

        v3 += v42;
        goto LABEL_94;
      }
    }

    else if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_80;
    }

    v39 = *(a1 + 184);
    if (v39 < 0)
    {
      v40 = 12;
    }

    else
    {
      v40 = ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v40;
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_90;
  }

LABEL_105:
  v44 = *(a1 + 20);
  if (v44)
  {
    v45 = v3 + 3;
    if ((v44 & 1) == 0)
    {
      v45 = v3;
    }

    if ((v44 & 2) != 0)
    {
      v45 += 3;
    }

    if ((v44 & 4) != 0)
    {
      v45 += 3;
    }

    if ((v44 & 8) != 0)
    {
      v45 += 3;
    }

    if ((v44 & 0x10) != 0)
    {
      v45 += 3;
    }

    if ((v44 & 0x20) != 0)
    {
      v45 += 3;
    }

    if ((v44 & 0x40) != 0)
    {
      v45 += 3;
    }

    if ((v44 & 0x80) != 0)
    {
      v3 = v45 + 3;
    }

    else
    {
      v3 = v45;
    }
  }

  if ((v44 & 0x700) != 0)
  {
    if ((v44 & 0x100) != 0)
    {
      v46 = *(a1 + 208);
      if (v46 < 0)
      {
        v47 = 12;
      }

      else
      {
        v47 = ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v47;
      if ((v44 & 0x200) == 0)
      {
LABEL_126:
        if ((v44 & 0x400) == 0)
        {
          goto LABEL_140;
        }

LABEL_136:
        v50 = *(a1 + 216);
        if (v50 < 0)
        {
          v51 = 12;
        }

        else
        {
          v51 = ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
        }

        v3 += v51;
        goto LABEL_140;
      }
    }

    else if ((v44 & 0x200) == 0)
    {
      goto LABEL_126;
    }

    v48 = *(a1 + 212);
    if (v48 < 0)
    {
      v49 = 12;
    }

    else
    {
      v49 = ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v49;
    if ((v44 & 0x400) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_136;
  }

LABEL_140:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 24) = v3;
    return v3;
  }
}

void sub_27642DE60(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288523940, 0);
  if (v4)
  {

    sub_27642DF08(a1, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

void sub_27642DF08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2763D4F88((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_70;
  }

  if (v5)
  {
    *(a1 + 16) |= 1u;
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  v6 = MEMORY[0x277D80740];
  if ((v5 & 2) != 0)
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

      v7 = MEMORY[0x277C97B00](v8);
      *(a1 + 40) = v7;
    }

    if (*(a2 + 40))
    {
      v9 = *(a2 + 40);
    }

    else
    {
      v9 = v6;
    }

    TSK::FormatStructArchive::MergeFrom(v7, v9);
  }

  if ((v5 & 4) != 0)
  {
    *(a1 + 16) |= 4u;
    v10 = *(a1 + 48);
    if (!v10)
    {
      v11 = *(a1 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C97B00](v11);
      *(a1 + 48) = v10;
    }

    if (*(a2 + 48))
    {
      v12 = *(a2 + 48);
    }

    else
    {
      v12 = v6;
    }

    TSK::FormatStructArchive::MergeFrom(v10, v12);
  }

  v13 = MEMORY[0x277D804A0];
  if ((v5 & 8) != 0)
  {
    *(a1 + 16) |= 8u;
    v14 = *(a1 + 56);
    if (!v14)
    {
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C97AA0](v15);
      *(a1 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v16 = *(a2 + 56);
    }

    else
    {
      v16 = v13;
    }

    TSD::StrokeArchive::MergeFrom(v14, v16);
    if ((v5 & 0x10) == 0)
    {
LABEL_26:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_27;
      }

LABEL_46:
      *(a1 + 16) |= 0x20u;
      v20 = *(a1 + 72);
      if (!v20)
      {
        v21 = *(a1 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = MEMORY[0x277C97B00](v21);
        *(a1 + 72) = v20;
      }

      if (*(a2 + 72))
      {
        v22 = *(a2 + 72);
      }

      else
      {
        v22 = v6;
      }

      TSK::FormatStructArchive::MergeFrom(v20, v22);
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

  *(a1 + 16) |= 0x10u;
  v17 = *(a1 + 64);
  if (!v17)
  {
    v18 = *(a1 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x277C97B00](v18);
    *(a1 + 64) = v17;
  }

  if (*(a2 + 64))
  {
    v19 = *(a2 + 64);
  }

  else
  {
    v19 = v6;
  }

  TSK::FormatStructArchive::MergeFrom(v17, v19);
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
  *(a1 + 16) |= 0x40u;
  v23 = *(a1 + 80);
  if (!v23)
  {
    v24 = *(a1 + 8);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v23 = MEMORY[0x277C97A90](v24);
    *(a1 + 80) = v23;
  }

  if (*(a2 + 80))
  {
    v25 = *(a2 + 80);
  }

  else
  {
    v25 = MEMORY[0x277D80498];
  }

  TSD::ShadowArchive::MergeFrom(v23, v25);
  if ((v5 & 0x80) != 0)
  {
LABEL_62:
    *(a1 + 16) |= 0x80u;
    v26 = *(a1 + 88);
    if (!v26)
    {
      v27 = *(a1 + 8);
      if (v27)
      {
        v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = MEMORY[0x277C97AA0](v27);
      *(a1 + 88) = v26;
    }

    if (*(a2 + 88))
    {
      v28 = *(a2 + 88);
    }

    else
    {
      v28 = v13;
    }

    TSD::StrokeArchive::MergeFrom(v26, v28);
  }

LABEL_70:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_106;
  }

  if ((v5 & 0x100) != 0)
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

      v29 = MEMORY[0x277C97A90](v30);
      *(a1 + 96) = v29;
    }

    if (*(a2 + 96))
    {
      v31 = *(a2 + 96);
    }

    else
    {
      v31 = MEMORY[0x277D80498];
    }

    TSD::ShadowArchive::MergeFrom(v29, v31);
    if ((v5 & 0x200) == 0)
    {
LABEL_73:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_91;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  *(a1 + 16) |= 0x200u;
  v32 = *(a1 + 104);
  if (!v32)
  {
    v33 = *(a1 + 8);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = MEMORY[0x277C97AA0](v33);
    *(a1 + 104) = v32;
  }

  if (*(a2 + 104))
  {
    v34 = *(a2 + 104);
  }

  else
  {
    v34 = MEMORY[0x277D804A0];
  }

  TSD::StrokeArchive::MergeFrom(v32, v34);
  if ((v5 & 0x400) != 0)
  {
LABEL_91:
    *(a1 + 16) |= 0x400u;
    v35 = *(a1 + 112);
    if (!v35)
    {
      v36 = *(a1 + 8);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = MEMORY[0x277C97B00](v36);
      *(a1 + 112) = v35;
    }

    if (*(a2 + 112))
    {
      v37 = *(a2 + 112);
    }

    else
    {
      v37 = MEMORY[0x277D80740];
    }

    TSK::FormatStructArchive::MergeFrom(v35, v37);
  }

LABEL_99:
  if ((v5 & 0x800) != 0)
  {
    *(a1 + 16) |= 0x800u;
    v39 = *(a1 + 120);
    if (!v39)
    {
      v40 = *(a1 + 8);
      if (v40)
      {
        v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
      }

      v39 = sub_276406A24(v40);
      *(a1 + 120) = v39;
    }

    if (*(a2 + 120))
    {
      v41 = *(a2 + 120);
    }

    else
    {
      v41 = &qword_2812F01B8;
    }

    sub_2764008B8(v39, v41);
    if ((v5 & 0x1000) == 0)
    {
LABEL_101:
      if ((v5 & 0x2000) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_161;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_101;
  }

  *(a1 + 16) |= 0x1000u;
  v42 = *(a1 + 128);
  if (!v42)
  {
    v43 = *(a1 + 8);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = sub_276406A24(v43);
    *(a1 + 128) = v42;
  }

  if (*(a2 + 128))
  {
    v44 = *(a2 + 128);
  }

  else
  {
    v44 = &qword_2812F01B8;
  }

  sub_2764008B8(v42, v44);
  if ((v5 & 0x2000) == 0)
  {
LABEL_102:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_103;
    }

LABEL_162:
    *(a1 + 140) = *(a2 + 140);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_161:
  *(a1 + 136) = *(a2 + 136);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_162;
  }

LABEL_103:
  if ((v5 & 0x8000) != 0)
  {
LABEL_104:
    *(a1 + 144) = *(a2 + 144);
  }

LABEL_105:
  *(a1 + 16) |= v5;
LABEL_106:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_117;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(a1 + 148) = *(a2 + 148);
    if ((v5 & 0x20000) == 0)
    {
LABEL_109:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_166;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_109;
  }

  *(a1 + 152) = *(a2 + 152);
  if ((v5 & 0x40000) == 0)
  {
LABEL_110:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_167;
  }

LABEL_166:
  *(a1 + 156) = *(a2 + 156);
  if ((v5 & 0x80000) == 0)
  {
LABEL_111:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_168;
  }

LABEL_167:
  *(a1 + 160) = *(a2 + 160);
  if ((v5 & 0x100000) == 0)
  {
LABEL_112:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_169;
  }

LABEL_168:
  *(a1 + 164) = *(a2 + 164);
  if ((v5 & 0x200000) == 0)
  {
LABEL_113:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_114;
    }

LABEL_170:
    *(a1 + 172) = *(a2 + 172);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

LABEL_169:
  *(a1 + 168) = *(a2 + 168);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_170;
  }

LABEL_114:
  if ((v5 & 0x800000) != 0)
  {
LABEL_115:
    *(a1 + 176) = *(a2 + 176);
  }

LABEL_116:
  *(a1 + 16) |= v5;
LABEL_117:
  if (!HIBYTE(v5))
  {
    goto LABEL_127;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(a1 + 180) = *(a2 + 180);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_120:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_185;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_120;
  }

  *(a1 + 184) = *(a2 + 184);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_121:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_186;
  }

LABEL_185:
  *(a1 + 188) = *(a2 + 188);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_122:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_187;
  }

LABEL_186:
  *(a1 + 192) = *(a2 + 192);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_123:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_188;
  }

LABEL_187:
  *(a1 + 193) = *(a2 + 193);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_124:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_125;
    }

LABEL_189:
    *(a1 + 195) = *(a2 + 195);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_126;
    }

LABEL_190:
    *(a1 + 196) = *(a2 + 196);
    goto LABEL_126;
  }

LABEL_188:
  *(a1 + 194) = *(a2 + 194);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_189;
  }

LABEL_125:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_190;
  }

LABEL_126:
  *(a1 + 16) |= v5;
LABEL_127:
  v38 = *(a2 + 20);
  if (!v38)
  {
    goto LABEL_138;
  }

  if (v38)
  {
    *(a1 + 197) = *(a2 + 197);
    if ((v38 & 2) == 0)
    {
LABEL_130:
      if ((v38 & 4) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_174;
    }
  }

  else if ((v38 & 2) == 0)
  {
    goto LABEL_130;
  }

  *(a1 + 198) = *(a2 + 198);
  if ((v38 & 4) == 0)
  {
LABEL_131:
    if ((v38 & 8) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_175;
  }

LABEL_174:
  *(a1 + 199) = *(a2 + 199);
  if ((v38 & 8) == 0)
  {
LABEL_132:
    if ((v38 & 0x10) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_176;
  }

LABEL_175:
  *(a1 + 200) = *(a2 + 200);
  if ((v38 & 0x10) == 0)
  {
LABEL_133:
    if ((v38 & 0x20) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_177;
  }

LABEL_176:
  *(a1 + 201) = *(a2 + 201);
  if ((v38 & 0x20) == 0)
  {
LABEL_134:
    if ((v38 & 0x40) == 0)
    {
      goto LABEL_135;
    }

LABEL_178:
    *(a1 + 203) = *(a2 + 203);
    if ((v38 & 0x80) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_136;
  }

LABEL_177:
  *(a1 + 202) = *(a2 + 202);
  if ((v38 & 0x40) != 0)
  {
    goto LABEL_178;
  }

LABEL_135:
  if ((v38 & 0x80) != 0)
  {
LABEL_136:
    *(a1 + 204) = *(a2 + 204);
  }

LABEL_137:
  *(a1 + 20) |= v38;
LABEL_138:
  if ((v38 & 0x700) == 0)
  {
    return;
  }

  if ((v38 & 0x100) == 0)
  {
    if ((v38 & 0x200) == 0)
    {
      goto LABEL_141;
    }

LABEL_181:
    *(a1 + 212) = *(a2 + 212);
    if ((v38 & 0x400) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_142;
  }

  *(a1 + 208) = *(a2 + 208);
  if ((v38 & 0x200) != 0)
  {
    goto LABEL_181;
  }

LABEL_141:
  if ((v38 & 0x400) != 0)
  {
LABEL_142:
    *(a1 + 216) = *(a2 + 216);
  }

LABEL_143:
  *(a1 + 20) |= v38;
}

void sub_27642E56C(uint64_t *a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    sub_27642B260(a1);

    sub_27642DE60(a1, a2);
  }
}

uint64_t sub_27642E5B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) == 0)
  {
    return 1;
  }

  result = TSK::FormatStructArchive::IsInitialized(*(a1 + 112));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_27642E6DC(uint64_t a1)
{
  sub_27642E710(a1);
  sub_2763941F4((a1 + 8));
  return a1;
}

uint64_t sub_27642E710(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  if (v1 != &qword_2812F0EB0)
  {
    if (v1[5])
    {
      v3 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v3, 0x10A1C4029F168B5);
    }

    if (v1[6])
    {
      v4 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v4, 0x10A1C4029F168B5);
    }

    if (v1[7])
    {
      v5 = MEMORY[0x277C97280]();
      MEMORY[0x277C98580](v5, 0x10A1C406771AFB9);
    }

    if (v1[8])
    {
      v6 = MEMORY[0x277C97280]();
      MEMORY[0x277C98580](v6, 0x10A1C406771AFB9);
    }

    if (v1[9])
    {
      v7 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v7, 0x10A1C4078DB9C03);
    }

    if (v1[10])
    {
      v8 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v8, 0x10A1C4029F168B5);
    }

    if (v1[11])
    {
      v9 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v9, 0x10A1C4029F168B5);
    }

    if (v1[12])
    {
      v10 = sub_2764009F8();
      MEMORY[0x277C98580](v10, 0x1081C4085BC40B3);
    }

    if (v1[13])
    {
      v11 = sub_2764009F8();
      MEMORY[0x277C98580](v11, 0x1081C4085BC40B3);
    }

    if (v1[14])
    {
      v12 = sub_2764009F8();
      MEMORY[0x277C98580](v12, 0x1081C4085BC40B3);
    }

    if (v1[15])
    {
      v13 = sub_2764009F8();
      MEMORY[0x277C98580](v13, 0x1081C4085BC40B3);
    }

    if (v1[16])
    {
      v14 = MEMORY[0x277C97280]();
      MEMORY[0x277C98580](v14, 0x10A1C406771AFB9);
    }

    if (v1[17])
    {
      v15 = MEMORY[0x277C97280]();
      MEMORY[0x277C98580](v15, 0x10A1C406771AFB9);
    }

    if (v1[18])
    {
      v16 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v16, 0x10A1C40C8B7F858);
    }

    if (v1[19])
    {
      v17 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v17, 0x10A1C4078DB9C03);
    }

    if (v1[20])
    {
      v18 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v18, 0x10A1C4078DB9C03);
    }

    if (v1[21])
    {
      v19 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v19, 0x10A1C4042C41316);
    }

    if (v1[22])
    {
      v20 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v20, 0x10A1C4029F168B5);
    }

    if (v1[23])
    {
      v21 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v21, 0x10A1C4029F168B5);
    }

    if (v1[24])
    {
      v22 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v22, 0x10A1C40C8B7F858);
    }

    if (v1[25])
    {
      v23 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v23, 0x10A1C4078DB9C03);
    }

    if (v1[26])
    {
      v24 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v24, 0x10A1C4042C41316);
    }

    if (v1[27])
    {
      v25 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v25, 0x10A1C4078DB9C03);
    }

    if (v1[28])
    {
      v26 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v26, 0x10A1C40C8B7F858);
    }

    result = v1[29];
    if (result)
    {
      MEMORY[0x277C97240]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27642EA04(uint64_t a1)
{
  sub_27642E6DC(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27642EA44(uint64_t *result)
{
  v1 = result;
  v2 = result + 2;
  v3 = *(result + 4);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    v8 = result[4] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_76;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_77;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_76:
  result = TSK::FormatStructArchive::Clear(result[5]);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_78;
  }

LABEL_77:
  result = TSK::FormatStructArchive::Clear(v1[6]);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_79;
  }

LABEL_78:
  result = TSD::LineEndArchive::Clear(v1[7]);
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_80:
    result = TSD::StrokeArchive::Clear(v1[9]);
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_81;
  }

LABEL_79:
  result = TSD::LineEndArchive::Clear(v1[8]);
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_80;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_81:
  result = TSK::FormatStructArchive::Clear(v1[10]);
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = TSK::FormatStructArchive::Clear(v1[11]);
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    result = sub_276400A3C(v1[12]);
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_61;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = sub_276400A3C(v1[13]);
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = sub_276400A3C(v1[14]);
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = sub_276400A3C(v1[15]);
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = TSD::LineEndArchive::Clear(v1[16]);
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = TSD::LineEndArchive::Clear(v1[17]);
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_65:
  result = TSD::ShadowArchive::Clear(v1[18]);
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    result = TSD::StrokeArchive::Clear(v1[19]);
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    result = TSD::StrokeArchive::Clear(v1[20]);
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_69;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = TSD::FillArchive::Clear(v1[21]);
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = TSK::FormatStructArchive::Clear(v1[22]);
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = TSK::FormatStructArchive::Clear(v1[23]);
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  result = TSD::ShadowArchive::Clear(v1[24]);
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = TSD::StrokeArchive::Clear(v1[25]);
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_73:
  result = TSD::FillArchive::Clear(v1[26]);
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    result = TSD::StrokeArchive::Clear(v1[27]);
  }

LABEL_31:
  if ((v3 & 0x3000000) != 0)
  {
    if ((v3 & 0x1000000) != 0)
    {
      result = TSD::ShadowArchive::Clear(v1[28]);
    }

    if ((v3 & 0x2000000) != 0)
    {
      result = TSD::StrokeArchive::Clear(v1[29]);
    }
  }

  if (v3 >> 26)
  {
    v1[30] = 0;
    v1[31] = 0;
    v1[32] = 0;
  }

  v4 = *(v1 + 5);
  if (v4)
  {
    *(v1 + 33) = 0u;
    *(v1 + 35) = 0u;
  }

  if ((v4 & 0xFF00) != 0)
  {
    *(v1 + 37) = 0u;
    *(v1 + 39) = 0u;
  }

  if ((v4 & 0xFF0000) != 0)
  {
    v1[41] = 0;
    *(v1 + 335) = 0;
  }

  if (HIBYTE(v4))
  {
    *(v1 + 355) = 0;
    *(v1 + 347) = 0;
    *(v1 + 339) = 0;
  }

  v5 = *(v1 + 6);
  if (v5)
  {
    *(v1 + 364) = 0;
    *(v1 + 356) = 0;
    *(v1 + 371) = 0;
  }

  if ((v5 & 0xFF00) != 0)
  {
    v1[50] = 0;
    *(v1 + 387) = 0;
    *(v1 + 379) = 0;
    *(v1 + 395) = 0;
  }

  if ((v5 & 0xF0000) != 0)
  {
    v1[51] = 0;
    v1[52] = 0;
  }

  *(v2 + 2) = 0;
  *v2 = 0;
  v7 = *(v1 + 8);
  v6 = v1 + 1;
  if (v7)
  {

    return sub_2763D4FD4(v6);
  }

  return result;
}

google::protobuf::internal *sub_27642ED3C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v278 = a2;
  while (2)
  {
    if (sub_2763D4D98(a3, &v278))
    {
      return v278;
    }

    v5 = (v278 + 1);
    LODWORD(v6) = *v278;
    if (*v278 < 0)
    {
      v6 = (v6 + (*v5 << 7) - 128);
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v278, v6);
        v278 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        goto LABEL_7;
      }

      v5 = (v278 + 2);
    }

    v278 = v5;
LABEL_7:
    switch(v6 >> 3)
    {
      case 1u:
        if (v6 != 10)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 2u;
        v7 = *(a1 + 40);
        if (v7)
        {
          goto LABEL_275;
        }

        v8 = *(a1 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = MEMORY[0x277C97B00](v8);
        LODWORD(v7) = v9;
        *(a1 + 40) = v9;
        goto LABEL_274;
      case 2u:
        if (v6 != 18)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 4u;
        v7 = *(a1 + 48);
        if (v7)
        {
          goto LABEL_275;
        }

        v109 = *(a1 + 8);
        if (v109)
        {
          v109 = *(v109 & 0xFFFFFFFFFFFFFFFELL);
        }

        v110 = MEMORY[0x277C97B00](v109);
        LODWORD(v7) = v110;
        *(a1 + 48) = v110;
        goto LABEL_274;
      case 3u:
        if (v6 != 29)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x4000000u;
        v103 = *v5;
        v20 = (v5 + 4);
        *(a1 + 240) = v103;
        goto LABEL_384;
      case 4u:
        if (v6 != 37)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x8000000u;
        v106 = *v5;
        v20 = (v5 + 4);
        *(a1 + 244) = v106;
        goto LABEL_384;
      case 5u:
        if (v6 != 42)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 8u;
        v61 = *(a1 + 56);
        if (v61)
        {
          goto LABEL_237;
        }

        v87 = *(a1 + 8);
        if (v87)
        {
          v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
        }

        v88 = MEMORY[0x277C97AB0](v87);
        LODWORD(v61) = v88;
        *(a1 + 56) = v88;
        goto LABEL_236;
      case 6u:
        if (v6 != 50)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x10u;
        v61 = *(a1 + 64);
        if (v61)
        {
          goto LABEL_237;
        }

        v126 = *(a1 + 8);
        if (v126)
        {
          v126 = *(v126 & 0xFFFFFFFFFFFFFFFELL);
        }

        v127 = MEMORY[0x277C97AB0](v126);
        LODWORD(v61) = v127;
        *(a1 + 64) = v127;
        goto LABEL_236;
      case 7u:
        if (v6 != 58)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x20u;
        v57 = *(a1 + 72);
        if (v57)
        {
          goto LABEL_364;
        }

        v136 = *(a1 + 8);
        if (v136)
        {
          v136 = *(v136 & 0xFFFFFFFFFFFFFFFELL);
        }

        v137 = MEMORY[0x277C97AA0](v136);
        LODWORD(v57) = v137;
        *(a1 + 72) = v137;
        goto LABEL_363;
      case 8u:
        if (v6 != 66)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x40u;
        v7 = *(a1 + 80);
        if (v7)
        {
          goto LABEL_275;
        }

        v107 = *(a1 + 8);
        if (v107)
        {
          v107 = *(v107 & 0xFFFFFFFFFFFFFFFELL);
        }

        v108 = MEMORY[0x277C97B00](v107);
        LODWORD(v7) = v108;
        *(a1 + 80) = v108;
        goto LABEL_274;
      case 9u:
        if (v6 != 74)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x80u;
        v7 = *(a1 + 88);
        if (v7)
        {
          goto LABEL_275;
        }

        v140 = *(a1 + 8);
        if (v140)
        {
          v140 = *(v140 & 0xFFFFFFFFFFFFFFFELL);
        }

        v141 = MEMORY[0x277C97B00](v140);
        LODWORD(v7) = v141;
        *(a1 + 88) = v141;
        goto LABEL_274;
      case 0xAu:
        if (v6 != 80)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x10000000u;
        v97 = (v5 + 1);
        LODWORD(v96) = *v5;
        if ((v96 & 0x80) == 0)
        {
          goto LABEL_173;
        }

        v98 = *v97;
        v96 = (v96 + (v98 << 7) - 128);
        if (v98 < 0)
        {
          v235 = google::protobuf::internal::VarintParseSlow64(v5, v96);
          v278 = v235;
          *(a1 + 248) = v236;
          if (!v235)
          {
            return 0;
          }
        }

        else
        {
          v97 = (v5 + 2);
LABEL_173:
          v278 = v97;
          *(a1 + 248) = v96;
        }

        continue;
      case 0xBu:
        if (v6 != 90)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x100u;
        v79 = *(a1 + 96);
        if (v79)
        {
          goto LABEL_268;
        }

        v139 = *(a1 + 8);
        if (v139)
        {
          v139 = *(v139 & 0xFFFFFFFFFFFFFFFELL);
        }

        v79 = sub_276406A94(v139);
        *(a1 + 96) = v79;
        goto LABEL_267;
      case 0xCu:
        if (v6 != 98)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x200u;
        v79 = *(a1 + 104);
        if (v79)
        {
          goto LABEL_268;
        }

        v80 = *(a1 + 8);
        if (v80)
        {
          v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
        }

        v79 = sub_276406A94(v80);
        *(a1 + 104) = v79;
        goto LABEL_267;
      case 0xDu:
        if (v6 != 106)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x400u;
        v79 = *(a1 + 112);
        if (v79)
        {
          goto LABEL_268;
        }

        v95 = *(a1 + 8);
        if (v95)
        {
          v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
        }

        v79 = sub_276406A94(v95);
        *(a1 + 112) = v79;
        goto LABEL_267;
      case 0xEu:
        if (v6 != 114)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x800u;
        v79 = *(a1 + 120);
        if (v79)
        {
          goto LABEL_268;
        }

        v135 = *(a1 + 8);
        if (v135)
        {
          v135 = *(v135 & 0xFFFFFFFFFFFFFFFELL);
        }

        v79 = sub_276406A94(v135);
        *(a1 + 120) = v79;
LABEL_267:
        v5 = v278;
LABEL_268:
        v94 = sub_2764A8B68(a3, v79, v5);
        goto LABEL_365;
      case 0xFu:
        if (v6 != 125)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x20000000u;
        v68 = *v5;
        v20 = (v5 + 4);
        *(a1 + 252) = v68;
        goto LABEL_384;
      case 0x10u:
        if (v6 != 133)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x40000000u;
        v104 = *v5;
        v20 = (v5 + 4);
        *(a1 + 256) = v104;
        goto LABEL_384;
      case 0x11u:
        if (v6 != 138)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x1000u;
        v61 = *(a1 + 128);
        if (v61)
        {
          goto LABEL_237;
        }

        v62 = *(a1 + 8);
        if (v62)
        {
          v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
        }

        v63 = MEMORY[0x277C97AB0](v62);
        LODWORD(v61) = v63;
        *(a1 + 128) = v63;
        goto LABEL_236;
      case 0x12u:
        if (v6 != 146)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x2000u;
        v61 = *(a1 + 136);
        if (v61)
        {
          goto LABEL_237;
        }

        v113 = *(a1 + 8);
        if (v113)
        {
          v113 = *(v113 & 0xFFFFFFFFFFFFFFFELL);
        }

        v114 = MEMORY[0x277C97AB0](v113);
        LODWORD(v61) = v114;
        *(a1 + 136) = v114;
LABEL_236:
        v5 = v278;
LABEL_237:
        v94 = sub_2764ACA10(a3, v61, v5);
        goto LABEL_365;
      case 0x13u:
        if (v6 != 157)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x80000000;
        v138 = *v5;
        v20 = (v5 + 4);
        *(a1 + 260) = v138;
        goto LABEL_384;
      case 0x14u:
        if (v6 != 165)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 1u;
        v152 = *v5;
        v20 = (v5 + 4);
        *(a1 + 264) = v152;
        goto LABEL_384;
      case 0x15u:
        if (v6 != 168)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 2u;
        v121 = (v5 + 1);
        LODWORD(v120) = *v5;
        if ((v120 & 0x80) == 0)
        {
          goto LABEL_225;
        }

        v122 = *v121;
        v120 = (v120 + (v122 << 7) - 128);
        if (v122 < 0)
        {
          v241 = google::protobuf::internal::VarintParseSlow64(v5, v120);
          v278 = v241;
          *(a1 + 268) = v242;
          if (!v241)
          {
            return 0;
          }
        }

        else
        {
          v121 = (v5 + 2);
LABEL_225:
          v278 = v121;
          *(a1 + 268) = v120;
        }

        continue;
      case 0x16u:
        if (v6 != 176)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 4u;
        v133 = (v5 + 1);
        LODWORD(v132) = *v5;
        if ((v132 & 0x80) == 0)
        {
          goto LABEL_249;
        }

        v134 = *v133;
        v132 = (v132 + (v134 << 7) - 128);
        if (v134 < 0)
        {
          v247 = google::protobuf::internal::VarintParseSlow64(v5, v132);
          v278 = v247;
          *(a1 + 272) = v248;
          if (!v247)
          {
            return 0;
          }
        }

        else
        {
          v133 = (v5 + 2);
LABEL_249:
          v278 = v133;
          *(a1 + 272) = v132;
        }

        continue;
      case 0x17u:
        if (v6 != 186)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x4000u;
        v25 = *(a1 + 144);
        if (v25)
        {
          goto LABEL_294;
        }

        v149 = *(a1 + 8);
        if (v149)
        {
          v149 = *(v149 & 0xFFFFFFFFFFFFFFFELL);
        }

        v150 = MEMORY[0x277C97A90](v149);
        LODWORD(v25) = v150;
        *(a1 + 144) = v150;
        goto LABEL_293;
      case 0x18u:
        if (v6 != 192)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 8u;
        v161 = (v5 + 1);
        LODWORD(v160) = *v5;
        if ((v160 & 0x80) == 0)
        {
          goto LABEL_315;
        }

        v162 = *v161;
        v160 = (v160 + (v162 << 7) - 128);
        if (v162 < 0)
        {
          v257 = google::protobuf::internal::VarintParseSlow64(v5, v160);
          v278 = v257;
          *(a1 + 276) = v258;
          if (!v257)
          {
            return 0;
          }
        }

        else
        {
          v161 = (v5 + 2);
LABEL_315:
          v278 = v161;
          *(a1 + 276) = v160;
        }

        continue;
      case 0x19u:
        if (v6 != 200)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x10u;
        v101 = (v5 + 1);
        LODWORD(v100) = *v5;
        if ((v100 & 0x80) == 0)
        {
          goto LABEL_180;
        }

        v102 = *v101;
        v100 = (v100 + (v102 << 7) - 128);
        if (v102 < 0)
        {
          v237 = google::protobuf::internal::VarintParseSlow64(v5, v100);
          v278 = v237;
          *(a1 + 280) = v238;
          if (!v237)
          {
            return 0;
          }
        }

        else
        {
          v101 = (v5 + 2);
LABEL_180:
          v278 = v101;
          *(a1 + 280) = v100;
        }

        continue;
      case 0x1Au:
        if (v6 != 213)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x20u;
        v99 = *v5;
        v20 = (v5 + 4);
        *(a1 + 284) = v99;
        goto LABEL_384;
      case 0x1Bu:
        if (v6 != 221)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x40u;
        v171 = *v5;
        v20 = (v5 + 4);
        *(a1 + 288) = v171;
        goto LABEL_384;
      case 0x1Cu:
        if (v6 != 226)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x8000u;
        v57 = *(a1 + 152);
        if (v57)
        {
          goto LABEL_364;
        }

        v58 = *(a1 + 8);
        if (v58)
        {
          v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
        }

        v59 = MEMORY[0x277C97AA0](v58);
        LODWORD(v57) = v59;
        *(a1 + 152) = v59;
        goto LABEL_363;
      case 0x1Du:
        if (v6 != 234)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x10000u;
        v57 = *(a1 + 160);
        if (v57)
        {
          goto LABEL_364;
        }

        v163 = *(a1 + 8);
        if (v163)
        {
          v163 = *(v163 & 0xFFFFFFFFFFFFFFFELL);
        }

        v164 = MEMORY[0x277C97AA0](v163);
        LODWORD(v57) = v164;
        *(a1 + 160) = v164;
        goto LABEL_363;
      case 0x1Eu:
        if (v6 != 240)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x80u;
        v166 = (v5 + 1);
        LODWORD(v165) = *v5;
        if ((v165 & 0x80) == 0)
        {
          goto LABEL_325;
        }

        v167 = *v166;
        v165 = (v165 + (v167 << 7) - 128);
        if (v167 < 0)
        {
          v259 = google::protobuf::internal::VarintParseSlow64(v5, v165);
          v278 = v259;
          *(a1 + 292) = v260;
          if (!v259)
          {
            return 0;
          }
        }

        else
        {
          v166 = (v5 + 2);
LABEL_325:
          v278 = v166;
          *(a1 + 292) = v165;
        }

        continue;
      case 0x1Fu:
        if (v6 != 248)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x100u;
        v143 = (v5 + 1);
        LODWORD(v142) = *v5;
        if ((v142 & 0x80) == 0)
        {
          goto LABEL_280;
        }

        v144 = *v143;
        v142 = (v142 + (v144 << 7) - 128);
        if (v144 < 0)
        {
          v249 = google::protobuf::internal::VarintParseSlow64(v5, v142);
          v278 = v249;
          *(a1 + 296) = v250;
          if (!v249)
          {
            return 0;
          }
        }

        else
        {
          v143 = (v5 + 2);
LABEL_280:
          v278 = v143;
          *(a1 + 296) = v142;
        }

        continue;
      case 0x20u:
        if (v6 != 2)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x20000u;
        v45 = *(a1 + 168);
        if (v45)
        {
          goto LABEL_205;
        }

        v111 = *(a1 + 8);
        if (v111)
        {
          v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
        }

        v112 = MEMORY[0x277C97A80](v111);
        LODWORD(v45) = v112;
        *(a1 + 168) = v112;
        goto LABEL_204;
      case 0x21u:
        if (v6 != 13)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x200u;
        v145 = *v5;
        v20 = (v5 + 4);
        *(a1 + 300) = v145;
        goto LABEL_384;
      case 0x22u:
        if (v6 != 16)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x20000u;
        v70 = (v5 + 1);
        v69 = *v5;
        if ((v69 & 0x8000000000000000) == 0)
        {
          goto LABEL_119;
        }

        v71 = *v70;
        v69 = (v71 << 7) + v69 - 128;
        if (v71 < 0)
        {
          v223 = google::protobuf::internal::VarintParseSlow64(v5, v69);
          v278 = v223;
          *(a1 + 332) = v224 != 0;
          if (!v223)
          {
            return 0;
          }
        }

        else
        {
          v70 = (v5 + 2);
LABEL_119:
          v278 = v70;
          *(a1 + 332) = v69 != 0;
        }

        continue;
      case 0x23u:
        if (v6 != 29)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x400u;
        v60 = *v5;
        v20 = (v5 + 4);
        *(a1 + 304) = v60;
        goto LABEL_384;
      case 0x24u:
        if (v6 != 32)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x800u;
        v50 = (v5 + 1);
        LODWORD(v49) = *v5;
        if ((v49 & 0x80) == 0)
        {
          goto LABEL_83;
        }

        v51 = *v50;
        v49 = (v49 + (v51 << 7) - 128);
        if (v51 < 0)
        {
          v217 = google::protobuf::internal::VarintParseSlow64(v5, v49);
          v278 = v217;
          *(a1 + 308) = v218;
          if (!v217)
          {
            return 0;
          }
        }

        else
        {
          v50 = (v5 + 2);
LABEL_83:
          v278 = v50;
          *(a1 + 308) = v49;
        }

        continue;
      case 0x25u:
        if (v6 != 40)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x1000u;
        v53 = (v5 + 1);
        LODWORD(v52) = *v5;
        if ((v52 & 0x80) == 0)
        {
          goto LABEL_88;
        }

        v54 = *v53;
        v52 = (v52 + (v54 << 7) - 128);
        if (v54 < 0)
        {
          v219 = google::protobuf::internal::VarintParseSlow64(v5, v52);
          v278 = v219;
          *(a1 + 312) = v220;
          if (!v219)
          {
            return 0;
          }
        }

        else
        {
          v53 = (v5 + 2);
LABEL_88:
          v278 = v53;
          *(a1 + 312) = v52;
        }

        continue;
      case 0x26u:
        if (v6 != 50)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x40000u;
        v7 = *(a1 + 176);
        if (v7)
        {
          goto LABEL_275;
        }

        v37 = *(a1 + 8);
        if (v37)
        {
          v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
        }

        v38 = MEMORY[0x277C97B00](v37);
        LODWORD(v7) = v38;
        *(a1 + 176) = v38;
        goto LABEL_274;
      case 0x27u:
        if (v6 != 56)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x2000u;
        v169 = (v5 + 1);
        LODWORD(v168) = *v5;
        if ((v168 & 0x80) == 0)
        {
          goto LABEL_330;
        }

        v170 = *v169;
        v168 = (v168 + (v170 << 7) - 128);
        if (v170 < 0)
        {
          v261 = google::protobuf::internal::VarintParseSlow64(v5, v168);
          v278 = v261;
          *(a1 + 316) = v262;
          if (!v261)
          {
            return 0;
          }
        }

        else
        {
          v169 = (v5 + 2);
LABEL_330:
          v278 = v169;
          *(a1 + 316) = v168;
        }

        continue;
      case 0x28u:
        if (v6 != 69)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x4000u;
        v151 = *v5;
        v20 = (v5 + 4);
        *(a1 + 320) = v151;
        goto LABEL_384;
      case 0x29u:
        if (v6 != 72)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x8000u;
        v90 = (v5 + 1);
        LODWORD(v89) = *v5;
        if ((v89 & 0x80) == 0)
        {
          goto LABEL_156;
        }

        v91 = *v90;
        v89 = (v89 + (v91 << 7) - 128);
        if (v91 < 0)
        {
          v233 = google::protobuf::internal::VarintParseSlow64(v5, v89);
          v278 = v233;
          *(a1 + 324) = v234;
          if (!v233)
          {
            return 0;
          }
        }

        else
        {
          v90 = (v5 + 2);
LABEL_156:
          v278 = v90;
          *(a1 + 324) = v89;
        }

        continue;
      case 0x2Au:
        if (v6 != 82)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x80000u;
        v7 = *(a1 + 184);
        if (v7)
        {
          goto LABEL_275;
        }

        v115 = *(a1 + 8);
        if (v115)
        {
          v115 = *(v115 & 0xFFFFFFFFFFFFFFFELL);
        }

        v116 = MEMORY[0x277C97B00](v115);
        LODWORD(v7) = v116;
        *(a1 + 184) = v116;
LABEL_274:
        v5 = v278;
LABEL_275:
        v94 = sub_2764A8D08(a3, v7, v5);
        goto LABEL_365;
      case 0x2Bu:
        if (v6 != 88)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x10000u;
        v157 = (v5 + 1);
        LODWORD(v156) = *v5;
        if ((v156 & 0x80) == 0)
        {
          goto LABEL_308;
        }

        v158 = *v157;
        v156 = (v156 + (v158 << 7) - 128);
        if (v158 < 0)
        {
          v255 = google::protobuf::internal::VarintParseSlow64(v5, v156);
          v278 = v255;
          *(a1 + 328) = v256;
          if (!v255)
          {
            return 0;
          }
        }

        else
        {
          v157 = (v5 + 2);
LABEL_308:
          v278 = v157;
          *(a1 + 328) = v156;
        }

        continue;
      case 0x2Cu:
        if (v6 != 98)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x100000u;
        v25 = *(a1 + 192);
        if (v25)
        {
          goto LABEL_294;
        }

        v26 = *(a1 + 8);
        if (v26)
        {
          v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
        }

        v27 = MEMORY[0x277C97A90](v26);
        LODWORD(v25) = v27;
        *(a1 + 192) = v27;
        goto LABEL_293;
      case 0x2Du:
        if (v6 != 104)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x40000u;
        v66 = (v5 + 1);
        v65 = *v5;
        if ((v65 & 0x8000000000000000) == 0)
        {
          goto LABEL_112;
        }

        v67 = *v66;
        v65 = (v67 << 7) + v65 - 128;
        if (v67 < 0)
        {
          v221 = google::protobuf::internal::VarintParseSlow64(v5, v65);
          v278 = v221;
          *(a1 + 333) = v222 != 0;
          if (!v221)
          {
            return 0;
          }
        }

        else
        {
          v66 = (v5 + 2);
LABEL_112:
          v278 = v66;
          *(a1 + 333) = v65 != 0;
        }

        continue;
      case 0x2Eu:
        if (v6 != 112)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x80000u;
        v147 = (v5 + 1);
        v146 = *v5;
        if ((v146 & 0x8000000000000000) == 0)
        {
          goto LABEL_287;
        }

        v148 = *v147;
        v146 = (v148 << 7) + v146 - 128;
        if (v148 < 0)
        {
          v251 = google::protobuf::internal::VarintParseSlow64(v5, v146);
          v278 = v251;
          *(a1 + 334) = v252 != 0;
          if (!v251)
          {
            return 0;
          }
        }

        else
        {
          v147 = (v5 + 2);
LABEL_287:
          v278 = v147;
          *(a1 + 334) = v146 != 0;
        }

        continue;
      case 0x2Fu:
        if (v6 != 120)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x100000u;
        v184 = (v5 + 1);
        v183 = *v5;
        if ((v183 & 0x8000000000000000) == 0)
        {
          goto LABEL_357;
        }

        v185 = *v184;
        v183 = (v185 << 7) + v183 - 128;
        if (v185 < 0)
        {
          v269 = google::protobuf::internal::VarintParseSlow64(v5, v183);
          v278 = v269;
          *(a1 + 335) = v270 != 0;
          if (!v269)
          {
            return 0;
          }
        }

        else
        {
          v184 = (v5 + 2);
LABEL_357:
          v278 = v184;
          *(a1 + 335) = v183 != 0;
        }

        continue;
      case 0x30u:
        if (v6 != 128)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x200000u;
        v43 = (v5 + 1);
        v42 = *v5;
        if ((v42 & 0x8000000000000000) == 0)
        {
          goto LABEL_71;
        }

        v44 = *v43;
        v42 = (v44 << 7) + v42 - 128;
        if (v44 < 0)
        {
          v215 = google::protobuf::internal::VarintParseSlow64(v5, v42);
          v278 = v215;
          *(a1 + 336) = v216 != 0;
          if (!v215)
          {
            return 0;
          }
        }

        else
        {
          v43 = (v5 + 2);
LABEL_71:
          v278 = v43;
          *(a1 + 336) = v42 != 0;
        }

        continue;
      case 0x31u:
        if (v6 != 136)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x400000u;
        v73 = (v5 + 1);
        v72 = *v5;
        if ((v72 & 0x8000000000000000) == 0)
        {
          goto LABEL_124;
        }

        v74 = *v73;
        v72 = (v74 << 7) + v72 - 128;
        if (v74 < 0)
        {
          v225 = google::protobuf::internal::VarintParseSlow64(v5, v72);
          v278 = v225;
          *(a1 + 337) = v226 != 0;
          if (!v225)
          {
            return 0;
          }
        }

        else
        {
          v73 = (v5 + 2);
LABEL_124:
          v278 = v73;
          *(a1 + 337) = v72 != 0;
        }

        continue;
      case 0x32u:
        if (v6 != 144)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x800000u;
        v85 = (v5 + 1);
        v84 = *v5;
        if ((v84 & 0x8000000000000000) == 0)
        {
          goto LABEL_146;
        }

        v86 = *v85;
        v84 = (v86 << 7) + v84 - 128;
        if (v86 < 0)
        {
          v231 = google::protobuf::internal::VarintParseSlow64(v5, v84);
          v278 = v231;
          *(a1 + 338) = v232 != 0;
          if (!v231)
          {
            return 0;
          }
        }

        else
        {
          v85 = (v5 + 2);
LABEL_146:
          v278 = v85;
          *(a1 + 338) = v84 != 0;
        }

        continue;
      case 0x33u:
        if (v6 != 152)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x1000000u;
        v23 = (v5 + 1);
        v22 = *v5;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if (v24 < 0)
        {
          v205 = google::protobuf::internal::VarintParseSlow64(v5, v22);
          v278 = v205;
          *(a1 + 339) = v206 != 0;
          if (!v205)
          {
            return 0;
          }
        }

        else
        {
          v23 = (v5 + 2);
LABEL_36:
          v278 = v23;
          *(a1 + 339) = v22 != 0;
        }

        continue;
      case 0x34u:
        if (v6 != 160)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x4000000u;
        v192 = (v5 + 1);
        v191 = *v5;
        if ((v191 & 0x8000000000000000) == 0)
        {
          goto LABEL_376;
        }

        v193 = *v192;
        v191 = (v193 << 7) + v191 - 128;
        if (v193 < 0)
        {
          v273 = google::protobuf::internal::VarintParseSlow64(v5, v191);
          v278 = v273;
          *(a1 + 344) = v274 != 0;
          if (!v273)
          {
            return 0;
          }
        }

        else
        {
          v192 = (v5 + 2);
LABEL_376:
          v278 = v192;
          *(a1 + 344) = v191 != 0;
        }

        continue;
      case 0x35u:
        if (v6 != 168)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x8000000u;
        v181 = (v5 + 1);
        v180 = *v5;
        if ((v180 & 0x8000000000000000) == 0)
        {
          goto LABEL_352;
        }

        v182 = *v181;
        v180 = (v182 << 7) + v180 - 128;
        if (v182 < 0)
        {
          v267 = google::protobuf::internal::VarintParseSlow64(v5, v180);
          v278 = v267;
          *(a1 + 345) = v268 != 0;
          if (!v267)
          {
            return 0;
          }
        }

        else
        {
          v181 = (v5 + 2);
LABEL_352:
          v278 = v181;
          *(a1 + 345) = v180 != 0;
        }

        continue;
      case 0x36u:
        if (v6 != 176)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x2000000u;
        v40 = (v5 + 1);
        LODWORD(v39) = *v5;
        if ((v39 & 0x80) == 0)
        {
          goto LABEL_66;
        }

        v41 = *v40;
        v39 = (v39 + (v41 << 7) - 128);
        if (v41 < 0)
        {
          v213 = google::protobuf::internal::VarintParseSlow64(v5, v39);
          v278 = v213;
          *(a1 + 340) = v214;
          if (!v213)
          {
            return 0;
          }
        }

        else
        {
          v40 = (v5 + 2);
LABEL_66:
          v278 = v40;
          *(a1 + 340) = v39;
        }

        continue;
      case 0x37u:
        if (v6 != 184)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x10000000u;
        v173 = (v5 + 1);
        v172 = *v5;
        if ((v172 & 0x8000000000000000) == 0)
        {
          goto LABEL_337;
        }

        v174 = *v173;
        v172 = (v174 << 7) + v172 - 128;
        if (v174 < 0)
        {
          v263 = google::protobuf::internal::VarintParseSlow64(v5, v172);
          v278 = v263;
          *(a1 + 346) = v264 != 0;
          if (!v263)
          {
            return 0;
          }
        }

        else
        {
          v173 = (v5 + 2);
LABEL_337:
          v278 = v173;
          *(a1 + 346) = v172 != 0;
        }

        continue;
      case 0x38u:
        if (v6 != 194)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x200000u;
        v57 = *(a1 + 200);
        if (v57)
        {
          goto LABEL_364;
        }

        v178 = *(a1 + 8);
        if (v178)
        {
          v178 = *(v178 & 0xFFFFFFFFFFFFFFFELL);
        }

        v179 = MEMORY[0x277C97AA0](v178);
        LODWORD(v57) = v179;
        *(a1 + 200) = v179;
        goto LABEL_363;
      case 0x39u:
        if (v6 != 202)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x400000u;
        v45 = *(a1 + 208);
        if (v45)
        {
          goto LABEL_205;
        }

        v46 = *(a1 + 8);
        if (v46)
        {
          v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
        }

        v47 = MEMORY[0x277C97A80](v46);
        LODWORD(v45) = v47;
        *(a1 + 208) = v47;
LABEL_204:
        v5 = v278;
LABEL_205:
        v94 = sub_2764AC00C(a3, v45, v5);
        goto LABEL_365;
      case 0x3Au:
        if (v6 != 208)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x20000000u;
        v154 = (v5 + 1);
        v153 = *v5;
        if ((v153 & 0x8000000000000000) == 0)
        {
          goto LABEL_303;
        }

        v155 = *v154;
        v153 = (v155 << 7) + v153 - 128;
        if (v155 < 0)
        {
          v253 = google::protobuf::internal::VarintParseSlow64(v5, v153);
          v278 = v253;
          *(a1 + 347) = v254 != 0;
          if (!v253)
          {
            return 0;
          }
        }

        else
        {
          v154 = (v5 + 2);
LABEL_303:
          v278 = v154;
          *(a1 + 347) = v153 != 0;
        }

        continue;
      case 0x3Bu:
        if (v6 != 216)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 0x20u;
        v76 = (v5 + 1);
        v75 = *v5;
        if ((v75 & 0x8000000000000000) == 0)
        {
          goto LABEL_129;
        }

        v77 = *v76;
        v75 = (v77 << 7) + v75 - 128;
        if (v77 < 0)
        {
          v227 = google::protobuf::internal::VarintParseSlow64(v5, v75);
          v278 = v227;
          *(a1 + 376) = v228 != 0;
          if (!v227)
          {
            return 0;
          }
        }

        else
        {
          v76 = (v5 + 2);
LABEL_129:
          v278 = v76;
          *(a1 + 376) = v75 != 0;
        }

        continue;
      case 0x3Cu:
        if (v6 != 229)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x40000000u;
        v159 = *v5;
        v20 = (v5 + 4);
        *(a1 + 348) = v159;
        goto LABEL_384;
      case 0x3Du:
        if (v6 != 234)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x800000u;
        v57 = *(a1 + 216);
        if (v57)
        {
          goto LABEL_364;
        }

        v92 = *(a1 + 8);
        if (v92)
        {
          v92 = *(v92 & 0xFFFFFFFFFFFFFFFELL);
        }

        v93 = MEMORY[0x277C97AA0](v92);
        LODWORD(v57) = v93;
        *(a1 + 216) = v93;
        goto LABEL_363;
      case 0x3Eu:
        if (v6 != 240)
        {
          goto LABEL_386;
        }

        *(a1 + 20) |= 0x80000000;
        v124 = (v5 + 1);
        LODWORD(v123) = *v5;
        if ((v123 & 0x80) == 0)
        {
          goto LABEL_230;
        }

        v125 = *v124;
        v123 = (v123 + (v125 << 7) - 128);
        if (v125 < 0)
        {
          v243 = google::protobuf::internal::VarintParseSlow64(v5, v123);
          v278 = v243;
          *(a1 + 352) = v244;
          if (!v243)
          {
            return 0;
          }
        }

        else
        {
          v124 = (v5 + 2);
LABEL_230:
          v278 = v124;
          *(a1 + 352) = v123;
        }

        continue;
      case 0x3Fu:
        if (v6 != 253)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 1u;
        v131 = *v5;
        v20 = (v5 + 4);
        *(a1 + 356) = v131;
        goto LABEL_384;
      case 0x40u:
        if (v6 != 5)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 2u;
        v105 = *v5;
        v20 = (v5 + 4);
        *(a1 + 360) = v105;
        goto LABEL_384;
      case 0x41u:
        if (v6 != 10)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v94 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_365;
      case 0x42u:
        if (v6 != 16)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 4u;
        v129 = (v5 + 1);
        LODWORD(v128) = *v5;
        if ((v128 & 0x80) == 0)
        {
          goto LABEL_242;
        }

        v130 = *v129;
        v128 = (v128 + (v130 << 7) - 128);
        if (v130 < 0)
        {
          v245 = google::protobuf::internal::VarintParseSlow64(v5, v128);
          v278 = v245;
          *(a1 + 364) = v246;
          if (!v245)
          {
            return 0;
          }
        }

        else
        {
          v129 = (v5 + 2);
LABEL_242:
          v278 = v129;
          *(a1 + 364) = v128;
        }

        continue;
      case 0x43u:
        if (v6 != 24)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 8u;
        v29 = (v5 + 1);
        LODWORD(v28) = *v5;
        if ((v28 & 0x80) == 0)
        {
          goto LABEL_46;
        }

        v30 = *v29;
        v28 = (v28 + (v30 << 7) - 128);
        if (v30 < 0)
        {
          v207 = google::protobuf::internal::VarintParseSlow64(v5, v28);
          v278 = v207;
          *(a1 + 368) = v208;
          if (!v207)
          {
            return 0;
          }
        }

        else
        {
          v29 = (v5 + 2);
LABEL_46:
          v278 = v29;
          *(a1 + 368) = v28;
        }

        continue;
      case 0x44u:
        if (v6 != 37)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 0x10u;
        v64 = *v5;
        v20 = (v5 + 4);
        *(a1 + 372) = v64;
        goto LABEL_384;
      case 0x45u:
        if (v6 != 45)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 0x200u;
        v197 = *v5;
        v20 = (v5 + 4);
        *(a1 + 380) = v197;
        goto LABEL_384;
      case 0x46u:
        if (v6 != 50)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x1000000u;
        v25 = *(a1 + 224);
        if (v25)
        {
          goto LABEL_294;
        }

        v55 = *(a1 + 8);
        if (v55)
        {
          v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
        }

        v56 = MEMORY[0x277C97A90](v55);
        LODWORD(v25) = v56;
        *(a1 + 224) = v56;
LABEL_293:
        v5 = v278;
LABEL_294:
        v94 = sub_2764AC76C(a3, v25, v5);
        goto LABEL_365;
      case 0x47u:
        if (v6 != 56)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 0x40u;
        v18 = (v5 + 1);
        v17 = *v5;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if (v19 < 0)
        {
          v203 = google::protobuf::internal::VarintParseSlow64(v5, v17);
          v278 = v203;
          *(a1 + 377) = v204 != 0;
          if (!v203)
          {
            return 0;
          }
        }

        else
        {
          v18 = (v5 + 2);
LABEL_29:
          v278 = v18;
          *(a1 + 377) = v17 != 0;
        }

        continue;
      case 0x48u:
        if (v6 != 64)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 0x80u;
        v35 = (v5 + 1);
        v34 = *v5;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_56;
        }

        v36 = *v35;
        v34 = (v36 << 7) + v34 - 128;
        if (v36 < 0)
        {
          v211 = google::protobuf::internal::VarintParseSlow64(v5, v34);
          v278 = v211;
          *(a1 + 378) = v212 != 0;
          if (!v211)
          {
            return 0;
          }
        }

        else
        {
          v35 = (v5 + 2);
LABEL_56:
          v278 = v35;
          *(a1 + 378) = v34 != 0;
        }

        continue;
      case 0x49u:
        if (v6 != 72)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 0x100u;
        v176 = (v5 + 1);
        v175 = *v5;
        if ((v175 & 0x8000000000000000) == 0)
        {
          goto LABEL_342;
        }

        v177 = *v176;
        v175 = (v177 << 7) + v175 - 128;
        if (v177 < 0)
        {
          v265 = google::protobuf::internal::VarintParseSlow64(v5, v175);
          v278 = v265;
          *(a1 + 379) = v266 != 0;
          if (!v265)
          {
            return 0;
          }
        }

        else
        {
          v176 = (v5 + 2);
LABEL_342:
          v278 = v176;
          *(a1 + 379) = v175 != 0;
        }

        continue;
      case 0x4Au:
        if (v6 != 82)
        {
          goto LABEL_386;
        }

        *(a1 + 16) |= 0x2000000u;
        v57 = *(a1 + 232);
        if (v57)
        {
          goto LABEL_364;
        }

        v186 = *(a1 + 8);
        if (v186)
        {
          v186 = *(v186 & 0xFFFFFFFFFFFFFFFELL);
        }

        v187 = MEMORY[0x277C97AA0](v186);
        LODWORD(v57) = v187;
        *(a1 + 232) = v187;
LABEL_363:
        v5 = v278;
LABEL_364:
        v94 = sub_2764AC69C(a3, v57, v5);
        goto LABEL_365;
      case 0x4Bu:
        if (v6 != 88)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 0x400u;
        v189 = (v5 + 1);
        LODWORD(v188) = *v5;
        if ((v188 & 0x80) == 0)
        {
          goto LABEL_371;
        }

        v190 = *v189;
        v188 = (v188 + (v190 << 7) - 128);
        if (v190 < 0)
        {
          v271 = google::protobuf::internal::VarintParseSlow64(v5, v188);
          v278 = v271;
          *(a1 + 384) = v272;
          if (!v271)
          {
            return 0;
          }
        }

        else
        {
          v189 = (v5 + 2);
LABEL_371:
          v278 = v189;
          *(a1 + 384) = v188;
        }

        continue;
      case 0x4Cu:
        if (v6 != 101)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 0x800u;
        v48 = *v5;
        v20 = (v5 + 4);
        *(a1 + 388) = v48;
        goto LABEL_384;
      case 0x4Du:
        if (v6 != 104)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 0x1000u;
        v118 = (v5 + 1);
        LODWORD(v117) = *v5;
        if ((v117 & 0x80) == 0)
        {
          goto LABEL_220;
        }

        v119 = *v118;
        v117 = (v117 + (v119 << 7) - 128);
        if (v119 < 0)
        {
          v239 = google::protobuf::internal::VarintParseSlow64(v5, v117);
          v278 = v239;
          *(a1 + 392) = v240;
          if (!v239)
          {
            return 0;
          }
        }

        else
        {
          v118 = (v5 + 2);
LABEL_220:
          v278 = v118;
          *(a1 + 392) = v117;
        }

        continue;
      case 0x4Eu:
        if (v6 != 117)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 0x2000u;
        v21 = *v5;
        v20 = (v5 + 4);
        *(a1 + 396) = v21;
        goto LABEL_384;
      case 0x4Fu:
        if (v6 != 120)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 0x4000u;
        v195 = (v5 + 1);
        LODWORD(v194) = *v5;
        if ((v194 & 0x80) == 0)
        {
          goto LABEL_381;
        }

        v196 = *v195;
        v194 = (v194 + (v196 << 7) - 128);
        if (v196 < 0)
        {
          v275 = google::protobuf::internal::VarintParseSlow64(v5, v194);
          v278 = v275;
          *(a1 + 400) = v276;
          if (!v275)
          {
            return 0;
          }
        }

        else
        {
          v195 = (v5 + 2);
LABEL_381:
          v278 = v195;
          *(a1 + 400) = v194;
        }

        continue;
      case 0x50u:
        if (v6 != 128)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 0x8000u;
        v15 = (v5 + 1);
        LODWORD(v14) = *v5;
        if ((v14 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        v16 = *v15;
        v14 = (v14 + (v16 << 7) - 128);
        if (v16 < 0)
        {
          v201 = google::protobuf::internal::VarintParseSlow64(v5, v14);
          v278 = v201;
          *(a1 + 404) = v202;
          if (!v201)
          {
            return 0;
          }
        }

        else
        {
          v15 = (v5 + 2);
LABEL_24:
          v278 = v15;
          *(a1 + 404) = v14;
        }

        continue;
      case 0x51u:
        if (v6 != 136)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 0x10000u;
        v32 = (v5 + 1);
        LODWORD(v31) = *v5;
        if ((v31 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        v33 = *v32;
        v31 = (v31 + (v33 << 7) - 128);
        if (v33 < 0)
        {
          v209 = google::protobuf::internal::VarintParseSlow64(v5, v31);
          v278 = v209;
          *(a1 + 408) = v210;
          if (!v209)
          {
            return 0;
          }
        }

        else
        {
          v32 = (v5 + 2);
LABEL_51:
          v278 = v32;
          *(a1 + 408) = v31;
        }

        continue;
      case 0x52u:
        if (v6 != 144)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 0x20000u;
        v82 = (v5 + 1);
        LODWORD(v81) = *v5;
        if ((v81 & 0x80) == 0)
        {
          goto LABEL_141;
        }

        v83 = *v82;
        v81 = (v81 + (v83 << 7) - 128);
        if (v83 < 0)
        {
          v229 = google::protobuf::internal::VarintParseSlow64(v5, v81);
          v278 = v229;
          *(a1 + 412) = v230;
          if (!v229)
          {
            return 0;
          }
        }

        else
        {
          v82 = (v5 + 2);
LABEL_141:
          v278 = v82;
          *(a1 + 412) = v81;
        }

        continue;
      case 0x53u:
        if (v6 != 157)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 0x40000u;
        v78 = *v5;
        v20 = (v5 + 4);
        *(a1 + 416) = v78;
LABEL_384:
        v278 = v20;
        continue;
      case 0x54u:
        if (v6 != 160)
        {
          goto LABEL_386;
        }

        *(a1 + 24) |= 0x80000u;
        v12 = (v5 + 1);
        LODWORD(v11) = *v5;
        if ((v11 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v13 = *v12;
        v11 = (v11 + (v13 << 7) - 128);
        if (v13 < 0)
        {
          v199 = google::protobuf::internal::VarintParseSlow64(v5, v11);
          v278 = v199;
          *(a1 + 420) = v200;
          if (!v199)
          {
            return 0;
          }
        }

        else
        {
          v12 = (v5 + 2);
LABEL_19:
          v278 = v12;
          *(a1 + 420) = v11;
        }

        continue;
      default:
LABEL_386:
        if (v6)
        {
          v198 = (v6 & 7) == 4;
        }

        else
        {
          v198 = 1;
        }

        if (v198)
        {
          *(a3 + 80) = v6 - 1;
          return v278;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v94 = google::protobuf::internal::UnknownFieldParse();
LABEL_365:
        v278 = v94;
        if (v94)
        {
          continue;
        }

        return 0;
    }
  }
}

unsigned __int8 *sub_276430970(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*this <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v7 = *(a1 + 40);
    *v4 = 10;
    v8 = *(v7 + 12);
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

    v4 = TSK::FormatStructArchive::_InternalSerialize(v7, v9, this);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 0x4000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v13 = *(a1 + 48);
  *v4 = 18;
  v14 = *(v13 + 12);
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = v4 + 3;
      do
      {
        *(v15 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v15;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v15 - 1) = v17;
    }

    else
    {
      v4[2] = v16;
      v15 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v14;
    v15 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v13, v15, this);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_4:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v19 = *(a1 + 240);
  *v4 = 29;
  *(v4 + 1) = v19;
  v4 += 5;
  if ((v6 & 0x8000000) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v20 = *(a1 + 244);
  *v4 = 37;
  *(v4 + 1) = v20;
  v4 += 5;
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_47:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v21 = *(a1 + 56);
  *v4 = 42;
  v22 = *(v21 + 5);
  if (v22 > 0x7F)
  {
    v4[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = v4 + 3;
      do
      {
        *(v23 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++v23;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(v23 - 1) = v25;
    }

    else
    {
      v4[2] = v24;
      v23 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v22;
    v23 = v4 + 2;
  }

  v4 = TSD::LineEndArchive::_InternalSerialize(v21, v23, this);
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_67;
  }

LABEL_57:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v27 = *(a1 + 64);
  *v4 = 50;
  v28 = *(v27 + 5);
  if (v28 > 0x7F)
  {
    v4[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = v4 + 3;
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      v4[2] = v30;
      v29 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v28;
    v29 = v4 + 2;
  }

  v4 = TSD::LineEndArchive::_InternalSerialize(v27, v29, this);
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_77;
  }

LABEL_67:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v33 = *(a1 + 72);
  *v4 = 58;
  v34 = *(v33 + 5);
  if (v34 > 0x7F)
  {
    v4[1] = v34 | 0x80;
    v36 = v34 >> 7;
    if (v34 >> 14)
    {
      v35 = v4 + 3;
      do
      {
        *(v35 - 1) = v36 | 0x80;
        v37 = v36 >> 7;
        ++v35;
        v38 = v36 >> 14;
        v36 >>= 7;
      }

      while (v38);
      *(v35 - 1) = v37;
    }

    else
    {
      v4[2] = v36;
      v35 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v34;
    v35 = v4 + 2;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v33, v35, this);
  if ((v6 & 0x40) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_87;
  }

LABEL_77:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v39 = *(a1 + 80);
  *v4 = 66;
  v40 = *(v39 + 12);
  if (v40 > 0x7F)
  {
    v4[1] = v40 | 0x80;
    v42 = v40 >> 7;
    if (v40 >> 14)
    {
      v41 = v4 + 3;
      do
      {
        *(v41 - 1) = v42 | 0x80;
        v43 = v42 >> 7;
        ++v41;
        v44 = v42 >> 14;
        v42 >>= 7;
      }

      while (v44);
      *(v41 - 1) = v43;
    }

    else
    {
      v4[2] = v42;
      v41 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v40;
    v41 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v39, v41, this);
  if ((v6 & 0x80) == 0)
  {
LABEL_10:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_97:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v51 = *(a1 + 248);
    *v4 = 80;
    if (v51 > 0x7F)
    {
      v4[1] = v51 | 0x80;
      v52 = v51 >> 7;
      if (v51 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v52 | 0x80;
          v53 = v52 >> 7;
          ++v4;
          v54 = v52 >> 14;
          v52 >>= 7;
        }

        while (v54);
        *(v4 - 1) = v53;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_108;
        }
      }

      else
      {
        v4[2] = v52;
        v4 += 3;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_108;
        }
      }
    }

    else
    {
      v4[1] = v51;
      v4 += 2;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_108;
      }
    }

LABEL_12:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_118;
  }

LABEL_87:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v45 = *(a1 + 88);
  *v4 = 74;
  v46 = *(v45 + 12);
  if (v46 > 0x7F)
  {
    v4[1] = v46 | 0x80;
    v48 = v46 >> 7;
    if (v46 >> 14)
    {
      v47 = v4 + 3;
      do
      {
        *(v47 - 1) = v48 | 0x80;
        v49 = v48 >> 7;
        ++v47;
        v50 = v48 >> 14;
        v48 >>= 7;
      }

      while (v50);
      *(v47 - 1) = v49;
    }

    else
    {
      v4[2] = v48;
      v47 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v46;
    v47 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v45, v47, this);
  if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_97;
  }

LABEL_11:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_12;
  }

LABEL_108:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v55 = *(a1 + 96);
  *v4 = 90;
  v56 = *(v55 + 32);
  if (v56 > 0x7F)
  {
    v4[1] = v56 | 0x80;
    v58 = v56 >> 7;
    if (v56 >> 14)
    {
      v57 = (v4 + 3);
      do
      {
        *(v57 - 1) = v58 | 0x80;
        v59 = v58 >> 7;
        ++v57;
        v60 = v58 >> 14;
        v58 >>= 7;
      }

      while (v60);
      *(v57 - 1) = v59;
    }

    else
    {
      v4[2] = v58;
      v57 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v56;
    v57 = (v4 + 2);
  }

  v4 = sub_276400C0C(v55, v57, this);
  if ((v6 & 0x200) == 0)
  {
LABEL_13:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_128;
  }

LABEL_118:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v61 = *(a1 + 104);
  *v4 = 98;
  v62 = *(v61 + 32);
  if (v62 > 0x7F)
  {
    v4[1] = v62 | 0x80;
    v64 = v62 >> 7;
    if (v62 >> 14)
    {
      v63 = (v4 + 3);
      do
      {
        *(v63 - 1) = v64 | 0x80;
        v65 = v64 >> 7;
        ++v63;
        v66 = v64 >> 14;
        v64 >>= 7;
      }

      while (v66);
      *(v63 - 1) = v65;
    }

    else
    {
      v4[2] = v64;
      v63 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v62;
    v63 = (v4 + 2);
  }

  v4 = sub_276400C0C(v61, v63, this);
  if ((v6 & 0x400) == 0)
  {
LABEL_14:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_138;
  }

LABEL_128:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v67 = *(a1 + 112);
  *v4 = 106;
  v68 = *(v67 + 32);
  if (v68 > 0x7F)
  {
    v4[1] = v68 | 0x80;
    v70 = v68 >> 7;
    if (v68 >> 14)
    {
      v69 = (v4 + 3);
      do
      {
        *(v69 - 1) = v70 | 0x80;
        v71 = v70 >> 7;
        ++v69;
        v72 = v70 >> 14;
        v70 >>= 7;
      }

      while (v72);
      *(v69 - 1) = v71;
    }

    else
    {
      v4[2] = v70;
      v69 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v68;
    v69 = (v4 + 2);
  }

  v4 = sub_276400C0C(v67, v69, this);
  if ((v6 & 0x800) == 0)
  {
LABEL_15:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_148;
  }

LABEL_138:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v73 = *(a1 + 120);
  *v4 = 114;
  v74 = *(v73 + 32);
  if (v74 > 0x7F)
  {
    v4[1] = v74 | 0x80;
    v76 = v74 >> 7;
    if (v74 >> 14)
    {
      v75 = (v4 + 3);
      do
      {
        *(v75 - 1) = v76 | 0x80;
        v77 = v76 >> 7;
        ++v75;
        v78 = v76 >> 14;
        v76 >>= 7;
      }

      while (v78);
      *(v75 - 1) = v77;
    }

    else
    {
      v4[2] = v76;
      v75 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v74;
    v75 = (v4 + 2);
  }

  v4 = sub_276400C0C(v73, v75, this);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_16:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_151;
  }

LABEL_148:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v79 = *(a1 + 252);
  *v4 = 125;
  *(v4 + 1) = v79;
  v4 += 5;
  if ((v6 & 0x40000000) == 0)
  {
LABEL_17:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_154;
  }

LABEL_151:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v80 = *(a1 + 256);
  *v4 = 389;
  *(v4 + 2) = v80;
  v4 += 6;
  if ((v6 & 0x1000) == 0)
  {
LABEL_18:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_164;
  }

LABEL_154:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v81 = *(a1 + 128);
  *v4 = 394;
  v82 = *(v81 + 5);
  if (v82 > 0x7F)
  {
    v4[2] = v82 | 0x80;
    v84 = v82 >> 7;
    if (v82 >> 14)
    {
      v83 = v4 + 4;
      do
      {
        *(v83 - 1) = v84 | 0x80;
        v85 = v84 >> 7;
        ++v83;
        v86 = v84 >> 14;
        v84 >>= 7;
      }

      while (v86);
      *(v83 - 1) = v85;
    }

    else
    {
      v4[3] = v84;
      v83 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v82;
    v83 = v4 + 3;
  }

  v4 = TSD::LineEndArchive::_InternalSerialize(v81, v83, this);
  if ((v6 & 0x2000) == 0)
  {
LABEL_19:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_174;
  }

LABEL_164:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v87 = *(a1 + 136);
  *v4 = 402;
  v88 = *(v87 + 5);
  if (v88 > 0x7F)
  {
    v4[2] = v88 | 0x80;
    v90 = v88 >> 7;
    if (v88 >> 14)
    {
      v89 = v4 + 4;
      do
      {
        *(v89 - 1) = v90 | 0x80;
        v91 = v90 >> 7;
        ++v89;
        v92 = v90 >> 14;
        v90 >>= 7;
      }

      while (v92);
      *(v89 - 1) = v91;
    }

    else
    {
      v4[3] = v90;
      v89 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v88;
    v89 = v4 + 3;
  }

  v4 = TSD::LineEndArchive::_InternalSerialize(v87, v89, this);
  if (v6 < 0)
  {
LABEL_174:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v93 = *(a1 + 260);
    *v4 = 413;
    *(v4 + 2) = v93;
    v4 += 6;
  }

LABEL_177:
  v94 = *(a1 + 20);
  if (v94)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v96 = *(a1 + 264);
    *v4 = 421;
    *(v4 + 2) = v96;
    v4 += 6;
    if ((v94 & 2) == 0)
    {
LABEL_179:
      if ((v94 & 4) == 0)
      {
        goto LABEL_203;
      }

      goto LABEL_180;
    }
  }

  else if ((v94 & 2) == 0)
  {
    goto LABEL_179;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v97 = *(a1 + 268);
  *v4 = 424;
  if (v97 > 0x7F)
  {
    v4[2] = v97 | 0x80;
    v99 = v97 >> 7;
    if (v97 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v99 | 0x80;
        v102 = v99 >> 7;
        ++v4;
        v103 = v99 >> 14;
        v99 >>= 7;
      }

      while (v103);
      *(v4 - 1) = v102;
      if ((v94 & 4) == 0)
      {
        goto LABEL_203;
      }
    }

    else
    {
      v4[3] = v99;
      v4 += 4;
      if ((v94 & 4) == 0)
      {
        goto LABEL_203;
      }
    }
  }

  else
  {
    v4[2] = v97;
    v4 += 3;
    if ((v94 & 4) == 0)
    {
      goto LABEL_203;
    }
  }

LABEL_180:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v95 = *(a1 + 272);
  *v4 = 432;
  if (v95 > 0x7F)
  {
    v4[2] = v95 | 0x80;
    v98 = v95 >> 7;
    if (v95 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v98 | 0x80;
        v100 = v98 >> 7;
        ++v4;
        v101 = v98 >> 14;
        v98 >>= 7;
      }

      while (v101);
      *(v4 - 1) = v100;
    }

    else
    {
      v4[3] = v98;
      v4 += 4;
    }
  }

  else
  {
    v4[2] = v95;
    v4 += 3;
  }

LABEL_203:
  if ((*(a1 + 17) & 0x40) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v104 = *(a1 + 144);
    *v4 = 442;
    v105 = *(v104 + 5);
    if (v105 > 0x7F)
    {
      v4[2] = v105 | 0x80;
      v107 = v105 >> 7;
      if (v105 >> 14)
      {
        v106 = v4 + 4;
        do
        {
          *(v106 - 1) = v107 | 0x80;
          v108 = v107 >> 7;
          ++v106;
          v109 = v107 >> 14;
          v107 >>= 7;
        }

        while (v109);
        *(v106 - 1) = v108;
      }

      else
      {
        v4[3] = v107;
        v106 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v105;
      v106 = v4 + 3;
    }

    v4 = TSD::ShadowArchive::_InternalSerialize(v104, v106, this);
  }

  v110 = *(a1 + 20);
  if ((v110 & 8) == 0)
  {
    if ((v110 & 0x10) == 0)
    {
      goto LABEL_216;
    }

LABEL_230:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v115 = *(a1 + 280);
    *v4 = 456;
    if (v115 > 0x7F)
    {
      v4[2] = v115 | 0x80;
      v116 = v115 >> 7;
      if (v115 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v116 | 0x80;
          v117 = v116 >> 7;
          ++v4;
          v118 = v116 >> 14;
          v116 >>= 7;
        }

        while (v118);
        *(v4 - 1) = v117;
        if ((v110 & 0x20) != 0)
        {
          goto LABEL_241;
        }
      }

      else
      {
        v4[3] = v116;
        v4 += 4;
        if ((v110 & 0x20) != 0)
        {
          goto LABEL_241;
        }
      }
    }

    else
    {
      v4[2] = v115;
      v4 += 3;
      if ((v110 & 0x20) != 0)
      {
        goto LABEL_241;
      }
    }

LABEL_217:
    if ((v110 & 0x40) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_244;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v111 = *(a1 + 276);
  *v4 = 448;
  if (v111 > 0x7F)
  {
    v4[2] = v111 | 0x80;
    v112 = v111 >> 7;
    if (v111 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v112 | 0x80;
        v113 = v112 >> 7;
        ++v4;
        v114 = v112 >> 14;
        v112 >>= 7;
      }

      while (v114);
      *(v4 - 1) = v113;
      if ((v110 & 0x10) != 0)
      {
        goto LABEL_230;
      }
    }

    else
    {
      v4[3] = v112;
      v4 += 4;
      if ((v110 & 0x10) != 0)
      {
        goto LABEL_230;
      }
    }
  }

  else
  {
    v4[2] = v111;
    v4 += 3;
    if ((v110 & 0x10) != 0)
    {
      goto LABEL_230;
    }
  }

LABEL_216:
  if ((v110 & 0x20) == 0)
  {
    goto LABEL_217;
  }

LABEL_241:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v119 = *(a1 + 284);
  *v4 = 469;
  *(v4 + 2) = v119;
  v4 += 6;
  if ((v110 & 0x40) != 0)
  {
LABEL_244:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v120 = *(a1 + 288);
    *v4 = 477;
    *(v4 + 2) = v120;
    v4 += 6;
  }

LABEL_247:
  v121 = *(a1 + 16);
  if ((v121 & 0x8000) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v122 = *(a1 + 152);
    *v4 = 482;
    v123 = *(v122 + 5);
    if (v123 > 0x7F)
    {
      v4[2] = v123 | 0x80;
      v125 = v123 >> 7;
      if (v123 >> 14)
      {
        v124 = v4 + 4;
        do
        {
          *(v124 - 1) = v125 | 0x80;
          v126 = v125 >> 7;
          ++v124;
          v127 = v125 >> 14;
          v125 >>= 7;
        }

        while (v127);
        *(v124 - 1) = v126;
      }

      else
      {
        v4[3] = v125;
        v124 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v123;
      v124 = v4 + 3;
    }

    v4 = TSD::StrokeArchive::_InternalSerialize(v122, v124, this);
  }

  if ((v121 & 0x10000) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v128 = *(a1 + 160);
    *v4 = 490;
    v129 = *(v128 + 5);
    if (v129 > 0x7F)
    {
      v4[2] = v129 | 0x80;
      v131 = v129 >> 7;
      if (v129 >> 14)
      {
        v130 = v4 + 4;
        do
        {
          *(v130 - 1) = v131 | 0x80;
          v132 = v131 >> 7;
          ++v130;
          v133 = v131 >> 14;
          v131 >>= 7;
        }

        while (v133);
        *(v130 - 1) = v132;
      }

      else
      {
        v4[3] = v131;
        v130 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v129;
      v130 = v4 + 3;
    }

    v4 = TSD::StrokeArchive::_InternalSerialize(v128, v130, this);
  }

  v134 = *(a1 + 20);
  if ((v134 & 0x80) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v135 = *(a1 + 292);
    *v4 = 496;
    if (v135 <= 0x7F)
    {
      v4[2] = v135;
      v4 += 3;
      if ((v134 & 0x100) == 0)
      {
        goto LABEL_291;
      }

      goto LABEL_278;
    }

    v4[2] = v135 | 0x80;
    v136 = v135 >> 7;
    if (v135 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v136 | 0x80;
        v139 = v136 >> 7;
        ++v4;
        v140 = v136 >> 14;
        v136 >>= 7;
      }

      while (v140);
      *(v4 - 1) = v139;
      if ((v134 & 0x100) == 0)
      {
        goto LABEL_291;
      }

      goto LABEL_278;
    }

    v4[3] = v136;
    v4 += 4;
  }

  if ((v134 & 0x100) == 0)
  {
    goto LABEL_291;
  }

LABEL_278:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v137 = *(a1 + 296);
  *v4 = 504;
  if (v137 > 0x7F)
  {
    v4[2] = v137 | 0x80;
    v138 = v137 >> 7;
    if (v137 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v138 | 0x80;
        v141 = v138 >> 7;
        ++v4;
        v142 = v138 >> 14;
        v138 >>= 7;
      }

      while (v142);
      *(v4 - 1) = v141;
    }

    else
    {
      v4[3] = v138;
      v4 += 4;
    }
  }

  else
  {
    v4[2] = v137;
    v4 += 3;
  }

LABEL_291:
  if ((*(a1 + 18) & 2) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v143 = *(a1 + 168);
    *v4 = 642;
    v144 = *(v143 + 11);
    if (v144 > 0x7F)
    {
      v4[2] = v144 | 0x80;
      v146 = v144 >> 7;
      if (v144 >> 14)
      {
        v145 = v4 + 4;
        do
        {
          *(v145 - 1) = v146 | 0x80;
          v147 = v146 >> 7;
          ++v145;
          v148 = v146 >> 14;
          v146 >>= 7;
        }

        while (v148);
        *(v145 - 1) = v147;
      }

      else
      {
        v4[3] = v146;
        v145 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v144;
      v145 = v4 + 3;
    }

    v4 = TSD::FillArchive::_InternalSerialize(v143, v145, this);
  }

  v149 = *(a1 + 20);
  if ((v149 & 0x200) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v151 = *(a1 + 300);
    *v4 = 653;
    *(v4 + 2) = v151;
    v4 += 6;
    if ((v149 & 0x20000) == 0)
    {
LABEL_304:
      if ((v149 & 0x400) == 0)
      {
        goto LABEL_305;
      }

      goto LABEL_317;
    }
  }

  else if ((v149 & 0x20000) == 0)
  {
    goto LABEL_304;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v152 = *(a1 + 332);
  *v4 = 656;
  v4[2] = v152;
  v4 += 3;
  if ((v149 & 0x400) == 0)
  {
LABEL_305:
    if ((v149 & 0x800) == 0)
    {
      goto LABEL_306;
    }

    goto LABEL_320;
  }

LABEL_317:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v153 = *(a1 + 304);
  *v4 = 669;
  *(v4 + 2) = v153;
  v4 += 6;
  if ((v149 & 0x800) == 0)
  {
LABEL_306:
    if ((v149 & 0x1000) == 0)
    {
      goto LABEL_336;
    }

    goto LABEL_307;
  }

LABEL_320:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v154 = *(a1 + 308);
  *v4 = 672;
  if (v154 > 0x7F)
  {
    v4[2] = v154 | 0x80;
    v156 = v154 >> 7;
    if (v154 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v156 | 0x80;
        v159 = v156 >> 7;
        ++v4;
        v160 = v156 >> 14;
        v156 >>= 7;
      }

      while (v160);
      *(v4 - 1) = v159;
      if ((v149 & 0x1000) == 0)
      {
        goto LABEL_336;
      }
    }

    else
    {
      v4[3] = v156;
      v4 += 4;
      if ((v149 & 0x1000) == 0)
      {
        goto LABEL_336;
      }
    }
  }

  else
  {
    v4[2] = v154;
    v4 += 3;
    if ((v149 & 0x1000) == 0)
    {
      goto LABEL_336;
    }
  }

LABEL_307:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v150 = *(a1 + 312);
  *v4 = 680;
  if (v150 > 0x7F)
  {
    v4[2] = v150 | 0x80;
    v155 = v150 >> 7;
    if (v150 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v155 | 0x80;
        v157 = v155 >> 7;
        ++v4;
        v158 = v155 >> 14;
        v155 >>= 7;
      }

      while (v158);
      *(v4 - 1) = v157;
    }

    else
    {
      v4[3] = v155;
      v4 += 4;
    }
  }

  else
  {
    v4[2] = v150;
    v4 += 3;
  }

LABEL_336:
  if ((*(a1 + 18) & 4) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v161 = *(a1 + 176);
    *v4 = 690;
    v162 = *(v161 + 12);
    if (v162 > 0x7F)
    {
      v4[2] = v162 | 0x80;
      v164 = v162 >> 7;
      if (v162 >> 14)
      {
        v163 = v4 + 4;
        do
        {
          *(v163 - 1) = v164 | 0x80;
          v165 = v164 >> 7;
          ++v163;
          v166 = v164 >> 14;
          v164 >>= 7;
        }

        while (v166);
        *(v163 - 1) = v165;
      }

      else
      {
        v4[3] = v164;
        v163 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v162;
      v163 = v4 + 3;
    }

    v4 = TSK::FormatStructArchive::_InternalSerialize(v161, v163, this);
  }

  v167 = *(a1 + 20);
  if ((v167 & 0x2000) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v168 = *(a1 + 316);
    *v4 = 696;
    if (v168 > 0x7F)
    {
      v4[2] = v168 | 0x80;
      v169 = v168 >> 7;
      if (v168 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v169 | 0x80;
          v170 = v169 >> 7;
          ++v4;
          v171 = v169 >> 14;
          v169 >>= 7;
        }

        while (v171);
        *(v4 - 1) = v170;
        if ((v167 & 0x4000) != 0)
        {
          goto LABEL_362;
        }
      }

      else
      {
        v4[3] = v169;
        v4 += 4;
        if ((v167 & 0x4000) != 0)
        {
          goto LABEL_362;
        }
      }
    }

    else
    {
      v4[2] = v168;
      v4 += 3;
      if ((v167 & 0x4000) != 0)
      {
        goto LABEL_362;
      }
    }

LABEL_349:
    if ((v167 & 0x8000) == 0)
    {
      goto LABEL_374;
    }

    goto LABEL_365;
  }

  if ((v167 & 0x4000) == 0)
  {
    goto LABEL_349;
  }

LABEL_362:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v172 = *(a1 + 320);
  *v4 = 709;
  *(v4 + 2) = v172;
  v4 += 6;
  if ((v167 & 0x8000) != 0)
  {
LABEL_365:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v173 = *(a1 + 324);
    *v4 = 712;
    if (v173 > 0x7F)
    {
      v4[2] = v173 | 0x80;
      v174 = v173 >> 7;
      if (v173 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v174 | 0x80;
          v175 = v174 >> 7;
          ++v4;
          v176 = v174 >> 14;
          v174 >>= 7;
        }

        while (v176);
        *(v4 - 1) = v175;
      }

      else
      {
        v4[3] = v174;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v173;
      v4 += 3;
    }
  }

LABEL_374:
  if ((*(a1 + 18) & 8) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v177 = *(a1 + 184);
    *v4 = 722;
    v178 = *(v177 + 12);
    if (v178 > 0x7F)
    {
      v4[2] = v178 | 0x80;
      v180 = v178 >> 7;
      if (v178 >> 14)
      {
        v179 = v4 + 4;
        do
        {
          *(v179 - 1) = v180 | 0x80;
          v181 = v180 >> 7;
          ++v179;
          v182 = v180 >> 14;
          v180 >>= 7;
        }

        while (v182);
        *(v179 - 1) = v181;
      }

      else
      {
        v4[3] = v180;
        v179 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v178;
      v179 = v4 + 3;
    }

    v4 = TSK::FormatStructArchive::_InternalSerialize(v177, v179, this);
  }

  if (*(a1 + 22))
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v183 = *(a1 + 328);
    *v4 = 728;
    if (v183 > 0x7F)
    {
      v4[2] = v183 | 0x80;
      v184 = v183 >> 7;
      if (v183 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v184 | 0x80;
          v185 = v184 >> 7;
          ++v4;
          v186 = v184 >> 14;
          v184 >>= 7;
        }

        while (v186);
        *(v4 - 1) = v185;
      }

      else
      {
        v4[3] = v184;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v183;
      v4 += 3;
    }
  }

  if ((*(a1 + 18) & 0x10) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v187 = *(a1 + 192);
    *v4 = 738;
    v188 = *(v187 + 5);
    if (v188 > 0x7F)
    {
      v4[2] = v188 | 0x80;
      v190 = v188 >> 7;
      if (v188 >> 14)
      {
        v189 = v4 + 4;
        do
        {
          *(v189 - 1) = v190 | 0x80;
          v191 = v190 >> 7;
          ++v189;
          v192 = v190 >> 14;
          v190 >>= 7;
        }

        while (v192);
        *(v189 - 1) = v191;
      }

      else
      {
        v4[3] = v190;
        v189 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v188;
      v189 = v4 + 3;
    }

    v4 = TSD::ShadowArchive::_InternalSerialize(v187, v189, this);
  }

  v193 = *(a1 + 20);
  if ((v193 & 0x40000) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v199 = *(a1 + 333);
    *v4 = 744;
    v4[2] = v199;
    v4 += 3;
    if ((v193 & 0x80000) == 0)
    {
LABEL_408:
      if ((v193 & 0x100000) == 0)
      {
        goto LABEL_409;
      }

      goto LABEL_431;
    }
  }

  else if ((v193 & 0x80000) == 0)
  {
    goto LABEL_408;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v200 = *(a1 + 334);
  *v4 = 752;
  v4[2] = v200;
  v4 += 3;
  if ((v193 & 0x100000) == 0)
  {
LABEL_409:
    if ((v193 & 0x200000) == 0)
    {
      goto LABEL_410;
    }

    goto LABEL_434;
  }

LABEL_431:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v201 = *(a1 + 335);
  *v4 = 760;
  v4[2] = v201;
  v4 += 3;
  if ((v193 & 0x200000) == 0)
  {
LABEL_410:
    if ((v193 & 0x400000) == 0)
    {
      goto LABEL_411;
    }

    goto LABEL_437;
  }

LABEL_434:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v202 = *(a1 + 336);
  *v4 = 896;
  v4[2] = v202;
  v4 += 3;
  if ((v193 & 0x400000) == 0)
  {
LABEL_411:
    if ((v193 & 0x800000) == 0)
    {
      goto LABEL_412;
    }

    goto LABEL_440;
  }

LABEL_437:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v203 = *(a1 + 337);
  *v4 = 904;
  v4[2] = v203;
  v4 += 3;
  if ((v193 & 0x800000) == 0)
  {
LABEL_412:
    if ((v193 & 0x1000000) == 0)
    {
      goto LABEL_413;
    }

    goto LABEL_443;
  }

LABEL_440:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v204 = *(a1 + 338);
  *v4 = 912;
  v4[2] = v204;
  v4 += 3;
  if ((v193 & 0x1000000) == 0)
  {
LABEL_413:
    if ((v193 & 0x4000000) == 0)
    {
      goto LABEL_414;
    }

    goto LABEL_446;
  }

LABEL_443:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v205 = *(a1 + 339);
  *v4 = 920;
  v4[2] = v205;
  v4 += 3;
  if ((v193 & 0x4000000) == 0)
  {
LABEL_414:
    if ((v193 & 0x8000000) == 0)
    {
      goto LABEL_415;
    }

    goto LABEL_449;
  }

LABEL_446:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v206 = *(a1 + 344);
  *v4 = 928;
  v4[2] = v206;
  v4 += 3;
  if ((v193 & 0x8000000) == 0)
  {
LABEL_415:
    if ((v193 & 0x2000000) == 0)
    {
      goto LABEL_416;
    }

    goto LABEL_452;
  }

LABEL_449:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v207 = *(a1 + 345);
  *v4 = 936;
  v4[2] = v207;
  v4 += 3;
  if ((v193 & 0x2000000) == 0)
  {
LABEL_416:
    if ((v193 & 0x10000000) == 0)
    {
      goto LABEL_420;
    }

    goto LABEL_417;
  }

LABEL_452:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v208 = *(a1 + 340);
  *v4 = 944;
  if (v208 > 0x7F)
  {
    v4[2] = v208 | 0x80;
    v210 = v208 >> 7;
    if (v208 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v210 | 0x80;
        v217 = v210 >> 7;
        ++v4;
        v218 = v210 >> 14;
        v210 >>= 7;
      }

      while (v218);
      *(v4 - 1) = v217;
      if ((v193 & 0x10000000) == 0)
      {
        goto LABEL_420;
      }
    }

    else
    {
      v4[3] = v210;
      v4 += 4;
      if ((v193 & 0x10000000) == 0)
      {
        goto LABEL_420;
      }
    }
  }

  else
  {
    v4[2] = v208;
    v4 += 3;
    if ((v193 & 0x10000000) == 0)
    {
      goto LABEL_420;
    }
  }

LABEL_417:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v194 = *(a1 + 346);
  *v4 = 952;
  v4[2] = v194;
  v4 += 3;
LABEL_420:
  v195 = *(a1 + 16);
  if ((v195 & 0x200000) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v196 = *(a1 + 200);
    *v4 = 962;
    v197 = *(v196 + 5);
    if (v197 > 0x7F)
    {
      v4[2] = v197 | 0x80;
      v209 = v197 >> 7;
      if (v197 >> 14)
      {
        v198 = v4 + 4;
        do
        {
          *(v198 - 1) = v209 | 0x80;
          v211 = v209 >> 7;
          ++v198;
          v212 = v209 >> 14;
          v209 >>= 7;
        }

        while (v212);
        *(v198 - 1) = v211;
      }

      else
      {
        v4[3] = v209;
        v198 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v197;
      v198 = v4 + 3;
    }

    v4 = TSD::StrokeArchive::_InternalSerialize(v196, v198, this);
  }

  if ((v195 & 0x400000) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v213 = *(a1 + 208);
    *v4 = 970;
    v214 = *(v213 + 11);
    if (v214 > 0x7F)
    {
      v4[2] = v214 | 0x80;
      v216 = v214 >> 7;
      if (v214 >> 14)
      {
        v215 = v4 + 4;
        do
        {
          *(v215 - 1) = v216 | 0x80;
          v219 = v216 >> 7;
          ++v215;
          v220 = v216 >> 14;
          v216 >>= 7;
        }

        while (v220);
        *(v215 - 1) = v219;
      }

      else
      {
        v4[3] = v216;
        v215 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v214;
      v215 = v4 + 3;
    }

    v4 = TSD::FillArchive::_InternalSerialize(v213, v215, this);
  }

  if ((*(a1 + 23) & 0x20) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v221 = *(a1 + 347);
    *v4 = 976;
    v4[2] = v221;
    v4 += 3;
  }

  if ((*(a1 + 24) & 0x20) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v222 = *(a1 + 376);
    *v4 = 984;
    v4[2] = v222;
    v4 += 3;
  }

  if ((*(a1 + 23) & 0x40) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v223 = *(a1 + 348);
    *v4 = 997;
    *(v4 + 2) = v223;
    v4 += 6;
  }

  if ((*(a1 + 18) & 0x80) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v224 = *(a1 + 216);
    *v4 = 1002;
    v225 = *(v224 + 5);
    if (v225 > 0x7F)
    {
      v4[2] = v225 | 0x80;
      v227 = v225 >> 7;
      if (v225 >> 14)
      {
        v226 = v4 + 4;
        do
        {
          *(v226 - 1) = v227 | 0x80;
          v228 = v227 >> 7;
          ++v226;
          v229 = v227 >> 14;
          v227 >>= 7;
        }

        while (v229);
        *(v226 - 1) = v228;
      }

      else
      {
        v4[3] = v227;
        v226 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v225;
      v226 = v4 + 3;
    }

    v4 = TSD::StrokeArchive::_InternalSerialize(v224, v226, this);
  }

  if ((*(a1 + 20) & 0x80000000) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v230 = *(a1 + 352);
    *v4 = 1008;
    if (v230 > 0x7F)
    {
      v4[2] = v230 | 0x80;
      v231 = v230 >> 7;
      if (v230 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v231 | 0x80;
          v232 = v231 >> 7;
          ++v4;
          v233 = v231 >> 14;
          v231 >>= 7;
        }

        while (v233);
        *(v4 - 1) = v232;
      }

      else
      {
        v4[3] = v231;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v230;
      v4 += 3;
    }
  }

  v234 = *(a1 + 24);
  if (v234)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v235 = *(a1 + 356);
    *v4 = 1021;
    *(v4 + 2) = v235;
    v4 += 6;
  }

  if ((v234 & 2) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v236 = *(a1 + 360);
    *v4 = 1157;
    *(v4 + 2) = v236;
    v4 += 6;
  }

  if (*(a1 + 16))
  {
    v4 = sub_2763DD938(this, 65, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v237 = *(a1 + 24);
  if ((v237 & 4) == 0)
  {
    if ((v237 & 8) == 0)
    {
      goto LABEL_526;
    }

LABEL_540:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v242 = *(a1 + 368);
    *v4 = 1176;
    if (v242 > 0x7F)
    {
      v4[2] = v242 | 0x80;
      v243 = v242 >> 7;
      if (v242 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v243 | 0x80;
          v244 = v243 >> 7;
          ++v4;
          v245 = v243 >> 14;
          v243 >>= 7;
        }

        while (v245);
        *(v4 - 1) = v244;
        if ((v237 & 0x10) != 0)
        {
          goto LABEL_551;
        }
      }

      else
      {
        v4[3] = v243;
        v4 += 4;
        if ((v237 & 0x10) != 0)
        {
          goto LABEL_551;
        }
      }
    }

    else
    {
      v4[2] = v242;
      v4 += 3;
      if ((v237 & 0x10) != 0)
      {
        goto LABEL_551;
      }
    }

LABEL_527:
    if ((v237 & 0x200) == 0)
    {
      goto LABEL_557;
    }

    goto LABEL_554;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v238 = *(a1 + 364);
  *v4 = 1168;
  if (v238 > 0x7F)
  {
    v4[2] = v238 | 0x80;
    v239 = v238 >> 7;
    if (v238 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v239 | 0x80;
        v240 = v239 >> 7;
        ++v4;
        v241 = v239 >> 14;
        v239 >>= 7;
      }

      while (v241);
      *(v4 - 1) = v240;
      if ((v237 & 8) != 0)
      {
        goto LABEL_540;
      }
    }

    else
    {
      v4[3] = v239;
      v4 += 4;
      if ((v237 & 8) != 0)
      {
        goto LABEL_540;
      }
    }
  }

  else
  {
    v4[2] = v238;
    v4 += 3;
    if ((v237 & 8) != 0)
    {
      goto LABEL_540;
    }
  }

LABEL_526:
  if ((v237 & 0x10) == 0)
  {
    goto LABEL_527;
  }

LABEL_551:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v246 = *(a1 + 372);
  *v4 = 1189;
  *(v4 + 2) = v246;
  v4 += 6;
  if ((v237 & 0x200) != 0)
  {
LABEL_554:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v247 = *(a1 + 380);
    *v4 = 1197;
    *(v4 + 2) = v247;
    v4 += 6;
  }

LABEL_557:
  if (*(a1 + 19))
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v248 = *(a1 + 224);
    *v4 = 1202;
    v249 = *(v248 + 5);
    if (v249 > 0x7F)
    {
      v4[2] = v249 | 0x80;
      v251 = v249 >> 7;
      if (v249 >> 14)
      {
        v250 = v4 + 4;
        do
        {
          *(v250 - 1) = v251 | 0x80;
          v252 = v251 >> 7;
          ++v250;
          v253 = v251 >> 14;
          v251 >>= 7;
        }

        while (v253);
        *(v250 - 1) = v252;
      }

      else
      {
        v4[3] = v251;
        v250 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v249;
      v250 = v4 + 3;
    }

    v4 = TSD::ShadowArchive::_InternalSerialize(v248, v250, this);
  }

  v254 = *(a1 + 24);
  if ((v254 & 0x40) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v255 = *(a1 + 377);
    *v4 = 1208;
    v4[2] = v255;
    v4 += 3;
    if ((v254 & 0x80) == 0)
    {
LABEL_570:
      if ((v254 & 0x100) == 0)
      {
        goto LABEL_581;
      }

      goto LABEL_578;
    }
  }

  else if ((v254 & 0x80) == 0)
  {
    goto LABEL_570;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v256 = *(a1 + 378);
  *v4 = 1216;
  v4[2] = v256;
  v4 += 3;
  if ((v254 & 0x100) != 0)
  {
LABEL_578:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v257 = *(a1 + 379);
    *v4 = 1224;
    v4[2] = v257;
    v4 += 3;
  }

LABEL_581:
  if ((*(a1 + 19) & 2) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v258 = *(a1 + 232);
    *v4 = 1234;
    v259 = *(v258 + 5);
    if (v259 > 0x7F)
    {
      v4[2] = v259 | 0x80;
      v261 = v259 >> 7;
      if (v259 >> 14)
      {
        v260 = v4 + 4;
        do
        {
          *(v260 - 1) = v261 | 0x80;
          v262 = v261 >> 7;
          ++v260;
          v263 = v261 >> 14;
          v261 >>= 7;
        }

        while (v263);
        *(v260 - 1) = v262;
      }

      else
      {
        v4[3] = v261;
        v260 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v259;
      v260 = v4 + 3;
    }

    v4 = TSD::StrokeArchive::_InternalSerialize(v258, v260, this);
  }

  v264 = *(a1 + 24);
  if ((v264 & 0x400) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v265 = *(a1 + 384);
    *v4 = 1240;
    if (v265 > 0x7F)
    {
      v4[2] = v265 | 0x80;
      v266 = v265 >> 7;
      if (v265 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v266 | 0x80;
          v267 = v266 >> 7;
          ++v4;
          v268 = v266 >> 14;
          v266 >>= 7;
        }

        while (v268);
        *(v4 - 1) = v267;
        if ((v264 & 0x800) != 0)
        {
          goto LABEL_614;
        }
      }

      else
      {
        v4[3] = v266;
        v4 += 4;
        if ((v264 & 0x800) != 0)
        {
          goto LABEL_614;
        }
      }
    }

    else
    {
      v4[2] = v265;
      v4 += 3;
      if ((v264 & 0x800) != 0)
      {
        goto LABEL_614;
      }
    }

LABEL_594:
    if ((v264 & 0x1000) == 0)
    {
      goto LABEL_595;
    }

LABEL_617:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v270 = *(a1 + 392);
    *v4 = 1256;
    if (v270 > 0x7F)
    {
      v4[2] = v270 | 0x80;
      v271 = v270 >> 7;
      if (v270 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v271 | 0x80;
          v272 = v271 >> 7;
          ++v4;
          v273 = v271 >> 14;
          v271 >>= 7;
        }

        while (v273);
        *(v4 - 1) = v272;
        if ((v264 & 0x2000) != 0)
        {
          goto LABEL_628;
        }
      }

      else
      {
        v4[3] = v271;
        v4 += 4;
        if ((v264 & 0x2000) != 0)
        {
          goto LABEL_628;
        }
      }
    }

    else
    {
      v4[2] = v270;
      v4 += 3;
      if ((v264 & 0x2000) != 0)
      {
        goto LABEL_628;
      }
    }

LABEL_596:
    if ((v264 & 0x4000) == 0)
    {
      goto LABEL_597;
    }

    goto LABEL_631;
  }

  if ((v264 & 0x800) == 0)
  {
    goto LABEL_594;
  }

LABEL_614:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v269 = *(a1 + 388);
  *v4 = 1253;
  *(v4 + 2) = v269;
  v4 += 6;
  if ((v264 & 0x1000) != 0)
  {
    goto LABEL_617;
  }

LABEL_595:
  if ((v264 & 0x2000) == 0)
  {
    goto LABEL_596;
  }

LABEL_628:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v274 = *(a1 + 396);
  *v4 = 1269;
  *(v4 + 2) = v274;
  v4 += 6;
  if ((v264 & 0x4000) == 0)
  {
LABEL_597:
    if ((v264 & 0x8000) == 0)
    {
      goto LABEL_598;
    }

LABEL_642:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v279 = *(a1 + 404);
    *v4 = 1408;
    if (v279 > 0x7F)
    {
      v4[2] = v279 | 0x80;
      v280 = v279 >> 7;
      if (v279 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v280 | 0x80;
          v281 = v280 >> 7;
          ++v4;
          v282 = v280 >> 14;
          v280 >>= 7;
        }

        while (v282);
        *(v4 - 1) = v281;
        if ((v264 & 0x10000) != 0)
        {
          goto LABEL_653;
        }
      }

      else
      {
        v4[3] = v280;
        v4 += 4;
        if ((v264 & 0x10000) != 0)
        {
          goto LABEL_653;
        }
      }
    }

    else
    {
      v4[2] = v279;
      v4 += 3;
      if ((v264 & 0x10000) != 0)
      {
        goto LABEL_653;
      }
    }

LABEL_599:
    if ((v264 & 0x20000) == 0)
    {
      goto LABEL_600;
    }

LABEL_664:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v287 = *(a1 + 412);
    *v4 = 1424;
    if (v287 > 0x7F)
    {
      v4[2] = v287 | 0x80;
      v288 = v287 >> 7;
      if (v287 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v288 | 0x80;
          v289 = v288 >> 7;
          ++v4;
          v290 = v288 >> 14;
          v288 >>= 7;
        }

        while (v290);
        *(v4 - 1) = v289;
        if ((v264 & 0x40000) != 0)
        {
          goto LABEL_675;
        }
      }

      else
      {
        v4[3] = v288;
        v4 += 4;
        if ((v264 & 0x40000) != 0)
        {
          goto LABEL_675;
        }
      }
    }

    else
    {
      v4[2] = v287;
      v4 += 3;
      if ((v264 & 0x40000) != 0)
      {
        goto LABEL_675;
      }
    }

LABEL_601:
    if ((v264 & 0x80000) == 0)
    {
      goto LABEL_687;
    }

    goto LABEL_678;
  }

LABEL_631:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v275 = *(a1 + 400);
  *v4 = 1272;
  if (v275 > 0x7F)
  {
    v4[2] = v275 | 0x80;
    v276 = v275 >> 7;
    if (v275 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v276 | 0x80;
        v277 = v276 >> 7;
        ++v4;
        v278 = v276 >> 14;
        v276 >>= 7;
      }

      while (v278);
      *(v4 - 1) = v277;
      if ((v264 & 0x8000) != 0)
      {
        goto LABEL_642;
      }
    }

    else
    {
      v4[3] = v276;
      v4 += 4;
      if ((v264 & 0x8000) != 0)
      {
        goto LABEL_642;
      }
    }
  }

  else
  {
    v4[2] = v275;
    v4 += 3;
    if ((v264 & 0x8000) != 0)
    {
      goto LABEL_642;
    }
  }

LABEL_598:
  if ((v264 & 0x10000) == 0)
  {
    goto LABEL_599;
  }

LABEL_653:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v283 = *(a1 + 408);
  *v4 = 1416;
  if (v283 > 0x7F)
  {
    v4[2] = v283 | 0x80;
    v284 = v283 >> 7;
    if (v283 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v284 | 0x80;
        v285 = v284 >> 7;
        ++v4;
        v286 = v284 >> 14;
        v284 >>= 7;
      }

      while (v286);
      *(v4 - 1) = v285;
      if ((v264 & 0x20000) != 0)
      {
        goto LABEL_664;
      }
    }

    else
    {
      v4[3] = v284;
      v4 += 4;
      if ((v264 & 0x20000) != 0)
      {
        goto LABEL_664;
      }
    }
  }

  else
  {
    v4[2] = v283;
    v4 += 3;
    if ((v264 & 0x20000) != 0)
    {
      goto LABEL_664;
    }
  }

LABEL_600:
  if ((v264 & 0x40000) == 0)
  {
    goto LABEL_601;
  }

LABEL_675:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v291 = *(a1 + 416);
  *v4 = 1437;
  *(v4 + 2) = v291;
  v4 += 6;
  if ((v264 & 0x80000) != 0)
  {
LABEL_678:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v292 = *(a1 + 420);
    *v4 = 1440;
    if (v292 > 0x7F)
    {
      v4[2] = v292 | 0x80;
      v293 = v292 >> 7;
      if (v292 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v293 | 0x80;
          v294 = v293 >> 7;
          ++v4;
          v295 = v293 >> 14;
          v293 >>= 7;
        }

        while (v295);
        *(v4 - 1) = v294;
      }

      else
      {
        v4[3] = v293;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v292;
      v4 += 3;
    }
  }

LABEL_687:
  v296 = *(a1 + 8);
  if ((v296 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v296 & 0xFFFFFFFFFFFFFFFELL) + 8);
}