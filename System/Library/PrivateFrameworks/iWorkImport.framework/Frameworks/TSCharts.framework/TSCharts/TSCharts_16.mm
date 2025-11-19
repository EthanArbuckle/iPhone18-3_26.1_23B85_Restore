uint64_t sub_27640A194(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = sub_27643F014(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_27643F014(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v26 = sub_27643F014(*(a1 + 40));
    v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_73;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v27 = sub_27643F014(*(a1 + 48));
  v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_74;
  }

LABEL_73:
  v28 = sub_27643F014(*(a1 + 56));
  v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_75;
  }

LABEL_74:
  v29 = sub_27643F014(*(a1 + 64));
  v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_75:
  v30 = TSD::FillArchive::ByteSizeLong(*(a1 + 72));
  v3 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v6 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 80));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_30;
  }

  if ((v2 & 0x100) != 0)
  {
    v31 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 88));
    v3 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_18:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_19;
      }

LABEL_79:
      v33 = TSD::FillArchive::ByteSizeLong(*(a1 + 104));
      v3 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v32 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 96));
  v3 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x400) != 0)
  {
    goto LABEL_79;
  }

LABEL_19:
  if ((v2 & 0x800) != 0)
  {
LABEL_20:
    v7 = TSP::Color::ByteSizeLong(*(a1 + 112));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_21:
  v8 = v3 + 5;
  if ((v2 & 0x1000) == 0)
  {
    v8 = v3;
  }

  if ((v2 & 0x2000) != 0)
  {
    v8 += 5;
  }

  if ((v2 & 0x4000) != 0)
  {
    v8 += 5;
  }

  if ((v2 & 0x8000) != 0)
  {
    v3 = v8 + 6;
  }

  else
  {
    v3 = v8;
  }

LABEL_30:
  if ((v2 & 0xFF0000) != 0)
  {
    v9 = v3 + 6;
    if ((v2 & 0x10000) == 0)
    {
      v9 = v3;
    }

    if ((v2 & 0x20000) != 0)
    {
      v9 += 3;
    }

    if ((v2 & 0x40000) != 0)
    {
      v10 = *(a1 + 144);
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v10 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 12;
      }

      v9 += v12;
    }

    if ((v2 & 0x80000) != 0)
    {
      v13 = *(a1 + 148);
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v13 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 12;
      }

      v9 += v15;
    }

    if ((v2 & 0x100000) != 0)
    {
      v9 += 6;
    }

    if ((v2 & 0x200000) != 0)
    {
      v16 = *(a1 + 156);
      v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v16 >= 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 12;
      }

      v9 += v18;
    }

    if ((v2 & 0x400000) != 0)
    {
      v19 = *(a1 + 160);
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v19 >= 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 12;
      }

      v9 += v21;
    }

    if ((v2 & 0x800000) != 0)
    {
      v3 = v9 + 6;
    }

    else
    {
      v3 = v9;
    }
  }

  v22 = v3 + 3;
  if ((v2 & 0x1000000) == 0)
  {
    v22 = v3;
  }

  v23 = v22 + ((v2 >> 24) & 2);
  if ((v2 & 0x4000000) != 0)
  {
    v23 += 3;
  }

  if ((v2 & 0x8000000) != 0)
  {
    v23 += 3;
  }

  if ((v2 & 0xF000000) != 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = v3;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v24;
    return v24;
  }
}

uint64_t sub_27640A5F0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288523820, 0);
  if (v4)
  {

    return sub_27640A698(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27640A698(uint64_t result, uint64_t a2)
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
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_276447688(v7);
      *(v3 + 24) = v6;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &unk_2812F12A8;
    }

    result = sub_27643F1BC(v6, v8);
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

    v9 = sub_276447688(v10);
    *(v3 + 32) = v9;
  }

  if (*(a2 + 32))
  {
    v11 = *(a2 + 32);
  }

  else
  {
    v11 = &unk_2812F12A8;
  }

  result = sub_27643F1BC(v9, v11);
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

    v12 = sub_276447688(v13);
    *(v3 + 40) = v12;
  }

  if (*(a2 + 40))
  {
    v14 = *(a2 + 40);
  }

  else
  {
    v14 = &unk_2812F12A8;
  }

  result = sub_27643F1BC(v12, v14);
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

    v15 = sub_276447688(v16);
    *(v3 + 48) = v15;
  }

  if (*(a2 + 48))
  {
    v17 = *(a2 + 48);
  }

  else
  {
    v17 = &unk_2812F12A8;
  }

  result = sub_27643F1BC(v15, v17);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_53:
    *(v3 + 16) |= 0x20u;
    v21 = *(v3 + 64);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = sub_276447688(v22);
      *(v3 + 64) = v21;
    }

    if (*(a2 + 64))
    {
      v23 = *(a2 + 64);
    }

    else
    {
      v23 = &unk_2812F12A8;
    }

    result = sub_27643F1BC(v21, v23);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_69;
    }

    goto LABEL_61;
  }

LABEL_45:
  *(v3 + 16) |= 0x10u;
  v18 = *(v3 + 56);
  if (!v18)
  {
    v19 = *(v3 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = sub_276447688(v19);
    *(v3 + 56) = v18;
  }

  if (*(a2 + 56))
  {
    v20 = *(a2 + 56);
  }

  else
  {
    v20 = &unk_2812F12A8;
  }

  result = sub_27643F1BC(v18, v20);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_61:
  *(v3 + 16) |= 0x40u;
  v24 = *(v3 + 72);
  if (!v24)
  {
    v25 = *(v3 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = MEMORY[0x277C97A80](v25);
    *(v3 + 72) = v24;
  }

  if (*(a2 + 72))
  {
    v26 = *(a2 + 72);
  }

  else
  {
    v26 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v24, v26);
  if ((v5 & 0x80) != 0)
  {
LABEL_69:
    *(v3 + 16) |= 0x80u;
    v27 = *(v3 + 80);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x277C97AA0](v28);
      *(v3 + 80) = v27;
    }

    if (*(a2 + 80))
    {
      v29 = *(a2 + 80);
    }

    else
    {
      v29 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v27, v29);
  }

