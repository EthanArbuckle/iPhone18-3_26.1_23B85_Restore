uint64_t sub_2764114A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 32));
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
    v5 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 40));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v20 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 48));
    v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_100;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v21 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 56));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_101;
  }

LABEL_100:
  v22 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 64));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_102;
  }

LABEL_101:
  v23 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 72));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_102:
  v24 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 80));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v6 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 88));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_15:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_33;
  }

  if ((v2 & 0x100) != 0)
  {
    v7 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 96));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v2 & 0x200) != 0)
  {
    v8 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 104));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v9 = v3 + 5;
  if ((v2 & 0x400) == 0)
  {
    v9 = v3;
  }

  if ((v2 & 0x800) != 0)
  {
    v3 = v9 + 5;
  }

  else
  {
    v3 = v9;
  }

  if ((v2 & 0x1000) != 0)
  {
    v25 = *(a1 + 120);
    v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v25 >= 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 11;
    }

    v3 += v27;
    if ((v2 & 0x2000) == 0)
    {
LABEL_27:
      if ((v2 & 0x4000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_112;
    }
  }

  else if ((v2 & 0x2000) == 0)
  {
    goto LABEL_27;
  }

  v28 = *(a1 + 124);
  v29 = ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v28 >= 0)
  {
    v30 = v29;
  }

  else
  {
    v30 = 11;
  }

  v3 += v30;
  if ((v2 & 0x4000) == 0)
  {
LABEL_28:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_112:
  v31 = *(a1 + 128);
  v32 = ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v31 >= 0)
  {
    v33 = v32;
  }

  else
  {
    v33 = 11;
  }

  v3 += v33;
  if ((v2 & 0x8000) != 0)
  {
LABEL_29:
    v10 = *(a1 + 132);
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

LABEL_33:
  if ((v2 & 0xFF0000) != 0)
  {
    v13 = v3 + 5;
    if ((v2 & 0x10000) == 0)
    {
      v13 = v3;
    }

    if ((v2 & 0x20000) != 0)
    {
      v13 += 5;
    }

    if ((v2 & 0x40000) != 0)
    {
      v13 += 5;
    }

    if ((v2 & 0x80000) != 0)
    {
      v13 += 5;
    }

    if ((v2 & 0x100000) != 0)
    {
      v13 += 5;
    }

    if ((v2 & 0x200000) != 0)
    {
      v13 += 6;
    }

    if ((v2 & 0x400000) != 0)
    {
      v13 += 6;
    }

    if ((v2 & 0x800000) != 0)
    {
      v3 = v13 + 3;
    }

    else
    {
      v3 = v13;
    }
  }

  if (HIBYTE(v2))
  {
    v14 = v3 + 3;
    if ((v2 & 0x1000000) == 0)
    {
      v14 = v3;
    }

    if ((v2 & 0x2000000) != 0)
    {
      v14 += 3;
    }

    if ((v2 & 0x4000000) != 0)
    {
      v14 += 3;
    }

    if ((v2 & 0x8000000) != 0)
    {
      v14 += 3;
    }

    if ((v2 & 0x10000000) != 0)
    {
      v14 += 3;
    }

    if ((v2 & 0x20000000) != 0)
    {
      v14 += 3;
    }

    if ((v2 & 0x40000000) != 0)
    {
      v14 += 3;
    }

    if (v2 >= 0)
    {
      v3 = v14;
    }

    else
    {
      v3 = v14 + 3;
    }
  }

  v15 = *(a1 + 20);
  if (v15)
  {
    v16 = v3 + 3;
    if ((v15 & 1) == 0)
    {
      v16 = v3;
    }

    if ((v15 & 2) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 4) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 8) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 0x10) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 0x20) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 0x40) != 0)
    {
      v3 = v16 + 3;
    }

    else
    {
      v3 = v16;
    }

    if ((v15 & 0x80) != 0)
    {
      v17 = *(a1 + 180);
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v17 >= 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 12;
      }

      v3 += v19;
    }
  }

  if ((v15 & 0x3F00) != 0)
  {
    if ((v15 & 0x100) != 0)
    {
      v34 = *(a1 + 184);
      if (v34 < 0)
      {
        v35 = 12;
      }

      else
      {
        v35 = ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v35;
      if ((v15 & 0x200) == 0)
      {
LABEL_93:
        if ((v15 & 0x400) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_125;
      }
    }

    else if ((v15 & 0x200) == 0)
    {
      goto LABEL_93;
    }

    v36 = *(a1 + 188);
    if (v36 < 0)
    {
      v37 = 12;
    }

    else
    {
      v37 = ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v37;
    if ((v15 & 0x400) == 0)
    {
LABEL_94:
      if ((v15 & 0x800) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_129;
    }

LABEL_125:
    v38 = *(a1 + 192);
    if (v38 < 0)
    {
      v39 = 12;
    }

    else
    {
      v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v39;
    if ((v15 & 0x800) == 0)
    {
LABEL_95:
      if ((v15 & 0x1000) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_133;
    }

LABEL_129:
    v40 = *(a1 + 196);
    if (v40 < 0)
    {
      v41 = 12;
    }

    else
    {
      v41 = ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v41;
    if ((v15 & 0x1000) == 0)
    {
LABEL_96:
      if ((v15 & 0x2000) == 0)
      {
        goto LABEL_141;
      }

LABEL_137:
      v44 = *(a1 + 204);
      if (v44 < 0)
      {
        v45 = 12;
      }

      else
      {
        v45 = ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v45;
      goto LABEL_141;
    }

LABEL_133:
    v42 = *(a1 + 200);
    if (v42 < 0)
    {
      v43 = 12;
    }

    else
    {
      v43 = ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v43;
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_137;
  }

LABEL_141:
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

uint64_t sub_276411AD4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288523880, 0);
  if (v4)
  {

    return sub_276411B7C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276411B7C(uint64_t result, uint64_t a2)
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

  v6 = MEMORY[0x277D804A0];
  if (v5)
  {
    *(v3 + 16) |= 1u;
    v7 = *(v3 + 32);
    if (!v7)
    {
      v8 = *(v3 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x277C97AA0](v8);
      *(v3 + 32) = v7;
    }

    if (*(a2 + 32))
    {
      v9 = *(a2 + 32);
    }

    else
    {
      v9 = v6;
    }

    result = TSD::StrokeArchive::MergeFrom(v7, v9);
  }

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
      v12 = v6;
    }

    result = TSD::StrokeArchive::MergeFrom(v10, v12);
  }

  v13 = MEMORY[0x277D80498];
  if ((v5 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v14 = *(v3 + 48);
    if (!v14)
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C97A90](v15);
      *(v3 + 48) = v14;
    }

    if (*(a2 + 48))
    {
      v16 = *(a2 + 48);
    }

    else
    {
      v16 = v13;
    }

    result = TSD::ShadowArchive::MergeFrom(v14, v16);
    if ((v5 & 8) == 0)
    {
LABEL_24:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_45;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_24;
  }

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
    v19 = v13;
  }

  result = TSD::ShadowArchive::MergeFrom(v17, v19);
  if ((v5 & 0x10) == 0)
  {
LABEL_25:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_26;
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
      v25 = v6;
    }

    result = TSD::StrokeArchive::MergeFrom(v23, v25);
    if ((v5 & 0x40) == 0)
    {
LABEL_27:
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
  v20 = *(v3 + 64);
  if (!v20)
  {
    v21 = *(v3 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = MEMORY[0x277C97AA0](v21);
    *(v3 + 64) = v20;
  }

  if (*(a2 + 64))
  {
    v22 = *(a2 + 64);
  }

  else
  {
    v22 = v6;
  }

  result = TSD::StrokeArchive::MergeFrom(v20, v22);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_26:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_27;
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

    v26 = MEMORY[0x277C97A90](v27);
    *(v3 + 80) = v26;
  }

  if (*(a2 + 80))
  {
    v28 = *(a2 + 80);
  }

  else
  {
    v28 = v13;
  }

  result = TSD::ShadowArchive::MergeFrom(v26, v28);
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
      v31 = v13;
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
    if ((v5 & 0x200) == 0)
    {
LABEL_80:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_146;
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

    goto LABEL_147;
  }

LABEL_146:
  *(v3 + 112) = *(a2 + 112);
  if ((v5 & 0x800) == 0)
  {
LABEL_82:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(v3 + 116) = *(a2 + 116);
  if ((v5 & 0x1000) == 0)
  {
LABEL_83:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_149;
  }

LABEL_148:
  *(v3 + 120) = *(a2 + 120);
  if ((v5 & 0x2000) == 0)
  {
LABEL_84:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_85;
    }

LABEL_150:
    *(v3 + 128) = *(a2 + 128);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

LABEL_149:
  *(v3 + 124) = *(a2 + 124);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_150;
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

      goto LABEL_154;
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

    goto LABEL_155;
  }

LABEL_154:
  *(v3 + 144) = *(a2 + 144);
  if ((v5 & 0x80000) == 0)
  {
LABEL_93:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_156;
  }

LABEL_155:
  *(v3 + 148) = *(a2 + 148);
  if ((v5 & 0x100000) == 0)
  {
LABEL_94:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_157;
  }

LABEL_156:
  *(v3 + 152) = *(a2 + 152);
  if ((v5 & 0x200000) == 0)
  {
LABEL_95:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_96;
    }

LABEL_158:
    *(v3 + 160) = *(a2 + 160);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

LABEL_157:
  *(v3 + 156) = *(a2 + 156);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_158;
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
  if (!HIBYTE(v5))
  {
    goto LABEL_109;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 165) = *(a2 + 165);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_102:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_176;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_102;
  }

  *(v3 + 166) = *(a2 + 166);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_103:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_177;
  }

LABEL_176:
  *(v3 + 167) = *(a2 + 167);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_104:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_178;
  }

LABEL_177:
  *(v3 + 168) = *(a2 + 168);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_105:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_179;
  }

LABEL_178:
  *(v3 + 169) = *(a2 + 169);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_106:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_107;
    }

LABEL_180:
    *(v3 + 171) = *(a2 + 171);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_108;
    }

LABEL_181:
    *(v3 + 172) = *(a2 + 172);
    goto LABEL_108;
  }

LABEL_179:
  *(v3 + 170) = *(a2 + 170);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_180;
  }

LABEL_107:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_181;
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
    *(v3 + 173) = *(a2 + 173);
    if ((v32 & 2) == 0)
    {
LABEL_112:
      if ((v32 & 4) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_162;
    }
  }

  else if ((v32 & 2) == 0)
  {
    goto LABEL_112;
  }

  *(v3 + 174) = *(a2 + 174);
  if ((v32 & 4) == 0)
  {
LABEL_113:
    if ((v32 & 8) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_163;
  }

LABEL_162:
  *(v3 + 175) = *(a2 + 175);
  if ((v32 & 8) == 0)
  {
LABEL_114:
    if ((v32 & 0x10) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_164;
  }

LABEL_163:
  *(v3 + 176) = *(a2 + 176);
  if ((v32 & 0x10) == 0)
  {
LABEL_115:
    if ((v32 & 0x20) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_165;
  }

LABEL_164:
  *(v3 + 177) = *(a2 + 177);
  if ((v32 & 0x20) == 0)
  {
LABEL_116:
    if ((v32 & 0x40) == 0)
    {
      goto LABEL_117;
    }

LABEL_166:
    *(v3 + 179) = *(a2 + 179);
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

LABEL_165:
  *(v3 + 178) = *(a2 + 178);
  if ((v32 & 0x40) != 0)
  {
    goto LABEL_166;
  }

LABEL_117:
  if ((v32 & 0x80) != 0)
  {
LABEL_118:
    *(v3 + 180) = *(a2 + 180);
  }

LABEL_119:
  *(v3 + 20) |= v32;
LABEL_120:
  if ((v32 & 0x3F00) == 0)
  {
    return result;
  }

  if ((v32 & 0x100) != 0)
  {
    *(v3 + 184) = *(a2 + 184);
    if ((v32 & 0x200) == 0)
    {
LABEL_123:
      if ((v32 & 0x400) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_170;
    }
  }

  else if ((v32 & 0x200) == 0)
  {
    goto LABEL_123;
  }

  *(v3 + 188) = *(a2 + 188);
  if ((v32 & 0x400) == 0)
  {
LABEL_124:
    if ((v32 & 0x800) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_171;
  }

LABEL_170:
  *(v3 + 192) = *(a2 + 192);
  if ((v32 & 0x800) == 0)
  {
LABEL_125:
    if ((v32 & 0x1000) == 0)
    {
      goto LABEL_126;
    }

LABEL_172:
    *(v3 + 200) = *(a2 + 200);
    if ((v32 & 0x2000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_171:
  *(v3 + 196) = *(a2 + 196);
  if ((v32 & 0x1000) != 0)
  {
    goto LABEL_172;
  }

LABEL_126:
  if ((v32 & 0x2000) != 0)
  {
LABEL_127:
    *(v3 + 204) = *(a2 + 204);
  }

LABEL_128:
  *(v3 + 20) |= v32;
  return result;
}

uint64_t *sub_276412164(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27640EFE8(result);

    return sub_276411AD4(v4, a2);
  }

  return result;
}

uint64_t sub_2764121B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 72));
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
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) == 0)
  {
    return 1;
  }

  result = TSD::StrokeArchive::IsInitialized(*(a1 + 104));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_2764122D4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288523150;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812ED310, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = v3;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 116) = 0u;
  return a1;
}

uint64_t sub_276412360(uint64_t a1)
{
  sub_276412394(a1);
  sub_2763941F4((a1 + 8));
  return a1;
}

uint64_t sub_276412394(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 32);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C98580](v4, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812F0770)
  {
    if (*(v1 + 40))
    {
      v5 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v5, 0x10A1C4029F168B5);
    }

    v6 = *(v1 + 48);
    if (v6)
    {
      v7 = sub_276400574(v6);
      MEMORY[0x277C98580](v7, 0x1081C404FE48876);
    }

    v8 = *(v1 + 56);
    if (v8)
    {
      v9 = sub_276400574(v8);
      MEMORY[0x277C98580](v9, 0x1081C404FE48876);
    }

    if (*(v1 + 64))
    {
      v10 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v10, 0x10A1C4029F168B5);
    }

    if (*(v1 + 72))
    {
      v11 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v11, 0x10A1C4029F168B5);
    }

    if (*(v1 + 80))
    {
      v12 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v12, 0x10A1C4029F168B5);
    }

    result = *(v1 + 88);
    if (result)
    {
      MEMORY[0x277C97400]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_276412500(uint64_t a1)
{
  sub_276412360(a1);

  JUMPOUT(0x277C98580);
}

void *sub_276412540()
{
  if (atomic_load_explicit(dword_2812ED310, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F0770;
}

uint64_t *sub_276412580(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_25:
    v6 = result[4] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

  v5 = result[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_29:
  result = TSK::FormatStructArchive::Clear(result[5]);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = sub_2764005FC(v1[6]);
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_32:
    result = TSK::FormatStructArchive::Clear(v1[8]);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_31:
  result = sub_2764005FC(v1[7]);
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_33:
  result = TSK::FormatStructArchive::Clear(v1[9]);
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = TSK::FormatStructArchive::Clear(v1[10]);
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    result = TSK::FormatStructArchive::Clear(v1[11]);
  }

  if ((v2 & 0xFE00) != 0)
  {
    v1[12] = 0;
    v1[13] = 0;
    *(v1 + 120) = 0;
    v1[14] = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 121) = 0;
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

google::protobuf::internal *sub_2764126D0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v98 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v98) & 1) == 0)
  {
    while (1)
    {
      v7 = (v98 + 1);
      v8 = *v98;
      if (*v98 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v98, (v9 - 128));
          v98 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_165;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v98 + 2);
      }

      v98 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_129;
          }

          v5 |= 0x200u;
          v11 = (v7 + 1);
          LODWORD(v10) = *v7;
          if ((v10 & 0x80) == 0)
          {
            goto LABEL_12;
          }

          v12 = *v11;
          v10 = (v10 + (v12 << 7) - 128);
          if ((v12 & 0x80000000) == 0)
          {
            v11 = (v7 + 2);
LABEL_12:
            v98 = v11;
            *(a1 + 96) = v10;
            goto LABEL_127;
          }

          v84 = google::protobuf::internal::VarintParseSlow64(v7, v10);
          v98 = v84;
          *(a1 + 96) = v85;
          if (!v84)
          {
            goto LABEL_165;
          }

          goto LABEL_127;
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 4u;
          v18 = *(a1 + 40);
          if (v18)
          {
            goto LABEL_125;
          }

          v43 = *(a1 + 8);
          if (v43)
          {
            v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
          }

          v44 = MEMORY[0x277C97B00](v43);
          LODWORD(v18) = v44;
          *(a1 + 40) = v44;
          goto LABEL_124;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_129;
          }

          v5 |= 0x400u;
          v35 = (v7 + 1);
          LODWORD(v34) = *v7;
          if ((v34 & 0x80) == 0)
          {
            goto LABEL_56;
          }

          v36 = *v35;
          v34 = (v34 + (v36 << 7) - 128);
          if (v36 < 0)
          {
            v78 = google::protobuf::internal::VarintParseSlow64(v7, v34);
            v98 = v78;
            *(a1 + 100) = v79;
            if (!v78)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v35 = (v7 + 2);
LABEL_56:
            v98 = v35;
            *(a1 + 100) = v34;
          }

          goto LABEL_127;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_129;
          }

          v5 |= 0x800u;
          v53 = (v7 + 1);
          LODWORD(v52) = *v7;
          if ((v52 & 0x80) == 0)
          {
            goto LABEL_91;
          }

          v54 = *v53;
          v52 = (v52 + (v54 << 7) - 128);
          if (v54 < 0)
          {
            v90 = google::protobuf::internal::VarintParseSlow64(v7, v52);
            v98 = v90;
            *(a1 + 104) = v91;
            if (!v90)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v53 = (v7 + 2);
LABEL_91:
            v98 = v53;
            *(a1 + 104) = v52;
          }

          goto LABEL_127;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_129;
          }

          v5 |= 0x1000u;
          v56 = (v7 + 1);
          LODWORD(v55) = *v7;
          if ((v55 & 0x80) == 0)
          {
            goto LABEL_96;
          }

          v57 = *v56;
          v55 = (v55 + (v57 << 7) - 128);
          if (v57 < 0)
          {
            v92 = google::protobuf::internal::VarintParseSlow64(v7, v55);
            v98 = v92;
            *(a1 + 108) = v93;
            if (!v92)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v56 = (v7 + 2);
LABEL_96:
            v98 = v56;
            *(a1 + 108) = v55;
          }

          goto LABEL_127;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_129;
          }

          v5 |= 0x2000u;
          v38 = (v7 + 1);
          LODWORD(v37) = *v7;
          if ((v37 & 0x80) == 0)
          {
            goto LABEL_61;
          }

          v39 = *v38;
          v37 = (v37 + (v39 << 7) - 128);
          if (v39 < 0)
          {
            v80 = google::protobuf::internal::VarintParseSlow64(v7, v37);
            v98 = v80;
            *(a1 + 112) = v81;
            if (!v80)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v38 = (v7 + 2);
LABEL_61:
            v98 = v38;
            *(a1 + 112) = v37;
          }

          goto LABEL_127;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_129;
          }

          v5 |= 0x8000u;
          v46 = (v7 + 1);
          v45 = *v7;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_76;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if (v47 < 0)
          {
            v86 = google::protobuf::internal::VarintParseSlow64(v7, v45);
            v98 = v86;
            *(a1 + 120) = v87 != 0;
            if (!v86)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v46 = (v7 + 2);
LABEL_76:
            v98 = v46;
            *(a1 + 120) = v45 != 0;
          }

          goto LABEL_127;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_129;
          }

          v5 |= 0x4000u;
          v49 = (v7 + 1);
          LODWORD(v48) = *v7;
          if ((v48 & 0x80) == 0)
          {
            goto LABEL_81;
          }

          v50 = *v49;
          v48 = (v48 + (v50 << 7) - 128);
          if (v50 < 0)
          {
            v88 = google::protobuf::internal::VarintParseSlow64(v7, v48);
            v98 = v88;
            *(a1 + 116) = v89;
            if (!v88)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v49 = (v7 + 2);
LABEL_81:
            v98 = v49;
            *(a1 + 116) = v48;
          }

          goto LABEL_127;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_129;
          }

          v5 |= 0x10000u;
          v62 = (v7 + 1);
          v61 = *v7;
          if ((v61 & 0x8000000000000000) == 0)
          {
            goto LABEL_106;
          }

          v63 = *v62;
          v61 = (v63 << 7) + v61 - 128;
          if (v63 < 0)
          {
            v96 = google::protobuf::internal::VarintParseSlow64(v7, v61);
            v98 = v96;
            *(a1 + 121) = v97 != 0;
            if (!v96)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v62 = (v7 + 2);
LABEL_106:
            v98 = v62;
            *(a1 + 121) = v61 != 0;
          }

          goto LABEL_127;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_129;
          }

          v5 |= 0x20000u;
          v59 = (v7 + 1);
          v58 = *v7;
          if ((v58 & 0x8000000000000000) == 0)
          {
            goto LABEL_101;
          }

          v60 = *v59;
          v58 = (v60 << 7) + v58 - 128;
          if (v60 < 0)
          {
            v94 = google::protobuf::internal::VarintParseSlow64(v7, v58);
            v98 = v94;
            *(a1 + 122) = v95 != 0;
            if (!v94)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v59 = (v7 + 2);
LABEL_101:
            v98 = v59;
            *(a1 + 122) = v58 != 0;
          }

          goto LABEL_127;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_129;
          }

          v5 |= 0x40000u;
          v27 = (v7 + 1);
          v26 = *v7;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if (v28 < 0)
          {
            v74 = google::protobuf::internal::VarintParseSlow64(v7, v26);
            v98 = v74;
            *(a1 + 123) = v75 != 0;
            if (!v74)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v27 = (v7 + 2);
LABEL_39:
            v98 = v27;
            *(a1 + 123) = v26 != 0;
          }

          goto LABEL_127;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_129;
          }

          v5 |= 0x80000u;
          v41 = (v7 + 1);
          v40 = *v7;
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_66;
          }

          v42 = *v41;
          v40 = (v42 << 7) + v40 - 128;
          if (v42 < 0)
          {
            v82 = google::protobuf::internal::VarintParseSlow64(v7, v40);
            v98 = v82;
            *(a1 + 124) = v83 != 0;
            if (!v82)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v41 = (v7 + 2);
LABEL_66:
            v98 = v41;
            *(a1 + 124) = v40 != 0;
          }

          goto LABEL_127;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_129;
          }

          v5 |= 0x200000u;
          v30 = (v7 + 1);
          v29 = *v7;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_46;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if (v31 < 0)
          {
            v76 = google::protobuf::internal::VarintParseSlow64(v7, v29);
            v98 = v76;
            *(a1 + 126) = v77 != 0;
            if (!v76)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v30 = (v7 + 2);
LABEL_46:
            v98 = v30;
            *(a1 + 126) = v29 != 0;
          }

          goto LABEL_127;
        case 0xEu:
          if (v8 != 112)
          {
            goto LABEL_129;
          }

          v5 |= 0x400000u;
          v22 = (v7 + 1);
          v21 = *v7;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v72 = google::protobuf::internal::VarintParseSlow64(v7, v21);
            v98 = v72;
            *(a1 + 127) = v73 != 0;
            if (!v72)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v22 = (v7 + 2);
LABEL_29:
            v98 = v22;
            *(a1 + 127) = v21 != 0;
          }

          goto LABEL_127;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 1u;
          goto LABEL_86;
        case 0x10u:
          if (v8 != 130)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 2u;
LABEL_86:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v51 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_126;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 8u;
          v64 = *(a1 + 48);
          if (v64)
          {
            goto LABEL_118;
          }

          v66 = *(a1 + 8);
          if (v66)
          {
            v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
          }

          v64 = sub_276406A24(v66);
          *(a1 + 48) = v64;
          goto LABEL_117;
        case 0x12u:
          if (v8 != 146)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x10u;
          v64 = *(a1 + 56);
          if (v64)
          {
            goto LABEL_118;
          }

          v65 = *(a1 + 8);
          if (v65)
          {
            v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
          }

          v64 = sub_276406A24(v65);
          *(a1 + 56) = v64;
LABEL_117:
          v7 = v98;
LABEL_118:
          v51 = sub_2764A8C38(a3, v64, v7);
          goto LABEL_126;
        case 0x13u:
          if (v8 != 152)
          {
            goto LABEL_129;
          }

          v5 |= 0x100000u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v70 = google::protobuf::internal::VarintParseSlow64(v7, v15);
            v98 = v70;
            *(a1 + 125) = v71 != 0;
            if (!v70)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v16 = (v7 + 2);