LABEL_77:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_88;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v30 = *(v3 + 88);
    if (!v30)
    {
      v31 = *(v3 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277C97A90](v31);
      *(v3 + 88) = v30;
    }

    if (*(a2 + 88))
    {
      v32 = *(a2 + 88);
    }

    else
    {
      v32 = MEMORY[0x277D80498];
    }

    result = TSD::ShadowArchive::MergeFrom(v30, v32);
    if ((v5 & 0x200) == 0)
    {
LABEL_80:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_123;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(v3 + 16) |= 0x200u;
  v33 = *(v3 + 96);
  if (!v33)
  {
    v34 = *(v3 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = MEMORY[0x277C97AA0](v34);
    *(v3 + 96) = v33;
  }

  if (*(a2 + 96))
  {
    v35 = *(a2 + 96);
  }

  else
  {
    v35 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v33, v35);
  if ((v5 & 0x400) == 0)
  {
LABEL_81:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_131;
  }

LABEL_123:
  *(v3 + 16) |= 0x400u;
  v36 = *(v3 + 104);
  if (!v36)
  {
    v37 = *(v3 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = MEMORY[0x277C97A80](v37);
    *(v3 + 104) = v36;
  }

  if (*(a2 + 104))
  {
    v38 = *(a2 + 104);
  }

  else
  {
    v38 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v36, v38);
  if ((v5 & 0x800) == 0)
  {
LABEL_82:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_139;
  }

LABEL_131:
  *(v3 + 16) |= 0x800u;
  v39 = *(v3 + 112);
  if (!v39)
  {
    v40 = *(v3 + 8);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = MEMORY[0x277C97B50](v40);
    *(v3 + 112) = v39;
  }

  if (*(a2 + 112))
  {
    v41 = *(a2 + 112);
  }

  else
  {
    v41 = MEMORY[0x277D809E8];
  }

  result = TSP::Color::MergeFrom(v39, v41);
  if ((v5 & 0x1000) == 0)
  {
LABEL_83:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_140;
  }

LABEL_139:
  *(v3 + 120) = *(a2 + 120);
  if ((v5 & 0x2000) == 0)
  {
LABEL_84:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_85;
    }

LABEL_141:
    *(v3 + 128) = *(a2 + 128);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

LABEL_140:
  *(v3 + 124) = *(a2 + 124);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_141;
  }

LABEL_85:
  if ((v5 & 0x8000) != 0)
  {
LABEL_86:
    *(v3 + 132) = *(a2 + 132);
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
    *(v3 + 136) = *(a2 + 136);
    if ((v5 & 0x20000) == 0)
    {
LABEL_91:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_145;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_91;
  }

  *(v3 + 140) = *(a2 + 140);
  if ((v5 & 0x40000) == 0)
  {
LABEL_92:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(v3 + 144) = *(a2 + 144);
  if ((v5 & 0x80000) == 0)
  {
LABEL_93:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_147;
  }

LABEL_146:
  *(v3 + 148) = *(a2 + 148);
  if ((v5 & 0x100000) == 0)
  {
LABEL_94:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(v3 + 152) = *(a2 + 152);
  if ((v5 & 0x200000) == 0)
  {
LABEL_95:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_96;
    }

LABEL_149:
    *(v3 + 160) = *(a2 + 160);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

LABEL_148:
  *(v3 + 156) = *(a2 + 156);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_149;
  }

LABEL_96:
  if ((v5 & 0x800000) != 0)
  {
LABEL_97:
    *(v3 + 164) = *(a2 + 164);
  }

LABEL_98:
  *(v3 + 16) |= v5;
LABEL_99:
  if ((v5 & 0xF000000) == 0)
  {
    return result;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 168) = *(a2 + 168);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_102:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_103;
      }

LABEL_153:
      *(v3 + 170) = *(a2 + 170);
      if ((v5 & 0x8000000) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_104;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_102;
  }

  *(v3 + 169) = *(a2 + 169);
  if ((v5 & 0x4000000) != 0)
  {
    goto LABEL_153;
  }

LABEL_103:
  if ((v5 & 0x8000000) != 0)
  {
LABEL_104:
    *(v3 + 171) = *(a2 + 171);
  }

LABEL_105:
  *(v3 + 16) |= v5;
  return result;
}

uint64_t *sub_27640ABBC(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276408A40(result);

    return sub_27640A5F0(v4, a2);
  }

  return result;
}

uint64_t sub_27640AC08(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_27643F2FC(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_27643F2FC(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_27643F2FC(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_27643F2FC(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_27643F2FC(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = sub_27643F2FC(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) == 0)
  {
    return 1;
  }

  result = TSP::Color::IsInitialized(*(a1 + 112));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_27640AD54(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288522E90;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (atomic_load_explicit(dword_2812ED3B0, memory_order_acquire))
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
  *(a1 + 200) = 0;
  return a1;
}

uint64_t sub_27640ADF8(uint64_t a1)
{
  sub_27640AE2C(a1);
  sub_2763941F4((a1 + 8));
  return a1;
}

uint64_t sub_27640AE2C(uint64_t result)
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

  if (v1 != &unk_2812F0580)
  {
    v3 = *(v1 + 40);
    if (v3)
    {
      v4 = sub_276446C88(v3);
      MEMORY[0x277C98580](v4, 0x1081C40825B58B5);
    }

    v5 = *(v1 + 48);
    if (v5)
    {
      v6 = sub_276446C88(v5);
      MEMORY[0x277C98580](v6, 0x1081C40825B58B5);
    }

    v7 = *(v1 + 56);
    if (v7)
    {
      v8 = sub_276446C88(v7);
      MEMORY[0x277C98580](v8, 0x1081C40825B58B5);
    }

    v9 = *(v1 + 64);
    if (v9)
    {
      v10 = sub_276446C88(v9);
      MEMORY[0x277C98580](v10, 0x1081C40825B58B5);
    }

    v11 = *(v1 + 72);
    if (v11)
    {
      v12 = sub_276446C88(v11);
      MEMORY[0x277C98580](v12, 0x1081C40825B58B5);
    }

    v13 = *(v1 + 80);
    if (v13)
    {
      v14 = sub_276446C88(v13);
      MEMORY[0x277C98580](v14, 0x1081C40825B58B5);
    }

    v15 = *(v1 + 88);
    if (v15)
    {
      v16 = sub_276446C88(v15);
      MEMORY[0x277C98580](v16, 0x1081C40825B58B5);
    }

    v17 = *(v1 + 96);
    if (v17)
    {
      v18 = sub_276446C88(v17);
      MEMORY[0x277C98580](v18, 0x1081C40825B58B5);
    }

    if (*(v1 + 104))
    {
      v19 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v19, 0x10A1C4029F168B5);
    }

    if (*(v1 + 112))
    {
      v20 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v20, 0x10A1C4029F168B5);
    }

    result = *(v1 + 120);
    if (result)
    {
      MEMORY[0x277C97400]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27640AFB0(uint64_t a1)
{
  sub_27640ADF8(a1);

  JUMPOUT(0x277C98580);
}

void *sub_27640AFF0()
{
  if (atomic_load_explicit(dword_2812ED3B0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F0580;
}

uint64_t *sub_27640B030(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    v5 = result[4] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_37:
  result = sub_27643B6DC(result[5]);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = sub_27643B6DC(v1[6]);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = sub_27643B6DC(v1[7]);
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_41:
    result = sub_27643B6DC(v1[9]);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_40:
  result = sub_27643B6DC(v1[8]);
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_41;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_42:
  result = sub_27643B6DC(v1[10]);
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = sub_27643B6DC(v1[11]);
  }

LABEL_11:
  if ((v2 & 0xF00) == 0)
  {
    goto LABEL_17;
  }

  if ((v2 & 0x100) != 0)
  {
    result = sub_27643B6DC(v1[12]);
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSK::FormatStructArchive::Clear(v1[13]);
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_34:
  result = TSK::FormatStructArchive::Clear(v1[14]);
  if ((v2 & 0x800) != 0)
  {
LABEL_16:
    result = TSK::FormatStructArchive::Clear(v1[15]);
  }

LABEL_17:
  if ((v2 & 0xF000) != 0)
  {
    v1[16] = 0;
    v1[17] = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    v1[18] = 0;
    v1[19] = 0;
    *(v1 + 157) = 0;
  }

  if (HIBYTE(v2))
  {
    *(v1 + 173) = 0;
    *(v1 + 165) = 0;
    *(v1 + 180) = 0;
  }

  if ((*(v1 + 20) & 0x1F) != 0)
  {
    *(v1 + 196) = 0;
    *(v1 + 188) = 0;
    *(v1 + 51) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  v3[1] = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_27640B1BC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v136 = a2;
  if ((sub_2763D4D98(a3, &v136) & 1) == 0)
  {
    while (1)
    {
      v6 = (v136 + 1);
      v7 = *v136;
      if ((*v136 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v136, (v8 - 128));
      v136 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v17;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 <= 0x6E)
      {
        switch(v9)
        {
          case 1u:
            if (v7 != 8)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x1000u;
            v11 = (v6 + 1);
            LODWORD(v10) = *v6;
            if ((v10 & 0x80) == 0)
            {
              goto LABEL_13;
            }

            v12 = *v11;
            v10 = (v10 + (v12 << 7) - 128);
            if (v12 < 0)
            {
              v108 = google::protobuf::internal::VarintParseSlow64(v6, v10);
              v136 = v108;
              *(a1 + 128) = v109;
              if (!v108)
              {
                return 0;
              }
            }

            else
            {
              v11 = (v6 + 2);
LABEL_13:
              v136 = v11;
              *(a1 + 128) = v10;
            }

            goto LABEL_203;
          case 2u:
            if (v7 != 16)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x800000u;
            v55 = (v6 + 1);
            v54 = *v6;
            if ((v54 & 0x8000000000000000) == 0)
            {
              goto LABEL_111;
            }

            v56 = *v55;
            v54 = (v56 << 7) + v54 - 128;
            if (v56 < 0)
            {
              v106 = google::protobuf::internal::VarintParseSlow64(v6, v54);
              v136 = v106;
              *(a1 + 164) = v107 != 0;
              if (!v106)
              {
                return 0;
              }
            }

            else
            {
              v55 = (v6 + 2);
LABEL_111:
              v136 = v55;
              *(a1 + 164) = v54 != 0;
            }

            goto LABEL_203;
          case 3u:
            if (v7 != 29)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x2000u;
            v53 = *v6;
            v30 = (v6 + 4);
            *(a1 + 132) = v53;
            goto LABEL_179;
          case 4u:
            if (v7 != 34)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 2u;
            v41 = *(a1 + 40);
            if (v41)
            {
              goto LABEL_132;
            }

            v51 = *(a1 + 8);
            if (v51)
            {
              v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
            }

            v41 = sub_276447FD4(v51);
            *(a1 + 40) = v41;
            goto LABEL_131;
          case 5u:
            if (v7 != 42)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 4u;
            v41 = *(a1 + 48);
            if (v41)
            {
              goto LABEL_132;
            }

            v50 = *(a1 + 8);
            if (v50)
            {
              v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
            }

            v41 = sub_276447FD4(v50);
            *(a1 + 48) = v41;
            goto LABEL_131;
          case 6u:
            if (v7 != 50)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 8u;
            v41 = *(a1 + 56);
            if (v41)
            {
              goto LABEL_132;
            }

            v52 = *(a1 + 8);
            if (v52)
            {
              v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
            }

            v41 = sub_276447FD4(v52);
            *(a1 + 56) = v41;
            goto LABEL_131;
          case 7u:
            if (v7 != 58)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x10u;
            v41 = *(a1 + 64);
            if (v41)
            {
              goto LABEL_132;
            }

            v57 = *(a1 + 8);
            if (v57)
            {
              v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
            }

            v41 = sub_276447FD4(v57);
            *(a1 + 64) = v41;
            goto LABEL_131;
          case 8u:
            if (v7 != 66)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x20u;
            v41 = *(a1 + 72);
            if (v41)
            {
              goto LABEL_132;
            }

            v59 = *(a1 + 8);
            if (v59)
            {
              v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
            }

            v41 = sub_276447FD4(v59);
            *(a1 + 72) = v41;
            goto LABEL_131;
          case 9u:
            if (v7 != 74)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x40u;
            v41 = *(a1 + 80);
            if (v41)
            {
              goto LABEL_132;
            }

            v49 = *(a1 + 8);
            if (v49)
            {
              v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
            }

            v41 = sub_276447FD4(v49);
            *(a1 + 80) = v41;
            goto LABEL_131;
          case 0xAu:
            if (v7 != 82)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x80u;
            v41 = *(a1 + 88);
            if (v41)
            {
              goto LABEL_132;
            }

            v42 = *(a1 + 8);
            if (v42)
            {
              v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
            }

            v41 = sub_276447FD4(v42);
            *(a1 + 88) = v41;
            goto LABEL_131;
          case 0xBu:
            if (v7 != 90)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x100u;
            v41 = *(a1 + 96);
            if (v41)
            {
              goto LABEL_132;
            }

            v61 = *(a1 + 8);
            if (v61)
            {
              v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
            }

            v41 = sub_276447FD4(v61);
            *(a1 + 96) = v41;
LABEL_131:
            v6 = v136;
LABEL_132:
            v62 = sub_2764A8A98(a3, v41, v6);
            goto LABEL_202;
          case 0x13u:
            if (v7 != 157)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x4000u;
            v60 = *v6;
            v30 = (v6 + 4);
            *(a1 + 136) = v60;
            goto LABEL_179;
          case 0x14u:
            if (v7 != 160)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x4000000u;
            v44 = (v6 + 1);
            v43 = *v6;
            if ((v43 & 0x8000000000000000) == 0)
            {
              goto LABEL_79;
            }

            v45 = *v44;
            v43 = (v45 << 7) + v43 - 128;
            if (v45 < 0)
            {
              v102 = google::protobuf::internal::VarintParseSlow64(v6, v43);
              v136 = v102;
              *(a1 + 167) = v103 != 0;
              if (!v102)
              {
                return 0;
              }
            }

            else
            {
              v44 = (v6 + 2);
LABEL_79:
              v136 = v44;
              *(a1 + 167) = v43 != 0;
            }

            goto LABEL_203;
          case 0x15u:
            if (v7 != 168)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x10000u;
            v64 = (v6 + 1);
            v63 = *v6;
            if ((v63 & 0x8000000000000000) == 0)
            {
              goto LABEL_137;
            }

            v65 = *v64;
            v63 = (v65 << 7) + v63 - 128;
            if (v65 < 0)
            {
              v110 = google::protobuf::internal::VarintParseSlow64(v6, v63);
              v136 = v110;
              *(a1 + 144) = v111 != 0;
              if (!v110)
              {
                return 0;
              }
            }

            else
            {
              v64 = (v6 + 2);
LABEL_137:
              v136 = v64;
              *(a1 + 144) = v63 != 0;
            }

            goto LABEL_203;
          case 0x16u:
            if (v7 != 176)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x20000u;
            v39 = (v6 + 1);
            v38 = *v6;
            if ((v38 & 0x8000000000000000) == 0)
            {
              goto LABEL_69;
            }

            v40 = *v39;
            v38 = (v40 << 7) + v38 - 128;
            if (v40 < 0)
            {
              v100 = google::protobuf::internal::VarintParseSlow64(v6, v38);
              v136 = v100;
              *(a1 + 145) = v101 != 0;
              if (!v100)
              {
                return 0;
              }
            }

            else
            {
              v39 = (v6 + 2);
LABEL_69:
              v136 = v39;
              *(a1 + 145) = v38 != 0;
            }

            goto LABEL_203;
          case 0x17u:
            if (v7 != 186)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 1u;
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v62 = google::protobuf::internal::InlineGreedyStringParser();
            goto LABEL_202;
          case 0x18u:
            if (v7 != 192)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x8000u;
            v47 = (v6 + 1);
            LODWORD(v46) = *v6;
            if ((v46 & 0x80) == 0)
            {
              goto LABEL_84;
            }

            v48 = *v47;
            v46 = (v46 + (v48 << 7) - 128);
            if (v48 < 0)
            {
              v104 = google::protobuf::internal::VarintParseSlow64(v6, v46);
              v136 = v104;
              *(a1 + 140) = v105;
              if (!v104)
              {
                return 0;
              }
            }

            else
            {
              v47 = (v6 + 2);
LABEL_84:
              v136 = v47;
              *(a1 + 140) = v46;
            }

            goto LABEL_203;
          case 0x19u:
            if (v7 != 200)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x80000u;
            v36 = (v6 + 1);
            LODWORD(v35) = *v6;
            if ((v35 & 0x80) == 0)
            {
              goto LABEL_64;
            }

            v37 = *v36;
            v35 = (v35 + (v37 << 7) - 128);
            if (v37 < 0)
            {
              v98 = google::protobuf::internal::VarintParseSlow64(v6, v35);
              v136 = v98;
              *(a1 + 148) = v99;
              if (!v98)
              {
                return 0;
              }
            }

            else
            {
              v36 = (v6 + 2);
LABEL_64:
              v136 = v36;
              *(a1 + 148) = v35;
            }

            goto LABEL_203;
          case 0x1Bu:
            if (v7 != 221)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x100000u;
            v58 = *v6;
            v30 = (v6 + 4);
            *(a1 + 152) = v58;
            goto LABEL_179;
          case 0x1Cu:
            if (v7 != 224)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x2000000u;
            v72 = (v6 + 1);
            v71 = *v6;
            if ((v71 & 0x8000000000000000) == 0)
            {
              goto LABEL_154;
            }

            v73 = *v72;
            v71 = (v73 << 7) + v71 - 128;
            if (v73 < 0)
            {
              v114 = google::protobuf::internal::VarintParseSlow64(v6, v71);
              v136 = v114;
              *(a1 + 166) = v115 != 0;
              if (!v114)
              {
                return 0;
              }
            }

            else
            {
              v72 = (v6 + 2);
LABEL_154:
              v136 = v72;
              *(a1 + 166) = v71 != 0;
            }

            break;
          case 0x1Du:
            if (v7 != 237)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x200000u;
            v31 = *v6;
            v30 = (v6 + 4);
            *(a1 + 156) = v31;
            goto LABEL_179;
          case 0x1Eu:
            if (v7 != 240)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x40000u;
            v67 = (v6 + 1);
            v66 = *v6;
            if ((v66 & 0x8000000000000000) == 0)
            {
              goto LABEL_142;
            }

            v68 = *v67;
            v66 = (v68 << 7) + v66 - 128;
            if (v68 < 0)
            {
              v112 = google::protobuf::internal::VarintParseSlow64(v6, v66);
              v136 = v112;
              *(a1 + 146) = v113 != 0;
              if (!v112)
              {
                return 0;
              }
            }

            else
            {
              v67 = (v6 + 2);
LABEL_142:
              v136 = v67;
              *(a1 + 146) = v66 != 0;
            }

            goto LABEL_203;
          case 0x1Fu:
            if (v7 != 248)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x400000u;
            v28 = (v6 + 1);
            LODWORD(v27) = *v6;
            if ((v27 & 0x80) == 0)
            {
              goto LABEL_52;
            }

            v29 = *v28;
            v27 = (v27 + (v29 << 7) - 128);
            if (v29 < 0)
            {
              v96 = google::protobuf::internal::VarintParseSlow64(v6, v27);
              v136 = v96;
              *(a1 + 160) = v97;
              if (!v96)
              {
                return 0;
              }
            }

            else
            {
              v28 = (v6 + 2);
LABEL_52:
              v136 = v28;
              *(a1 + 160) = v27;
            }

            goto LABEL_203;
          case 0x20u:
            if (v7 != 2)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x200u;
            v32 = *(a1 + 104);
            if (v32)
            {
              goto LABEL_161;
            }

            v69 = *(a1 + 8);
            if (v69)
            {
              v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
            }

            v70 = MEMORY[0x277C97B00](v69);
            LODWORD(v32) = v70;
            *(a1 + 104) = v70;
            goto LABEL_160;
          case 0x21u:
            if (v7 != 10)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x400u;
            v32 = *(a1 + 112);
            if (v32)
            {
              goto LABEL_161;
            }

            v74 = *(a1 + 8);
            if (v74)
            {
              v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
            }

            v75 = MEMORY[0x277C97B00](v74);
            LODWORD(v32) = v75;
            *(a1 + 112) = v75;
            goto LABEL_160;
          case 0x22u:
            if (v7 != 18)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x800u;
            v32 = *(a1 + 120);
            if (v32)
            {
              goto LABEL_161;
            }

            v33 = *(a1 + 8);
            if (v33)
            {
              v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
            }

            v34 = MEMORY[0x277C97B00](v33);
            LODWORD(v32) = v34;
            *(a1 + 120) = v34;
LABEL_160:
            v6 = v136;
LABEL_161:
            v62 = sub_2764A8D08(a3, v32, v6);
            goto LABEL_202;
          default:
            goto LABEL_195;
        }

        goto LABEL_203;
      }

      if (v7 >> 3 <= 0x73)
      {
        if (v7 >> 3 <= 0x70)
        {
          if (v9 == 111)
          {
            if (v7 != 120)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x8000000u;
            v77 = (v6 + 1);
            LODWORD(v76) = *v6;
            if ((v76 & 0x80) == 0)
            {
              goto LABEL_166;
            }

            v78 = *v77;
            v76 = (v76 + (v78 << 7) - 128);
            if ((v78 & 0x80000000) == 0)
            {
              v77 = (v6 + 2);
LABEL_166:
              v136 = v77;
              *(a1 + 168) = v76;
              goto LABEL_203;
            }

            v124 = google::protobuf::internal::VarintParseSlow64(v6, v76);
            v136 = v124;
            *(a1 + 168) = v125;
            if (!v124)
            {
              return 0;
            }
          }

          else
          {
            if (v9 != 112 || v7 != 128)
            {
              goto LABEL_195;
            }

            *(a1 + 16) |= 0x10000000u;
            v25 = (v6 + 1);
            LODWORD(v24) = *v6;
            if ((v24 & 0x80) == 0)
            {
              goto LABEL_47;
            }

            v26 = *v25;
            v24 = (v24 + (v26 << 7) - 128);
            if ((v26 & 0x80000000) == 0)
            {
              v25 = (v6 + 2);
LABEL_47:
              v136 = v25;
              *(a1 + 172) = v24;
              goto LABEL_203;
            }

            v116 = google::protobuf::internal::VarintParseSlow64(v6, v24);
            v136 = v116;
            *(a1 + 172) = v117;
            if (!v116)
            {
              return 0;
            }
          }
        }

        else if (v9 == 113)
        {
          if (v7 != 136)
          {
            goto LABEL_195;
          }

          *(a1 + 16) |= 0x20000000u;
          v87 = (v6 + 1);
          LODWORD(v86) = *v6;
          if ((v86 & 0x80) == 0)
          {
            goto LABEL_184;
          }

          v88 = *v87;
          v86 = (v86 + (v88 << 7) - 128);
          if ((v88 & 0x80000000) == 0)
          {
            v87 = (v6 + 2);
LABEL_184:
            v136 = v87;
            *(a1 + 176) = v86;
            goto LABEL_203;
          }

          v130 = google::protobuf::internal::VarintParseSlow64(v6, v86);
          v136 = v130;
          *(a1 + 176) = v131;
          if (!v130)
          {
            return 0;
          }
        }

        else if (v9 == 114)
        {
          if (v7 != 144)
          {
            goto LABEL_195;
          }

          *(a1 + 16) |= 0x40000000u;
          v80 = (v6 + 1);
          LODWORD(v79) = *v6;
          if ((v79 & 0x80) == 0)
          {
            goto LABEL_171;
          }

          v81 = *v80;
          v79 = (v79 + (v81 << 7) - 128);
          if ((v81 & 0x80000000) == 0)
          {
            v80 = (v6 + 2);
LABEL_171:
            v136 = v80;
            *(a1 + 180) = v79;
            goto LABEL_203;
          }

          v126 = google::protobuf::internal::VarintParseSlow64(v6, v79);
          v136 = v126;
          *(a1 + 180) = v127;
          if (!v126)
          {
            return 0;
          }
        }

        else
        {
          if (v7 != 152)
          {
            goto LABEL_195;
          }

          *(a1 + 16) |= 0x80000000;
          v19 = (v6 + 1);
          LODWORD(v18) = *v6;
          if ((v18 & 0x80) == 0)
          {
            goto LABEL_32;
          }

          v20 = *v19;
          v18 = (v18 + (v20 << 7) - 128);
          if ((v20 & 0x80000000) == 0)
          {
            v19 = (v6 + 2);
LABEL_32:
            v136 = v19;
            *(a1 + 184) = v18;
            goto LABEL_203;
          }

          v118 = google::protobuf::internal::VarintParseSlow64(v6, v18);
          v136 = v118;
          *(a1 + 184) = v119;
          if (!v118)
          {
            return 0;
          }
        }
      }

      else if (v7 >> 3 > 0x76)
      {
        if (v9 == 119)
        {
          if (v7 != 184)
          {
            goto LABEL_195;
          }

          *(a1 + 20) |= 8u;
          v93 = (v6 + 1);
          LODWORD(v92) = *v6;
          if ((v92 & 0x80) == 0)
          {
            goto LABEL_194;
          }

          v94 = *v93;
          v92 = (v92 + (v94 << 7) - 128);
          if ((v94 & 0x80000000) == 0)
          {
            v93 = (v6 + 2);
LABEL_194:
            v136 = v93;
            *(a1 + 200) = v92;
            goto LABEL_203;
          }

          v134 = google::protobuf::internal::VarintParseSlow64(v6, v92);
          v136 = v134;
          *(a1 + 200) = v135;
          if (!v134)
          {
            return 0;
          }
        }

        else
        {
          if (v9 == 120)
          {
            if (v7 == 197)
            {
              *(a1 + 20) |= 0x10u;
              v85 = *v6;
              v30 = (v6 + 4);
              *(a1 + 204) = v85;
LABEL_179:
              v136 = v30;
              goto LABEL_203;
            }

LABEL_195:
            if (v7)
            {
              v95 = (v7 & 7) == 4;
            }

            else
            {
              v95 = 1;
            }

            if (v95)
            {
              *(a3 + 80) = v7 - 1;
              return v136;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_2763D4E10((a1 + 8));
            }

            v62 = google::protobuf::internal::UnknownFieldParse();
LABEL_202:
            v136 = v62;
            if (!v62)
            {
              return 0;
            }

            goto LABEL_203;
          }

          if (v9 != 121 || v7 != 200)
          {
            goto LABEL_195;
          }

          *(a1 + 16) |= 0x1000000u;
          v22 = (v6 + 1);
          v21 = *v6;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_40;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if ((v23 & 0x80000000) == 0)
          {
            v22 = (v6 + 2);
LABEL_40:
            v136 = v22;
            *(a1 + 165) = v21 != 0;
            goto LABEL_203;
          }

          v122 = google::protobuf::internal::VarintParseSlow64(v6, v21);
          v136 = v122;
          *(a1 + 165) = v123 != 0;
          if (!v122)
          {
            return 0;
          }
        }
      }

      else if (v9 == 116)
      {
        if (v7 != 160)
        {
          goto LABEL_195;
        }

        *(a1 + 20) |= 1u;
        v90 = (v6 + 1);
        LODWORD(v89) = *v6;
        if ((v89 & 0x80) == 0)
        {
          goto LABEL_189;
        }

        v91 = *v90;
        v89 = (v89 + (v91 << 7) - 128);
        if ((v91 & 0x80000000) == 0)
        {
          v90 = (v6 + 2);
LABEL_189:
          v136 = v90;
          *(a1 + 188) = v89;
          goto LABEL_203;
        }

        v132 = google::protobuf::internal::VarintParseSlow64(v6, v89);
        v136 = v132;
        *(a1 + 188) = v133;
        if (!v132)
        {
          return 0;
        }
      }

      else if (v9 == 117)
      {
        if (v7 != 168)
        {
          goto LABEL_195;
        }

        *(a1 + 20) |= 2u;
        v83 = (v6 + 1);
        LODWORD(v82) = *v6;
        if ((v82 & 0x80) == 0)
        {
          goto LABEL_176;
        }

        v84 = *v83;
        v82 = (v82 + (v84 << 7) - 128);
        if ((v84 & 0x80000000) == 0)
        {
          v83 = (v6 + 2);
LABEL_176:
          v136 = v83;
          *(a1 + 192) = v82;
          goto LABEL_203;
        }

        v128 = google::protobuf::internal::VarintParseSlow64(v6, v82);
        v136 = v128;
        *(a1 + 192) = v129;
        if (!v128)
        {
          return 0;
        }
      }

      else
      {
        if (v7 != 176)
        {
          goto LABEL_195;
        }

        *(a1 + 20) |= 4u;
        v14 = (v6 + 1);
        LODWORD(v13) = *v6;
        if ((v13 & 0x80) == 0)
        {
          goto LABEL_22;
        }

        v15 = *v14;
        v13 = (v13 + (v15 << 7) - 128);
        if ((v15 & 0x80000000) == 0)
        {
          v14 = (v6 + 2);
LABEL_22:
          v136 = v14;
          *(a1 + 196) = v13;
          goto LABEL_203;
        }

        v120 = google::protobuf::internal::VarintParseSlow64(v6, v13);
        v136 = v120;
        *(a1 + 196) = v121;
        if (!v120)
        {
          return 0;
        }
      }

LABEL_203:
      if (sub_2763D4D98(a3, &v136))
      {
        return v136;
      }
    }

    v6 = (v136 + 2);
LABEL_6:
    v136 = v6;
    goto LABEL_7;
  }

  return v136;
}

unsigned __int8 *sub_27640C008(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x1000) != 0)
  {
    if (*this <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v8 = *(a1 + 128);
    *v4 = 8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v9 | 0x80;
          v11 = v9 >> 7;
          ++v4;
          v12 = v9 >> 14;
          v9 >>= 7;
        }

        while (v12);
        *(v4 - 1) = v11;
        if ((v6 & 0x800000) != 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v4[2] = v9;
        v4 += 3;
        if ((v6 & 0x800000) != 0)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
      if ((v6 & 0x800000) != 0)
      {
        goto LABEL_49;
      }
    }

LABEL_3:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_52;
  }

  if ((v6 & 0x800000) == 0)
  {
    goto LABEL_3;
  }

LABEL_49:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v13 = *(a1 + 164);
  *v4 = 16;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 0x2000) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_55;
  }

LABEL_52:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v14 = *(a1 + 132);
  *v4 = 29;
  *(v4 + 1) = v14;
  v4 += 5;
  if ((v6 & 2) == 0)
  {
LABEL_5:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_65;
  }

LABEL_55:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v15 = *(a1 + 40);
  *v4 = 34;
  v16 = *(v15 + 20);
  if (v16 > 0x7F)
  {
    v4[1] = v16 | 0x80;
    v18 = v16 >> 7;
    if (v16 >> 14)
    {
      v17 = (v4 + 3);
      do
      {
        *(v17 - 1) = v18 | 0x80;
        v19 = v18 >> 7;
        ++v17;
        v20 = v18 >> 14;
        v18 >>= 7;
      }

      while (v20);
      *(v17 - 1) = v19;
    }

    else
    {
      v4[2] = v18;
      v17 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v16;
    v17 = (v4 + 2);
  }

  v4 = sub_276446ECC(v15, v17, this);
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_75;
  }

LABEL_65:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v21 = *(a1 + 48);
  *v4 = 42;
  v22 = *(v21 + 20);
  if (v22 > 0x7F)
  {
    v4[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = (v4 + 3);
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
      v23 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v22;
    v23 = (v4 + 2);
  }

  v4 = sub_276446ECC(v21, v23, this);
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_85;
  }

LABEL_75:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v27 = *(a1 + 56);
  *v4 = 50;
  v28 = *(v27 + 20);
  if (v28 > 0x7F)
  {
    v4[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = (v4 + 3);
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
      v29 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v28;
    v29 = (v4 + 2);
  }

  v4 = sub_276446ECC(v27, v29, this);
  if ((v6 & 0x10) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
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

  v33 = *(a1 + 64);
  *v4 = 58;
  v34 = *(v33 + 20);
  if (v34 > 0x7F)
  {
    v4[1] = v34 | 0x80;
    v36 = v34 >> 7;
    if (v34 >> 14)
    {
      v35 = (v4 + 3);
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
      v35 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v34;
    v35 = (v4 + 2);
  }

  v4 = sub_276446ECC(v33, v35, this);
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_105;
  }

LABEL_95:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v39 = *(a1 + 72);
  *v4 = 66;
  v40 = *(v39 + 20);
  if (v40 > 0x7F)
  {
    v4[1] = v40 | 0x80;
    v42 = v40 >> 7;
    if (v40 >> 14)
    {
      v41 = (v4 + 3);
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
      v41 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v40;
    v41 = (v4 + 2);
  }

  v4 = sub_276446ECC(v39, v41, this);
  if ((v6 & 0x40) == 0)
  {
LABEL_10:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_115;
  }

LABEL_105:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v45 = *(a1 + 80);
  *v4 = 74;
  v46 = *(v45 + 20);
  if (v46 > 0x7F)
  {
    v4[1] = v46 | 0x80;
    v48 = v46 >> 7;
    if (v46 >> 14)
    {
      v47 = (v4 + 3);
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
      v47 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v46;
    v47 = (v4 + 2);
  }

  v4 = sub_276446ECC(v45, v47, this);
  if ((v6 & 0x80) == 0)
  {
LABEL_11:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_125;
  }

LABEL_115:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v51 = *(a1 + 88);
  *v4 = 82;
  v52 = *(v51 + 20);
  if (v52 > 0x7F)
  {
    v4[1] = v52 | 0x80;
    v54 = v52 >> 7;
    if (v52 >> 14)
    {
      v53 = (v4 + 3);
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
      v4[2] = v54;
      v53 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v52;
    v53 = (v4 + 2);
  }

  v4 = sub_276446ECC(v51, v53, this);
  if ((v6 & 0x100) == 0)
  {
LABEL_12:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_135;
  }

LABEL_125:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v57 = *(a1 + 96);
  *v4 = 90;
  v58 = *(v57 + 20);
  if (v58 > 0x7F)
  {
    v4[1] = v58 | 0x80;
    v60 = v58 >> 7;
    if (v58 >> 14)
    {
      v59 = (v4 + 3);
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
      v59 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v58;
    v59 = (v4 + 2);
  }

  v4 = sub_276446ECC(v57, v59, this);
  if ((v6 & 0x4000) == 0)
  {
LABEL_13:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_138;
  }

LABEL_135:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v63 = *(a1 + 136);
  *v4 = 413;
  *(v4 + 2) = v63;
  v4 += 6;
  if ((v6 & 0x4000000) == 0)
  {
LABEL_14:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_141;
  }

LABEL_138:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v64 = *(a1 + 167);
  *v4 = 416;
  v4[2] = v64;
  v4 += 3;
  if ((v6 & 0x10000) == 0)
  {
LABEL_15:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_144;
  }

LABEL_141:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v65 = *(a1 + 144);
  *v4 = 424;
  v4[2] = v65;
  v4 += 3;
  if ((v6 & 0x20000) == 0)
  {
LABEL_16:
    if ((v6 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_147;
  }

LABEL_144:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v66 = *(a1 + 145);
  *v4 = 432;
  v4[2] = v66;
  v4 += 3;
  if ((v6 & 1) == 0)
  {
LABEL_17:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_148;
  }

LABEL_147:
  v4 = sub_2763DD938(this, 23, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x8000) == 0)
  {
LABEL_18:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_19;
    }

LABEL_159:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v71 = *(a1 + 148);
    *v4 = 456;
    if (v71 > 0x7F)
    {
      v4[2] = v71 | 0x80;
      v72 = v71 >> 7;
      if (v71 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v72 | 0x80;
          v73 = v72 >> 7;
          ++v4;
          v74 = v72 >> 14;
          v72 >>= 7;
        }

        while (v74);
        *(v4 - 1) = v73;
        if ((v6 & 0x100000) != 0)
        {
          goto LABEL_170;
        }
      }

      else
      {
        v4[3] = v72;
        v4 += 4;
        if ((v6 & 0x100000) != 0)
        {
          goto LABEL_170;
        }
      }
    }

    else
    {
      v4[2] = v71;
      v4 += 3;
      if ((v6 & 0x100000) != 0)
      {
        goto LABEL_170;
      }
    }

LABEL_20:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_173;
  }

LABEL_148:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v67 = *(a1 + 140);
  *v4 = 448;
  if (v67 > 0x7F)
  {
    v4[2] = v67 | 0x80;
    v68 = v67 >> 7;
    if (v67 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v68 | 0x80;
        v69 = v68 >> 7;
        ++v4;
        v70 = v68 >> 14;
        v68 >>= 7;
      }

      while (v70);
      *(v4 - 1) = v69;
      if ((v6 & 0x80000) != 0)
      {
        goto LABEL_159;
      }
    }

    else
    {
      v4[3] = v68;
      v4 += 4;
      if ((v6 & 0x80000) != 0)
      {
        goto LABEL_159;
      }
    }
  }

  else
  {
    v4[2] = v67;
    v4 += 3;
    if ((v6 & 0x80000) != 0)
    {
      goto LABEL_159;
    }
  }

LABEL_19:
  if ((v6 & 0x100000) == 0)
  {
    goto LABEL_20;
  }

LABEL_170:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v75 = *(a1 + 152);
  *v4 = 477;
  *(v4 + 2) = v75;
  v4 += 6;
  if ((v6 & 0x2000000) == 0)
  {
LABEL_21:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_176;
  }

LABEL_173:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v76 = *(a1 + 166);
  *v4 = 480;
  v4[2] = v76;
  v4 += 3;
  if ((v6 & 0x200000) == 0)
  {
LABEL_22:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_179;
  }

LABEL_176:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v77 = *(a1 + 156);
  *v4 = 493;
  *(v4 + 2) = v77;
  v4 += 6;
  if ((v6 & 0x40000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

LABEL_182:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v79 = *(a1 + 160);
    *v4 = 504;
    if (v79 > 0x7F)
    {
      v4[2] = v79 | 0x80;
      v80 = v79 >> 7;
      if (v79 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v80 | 0x80;
          v81 = v80 >> 7;
          ++v4;
          v82 = v80 >> 14;
          v80 >>= 7;
        }

        while (v82);
        *(v4 - 1) = v81;
        if ((v6 & 0x200) != 0)
        {
          goto LABEL_193;
        }
      }

      else
      {
        v4[3] = v80;
        v4 += 4;
        if ((v6 & 0x200) != 0)
        {
          goto LABEL_193;
        }
      }
    }

    else
    {
      v4[2] = v79;
      v4 += 3;
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_193;
      }
    }

LABEL_25:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_203;
  }

LABEL_179:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v78 = *(a1 + 146);
  *v4 = 496;
  v4[2] = v78;
  v4 += 3;
  if ((v6 & 0x400000) != 0)
  {
    goto LABEL_182;
  }

LABEL_24:
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_25;
  }

LABEL_193:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v83 = *(a1 + 104);
  *v4 = 642;
  v84 = *(v83 + 12);
  if (v84 > 0x7F)
  {
    v4[2] = v84 | 0x80;
    v86 = v84 >> 7;
    if (v84 >> 14)
    {
      v85 = v4 + 4;
      do
      {
        *(v85 - 1) = v86 | 0x80;
        v87 = v86 >> 7;
        ++v85;
        v88 = v86 >> 14;
        v86 >>= 7;
      }

      while (v88);
      *(v85 - 1) = v87;
    }

    else
    {
      v4[3] = v86;
      v85 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v84;
    v85 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v83, v85, this);
  if ((v6 & 0x400) == 0)
  {
LABEL_26:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_213;
  }

LABEL_203:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v89 = *(a1 + 112);
  *v4 = 650;
  v90 = *(v89 + 12);
  if (v90 > 0x7F)
  {
    v4[2] = v90 | 0x80;
    v92 = v90 >> 7;
    if (v90 >> 14)
    {
      v91 = v4 + 4;
      do
      {
        *(v91 - 1) = v92 | 0x80;
        v93 = v92 >> 7;
        ++v91;
        v94 = v92 >> 14;
        v92 >>= 7;
      }

      while (v94);
      *(v91 - 1) = v93;
    }

    else
    {
      v4[3] = v92;
      v91 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v90;
    v91 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v89, v91, this);
  if ((v6 & 0x800) == 0)
  {
LABEL_27:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_223:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v101 = *(a1 + 168);
    *v4 = 1784;
    if (v101 > 0x7F)
    {
      v4[2] = v101 | 0x80;
      v102 = v101 >> 7;
      if (v101 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v102 | 0x80;
          v103 = v102 >> 7;
          ++v4;
          v104 = v102 >> 14;
          v102 >>= 7;
        }

        while (v104);
        *(v4 - 1) = v103;
        if ((v6 & 0x10000000) != 0)
        {
          goto LABEL_234;
        }
      }

      else
      {
        v4[3] = v102;
        v4 += 4;
        if ((v6 & 0x10000000) != 0)
        {
          goto LABEL_234;
        }
      }
    }

    else
    {
      v4[2] = v101;
      v4 += 3;
      if ((v6 & 0x10000000) != 0)
      {
        goto LABEL_234;
      }
    }

LABEL_29:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_245:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v109 = *(a1 + 176);
    *v4 = 1928;
    if (v109 > 0x7F)
    {
      v4[2] = v109 | 0x80;
      v110 = v109 >> 7;
      if (v109 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v110 | 0x80;
          v111 = v110 >> 7;
          ++v4;
          v112 = v110 >> 14;
          v110 >>= 7;
        }

        while (v112);
        *(v4 - 1) = v111;
        if ((v6 & 0x40000000) != 0)
        {
          goto LABEL_256;
        }
      }

      else
      {
        v4[3] = v110;
        v4 += 4;
        if ((v6 & 0x40000000) != 0)
        {
          goto LABEL_256;
        }
      }
    }

    else
    {
      v4[2] = v109;
      v4 += 3;
      if ((v6 & 0x40000000) != 0)
      {
        goto LABEL_256;
      }
    }

LABEL_31:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_271;
    }

    goto LABEL_32;
  }

LABEL_213:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v95 = *(a1 + 120);
  *v4 = 658;
  v96 = *(v95 + 12);
  if (v96 > 0x7F)
  {
    v4[2] = v96 | 0x80;
    v98 = v96 >> 7;
    if (v96 >> 14)
    {
      v97 = v4 + 4;
      do
      {
        *(v97 - 1) = v98 | 0x80;
        v99 = v98 >> 7;
        ++v97;
        v100 = v98 >> 14;
        v98 >>= 7;
      }

      while (v100);
      *(v97 - 1) = v99;
    }

    else
    {
      v4[3] = v98;
      v97 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v96;
    v97 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v95, v97, this);
  if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_223;
  }

LABEL_28:
  if ((v6 & 0x10000000) == 0)
  {
    goto LABEL_29;
  }

LABEL_234:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v105 = *(a1 + 172);
  *v4 = 1920;
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
      if ((v6 & 0x20000000) != 0)
      {
        goto LABEL_245;
      }
    }

    else
    {
      v4[3] = v106;
      v4 += 4;
      if ((v6 & 0x20000000) != 0)
      {
        goto LABEL_245;
      }
    }
  }

  else
  {
    v4[2] = v105;
    v4 += 3;
    if ((v6 & 0x20000000) != 0)
    {
      goto LABEL_245;
    }
  }

LABEL_30:
  if ((v6 & 0x40000000) == 0)
  {
    goto LABEL_31;
  }

LABEL_256:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v113 = *(a1 + 180);
  *v4 = 1936;
  if (v113 > 0x7F)
  {
    v4[2] = v113 | 0x80;
    v114 = v113 >> 7;
    if (v113 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v114 | 0x80;
        v115 = v114 >> 7;
        ++v4;
        v116 = v114 >> 14;
        v114 >>= 7;
      }

      while (v116);
      *(v4 - 1) = v115;
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_271;
      }
    }

    else
    {
      v4[3] = v114;
      v4 += 4;
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_271;
      }
    }
  }

  else
  {
    v4[2] = v113;
    v4 += 3;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_271;
    }
  }

LABEL_32:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v7 = *(a1 + 184);
  *v4 = 1944;
  if (v7 > 0x7F)
  {
    v4[2] = v7 | 0x80;
    v10 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v10 | 0x80;
        v117 = v10 >> 7;
        ++v4;
        v118 = v10 >> 14;
        v10 >>= 7;
      }

      while (v118);
      *(v4 - 1) = v117;
    }

    else
    {
      v4[3] = v10;
      v4 += 4;
    }
  }

  else
  {
    v4[2] = v7;
    v4 += 3;
  }

LABEL_271:
  v119 = *(a1 + 20);
  if (v119)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v124 = *(a1 + 188);
    *v4 = 1952;
    if (v124 > 0x7F)
    {
      v4[2] = v124 | 0x80;
      v125 = v124 >> 7;
      if (v124 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v125 | 0x80;
          v126 = v125 >> 7;
          ++v4;
          v127 = v125 >> 14;
          v125 >>= 7;
        }

        while (v127);
        *(v4 - 1) = v126;
        if ((v119 & 2) != 0)
        {
          goto LABEL_296;
        }
      }

      else
      {
        v4[3] = v125;
        v4 += 4;
        if ((v119 & 2) != 0)
        {
          goto LABEL_296;
        }
      }
    }

    else
    {
      v4[2] = v124;
      v4 += 3;
      if ((v119 & 2) != 0)
      {
        goto LABEL_296;
      }
    }

LABEL_273:
    if ((v119 & 4) == 0)
    {
      goto LABEL_274;
    }

LABEL_307:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v132 = *(a1 + 196);
    *v4 = 1968;
    if (v132 > 0x7F)
    {
      v4[2] = v132 | 0x80;
      v133 = v132 >> 7;
      if (v132 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v133 | 0x80;
          v134 = v133 >> 7;
          ++v4;
          v135 = v133 >> 14;
          v133 >>= 7;
        }

        while (v135);
        *(v4 - 1) = v134;
        if ((v119 & 8) != 0)
        {
          goto LABEL_318;
        }
      }

      else
      {
        v4[3] = v133;
        v4 += 4;
        if ((v119 & 8) != 0)
        {
          goto LABEL_318;
        }
      }
    }

    else
    {
      v4[2] = v132;
      v4 += 3;
      if ((v119 & 8) != 0)
      {
        goto LABEL_318;
      }
    }