LABEL_19:
            v98 = v16;
            *(a1 + 125) = v15 != 0;
          }

          goto LABEL_127;
        case 0x14u:
          if (v8 != 162)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x20u;
          v18 = *(a1 + 64);
          if (v18)
          {
            goto LABEL_125;
          }

          v32 = *(a1 + 8);
          if (v32)
          {
            v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = MEMORY[0x277C97B00](v32);
          LODWORD(v18) = v33;
          *(a1 + 64) = v33;
          goto LABEL_124;
        case 0x15u:
          if (v8 != 170)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x40u;
          v18 = *(a1 + 72);
          if (v18)
          {
            goto LABEL_125;
          }

          v67 = *(a1 + 8);
          if (v67)
          {
            v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
          }

          v68 = MEMORY[0x277C97B00](v67);
          LODWORD(v18) = v68;
          *(a1 + 72) = v68;
          goto LABEL_124;
        case 0x16u:
          if (v8 != 178)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x80u;
          v18 = *(a1 + 80);
          if (v18)
          {
            goto LABEL_125;
          }

          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = MEMORY[0x277C97B00](v19);
          LODWORD(v18) = v20;
          *(a1 + 80) = v20;
          goto LABEL_124;
        case 0x17u:
          if (v8 != 189)
          {
            goto LABEL_129;
          }

          v5 |= 0x800000u;
          *(a1 + 128) = *v7;
          v98 = (v7 + 4);
          goto LABEL_127;
        case 0x2Au:
          if (v8 != 82)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x100u;
          v18 = *(a1 + 88);
          if (v18)
          {
            goto LABEL_125;
          }

          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = MEMORY[0x277C97B00](v24);
          LODWORD(v18) = v25;
          *(a1 + 88) = v25;
LABEL_124:
          v7 = v98;
LABEL_125:
          v51 = sub_2764A8D08(a3, v18, v7);
          goto LABEL_126;
        default:
LABEL_129:
          if (v8)
          {
            v69 = (v8 & 7) == 4;
          }

          else
          {
            v69 = 1;
          }

          if (v69)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v51 = google::protobuf::internal::UnknownFieldParse();
LABEL_126:
          v98 = v51;
          if (!v51)
          {
LABEL_165:
            v98 = 0;
            goto LABEL_2;
          }

LABEL_127:
          if (sub_2763D4D98(a3, &v98))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v98;
}

unsigned __int8 *sub_2764130C4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x200) != 0)
  {
    if (*this <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v7 = *(a1 + 96);
    *v4 = 8;
    if (v7 > 0x7F)
    {
      v4[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v4;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v4 - 1) = v9;
        if ((v6 & 4) != 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
        if ((v6 & 4) != 0)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
      if ((v6 & 4) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_3:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_47;
  }

  if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

LABEL_37:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v11 = *(a1 + 40);
  *v4 = 18;
  v12 = *(v11 + 12);
  if (v12 > 0x7F)
  {
    v4[1] = v12 | 0x80;
    v14 = v12 >> 7;
    if (v12 >> 14)
    {
      v13 = v4 + 3;
      do
      {
        *(v13 - 1) = v14 | 0x80;
        v15 = v14 >> 7;
        ++v13;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
      *(v13 - 1) = v15;
    }

    else
    {
      v4[2] = v14;
      v13 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v12;
    v13 = v4 + 2;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v11, v13, this);
  if ((v6 & 0x400) == 0)
  {
LABEL_4:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_5;
    }

LABEL_58:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v21 = *(a1 + 104);
    *v4 = 32;
    if (v21 > 0x7F)
    {
      v4[1] = v21 | 0x80;
      v22 = v21 >> 7;
      if (v21 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v22 | 0x80;
          v23 = v22 >> 7;
          ++v4;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
        *(v4 - 1) = v23;
        if ((v6 & 0x1000) != 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v4[2] = v22;
        v4 += 3;
        if ((v6 & 0x1000) != 0)
        {
          goto LABEL_69;
        }
      }
    }

    else
    {
      v4[1] = v21;
      v4 += 2;
      if ((v6 & 0x1000) != 0)
      {
        goto LABEL_69;
      }
    }

LABEL_6:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

LABEL_80:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v29 = *(a1 + 112);
    *v4 = 48;
    if (v29 > 0x7F)
    {
      v4[1] = v29 | 0x80;
      v30 = v29 >> 7;
      if (v29 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v30 | 0x80;
          v31 = v30 >> 7;
          ++v4;
          v32 = v30 >> 14;
          v30 >>= 7;
        }

        while (v32);
        *(v4 - 1) = v31;
        if ((v6 & 0x8000) != 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v4[2] = v30;
        v4 += 3;
        if ((v6 & 0x8000) != 0)
        {
          goto LABEL_91;
        }
      }
    }

    else
    {
      v4[1] = v29;
      v4 += 2;
      if ((v6 & 0x8000) != 0)
      {
        goto LABEL_91;
      }
    }

LABEL_8:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

LABEL_94:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v34 = *(a1 + 116);
    *v4 = 64;
    if (v34 > 0x7F)
    {
      v4[1] = v34 | 0x80;
      v35 = v34 >> 7;
      if (v34 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v35 | 0x80;
          v36 = v35 >> 7;
          ++v4;
          v37 = v35 >> 14;
          v35 >>= 7;
        }

        while (v37);
        *(v4 - 1) = v36;
        if ((v6 & 0x10000) != 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v4[2] = v35;
        v4 += 3;
        if ((v6 & 0x10000) != 0)
        {
          goto LABEL_105;
        }
      }
    }

    else
    {
      v4[1] = v34;
      v4 += 2;
      if ((v6 & 0x10000) != 0)
      {
        goto LABEL_105;
      }
    }

LABEL_10:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_108;
  }

LABEL_47:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v17 = *(a1 + 100);
  *v4 = 24;
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v18 = v17 >> 7;
    if (v17 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v18 | 0x80;
        v19 = v18 >> 7;
        ++v4;
        v20 = v18 >> 14;
        v18 >>= 7;
      }

      while (v20);
      *(v4 - 1) = v19;
      if ((v6 & 0x800) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v4[2] = v18;
      v4 += 3;
      if ((v6 & 0x800) != 0)
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    v4[1] = v17;
    v4 += 2;
    if ((v6 & 0x800) != 0)
    {
      goto LABEL_58;
    }
  }

LABEL_5:
  if ((v6 & 0x1000) == 0)
  {
    goto LABEL_6;
  }

LABEL_69:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v25 = *(a1 + 108);
  *v4 = 40;
  if (v25 > 0x7F)
  {
    v4[1] = v25 | 0x80;
    v26 = v25 >> 7;
    if (v25 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v26 | 0x80;
        v27 = v26 >> 7;
        ++v4;
        v28 = v26 >> 14;
        v26 >>= 7;
      }

      while (v28);
      *(v4 - 1) = v27;
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v4[2] = v26;
      v4 += 3;
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_80;
      }
    }
  }

  else
  {
    v4[1] = v25;
    v4 += 2;
    if ((v6 & 0x2000) != 0)
    {
      goto LABEL_80;
    }
  }

LABEL_7:
  if ((v6 & 0x8000) == 0)
  {
    goto LABEL_8;
  }

LABEL_91:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v33 = *(a1 + 120);
  *v4 = 56;
  v4[1] = v33;
  v4 += 2;
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_94;
  }

LABEL_9:
  if ((v6 & 0x10000) == 0)
  {
    goto LABEL_10;
  }

LABEL_105:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v38 = *(a1 + 121);
  *v4 = 72;
  v4[1] = v38;
  v4 += 2;
  if ((v6 & 0x20000) == 0)
  {
LABEL_11:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_111;
  }

LABEL_108:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v39 = *(a1 + 122);
  *v4 = 80;
  v4[1] = v39;
  v4 += 2;
  if ((v6 & 0x40000) == 0)
  {
LABEL_12:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_114;
  }

LABEL_111:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v40 = *(a1 + 123);
  *v4 = 88;
  v4[1] = v40;
  v4 += 2;
  if ((v6 & 0x80000) == 0)
  {
LABEL_13:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_117;
  }

LABEL_114:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v41 = *(a1 + 124);
  *v4 = 96;
  v4[1] = v41;
  v4 += 2;
  if ((v6 & 0x200000) == 0)
  {
LABEL_14:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_120;
  }

LABEL_117:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v42 = *(a1 + 126);
  *v4 = 104;
  v4[1] = v42;
  v4 += 2;
  if ((v6 & 0x400000) == 0)
  {
LABEL_15:
    if ((v6 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_123;
  }

LABEL_120:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v43 = *(a1 + 127);
  *v4 = 112;
  v4[1] = v43;
  v4 += 2;
  if ((v6 & 1) == 0)
  {
LABEL_16:
    if ((v6 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_124;
  }

LABEL_123:
  v4 = sub_2763DD938(this, 15, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_17:
    if ((v6 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_125;
  }

LABEL_124:
  v4 = sub_2763DD938(this, 16, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_18:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_135;
  }

LABEL_125:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v44 = *(a1 + 48);
  *v4 = 394;
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

  v4 = sub_27640074C(v44, v46, this);
  if ((v6 & 0x10) == 0)
  {
LABEL_19:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_145;
  }

LABEL_135:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v50 = *(a1 + 56);
  *v4 = 402;
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

  v4 = sub_27640074C(v50, v52, this);
  if ((v6 & 0x100000) == 0)
  {
LABEL_20:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_148;
  }

LABEL_145:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v56 = *(a1 + 125);
  *v4 = 408;
  v4[2] = v56;
  v4 += 3;
  if ((v6 & 0x20) == 0)
  {
LABEL_21:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_158;
  }

LABEL_148:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v57 = *(a1 + 64);
  *v4 = 418;
  v58 = *(v57 + 12);
  if (v58 > 0x7F)
  {
    v4[2] = v58 | 0x80;
    v60 = v58 >> 7;
    if (v58 >> 14)
    {
      v59 = v4 + 4;
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
      v4[3] = v60;
      v59 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v58;
    v59 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v57, v59, this);
  if ((v6 & 0x40) == 0)
  {
LABEL_22:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_168;
  }

LABEL_158:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v63 = *(a1 + 72);
  *v4 = 426;
  v64 = *(v63 + 12);
  if (v64 > 0x7F)
  {
    v4[2] = v64 | 0x80;
    v66 = v64 >> 7;
    if (v64 >> 14)
    {
      v65 = v4 + 4;
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
      v4[3] = v66;
      v65 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v64;
    v65 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v63, v65, this);
  if ((v6 & 0x80) == 0)
  {
LABEL_23:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_178;
  }

LABEL_168:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v69 = *(a1 + 80);
  *v4 = 434;
  v70 = *(v69 + 12);
  if (v70 > 0x7F)
  {
    v4[2] = v70 | 0x80;
    v72 = v70 >> 7;
    if (v70 >> 14)
    {
      v71 = v4 + 4;
      do
      {
        *(v71 - 1) = v72 | 0x80;
        v73 = v72 >> 7;
        ++v71;
        v74 = v72 >> 14;
        v72 >>= 7;
      }

      while (v74);
      *(v71 - 1) = v73;
    }

    else
    {
      v4[3] = v72;
      v71 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v70;
    v71 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v69, v71, this);
  if ((v6 & 0x800000) == 0)
  {
LABEL_24:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_191;
    }

    goto LABEL_181;
  }

LABEL_178:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v75 = *(a1 + 128);
  *v4 = 445;
  *(v4 + 2) = v75;
  v4 += 6;
  if ((v6 & 0x100) != 0)
  {
LABEL_181:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v76 = *(a1 + 88);
    *v4 = 722;
    v77 = *(v76 + 12);
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

    v4 = TSK::FormatStructArchive::_InternalSerialize(v76, v78, this);
  }

LABEL_191:
  v82 = *(a1 + 8);
  if ((v82 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v82 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276413B4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v3 = 0;
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v11 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 40));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v12 = sub_2764007DC(*(a1 + 48));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  v13 = sub_2764007DC(*(a1 + 56));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  v14 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 64));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_32:
  v15 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 72));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v10 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 80));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_19:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_60;
  }

  if ((v2 & 0x100) != 0)
  {
    v16 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 88));
    v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_22:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_39;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  v17 = *(a1 + 96);
  if (v17 < 0)
  {
    v18 = 11;
  }

  else
  {
    v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v18;
  if ((v2 & 0x400) == 0)
  {
LABEL_23:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_39:
  v19 = *(a1 + 100);
  if (v19 < 0)
  {
    v20 = 11;
  }

  else
  {
    v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v20;
  if ((v2 & 0x800) == 0)
  {
LABEL_24:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_43:
  v21 = *(a1 + 104);
  if (v21 < 0)
  {
    v22 = 11;
  }

  else
  {
    v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v22;
  if ((v2 & 0x1000) == 0)
  {
LABEL_25:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

LABEL_51:
    v25 = *(a1 + 112);
    if (v25 < 0)
    {
      v26 = 11;
    }

    else
    {
      v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v26;
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_55;
  }

LABEL_47:
  v23 = *(a1 + 108);
  if (v23 < 0)
  {
    v24 = 11;
  }

  else
  {
    v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v24;
  if ((v2 & 0x2000) != 0)
  {
    goto LABEL_51;
  }

LABEL_26:
  if ((v2 & 0x4000) != 0)
  {
LABEL_55:
    v27 = *(a1 + 116);
    if (v27 < 0)
    {
      v28 = 11;
    }

    else
    {
      v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v28;
  }

LABEL_59:
  v3 += (v2 >> 14) & 2;
LABEL_60:
  if ((v2 & 0xFF0000) != 0)
  {
    v29.i64[0] = 0x200000002;
    v29.i64[1] = 0x200000002;
    v30 = v3 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_2764D7170), v29));
    if ((v2 & 0x100000) != 0)
    {
      v30 += 3;
    }

    v31 = v30 + ((v2 >> 21) & 2) + ((v2 >> 20) & 2);
    if ((v2 & 0x800000) != 0)
    {
      v3 = v31 + 6;
    }

    else
    {
      v3 = v31;
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

void sub_276413F80(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288523898, 0);
  if (v4)
  {

    sub_276414028(a1, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

void sub_276414028(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2763D4F88((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_63;
  }

  if (v5)
  {
    *(a1 + 16) |= 1u;
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  if ((v5 & 2) != 0)
  {
    *(a1 + 16) |= 2u;
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  v6 = MEMORY[0x277D80740];
  if ((v5 & 4) != 0)
  {
    *(a1 + 16) |= 4u;
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

  if ((v5 & 8) != 0)
  {
    *(a1 + 16) |= 8u;
    v10 = *(a1 + 48);
    if (!v10)
    {
      v11 = *(a1 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = sub_276406A24(v11);
      *(a1 + 48) = v10;
    }

    if (*(a2 + 48))
    {
      v12 = *(a2 + 48);
    }

    else
    {
      v12 = &qword_2812F01B8;
    }

    sub_2764008B8(v10, v12);
    if ((v5 & 0x10) == 0)
    {
LABEL_19:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_20;
      }

LABEL_39:
      *(a1 + 16) |= 0x20u;
      v16 = *(a1 + 64);
      if (!v16)
      {
        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C97B00](v17);
        *(a1 + 64) = v16;
      }

      if (*(a2 + 64))
      {
        v18 = *(a2 + 64);
      }

      else
      {
        v18 = v6;
      }

      TSK::FormatStructArchive::MergeFrom(v16, v18);
      if ((v5 & 0x40) == 0)
      {
LABEL_21:
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_55;
      }

      goto LABEL_47;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_19;
  }

  *(a1 + 16) |= 0x10u;
  v13 = *(a1 + 56);
  if (!v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = sub_276406A24(v14);
    *(a1 + 56) = v13;
  }

  if (*(a2 + 56))
  {
    v15 = *(a2 + 56);
  }

  else
  {
    v15 = &qword_2812F01B8;
  }

  sub_2764008B8(v13, v15);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_20:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_47:
  *(a1 + 16) |= 0x40u;
  v19 = *(a1 + 72);
  if (!v19)
  {
    v20 = *(a1 + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x277C97B00](v20);
    *(a1 + 72) = v19;
  }

  if (*(a2 + 72))
  {
    v21 = *(a2 + 72);
  }

  else
  {
    v21 = v6;
  }

  TSK::FormatStructArchive::MergeFrom(v19, v21);
  if ((v5 & 0x80) != 0)
  {
LABEL_55:
    *(a1 + 16) |= 0x80u;
    v22 = *(a1 + 80);
    if (!v22)
    {
      v23 = *(a1 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x277C97B00](v23);
      *(a1 + 80) = v22;
    }

    if (*(a2 + 80))
    {
      v24 = *(a2 + 80);
    }

    else
    {
      v24 = v6;
    }

    TSK::FormatStructArchive::MergeFrom(v22, v24);
  }

LABEL_63:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_74;
  }

  if ((v5 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v25 = *(a1 + 88);
    if (!v25)
    {
      v26 = *(a1 + 8);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x277C97B00](v26);
      *(a1 + 88) = v25;
    }

    if (*(a2 + 88))
    {
      v27 = *(a2 + 88);
    }

    else
    {
      v27 = MEMORY[0x277D80740];
    }

    TSK::FormatStructArchive::MergeFrom(v25, v27);
    if ((v5 & 0x200) == 0)
    {
LABEL_66:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_95;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_66;
  }

  *(a1 + 96) = *(a2 + 96);
  if ((v5 & 0x400) == 0)
  {
LABEL_67:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(a1 + 100) = *(a2 + 100);
  if ((v5 & 0x800) == 0)
  {
LABEL_68:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(a1 + 104) = *(a2 + 104);
  if ((v5 & 0x1000) == 0)
  {
LABEL_69:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(a1 + 108) = *(a2 + 108);
  if ((v5 & 0x2000) == 0)
  {
LABEL_70:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_71;
    }

LABEL_99:
    *(a1 + 116) = *(a2 + 116);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_98:
  *(a1 + 112) = *(a2 + 112);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_99;
  }

LABEL_71:
  if ((v5 & 0x8000) != 0)
  {
LABEL_72:
    *(a1 + 120) = *(a2 + 120);
  }

LABEL_73:
  *(a1 + 16) |= v5;
LABEL_74:
  if ((v5 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(a1 + 121) = *(a2 + 121);
    if ((v5 & 0x20000) == 0)
    {
LABEL_77:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_103;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_77;
  }

  *(a1 + 122) = *(a2 + 122);
  if ((v5 & 0x40000) == 0)
  {
LABEL_78:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(a1 + 123) = *(a2 + 123);
  if ((v5 & 0x80000) == 0)
  {
LABEL_79:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(a1 + 124) = *(a2 + 124);
  if ((v5 & 0x100000) == 0)
  {
LABEL_80:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(a1 + 125) = *(a2 + 125);
  if ((v5 & 0x200000) == 0)
  {
LABEL_81:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_82;
    }

LABEL_107:
    *(a1 + 127) = *(a2 + 127);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_106:
  *(a1 + 126) = *(a2 + 126);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_107;
  }

LABEL_82:
  if ((v5 & 0x800000) != 0)
  {
LABEL_83:
    *(a1 + 128) = *(a2 + 128);
  }

LABEL_84:
  *(a1 + 16) |= v5;
}

void sub_27641440C(uint64_t *a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    sub_276412580(a1);

    sub_276413F80(a1, a2);
  }
}

uint64_t sub_276414458(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) == 0)
  {
    return 1;
  }

  result = TSK::FormatStructArchive::IsInitialized(*(a1 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_276414518(uint64_t *a1)
{
  sub_27641454C(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_27641454C(uint64_t *result)
{
  if (result != &qword_2812F07F8)
  {
    v1 = result;
    if (result[5])
    {
      v2 = MEMORY[0x277C97280]();
      MEMORY[0x277C98580](v2, 0x10A1C406771AFB9);
    }

    if (v1[6])
    {
      v3 = MEMORY[0x277C97280]();
      MEMORY[0x277C98580](v3, 0x10A1C406771AFB9);
    }

    if (v1[7])
    {
      v4 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v4, 0x10A1C40C8B7F858);
    }

    if (v1[8])
    {
      v5 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v5, 0x10A1C4078DB9C03);
    }

    if (v1[9])
    {
      v6 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v6, 0x10A1C4078DB9C03);
    }

    if (v1[10])
    {
      v7 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v7, 0x10A1C4042C41316);
    }

    if (v1[11])
    {
      v8 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v8, 0x10A1C4042C41316);
    }

    if (v1[12])
    {
      v9 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v9, 0x10A1C4042C41316);
    }

    if (v1[13])
    {
      v10 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v10, 0x10A1C4042C41316);
    }

    if (v1[14])
    {
      v11 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v11, 0x10A1C4042C41316);
    }

    if (v1[15])
    {
      v12 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v12, 0x10A1C4042C41316);
    }

    if (v1[16])
    {
      v13 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v13, 0x10A1C4042C41316);
    }

    if (v1[17])
    {
      v14 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v14, 0x10A1C4042C41316);
    }

    if (v1[18])
    {
      v15 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v15, 0x10A1C4042C41316);
    }

    if (v1[19])
    {
      v16 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v16, 0x10A1C4042C41316);
    }

    if (v1[20])
    {
      v17 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v17, 0x10A1C4042C41316);
    }

    if (v1[21])
    {
      v18 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v18, 0x10A1C4042C41316);
    }

    if (v1[22])
    {
      v19 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v19, 0x10A1C40C8B7F858);
    }

    if (v1[23])
    {
      v20 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v20, 0x10A1C40C8B7F858);
    }

    if (v1[24])
    {
      v21 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v21, 0x10A1C40C8B7F858);
    }

    if (v1[25])
    {
      v22 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v22, 0x10A1C40C8B7F858);
    }

    if (v1[26])
    {
      v23 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v23, 0x10A1C40C8B7F858);
    }

    if (v1[27])
    {
      v24 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v24, 0x10A1C40C8B7F858);
    }

    if (v1[28])
    {
      v25 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v25, 0x10A1C40C8B7F858);
    }

    if (v1[29])
    {
      v26 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v26, 0x10A1C40C8B7F858);
    }

    if (v1[30])
    {
      v27 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v27, 0x10A1C40C8B7F858);
    }

    if (v1[31])
    {
      v28 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v28, 0x10A1C40C8B7F858);
    }

    if (v1[32])
    {
      v29 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v29, 0x10A1C40C8B7F858);
    }

    if (v1[33])
    {
      v30 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v30, 0x10A1C40C8B7F858);
    }

    if (v1[34])
    {
      v31 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v31, 0x10A1C40C8B7F858);
    }

    if (v1[35])
    {
      v32 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v32, 0x10A1C40C8B7F858);
    }

    if (v1[36])
    {
      v33 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v33, 0x10A1C40C8B7F858);
    }

    if (v1[37])
    {
      v34 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v34, 0x10A1C4078DB9C03);
    }

    if (v1[38])
    {
      v35 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v35, 0x10A1C4078DB9C03);
    }

    if (v1[39])
    {
      v36 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v36, 0x10A1C4078DB9C03);
    }

    if (v1[40])
    {
      v37 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v37, 0x10A1C4078DB9C03);
    }

    if (v1[41])
    {
      v38 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v38, 0x10A1C4078DB9C03);
    }

    if (v1[42])
    {
      v39 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v39, 0x10A1C4078DB9C03);
    }

    if (v1[43])
    {
      v40 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v40, 0x10A1C4078DB9C03);
    }

    if (v1[44])
    {
      v41 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v41, 0x10A1C4078DB9C03);
    }

    if (v1[45])
    {
      v42 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v42, 0x10A1C4078DB9C03);
    }

    if (v1[46])
    {
      v43 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v43, 0x10A1C4042C41316);
    }

    if (v1[47])
    {
      v44 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v44, 0x10A1C4042C41316);
    }

    if (v1[48])
    {
      v45 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v45, 0x10A1C4042C41316);
    }

    if (v1[49])
    {
      v46 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v46, 0x10A1C4042C41316);
    }

    if (v1[50])
    {
      v47 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v47, 0x10A1C4042C41316);
    }

    if (v1[51])
    {
      v48 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v48, 0x10A1C4042C41316);
    }

    if (v1[52])
    {
      v49 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v49, 0x10A1C4078DB9C03);
    }

    if (v1[53])
    {
      v50 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v50, 0x10A1C4078DB9C03);
    }

    if (v1[54])
    {
      v51 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v51, 0x10A1C4078DB9C03);
    }

    if (v1[55])
    {
      v52 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v52, 0x10A1C4078DB9C03);
    }

    if (v1[56])
    {
      v53 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v53, 0x10A1C4078DB9C03);
    }

    if (v1[57])
    {
      v54 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v54, 0x10A1C4078DB9C03);
    }

    if (v1[58])
    {
      v55 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v55, 0x10A1C40C8B7F858);
    }

    if (v1[59])
    {
      v56 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v56, 0x10A1C4078DB9C03);
    }

    if (v1[60])
    {
      v57 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v57, 0x10A1C4078DB9C03);
    }

    if (v1[61])
    {
      v58 = MEMORY[0x277C97280]();
      MEMORY[0x277C98580](v58, 0x10A1C406771AFB9);
    }

    if (v1[62])
    {
      v59 = MEMORY[0x277C97280]();
      MEMORY[0x277C98580](v59, 0x10A1C406771AFB9);
    }

    if (v1[63])
    {
      v60 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v60, 0x10A1C4042C41316);
    }

    if (v1[64])
    {
      v61 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v61, 0x10A1C40C8B7F858);
    }

    if (v1[65])
    {
      v62 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v62, 0x10A1C4078DB9C03);
    }

    if (v1[66])
    {
      v63 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v63, 0x10A1C4042C41316);
    }

    result = v1[67];
    if (result)
    {
      MEMORY[0x277C97240]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_276414ADC(uint64_t *a1)
{
  sub_276414518(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276414B1C()
{
  if (atomic_load_explicit(dword_2812ED448, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812F07F8;
}

uint64_t *sub_276414B5C(uint64_t *result)
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
    result = TSD::LineEndArchive::Clear(result[5]);
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_99;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = TSD::LineEndArchive::Clear(v1[6]);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_100;
  }

LABEL_99:
  result = TSD::ShadowArchive::Clear(v1[7]);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_101;
  }

LABEL_100:
  result = TSD::StrokeArchive::Clear(v1[8]);
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_102:
    result = TSD::FillArchive::Clear(v1[10]);
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_103;
  }

LABEL_101:
  result = TSD::StrokeArchive::Clear(v1[9]);
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_102;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_103:
  result = TSD::FillArchive::Clear(v1[11]);
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = TSD::FillArchive::Clear(v1[12]);
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    result = TSD::FillArchive::Clear(v1[13]);
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_107;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSD::FillArchive::Clear(v1[14]);
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_108;
  }

LABEL_107:
  result = TSD::FillArchive::Clear(v1[15]);
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_109;
  }