LABEL_275:
    if ((v119 & 0x10) == 0)
    {
      goto LABEL_279;
    }

    goto LABEL_276;
  }

  if ((v119 & 2) == 0)
  {
    goto LABEL_273;
  }

LABEL_296:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v128 = *(a1 + 192);
  *v4 = 1960;
  if (v128 > 0x7F)
  {
    v4[2] = v128 | 0x80;
    v129 = v128 >> 7;
    if (v128 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v129 | 0x80;
        v130 = v129 >> 7;
        ++v4;
        v131 = v129 >> 14;
        v129 >>= 7;
      }

      while (v131);
      *(v4 - 1) = v130;
      if ((v119 & 4) != 0)
      {
        goto LABEL_307;
      }
    }

    else
    {
      v4[3] = v129;
      v4 += 4;
      if ((v119 & 4) != 0)
      {
        goto LABEL_307;
      }
    }
  }

  else
  {
    v4[2] = v128;
    v4 += 3;
    if ((v119 & 4) != 0)
    {
      goto LABEL_307;
    }
  }

LABEL_274:
  if ((v119 & 8) == 0)
  {
    goto LABEL_275;
  }

LABEL_318:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v136 = *(a1 + 200);
  *v4 = 1976;
  if (v136 > 0x7F)
  {
    v4[2] = v136 | 0x80;
    v137 = v136 >> 7;
    if (v136 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v137 | 0x80;
        v138 = v137 >> 7;
        ++v4;
        v139 = v137 >> 14;
        v137 >>= 7;
      }

      while (v139);
      *(v4 - 1) = v138;
      if ((v119 & 0x10) == 0)
      {
        goto LABEL_279;
      }
    }

    else
    {
      v4[3] = v137;
      v4 += 4;
      if ((v119 & 0x10) == 0)
      {
        goto LABEL_279;
      }
    }
  }

  else
  {
    v4[2] = v136;
    v4 += 3;
    if ((v119 & 0x10) == 0)
    {
      goto LABEL_279;
    }
  }

LABEL_276:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v120 = *(a1 + 204);
  *v4 = 1989;
  *(v4 + 2) = v120;
  v4 += 6;
LABEL_279:
  if (*(a1 + 19))
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v121 = *(a1 + 165);
    *v4 = 1992;
    v4[2] = v121;
    v4 += 3;
  }

  v122 = *(a1 + 8);
  if ((v122 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v122 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27640D19C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
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
    v7 = sub_276447014(*(a1 + 40));
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
    v9 = sub_276447014(*(a1 + 48));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v10 = sub_276447014(*(a1 + 56));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = sub_276447014(*(a1 + 64));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = sub_276447014(*(a1 + 72));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_28:
  v13 = sub_276447014(*(a1 + 80));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_16:
    v8 = sub_276447014(*(a1 + 88));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_48;
  }

  if ((v2 & 0x100) != 0)
  {
    v14 = sub_276447014(*(a1 + 96));
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_20:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v15 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 104));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_21:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 112));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) == 0)
  {
LABEL_22:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

LABEL_34:
    v18 = *(a1 + 128);
    if (v18 < 0)
    {
      v19 = 11;
    }

    else
    {
      v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v19;
    goto LABEL_38;
  }

LABEL_33:
  v17 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 120));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) != 0)
  {
    goto LABEL_34;
  }

LABEL_38:
  v20 = v3 + 5;
  if ((v2 & 0x2000) == 0)
  {
    v20 = v3;
  }

  if ((v2 & 0x4000) != 0)
  {
    v3 = v20 + 6;
  }

  else
  {
    v3 = v20;
  }

  if ((v2 & 0x8000) != 0)
  {
    v21 = *(a1 + 140);
    v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v21 >= 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 12;
    }

    v3 += v23;
  }

LABEL_48:
  if ((v2 & 0xFF0000) != 0)
  {
    v24 = v3 + 3;
    if ((v2 & 0x10000) == 0)
    {
      v24 = v3;
    }

    if ((v2 & 0x20000) != 0)
    {
      v24 += 3;
    }

    if ((v2 & 0x40000) != 0)
    {
      v24 += 3;
    }

    if ((v2 & 0x80000) != 0)
    {
      v25 = *(a1 + 148);
      v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v25 >= 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 12;
      }

      v24 += v27;
    }

    if ((v2 & 0x100000) != 0)
    {
      v24 += 6;
    }

    if ((v2 & 0x200000) != 0)
    {
      v24 += 6;
    }

    if ((v2 & 0x400000) != 0)
    {
      v28 = *(a1 + 160);
      v29 = ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v28 >= 0)
      {
        v30 = v29;
      }

      else
      {
        v30 = 12;
      }

      v24 += v30;
    }

    v3 = v24 + ((v2 >> 22) & 2);
  }

  if (!BYTE3(v2))
  {
    goto LABEL_83;
  }

  v31 = v3 + 3;
  if ((v2 & 0x1000000) == 0)
  {
    v31 = v3;
  }

  if ((v2 & 0x2000000) != 0)
  {
    v31 += 3;
  }

  if ((v2 & 0x4000000) != 0)
  {
    v3 = v31 + 3;
  }

  else
  {
    v3 = v31;
  }

  if ((v2 & 0x8000000) != 0)
  {
    v35 = *(a1 + 168);
    v36 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v35 >= 0)
    {
      v37 = v36;
    }

    else
    {
      v37 = 12;
    }

    v3 += v37;
    if ((v2 & 0x10000000) == 0)
    {
LABEL_80:
      if ((v2 & 0x20000000) == 0)
      {
        goto LABEL_81;
      }

LABEL_99:
      v41 = *(a1 + 176);
      v42 = ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v41 >= 0)
      {
        v43 = v42;
      }

      else
      {
        v43 = 12;
      }

      v3 += v43;
      if ((v2 & 0x40000000) == 0)
      {
LABEL_82:
        if ((v2 & 0x80000000) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_107;
      }

      goto LABEL_103;
    }
  }

  else if ((v2 & 0x10000000) == 0)
  {
    goto LABEL_80;
  }

  v38 = *(a1 + 172);
  v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v38 >= 0)
  {
    v40 = v39;
  }

  else
  {
    v40 = 12;
  }

  v3 += v40;
  if ((v2 & 0x20000000) != 0)
  {
    goto LABEL_99;
  }

LABEL_81:
  if ((v2 & 0x40000000) == 0)
  {
    goto LABEL_82;
  }

LABEL_103:
  v44 = *(a1 + 180);
  v45 = ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v44 >= 0)
  {
    v46 = v45;
  }

  else
  {
    v46 = 12;
  }

  v3 += v46;
  if ((v2 & 0x80000000) != 0)
  {
LABEL_107:
    v47 = *(a1 + 184);
    v48 = ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v47 >= 0)
    {
      v49 = v48;
    }

    else
    {
      v49 = 12;
    }

    v3 += v49;
  }

LABEL_83:
  v32 = *(a1 + 20);
  if ((v32 & 0x1F) == 0)
  {
    goto LABEL_127;
  }

  if (v32)
  {
    v33 = *(a1 + 188);
    if (v33 < 0)
    {
      v34 = 12;
    }

    else
    {
      v34 = ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v34;
    if ((v32 & 2) == 0)
    {
LABEL_86:
      if ((v32 & 4) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_117;
    }
  }

  else if ((v32 & 2) == 0)
  {
    goto LABEL_86;
  }

  v50 = *(a1 + 192);
  if (v50 < 0)
  {
    v51 = 12;
  }

  else
  {
    v51 = ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v51;
  if ((v32 & 4) == 0)
  {
LABEL_87:
    if ((v32 & 8) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_121;
  }

LABEL_117:
  v52 = *(a1 + 196);
  if (v52 < 0)
  {
    v53 = 12;
  }

  else
  {
    v53 = ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v53;
  if ((v32 & 8) != 0)
  {
LABEL_121:
    v54 = *(a1 + 200);
    if (v54 < 0)
    {
      v55 = 12;
    }

    else
    {
      v55 = ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v55;
  }

LABEL_125:
  if ((v32 & 0x10) != 0)
  {
    v3 += 6;
  }

LABEL_127:
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

uint64_t sub_27640D818(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288523838, 0);
  if (v4)
  {

    return sub_27640D8C0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27640D8C0(uint64_t result, uint64_t a2)
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

      v6 = sub_276447FD4(v7);
      *(v3 + 40) = v6;
    }

    if (*(a2 + 40))
    {
      v8 = *(a2 + 40);
    }

    else
    {
      v8 = &qword_2812F15A8;
    }

    result = sub_27643BB14(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_8:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_8;
  }

  *(v3 + 16) |= 4u;
  v9 = *(v3 + 48);
  if (!v9)
  {
    v10 = *(v3 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = sub_276447FD4(v10);
    *(v3 + 48) = v9;
  }

  if (*(a2 + 48))
  {
    v11 = *(a2 + 48);
  }

  else
  {
    v11 = &qword_2812F15A8;
  }

  result = sub_27643BB14(v9, v11);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_30:
  *(v3 + 16) |= 8u;
  v12 = *(v3 + 56);
  if (!v12)
  {
    v13 = *(v3 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = sub_276447FD4(v13);
    *(v3 + 56) = v12;
  }

  if (*(a2 + 56))
  {
    v14 = *(a2 + 56);
  }

  else
  {
    v14 = &qword_2812F15A8;
  }

  result = sub_27643BB14(v12, v14);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_46:
    *(v3 + 16) |= 0x20u;
    v18 = *(v3 + 72);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = sub_276447FD4(v19);
      *(v3 + 72) = v18;
    }

    if (*(a2 + 72))
    {
      v20 = *(a2 + 72);
    }

    else
    {
      v20 = &qword_2812F15A8;
    }

    result = sub_27643BB14(v18, v20);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
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
  v15 = *(v3 + 64);
  if (!v15)
  {
    v16 = *(v3 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = sub_276447FD4(v16);
    *(v3 + 64) = v15;
  }

  if (*(a2 + 64))
  {
    v17 = *(a2 + 64);
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

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_54:
  *(v3 + 16) |= 0x40u;
  v21 = *(v3 + 80);
  if (!v21)
  {
    v22 = *(v3 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = sub_276447FD4(v22);
    *(v3 + 80) = v21;
  }

  if (*(a2 + 80))
  {
    v23 = *(a2 + 80);
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
    v24 = *(v3 + 88);
    if (!v24)
    {
      v25 = *(v3 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = sub_276447FD4(v25);
      *(v3 + 88) = v24;
    }

    if (*(a2 + 88))
    {
      v26 = *(a2 + 88);
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
    goto LABEL_89;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v27 = *(v3 + 96);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = sub_276447FD4(v28);
      *(v3 + 96) = v27;
    }

    if (*(a2 + 96))
    {
      v29 = *(a2 + 96);
    }

    else
    {
      v29 = &qword_2812F15A8;
    }

    result = sub_27643BB14(v27, v29);
  }

  v30 = MEMORY[0x277D80740];
  if ((v5 & 0x200) != 0)
  {
    *(v3 + 16) |= 0x200u;
    v32 = *(v3 + 104);
    if (!v32)
    {
      v33 = *(v3 + 8);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = MEMORY[0x277C97B00](v33);
      *(v3 + 104) = v32;
    }

    if (*(a2 + 104))
    {
      v34 = *(a2 + 104);
    }

    else
    {
      v34 = v30;
    }

    result = TSK::FormatStructArchive::MergeFrom(v32, v34);
    if ((v5 & 0x400) == 0)
    {
LABEL_82:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_135;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_82;
  }

  *(v3 + 16) |= 0x400u;
  v35 = *(v3 + 112);
  if (!v35)
  {
    v36 = *(v3 + 8);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = MEMORY[0x277C97B00](v36);
    *(v3 + 112) = v35;
  }

  if (*(a2 + 112))
  {
    v37 = *(a2 + 112);
  }

  else
  {
    v37 = v30;
  }

  result = TSK::FormatStructArchive::MergeFrom(v35, v37);
  if ((v5 & 0x800) == 0)
  {
LABEL_83:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_143;
  }

LABEL_135:
  *(v3 + 16) |= 0x800u;
  v38 = *(v3 + 120);
  if (!v38)
  {
    v39 = *(v3 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = MEMORY[0x277C97B00](v39);
    *(v3 + 120) = v38;
  }

  if (*(a2 + 120))
  {
    v40 = *(a2 + 120);
  }

  else
  {
    v40 = v30;
  }

  result = TSK::FormatStructArchive::MergeFrom(v38, v40);
  if ((v5 & 0x1000) == 0)
  {
LABEL_84:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_144;
  }

LABEL_143:
  *(v3 + 128) = *(a2 + 128);
  if ((v5 & 0x2000) == 0)
  {
LABEL_85:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_86;
    }

LABEL_145:
    *(v3 + 136) = *(a2 + 136);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_144:
  *(v3 + 132) = *(a2 + 132);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_145;
  }

LABEL_86:
  if ((v5 & 0x8000) != 0)
  {
LABEL_87:
    *(v3 + 140) = *(a2 + 140);
  }

LABEL_88:
  *(v3 + 16) |= v5;
LABEL_89:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_100;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 144) = *(a2 + 144);
    if ((v5 & 0x20000) == 0)
    {
LABEL_92:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_149;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_92;
  }

  *(v3 + 145) = *(a2 + 145);
  if ((v5 & 0x40000) == 0)
  {
LABEL_93:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_150;
  }

LABEL_149:
  *(v3 + 146) = *(a2 + 146);
  if ((v5 & 0x80000) == 0)
  {
LABEL_94:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_151;
  }

LABEL_150:
  *(v3 + 148) = *(a2 + 148);
  if ((v5 & 0x100000) == 0)
  {
LABEL_95:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_152;
  }

LABEL_151:
  *(v3 + 152) = *(a2 + 152);
  if ((v5 & 0x200000) == 0)
  {
LABEL_96:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_97;
    }

LABEL_153:
    *(v3 + 160) = *(a2 + 160);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

LABEL_152:
  *(v3 + 156) = *(a2 + 156);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_153;
  }

LABEL_97:
  if ((v5 & 0x800000) != 0)
  {
LABEL_98:
    *(v3 + 164) = *(a2 + 164);
  }

LABEL_99:
  *(v3 + 16) |= v5;
LABEL_100:
  if (!HIBYTE(v5))
  {
    goto LABEL_110;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 165) = *(a2 + 165);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_103:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_162;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_103;
  }

  *(v3 + 166) = *(a2 + 166);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_104:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_163;
  }

LABEL_162:
  *(v3 + 167) = *(a2 + 167);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_105:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_164;
  }

LABEL_163:
  *(v3 + 168) = *(a2 + 168);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_106:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_165;
  }

LABEL_164:
  *(v3 + 172) = *(a2 + 172);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_107:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_108;
    }

LABEL_166:
    *(v3 + 180) = *(a2 + 180);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_109;
    }

LABEL_167:
    *(v3 + 184) = *(a2 + 184);
    goto LABEL_109;
  }

LABEL_165:
  *(v3 + 176) = *(a2 + 176);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_166;
  }

LABEL_108:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_167;
  }

LABEL_109:
  *(v3 + 16) |= v5;
LABEL_110:
  v31 = *(a2 + 20);
  if ((v31 & 0x1F) == 0)
  {
    return result;
  }

  if (v31)
  {
    *(v3 + 188) = *(a2 + 188);
    if ((v31 & 2) == 0)
    {
LABEL_113:
      if ((v31 & 4) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_157;
    }
  }

  else if ((v31 & 2) == 0)
  {
    goto LABEL_113;
  }

  *(v3 + 192) = *(a2 + 192);
  if ((v31 & 4) == 0)
  {
LABEL_114:
    if ((v31 & 8) == 0)
    {
      goto LABEL_115;
    }

LABEL_158:
    *(v3 + 200) = *(a2 + 200);
    if ((v31 & 0x10) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_116;
  }

LABEL_157:
  *(v3 + 196) = *(a2 + 196);
  if ((v31 & 8) != 0)
  {
    goto LABEL_158;
  }

LABEL_115:
  if ((v31 & 0x10) != 0)
  {
LABEL_116:
    *(v3 + 204) = *(a2 + 204);
  }

LABEL_117:
  *(v3 + 20) |= v31;
  return result;
}

uint64_t *sub_27640DE54(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27640B030(result);

    return sub_27640D818(v4, a2);
  }

  return result;
}

uint64_t sub_27640DEA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_27643BC1C(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_27643BC1C(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_27643BC1C(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_27643BC1C(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = sub_27643BC1C(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = sub_27643BC1C(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = sub_27643BC1C(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = sub_27643BC1C(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) == 0)
  {
    return 1;
  }

  result = TSK::FormatStructArchive::IsInitialized(*(a1 + 120));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_27640DFD8(uint64_t *a1)
{
  if (a1 != &qword_2812F0650)
  {
    if (a1[3])
    {
      v2 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v2, 0x10A1C4042C41316);
    }

    if (a1[4])
    {
      v3 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v3, 0x10A1C40C8B7F858);
    }

    if (a1[5])
    {
      v4 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v4, 0x10A1C4078DB9C03);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_27640E07C(uint64_t *a1)
{
  sub_27640DFD8(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27640E0BC()
{
  if (atomic_load_explicit(dword_2812ED508, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812F0650;
}

uint64_t *sub_27640E0FC(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = TSD::FillArchive::Clear(result[3]);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = TSD::ShadowArchive::Clear(v1[4]);
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = TSD::StrokeArchive::Clear(v1[5]);
    }
  }

LABEL_6:
  if ((v2 & 0x18) != 0)
  {
    v1[6] = 0;
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

google::protobuf::internal *sub_27640E190(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v30) & 1) == 0)
  {
    while (1)
    {
      v7 = (v30 + 1);
      v8 = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v9 - 128));
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_56;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 29)
          {
            v5 |= 0x10u;
            *(a1 + 52) = *v7;
            v30 = (v7 + 4);
            goto LABEL_49;
          }
        }

        else if (v10 == 4)
        {
          if (v8 == 34)
          {
            *(a1 + 16) |= 2u;
            v19 = *(a1 + 32);
            if (!v19)
            {
              v20 = *(a1 + 8);
              if (v20)
              {
                v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
              }

              v21 = MEMORY[0x277C97A90](v20);
              LODWORD(v19) = v21;
              *(a1 + 32) = v21;
              v7 = v30;
            }

            v14 = sub_2764AC76C(a3, v19, v7);
            goto LABEL_48;
          }
        }

        else if (v10 == 5 && v8 == 42)
        {
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
            v7 = v30;
          }

          v14 = sub_2764AC69C(a3, v11, v7);
          goto LABEL_48;
        }

        goto LABEL_41;
      }

      if (v10 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v22 = *(a1 + 24);
          if (!v22)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = MEMORY[0x277C97A80](v23);
            LODWORD(v22) = v24;
            *(a1 + 24) = v24;
            v7 = v30;
          }

          v14 = sub_2764AC00C(a3, v22, v7);
          goto LABEL_48;
        }

LABEL_41:
        if (v8)
        {
          v25 = (v8 & 7) == 4;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v14 = google::protobuf::internal::UnknownFieldParse();
LABEL_48:
        v30 = v14;
        if (!v14)
        {
          goto LABEL_56;
        }

        goto LABEL_49;
      }

      if (v10 != 2 || v8 != 16)
      {
        goto LABEL_41;
      }

      v5 |= 8u;
      v17 = (v7 + 1);
      LODWORD(v16) = *v7;
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_26;
      }

      v18 = *v17;
      v16 = (v16 + (v18 << 7) - 128);
      if ((v18 & 0x80000000) == 0)
      {
        v17 = (v7 + 2);
LABEL_26:
        v30 = v17;
        *(a1 + 48) = v16;
        goto LABEL_49;
      }

      v28 = google::protobuf::internal::VarintParseSlow64(v7, v16);
      v30 = v28;
      *(a1 + 48) = v29;
      if (!v28)
      {
LABEL_56:
        v30 = 0;
        goto LABEL_2;
      }

LABEL_49:
      if (sub_2763D4D98(a3, &v30))
      {
        goto LABEL_2;
      }
    }

    v7 = (v30 + 2);
LABEL_6:
    v30 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

unsigned __int8 *sub_27640E448(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 48);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(a1 + 24);
  *a2 = 10;
  v7 = *(v6 + 11);
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

  a2 = TSD::FillArchive::_InternalSerialize(v6, v8, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_4;
  }

LABEL_28:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(a1 + 52);
  *a2 = 29;
  *(a2 + 1) = v16;
  a2 += 5;
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_41;
  }

LABEL_31:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(a1 + 32);
  *a2 = 34;
  v18 = *(v17 + 5);
  if (v18 > 0x7F)
  {
    a2[1] = v18 | 0x80;
    v20 = v18 >> 7;
    if (v18 >> 14)
    {
      v19 = a2 + 3;
      do
      {
        *(v19 - 1) = v20 | 0x80;
        v21 = v20 >> 7;
        ++v19;
        v22 = v20 >> 14;
        v20 >>= 7;
      }

      while (v22);
      *(v19 - 1) = v21;
    }

    else
    {
      a2[2] = v20;
      v19 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v18;
    v19 = a2 + 2;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v17, v19, a3);
  if ((v5 & 4) != 0)
  {
LABEL_41:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v23 = *(a1 + 40);
    *a2 = 42;
    v24 = *(v23 + 5);
    if (v24 > 0x7F)
    {
      a2[1] = v24 | 0x80;
      v26 = v24 >> 7;
      if (v24 >> 14)
      {
        v25 = a2 + 3;
        do
        {
          *(v25 - 1) = v26 | 0x80;
          v27 = v26 >> 7;
          ++v25;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
        *(v25 - 1) = v27;
      }

      else
      {
        a2[2] = v26;
        v25 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v24;
      v25 = a2 + 2;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v23, v25, a3);
  }

LABEL_51:
  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v29 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27640E740(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    v4 = 0;
    goto LABEL_19;
  }

  if (v2)
  {
    v5 = TSD::FillArchive::ByteSizeLong(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_12:
    v8 = *(a1 + 48);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v9;
    goto LABEL_16;
  }

  if ((v2 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  if ((v2 & 0x10) != 0)
  {
    v4 = v3 + 5;
  }

  else
  {
    v4 = v3;
  }

LABEL_19:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_27640E894(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288523850, 0);
  if (v4)
  {

    return sub_27640E93C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27640E93C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x1F) != 0)
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

        v6 = MEMORY[0x277C97A80](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80488];
      }

      result = TSD::FillArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_28;
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

      v9 = MEMORY[0x277C97A90](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = MEMORY[0x277D80498];
    }

    result = TSD::ShadowArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }

LABEL_28:
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
LABEL_10:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_9:
      *(v3 + 52) = *(a2 + 52);
      goto LABEL_10;
    }

LABEL_36:
    *(v3 + 48) = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t *sub_27640EAA8(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27640E0FC(result);

    return sub_27640E894(v4, a2);
  }

  return result;
}

uint64_t sub_27640EAF4(uint64_t a1)
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

void sub_27640EBBC(uint64_t a1)
{
  sub_2763941F4((a1 + 8));

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27640EC14()
{
  if (atomic_load_explicit(dword_2812ED4F0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812F0688;
}

uint64_t *sub_27640EC54(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

uint64_t sub_27640EC64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return MEMORY[0x2821EAC40]((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    return a2;
  }
}

uint64_t sub_27640EC80(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = a1 + 8;
  if (v2)
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(v1 + 8) = 0;
  return 0;
}

void *sub_27640ECA0(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288523868, 0);
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_2763D4F88((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }

  return result;
}

_BYTE *sub_27640ED60(_BYTE *result, _BYTE *lpsrc)
{
  if (lpsrc != result)
  {
    v4 = result;
    v6 = result[8];
    v5 = (result + 8);
    if (v6)
    {
      sub_2763D4FD4(v5);
    }

    return sub_27640ECA0(v4, lpsrc);
  }

  return result;
}

uint64_t *sub_27640EDF4(uint64_t *a1)
{
  sub_27640EE28(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_27640EE28(uint64_t *result)
{
  if (result != &qword_2812F06A0)
  {
    v1 = result;
    if (result[4])
    {
      v2 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v2, 0x10A1C4078DB9C03);
    }

    if (v1[5])
    {
      v3 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v3, 0x10A1C4078DB9C03);
    }

    if (v1[6])
    {
      v4 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v4, 0x10A1C40C8B7F858);
    }

    if (v1[7])
    {
      v5 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v5, 0x10A1C40C8B7F858);
    }

    if (v1[8])
    {
      v6 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v6, 0x10A1C4078DB9C03);
    }

    if (v1[9])
    {
      v7 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v7, 0x10A1C4078DB9C03);
    }

    if (v1[10])
    {
      v8 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v8, 0x10A1C40C8B7F858);
    }

    if (v1[11])
    {
      v9 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v9, 0x10A1C40C8B7F858);
    }

    if (v1[12])
    {
      v10 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v10, 0x10A1C4078DB9C03);
    }

    result = v1[13];
    if (result)
    {
      MEMORY[0x277C97240]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27640EF68(uint64_t *a1)
{
  sub_27640EDF4(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27640EFA8()
{
  if (atomic_load_explicit(dword_2812ED338, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812F06A0;
}

uint64_t *sub_27640EFE8(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    result = TSD::StrokeArchive::Clear(result[4]);
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
  result = TSD::ShadowArchive::Clear(v1[6]);
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
  result = TSD::StrokeArchive::Clear(v1[8]);
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
  result = TSD::ShadowArchive::Clear(v1[10]);
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = TSD::ShadowArchive::Clear(v1[11]);
  }

LABEL_11:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result = TSD::StrokeArchive::Clear(v1[12]);
    }

    if ((v2 & 0x200) != 0)
    {
      result = TSD::StrokeArchive::Clear(v1[13]);
    }
  }

  if ((v2 & 0xFC00) != 0)
  {
    v1[14] = 0;
    v1[15] = 0;
    v1[16] = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    v1[17] = 0;
    v1[18] = 0;
    *(v1 + 157) = 0;
    v1[19] = 0;
  }

  if (HIBYTE(v2))
  {
    *(v1 + 165) = 0;
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    *(v1 + 45) = 0;
    *(v1 + 173) = 0;
  }

  if ((v3 & 0x3F00) != 0)
  {
    v1[23] = 0;
    v1[24] = 0;
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

google::protobuf::internal *sub_27640F134(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v180 = a2;
  if ((sub_2763D4D98(a3, &v180) & 1) == 0)
  {
    while (1)
    {
      v6 = (v180 + 1);
      v7 = *v180;
      if (*v180 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v180, (v8 - 128));
          v180 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          v7 = v12;
          goto LABEL_7;
        }

        v6 = (v180 + 2);
      }

      v180 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 13)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x400u;
          v10 = *v6;
          v9 = (v6 + 4);
          *(a1 + 112) = v10;
          goto LABEL_173;
        case 2u:
          if (v7 != 21)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x800u;
          v74 = *v6;
          v9 = (v6 + 4);
          *(a1 + 116) = v74;
          goto LABEL_173;
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 1u;
          v29 = *(a1 + 32);
          if (v29)
          {
            goto LABEL_185;
          }

          v56 = *(a1 + 8);
          if (v56)
          {
            v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
          }

          v57 = MEMORY[0x277C97AA0](v56);
          LODWORD(v29) = v57;
          *(a1 + 32) = v57;
          goto LABEL_184;
        case 4u:
          if (v7 != 34)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 2u;
          v29 = *(a1 + 40);
          if (v29)
          {
            goto LABEL_185;
          }

          v91 = *(a1 + 8);
          if (v91)
          {
            v91 = *(v91 & 0xFFFFFFFFFFFFFFFELL);
          }

          v92 = MEMORY[0x277C97AA0](v91);
          LODWORD(v29) = v92;
          *(a1 + 40) = v92;
          goto LABEL_184;
        case 5u:
          if (v7 != 40)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x1000u;
          v94 = (v6 + 1);
          LODWORD(v93) = *v6;
          if ((v93 & 0x80) == 0)
          {
            goto LABEL_161;
          }

          v95 = *v94;
          v93 = (v93 + (v95 << 7) - 128);
          if (v95 < 0)
          {
            v164 = google::protobuf::internal::VarintParseSlow64(v6, v93);
            v180 = v164;
            *(a1 + 120) = v165;
            if (!v164)
            {
              return 0;
            }
          }

          else
          {
            v94 = (v6 + 2);
LABEL_161:
            v180 = v94;
            *(a1 + 120) = v93;
          }

          goto LABEL_199;
        case 6u:
          if (v7 != 48)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x2000u;
          v65 = (v6 + 1);
          LODWORD(v64) = *v6;
          if ((v64 & 0x80) == 0)
          {
            goto LABEL_107;
          }

          v66 = *v65;
          v64 = (v64 + (v66 << 7) - 128);
          if (v66 < 0)
          {
            v150 = google::protobuf::internal::VarintParseSlow64(v6, v64);
            v180 = v150;
            *(a1 + 124) = v151;
            if (!v150)
            {
              return 0;
            }
          }

          else
          {
            v65 = (v6 + 2);
LABEL_107:
            v180 = v65;
            *(a1 + 124) = v64;
          }

          goto LABEL_199;
        case 7u:
          if (v7 != 56)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x4000u;
          v76 = (v6 + 1);
          LODWORD(v75) = *v6;
          if ((v75 & 0x80) == 0)
          {
            goto LABEL_126;
          }

          v77 = *v76;
          v75 = (v75 + (v77 << 7) - 128);
          if (v77 < 0)
          {
            v156 = google::protobuf::internal::VarintParseSlow64(v6, v75);
            v180 = v156;
            *(a1 + 128) = v157;
            if (!v156)
            {
              return 0;
            }
          }

          else
          {
            v76 = (v6 + 2);
LABEL_126:
            v180 = v76;
            *(a1 + 128) = v75;
          }

          goto LABEL_199;
        case 8u:
          if (v7 != 64)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x8000u;
          v79 = (v6 + 1);
          LODWORD(v78) = *v6;
          if ((v78 & 0x80) == 0)
          {
            goto LABEL_131;
          }

          v80 = *v79;
          v78 = (v78 + (v80 << 7) - 128);
          if (v80 < 0)
          {
            v158 = google::protobuf::internal::VarintParseSlow64(v6, v78);
            v180 = v158;
            *(a1 + 132) = v159;
            if (!v158)
            {
              return 0;
            }
          }

          else
          {
            v79 = (v6 + 2);
LABEL_131:
            v180 = v79;
            *(a1 + 132) = v78;
          }

          goto LABEL_199;
        case 9u:
          if (v7 != 77)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x10000u;
          v100 = *v6;
          v9 = (v6 + 4);
          *(a1 + 136) = v100;
          goto LABEL_173;
        case 0xAu:
          if (v7 != 85)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x20000u;
          v99 = *v6;
          v9 = (v6 + 4);
          *(a1 + 140) = v99;
          goto LABEL_173;
        case 0xBu:
          if (v7 != 93)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x40000u;
          v41 = *v6;
          v9 = (v6 + 4);
          *(a1 + 144) = v41;
          goto LABEL_173;
        case 0xCu:
          if (v7 != 101)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x80000u;
          v67 = *v6;
          v9 = (v6 + 4);
          *(a1 + 148) = v67;
          goto LABEL_173;
        case 0xDu:
          if (v7 != 109)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x100000u;
          v53 = *v6;
          v9 = (v6 + 4);
          *(a1 + 152) = v53;
          goto LABEL_173;
        case 0xEu:
          if (v7 != 114)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 4u;
          v32 = *(a1 + 48);
          if (v32)
          {
            goto LABEL_197;
          }

          v33 = *(a1 + 8);
          if (v33)
          {
            v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x277C97A90](v33);
          LODWORD(v32) = v34;
          *(a1 + 48) = v34;
          goto LABEL_196;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 8u;
          v32 = *(a1 + 56);
          if (v32)
          {
            goto LABEL_197;
          }

          v84 = *(a1 + 8);
          if (v84)
          {
            v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
          }

          v85 = MEMORY[0x277C97A90](v84);
          LODWORD(v32) = v85;
          *(a1 + 56) = v85;
          goto LABEL_196;
        case 0x10u:
          if (v7 != 130)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x10u;
          v29 = *(a1 + 64);
          if (v29)
          {
            goto LABEL_185;
          }

          v86 = *(a1 + 8);
          if (v86)
          {
            v86 = *(v86 & 0xFFFFFFFFFFFFFFFELL);
          }

          v87 = MEMORY[0x277C97AA0](v86);
          LODWORD(v29) = v87;
          *(a1 + 64) = v87;
          goto LABEL_184;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x20u;
          v29 = *(a1 + 72);
          if (v29)
          {
            goto LABEL_185;
          }

          v105 = *(a1 + 8);
          if (v105)
          {
            v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
          }

          v106 = MEMORY[0x277C97AA0](v105);
          LODWORD(v29) = v106;
          *(a1 + 72) = v106;
          goto LABEL_184;
        case 0x12u:
          if (v7 != 149)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x200000u;
          v101 = *v6;
          v9 = (v6 + 4);
          *(a1 + 156) = v101;
          goto LABEL_173;
        case 0x13u:
          if (v7 != 157)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x400000u;
          v28 = *v6;
          v9 = (v6 + 4);
          *(a1 + 160) = v28;
LABEL_173:
          v180 = v9;
          goto LABEL_199;
        case 0x14u:
          if (v7 != 162)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x40u;
          v32 = *(a1 + 80);
          if (v32)
          {
            goto LABEL_197;
          }

          v54 = *(a1 + 8);
          if (v54)
          {
            v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
          }

          v55 = MEMORY[0x277C97A90](v54);
          LODWORD(v32) = v55;
          *(a1 + 80) = v55;
          goto LABEL_196;
        case 0x15u:
          if (v7 != 170)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x80u;
          v32 = *(a1 + 88);
          if (v32)
          {
            goto LABEL_197;
          }

          v111 = *(a1 + 8);
          if (v111)
          {
            v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
          }

          v112 = MEMORY[0x277C97A90](v111);
          LODWORD(v32) = v112;
          *(a1 + 88) = v112;
LABEL_196:
          v6 = v180;
LABEL_197:
          v107 = sub_2764AC76C(a3, v32, v6);
          goto LABEL_198;
        case 0x16u:
          if (v7 != 178)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x100u;
          v29 = *(a1 + 96);
          if (v29)
          {
            goto LABEL_185;
          }

          v30 = *(a1 + 8);
          if (v30)
          {
            v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
          }

          v31 = MEMORY[0x277C97AA0](v30);
          LODWORD(v29) = v31;
          *(a1 + 96) = v31;
          goto LABEL_184;
        case 0x17u:
          if (v7 != 186)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x200u;
          v29 = *(a1 + 104);
          if (v29)
          {
            goto LABEL_185;
          }

          v51 = *(a1 + 8);
          if (v51)
          {
            v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
          }

          v52 = MEMORY[0x277C97AA0](v51);
          LODWORD(v29) = v52;
          *(a1 + 104) = v52;
LABEL_184:
          v6 = v180;
LABEL_185:
          v107 = sub_2764AC69C(a3, v29, v6);
          goto LABEL_198;
        case 0x18u:
          if (v7 != 192)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x80000000;
          v39 = (v6 + 1);
          v38 = *v6;
          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_58;
          }

          v40 = *v39;
          v38 = (v40 << 7) + v38 - 128;
          if (v40 < 0)
          {
            v138 = google::protobuf::internal::VarintParseSlow64(v6, v38);
            v180 = v138;
            *(a1 + 172) = v139 != 0;
            if (!v138)
            {
              return 0;
            }
          }

          else
          {
            v39 = (v6 + 2);
LABEL_58:
            v180 = v39;
            *(a1 + 172) = v38 != 0;
          }

          goto LABEL_199;
        case 0x19u:
          if (v7 != 200)
          {
            goto LABEL_221;
          }

          *(a1 + 20) |= 1u;
          v69 = (v6 + 1);
          v68 = *v6;
          if ((v68 & 0x8000000000000000) == 0)
          {
            goto LABEL_114;
          }

          v70 = *v69;
          v68 = (v70 << 7) + v68 - 128;
          if (v70 < 0)
          {
            v152 = google::protobuf::internal::VarintParseSlow64(v6, v68);
            v180 = v152;
            *(a1 + 173) = v153 != 0;
            if (!v152)
            {
              return 0;
            }
          }

          else
          {
            v69 = (v6 + 2);
LABEL_114:
            v180 = v69;
            *(a1 + 173) = v68 != 0;
          }

          goto LABEL_199;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_221;
          }

          *(a1 + 20) |= 0x10u;
          v36 = (v6 + 1);
          v35 = *v6;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_53;
          }

          v37 = *v36;
          v35 = (v37 << 7) + v35 - 128;
          if (v37 < 0)
          {
            v136 = google::protobuf::internal::VarintParseSlow64(v6, v35);
            v180 = v136;
            *(a1 + 177) = v137 != 0;
            if (!v136)
            {
              return 0;
            }
          }

          else
          {
            v36 = (v6 + 2);
LABEL_53:
            v180 = v36;
            *(a1 + 177) = v35 != 0;
          }

          goto LABEL_199;
        case 0x1Bu:
          if (v7 != 216)
          {
            goto LABEL_221;
          }

          *(a1 + 20) |= 0x20u;
          v117 = (v6 + 1);
          v116 = *v6;
          if ((v116 & 0x8000000000000000) == 0)
          {
            goto LABEL_210;
          }

          v118 = *v117;
          v116 = (v118 << 7) + v116 - 128;
          if (v118 < 0)
          {
            v174 = google::protobuf::internal::VarintParseSlow64(v6, v116);
            v180 = v174;
            *(a1 + 178) = v175 != 0;
            if (!v174)
            {
              return 0;
            }
          }

          else
          {
            v117 = (v6 + 2);
LABEL_210:
            v180 = v117;
            *(a1 + 178) = v116 != 0;
          }

          goto LABEL_199;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x800000u;
          v114 = (v6 + 1);
          v113 = *v6;
          if ((v113 & 0x8000000000000000) == 0)
          {
            goto LABEL_205;
          }

          v115 = *v114;
          v113 = (v115 << 7) + v113 - 128;
          if (v115 < 0)
          {
            v172 = google::protobuf::internal::VarintParseSlow64(v6, v113);
            v180 = v172;
            *(a1 + 164) = v173 != 0;
            if (!v172)
            {
              return 0;
            }
          }

          else
          {
            v114 = (v6 + 2);
LABEL_205:
            v180 = v114;
            *(a1 + 164) = v113 != 0;
          }

          goto LABEL_199;
        case 0x1Du:
          if (v7 != 232)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x1000000u;
          v46 = (v6 + 1);
          v45 = *v6;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_70;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if (v47 < 0)
          {
            v142 = google::protobuf::internal::VarintParseSlow64(v6, v45);
            v180 = v142;
            *(a1 + 165) = v143 != 0;
            if (!v142)
            {
              return 0;
            }
          }

          else
          {
            v46 = (v6 + 2);
LABEL_70:
            v180 = v46;
            *(a1 + 165) = v45 != 0;
          }

          goto LABEL_199;
        case 0x1Eu:
          if (v7 != 240)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x2000000u;
          v59 = (v6 + 1);
          v58 = *v6;
          if ((v58 & 0x8000000000000000) == 0)
          {
            goto LABEL_97;
          }

          v60 = *v59;
          v58 = (v60 << 7) + v58 - 128;
          if (v60 < 0)
          {
            v146 = google::protobuf::internal::VarintParseSlow64(v6, v58);
            v180 = v146;
            *(a1 + 166) = v147 != 0;
            if (!v146)
            {
              return 0;
            }
          }

          else
          {
            v59 = (v6 + 2);
LABEL_97:
            v180 = v59;
            *(a1 + 166) = v58 != 0;
          }

          goto LABEL_199;
        case 0x1Fu:
          if (v7 != 248)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x4000000u;
          v89 = (v6 + 1);
          v88 = *v6;
          if ((v88 & 0x8000000000000000) == 0)
          {
            goto LABEL_151;
          }

          v90 = *v89;
          v88 = (v90 << 7) + v88 - 128;
          if (v90 < 0)
          {
            v162 = google::protobuf::internal::VarintParseSlow64(v6, v88);
            v180 = v162;
            *(a1 + 167) = v163 != 0;
            if (!v162)
            {
              return 0;
            }
          }

          else
          {
            v89 = (v6 + 2);
LABEL_151:
            v180 = v89;
            *(a1 + 167) = v88 != 0;
          }

          goto LABEL_199;
        case 0x20u:
          if (v7)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x8000000u;
          v62 = (v6 + 1);
          v61 = *v6;
          if ((v61 & 0x8000000000000000) == 0)
          {
            goto LABEL_102;
          }

          v63 = *v62;
          v61 = (v63 << 7) + v61 - 128;
          if (v63 < 0)
          {
            v148 = google::protobuf::internal::VarintParseSlow64(v6, v61);
            v180 = v148;
            *(a1 + 168) = v149 != 0;
            if (!v148)
            {
              return 0;
            }
          }

          else
          {
            v62 = (v6 + 2);
LABEL_102:
            v180 = v62;
            *(a1 + 168) = v61 != 0;
          }

          goto LABEL_199;
        case 0x21u:
          if (v7 != 8)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x10000000u;
          v123 = (v6 + 1);
          v122 = *v6;
          if ((v122 & 0x8000000000000000) == 0)
          {
            goto LABEL_220;
          }

          v124 = *v123;
          v122 = (v124 << 7) + v122 - 128;
          if (v124 < 0)
          {
            v178 = google::protobuf::internal::VarintParseSlow64(v6, v122);
            v180 = v178;
            *(a1 + 169) = v179 != 0;
            if (!v178)
            {
              return 0;
            }
          }

          else
          {
            v123 = (v6 + 2);
LABEL_220:
            v180 = v123;
            *(a1 + 169) = v122 != 0;
          }

          goto LABEL_199;
        case 0x22u:
          if (v7 != 16)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x20000000u;
          v43 = (v6 + 1);
          v42 = *v6;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_65;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v140 = google::protobuf::internal::VarintParseSlow64(v6, v42);
            v180 = v140;
            *(a1 + 170) = v141 != 0;
            if (!v140)
            {
              return 0;
            }
          }

          else
          {
            v43 = (v6 + 2);
LABEL_65:
            v180 = v43;
            *(a1 + 170) = v42 != 0;
          }

          goto LABEL_199;
        case 0x23u:
          if (v7 != 24)
          {
            goto LABEL_221;
          }

          *(a1 + 16) |= 0x40000000u;
          v103 = (v6 + 1);
          v102 = *v6;
          if ((v102 & 0x8000000000000000) == 0)
          {
            goto LABEL_178;
          }

          v104 = *v103;
          v102 = (v104 << 7) + v102 - 128;
          if (v104 < 0)
          {
            v168 = google::protobuf::internal::VarintParseSlow64(v6, v102);
            v180 = v168;
            *(a1 + 171) = v169 != 0;
            if (!v168)
            {
              return 0;
            }
          }

          else
          {
            v103 = (v6 + 2);
LABEL_178:
            v180 = v103;
            *(a1 + 171) = v102 != 0;
          }

          goto LABEL_199;
        case 0x24u:
          if (v7 != 32)
          {
            goto LABEL_221;
          }

          *(a1 + 20) |= 0x80u;
          v120 = (v6 + 1);
          LODWORD(v119) = *v6;
          if ((v119 & 0x80) == 0)
          {
            goto LABEL_215;
          }

          v121 = *v120;
          v119 = (v119 + (v121 << 7) - 128);
          if (v121 < 0)
          {
            v176 = google::protobuf::internal::VarintParseSlow64(v6, v119);
            v180 = v176;
            *(a1 + 180) = v177;
            if (!v176)
            {
              return 0;
            }
          }

          else
          {
            v120 = (v6 + 2);
LABEL_215:
            v180 = v120;
            *(a1 + 180) = v119;
          }

          goto LABEL_199;
        case 0x25u:
          if (v7 != 40)
          {
            goto LABEL_221;
          }

          *(a1 + 20) |= 0x100u;
          v23 = (v6 + 1);
          LODWORD(v22) = *v6;
          if ((v22 & 0x80) == 0)
          {
            goto LABEL_31;
          }

          v24 = *v23;
          v22 = (v22 + (v24 << 7) - 128);
          if (v24 < 0)
          {
            v132 = google::protobuf::internal::VarintParseSlow64(v6, v22);
            v180 = v132;
            *(a1 + 184) = v133;
            if (!v132)
            {
              return 0;
            }
          }

          else
          {
            v23 = (v6 + 2);
LABEL_31:
            v180 = v23;
            *(a1 + 184) = v22;
          }

          goto LABEL_199;
        case 0x26u:
          if (v7 != 48)
          {
            goto LABEL_221;
          }

          *(a1 + 20) |= 0x200u;
          v97 = (v6 + 1);
          LODWORD(v96) = *v6;
          if ((v96 & 0x80) == 0)
          {
            goto LABEL_166;
          }

          v98 = *v97;
          v96 = (v96 + (v98 << 7) - 128);
          if (v98 < 0)
          {
            v166 = google::protobuf::internal::VarintParseSlow64(v6, v96);
            v180 = v166;
            *(a1 + 188) = v167;
            if (!v166)
            {
              return 0;
            }
          }

          else
          {
            v97 = (v6 + 2);
LABEL_166:
            v180 = v97;
            *(a1 + 188) = v96;
          }

          goto LABEL_199;
        case 0x27u:
          if (v7 != 56)
          {
            goto LABEL_221;
          }

          *(a1 + 20) |= 0x400u;
          v20 = (v6 + 1);
          LODWORD(v19) = *v6;
          if ((v19 & 0x80) == 0)
          {
            goto LABEL_26;
          }

          v21 = *v20;
          v19 = (v19 + (v21 << 7) - 128);
          if (v21 < 0)
          {
            v130 = google::protobuf::internal::VarintParseSlow64(v6, v19);
            v180 = v130;
            *(a1 + 192) = v131;
            if (!v130)
            {
              return 0;
            }
          }

          else
          {
            v20 = (v6 + 2);
LABEL_26:
            v180 = v20;
            *(a1 + 192) = v19;
          }

          goto LABEL_199;
        case 0x28u:
          if (v7 != 64)
          {
            goto LABEL_221;
          }

          *(a1 + 20) |= 0x800u;
          v17 = (v6 + 1);
          LODWORD(v16) = *v6;
          if ((v16 & 0x80) == 0)
          {
            goto LABEL_21;
          }

          v18 = *v17;
          v16 = (v16 + (v18 << 7) - 128);
          if (v18 < 0)
          {
            v128 = google::protobuf::internal::VarintParseSlow64(v6, v16);
            v180 = v128;
            *(a1 + 196) = v129;
            if (!v128)
            {
              return 0;
            }
          }

          else
          {
            v17 = (v6 + 2);
LABEL_21:
            v180 = v17;
            *(a1 + 196) = v16;
          }

          goto LABEL_199;
        case 0x29u:
          if (v7 != 72)
          {
            goto LABEL_221;
          }

          *(a1 + 20) |= 0x1000u;
          v49 = (v6 + 1);
          LODWORD(v48) = *v6;
          if ((v48 & 0x80) == 0)
          {
            goto LABEL_75;
          }

          v50 = *v49;
          v48 = (v48 + (v50 << 7) - 128);
          if (v50 < 0)
          {
            v144 = google::protobuf::internal::VarintParseSlow64(v6, v48);
            v180 = v144;
            *(a1 + 200) = v145;
            if (!v144)
            {
              return 0;
            }
          }

          else
          {
            v49 = (v6 + 2);
LABEL_75:
            v180 = v49;
            *(a1 + 200) = v48;
          }

          goto LABEL_199;
        case 0x2Au:
          if (v7 != 80)
          {
            goto LABEL_221;
          }

          *(a1 + 20) |= 4u;
          v72 = (v6 + 1);
          v71 = *v6;
          if ((v71 & 0x8000000000000000) == 0)
          {
            goto LABEL_119;
          }

          v73 = *v72;
          v71 = (v73 << 7) + v71 - 128;
          if (v73 < 0)
          {
            v154 = google::protobuf::internal::VarintParseSlow64(v6, v71);
            v180 = v154;
            *(a1 + 175) = v155 != 0;
            if (!v154)
            {
              return 0;
            }
          }

          else
          {
            v72 = (v6 + 2);
LABEL_119:
            v180 = v72;
            *(a1 + 175) = v71 != 0;
          }

          goto LABEL_199;
        case 0x2Bu:
          if (v7 != 88)
          {
            goto LABEL_221;
          }

          *(a1 + 20) |= 8u;
          v109 = (v6 + 1);
          v108 = *v6;
          if ((v108 & 0x8000000000000000) == 0)
          {
            goto LABEL_190;
          }

          v110 = *v109;
          v108 = (v110 << 7) + v108 - 128;
          if (v110 < 0)
          {
            v170 = google::protobuf::internal::VarintParseSlow64(v6, v108);
            v180 = v170;
            *(a1 + 176) = v171 != 0;
            if (!v170)
            {
              return 0;
            }
          }

          else
          {
            v109 = (v6 + 2);
LABEL_190:
            v180 = v109;
            *(a1 + 176) = v108 != 0;
          }

          goto LABEL_199;
        case 0x2Cu:
          if (v7 != 96)
          {
            goto LABEL_221;
          }

          *(a1 + 20) |= 0x40u;
          v14 = (v6 + 1);
          v13 = *v6;
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }

          v15 = *v14;
          v13 = (v15 << 7) + v13 - 128;
          if (v15 < 0)
          {
            v126 = google::protobuf::internal::VarintParseSlow64(v6, v13);
            v180 = v126;
            *(a1 + 179) = v127 != 0;
            if (!v126)
            {
              return 0;
            }
          }

          else
          {
            v14 = (v6 + 2);
LABEL_16:
            v180 = v14;
            *(a1 + 179) = v13 != 0;
          }

          goto LABEL_199;
        case 0x2Eu:
          if (v7 != 112)
          {
            goto LABEL_221;
          }

          *(a1 + 20) |= 0x2000u;
          v26 = (v6 + 1);
          LODWORD(v25) = *v6;
          if ((v25 & 0x80) == 0)
          {
            goto LABEL_36;
          }

          v27 = *v26;
          v25 = (v25 + (v27 << 7) - 128);
          if (v27 < 0)
          {
            v134 = google::protobuf::internal::VarintParseSlow64(v6, v25);
            v180 = v134;
            *(a1 + 204) = v135;
            if (!v134)
            {
              return 0;
            }
          }

          else
          {
            v26 = (v6 + 2);
LABEL_36:
            v180 = v26;
            *(a1 + 204) = v25;
          }

          goto LABEL_199;
        case 0x2Fu:
          if (v7 != 120)
          {
            goto LABEL_221;
          }

          *(a1 + 20) |= 2u;
          v82 = (v6 + 1);
          v81 = *v6;
          if ((v81 & 0x8000000000000000) == 0)
          {
            goto LABEL_136;
          }

          v83 = *v82;
          v81 = (v83 << 7) + v81 - 128;
          if (v83 < 0)
          {
            v160 = google::protobuf::internal::VarintParseSlow64(v6, v81);
            v180 = v160;
            *(a1 + 174) = v161 != 0;
            if (!v160)
            {
              return 0;
            }
          }

          else
          {
            v82 = (v6 + 2);
LABEL_136:
            v180 = v82;
            *(a1 + 174) = v81 != 0;
          }

          goto LABEL_199;
        default:
LABEL_221:
          if (v7)
          {
            v125 = (v7 & 7) == 4;
          }

          else
          {
            v125 = 1;
          }

          if (v125)
          {
            *(a3 + 80) = v7 - 1;
            return v180;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v107 = google::protobuf::internal::UnknownFieldParse();
LABEL_198:
          v180 = v107;
          if (!v107)
          {
            return 0;
          }

LABEL_199:
          if (sub_2763D4D98(a3, &v180))
          {
            return v180;
          }

          break;
      }
    }
  }

  return v180;
}

unint64_t sub_276410294(uint64_t a1, unint64_t a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 112);
    *a2 = 13;
    *(a2 + 1) = v6;
    a2 += 5;
    if ((v5 & 0x800) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
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

  v7 = *(a1 + 116);
  *a2 = 21;
  *(a2 + 1) = v7;
  a2 += 5;
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_32:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(a1 + 32);
  *a2 = 26;
  v9 = *(v8 + 5);
  if (v9 > 0x7F)
  {
    *(a2 + 1) = v9 | 0x80;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      v10 = (a2 + 3);
      do
      {
        *(v10 - 1) = v11 | 0x80;
        v12 = v11 >> 7;
        ++v10;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
      *(v10 - 1) = v12;
    }

    else
    {
      *(a2 + 2) = v11;
      v10 = (a2 + 3);
    }
  }

  else
  {
    *(a2 + 1) = v9;
    v10 = (a2 + 2);
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v8, v10, a3);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_52;
  }