LABEL_108:
  result = TSD::FillArchive::Clear(v1[16]);
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_110;
  }

LABEL_109:
  result = TSD::FillArchive::Clear(v1[17]);
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_111;
  }

LABEL_110:
  result = TSD::FillArchive::Clear(v1[18]);
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_111:
  result = TSD::FillArchive::Clear(v1[19]);
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    result = TSD::FillArchive::Clear(v1[20]);
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    result = TSD::FillArchive::Clear(v1[21]);
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_115;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = TSD::ShadowArchive::Clear(v1[22]);
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_116;
  }

LABEL_115:
  result = TSD::ShadowArchive::Clear(v1[23]);
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_117;
  }

LABEL_116:
  result = TSD::ShadowArchive::Clear(v1[24]);
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_118;
  }

LABEL_117:
  result = TSD::ShadowArchive::Clear(v1[25]);
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_119;
  }

LABEL_118:
  result = TSD::ShadowArchive::Clear(v1[26]);
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_119:
  result = TSD::ShadowArchive::Clear(v1[27]);
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    result = TSD::ShadowArchive::Clear(v1[28]);
  }

LABEL_31:
  if (!HIBYTE(v3))
  {
    goto LABEL_40;
  }

  if ((v3 & 0x1000000) != 0)
  {
    result = TSD::ShadowArchive::Clear(v1[29]);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_154;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  result = TSD::ShadowArchive::Clear(v1[30]);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_155;
  }

LABEL_154:
  result = TSD::ShadowArchive::Clear(v1[31]);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_156;
  }

LABEL_155:
  result = TSD::ShadowArchive::Clear(v1[32]);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_157;
  }

LABEL_156:
  result = TSD::ShadowArchive::Clear(v1[33]);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_158:
    result = TSD::ShadowArchive::Clear(v1[35]);
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_159;
  }

LABEL_157:
  result = TSD::ShadowArchive::Clear(v1[34]);
  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_158;
  }

LABEL_39:
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_159:
  result = TSD::ShadowArchive::Clear(v1[36]);
LABEL_40:
  v4 = *(v1 + 5);
  if (!v4)
  {
    goto LABEL_50;
  }

  if (v4)
  {
    result = TSD::StrokeArchive::Clear(v1[37]);
    if ((v4 & 2) == 0)
    {
LABEL_43:
      if ((v4 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_123;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_43;
  }

  result = TSD::StrokeArchive::Clear(v1[38]);
  if ((v4 & 4) == 0)
  {
LABEL_44:
    if ((v4 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_124;
  }

LABEL_123:
  result = TSD::StrokeArchive::Clear(v1[39]);
  if ((v4 & 8) == 0)
  {
LABEL_45:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_125;
  }

LABEL_124:
  result = TSD::StrokeArchive::Clear(v1[40]);
  if ((v4 & 0x10) == 0)
  {
LABEL_46:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_126;
  }

LABEL_125:
  result = TSD::StrokeArchive::Clear(v1[41]);
  if ((v4 & 0x20) == 0)
  {
LABEL_47:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_127;
  }

LABEL_126:
  result = TSD::StrokeArchive::Clear(v1[42]);
  if ((v4 & 0x40) == 0)
  {
LABEL_48:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_127:
  result = TSD::StrokeArchive::Clear(v1[43]);
  if ((v4 & 0x80) != 0)
  {
LABEL_49:
    result = TSD::StrokeArchive::Clear(v1[44]);
  }

LABEL_50:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_60;
  }

  if ((v4 & 0x100) != 0)
  {
    result = TSD::StrokeArchive::Clear(v1[45]);
    if ((v4 & 0x200) == 0)
    {
LABEL_53:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_131;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  result = TSD::FillArchive::Clear(v1[46]);
  if ((v4 & 0x400) == 0)
  {
LABEL_54:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_132;
  }

LABEL_131:
  result = TSD::FillArchive::Clear(v1[47]);
  if ((v4 & 0x800) == 0)
  {
LABEL_55:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_133;
  }

LABEL_132:
  result = TSD::FillArchive::Clear(v1[48]);
  if ((v4 & 0x1000) == 0)
  {
LABEL_56:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_134;
  }

LABEL_133:
  result = TSD::FillArchive::Clear(v1[49]);
  if ((v4 & 0x2000) == 0)
  {
LABEL_57:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_135;
  }

LABEL_134:
  result = TSD::FillArchive::Clear(v1[50]);
  if ((v4 & 0x4000) == 0)
  {
LABEL_58:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_135:
  result = TSD::FillArchive::Clear(v1[51]);
  if ((v4 & 0x8000) != 0)
  {
LABEL_59:
    result = TSD::StrokeArchive::Clear(v1[52]);
  }

LABEL_60:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_70;
  }

  if ((v4 & 0x10000) != 0)
  {
    result = TSD::StrokeArchive::Clear(v1[53]);
    if ((v4 & 0x20000) == 0)
    {
LABEL_63:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_139;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_63;
  }

  result = TSD::StrokeArchive::Clear(v1[54]);
  if ((v4 & 0x40000) == 0)
  {
LABEL_64:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_140;
  }

LABEL_139:
  result = TSD::StrokeArchive::Clear(v1[55]);
  if ((v4 & 0x80000) == 0)
  {
LABEL_65:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_141;
  }

LABEL_140:
  result = TSD::StrokeArchive::Clear(v1[56]);
  if ((v4 & 0x100000) == 0)
  {
LABEL_66:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_142;
  }

LABEL_141:
  result = TSD::StrokeArchive::Clear(v1[57]);
  if ((v4 & 0x200000) == 0)
  {
LABEL_67:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_143;
  }

LABEL_142:
  result = TSD::ShadowArchive::Clear(v1[58]);
  if ((v4 & 0x400000) == 0)
  {
LABEL_68:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_143:
  result = TSD::StrokeArchive::Clear(v1[59]);
  if ((v4 & 0x800000) != 0)
  {
LABEL_69:
    result = TSD::StrokeArchive::Clear(v1[60]);
  }

LABEL_70:
  if ((v4 & 0x7F000000) == 0)
  {
    goto LABEL_79;
  }

  if ((v4 & 0x1000000) != 0)
  {
    result = TSD::LineEndArchive::Clear(v1[61]);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_73:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_147;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_73;
  }

  result = TSD::LineEndArchive::Clear(v1[62]);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_74:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_148;
  }

LABEL_147:
  result = TSD::FillArchive::Clear(v1[63]);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_75:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_149;
  }

LABEL_148:
  result = TSD::ShadowArchive::Clear(v1[64]);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_76:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_150;
  }

LABEL_149:
  result = TSD::StrokeArchive::Clear(v1[65]);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_77:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

LABEL_150:
  result = TSD::FillArchive::Clear(v1[66]);
  if ((v4 & 0x40000000) != 0)
  {
LABEL_78:
    result = TSD::StrokeArchive::Clear(v1[67]);
  }

LABEL_79:
  *(v1 + 136) = 0;
  v5 = *(v1 + 6);
  if (v5)
  {
    *(v1 + 548) = 0u;
    *(v1 + 564) = 0u;
  }

  if ((v5 & 0xFF00) != 0)
  {
    *(v1 + 580) = 0u;
    *(v1 + 596) = 0u;
  }

  if ((v5 & 0xFF0000) != 0)
  {
    *(v1 + 612) = 0u;
    *(v1 + 628) = 0u;
  }

  if (HIBYTE(v5))
  {
    *(v1 + 660) = 0;
    *(v1 + 644) = 0u;
  }

  v6 = *(v1 + 7);
  if (v6)
  {
    *(v1 + 677) = 0;
    *(v1 + 661) = 0u;
  }

  if ((v6 & 0xFF00) != 0)
  {
    *(v1 + 351) = 0;
    *(v1 + 694) = 0;
    *(v1 + 678) = 0u;
  }

  if ((v6 & 0x3F0000) != 0)
  {
    v1[90] = 0;
    *(v1 + 44) = 0u;
  }

  *v2 = 0;
  v2[1] = 0;
  v8 = *(v1 + 8);
  v7 = v1 + 1;
  if (v8)
  {

    return sub_2763D4FD4(v7);
  }

  return result;
}

google::protobuf::internal *sub_276415098(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v377 = a2;
  if ((sub_2763D4D98(a3, &v377) & 1) == 0)
  {
    while (1)
    {
      v6 = (v377 + 1);
      LODWORD(v7) = *v377;
      if (*v377 < 0)
      {
        v7 = (v7 + (*v6 << 7) - 128);
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v377, v7);
          v377 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          goto LABEL_7;
        }

        v6 = (v377 + 2);
      }

      v377 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 1u;
          v8 = *(a1 + 40);
          if (v8)
          {
            goto LABEL_551;
          }

          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = MEMORY[0x277C97AB0](v9);
          LODWORD(v8) = v10;
          *(a1 + 40) = v10;
          goto LABEL_550;
        case 2u:
          if (v7 != 18)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 2u;
          v8 = *(a1 + 48);
          if (v8)
          {
            goto LABEL_551;
          }

          v145 = *(a1 + 8);
          if (v145)
          {
            v145 = *(v145 & 0xFFFFFFFFFFFFFFFELL);
          }

          v146 = MEMORY[0x277C97AB0](v145);
          LODWORD(v8) = v146;
          *(a1 + 48) = v146;
          goto LABEL_550;
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 4u;
          v70 = *(a1 + 56);
          if (v70)
          {
            goto LABEL_496;
          }

          v170 = *(a1 + 8);
          if (v170)
          {
            v170 = *(v170 & 0xFFFFFFFFFFFFFFFELL);
          }

          v171 = MEMORY[0x277C97A90](v170);
          LODWORD(v70) = v171;
          *(a1 + 56) = v171;
          goto LABEL_495;
        case 4u:
          if (v7 != 34)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 8u;
          v27 = *(a1 + 64);
          if (v27)
          {
            goto LABEL_568;
          }

          v183 = *(a1 + 8);
          if (v183)
          {
            v183 = *(v183 & 0xFFFFFFFFFFFFFFFELL);
          }

          v184 = MEMORY[0x277C97AA0](v183);
          LODWORD(v27) = v184;
          *(a1 + 64) = v184;
          goto LABEL_567;
        case 5u:
          if (v7 != 42)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x10u;
          v27 = *(a1 + 72);
          if (v27)
          {
            goto LABEL_568;
          }

          v190 = *(a1 + 8);
          if (v190)
          {
            v190 = *(v190 & 0xFFFFFFFFFFFFFFFELL);
          }

          v191 = MEMORY[0x277C97AA0](v190);
          LODWORD(v27) = v191;
          *(a1 + 72) = v191;
          goto LABEL_567;
        case 6u:
          if (v7 != 50)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x20u;
          v37 = *(a1 + 80);
          if (v37)
          {
            goto LABEL_474;
          }

          v174 = *(a1 + 8);
          if (v174)
          {
            v174 = *(v174 & 0xFFFFFFFFFFFFFFFELL);
          }

          v175 = MEMORY[0x277C97A80](v174);
          LODWORD(v37) = v175;
          *(a1 + 80) = v175;
          goto LABEL_473;
        case 7u:
          if (v7 != 58)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x40u;
          v37 = *(a1 + 88);
          if (v37)
          {
            goto LABEL_474;
          }

          v178 = *(a1 + 8);
          if (v178)
          {
            v178 = *(v178 & 0xFFFFFFFFFFFFFFFELL);
          }

          v179 = MEMORY[0x277C97A80](v178);
          LODWORD(v37) = v179;
          *(a1 + 88) = v179;
          goto LABEL_473;
        case 8u:
          if (v7 != 66)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x80u;
          v37 = *(a1 + 96);
          if (v37)
          {
            goto LABEL_474;
          }

          v154 = *(a1 + 8);
          if (v154)
          {
            v154 = *(v154 & 0xFFFFFFFFFFFFFFFELL);
          }

          v155 = MEMORY[0x277C97A80](v154);
          LODWORD(v37) = v155;
          *(a1 + 96) = v155;
          goto LABEL_473;
        case 9u:
          if (v7 != 74)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x100u;
          v37 = *(a1 + 104);
          if (v37)
          {
            goto LABEL_474;
          }

          v166 = *(a1 + 8);
          if (v166)
          {
            v166 = *(v166 & 0xFFFFFFFFFFFFFFFELL);
          }

          v167 = MEMORY[0x277C97A80](v166);
          LODWORD(v37) = v167;
          *(a1 + 104) = v167;
          goto LABEL_473;
        case 0xAu:
          if (v7 != 82)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x200u;
          v37 = *(a1 + 112);
          if (v37)
          {
            goto LABEL_474;
          }

          v138 = *(a1 + 8);
          if (v138)
          {
            v138 = *(v138 & 0xFFFFFFFFFFFFFFFELL);
          }

          v139 = MEMORY[0x277C97A80](v138);
          LODWORD(v37) = v139;
          *(a1 + 112) = v139;
          goto LABEL_473;
        case 0xBu:
          if (v7 != 90)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x400u;
          v37 = *(a1 + 120);
          if (v37)
          {
            goto LABEL_474;
          }

          v156 = *(a1 + 8);
          if (v156)
          {
            v156 = *(v156 & 0xFFFFFFFFFFFFFFFELL);
          }

          v157 = MEMORY[0x277C97A80](v156);
          LODWORD(v37) = v157;
          *(a1 + 120) = v157;
          goto LABEL_473;
        case 0xCu:
          if (v7 != 98)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x800u;
          v37 = *(a1 + 128);
          if (v37)
          {
            goto LABEL_474;
          }

          v203 = *(a1 + 8);
          if (v203)
          {
            v203 = *(v203 & 0xFFFFFFFFFFFFFFFELL);
          }

          v204 = MEMORY[0x277C97A80](v203);
          LODWORD(v37) = v204;
          *(a1 + 128) = v204;
          goto LABEL_473;
        case 0xDu:
          if (v7 != 106)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x1000u;
          v37 = *(a1 + 136);
          if (v37)
          {
            goto LABEL_474;
          }

          v194 = *(a1 + 8);
          if (v194)
          {
            v194 = *(v194 & 0xFFFFFFFFFFFFFFFELL);
          }

          v195 = MEMORY[0x277C97A80](v194);
          LODWORD(v37) = v195;
          *(a1 + 136) = v195;
          goto LABEL_473;
        case 0xEu:
          if (v7 != 114)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x2000u;
          v37 = *(a1 + 144);
          if (v37)
          {
            goto LABEL_474;
          }

          v141 = *(a1 + 8);
          if (v141)
          {
            v141 = *(v141 & 0xFFFFFFFFFFFFFFFELL);
          }

          v142 = MEMORY[0x277C97A80](v141);
          LODWORD(v37) = v142;
          *(a1 + 144) = v142;
          goto LABEL_473;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x4000u;
          v37 = *(a1 + 152);
          if (v37)
          {
            goto LABEL_474;
          }

          v213 = *(a1 + 8);
          if (v213)
          {
            v213 = *(v213 & 0xFFFFFFFFFFFFFFFELL);
          }

          v214 = MEMORY[0x277C97A80](v213);
          LODWORD(v37) = v214;
          *(a1 + 152) = v214;
          goto LABEL_473;
        case 0x10u:
          if (v7 != 130)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x8000u;
          v37 = *(a1 + 160);
          if (v37)
          {
            goto LABEL_474;
          }

          v215 = *(a1 + 8);
          if (v215)
          {
            v215 = *(v215 & 0xFFFFFFFFFFFFFFFELL);
          }

          v216 = MEMORY[0x277C97A80](v215);
          LODWORD(v37) = v216;
          *(a1 + 160) = v216;
          goto LABEL_473;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x10000u;
          v37 = *(a1 + 168);
          if (v37)
          {
            goto LABEL_474;
          }

          v109 = *(a1 + 8);
          if (v109)
          {
            v109 = *(v109 & 0xFFFFFFFFFFFFFFFELL);
          }

          v110 = MEMORY[0x277C97A80](v109);
          LODWORD(v37) = v110;
          *(a1 + 168) = v110;
          goto LABEL_473;
        case 0x12u:
          if (v7 != 144)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x80000000;
          v222 = (v6 + 1);
          LODWORD(v221) = *v6;
          if ((v221 & 0x80) == 0)
          {
            goto LABEL_450;
          }

          v223 = *v222;
          v221 = (v221 + (v223 << 7) - 128);
          if (v223 < 0)
          {
            v349 = google::protobuf::internal::VarintParseSlow64(v6, v221);
            v377 = v349;
            *(a1 + 544) = v350;
            if (!v349)
            {
              return 0;
            }
          }

          else
          {
            v222 = (v6 + 2);
LABEL_450:
            v377 = v222;
            *(a1 + 544) = v221;
          }

          goto LABEL_570;
        case 0x13u:
          if (v7 != 152)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 1u;
          v124 = (v6 + 1);
          LODWORD(v123) = *v6;
          if ((v123 & 0x80) == 0)
          {
            goto LABEL_234;
          }

          v125 = *v124;
          v123 = (v123 + (v125 << 7) - 128);
          if (v125 < 0)
          {
            v327 = google::protobuf::internal::VarintParseSlow64(v6, v123);
            v377 = v327;
            *(a1 + 548) = v328;
            if (!v327)
            {
              return 0;
            }
          }

          else
          {
            v124 = (v6 + 2);
LABEL_234:
            v377 = v124;
            *(a1 + 548) = v123;
          }

          goto LABEL_570;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 2u;
          v181 = (v6 + 1);
          LODWORD(v180) = *v6;
          if ((v180 & 0x80) == 0)
          {
            goto LABEL_358;
          }

          v182 = *v181;
          v180 = (v180 + (v182 << 7) - 128);
          if (v182 < 0)
          {
            v341 = google::protobuf::internal::VarintParseSlow64(v6, v180);
            v377 = v341;
            *(a1 + 552) = v342;
            if (!v341)
            {
              return 0;
            }
          }

          else
          {
            v181 = (v6 + 2);
LABEL_358:
            v377 = v181;
            *(a1 + 552) = v180;
          }

          goto LABEL_570;
        case 0x15u:
          if (v7 != 168)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 4u;
          v104 = (v6 + 1);
          LODWORD(v103) = *v6;
          if ((v103 & 0x80) == 0)
          {
            goto LABEL_192;
          }

          v105 = *v104;
          v103 = (v103 + (v105 << 7) - 128);
          if (v105 < 0)
          {
            v321 = google::protobuf::internal::VarintParseSlow64(v6, v103);
            v377 = v321;
            *(a1 + 556) = v322;
            if (!v321)
            {
              return 0;
            }
          }

          else
          {
            v104 = (v6 + 2);
LABEL_192:
            v377 = v104;
            *(a1 + 556) = v103;
          }

          goto LABEL_570;
        case 0x16u:
          if (v7 != 176)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 8u;
          v127 = (v6 + 1);
          LODWORD(v126) = *v6;
          if ((v126 & 0x80) == 0)
          {
            goto LABEL_239;
          }

          v128 = *v127;
          v126 = (v126 + (v128 << 7) - 128);
          if (v128 < 0)
          {
            v329 = google::protobuf::internal::VarintParseSlow64(v6, v126);
            v377 = v329;
            *(a1 + 560) = v330;
            if (!v329)
            {
              return 0;
            }
          }

          else
          {
            v127 = (v6 + 2);
LABEL_239:
            v377 = v127;
            *(a1 + 560) = v126;
          }

          goto LABEL_570;
        case 0x17u:
          if (v7 != 184)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x10u;
          v161 = (v6 + 1);
          LODWORD(v160) = *v6;
          if ((v160 & 0x80) == 0)
          {
            goto LABEL_313;
          }

          v162 = *v161;
          v160 = (v160 + (v162 << 7) - 128);
          if (v162 < 0)
          {
            v337 = google::protobuf::internal::VarintParseSlow64(v6, v160);
            v377 = v337;
            *(a1 + 564) = v338;
            if (!v337)
            {
              return 0;
            }
          }

          else
          {
            v161 = (v6 + 2);
LABEL_313:
            v377 = v161;
            *(a1 + 564) = v160;
          }

          goto LABEL_570;
        case 0x18u:
          if (v7 != 197)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x20u;
          v137 = *v6;
          v32 = (v6 + 4);
          *(a1 + 568) = v137;
          goto LABEL_544;
        case 0x19u:
          if (v7 != 200)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x40u;
          v199 = (v6 + 1);
          LODWORD(v198) = *v6;
          if ((v198 & 0x80) == 0)
          {
            goto LABEL_400;
          }

          v200 = *v199;
          v198 = (v198 + (v200 << 7) - 128);
          if (v200 < 0)
          {
            v343 = google::protobuf::internal::VarintParseSlow64(v6, v198);
            v377 = v343;
            *(a1 + 572) = v344;
            if (!v343)
            {
              return 0;
            }
          }

          else
          {
            v199 = (v6 + 2);
LABEL_400:
            v377 = v199;
            *(a1 + 572) = v198;
          }

          goto LABEL_570;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x80u;
          v132 = (v6 + 1);
          LODWORD(v131) = *v6;
          if ((v131 & 0x80) == 0)
          {
            goto LABEL_249;
          }

          v133 = *v132;
          v131 = (v131 + (v133 << 7) - 128);
          if (v133 < 0)
          {
            v331 = google::protobuf::internal::VarintParseSlow64(v6, v131);
            v377 = v331;
            *(a1 + 576) = v332;
            if (!v331)
            {
              return 0;
            }
          }

          else
          {
            v132 = (v6 + 2);
LABEL_249:
            v377 = v132;
            *(a1 + 576) = v131;
          }

          goto LABEL_570;
        case 0x1Bu:
          if (v7 != 216)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x100u;
          v101 = (v6 + 1);
          LODWORD(v100) = *v6;
          if ((v100 & 0x80) == 0)
          {
            goto LABEL_187;
          }

          v102 = *v101;
          v100 = (v100 + (v102 << 7) - 128);
          if (v102 < 0)
          {
            v319 = google::protobuf::internal::VarintParseSlow64(v6, v100);
            v377 = v319;
            *(a1 + 580) = v320;
            if (!v319)
            {
              return 0;
            }
          }

          else
          {
            v101 = (v6 + 2);
LABEL_187:
            v377 = v101;
            *(a1 + 580) = v100;
          }

          goto LABEL_570;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x200u;
          v94 = (v6 + 1);
          LODWORD(v93) = *v6;
          if ((v93 & 0x80) == 0)
          {
            goto LABEL_172;
          }

          v95 = *v94;
          v93 = (v93 + (v95 << 7) - 128);
          if (v95 < 0)
          {
            v317 = google::protobuf::internal::VarintParseSlow64(v6, v93);
            v377 = v317;
            *(a1 + 584) = v318;
            if (!v317)
            {
              return 0;
            }
          }

          else
          {
            v94 = (v6 + 2);
LABEL_172:
            v377 = v94;
            *(a1 + 584) = v93;
          }

          goto LABEL_570;
        case 0x1Du:
          if (v7 != 232)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x400u;
          v135 = (v6 + 1);
          LODWORD(v134) = *v6;
          if ((v134 & 0x80) == 0)
          {
            goto LABEL_254;
          }

          v136 = *v135;
          v134 = (v134 + (v136 << 7) - 128);
          if (v136 < 0)
          {
            v333 = google::protobuf::internal::VarintParseSlow64(v6, v134);
            v377 = v333;
            *(a1 + 588) = v334;
            if (!v333)
            {
              return 0;
            }
          }

          else
          {
            v135 = (v6 + 2);
LABEL_254:
            v377 = v135;
            *(a1 + 588) = v134;
          }

          goto LABEL_570;
        case 0x1Eu:
          if (v7 != 242)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x20000u;
          v70 = *(a1 + 176);
          if (v70)
          {
            goto LABEL_496;
          }

          v147 = *(a1 + 8);
          if (v147)
          {
            v147 = *(v147 & 0xFFFFFFFFFFFFFFFELL);
          }

          v148 = MEMORY[0x277C97A90](v147);
          LODWORD(v70) = v148;
          *(a1 + 176) = v148;
          goto LABEL_495;
        case 0x1Fu:
          if (v7 != 250)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x40000u;
          v70 = *(a1 + 184);
          if (v70)
          {
            goto LABEL_496;
          }

          v201 = *(a1 + 8);
          if (v201)
          {
            v201 = *(v201 & 0xFFFFFFFFFFFFFFFELL);
          }

          v202 = MEMORY[0x277C97A90](v201);
          LODWORD(v70) = v202;
          *(a1 + 184) = v202;
          goto LABEL_495;
        case 0x20u:
          if (v7 != 2)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x80000u;
          v70 = *(a1 + 192);
          if (v70)
          {
            goto LABEL_496;
          }

          v149 = *(a1 + 8);
          if (v149)
          {
            v149 = *(v149 & 0xFFFFFFFFFFFFFFFELL);
          }

          v150 = MEMORY[0x277C97A90](v149);
          LODWORD(v70) = v150;
          *(a1 + 192) = v150;
          goto LABEL_495;
        case 0x21u:
          if (v7 != 10)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x100000u;
          v70 = *(a1 + 200);
          if (v70)
          {
            goto LABEL_496;
          }

          v86 = *(a1 + 8);
          if (v86)
          {
            v86 = *(v86 & 0xFFFFFFFFFFFFFFFELL);
          }

          v87 = MEMORY[0x277C97A90](v86);
          LODWORD(v70) = v87;
          *(a1 + 200) = v87;
          goto LABEL_495;
        case 0x22u:
          if (v7 != 18)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x200000u;
          v70 = *(a1 + 208);
          if (v70)
          {
            goto LABEL_496;
          }

          v119 = *(a1 + 8);
          if (v119)
          {
            v119 = *(v119 & 0xFFFFFFFFFFFFFFFELL);
          }

          v120 = MEMORY[0x277C97A90](v119);
          LODWORD(v70) = v120;
          *(a1 + 208) = v120;
          goto LABEL_495;
        case 0x23u:
          if (v7 != 26)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x400000u;
          v70 = *(a1 + 216);
          if (v70)
          {
            goto LABEL_496;
          }

          v205 = *(a1 + 8);
          if (v205)
          {
            v205 = *(v205 & 0xFFFFFFFFFFFFFFFELL);
          }

          v206 = MEMORY[0x277C97A90](v205);
          LODWORD(v70) = v206;
          *(a1 + 216) = v206;
          goto LABEL_495;
        case 0x24u:
          if (v7 != 34)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x800000u;
          v70 = *(a1 + 224);
          if (v70)
          {
            goto LABEL_496;
          }

          v243 = *(a1 + 8);
          if (v243)
          {
            v243 = *(v243 & 0xFFFFFFFFFFFFFFFELL);
          }

          v244 = MEMORY[0x277C97A90](v243);
          LODWORD(v70) = v244;
          *(a1 + 224) = v244;
          goto LABEL_495;
        case 0x25u:
          if (v7 != 42)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x1000000u;
          v70 = *(a1 + 232);
          if (v70)
          {
            goto LABEL_496;
          }

          v98 = *(a1 + 8);
          if (v98)
          {
            v98 = *(v98 & 0xFFFFFFFFFFFFFFFELL);
          }

          v99 = MEMORY[0x277C97A90](v98);
          LODWORD(v70) = v99;
          *(a1 + 232) = v99;
          goto LABEL_495;
        case 0x26u:
          if (v7 != 50)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x2000000u;
          v70 = *(a1 + 240);
          if (v70)
          {
            goto LABEL_496;
          }

          v192 = *(a1 + 8);
          if (v192)
          {
            v192 = *(v192 & 0xFFFFFFFFFFFFFFFELL);
          }

          v193 = MEMORY[0x277C97A90](v192);
          LODWORD(v70) = v193;
          *(a1 + 240) = v193;
          goto LABEL_495;
        case 0x27u:
          if (v7 != 58)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x4000000u;
          v70 = *(a1 + 248);
          if (v70)
          {
            goto LABEL_496;
          }

          v96 = *(a1 + 8);
          if (v96)
          {
            v96 = *(v96 & 0xFFFFFFFFFFFFFFFELL);
          }

          v97 = MEMORY[0x277C97A90](v96);
          LODWORD(v70) = v97;
          *(a1 + 248) = v97;
          goto LABEL_495;
        case 0x28u:
          if (v7 != 66)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x8000000u;
          v70 = *(a1 + 256);
          if (v70)
          {
            goto LABEL_496;
          }

          v88 = *(a1 + 8);
          if (v88)
          {
            v88 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
          }

          v89 = MEMORY[0x277C97A90](v88);
          LODWORD(v70) = v89;
          *(a1 + 256) = v89;
          goto LABEL_495;
        case 0x29u:
          if (v7 != 74)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x10000000u;
          v70 = *(a1 + 264);
          if (v70)
          {
            goto LABEL_496;
          }

          v129 = *(a1 + 8);
          if (v129)
          {
            v129 = *(v129 & 0xFFFFFFFFFFFFFFFELL);
          }

          v130 = MEMORY[0x277C97A90](v129);
          LODWORD(v70) = v130;
          *(a1 + 264) = v130;
          goto LABEL_495;
        case 0x2Au:
          if (v7 != 82)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x20000000u;
          v70 = *(a1 + 272);
          if (v70)
          {
            goto LABEL_496;
          }

          v158 = *(a1 + 8);
          if (v158)
          {
            v158 = *(v158 & 0xFFFFFFFFFFFFFFFELL);
          }

          v159 = MEMORY[0x277C97A90](v158);
          LODWORD(v70) = v159;
          *(a1 + 272) = v159;
          goto LABEL_495;
        case 0x2Bu:
          if (v7 != 90)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x40000000u;
          v70 = *(a1 + 280);
          if (v70)
          {
            goto LABEL_496;
          }

          v219 = *(a1 + 8);
          if (v219)
          {
            v219 = *(v219 & 0xFFFFFFFFFFFFFFFELL);
          }

          v220 = MEMORY[0x277C97A90](v219);
          LODWORD(v70) = v220;
          *(a1 + 280) = v220;
          goto LABEL_495;
        case 0x2Cu:
          if (v7 != 98)
          {
            goto LABEL_582;
          }

          *(a1 + 16) |= 0x80000000;
          v70 = *(a1 + 288);
          if (v70)
          {
            goto LABEL_496;
          }

          v73 = *(a1 + 8);
          if (v73)
          {
            v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
          }

          v74 = MEMORY[0x277C97A90](v73);
          LODWORD(v70) = v74;
          *(a1 + 288) = v74;
          goto LABEL_495;
        case 0x2Du:
          if (v7 != 106)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 1u;
          v27 = *(a1 + 296);
          if (v27)
          {
            goto LABEL_568;
          }

          v107 = *(a1 + 8);
          if (v107)
          {
            v107 = *(v107 & 0xFFFFFFFFFFFFFFFELL);
          }

          v108 = MEMORY[0x277C97AA0](v107);
          LODWORD(v27) = v108;
          *(a1 + 296) = v108;
          goto LABEL_567;
        case 0x2Eu:
          if (v7 != 114)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 2u;
          v27 = *(a1 + 304);
          if (v27)
          {
            goto LABEL_568;
          }

          v172 = *(a1 + 8);
          if (v172)
          {
            v172 = *(v172 & 0xFFFFFFFFFFFFFFFELL);
          }

          v173 = MEMORY[0x277C97AA0](v172);
          LODWORD(v27) = v173;
          *(a1 + 304) = v173;
          goto LABEL_567;
        case 0x2Fu:
          if (v7 != 122)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 4u;
          v27 = *(a1 + 312);
          if (v27)
          {
            goto LABEL_568;
          }

          v188 = *(a1 + 8);
          if (v188)
          {
            v188 = *(v188 & 0xFFFFFFFFFFFFFFFELL);
          }

          v189 = MEMORY[0x277C97AA0](v188);
          LODWORD(v27) = v189;
          *(a1 + 312) = v189;
          goto LABEL_567;
        case 0x30u:
          if (v7 != 130)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 8u;
          v27 = *(a1 + 320);
          if (v27)
          {
            goto LABEL_568;
          }

          v248 = *(a1 + 8);
          if (v248)
          {
            v248 = *(v248 & 0xFFFFFFFFFFFFFFFELL);
          }

          v249 = MEMORY[0x277C97AA0](v248);
          LODWORD(v27) = v249;
          *(a1 + 320) = v249;
          goto LABEL_567;
        case 0x31u:
          if (v7 != 138)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x10u;
          v27 = *(a1 + 328);
          if (v27)
          {
            goto LABEL_568;
          }

          v176 = *(a1 + 8);
          if (v176)
          {
            v176 = *(v176 & 0xFFFFFFFFFFFFFFFELL);
          }

          v177 = MEMORY[0x277C97AA0](v176);
          LODWORD(v27) = v177;
          *(a1 + 328) = v177;
          goto LABEL_567;
        case 0x32u:
          if (v7 != 146)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x20u;
          v27 = *(a1 + 336);
          if (v27)
          {
            goto LABEL_568;
          }

          v84 = *(a1 + 8);
          if (v84)
          {
            v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
          }

          v85 = MEMORY[0x277C97AA0](v84);
          LODWORD(v27) = v85;
          *(a1 + 336) = v85;
          goto LABEL_567;
        case 0x33u:
          if (v7 != 154)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x40u;
          v27 = *(a1 + 344);
          if (v27)
          {
            goto LABEL_568;
          }

          v75 = *(a1 + 8);
          if (v75)
          {
            v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
          }

          v76 = MEMORY[0x277C97AA0](v75);
          LODWORD(v27) = v76;
          *(a1 + 344) = v76;
          goto LABEL_567;
        case 0x34u:
          if (v7 != 162)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x80u;
          v27 = *(a1 + 352);
          if (v27)
          {
            goto LABEL_568;
          }

          v262 = *(a1 + 8);
          if (v262)
          {
            v262 = *(v262 & 0xFFFFFFFFFFFFFFFELL);
          }

          v263 = MEMORY[0x277C97AA0](v262);
          LODWORD(v27) = v263;
          *(a1 + 352) = v263;
          goto LABEL_567;
        case 0x35u:
          if (v7 != 170)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x100u;
          v27 = *(a1 + 360);
          if (v27)
          {
            goto LABEL_568;
          }

          v239 = *(a1 + 8);
          if (v239)
          {
            v239 = *(v239 & 0xFFFFFFFFFFFFFFFELL);
          }

          v240 = MEMORY[0x277C97AA0](v239);
          LODWORD(v27) = v240;
          *(a1 + 360) = v240;
          goto LABEL_567;
        case 0x36u:
          if (v7 != 178)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x200u;
          v37 = *(a1 + 368);
          if (v37)
          {
            goto LABEL_474;
          }

          v82 = *(a1 + 8);
          if (v82)
          {
            v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
          }

          v83 = MEMORY[0x277C97A80](v82);
          LODWORD(v37) = v83;
          *(a1 + 368) = v83;
          goto LABEL_473;
        case 0x37u:
          if (v7 != 186)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x400u;
          v37 = *(a1 + 376);
          if (v37)
          {
            goto LABEL_474;
          }

          v196 = *(a1 + 8);
          if (v196)
          {
            v196 = *(v196 & 0xFFFFFFFFFFFFFFFELL);
          }

          v197 = MEMORY[0x277C97A80](v196);
          LODWORD(v37) = v197;
          *(a1 + 376) = v197;
          goto LABEL_473;
        case 0x38u:
          if (v7 != 194)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x800u;
          v37 = *(a1 + 384);
          if (v37)
          {
            goto LABEL_474;
          }

          v217 = *(a1 + 8);
          if (v217)
          {
            v217 = *(v217 & 0xFFFFFFFFFFFFFFFELL);
          }

          v218 = MEMORY[0x277C97A80](v217);
          LODWORD(v37) = v218;
          *(a1 + 384) = v218;
          goto LABEL_473;
        case 0x39u:
          if (v7 != 202)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x1000u;
          v37 = *(a1 + 392);
          if (v37)
          {
            goto LABEL_474;
          }

          v80 = *(a1 + 8);
          if (v80)
          {
            v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
          }

          v81 = MEMORY[0x277C97A80](v80);
          LODWORD(v37) = v81;
          *(a1 + 392) = v81;
          goto LABEL_473;
        case 0x3Au:
          if (v7 != 210)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x2000u;
          v37 = *(a1 + 400);
          if (v37)
          {
            goto LABEL_474;
          }

          v233 = *(a1 + 8);
          if (v233)
          {
            v233 = *(v233 & 0xFFFFFFFFFFFFFFFELL);
          }

          v234 = MEMORY[0x277C97A80](v233);
          LODWORD(v37) = v234;
          *(a1 + 400) = v234;
          goto LABEL_473;
        case 0x3Bu:
          if (v7 != 218)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x4000u;
          v37 = *(a1 + 408);
          if (v37)
          {
            goto LABEL_474;
          }

          v230 = *(a1 + 8);
          if (v230)
          {
            v230 = *(v230 & 0xFFFFFFFFFFFFFFFELL);
          }

          v231 = MEMORY[0x277C97A80](v230);
          LODWORD(v37) = v231;
          *(a1 + 408) = v231;
          goto LABEL_473;
        case 0x3Cu:
          if (v7 != 224)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 1u;
          v47 = (v6 + 1);
          v46 = *v6;
          if ((v46 & 0x8000000000000000) == 0)
          {
            goto LABEL_78;
          }

          v48 = *v47;
          v46 = (v48 << 7) + v46 - 128;
          if (v48 < 0)
          {
            v301 = google::protobuf::internal::VarintParseSlow64(v6, v46);
            v377 = v301;
            *(a1 + 661) = v302 != 0;
            if (!v301)
            {
              return 0;
            }
          }

          else
          {
            v47 = (v6 + 2);
LABEL_78:
            v377 = v47;
            *(a1 + 661) = v46 != 0;
          }

          goto LABEL_570;
        case 0x3Du:
          if (v7 != 232)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 2u;
          v251 = (v6 + 1);
          v250 = *v6;
          if ((v250 & 0x8000000000000000) == 0)
          {
            goto LABEL_511;
          }

          v252 = *v251;
          v250 = (v252 << 7) + v250 - 128;
          if (v252 < 0)
          {
            v359 = google::protobuf::internal::VarintParseSlow64(v6, v250);
            v377 = v359;
            *(a1 + 662) = v360 != 0;
            if (!v359)
            {
              return 0;
            }
          }

          else
          {
            v251 = (v6 + 2);
LABEL_511:
            v377 = v251;
            *(a1 + 662) = v250 != 0;
          }

          goto LABEL_570;
        case 0x3Eu:
          if (v7 != 240)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 4u;
          v265 = (v6 + 1);
          v264 = *v6;
          if ((v264 & 0x8000000000000000) == 0)
          {
            goto LABEL_536;
          }

          v266 = *v265;
          v264 = (v266 << 7) + v264 - 128;
          if (v266 < 0)
          {
            v367 = google::protobuf::internal::VarintParseSlow64(v6, v264);
            v377 = v367;
            *(a1 + 663) = v368 != 0;
            if (!v367)
            {
              return 0;
            }
          }

          else
          {
            v265 = (v6 + 2);
LABEL_536:
            v377 = v265;
            *(a1 + 663) = v264 != 0;
          }

          goto LABEL_570;
        case 0x3Fu:
          if (v7 != 248)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x8000000u;
          v225 = (v6 + 1);
          v224 = *v6;
          if ((v224 & 0x8000000000000000) == 0)
          {
            goto LABEL_455;
          }

          v226 = *v225;
          v224 = (v226 << 7) + v224 - 128;
          if (v226 < 0)
          {
            v351 = google::protobuf::internal::VarintParseSlow64(v6, v224);
            v377 = v351;
            *(a1 + 656) = v352 != 0;
            if (!v351)
            {
              return 0;
            }
          }

          else
          {
            v225 = (v6 + 2);
LABEL_455:
            v377 = v225;
            *(a1 + 656) = v224 != 0;
          }

          goto LABEL_570;
        case 0x40u:
          if (v7)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x20000000u;
          v228 = (v6 + 1);
          v227 = *v6;
          if ((v227 & 0x8000000000000000) == 0)
          {
            goto LABEL_460;
          }

          v229 = *v228;
          v227 = (v229 << 7) + v227 - 128;
          if (v229 < 0)
          {
            v353 = google::protobuf::internal::VarintParseSlow64(v6, v227);
            v377 = v353;
            *(a1 + 658) = v354 != 0;
            if (!v353)
            {
              return 0;
            }
          }

          else
          {
            v228 = (v6 + 2);
LABEL_460:
            v377 = v228;
            *(a1 + 658) = v227 != 0;
          }

          goto LABEL_570;
        case 0x41u:
          if (v7 != 8)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x40000000u;
          v112 = (v6 + 1);
          v111 = *v6;
          if ((v111 & 0x8000000000000000) == 0)
          {
            goto LABEL_209;
          }

          v113 = *v112;
          v111 = (v113 << 7) + v111 - 128;
          if (v113 < 0)
          {
            v323 = google::protobuf::internal::VarintParseSlow64(v6, v111);
            v377 = v323;
            *(a1 + 659) = v324 != 0;
            if (!v323)
            {
              return 0;
            }
          }

          else
          {
            v112 = (v6 + 2);
LABEL_209:
            v377 = v112;
            *(a1 + 659) = v111 != 0;
          }

          goto LABEL_570;
        case 0x42u:
          if (v7 != 16)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x40u;
          v237 = (v6 + 1);
          v236 = *v6;
          if ((v236 & 0x8000000000000000) == 0)
          {
            goto LABEL_479;
          }

          v238 = *v237;
          v236 = (v238 << 7) + v236 - 128;
          if (v238 < 0)
          {
            v355 = google::protobuf::internal::VarintParseSlow64(v6, v236);
            v377 = v355;
            *(a1 + 676) = v356 != 0;
            if (!v355)
            {
              return 0;
            }
          }

          else
          {
            v237 = (v6 + 2);
LABEL_479:
            v377 = v237;
            *(a1 + 676) = v236 != 0;
          }

          goto LABEL_570;
        case 0x43u:
          if (v7 != 24)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x80u;
          v50 = (v6 + 1);
          v49 = *v6;
          if ((v49 & 0x8000000000000000) == 0)
          {
            goto LABEL_83;
          }

          v51 = *v50;
          v49 = (v51 << 7) + v49 - 128;
          if (v51 < 0)
          {
            v303 = google::protobuf::internal::VarintParseSlow64(v6, v49);
            v377 = v303;
            *(a1 + 677) = v304 != 0;
            if (!v303)
            {
              return 0;
            }
          }

          else
          {
            v50 = (v6 + 2);
LABEL_83:
            v377 = v50;
            *(a1 + 677) = v49 != 0;
          }

          goto LABEL_570;
        case 0x44u:
          if (v7 != 32)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x100u;
          v246 = (v6 + 1);
          v245 = *v6;
          if ((v245 & 0x8000000000000000) == 0)
          {
            goto LABEL_501;
          }

          v247 = *v246;
          v245 = (v247 << 7) + v245 - 128;
          if (v247 < 0)
          {
            v357 = google::protobuf::internal::VarintParseSlow64(v6, v245);
            v377 = v357;
            *(a1 + 678) = v358 != 0;
            if (!v357)
            {
              return 0;
            }
          }

          else
          {
            v246 = (v6 + 2);
LABEL_501:
            v377 = v246;
            *(a1 + 678) = v245 != 0;
          }

          goto LABEL_570;
        case 0x45u:
          if (v7 != 40)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x800u;
          v257 = (v6 + 1);
          v256 = *v6;
          if ((v256 & 0x8000000000000000) == 0)
          {
            goto LABEL_521;
          }

          v258 = *v257;
          v256 = (v258 << 7) + v256 - 128;
          if (v258 < 0)
          {
            v363 = google::protobuf::internal::VarintParseSlow64(v6, v256);
            v377 = v363;
            *(a1 + 592) = v364 != 0;
            if (!v363)
            {
              return 0;
            }
          }

          else
          {
            v257 = (v6 + 2);
LABEL_521:
            v377 = v257;
            *(a1 + 592) = v256 != 0;
          }

          goto LABEL_570;
        case 0x46u:
          if (v7 != 53)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x1000u;
          v140 = *v6;
          v32 = (v6 + 4);
          *(a1 + 596) = v140;
          goto LABEL_544;
        case 0x47u:
          if (v7 != 61)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x2000u;
          v270 = *v6;
          v32 = (v6 + 4);
          *(a1 + 600) = v270;
          goto LABEL_544;
        case 0x48u:
          if (v7 != 69)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x4000u;
          v232 = *v6;
          v32 = (v6 + 4);
          *(a1 + 604) = v232;
          goto LABEL_544;
        case 0x49u:
          if (v7 != 77)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x8000u;
          v55 = *v6;
          v32 = (v6 + 4);
          *(a1 + 608) = v55;
          goto LABEL_544;
        case 0x4Au:
          if (v7 != 85)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x10000u;
          v106 = *v6;
          v32 = (v6 + 4);
          *(a1 + 612) = v106;
          goto LABEL_544;
        case 0x4Bu:
          if (v7 != 90)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x8000u;
          v27 = *(a1 + 416);
          if (v27)
          {
            goto LABEL_568;
          }

          v185 = *(a1 + 8);
          if (v185)
          {
            v185 = *(v185 & 0xFFFFFFFFFFFFFFFELL);
          }

          v186 = MEMORY[0x277C97AA0](v185);
          LODWORD(v27) = v186;
          *(a1 + 416) = v186;
          goto LABEL_567;
        case 0x4Cu:
          if (v7 != 98)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x10000u;
          v27 = *(a1 + 424);
          if (v27)
          {
            goto LABEL_568;
          }

          v65 = *(a1 + 8);
          if (v65)
          {
            v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
          }

          v66 = MEMORY[0x277C97AA0](v65);
          LODWORD(v27) = v66;
          *(a1 + 424) = v66;
          goto LABEL_567;
        case 0x4Du:
          if (v7 != 106)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x20000u;
          v27 = *(a1 + 432);
          if (v27)
          {
            goto LABEL_568;
          }

          v276 = *(a1 + 8);
          if (v276)
          {
            v276 = *(v276 & 0xFFFFFFFFFFFFFFFELL);
          }

          v277 = MEMORY[0x277C97AA0](v276);
          LODWORD(v27) = v277;
          *(a1 + 432) = v277;
          goto LABEL_567;
        case 0x4Eu:
          if (v7 != 114)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x40000u;
          v27 = *(a1 + 440);
          if (v27)
          {
            goto LABEL_568;
          }

          v44 = *(a1 + 8);
          if (v44)
          {
            v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
          }

          v45 = MEMORY[0x277C97AA0](v44);
          LODWORD(v27) = v45;
          *(a1 + 440) = v45;
          goto LABEL_567;
        case 0x4Fu:
          if (v7 != 122)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x80000u;
          v27 = *(a1 + 448);
          if (v27)
          {
            goto LABEL_568;
          }

          v117 = *(a1 + 8);
          if (v117)
          {
            v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
          }

          v118 = MEMORY[0x277C97AA0](v117);
          LODWORD(v27) = v118;
          *(a1 + 448) = v118;
          goto LABEL_567;
        case 0x50u:
          if (v7 != 130)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x100000u;
          v27 = *(a1 + 456);
          if (v27)
          {
            goto LABEL_568;
          }

          v30 = *(a1 + 8);
          if (v30)
          {
            v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
          }

          v31 = MEMORY[0x277C97AA0](v30);
          LODWORD(v27) = v31;
          *(a1 + 456) = v31;
          goto LABEL_567;
        case 0x51u:
          if (v7 != 141)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x20000u;
          v40 = *v6;
          v32 = (v6 + 4);
          *(a1 + 616) = v40;
          goto LABEL_544;
        case 0x52u:
          if (v7 != 144)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x40000u;
          v91 = (v6 + 1);
          LODWORD(v90) = *v6;
          if ((v90 & 0x80) == 0)
          {
            goto LABEL_167;
          }

          v92 = *v91;
          v90 = (v90 + (v92 << 7) - 128);
          if (v92 < 0)
          {
            v315 = google::protobuf::internal::VarintParseSlow64(v6, v90);
            v377 = v315;
            *(a1 + 620) = v316;
            if (!v315)
            {
              return 0;
            }
          }

          else
          {
            v91 = (v6 + 2);
LABEL_167:
            v377 = v91;
            *(a1 + 620) = v90;
          }

          goto LABEL_570;
        case 0x53u:
          if (v7 != 157)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x80000u;
          v187 = *v6;
          v32 = (v6 + 4);
          *(a1 + 624) = v187;
          goto LABEL_544;
        case 0x54u:
          if (v7 != 160)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x100000u;
          v53 = (v6 + 1);
          LODWORD(v52) = *v6;
          if ((v52 & 0x80) == 0)
          {
            goto LABEL_88;
          }

          v54 = *v53;
          v52 = (v52 + (v54 << 7) - 128);
          if (v54 < 0)
          {
            v305 = google::protobuf::internal::VarintParseSlow64(v6, v52);
            v377 = v305;
            *(a1 + 628) = v306;
            if (!v305)
            {
              return 0;
            }
          }

          else
          {
            v53 = (v6 + 2);
LABEL_88:
            v377 = v53;
            *(a1 + 628) = v52;
          }

          goto LABEL_570;
        case 0x55u:
          if (v7 != 170)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x200000u;
          v70 = *(a1 + 464);
          if (v70)
          {
            goto LABEL_496;
          }

          v78 = *(a1 + 8);
          if (v78)
          {
            v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
          }

          v79 = MEMORY[0x277C97A90](v78);
          LODWORD(v70) = v79;
          *(a1 + 464) = v79;
          goto LABEL_495;
        case 0x56u:
          if (v7 != 178)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x400000u;
          v27 = *(a1 + 472);
          if (v27)
          {
            goto LABEL_568;
          }

          v28 = *(a1 + 8);
          if (v28)
          {
            v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
          }

          v29 = MEMORY[0x277C97AA0](v28);
          LODWORD(v27) = v29;
          *(a1 + 472) = v29;
          goto LABEL_567;
        case 0x57u:
          if (v7 != 184)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x200000u;
          v260 = (v6 + 1);
          LODWORD(v259) = *v6;
          if ((v259 & 0x80) == 0)
          {
            goto LABEL_526;
          }

          v261 = *v260;
          v259 = (v259 + (v261 << 7) - 128);
          if (v261 < 0)
          {
            v365 = google::protobuf::internal::VarintParseSlow64(v6, v259);
            v377 = v365;
            *(a1 + 632) = v366;
            if (!v365)
            {
              return 0;
            }
          }

          else
          {
            v260 = (v6 + 2);
LABEL_526:
            v377 = v260;
            *(a1 + 632) = v259;
          }

          goto LABEL_570;
        case 0x58u:
          if (v7 != 192)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x400000u;
          v115 = (v6 + 1);
          LODWORD(v114) = *v6;
          if ((v114 & 0x80) == 0)
          {
            goto LABEL_214;
          }

          v116 = *v115;
          v114 = (v114 + (v116 << 7) - 128);
          if (v116 < 0)
          {
            v325 = google::protobuf::internal::VarintParseSlow64(v6, v114);
            v377 = v325;
            *(a1 + 636) = v326;
            if (!v325)
            {
              return 0;
            }
          }

          else
          {
            v115 = (v6 + 2);
LABEL_214:
            v377 = v115;
            *(a1 + 636) = v114;
          }

          goto LABEL_570;
        case 0x59u:
          if (v7 != 200)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x800000u;
          v60 = (v6 + 1);
          LODWORD(v59) = *v6;
          if ((v59 & 0x80) == 0)
          {
            goto LABEL_100;
          }

          v61 = *v60;
          v59 = (v59 + (v61 << 7) - 128);
          if (v61 < 0)
          {
            v309 = google::protobuf::internal::VarintParseSlow64(v6, v59);
            v377 = v309;
            *(a1 + 640) = v310;
            if (!v309)
            {
              return 0;
            }
          }

          else
          {
            v60 = (v6 + 2);
LABEL_100:
            v377 = v60;
            *(a1 + 640) = v59;
          }

          goto LABEL_570;
        case 0x5Au:
          if (v7 != 208)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x1000000u;
          v208 = (v6 + 1);
          LODWORD(v207) = *v6;
          if ((v207 & 0x80) == 0)
          {
            goto LABEL_420;
          }

          v209 = *v208;
          v207 = (v207 + (v209 << 7) - 128);
          if (v209 < 0)
          {
            v345 = google::protobuf::internal::VarintParseSlow64(v6, v207);
            v377 = v345;
            *(a1 + 644) = v346;
            if (!v345)
            {
              return 0;
            }
          }

          else
          {
            v208 = (v6 + 2);
LABEL_420:
            v377 = v208;
            *(a1 + 644) = v207;
          }

          goto LABEL_570;
        case 0x5Bu:
          if (v7 != 216)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x2000000u;
          v35 = (v6 + 1);
          LODWORD(v34) = *v6;
          if ((v34 & 0x80) == 0)
          {
            goto LABEL_56;
          }

          v36 = *v35;
          v34 = (v34 + (v36 << 7) - 128);
          if (v36 < 0)
          {
            v297 = google::protobuf::internal::VarintParseSlow64(v6, v34);
            v377 = v297;
            *(a1 + 648) = v298;
            if (!v297)
            {
              return 0;
            }
          }

          else
          {
            v35 = (v6 + 2);
LABEL_56:
            v377 = v35;
            *(a1 + 648) = v34;
          }

          goto LABEL_570;
        case 0x5Cu:
          if (v7 != 224)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x4000000u;
          v281 = (v6 + 1);
          LODWORD(v280) = *v6;
          if ((v280 & 0x80) == 0)
          {
            goto LABEL_576;
          }

          v282 = *v281;
          v280 = (v280 + (v282 << 7) - 128);
          if (v282 < 0)
          {
            v373 = google::protobuf::internal::VarintParseSlow64(v6, v280);
            v377 = v373;
            *(a1 + 652) = v374;
            if (!v373)
            {
              return 0;
            }
          }

          else
          {
            v281 = (v6 + 2);
LABEL_576:
            v377 = v281;
            *(a1 + 652) = v280;
          }

          goto LABEL_570;
        case 0x5Du:
          if (v7 != 232)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 8u;
          v25 = (v6 + 1);
          LODWORD(v24) = *v6;
          if ((v24 & 0x80) == 0)
          {
            goto LABEL_39;
          }

          v26 = *v25;
          v24 = (v24 + (v26 << 7) - 128);
          if (v26 < 0)
          {
            v295 = google::protobuf::internal::VarintParseSlow64(v6, v24);
            v377 = v295;
            *(a1 + 664) = v296;
            if (!v295)
            {
              return 0;
            }
          }

          else
          {
            v25 = (v6 + 2);
LABEL_39:
            v377 = v25;
            *(a1 + 664) = v24;
          }

          goto LABEL_570;
        case 0x5Eu:
          if (v7 != 240)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x10u;
          v42 = (v6 + 1);
          LODWORD(v41) = *v6;
          if ((v41 & 0x80) == 0)
          {
            goto LABEL_68;
          }

          v43 = *v42;
          v41 = (v41 + (v43 << 7) - 128);
          if (v43 < 0)
          {
            v299 = google::protobuf::internal::VarintParseSlow64(v6, v41);
            v377 = v299;
            *(a1 + 668) = v300;
            if (!v299)
            {
              return 0;
            }
          }

          else
          {
            v42 = (v6 + 2);
LABEL_68:
            v377 = v42;
            *(a1 + 668) = v41;
          }

          goto LABEL_570;
        case 0x5Fu:
          if (v7 != 248)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x20u;
          v68 = (v6 + 1);
          LODWORD(v67) = *v6;
          if ((v67 & 0x80) == 0)
          {
            goto LABEL_115;
          }

          v69 = *v68;
          v67 = (v67 + (v69 << 7) - 128);
          if (v69 < 0)
          {
            v313 = google::protobuf::internal::VarintParseSlow64(v6, v67);
            v377 = v313;
            *(a1 + 672) = v314;
            if (!v313)
            {
              return 0;
            }
          }

          else
          {
            v68 = (v6 + 2);
LABEL_115:
            v377 = v68;
            *(a1 + 672) = v67;
          }

          goto LABEL_570;
        case 0x60u:
          if (v7)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x400u;
          v22 = (v6 + 1);
          LODWORD(v21) = *v6;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_34;
          }

          v23 = *v22;
          v21 = (v21 + (v23 << 7) - 128);
          if (v23 < 0)
          {
            v293 = google::protobuf::internal::VarintParseSlow64(v6, v21);
            v377 = v293;
            *(a1 + 680) = v294;
            if (!v293)
            {
              return 0;
            }
          }

          else
          {
            v22 = (v6 + 2);
LABEL_34:
            v377 = v22;
            *(a1 + 680) = v21;
          }

          goto LABEL_570;
        case 0x61u:
          if (v7 != 8)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x800u;
          v274 = (v6 + 1);
          LODWORD(v273) = *v6;
          if ((v273 & 0x80) == 0)
          {
            goto LABEL_556;
          }

          v275 = *v274;
          v273 = (v273 + (v275 << 7) - 128);
          if (v275 < 0)
          {
            v371 = google::protobuf::internal::VarintParseSlow64(v6, v273);
            v377 = v371;
            *(a1 + 684) = v372;
            if (!v371)
            {
              return 0;
            }
          }

          else
          {
            v274 = (v6 + 2);
LABEL_556:
            v377 = v274;
            *(a1 + 684) = v273;
          }

          goto LABEL_570;
        case 0x62u:
          if (v7 != 16)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x1000u;
          v284 = (v6 + 1);
          LODWORD(v283) = *v6;
          if ((v283 & 0x80) == 0)
          {
            goto LABEL_581;
          }

          v285 = *v284;
          v283 = (v283 + (v285 << 7) - 128);
          if (v285 < 0)
          {
            v375 = google::protobuf::internal::VarintParseSlow64(v6, v283);
            v377 = v375;
            *(a1 + 688) = v376;
            if (!v375)
            {
              return 0;
            }
          }

          else
          {
            v284 = (v6 + 2);
LABEL_581:
            v377 = v284;
            *(a1 + 688) = v283;
          }

          goto LABEL_570;
        case 0x63u:
          if (v7 != 24)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x2000u;
          v254 = (v6 + 1);
          LODWORD(v253) = *v6;
          if ((v253 & 0x80) == 0)
          {
            goto LABEL_516;
          }

          v255 = *v254;
          v253 = (v253 + (v255 << 7) - 128);
          if (v255 < 0)
          {
            v361 = google::protobuf::internal::VarintParseSlow64(v6, v253);
            v377 = v361;
            *(a1 + 692) = v362;
            if (!v361)
            {
              return 0;
            }
          }

          else
          {
            v254 = (v6 + 2);
LABEL_516:
            v377 = v254;
            *(a1 + 692) = v253;
          }

          goto LABEL_570;
        case 0x64u:
          if (v7 != 32)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x4000u;
          v16 = (v6 + 1);
          LODWORD(v15) = *v6;
          if ((v15 & 0x80) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v16;
          v15 = (v15 + (v17 << 7) - 128);
          if (v17 < 0)
          {
            v289 = google::protobuf::internal::VarintParseSlow64(v6, v15);
            v377 = v289;
            *(a1 + 696) = v290;
            if (!v289)
            {
              return 0;
            }
          }

          else
          {
            v16 = (v6 + 2);
LABEL_24:
            v377 = v16;
            *(a1 + 696) = v15;
          }

          goto LABEL_570;
        case 0x80u:
          if (v7 != 2)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x800000u;
          v27 = *(a1 + 480);
          if (v27)
          {
            goto LABEL_568;
          }

          v278 = *(a1 + 8);
          if (v278)
          {
            v278 = *(v278 & 0xFFFFFFFFFFFFFFFELL);
          }

          v279 = MEMORY[0x277C97AA0](v278);
          LODWORD(v27) = v279;
          *(a1 + 480) = v279;
          goto LABEL_567;
        case 0x81u:
          if (v7 != 10)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x1000000u;
          v8 = *(a1 + 488);
          if (v8)
          {
            goto LABEL_551;
          }

          v121 = *(a1 + 8);
          if (v121)
          {
            v121 = *(v121 & 0xFFFFFFFFFFFFFFFELL);
          }

          v122 = MEMORY[0x277C97AB0](v121);
          LODWORD(v8) = v122;
          *(a1 + 488) = v122;
          goto LABEL_550;
        case 0x82u:
          if (v7 != 18)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x2000000u;
          v8 = *(a1 + 496);
          if (v8)
          {
            goto LABEL_551;
          }

          v271 = *(a1 + 8);
          if (v271)
          {
            v271 = *(v271 & 0xFFFFFFFFFFFFFFFELL);
          }

          v272 = MEMORY[0x277C97AB0](v271);
          LODWORD(v8) = v272;
          *(a1 + 496) = v272;
LABEL_550:
          v6 = v377;
LABEL_551:
          v235 = sub_2764ACA10(a3, v8, v6);
          goto LABEL_569;
        case 0x98u:
          if (v7 != 192)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x8000u;
          v63 = (v6 + 1);
          LODWORD(v62) = *v6;
          if ((v62 & 0x80) == 0)
          {
            goto LABEL_105;
          }

          v64 = *v63;
          v62 = (v62 + (v64 << 7) - 128);
          if (v64 < 0)
          {
            v311 = google::protobuf::internal::VarintParseSlow64(v6, v62);
            v377 = v311;
            *(a1 + 700) = v312;
            if (!v311)
            {
              return 0;
            }
          }

          else
          {
            v63 = (v6 + 2);
LABEL_105:
            v377 = v63;
            *(a1 + 700) = v62;
          }

          goto LABEL_570;
        case 0x99u:
          if (v7 != 200)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x10000u;
          v268 = (v6 + 1);
          LODWORD(v267) = *v6;
          if ((v267 & 0x80) == 0)
          {
            goto LABEL_541;
          }

          v269 = *v268;
          v267 = (v267 + (v269 << 7) - 128);
          if (v269 < 0)
          {
            v369 = google::protobuf::internal::VarintParseSlow64(v6, v267);
            v377 = v369;
            *(a1 + 704) = v370;
            if (!v369)
            {
              return 0;
            }
          }

          else
          {
            v268 = (v6 + 2);
LABEL_541:
            v377 = v268;
            *(a1 + 704) = v267;
          }

          goto LABEL_570;
        case 0xA5u:
          if (v7 != 42)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x4000000u;
          v37 = *(a1 + 504);
          if (v37)
          {
            goto LABEL_474;
          }

          v38 = *(a1 + 8);
          if (v38)
          {
            v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
          }

          v39 = MEMORY[0x277C97A80](v38);
          LODWORD(v37) = v39;
          *(a1 + 504) = v39;
          goto LABEL_473;
        case 0xA7u:
          if (v7 != 56)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x20000u;
          v211 = (v6 + 1);
          LODWORD(v210) = *v6;
          if ((v210 & 0x80) == 0)
          {
            goto LABEL_425;
          }

          v212 = *v211;
          v210 = (v210 + (v212 << 7) - 128);
          if (v212 < 0)
          {
            v347 = google::protobuf::internal::VarintParseSlow64(v6, v210);
            v377 = v347;
            *(a1 + 708) = v348;
            if (!v347)
            {
              return 0;
            }
          }

          else
          {
            v211 = (v6 + 2);
LABEL_425:
            v377 = v211;
            *(a1 + 708) = v210;
          }

          goto LABEL_570;
        case 0xA8u:
          if (v7 != 64)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x40000u;
          v152 = (v6 + 1);
          LODWORD(v151) = *v6;
          if ((v151 & 0x80) == 0)
          {
            goto LABEL_293;
          }

          v153 = *v152;
          v151 = (v151 + (v153 << 7) - 128);
          if (v153 < 0)
          {
            v335 = google::protobuf::internal::VarintParseSlow64(v6, v151);
            v377 = v335;
            *(a1 + 712) = v336;
            if (!v335)
            {
              return 0;
            }
          }

          else
          {
            v152 = (v6 + 2);
LABEL_293:
            v377 = v152;
            *(a1 + 712) = v151;
          }

          goto LABEL_570;
        case 0xA9u:
          if (v7 != 74)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x8000000u;
          v70 = *(a1 + 512);
          if (v70)
          {
            goto LABEL_496;
          }

          v71 = *(a1 + 8);
          if (v71)
          {
            v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
          }

          v72 = MEMORY[0x277C97A90](v71);
          LODWORD(v70) = v72;
          *(a1 + 512) = v72;
LABEL_495:
          v6 = v377;
LABEL_496:
          v235 = sub_2764AC76C(a3, v70, v6);
          goto LABEL_569;
        case 0xACu:
          if (v7 != 98)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x10000000u;
          v27 = *(a1 + 520);
          if (v27)
          {
            goto LABEL_568;
          }

          v241 = *(a1 + 8);
          if (v241)
          {
            v241 = *(v241 & 0xFFFFFFFFFFFFFFFELL);
          }

          v242 = MEMORY[0x277C97AA0](v241);
          LODWORD(v27) = v242;
          *(a1 + 520) = v242;
          goto LABEL_567;
        case 0xAFu:
          if (v7 != 122)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x20000000u;
          v37 = *(a1 + 528);
          if (v37)
          {
            goto LABEL_474;
          }

          v168 = *(a1 + 8);
          if (v168)
          {
            v168 = *(v168 & 0xFFFFFFFFFFFFFFFELL);
          }

          v169 = MEMORY[0x277C97A80](v168);
          LODWORD(v37) = v169;
          *(a1 + 528) = v169;
LABEL_473:
          v6 = v377;
LABEL_474:
          v235 = sub_2764AC00C(a3, v37, v6);
          goto LABEL_569;
        case 0xB1u:
          if (v7 != 136)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x10000000u;
          v13 = (v6 + 1);
          v12 = *v6;
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if (v14 < 0)
          {
            v287 = google::protobuf::internal::VarintParseSlow64(v6, v12);
            v377 = v287;
            *(a1 + 657) = v288 != 0;
            if (!v287)
            {
              return 0;
            }
          }

          else
          {
            v13 = (v6 + 2);
LABEL_19:
            v377 = v13;
            *(a1 + 657) = v12 != 0;
          }

          goto LABEL_570;
        case 0xB3u:
          if (v7 != 152)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x200u;
          v57 = (v6 + 1);
          v56 = *v6;
          if ((v56 & 0x8000000000000000) == 0)
          {
            goto LABEL_95;
          }

          v58 = *v57;
          v56 = (v58 << 7) + v56 - 128;
          if (v58 < 0)
          {
            v307 = google::protobuf::internal::VarintParseSlow64(v6, v56);
            v377 = v307;
            *(a1 + 679) = v308 != 0;
            if (!v307)
            {
              return 0;
            }
          }

          else
          {
            v57 = (v6 + 2);
LABEL_95:
            v377 = v57;
            *(a1 + 679) = v56 != 0;
          }

          goto LABEL_570;
        case 0xB5u:
          if (v7 != 173)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x80000u;
          v33 = *v6;
          v32 = (v6 + 4);
          *(a1 + 716) = v33;
          goto LABEL_544;
        case 0xB7u:
          if (v7 != 186)
          {
            goto LABEL_582;
          }

          *(a1 + 20) |= 0x40000000u;
          v27 = *(a1 + 536);
          if (v27)
          {
            goto LABEL_568;
          }

          v143 = *(a1 + 8);
          if (v143)
          {
            v143 = *(v143 & 0xFFFFFFFFFFFFFFFELL);
          }

          v144 = MEMORY[0x277C97AA0](v143);
          LODWORD(v27) = v144;
          *(a1 + 536) = v144;
LABEL_567:
          v6 = v377;
LABEL_568:
          v235 = sub_2764AC69C(a3, v27, v6);
          goto LABEL_569;
        case 0xB9u:
          if (v7 != 200)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x100000u;
          v164 = (v6 + 1);
          LODWORD(v163) = *v6;
          if ((v163 & 0x80) == 0)
          {
            goto LABEL_318;
          }

          v165 = *v164;
          v163 = (v163 + (v165 << 7) - 128);
          if (v165 < 0)
          {
            v339 = google::protobuf::internal::VarintParseSlow64(v6, v163);
            v377 = v339;
            *(a1 + 720) = v340;
            if (!v339)
            {
              return 0;
            }
          }

          else
          {
            v164 = (v6 + 2);
LABEL_318:
            v377 = v164;
            *(a1 + 720) = v163;
          }

          goto LABEL_570;
        case 0xBCu:
          if (v7 != 224)
          {
            goto LABEL_582;
          }

          *(a1 + 24) |= 0x80000000;
          v19 = (v6 + 1);
          v18 = *v6;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v291 = google::protobuf::internal::VarintParseSlow64(v6, v18);
            v377 = v291;
            *(a1 + 660) = v292 != 0;
            if (!v291)
            {
              return 0;
            }
          }

          else
          {
            v19 = (v6 + 2);
LABEL_29:
            v377 = v19;
            *(a1 + 660) = v18 != 0;
          }

          goto LABEL_570;
        case 0xBDu:
          if (v7 != 237)
          {
            goto LABEL_582;
          }

          *(a1 + 28) |= 0x200000u;
          v77 = *v6;
          v32 = (v6 + 4);
          *(a1 + 724) = v77;
LABEL_544:
          v377 = v32;
          goto LABEL_570;
        default:
LABEL_582:
          if (v7)
          {
            v286 = (v7 & 7) == 4;
          }

          else
          {
            v286 = 1;
          }

          if (v286)
          {
            *(a3 + 80) = v7 - 1;
            return v377;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v235 = google::protobuf::internal::UnknownFieldParse();
LABEL_569:
          v377 = v235;
          if (!v235)
          {
            return 0;
          }

LABEL_570:
          if (sub_2763D4D98(a3, &v377))
          {
            return v377;
          }

          break;
      }
    }
  }

  return v377;
}

unsigned __int8 *sub_2764178F8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 40);
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

    a2 = TSD::LineEndArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
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

  v12 = *(a1 + 48);
  *a2 = 18;
  v13 = *(v12 + 5);
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

  a2 = TSD::LineEndArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_39:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 56);
  *a2 = 26;
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

  a2 = TSD::ShadowArchive::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_59;
  }