LABEL_42:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(a1 + 40);
  *a2 = 34;
  v15 = *(v14 + 5);
  if (v15 > 0x7F)
  {
    *(a2 + 1) = v15 | 0x80;
    v17 = v15 >> 7;
    if (v15 >> 14)
    {
      v16 = (a2 + 3);
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
      *(a2 + 2) = v17;
      v16 = (a2 + 3);
    }
  }

  else
  {
    *(a2 + 1) = v15;
    v16 = (a2 + 2);
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v14, v16, a3);
  if ((v5 & 0x1000) == 0)
  {
LABEL_6:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

LABEL_63:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(a1 + 124);
    *a2 = 48;
    if (v24 > 0x7F)
    {
      *(a2 + 1) = v24 | 0x80;
      v25 = v24 >> 7;
      if (v24 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v25 | 0x80;
          v26 = v25 >> 7;
          ++a2;
          v27 = v25 >> 14;
          v25 >>= 7;
        }

        while (v27);
        *(a2 - 1) = v26;
        if ((v5 & 0x4000) != 0)
        {
          goto LABEL_74;
        }
      }

      else
      {
        *(a2 + 2) = v25;
        a2 += 3;
        if ((v5 & 0x4000) != 0)
        {
          goto LABEL_74;
        }
      }
    }

    else
    {
      *(a2 + 1) = v24;
      a2 += 2;
      if ((v5 & 0x4000) != 0)
      {
        goto LABEL_74;
      }
    }

LABEL_8:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

LABEL_85:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v32 = *(a1 + 132);
    *a2 = 64;
    if (v32 > 0x7F)
    {
      *(a2 + 1) = v32 | 0x80;
      v33 = v32 >> 7;
      if (v32 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v33 | 0x80;
          v34 = v33 >> 7;
          ++a2;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
        *(a2 - 1) = v34;
        if ((v5 & 0x10000) != 0)
        {
          goto LABEL_96;
        }
      }

      else
      {
        *(a2 + 2) = v33;
        a2 += 3;
        if ((v5 & 0x10000) != 0)
        {
          goto LABEL_96;
        }
      }
    }

    else
    {
      *(a2 + 1) = v32;
      a2 += 2;
      if ((v5 & 0x10000) != 0)
      {
        goto LABEL_96;
      }
    }

LABEL_10:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_99;
  }