LABEL_49:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(a1 + 64);
  *a2 = 34;
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

  a2 = TSD::StrokeArchive::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_69;
  }

LABEL_59:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(a1 + 72);
  *a2 = 42;
  v31 = *(v30 + 5);
  if (v31 > 0x7F)
  {
    a2[1] = v31 | 0x80;
    v33 = v31 >> 7;
    if (v31 >> 14)
    {
      v32 = a2 + 3;
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
      a2[2] = v33;
      v32 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v31;
    v32 = a2 + 2;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v30, v32, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_79;
  }

LABEL_69:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v36 = *(a1 + 80);
  *a2 = 50;
  v37 = *(v36 + 11);
  if (v37 > 0x7F)
  {
    a2[1] = v37 | 0x80;
    v39 = v37 >> 7;
    if (v37 >> 14)
    {
      v38 = a2 + 3;
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
      a2[2] = v39;
      v38 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v37;
    v38 = a2 + 2;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v36, v38, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_89;
  }

LABEL_79:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v42 = *(a1 + 88);
  *a2 = 58;
  v43 = *(v42 + 11);
  if (v43 > 0x7F)
  {
    a2[1] = v43 | 0x80;
    v45 = v43 >> 7;
    if (v43 >> 14)
    {
      v44 = a2 + 3;
      do
      {
        *(v44 - 1) = v45 | 0x80;
        v46 = v45 >> 7;
        ++v44;
        v47 = v45 >> 14;
        v45 >>= 7;
      }

      while (v47);
      *(v44 - 1) = v46;
    }

    else
    {
      a2[2] = v45;
      v44 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v43;
    v44 = a2 + 2;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v42, v44, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_99;
  }

LABEL_89:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v48 = *(a1 + 96);
  *a2 = 66;
  v49 = *(v48 + 11);
  if (v49 > 0x7F)
  {
    a2[1] = v49 | 0x80;
    v51 = v49 >> 7;
    if (v49 >> 14)
    {
      v50 = a2 + 3;
      do
      {
        *(v50 - 1) = v51 | 0x80;
        v52 = v51 >> 7;
        ++v50;
        v53 = v51 >> 14;
        v51 >>= 7;
      }

      while (v53);
      *(v50 - 1) = v52;
    }

    else
    {
      a2[2] = v51;
      v50 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v49;
    v50 = a2 + 2;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v48, v50, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_109;
  }

LABEL_99:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v54 = *(a1 + 104);
  *a2 = 74;
  v55 = *(v54 + 11);
  if (v55 > 0x7F)
  {
    a2[1] = v55 | 0x80;
    v57 = v55 >> 7;
    if (v55 >> 14)
    {
      v56 = a2 + 3;
      do
      {
        *(v56 - 1) = v57 | 0x80;
        v58 = v57 >> 7;
        ++v56;
        v59 = v57 >> 14;
        v57 >>= 7;
      }

      while (v59);
      *(v56 - 1) = v58;
    }

    else
    {
      a2[2] = v57;
      v56 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v55;
    v56 = a2 + 2;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v54, v56, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_119;
  }

LABEL_109:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v60 = *(a1 + 112);
  *a2 = 82;
  v61 = *(v60 + 11);
  if (v61 > 0x7F)
  {
    a2[1] = v61 | 0x80;
    v63 = v61 >> 7;
    if (v61 >> 14)
    {
      v62 = a2 + 3;
      do
      {
        *(v62 - 1) = v63 | 0x80;
        v64 = v63 >> 7;
        ++v62;
        v65 = v63 >> 14;
        v63 >>= 7;
      }

      while (v65);
      *(v62 - 1) = v64;
    }

    else
    {
      a2[2] = v63;
      v62 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v61;
    v62 = a2 + 2;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v60, v62, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_129;
  }

LABEL_119:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v66 = *(a1 + 120);
  *a2 = 90;
  v67 = *(v66 + 11);
  if (v67 > 0x7F)
  {
    a2[1] = v67 | 0x80;
    v69 = v67 >> 7;
    if (v67 >> 14)
    {
      v68 = a2 + 3;
      do
      {
        *(v68 - 1) = v69 | 0x80;
        v70 = v69 >> 7;
        ++v68;
        v71 = v69 >> 14;
        v69 >>= 7;
      }

      while (v71);
      *(v68 - 1) = v70;
    }

    else
    {
      a2[2] = v69;
      v68 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v67;
    v68 = a2 + 2;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v66, v68, a3);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_139;
  }

LABEL_129:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v72 = *(a1 + 128);
  *a2 = 98;
  v73 = *(v72 + 11);
  if (v73 > 0x7F)
  {
    a2[1] = v73 | 0x80;
    v75 = v73 >> 7;
    if (v73 >> 14)
    {
      v74 = a2 + 3;
      do
      {
        *(v74 - 1) = v75 | 0x80;
        v76 = v75 >> 7;
        ++v74;
        v77 = v75 >> 14;
        v75 >>= 7;
      }

      while (v77);
      *(v74 - 1) = v76;
    }

    else
    {
      a2[2] = v75;
      v74 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v73;
    v74 = a2 + 2;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v72, v74, a3);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_149;
  }

LABEL_139:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v78 = *(a1 + 136);
  *a2 = 106;
  v79 = *(v78 + 11);
  if (v79 > 0x7F)
  {
    a2[1] = v79 | 0x80;
    v81 = v79 >> 7;
    if (v79 >> 14)
    {
      v80 = a2 + 3;
      do
      {
        *(v80 - 1) = v81 | 0x80;
        v82 = v81 >> 7;
        ++v80;
        v83 = v81 >> 14;
        v81 >>= 7;
      }

      while (v83);
      *(v80 - 1) = v82;
    }

    else
    {
      a2[2] = v81;
      v80 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v79;
    v80 = a2 + 2;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v78, v80, a3);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_159;
  }

LABEL_149:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v84 = *(a1 + 144);
  *a2 = 114;
  v85 = *(v84 + 11);
  if (v85 > 0x7F)
  {
    a2[1] = v85 | 0x80;
    v87 = v85 >> 7;
    if (v85 >> 14)
    {
      v86 = a2 + 3;
      do
      {
        *(v86 - 1) = v87 | 0x80;
        v88 = v87 >> 7;
        ++v86;
        v89 = v87 >> 14;
        v87 >>= 7;
      }

      while (v89);
      *(v86 - 1) = v88;
    }

    else
    {
      a2[2] = v87;
      v86 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v85;
    v86 = a2 + 2;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v84, v86, a3);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_169;
  }

LABEL_159:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v90 = *(a1 + 152);
  *a2 = 122;
  v91 = *(v90 + 11);
  if (v91 > 0x7F)
  {
    a2[1] = v91 | 0x80;
    v93 = v91 >> 7;
    if (v91 >> 14)
    {
      v92 = a2 + 3;
      do
      {
        *(v92 - 1) = v93 | 0x80;
        v94 = v93 >> 7;
        ++v92;
        v95 = v93 >> 14;
        v93 >>= 7;
      }

      while (v95);
      *(v92 - 1) = v94;
    }

    else
    {
      a2[2] = v93;
      v92 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v91;
    v92 = a2 + 2;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v90, v92, a3);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_179;
  }

LABEL_169:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v96 = *(a1 + 160);
  *a2 = 386;
  v97 = *(v96 + 11);
  if (v97 > 0x7F)
  {
    a2[2] = v97 | 0x80;
    v99 = v97 >> 7;
    if (v97 >> 14)
    {
      v98 = a2 + 4;
      do
      {
        *(v98 - 1) = v99 | 0x80;
        v100 = v99 >> 7;
        ++v98;
        v101 = v99 >> 14;
        v99 >>= 7;
      }

      while (v101);
      *(v98 - 1) = v100;
    }

    else
    {
      a2[3] = v99;
      v98 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v97;
    v98 = a2 + 3;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v96, v98, a3);
  if ((v5 & 0x10000) != 0)
  {
LABEL_179:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v102 = *(a1 + 168);
    *a2 = 394;
    v103 = *(v102 + 11);
    if (v103 > 0x7F)
    {
      a2[2] = v103 | 0x80;
      v105 = v103 >> 7;
      if (v103 >> 14)
      {
        v104 = a2 + 4;
        do
        {
          *(v104 - 1) = v105 | 0x80;
          v106 = v105 >> 7;
          ++v104;
          v107 = v105 >> 14;
          v105 >>= 7;
        }

        while (v107);
        *(v104 - 1) = v106;
      }

      else
      {
        a2[3] = v105;
        v104 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v103;
      v104 = a2 + 3;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v102, v104, a3);
  }

LABEL_189:
  if ((*(a1 + 20) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v108 = *(a1 + 544);
    *a2 = 400;
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
      }

      else
      {
        a2[3] = v109;
        a2 += 4;
      }
    }

    else
    {
      a2[2] = v108;
      a2 += 3;
    }
  }

  v112 = *(a1 + 24);
  if (v112)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v114 = *(a1 + 548);
    *a2 = 408;
    if (v114 > 0x7F)
    {
      a2[2] = v114 | 0x80;
      v116 = v114 >> 7;
      if (v114 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v116 | 0x80;
          v119 = v116 >> 7;
          ++a2;
          v120 = v116 >> 14;
          v116 >>= 7;
        }

        while (v120);
        *(a2 - 1) = v119;
        if ((v112 & 2) != 0)
        {
          goto LABEL_230;
        }
      }

      else
      {
        a2[3] = v116;
        a2 += 4;
        if ((v112 & 2) != 0)
        {
          goto LABEL_230;
        }
      }
    }

    else
    {
      a2[2] = v114;
      a2 += 3;
      if ((v112 & 2) != 0)
      {
        goto LABEL_230;
      }
    }

LABEL_201:
    if ((v112 & 4) == 0)
    {
      goto LABEL_202;
    }

LABEL_241:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v125 = *(a1 + 556);
    *a2 = 424;
    if (v125 > 0x7F)
    {
      a2[2] = v125 | 0x80;
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
        if ((v112 & 8) != 0)
        {
          goto LABEL_252;
        }
      }

      else
      {
        a2[3] = v126;
        a2 += 4;
        if ((v112 & 8) != 0)
        {
          goto LABEL_252;
        }
      }
    }

    else
    {
      a2[2] = v125;
      a2 += 3;
      if ((v112 & 8) != 0)
      {
        goto LABEL_252;
      }
    }

LABEL_203:
    if ((v112 & 0x10) == 0)
    {
      goto LABEL_204;
    }

LABEL_263:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v133 = *(a1 + 564);
    *a2 = 440;
    if (v133 > 0x7F)
    {
      a2[2] = v133 | 0x80;
      v134 = v133 >> 7;
      if (v133 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v134 | 0x80;
          v135 = v134 >> 7;
          ++a2;
          v136 = v134 >> 14;
          v134 >>= 7;
        }

        while (v136);
        *(a2 - 1) = v135;
        if ((v112 & 0x20) != 0)
        {
          goto LABEL_274;
        }
      }

      else
      {
        a2[3] = v134;
        a2 += 4;
        if ((v112 & 0x20) != 0)
        {
          goto LABEL_274;
        }
      }
    }

    else
    {
      a2[2] = v133;
      a2 += 3;
      if ((v112 & 0x20) != 0)
      {
        goto LABEL_274;
      }
    }

LABEL_205:
    if ((v112 & 0x40) == 0)
    {
      goto LABEL_206;
    }

LABEL_277:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v138 = *(a1 + 572);
    *a2 = 456;
    if (v138 > 0x7F)
    {
      a2[2] = v138 | 0x80;
      v139 = v138 >> 7;
      if (v138 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v139 | 0x80;
          v140 = v139 >> 7;
          ++a2;
          v141 = v139 >> 14;
          v139 >>= 7;
        }

        while (v141);
        *(a2 - 1) = v140;
        if ((v112 & 0x80) != 0)
        {
          goto LABEL_288;
        }
      }

      else
      {
        a2[3] = v139;
        a2 += 4;
        if ((v112 & 0x80) != 0)
        {
          goto LABEL_288;
        }
      }
    }

    else
    {
      a2[2] = v138;
      a2 += 3;
      if ((v112 & 0x80) != 0)
      {
        goto LABEL_288;
      }
    }

LABEL_207:
    if ((v112 & 0x100) == 0)
    {
      goto LABEL_208;
    }

LABEL_299:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v146 = *(a1 + 580);
    *a2 = 472;
    if (v146 > 0x7F)
    {
      a2[2] = v146 | 0x80;
      v147 = v146 >> 7;
      if (v146 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v147 | 0x80;
          v148 = v147 >> 7;
          ++a2;
          v149 = v147 >> 14;
          v147 >>= 7;
        }

        while (v149);
        *(a2 - 1) = v148;
        if ((v112 & 0x200) != 0)
        {
          goto LABEL_310;
        }
      }

      else
      {
        a2[3] = v147;
        a2 += 4;
        if ((v112 & 0x200) != 0)
        {
          goto LABEL_310;
        }
      }
    }

    else
    {
      a2[2] = v146;
      a2 += 3;
      if ((v112 & 0x200) != 0)
      {
        goto LABEL_310;
      }
    }

LABEL_209:
    if ((v112 & 0x400) == 0)
    {
      goto LABEL_321;
    }

    goto LABEL_210;
  }

  if ((v112 & 2) == 0)
  {
    goto LABEL_201;
  }

LABEL_230:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v121 = *(a1 + 552);
  *a2 = 416;
  if (v121 > 0x7F)
  {
    a2[2] = v121 | 0x80;
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
      if ((v112 & 4) != 0)
      {
        goto LABEL_241;
      }
    }

    else
    {
      a2[3] = v122;
      a2 += 4;
      if ((v112 & 4) != 0)
      {
        goto LABEL_241;
      }
    }
  }

  else
  {
    a2[2] = v121;
    a2 += 3;
    if ((v112 & 4) != 0)
    {
      goto LABEL_241;
    }
  }

LABEL_202:
  if ((v112 & 8) == 0)
  {
    goto LABEL_203;
  }

LABEL_252:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v129 = *(a1 + 560);
  *a2 = 432;
  if (v129 > 0x7F)
  {
    a2[2] = v129 | 0x80;
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
      if ((v112 & 0x10) != 0)
      {
        goto LABEL_263;
      }
    }

    else
    {
      a2[3] = v130;
      a2 += 4;
      if ((v112 & 0x10) != 0)
      {
        goto LABEL_263;
      }
    }
  }

  else
  {
    a2[2] = v129;
    a2 += 3;
    if ((v112 & 0x10) != 0)
    {
      goto LABEL_263;
    }
  }

LABEL_204:
  if ((v112 & 0x20) == 0)
  {
    goto LABEL_205;
  }

LABEL_274:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v137 = *(a1 + 568);
  *a2 = 453;
  *(a2 + 2) = v137;
  a2 += 6;
  if ((v112 & 0x40) != 0)
  {
    goto LABEL_277;
  }

LABEL_206:
  if ((v112 & 0x80) == 0)
  {
    goto LABEL_207;
  }

LABEL_288:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v142 = *(a1 + 576);
  *a2 = 464;
  if (v142 > 0x7F)
  {
    a2[2] = v142 | 0x80;
    v143 = v142 >> 7;
    if (v142 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v143 | 0x80;
        v144 = v143 >> 7;
        ++a2;
        v145 = v143 >> 14;
        v143 >>= 7;
      }

      while (v145);
      *(a2 - 1) = v144;
      if ((v112 & 0x100) != 0)
      {
        goto LABEL_299;
      }
    }

    else
    {
      a2[3] = v143;
      a2 += 4;
      if ((v112 & 0x100) != 0)
      {
        goto LABEL_299;
      }
    }
  }

  else
  {
    a2[2] = v142;
    a2 += 3;
    if ((v112 & 0x100) != 0)
    {
      goto LABEL_299;
    }
  }

LABEL_208:
  if ((v112 & 0x200) == 0)
  {
    goto LABEL_209;
  }

LABEL_310:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v150 = *(a1 + 584);
  *a2 = 480;
  if (v150 > 0x7F)
  {
    a2[2] = v150 | 0x80;
    v151 = v150 >> 7;
    if (v150 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v151 | 0x80;
        v152 = v151 >> 7;
        ++a2;
        v153 = v151 >> 14;
        v151 >>= 7;
      }

      while (v153);
      *(a2 - 1) = v152;
      if ((v112 & 0x400) == 0)
      {
        goto LABEL_321;
      }
    }

    else
    {
      a2[3] = v151;
      a2 += 4;
      if ((v112 & 0x400) == 0)
      {
        goto LABEL_321;
      }
    }
  }

  else
  {
    a2[2] = v150;
    a2 += 3;
    if ((v112 & 0x400) == 0)
    {
      goto LABEL_321;
    }
  }

LABEL_210:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v113 = *(a1 + 588);
  *a2 = 488;
  if (v113 > 0x7F)
  {
    a2[2] = v113 | 0x80;
    v115 = v113 >> 7;
    if (v113 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v115 | 0x80;
        v117 = v115 >> 7;
        ++a2;
        v118 = v115 >> 14;
        v115 >>= 7;
      }

      while (v118);
      *(a2 - 1) = v117;
    }

    else
    {
      a2[3] = v115;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v113;
    a2 += 3;
  }