LABEL_52:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(a1 + 120);
  *a2 = 40;
  if (v20 > 0x7F)
  {
    *(a2 + 1) = v20 | 0x80;
    v21 = v20 >> 7;
    if (v20 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++a2;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(a2 - 1) = v22;
      if ((v5 & 0x2000) != 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      *(a2 + 2) = v21;
      a2 += 3;
      if ((v5 & 0x2000) != 0)
      {
        goto LABEL_63;
      }
    }
  }

  else
  {
    *(a2 + 1) = v20;
    a2 += 2;
    if ((v5 & 0x2000) != 0)
    {
      goto LABEL_63;
    }
  }

LABEL_7:
  if ((v5 & 0x4000) == 0)
  {
    goto LABEL_8;
  }

LABEL_74:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v28 = *(a1 + 128);
  *a2 = 56;
  if (v28 > 0x7F)
  {
    *(a2 + 1) = v28 | 0x80;
    v29 = v28 >> 7;
    if (v28 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v29 | 0x80;
        v30 = v29 >> 7;
        ++a2;
        v31 = v29 >> 14;
        v29 >>= 7;
      }

      while (v31);
      *(a2 - 1) = v30;
      if ((v5 & 0x8000) != 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      *(a2 + 2) = v29;
      a2 += 3;
      if ((v5 & 0x8000) != 0)
      {
        goto LABEL_85;
      }
    }
  }

  else
  {
    *(a2 + 1) = v28;
    a2 += 2;
    if ((v5 & 0x8000) != 0)
    {
      goto LABEL_85;
    }
  }

LABEL_9:
  if ((v5 & 0x10000) == 0)
  {
    goto LABEL_10;
  }

LABEL_96:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v36 = *(a1 + 136);
  *a2 = 77;
  *(a2 + 1) = v36;
  a2 += 5;
  if ((v5 & 0x20000) == 0)
  {
LABEL_11:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_102;
  }

LABEL_99:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v37 = *(a1 + 140);
  *a2 = 85;
  *(a2 + 1) = v37;
  a2 += 5;
  if ((v5 & 0x40000) == 0)
  {
LABEL_12:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_105;
  }

LABEL_102:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v38 = *(a1 + 144);
  *a2 = 93;
  *(a2 + 1) = v38;
  a2 += 5;
  if ((v5 & 0x80000) == 0)
  {
LABEL_13:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_108;
  }

LABEL_105:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v39 = *(a1 + 148);
  *a2 = 101;
  *(a2 + 1) = v39;
  a2 += 5;
  if ((v5 & 0x100000) == 0)
  {
LABEL_14:
    if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_111;
  }

LABEL_108:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v40 = *(a1 + 152);
  *a2 = 109;
  *(a2 + 1) = v40;
  a2 += 5;
  if ((v5 & 4) == 0)
  {
LABEL_15:
    if ((v5 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_121;
  }

LABEL_111:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v41 = *(a1 + 48);
  *a2 = 114;
  v42 = *(v41 + 5);
  if (v42 > 0x7F)
  {
    *(a2 + 1) = v42 | 0x80;
    v44 = v42 >> 7;
    if (v42 >> 14)
    {
      v43 = (a2 + 3);
      do
      {
        *(v43 - 1) = v44 | 0x80;
        v45 = v44 >> 7;
        ++v43;
        v46 = v44 >> 14;
        v44 >>= 7;
      }

      while (v46);
      *(v43 - 1) = v45;
    }

    else
    {
      *(a2 + 2) = v44;
      v43 = (a2 + 3);
    }
  }

  else
  {
    *(a2 + 1) = v42;
    v43 = (a2 + 2);
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v41, v43, a3);
  if ((v5 & 8) == 0)
  {
LABEL_16:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_131;
  }

LABEL_121:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v47 = *(a1 + 56);
  *a2 = 122;
  v48 = *(v47 + 5);
  if (v48 > 0x7F)
  {
    *(a2 + 1) = v48 | 0x80;
    v50 = v48 >> 7;
    if (v48 >> 14)
    {
      v49 = (a2 + 3);
      do
      {
        *(v49 - 1) = v50 | 0x80;
        v51 = v50 >> 7;
        ++v49;
        v52 = v50 >> 14;
        v50 >>= 7;
      }

      while (v52);
      *(v49 - 1) = v51;
    }

    else
    {
      *(a2 + 2) = v50;
      v49 = (a2 + 3);
    }
  }

  else
  {
    *(a2 + 1) = v48;
    v49 = (a2 + 2);
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v47, v49, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_17:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_141;
  }

LABEL_131:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v53 = *(a1 + 64);
  *a2 = 386;
  v54 = *(v53 + 5);
  if (v54 > 0x7F)
  {
    *(a2 + 2) = v54 | 0x80;
    v56 = v54 >> 7;
    if (v54 >> 14)
    {
      v55 = (a2 + 4);
      do
      {
        *(v55 - 1) = v56 | 0x80;
        v57 = v56 >> 7;
        ++v55;
        v58 = v56 >> 14;
        v56 >>= 7;
      }

      while (v58);
      *(v55 - 1) = v57;
    }

    else
    {
      *(a2 + 3) = v56;
      v55 = (a2 + 4);
    }
  }

  else
  {
    *(a2 + 2) = v54;
    v55 = (a2 + 3);
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v53, v55, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_18:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_151;
  }

LABEL_141:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v59 = *(a1 + 72);
  *a2 = 394;
  v60 = *(v59 + 5);
  if (v60 > 0x7F)
  {
    *(a2 + 2) = v60 | 0x80;
    v62 = v60 >> 7;
    if (v60 >> 14)
    {
      v61 = (a2 + 4);
      do
      {
        *(v61 - 1) = v62 | 0x80;
        v63 = v62 >> 7;
        ++v61;
        v64 = v62 >> 14;
        v62 >>= 7;
      }

      while (v64);
      *(v61 - 1) = v63;
    }

    else
    {
      *(a2 + 3) = v62;
      v61 = (a2 + 4);
    }
  }

  else
  {
    *(a2 + 2) = v60;
    v61 = (a2 + 3);
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v59, v61, a3);
  if ((v5 & 0x200000) == 0)
  {
LABEL_19:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_154;
  }

LABEL_151:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v65 = *(a1 + 156);
  *a2 = 405;
  *(a2 + 2) = v65;
  a2 += 6;
  if ((v5 & 0x400000) == 0)
  {
LABEL_20:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_157;
  }

LABEL_154:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v66 = *(a1 + 160);
  *a2 = 413;
  *(a2 + 2) = v66;
  a2 += 6;
  if ((v5 & 0x40) == 0)
  {
LABEL_21:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_167;
  }

LABEL_157:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v67 = *(a1 + 80);
  *a2 = 418;
  v68 = *(v67 + 5);
  if (v68 > 0x7F)
  {
    *(a2 + 2) = v68 | 0x80;
    v70 = v68 >> 7;
    if (v68 >> 14)
    {
      v69 = (a2 + 4);
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
      *(a2 + 3) = v70;
      v69 = (a2 + 4);
    }
  }

  else
  {
    *(a2 + 2) = v68;
    v69 = (a2 + 3);
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v67, v69, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_22:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_177;
  }

LABEL_167:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v73 = *(a1 + 88);
  *a2 = 426;
  v74 = *(v73 + 5);
  if (v74 > 0x7F)
  {
    *(a2 + 2) = v74 | 0x80;
    v76 = v74 >> 7;
    if (v74 >> 14)
    {
      v75 = (a2 + 4);
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
      *(a2 + 3) = v76;
      v75 = (a2 + 4);
    }
  }

  else
  {
    *(a2 + 2) = v74;
    v75 = (a2 + 3);
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v73, v75, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_23:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_187;
  }

LABEL_177:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v79 = *(a1 + 96);
  *a2 = 434;
  v80 = *(v79 + 5);
  if (v80 > 0x7F)
  {
    *(a2 + 2) = v80 | 0x80;
    v82 = v80 >> 7;
    if (v80 >> 14)
    {
      v81 = (a2 + 4);
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
      *(a2 + 3) = v82;
      v81 = (a2 + 4);
    }
  }

  else
  {
    *(a2 + 2) = v80;
    v81 = (a2 + 3);
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v79, v81, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_24:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_200;
    }

    goto LABEL_197;
  }

LABEL_187:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v85 = *(a1 + 104);
  *a2 = 442;
  v86 = *(v85 + 5);
  if (v86 > 0x7F)
  {
    *(a2 + 2) = v86 | 0x80;
    v88 = v86 >> 7;
    if (v86 >> 14)
    {
      v87 = (a2 + 4);
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
      *(a2 + 3) = v88;
      v87 = (a2 + 4);
    }
  }

  else
  {
    *(a2 + 2) = v86;
    v87 = (a2 + 3);
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v85, v87, a3);
  if (v5 < 0)
  {
LABEL_197:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v91 = *(a1 + 172);
    *a2 = 448;
    *(a2 + 2) = v91;
    a2 += 3;
  }

LABEL_200:
  v92 = *(a1 + 20);
  if (v92)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v93 = *(a1 + 173);
    *a2 = 456;
    *(a2 + 2) = v93;
    a2 += 3;
    if ((v92 & 0x10) == 0)
    {
LABEL_202:
      if ((v92 & 0x20) == 0)
      {
        goto LABEL_213;
      }

      goto LABEL_210;
    }
  }

  else if ((v92 & 0x10) == 0)
  {
    goto LABEL_202;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v94 = *(a1 + 177);
  *a2 = 464;
  *(a2 + 2) = v94;
  a2 += 3;
  if ((v92 & 0x20) != 0)
  {
LABEL_210:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v95 = *(a1 + 178);
    *a2 = 472;
    *(a2 + 2) = v95;
    a2 += 3;
  }

LABEL_213:
  v96 = *(a1 + 16);
  if ((v96 & 0x800000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v97 = *(a1 + 164);
    *a2 = 480;
    *(a2 + 2) = v97;
    a2 += 3;
    if ((v96 & 0x1000000) == 0)
    {
LABEL_215:
      if ((v96 & 0x2000000) == 0)
      {
        goto LABEL_216;
      }

      goto LABEL_228;
    }
  }

  else if ((v96 & 0x1000000) == 0)
  {
    goto LABEL_215;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v98 = *(a1 + 165);
  *a2 = 488;
  *(a2 + 2) = v98;
  a2 += 3;
  if ((v96 & 0x2000000) == 0)
  {
LABEL_216:
    if ((v96 & 0x4000000) == 0)
    {
      goto LABEL_217;
    }

    goto LABEL_231;
  }

LABEL_228:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v99 = *(a1 + 166);
  *a2 = 496;
  *(a2 + 2) = v99;
  a2 += 3;
  if ((v96 & 0x4000000) == 0)
  {
LABEL_217:
    if ((v96 & 0x8000000) == 0)
    {
      goto LABEL_218;
    }

    goto LABEL_234;
  }

LABEL_231:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v100 = *(a1 + 167);
  *a2 = 504;
  *(a2 + 2) = v100;
  a2 += 3;
  if ((v96 & 0x8000000) == 0)
  {
LABEL_218:
    if ((v96 & 0x10000000) == 0)
    {
      goto LABEL_219;
    }

    goto LABEL_237;
  }

LABEL_234:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v101 = *(a1 + 168);
  *a2 = 640;
  *(a2 + 2) = v101;
  a2 += 3;
  if ((v96 & 0x10000000) == 0)
  {
LABEL_219:
    if ((v96 & 0x20000000) == 0)
    {
      goto LABEL_220;
    }

    goto LABEL_240;
  }

LABEL_237:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v102 = *(a1 + 169);
  *a2 = 648;
  *(a2 + 2) = v102;
  a2 += 3;
  if ((v96 & 0x20000000) == 0)
  {
LABEL_220:
    if ((v96 & 0x40000000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_243;
  }

LABEL_240:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v103 = *(a1 + 170);
  *a2 = 656;
  *(a2 + 2) = v103;
  a2 += 3;
  if ((v96 & 0x40000000) != 0)
  {
LABEL_243:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v104 = *(a1 + 171);
    *a2 = 664;
    *(a2 + 2) = v104;
    a2 += 3;
  }

LABEL_246:
  v105 = *(a1 + 20);
  if ((v105 & 0x80) == 0)
  {
    if ((v105 & 0x100) == 0)
    {
      goto LABEL_248;
    }

LABEL_273:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v113 = *(a1 + 184);
    *a2 = 680;
    if (v113 > 0x7F)
    {
      *(a2 + 2) = v113 | 0x80;
      v114 = v113 >> 7;
      if (v113 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v114 | 0x80;
          v115 = v114 >> 7;
          ++a2;
          v116 = v114 >> 14;
          v114 >>= 7;
        }

        while (v116);
        *(a2 - 1) = v115;
        if ((v105 & 0x200) != 0)
        {
          goto LABEL_284;
        }
      }

      else
      {
        *(a2 + 3) = v114;
        a2 += 4;
        if ((v105 & 0x200) != 0)
        {
          goto LABEL_284;
        }
      }
    }

    else
    {
      *(a2 + 2) = v113;
      a2 += 3;
      if ((v105 & 0x200) != 0)
      {
        goto LABEL_284;
      }
    }

LABEL_249:
    if ((v105 & 0x400) == 0)
    {
      goto LABEL_250;
    }

LABEL_295:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v121 = *(a1 + 192);
    *a2 = 696;
    if (v121 > 0x7F)
    {
      *(a2 + 2) = v121 | 0x80;
      v122 = v121 >> 7;
      if (v121 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v122 | 0x80;
          v123 = v122 >> 7;
          ++a2;
          v124 = v122 >> 14;
          v122 >>= 7;
        }

        while (v124);
        *(a2 - 1) = v123;
        if ((v105 & 0x800) != 0)
        {
          goto LABEL_306;
        }
      }

      else
      {
        *(a2 + 3) = v122;
        a2 += 4;
        if ((v105 & 0x800) != 0)
        {
          goto LABEL_306;
        }
      }
    }

    else
    {
      *(a2 + 2) = v121;
      a2 += 3;
      if ((v105 & 0x800) != 0)
      {
        goto LABEL_306;
      }
    }

LABEL_251:
    if ((v105 & 0x1000) == 0)
    {
      goto LABEL_252;
    }

LABEL_317:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v129 = *(a1 + 200);
    *a2 = 712;
    if (v129 > 0x7F)
    {
      *(a2 + 2) = v129 | 0x80;
      v130 = v129 >> 7;
      if (v129 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v130 | 0x80;
          v131 = v130 >> 7;
          ++a2;
          v132 = v130 >> 14;
          v130 >>= 7;
        }

        while (v132);
        *(a2 - 1) = v131;
        if ((v105 & 4) != 0)
        {
          goto LABEL_328;
        }
      }

      else
      {
        *(a2 + 3) = v130;
        a2 += 4;
        if ((v105 & 4) != 0)
        {
          goto LABEL_328;
        }
      }
    }

    else
    {
      *(a2 + 2) = v129;
      a2 += 3;
      if ((v105 & 4) != 0)
      {
        goto LABEL_328;
      }
    }

LABEL_253:
    if ((v105 & 8) == 0)
    {
      goto LABEL_254;
    }

    goto LABEL_331;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v109 = *(a1 + 180);
  *a2 = 672;
  if (v109 > 0x7F)
  {
    *(a2 + 2) = v109 | 0x80;
    v110 = v109 >> 7;
    if (v109 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v110 | 0x80;
        v111 = v110 >> 7;
        ++a2;
        v112 = v110 >> 14;
        v110 >>= 7;
      }

      while (v112);
      *(a2 - 1) = v111;
      if ((v105 & 0x100) != 0)
      {
        goto LABEL_273;
      }
    }

    else
    {
      *(a2 + 3) = v110;
      a2 += 4;
      if ((v105 & 0x100) != 0)
      {
        goto LABEL_273;
      }
    }
  }

  else
  {
    *(a2 + 2) = v109;
    a2 += 3;
    if ((v105 & 0x100) != 0)
    {
      goto LABEL_273;
    }
  }

LABEL_248:
  if ((v105 & 0x200) == 0)
  {
    goto LABEL_249;
  }

LABEL_284:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v117 = *(a1 + 188);
  *a2 = 688;
  if (v117 > 0x7F)
  {
    *(a2 + 2) = v117 | 0x80;
    v118 = v117 >> 7;
    if (v117 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v118 | 0x80;
        v119 = v118 >> 7;
        ++a2;
        v120 = v118 >> 14;
        v118 >>= 7;
      }

      while (v120);
      *(a2 - 1) = v119;
      if ((v105 & 0x400) != 0)
      {
        goto LABEL_295;
      }
    }

    else
    {
      *(a2 + 3) = v118;
      a2 += 4;
      if ((v105 & 0x400) != 0)
      {
        goto LABEL_295;
      }
    }
  }

  else
  {
    *(a2 + 2) = v117;
    a2 += 3;
    if ((v105 & 0x400) != 0)
    {
      goto LABEL_295;
    }
  }

LABEL_250:
  if ((v105 & 0x800) == 0)
  {
    goto LABEL_251;
  }

LABEL_306:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v125 = *(a1 + 196);
  *a2 = 704;
  if (v125 > 0x7F)
  {
    *(a2 + 2) = v125 | 0x80;
    v126 = v125 >> 7;
    if (v125 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v126 | 0x80;
        v127 = v126 >> 7;
        ++a2;
        v128 = v126 >> 14;
        v126 >>= 7;
      }

      while (v128);
      *(a2 - 1) = v127;
      if ((v105 & 0x1000) != 0)
      {
        goto LABEL_317;
      }
    }

    else
    {
      *(a2 + 3) = v126;
      a2 += 4;
      if ((v105 & 0x1000) != 0)
      {
        goto LABEL_317;
      }
    }
  }

  else
  {
    *(a2 + 2) = v125;
    a2 += 3;
    if ((v105 & 0x1000) != 0)
    {
      goto LABEL_317;
    }
  }

LABEL_252:
  if ((v105 & 4) == 0)
  {
    goto LABEL_253;
  }

LABEL_328:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v133 = *(a1 + 175);
  *a2 = 720;
  *(a2 + 2) = v133;
  a2 += 3;
  if ((v105 & 8) == 0)
  {
LABEL_254:
    if ((v105 & 0x40) == 0)
    {
      goto LABEL_255;
    }

    goto LABEL_334;
  }

LABEL_331:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v134 = *(a1 + 176);
  *a2 = 728;
  *(a2 + 2) = v134;
  a2 += 3;
  if ((v105 & 0x40) == 0)
  {
LABEL_255:
    if ((v105 & 0x2000) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_337;
  }

LABEL_334:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v135 = *(a1 + 179);
  *a2 = 736;
  *(a2 + 2) = v135;
  a2 += 3;
  if ((v105 & 0x2000) == 0)
  {
LABEL_256:
    if ((v105 & 2) == 0)
    {
      goto LABEL_260;
    }

    goto LABEL_257;
  }

LABEL_337:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v136 = *(a1 + 204);
  *a2 = 752;
  if (v136 > 0x7F)
  {
    *(a2 + 2) = v136 | 0x80;
    v137 = v136 >> 7;
    if (v136 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v137 | 0x80;
        v138 = v137 >> 7;
        ++a2;
        v139 = v137 >> 14;
        v137 >>= 7;
      }

      while (v139);
      *(a2 - 1) = v138;
      if ((v105 & 2) == 0)
      {
        goto LABEL_260;
      }
    }

    else
    {
      *(a2 + 3) = v137;
      a2 += 4;
      if ((v105 & 2) == 0)
      {
        goto LABEL_260;
      }
    }
  }

  else
  {
    *(a2 + 2) = v136;
    a2 += 3;
    if ((v105 & 2) == 0)
    {
      goto LABEL_260;
    }
  }

LABEL_257:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v106 = *(a1 + 174);
  *a2 = 760;
  *(a2 + 2) = v106;
  a2 += 3;
LABEL_260:
  v107 = *(a1 + 8);
  if ((v107 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v107 & 0xFFFFFFFFFFFFFFFELL) + 8);
}