LABEL_321:
  v154 = *(a1 + 16);
  if ((v154 & 0x20000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v155 = *(a1 + 176);
    *a2 = 498;
    v156 = *(v155 + 5);
    if (v156 > 0x7F)
    {
      a2[2] = v156 | 0x80;
      v158 = v156 >> 7;
      if (v156 >> 14)
      {
        v157 = a2 + 4;
        do
        {
          *(v157 - 1) = v158 | 0x80;
          v159 = v158 >> 7;
          ++v157;
          v160 = v158 >> 14;
          v158 >>= 7;
        }

        while (v160);
        *(v157 - 1) = v159;
      }

      else
      {
        a2[3] = v158;
        v157 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v156;
      v157 = a2 + 3;
    }

    a2 = TSD::ShadowArchive::_InternalSerialize(v155, v157, a3);
    if ((v154 & 0x40000) == 0)
    {
LABEL_323:
      if ((v154 & 0x80000) == 0)
      {
        goto LABEL_324;
      }

      goto LABEL_357;
    }
  }

  else if ((v154 & 0x40000) == 0)
  {
    goto LABEL_323;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v161 = *(a1 + 184);
  *a2 = 506;
  v162 = *(v161 + 5);
  if (v162 > 0x7F)
  {
    a2[2] = v162 | 0x80;
    v164 = v162 >> 7;
    if (v162 >> 14)
    {
      v163 = a2 + 4;
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
      a2[3] = v164;
      v163 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v162;
    v163 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v161, v163, a3);
  if ((v154 & 0x80000) == 0)
  {
LABEL_324:
    if ((v154 & 0x100000) == 0)
    {
      goto LABEL_325;
    }

    goto LABEL_367;
  }

LABEL_357:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v167 = *(a1 + 192);
  *a2 = 642;
  v168 = *(v167 + 5);
  if (v168 > 0x7F)
  {
    a2[2] = v168 | 0x80;
    v170 = v168 >> 7;
    if (v168 >> 14)
    {
      v169 = a2 + 4;
      do
      {
        *(v169 - 1) = v170 | 0x80;
        v171 = v170 >> 7;
        ++v169;
        v172 = v170 >> 14;
        v170 >>= 7;
      }

      while (v172);
      *(v169 - 1) = v171;
    }

    else
    {
      a2[3] = v170;
      v169 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v168;
    v169 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v167, v169, a3);
  if ((v154 & 0x100000) == 0)
  {
LABEL_325:
    if ((v154 & 0x200000) == 0)
    {
      goto LABEL_326;
    }

    goto LABEL_377;
  }

LABEL_367:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v173 = *(a1 + 200);
  *a2 = 650;
  v174 = *(v173 + 5);
  if (v174 > 0x7F)
  {
    a2[2] = v174 | 0x80;
    v176 = v174 >> 7;
    if (v174 >> 14)
    {
      v175 = a2 + 4;
      do
      {
        *(v175 - 1) = v176 | 0x80;
        v177 = v176 >> 7;
        ++v175;
        v178 = v176 >> 14;
        v176 >>= 7;
      }

      while (v178);
      *(v175 - 1) = v177;
    }

    else
    {
      a2[3] = v176;
      v175 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v174;
    v175 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v173, v175, a3);
  if ((v154 & 0x200000) == 0)
  {
LABEL_326:
    if ((v154 & 0x400000) == 0)
    {
      goto LABEL_327;
    }

    goto LABEL_387;
  }

LABEL_377:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v179 = *(a1 + 208);
  *a2 = 658;
  v180 = *(v179 + 5);
  if (v180 > 0x7F)
  {
    a2[2] = v180 | 0x80;
    v182 = v180 >> 7;
    if (v180 >> 14)
    {
      v181 = a2 + 4;
      do
      {
        *(v181 - 1) = v182 | 0x80;
        v183 = v182 >> 7;
        ++v181;
        v184 = v182 >> 14;
        v182 >>= 7;
      }

      while (v184);
      *(v181 - 1) = v183;
    }

    else
    {
      a2[3] = v182;
      v181 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v180;
    v181 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v179, v181, a3);
  if ((v154 & 0x400000) == 0)
  {
LABEL_327:
    if ((v154 & 0x800000) == 0)
    {
      goto LABEL_328;
    }

    goto LABEL_397;
  }

LABEL_387:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v185 = *(a1 + 216);
  *a2 = 666;
  v186 = *(v185 + 5);
  if (v186 > 0x7F)
  {
    a2[2] = v186 | 0x80;
    v188 = v186 >> 7;
    if (v186 >> 14)
    {
      v187 = a2 + 4;
      do
      {
        *(v187 - 1) = v188 | 0x80;
        v189 = v188 >> 7;
        ++v187;
        v190 = v188 >> 14;
        v188 >>= 7;
      }

      while (v190);
      *(v187 - 1) = v189;
    }

    else
    {
      a2[3] = v188;
      v187 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v186;
    v187 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v185, v187, a3);
  if ((v154 & 0x800000) == 0)
  {
LABEL_328:
    if ((v154 & 0x1000000) == 0)
    {
      goto LABEL_329;
    }

    goto LABEL_407;
  }

LABEL_397:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v191 = *(a1 + 224);
  *a2 = 674;
  v192 = *(v191 + 5);
  if (v192 > 0x7F)
  {
    a2[2] = v192 | 0x80;
    v194 = v192 >> 7;
    if (v192 >> 14)
    {
      v193 = a2 + 4;
      do
      {
        *(v193 - 1) = v194 | 0x80;
        v195 = v194 >> 7;
        ++v193;
        v196 = v194 >> 14;
        v194 >>= 7;
      }

      while (v196);
      *(v193 - 1) = v195;
    }

    else
    {
      a2[3] = v194;
      v193 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v192;
    v193 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v191, v193, a3);
  if ((v154 & 0x1000000) == 0)
  {
LABEL_329:
    if ((v154 & 0x2000000) == 0)
    {
      goto LABEL_330;
    }

    goto LABEL_417;
  }

LABEL_407:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v197 = *(a1 + 232);
  *a2 = 682;
  v198 = *(v197 + 5);
  if (v198 > 0x7F)
  {
    a2[2] = v198 | 0x80;
    v200 = v198 >> 7;
    if (v198 >> 14)
    {
      v199 = a2 + 4;
      do
      {
        *(v199 - 1) = v200 | 0x80;
        v201 = v200 >> 7;
        ++v199;
        v202 = v200 >> 14;
        v200 >>= 7;
      }

      while (v202);
      *(v199 - 1) = v201;
    }

    else
    {
      a2[3] = v200;
      v199 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v198;
    v199 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v197, v199, a3);
  if ((v154 & 0x2000000) == 0)
  {
LABEL_330:
    if ((v154 & 0x4000000) == 0)
    {
      goto LABEL_331;
    }

    goto LABEL_427;
  }

LABEL_417:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v203 = *(a1 + 240);
  *a2 = 690;
  v204 = *(v203 + 5);
  if (v204 > 0x7F)
  {
    a2[2] = v204 | 0x80;
    v206 = v204 >> 7;
    if (v204 >> 14)
    {
      v205 = a2 + 4;
      do
      {
        *(v205 - 1) = v206 | 0x80;
        v207 = v206 >> 7;
        ++v205;
        v208 = v206 >> 14;
        v206 >>= 7;
      }

      while (v208);
      *(v205 - 1) = v207;
    }

    else
    {
      a2[3] = v206;
      v205 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v204;
    v205 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v203, v205, a3);
  if ((v154 & 0x4000000) == 0)
  {
LABEL_331:
    if ((v154 & 0x8000000) == 0)
    {
      goto LABEL_332;
    }

    goto LABEL_437;
  }

LABEL_427:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v209 = *(a1 + 248);
  *a2 = 698;
  v210 = *(v209 + 5);
  if (v210 > 0x7F)
  {
    a2[2] = v210 | 0x80;
    v212 = v210 >> 7;
    if (v210 >> 14)
    {
      v211 = a2 + 4;
      do
      {
        *(v211 - 1) = v212 | 0x80;
        v213 = v212 >> 7;
        ++v211;
        v214 = v212 >> 14;
        v212 >>= 7;
      }

      while (v214);
      *(v211 - 1) = v213;
    }

    else
    {
      a2[3] = v212;
      v211 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v210;
    v211 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v209, v211, a3);
  if ((v154 & 0x8000000) == 0)
  {
LABEL_332:
    if ((v154 & 0x10000000) == 0)
    {
      goto LABEL_333;
    }

    goto LABEL_447;
  }

LABEL_437:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v215 = *(a1 + 256);
  *a2 = 706;
  v216 = *(v215 + 5);
  if (v216 > 0x7F)
  {
    a2[2] = v216 | 0x80;
    v218 = v216 >> 7;
    if (v216 >> 14)
    {
      v217 = a2 + 4;
      do
      {
        *(v217 - 1) = v218 | 0x80;
        v219 = v218 >> 7;
        ++v217;
        v220 = v218 >> 14;
        v218 >>= 7;
      }

      while (v220);
      *(v217 - 1) = v219;
    }

    else
    {
      a2[3] = v218;
      v217 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v216;
    v217 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v215, v217, a3);
  if ((v154 & 0x10000000) == 0)
  {
LABEL_333:
    if ((v154 & 0x20000000) == 0)
    {
      goto LABEL_334;
    }

    goto LABEL_457;
  }

LABEL_447:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v221 = *(a1 + 264);
  *a2 = 714;
  v222 = *(v221 + 5);
  if (v222 > 0x7F)
  {
    a2[2] = v222 | 0x80;
    v224 = v222 >> 7;
    if (v222 >> 14)
    {
      v223 = a2 + 4;
      do
      {
        *(v223 - 1) = v224 | 0x80;
        v225 = v224 >> 7;
        ++v223;
        v226 = v224 >> 14;
        v224 >>= 7;
      }

      while (v226);
      *(v223 - 1) = v225;
    }

    else
    {
      a2[3] = v224;
      v223 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v222;
    v223 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v221, v223, a3);
  if ((v154 & 0x20000000) == 0)
  {
LABEL_334:
    if ((v154 & 0x40000000) == 0)
    {
      goto LABEL_335;
    }

    goto LABEL_467;
  }

LABEL_457:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v227 = *(a1 + 272);
  *a2 = 722;
  v228 = *(v227 + 5);
  if (v228 > 0x7F)
  {
    a2[2] = v228 | 0x80;
    v230 = v228 >> 7;
    if (v228 >> 14)
    {
      v229 = a2 + 4;
      do
      {
        *(v229 - 1) = v230 | 0x80;
        v231 = v230 >> 7;
        ++v229;
        v232 = v230 >> 14;
        v230 >>= 7;
      }

      while (v232);
      *(v229 - 1) = v231;
    }

    else
    {
      a2[3] = v230;
      v229 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v228;
    v229 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v227, v229, a3);
  if ((v154 & 0x40000000) == 0)
  {
LABEL_335:
    if ((v154 & 0x80000000) == 0)
    {
      goto LABEL_487;
    }

    goto LABEL_477;
  }

LABEL_467:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v233 = *(a1 + 280);
  *a2 = 730;
  v234 = *(v233 + 5);
  if (v234 > 0x7F)
  {
    a2[2] = v234 | 0x80;
    v236 = v234 >> 7;
    if (v234 >> 14)
    {
      v235 = a2 + 4;
      do
      {
        *(v235 - 1) = v236 | 0x80;
        v237 = v236 >> 7;
        ++v235;
        v238 = v236 >> 14;
        v236 >>= 7;
      }

      while (v238);
      *(v235 - 1) = v237;
    }

    else
    {
      a2[3] = v236;
      v235 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v234;
    v235 = a2 + 3;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v233, v235, a3);
  if (v154 < 0)
  {
LABEL_477:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v239 = *(a1 + 288);
    *a2 = 738;
    v240 = *(v239 + 5);
    if (v240 > 0x7F)
    {
      a2[2] = v240 | 0x80;
      v242 = v240 >> 7;
      if (v240 >> 14)
      {
        v241 = a2 + 4;
        do
        {
          *(v241 - 1) = v242 | 0x80;
          v243 = v242 >> 7;
          ++v241;
          v244 = v242 >> 14;
          v242 >>= 7;
        }

        while (v244);
        *(v241 - 1) = v243;
      }

      else
      {
        a2[3] = v242;
        v241 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v240;
      v241 = a2 + 3;
    }

    a2 = TSD::ShadowArchive::_InternalSerialize(v239, v241, a3);
  }

LABEL_487:
  v245 = *(a1 + 20);
  if (v245)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v246 = *(a1 + 296);
    *a2 = 746;
    v247 = *(v246 + 5);
    if (v247 > 0x7F)
    {
      a2[2] = v247 | 0x80;
      v249 = v247 >> 7;
      if (v247 >> 14)
      {
        v248 = a2 + 4;
        do
        {
          *(v248 - 1) = v249 | 0x80;
          v250 = v249 >> 7;
          ++v248;
          v251 = v249 >> 14;
          v249 >>= 7;
        }

        while (v251);
        *(v248 - 1) = v250;
      }

      else
      {
        a2[3] = v249;
        v248 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v247;
      v248 = a2 + 3;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v246, v248, a3);
    if ((v245 & 2) == 0)
    {
LABEL_489:
      if ((v245 & 4) == 0)
      {
        goto LABEL_490;
      }

      goto LABEL_523;
    }
  }

  else if ((v245 & 2) == 0)
  {
    goto LABEL_489;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v252 = *(a1 + 304);
  *a2 = 754;
  v253 = *(v252 + 5);
  if (v253 > 0x7F)
  {
    a2[2] = v253 | 0x80;
    v255 = v253 >> 7;
    if (v253 >> 14)
    {
      v254 = a2 + 4;
      do
      {
        *(v254 - 1) = v255 | 0x80;
        v256 = v255 >> 7;
        ++v254;
        v257 = v255 >> 14;
        v255 >>= 7;
      }

      while (v257);
      *(v254 - 1) = v256;
    }

    else
    {
      a2[3] = v255;
      v254 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v253;
    v254 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v252, v254, a3);
  if ((v245 & 4) == 0)
  {
LABEL_490:
    if ((v245 & 8) == 0)
    {
      goto LABEL_491;
    }

    goto LABEL_533;
  }

LABEL_523:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v258 = *(a1 + 312);
  *a2 = 762;
  v259 = *(v258 + 5);
  if (v259 > 0x7F)
  {
    a2[2] = v259 | 0x80;
    v261 = v259 >> 7;
    if (v259 >> 14)
    {
      v260 = a2 + 4;
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
      a2[3] = v261;
      v260 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v259;
    v260 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v258, v260, a3);
  if ((v245 & 8) == 0)
  {
LABEL_491:
    if ((v245 & 0x10) == 0)
    {
      goto LABEL_492;
    }

    goto LABEL_543;
  }

LABEL_533:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v264 = *(a1 + 320);
  *a2 = 898;
  v265 = *(v264 + 5);
  if (v265 > 0x7F)
  {
    a2[2] = v265 | 0x80;
    v267 = v265 >> 7;
    if (v265 >> 14)
    {
      v266 = a2 + 4;
      do
      {
        *(v266 - 1) = v267 | 0x80;
        v268 = v267 >> 7;
        ++v266;
        v269 = v267 >> 14;
        v267 >>= 7;
      }

      while (v269);
      *(v266 - 1) = v268;
    }

    else
    {
      a2[3] = v267;
      v266 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v265;
    v266 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v264, v266, a3);
  if ((v245 & 0x10) == 0)
  {
LABEL_492:
    if ((v245 & 0x20) == 0)
    {
      goto LABEL_493;
    }

    goto LABEL_553;
  }

LABEL_543:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v270 = *(a1 + 328);
  *a2 = 906;
  v271 = *(v270 + 5);
  if (v271 > 0x7F)
  {
    a2[2] = v271 | 0x80;
    v273 = v271 >> 7;
    if (v271 >> 14)
    {
      v272 = a2 + 4;
      do
      {
        *(v272 - 1) = v273 | 0x80;
        v274 = v273 >> 7;
        ++v272;
        v275 = v273 >> 14;
        v273 >>= 7;
      }

      while (v275);
      *(v272 - 1) = v274;
    }

    else
    {
      a2[3] = v273;
      v272 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v271;
    v272 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v270, v272, a3);
  if ((v245 & 0x20) == 0)
  {
LABEL_493:
    if ((v245 & 0x40) == 0)
    {
      goto LABEL_494;
    }

    goto LABEL_563;
  }

LABEL_553:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v276 = *(a1 + 336);
  *a2 = 914;
  v277 = *(v276 + 5);
  if (v277 > 0x7F)
  {
    a2[2] = v277 | 0x80;
    v279 = v277 >> 7;
    if (v277 >> 14)
    {
      v278 = a2 + 4;
      do
      {
        *(v278 - 1) = v279 | 0x80;
        v280 = v279 >> 7;
        ++v278;
        v281 = v279 >> 14;
        v279 >>= 7;
      }

      while (v281);
      *(v278 - 1) = v280;
    }

    else
    {
      a2[3] = v279;
      v278 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v277;
    v278 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v276, v278, a3);
  if ((v245 & 0x40) == 0)
  {
LABEL_494:
    if ((v245 & 0x80) == 0)
    {
      goto LABEL_495;
    }

    goto LABEL_573;
  }

LABEL_563:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v282 = *(a1 + 344);
  *a2 = 922;
  v283 = *(v282 + 5);
  if (v283 > 0x7F)
  {
    a2[2] = v283 | 0x80;
    v285 = v283 >> 7;
    if (v283 >> 14)
    {
      v284 = a2 + 4;
      do
      {
        *(v284 - 1) = v285 | 0x80;
        v286 = v285 >> 7;
        ++v284;
        v287 = v285 >> 14;
        v285 >>= 7;
      }

      while (v287);
      *(v284 - 1) = v286;
    }

    else
    {
      a2[3] = v285;
      v284 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v283;
    v284 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v282, v284, a3);
  if ((v245 & 0x80) == 0)
  {
LABEL_495:
    if ((v245 & 0x100) == 0)
    {
      goto LABEL_496;
    }

    goto LABEL_583;
  }

LABEL_573:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v288 = *(a1 + 352);
  *a2 = 930;
  v289 = *(v288 + 5);
  if (v289 > 0x7F)
  {
    a2[2] = v289 | 0x80;
    v291 = v289 >> 7;
    if (v289 >> 14)
    {
      v290 = a2 + 4;
      do
      {
        *(v290 - 1) = v291 | 0x80;
        v292 = v291 >> 7;
        ++v290;
        v293 = v291 >> 14;
        v291 >>= 7;
      }

      while (v293);
      *(v290 - 1) = v292;
    }

    else
    {
      a2[3] = v291;
      v290 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v289;
    v290 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v288, v290, a3);
  if ((v245 & 0x100) == 0)
  {
LABEL_496:
    if ((v245 & 0x200) == 0)
    {
      goto LABEL_497;
    }

    goto LABEL_593;
  }

LABEL_583:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v294 = *(a1 + 360);
  *a2 = 938;
  v295 = *(v294 + 5);
  if (v295 > 0x7F)
  {
    a2[2] = v295 | 0x80;
    v297 = v295 >> 7;
    if (v295 >> 14)
    {
      v296 = a2 + 4;
      do
      {
        *(v296 - 1) = v297 | 0x80;
        v298 = v297 >> 7;
        ++v296;
        v299 = v297 >> 14;
        v297 >>= 7;
      }

      while (v299);
      *(v296 - 1) = v298;
    }

    else
    {
      a2[3] = v297;
      v296 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v295;
    v296 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v294, v296, a3);
  if ((v245 & 0x200) == 0)
  {
LABEL_497:
    if ((v245 & 0x400) == 0)
    {
      goto LABEL_498;
    }

    goto LABEL_603;
  }

LABEL_593:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v300 = *(a1 + 368);
  *a2 = 946;
  v301 = *(v300 + 11);
  if (v301 > 0x7F)
  {
    a2[2] = v301 | 0x80;
    v303 = v301 >> 7;
    if (v301 >> 14)
    {
      v302 = a2 + 4;
      do
      {
        *(v302 - 1) = v303 | 0x80;
        v304 = v303 >> 7;
        ++v302;
        v305 = v303 >> 14;
        v303 >>= 7;
      }

      while (v305);
      *(v302 - 1) = v304;
    }

    else
    {
      a2[3] = v303;
      v302 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v301;
    v302 = a2 + 3;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v300, v302, a3);
  if ((v245 & 0x400) == 0)
  {
LABEL_498:
    if ((v245 & 0x800) == 0)
    {
      goto LABEL_499;
    }

    goto LABEL_613;
  }

LABEL_603:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v306 = *(a1 + 376);
  *a2 = 954;
  v307 = *(v306 + 11);
  if (v307 > 0x7F)
  {
    a2[2] = v307 | 0x80;
    v309 = v307 >> 7;
    if (v307 >> 14)
    {
      v308 = a2 + 4;
      do
      {
        *(v308 - 1) = v309 | 0x80;
        v310 = v309 >> 7;
        ++v308;
        v311 = v309 >> 14;
        v309 >>= 7;
      }

      while (v311);
      *(v308 - 1) = v310;
    }

    else
    {
      a2[3] = v309;
      v308 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v307;
    v308 = a2 + 3;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v306, v308, a3);
  if ((v245 & 0x800) == 0)
  {
LABEL_499:
    if ((v245 & 0x1000) == 0)
    {
      goto LABEL_500;
    }

    goto LABEL_623;
  }

LABEL_613:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v312 = *(a1 + 384);
  *a2 = 962;
  v313 = *(v312 + 11);
  if (v313 > 0x7F)
  {
    a2[2] = v313 | 0x80;
    v315 = v313 >> 7;
    if (v313 >> 14)
    {
      v314 = a2 + 4;
      do
      {
        *(v314 - 1) = v315 | 0x80;
        v316 = v315 >> 7;
        ++v314;
        v317 = v315 >> 14;
        v315 >>= 7;
      }

      while (v317);
      *(v314 - 1) = v316;
    }

    else
    {
      a2[3] = v315;
      v314 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v313;
    v314 = a2 + 3;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v312, v314, a3);
  if ((v245 & 0x1000) == 0)
  {
LABEL_500:
    if ((v245 & 0x2000) == 0)
    {
      goto LABEL_501;
    }

    goto LABEL_633;
  }

LABEL_623:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v318 = *(a1 + 392);
  *a2 = 970;
  v319 = *(v318 + 11);
  if (v319 > 0x7F)
  {
    a2[2] = v319 | 0x80;
    v321 = v319 >> 7;
    if (v319 >> 14)
    {
      v320 = a2 + 4;
      do
      {
        *(v320 - 1) = v321 | 0x80;
        v322 = v321 >> 7;
        ++v320;
        v323 = v321 >> 14;
        v321 >>= 7;
      }

      while (v323);
      *(v320 - 1) = v322;
    }

    else
    {
      a2[3] = v321;
      v320 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v319;
    v320 = a2 + 3;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v318, v320, a3);
  if ((v245 & 0x2000) == 0)
  {
LABEL_501:
    if ((v245 & 0x4000) == 0)
    {
      goto LABEL_653;
    }

    goto LABEL_643;
  }

LABEL_633:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v324 = *(a1 + 400);
  *a2 = 978;
  v325 = *(v324 + 11);
  if (v325 > 0x7F)
  {
    a2[2] = v325 | 0x80;
    v327 = v325 >> 7;
    if (v325 >> 14)
    {
      v326 = a2 + 4;
      do
      {
        *(v326 - 1) = v327 | 0x80;
        v328 = v327 >> 7;
        ++v326;
        v329 = v327 >> 14;
        v327 >>= 7;
      }

      while (v329);
      *(v326 - 1) = v328;
    }

    else
    {
      a2[3] = v327;
      v326 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v325;
    v326 = a2 + 3;
  }

  a2 = TSD::FillArchive::_InternalSerialize(v324, v326, a3);
  if ((v245 & 0x4000) != 0)
  {
LABEL_643:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v330 = *(a1 + 408);
    *a2 = 986;
    v331 = *(v330 + 11);
    if (v331 > 0x7F)
    {
      a2[2] = v331 | 0x80;
      v333 = v331 >> 7;
      if (v331 >> 14)
      {
        v332 = a2 + 4;
        do
        {
          *(v332 - 1) = v333 | 0x80;
          v334 = v333 >> 7;
          ++v332;
          v335 = v333 >> 14;
          v333 >>= 7;
        }

        while (v335);
        *(v332 - 1) = v334;
      }

      else
      {
        a2[3] = v333;
        v332 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v331;
      v332 = a2 + 3;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v330, v332, a3);
  }

LABEL_653:
  v336 = *(a1 + 28);
  if (v336)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v337 = *(a1 + 661);
    *a2 = 992;
    a2[2] = v337;
    a2 += 3;
    if ((v336 & 2) == 0)
    {
LABEL_655:
      if ((v336 & 4) == 0)
      {
        goto LABEL_666;
      }

      goto LABEL_663;
    }
  }

  else if ((v336 & 2) == 0)
  {
    goto LABEL_655;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v338 = *(a1 + 662);
  *a2 = 1000;
  a2[2] = v338;
  a2 += 3;
  if ((v336 & 4) != 0)
  {
LABEL_663:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v339 = *(a1 + 663);
    *a2 = 1008;
    a2[2] = v339;
    a2 += 3;
  }

LABEL_666:
  v340 = *(a1 + 24);
  if ((v340 & 0x8000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v341 = *(a1 + 656);
    *a2 = 1016;
    a2[2] = v341;
    a2 += 3;
    if ((v340 & 0x20000000) == 0)
    {
LABEL_668:
      if ((v340 & 0x40000000) == 0)
      {
        goto LABEL_679;
      }

      goto LABEL_676;
    }
  }

  else if ((v340 & 0x20000000) == 0)
  {
    goto LABEL_668;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v342 = *(a1 + 658);
  *a2 = 1152;
  a2[2] = v342;
  a2 += 3;
  if ((v340 & 0x40000000) != 0)
  {
LABEL_676:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v343 = *(a1 + 659);
    *a2 = 1160;
    a2[2] = v343;
    a2 += 3;
  }

LABEL_679:
  v344 = *(a1 + 28);
  if ((v344 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v345 = *(a1 + 676);
    *a2 = 1168;
    a2[2] = v345;
    a2 += 3;
    if ((v344 & 0x80) == 0)
    {
LABEL_681:
      if ((v344 & 0x100) == 0)
      {
        goto LABEL_692;
      }

      goto LABEL_689;
    }
  }

  else if ((v344 & 0x80) == 0)
  {
    goto LABEL_681;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v346 = *(a1 + 677);
  *a2 = 1176;
  a2[2] = v346;
  a2 += 3;
  if ((v344 & 0x100) != 0)
  {
LABEL_689:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v347 = *(a1 + 678);
    *a2 = 1184;
    a2[2] = v347;
    a2 += 3;
  }

LABEL_692:
  v348 = *(a1 + 24);
  if ((v348 & 0x800) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v349 = *(a1 + 592);
    *a2 = 1192;
    a2[2] = v349;
    a2 += 3;
    if ((v348 & 0x1000) == 0)
    {
LABEL_694:
      if ((v348 & 0x2000) == 0)
      {
        goto LABEL_695;
      }

      goto LABEL_705;
    }
  }

  else if ((v348 & 0x1000) == 0)
  {
    goto LABEL_694;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v350 = *(a1 + 596);
  *a2 = 1205;
  *(a2 + 2) = v350;
  a2 += 6;
  if ((v348 & 0x2000) == 0)
  {
LABEL_695:
    if ((v348 & 0x4000) == 0)
    {
      goto LABEL_696;
    }

    goto LABEL_708;
  }

LABEL_705:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v351 = *(a1 + 600);
  *a2 = 1213;
  *(a2 + 2) = v351;
  a2 += 6;
  if ((v348 & 0x4000) == 0)
  {
LABEL_696:
    if ((v348 & 0x8000) == 0)
    {
      goto LABEL_697;
    }

    goto LABEL_711;
  }

LABEL_708:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v352 = *(a1 + 604);
  *a2 = 1221;
  *(a2 + 2) = v352;
  a2 += 6;
  if ((v348 & 0x8000) == 0)
  {
LABEL_697:
    if ((v348 & 0x10000) == 0)
    {
      goto LABEL_717;
    }

    goto LABEL_714;
  }

LABEL_711:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v353 = *(a1 + 608);
  *a2 = 1229;
  *(a2 + 2) = v353;
  a2 += 6;
  if ((v348 & 0x10000) != 0)
  {
LABEL_714:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v354 = *(a1 + 612);
    *a2 = 1237;
    *(a2 + 2) = v354;
    a2 += 6;
  }

LABEL_717:
  v355 = *(a1 + 20);
  if ((v355 & 0x8000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v356 = *(a1 + 416);
    *a2 = 1242;
    v357 = *(v356 + 5);
    if (v357 > 0x7F)
    {
      a2[2] = v357 | 0x80;
      v359 = v357 >> 7;
      if (v357 >> 14)
      {
        v358 = a2 + 4;
        do
        {
          *(v358 - 1) = v359 | 0x80;
          v360 = v359 >> 7;
          ++v358;
          v361 = v359 >> 14;
          v359 >>= 7;
        }

        while (v361);
        *(v358 - 1) = v360;
      }

      else
      {
        a2[3] = v359;
        v358 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v357;
      v358 = a2 + 3;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v356, v358, a3);
    if ((v355 & 0x10000) == 0)
    {
LABEL_719:
      if ((v355 & 0x20000) == 0)
      {
        goto LABEL_720;
      }

      goto LABEL_744;
    }
  }

  else if ((v355 & 0x10000) == 0)
  {
    goto LABEL_719;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v362 = *(a1 + 424);
  *a2 = 1250;
  v363 = *(v362 + 5);
  if (v363 > 0x7F)
  {
    a2[2] = v363 | 0x80;
    v365 = v363 >> 7;
    if (v363 >> 14)
    {
      v364 = a2 + 4;
      do
      {
        *(v364 - 1) = v365 | 0x80;
        v366 = v365 >> 7;
        ++v364;
        v367 = v365 >> 14;
        v365 >>= 7;
      }

      while (v367);
      *(v364 - 1) = v366;
    }

    else
    {
      a2[3] = v365;
      v364 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v363;
    v364 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v362, v364, a3);
  if ((v355 & 0x20000) == 0)
  {
LABEL_720:
    if ((v355 & 0x40000) == 0)
    {
      goto LABEL_721;
    }

    goto LABEL_754;
  }

LABEL_744:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v368 = *(a1 + 432);
  *a2 = 1258;
  v369 = *(v368 + 5);
  if (v369 > 0x7F)
  {
    a2[2] = v369 | 0x80;
    v371 = v369 >> 7;
    if (v369 >> 14)
    {
      v370 = a2 + 4;
      do
      {
        *(v370 - 1) = v371 | 0x80;
        v372 = v371 >> 7;
        ++v370;
        v373 = v371 >> 14;
        v371 >>= 7;
      }

      while (v373);
      *(v370 - 1) = v372;
    }

    else
    {
      a2[3] = v371;
      v370 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v369;
    v370 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v368, v370, a3);
  if ((v355 & 0x40000) == 0)
  {
LABEL_721:
    if ((v355 & 0x80000) == 0)
    {
      goto LABEL_722;
    }

    goto LABEL_764;
  }

LABEL_754:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v374 = *(a1 + 440);
  *a2 = 1266;
  v375 = *(v374 + 5);
  if (v375 > 0x7F)
  {
    a2[2] = v375 | 0x80;
    v377 = v375 >> 7;
    if (v375 >> 14)
    {
      v376 = a2 + 4;
      do
      {
        *(v376 - 1) = v377 | 0x80;
        v378 = v377 >> 7;
        ++v376;
        v379 = v377 >> 14;
        v377 >>= 7;
      }

      while (v379);
      *(v376 - 1) = v378;
    }

    else
    {
      a2[3] = v377;
      v376 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v375;
    v376 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v374, v376, a3);
  if ((v355 & 0x80000) == 0)
  {
LABEL_722:
    if ((v355 & 0x100000) == 0)
    {
      goto LABEL_784;
    }

    goto LABEL_774;
  }

LABEL_764:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v380 = *(a1 + 448);
  *a2 = 1274;
  v381 = *(v380 + 5);
  if (v381 > 0x7F)
  {
    a2[2] = v381 | 0x80;
    v383 = v381 >> 7;
    if (v381 >> 14)
    {
      v382 = a2 + 4;
      do
      {
        *(v382 - 1) = v383 | 0x80;
        v384 = v383 >> 7;
        ++v382;
        v385 = v383 >> 14;
        v383 >>= 7;
      }

      while (v385);
      *(v382 - 1) = v384;
    }

    else
    {
      a2[3] = v383;
      v382 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v381;
    v382 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v380, v382, a3);
  if ((v355 & 0x100000) != 0)
  {
LABEL_774:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v386 = *(a1 + 456);
    *a2 = 1410;
    v387 = *(v386 + 5);
    if (v387 > 0x7F)
    {
      a2[2] = v387 | 0x80;
      v389 = v387 >> 7;
      if (v387 >> 14)
      {
        v388 = a2 + 4;
        do
        {
          *(v388 - 1) = v389 | 0x80;
          v390 = v389 >> 7;
          ++v388;
          v391 = v389 >> 14;
          v389 >>= 7;
        }

        while (v391);
        *(v388 - 1) = v390;
      }

      else
      {
        a2[3] = v389;
        v388 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v387;
      v388 = a2 + 3;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v386, v388, a3);
  }

LABEL_784:
  v392 = *(a1 + 24);
  if ((v392 & 0x20000) == 0)
  {
    if ((v392 & 0x40000) == 0)
    {
      goto LABEL_786;
    }

LABEL_792:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v394 = *(a1 + 620);
    *a2 = 1424;
    if (v394 > 0x7F)
    {
      a2[2] = v394 | 0x80;
      v395 = v394 >> 7;
      if (v394 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v395 | 0x80;
          v396 = v395 >> 7;
          ++a2;
          v397 = v395 >> 14;
          v395 >>= 7;
        }

        while (v397);
        *(a2 - 1) = v396;
        if ((v392 & 0x80000) != 0)
        {
          goto LABEL_803;
        }
      }

      else
      {
        a2[3] = v395;
        a2 += 4;
        if ((v392 & 0x80000) != 0)
        {
          goto LABEL_803;
        }
      }
    }

    else
    {
      a2[2] = v394;
      a2 += 3;
      if ((v392 & 0x80000) != 0)
      {
        goto LABEL_803;
      }
    }

LABEL_787:
    if ((v392 & 0x100000) == 0)
    {
      goto LABEL_815;
    }

    goto LABEL_806;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v393 = *(a1 + 616);
  *a2 = 1421;
  *(a2 + 2) = v393;
  a2 += 6;
  if ((v392 & 0x40000) != 0)
  {
    goto LABEL_792;
  }

LABEL_786:
  if ((v392 & 0x80000) == 0)
  {
    goto LABEL_787;
  }

LABEL_803:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v398 = *(a1 + 624);
  *a2 = 1437;
  *(a2 + 2) = v398;
  a2 += 6;
  if ((v392 & 0x100000) != 0)
  {
LABEL_806:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v399 = *(a1 + 628);
    *a2 = 1440;
    if (v399 > 0x7F)
    {
      a2[2] = v399 | 0x80;
      v400 = v399 >> 7;
      if (v399 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v400 | 0x80;
          v401 = v400 >> 7;
          ++a2;
          v402 = v400 >> 14;
          v400 >>= 7;
        }

        while (v402);
        *(a2 - 1) = v401;
      }

      else
      {
        a2[3] = v400;
        a2 += 4;
      }
    }

    else
    {
      a2[2] = v399;
      a2 += 3;
    }
  }

LABEL_815:
  v403 = *(a1 + 20);
  if ((v403 & 0x200000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v404 = *(a1 + 464);
    *a2 = 1450;
    v405 = *(v404 + 5);
    if (v405 > 0x7F)
    {
      a2[2] = v405 | 0x80;
      v407 = v405 >> 7;
      if (v405 >> 14)
      {
        v406 = a2 + 4;
        do
        {
          *(v406 - 1) = v407 | 0x80;
          v408 = v407 >> 7;
          ++v406;
          v409 = v407 >> 14;
          v407 >>= 7;
        }

        while (v409);
        *(v406 - 1) = v408;
      }

      else
      {
        a2[3] = v407;
        v406 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v405;
      v406 = a2 + 3;
    }

    a2 = TSD::ShadowArchive::_InternalSerialize(v404, v406, a3);
  }

  if ((v403 & 0x400000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v410 = *(a1 + 472);
    *a2 = 1458;
    v411 = *(v410 + 5);
    if (v411 > 0x7F)
    {
      a2[2] = v411 | 0x80;
      v413 = v411 >> 7;
      if (v411 >> 14)
      {
        v412 = a2 + 4;
        do
        {
          *(v412 - 1) = v413 | 0x80;
          v414 = v413 >> 7;
          ++v412;
          v415 = v413 >> 14;
          v413 >>= 7;
        }

        while (v415);
        *(v412 - 1) = v414;
      }

      else
      {
        a2[3] = v413;
        v412 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v411;
      v412 = a2 + 3;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v410, v412, a3);
  }

  v416 = *(a1 + 24);
  if ((v416 & 0x200000) == 0)
  {
    if ((v416 & 0x400000) == 0)
    {
      goto LABEL_839;
    }

LABEL_863:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v425 = *(a1 + 636);
    *a2 = 1472;
    if (v425 > 0x7F)
    {
      a2[2] = v425 | 0x80;
      v426 = v425 >> 7;
      if (v425 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v426 | 0x80;
          v427 = v426 >> 7;
          ++a2;
          v428 = v426 >> 14;
          v426 >>= 7;
        }

        while (v428);
        *(a2 - 1) = v427;
        if ((v416 & 0x800000) != 0)
        {
          goto LABEL_874;
        }
      }

      else
      {
        a2[3] = v426;
        a2 += 4;
        if ((v416 & 0x800000) != 0)
        {
          goto LABEL_874;
        }
      }
    }

    else
    {
      a2[2] = v425;
      a2 += 3;
      if ((v416 & 0x800000) != 0)
      {
        goto LABEL_874;
      }
    }

LABEL_840:
    if ((v416 & 0x1000000) == 0)
    {
      goto LABEL_841;
    }

LABEL_885:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v433 = *(a1 + 644);
    *a2 = 1488;
    if (v433 > 0x7F)
    {
      a2[2] = v433 | 0x80;
      v434 = v433 >> 7;
      if (v433 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v434 | 0x80;
          v435 = v434 >> 7;
          ++a2;
          v436 = v434 >> 14;
          v434 >>= 7;
        }

        while (v436);
        *(a2 - 1) = v435;
        if ((v416 & 0x2000000) != 0)
        {
          goto LABEL_896;
        }
      }

      else
      {
        a2[3] = v434;
        a2 += 4;
        if ((v416 & 0x2000000) != 0)
        {
          goto LABEL_896;
        }
      }
    }

    else
    {
      a2[2] = v433;
      a2 += 3;
      if ((v416 & 0x2000000) != 0)
      {
        goto LABEL_896;
      }
    }

LABEL_842:
    if ((v416 & 0x4000000) == 0)
    {
      goto LABEL_907;
    }

    goto LABEL_843;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v418 = *(a1 + 632);
  *a2 = 1464;
  if (v418 > 0x7F)
  {
    a2[2] = v418 | 0x80;
    v420 = v418 >> 7;
    if (v418 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v420 | 0x80;
        v423 = v420 >> 7;
        ++a2;
        v424 = v420 >> 14;
        v420 >>= 7;
      }

      while (v424);
      *(a2 - 1) = v423;
      if ((v416 & 0x400000) != 0)
      {
        goto LABEL_863;
      }
    }

    else
    {
      a2[3] = v420;
      a2 += 4;
      if ((v416 & 0x400000) != 0)
      {
        goto LABEL_863;
      }
    }
  }

  else
  {
    a2[2] = v418;
    a2 += 3;
    if ((v416 & 0x400000) != 0)
    {
      goto LABEL_863;
    }
  }

LABEL_839:
  if ((v416 & 0x800000) == 0)
  {
    goto LABEL_840;
  }

LABEL_874:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v429 = *(a1 + 640);
  *a2 = 1480;
  if (v429 > 0x7F)
  {
    a2[2] = v429 | 0x80;
    v430 = v429 >> 7;
    if (v429 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v430 | 0x80;
        v431 = v430 >> 7;
        ++a2;
        v432 = v430 >> 14;
        v430 >>= 7;
      }

      while (v432);
      *(a2 - 1) = v431;
      if ((v416 & 0x1000000) != 0)
      {
        goto LABEL_885;
      }
    }

    else
    {
      a2[3] = v430;
      a2 += 4;
      if ((v416 & 0x1000000) != 0)
      {
        goto LABEL_885;
      }
    }
  }

  else
  {
    a2[2] = v429;
    a2 += 3;
    if ((v416 & 0x1000000) != 0)
    {
      goto LABEL_885;
    }
  }

LABEL_841:
  if ((v416 & 0x2000000) == 0)
  {
    goto LABEL_842;
  }

LABEL_896:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v437 = *(a1 + 648);
  *a2 = 1496;
  if (v437 > 0x7F)
  {
    a2[2] = v437 | 0x80;
    v438 = v437 >> 7;
    if (v437 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v438 | 0x80;
        v439 = v438 >> 7;
        ++a2;
        v440 = v438 >> 14;
        v438 >>= 7;
      }

      while (v440);
      *(a2 - 1) = v439;
      if ((v416 & 0x4000000) == 0)
      {
        goto LABEL_907;
      }
    }

    else
    {
      a2[3] = v438;
      a2 += 4;
      if ((v416 & 0x4000000) == 0)
      {
        goto LABEL_907;
      }
    }
  }

  else
  {
    a2[2] = v437;
    a2 += 3;
    if ((v416 & 0x4000000) == 0)
    {
      goto LABEL_907;
    }
  }

LABEL_843:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v417 = *(a1 + 652);
  *a2 = 1504;
  if (v417 > 0x7F)
  {
    a2[2] = v417 | 0x80;
    v419 = v417 >> 7;
    if (v417 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v419 | 0x80;
        v421 = v419 >> 7;
        ++a2;
        v422 = v419 >> 14;
        v419 >>= 7;
      }

      while (v422);
      *(a2 - 1) = v421;
    }

    else
    {
      a2[3] = v419;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v417;
    a2 += 3;
  }

LABEL_907:
  v441 = *(a1 + 28);
  if ((v441 & 8) == 0)
  {
    if ((v441 & 0x10) == 0)
    {
      goto LABEL_909;
    }

LABEL_935:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v450 = *(a1 + 668);
    *a2 = 1520;
    if (v450 > 0x7F)
    {
      a2[2] = v450 | 0x80;
      v451 = v450 >> 7;
      if (v450 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v451 | 0x80;
          v452 = v451 >> 7;
          ++a2;
          v453 = v451 >> 14;
          v451 >>= 7;
        }

        while (v453);
        *(a2 - 1) = v452;
        if ((v441 & 0x20) != 0)
        {
          goto LABEL_946;
        }
      }

      else
      {
        a2[3] = v451;
        a2 += 4;
        if ((v441 & 0x20) != 0)
        {
          goto LABEL_946;
        }
      }
    }

    else
    {
      a2[2] = v450;
      a2 += 3;
      if ((v441 & 0x20) != 0)
      {
        goto LABEL_946;
      }
    }

LABEL_910:
    if ((v441 & 0x400) == 0)
    {
      goto LABEL_911;
    }

LABEL_957:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v458 = *(a1 + 680);
    *a2 = 1664;
    if (v458 > 0x7F)
    {
      a2[2] = v458 | 0x80;
      v459 = v458 >> 7;
      if (v458 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v459 | 0x80;
          v460 = v459 >> 7;
          ++a2;
          v461 = v459 >> 14;
          v459 >>= 7;
        }

        while (v461);
        *(a2 - 1) = v460;
        if ((v441 & 0x800) != 0)
        {
          goto LABEL_968;
        }
      }

      else
      {
        a2[3] = v459;
        a2 += 4;
        if ((v441 & 0x800) != 0)
        {
          goto LABEL_968;
        }
      }
    }

    else
    {
      a2[2] = v458;
      a2 += 3;
      if ((v441 & 0x800) != 0)
      {
        goto LABEL_968;
      }
    }

LABEL_912:
    if ((v441 & 0x1000) == 0)
    {
      goto LABEL_913;
    }

LABEL_979:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v466 = *(a1 + 688);
    *a2 = 1680;
    if (v466 > 0x7F)
    {
      a2[2] = v466 | 0x80;
      v467 = v466 >> 7;
      if (v466 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v467 | 0x80;
          v468 = v467 >> 7;
          ++a2;
          v469 = v467 >> 14;
          v467 >>= 7;
        }

        while (v469);
        *(a2 - 1) = v468;
        if ((v441 & 0x2000) != 0)
        {
          goto LABEL_990;
        }
      }

      else
      {
        a2[3] = v467;
        a2 += 4;
        if ((v441 & 0x2000) != 0)
        {
          goto LABEL_990;
        }
      }
    }

    else
    {
      a2[2] = v466;
      a2 += 3;
      if ((v441 & 0x2000) != 0)
      {
        goto LABEL_990;
      }
    }

LABEL_914:
    if ((v441 & 0x4000) == 0)
    {
      goto LABEL_1001;
    }

    goto LABEL_915;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v443 = *(a1 + 664);
  *a2 = 1512;
  if (v443 > 0x7F)
  {
    a2[2] = v443 | 0x80;
    v445 = v443 >> 7;
    if (v443 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v445 | 0x80;
        v448 = v445 >> 7;
        ++a2;
        v449 = v445 >> 14;
        v445 >>= 7;
      }

      while (v449);
      *(a2 - 1) = v448;
      if ((v441 & 0x10) != 0)
      {
        goto LABEL_935;
      }
    }

    else
    {
      a2[3] = v445;
      a2 += 4;
      if ((v441 & 0x10) != 0)
      {
        goto LABEL_935;
      }
    }
  }

  else
  {
    a2[2] = v443;
    a2 += 3;
    if ((v441 & 0x10) != 0)
    {
      goto LABEL_935;
    }
  }

LABEL_909:
  if ((v441 & 0x20) == 0)
  {
    goto LABEL_910;
  }

LABEL_946:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v454 = *(a1 + 672);
  *a2 = 1528;
  if (v454 > 0x7F)
  {
    a2[2] = v454 | 0x80;
    v455 = v454 >> 7;
    if (v454 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v455 | 0x80;
        v456 = v455 >> 7;
        ++a2;
        v457 = v455 >> 14;
        v455 >>= 7;
      }

      while (v457);
      *(a2 - 1) = v456;
      if ((v441 & 0x400) != 0)
      {
        goto LABEL_957;
      }
    }

    else
    {
      a2[3] = v455;
      a2 += 4;
      if ((v441 & 0x400) != 0)
      {
        goto LABEL_957;
      }
    }
  }

  else
  {
    a2[2] = v454;
    a2 += 3;
    if ((v441 & 0x400) != 0)
    {
      goto LABEL_957;
    }
  }

LABEL_911:
  if ((v441 & 0x800) == 0)
  {
    goto LABEL_912;
  }

LABEL_968:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v462 = *(a1 + 684);
  *a2 = 1672;
  if (v462 > 0x7F)
  {
    a2[2] = v462 | 0x80;
    v463 = v462 >> 7;
    if (v462 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v463 | 0x80;
        v464 = v463 >> 7;
        ++a2;
        v465 = v463 >> 14;
        v463 >>= 7;
      }

      while (v465);
      *(a2 - 1) = v464;
      if ((v441 & 0x1000) != 0)
      {
        goto LABEL_979;
      }
    }

    else
    {
      a2[3] = v463;
      a2 += 4;
      if ((v441 & 0x1000) != 0)
      {
        goto LABEL_979;
      }
    }
  }

  else
  {
    a2[2] = v462;
    a2 += 3;
    if ((v441 & 0x1000) != 0)
    {
      goto LABEL_979;
    }
  }

LABEL_913:
  if ((v441 & 0x2000) == 0)
  {
    goto LABEL_914;
  }

LABEL_990:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v470 = *(a1 + 692);
  *a2 = 1688;
  if (v470 > 0x7F)
  {
    a2[2] = v470 | 0x80;
    v471 = v470 >> 7;
    if (v470 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v471 | 0x80;
        v472 = v471 >> 7;
        ++a2;
        v473 = v471 >> 14;
        v471 >>= 7;
      }

      while (v473);
      *(a2 - 1) = v472;
      if ((v441 & 0x4000) == 0)
      {
        goto LABEL_1001;
      }
    }

    else
    {
      a2[3] = v471;
      a2 += 4;
      if ((v441 & 0x4000) == 0)
      {
        goto LABEL_1001;
      }
    }
  }

  else
  {
    a2[2] = v470;
    a2 += 3;
    if ((v441 & 0x4000) == 0)
    {
      goto LABEL_1001;
    }
  }

LABEL_915:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v442 = *(a1 + 696);
  *a2 = 1696;
  if (v442 > 0x7F)
  {
    a2[2] = v442 | 0x80;
    v444 = v442 >> 7;
    if (v442 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v444 | 0x80;
        v446 = v444 >> 7;
        ++a2;
        v447 = v444 >> 14;
        v444 >>= 7;
      }

      while (v447);
      *(a2 - 1) = v446;
    }

    else
    {
      a2[3] = v444;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v442;
    a2 += 3;
  }

LABEL_1001:
  v474 = *(a1 + 20);
  if ((v474 & 0x800000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v475 = *(a1 + 480);
    *a2 = 2178;
    v476 = *(v475 + 5);
    if (v476 > 0x7F)
    {
      a2[2] = v476 | 0x80;
      v478 = v476 >> 7;
      if (v476 >> 14)
      {
        v477 = a2 + 4;
        do
        {
          *(v477 - 1) = v478 | 0x80;
          v479 = v478 >> 7;
          ++v477;
          v480 = v478 >> 14;
          v478 >>= 7;
        }

        while (v480);
        *(v477 - 1) = v479;
      }

      else
      {
        a2[3] = v478;
        v477 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v476;
      v477 = a2 + 3;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v475, v477, a3);
    if ((v474 & 0x1000000) == 0)
    {
LABEL_1003:
      if ((v474 & 0x2000000) == 0)
      {
        goto LABEL_1035;
      }

      goto LABEL_1025;
    }
  }

  else if ((v474 & 0x1000000) == 0)
  {
    goto LABEL_1003;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v481 = *(a1 + 488);
  *a2 = 2186;
  v482 = *(v481 + 5);
  if (v482 > 0x7F)
  {
    a2[2] = v482 | 0x80;
    v484 = v482 >> 7;
    if (v482 >> 14)
    {
      v483 = a2 + 4;
      do
      {
        *(v483 - 1) = v484 | 0x80;
        v485 = v484 >> 7;
        ++v483;
        v486 = v484 >> 14;
        v484 >>= 7;
      }

      while (v486);
      *(v483 - 1) = v485;
    }

    else
    {
      a2[3] = v484;
      v483 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v482;
    v483 = a2 + 3;
  }

  a2 = TSD::LineEndArchive::_InternalSerialize(v481, v483, a3);
  if ((v474 & 0x2000000) != 0)
  {
LABEL_1025:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v487 = *(a1 + 496);
    *a2 = 2194;
    v488 = *(v487 + 5);
    if (v488 > 0x7F)
    {
      a2[2] = v488 | 0x80;
      v490 = v488 >> 7;
      if (v488 >> 14)
      {
        v489 = a2 + 4;
        do
        {
          *(v489 - 1) = v490 | 0x80;
          v491 = v490 >> 7;
          ++v489;
          v492 = v490 >> 14;
          v490 >>= 7;
        }

        while (v492);
        *(v489 - 1) = v491;
      }

      else
      {
        a2[3] = v490;
        v489 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v488;
      v489 = a2 + 3;
    }

    a2 = TSD::LineEndArchive::_InternalSerialize(v487, v489, a3);
  }

LABEL_1035:
  v493 = *(a1 + 28);
  if ((v493 & 0x8000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v494 = *(a1 + 700);
    *a2 = 2496;
    if (v494 <= 0x7F)
    {
      a2[2] = v494;
      a2 += 3;
      if ((v493 & 0x10000) == 0)
      {
        goto LABEL_1057;
      }

      goto LABEL_1044;
    }

    a2[2] = v494 | 0x80;
    v495 = v494 >> 7;
    if (v494 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v495 | 0x80;
        v498 = v495 >> 7;
        ++a2;
        v499 = v495 >> 14;
        v495 >>= 7;
      }

      while (v499);
      *(a2 - 1) = v498;
      if ((v493 & 0x10000) == 0)
      {
        goto LABEL_1057;
      }

      goto LABEL_1044;
    }

    a2[3] = v495;
    a2 += 4;
  }

  if ((v493 & 0x10000) == 0)
  {
    goto LABEL_1057;
  }

LABEL_1044:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v496 = *(a1 + 704);
  *a2 = 2504;
  if (v496 > 0x7F)
  {
    a2[2] = v496 | 0x80;
    v497 = v496 >> 7;
    if (v496 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v497 | 0x80;
        v500 = v497 >> 7;
        ++a2;
        v501 = v497 >> 14;
        v497 >>= 7;
      }

      while (v501);
      *(a2 - 1) = v500;
    }

    else
    {
      a2[3] = v497;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v496;
    a2 += 3;
  }

LABEL_1057:
  if ((*(a1 + 23) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v502 = *(a1 + 504);
    *a2 = 2730;
    v503 = *(v502 + 11);
    if (v503 > 0x7F)
    {
      a2[2] = v503 | 0x80;
      v505 = v503 >> 7;
      if (v503 >> 14)
      {
        v504 = a2 + 4;
        do
        {
          *(v504 - 1) = v505 | 0x80;
          v506 = v505 >> 7;
          ++v504;
          v507 = v505 >> 14;
          v505 >>= 7;
        }

        while (v507);
        *(v504 - 1) = v506;
      }

      else
      {
        a2[3] = v505;
        v504 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v503;
      v504 = a2 + 3;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v502, v504, a3);
  }

  v508 = *(a1 + 28);
  if ((v508 & 0x20000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v509 = *(a1 + 708);
    *a2 = 2744;
    if (v509 <= 0x7F)
    {
      a2[2] = v509;
      a2 += 3;
      if ((v508 & 0x40000) == 0)
      {
        goto LABEL_1090;
      }

      goto LABEL_1077;
    }

    a2[2] = v509 | 0x80;
    v510 = v509 >> 7;
    if (v509 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v510 | 0x80;
        v513 = v510 >> 7;
        ++a2;
        v514 = v510 >> 14;
        v510 >>= 7;
      }

      while (v514);
      *(a2 - 1) = v513;
      if ((v508 & 0x40000) == 0)
      {
        goto LABEL_1090;
      }

      goto LABEL_1077;
    }

    a2[3] = v510;
    a2 += 4;
  }

  if ((v508 & 0x40000) == 0)
  {
    goto LABEL_1090;
  }

LABEL_1077:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v511 = *(a1 + 712);
  *a2 = 2752;
  if (v511 > 0x7F)
  {
    a2[2] = v511 | 0x80;
    v512 = v511 >> 7;
    if (v511 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v512 | 0x80;
        v515 = v512 >> 7;
        ++a2;
        v516 = v512 >> 14;
        v512 >>= 7;
      }

      while (v516);
      *(a2 - 1) = v515;
    }

    else
    {
      a2[3] = v512;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v511;
    a2 += 3;
  }

LABEL_1090:
  v517 = *(a1 + 20);
  if ((v517 & 0x8000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v518 = *(a1 + 512);
    *a2 = 2762;
    v519 = *(v518 + 5);
    if (v519 > 0x7F)
    {
      a2[2] = v519 | 0x80;
      v521 = v519 >> 7;
      if (v519 >> 14)
      {
        v520 = a2 + 4;
        do
        {
          *(v520 - 1) = v521 | 0x80;
          v522 = v521 >> 7;
          ++v520;
          v523 = v521 >> 14;
          v521 >>= 7;
        }

        while (v523);
        *(v520 - 1) = v522;
      }

      else
      {
        a2[3] = v521;
        v520 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v519;
      v520 = a2 + 3;
    }

    a2 = TSD::ShadowArchive::_InternalSerialize(v518, v520, a3);
    if ((v517 & 0x10000000) == 0)
    {
LABEL_1092:
      if ((v517 & 0x20000000) == 0)
      {
        goto LABEL_1124;
      }

      goto LABEL_1114;
    }
  }

  else if ((v517 & 0x10000000) == 0)
  {
    goto LABEL_1092;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v524 = *(a1 + 520);
  *a2 = 2786;
  v525 = *(v524 + 5);
  if (v525 > 0x7F)
  {
    a2[2] = v525 | 0x80;
    v527 = v525 >> 7;
    if (v525 >> 14)
    {
      v526 = a2 + 4;
      do
      {
        *(v526 - 1) = v527 | 0x80;
        v528 = v527 >> 7;
        ++v526;
        v529 = v527 >> 14;
        v527 >>= 7;
      }

      while (v529);
      *(v526 - 1) = v528;
    }

    else
    {
      a2[3] = v527;
      v526 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v525;
    v526 = a2 + 3;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v524, v526, a3);
  if ((v517 & 0x20000000) != 0)
  {
LABEL_1114:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v530 = *(a1 + 528);
    *a2 = 2810;
    v531 = *(v530 + 11);
    if (v531 > 0x7F)
    {
      a2[2] = v531 | 0x80;
      v533 = v531 >> 7;
      if (v531 >> 14)
      {
        v532 = a2 + 4;
        do
        {
          *(v532 - 1) = v533 | 0x80;
          v534 = v533 >> 7;
          ++v532;
          v535 = v533 >> 14;
          v533 >>= 7;
        }

        while (v535);
        *(v532 - 1) = v534;
      }

      else
      {
        a2[3] = v533;
        v532 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v531;
      v532 = a2 + 3;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v530, v532, a3);
  }

LABEL_1124:
  if ((*(a1 + 27) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v536 = *(a1 + 657);
    *a2 = 2952;
    a2[2] = v536;
    a2 += 3;
  }

  v537 = *(a1 + 28);
  if ((v537 & 0x200) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v538 = *(a1 + 679);
    *a2 = 2968;
    a2[2] = v538;
    a2 += 3;
  }

  if ((v537 & 0x80000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v539 = *(a1 + 716);
    *a2 = 2989;
    *(a2 + 2) = v539;
    a2 += 6;
  }

  if ((*(a1 + 23) & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v540 = *(a1 + 536);
    *a2 = 3002;
    v541 = *(v540 + 5);
    if (v541 > 0x7F)
    {
      a2[2] = v541 | 0x80;
      v543 = v541 >> 7;
      if (v541 >> 14)
      {
        v542 = a2 + 4;
        do
        {
          *(v542 - 1) = v543 | 0x80;
          v544 = v543 >> 7;
          ++v542;
          v545 = v543 >> 14;
          v543 >>= 7;
        }

        while (v545);
        *(v542 - 1) = v544;
      }

      else
      {
        a2[3] = v543;
        v542 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v541;
      v542 = a2 + 3;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v540, v542, a3);
  }

  if ((*(a1 + 30) & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v546 = *(a1 + 720);
    *a2 = 3016;
    if (v546 > 0x7F)
    {
      a2[2] = v546 | 0x80;
      v547 = v546 >> 7;
      if (v546 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v547 | 0x80;
          v548 = v547 >> 7;
          ++a2;
          v549 = v547 >> 14;
          v547 >>= 7;
        }

        while (v549);
        *(a2 - 1) = v548;
      }

      else
      {
        a2[3] = v547;
        a2 += 4;
      }
    }

    else
    {
      a2[2] = v546;
      a2 += 3;
    }
  }

  if ((*(a1 + 24) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v550 = *(a1 + 660);
    *a2 = 3040;
    a2[2] = v550;
    a2 += 3;
  }

  if ((*(a1 + 30) & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v551 = *(a1 + 724);
    *a2 = 3053;
    *(a2 + 2) = v551;
    a2 += 6;
  }

  v552 = *(a1 + 8);
  if ((v552 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v552 & 0xFFFFFFFFFFFFFFFELL) + 8);
}