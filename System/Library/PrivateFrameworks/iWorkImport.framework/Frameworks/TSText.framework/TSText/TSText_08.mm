uint64_t TSWP::CharacterStylePropertiesArchive::ByteSizeLong(TSWP::CharacterStylePropertiesArchive *this)
{
  v2 = *(this + 10);
  v3 = 2 * v2;
  v4 = *(this + 6);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = 8 * v2;
    do
    {
      v7 = *v5++;
      v8 = TSWP::FontFeatureArchive::ByteSizeLong(v7);
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      v6 -= 8;
    }

    while (v6);
  }

  v9 = *(this + 4);
  if (!*(this + 4))
  {
    goto LABEL_17;
  }

  if (v9)
  {
    v28 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    v29 = *(v28 + 23);
    v30 = *(v28 + 8);
    if ((v29 & 0x80u) == 0)
    {
      v30 = v29;
    }

    v3 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v9 & 2) == 0)
    {
LABEL_10:
      if ((v9 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_104;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_10;
  }

  v31 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
  v32 = *(v31 + 23);
  v33 = *(v31 + 8);
  if ((v32 & 0x80u) == 0)
  {
    v33 = v32;
  }

  v3 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 4) == 0)
  {
LABEL_11:
    if ((v9 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_107;
  }

LABEL_104:
  v34 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
  v35 = *(v34 + 23);
  v36 = *(v34 + 8);
  if ((v35 & 0x80u) == 0)
  {
    v36 = v35;
  }

  v3 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 8) == 0)
  {
LABEL_12:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_110;
  }

LABEL_107:
  v37 = *(this + 10) & 0xFFFFFFFFFFFFFFFELL;
  v38 = *(v37 + 23);
  v39 = *(v37 + 8);
  if ((v38 & 0x80u) == 0)
  {
    v39 = v38;
  }

  v3 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x10) == 0)
  {
LABEL_13:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_111:
    v41 = TSP::Color::ByteSizeLong(*(this + 12));
    v3 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x40) == 0)
    {
LABEL_15:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_112;
  }

LABEL_110:
  v40 = TSP::Color::ByteSizeLong(*(this + 11));
  v3 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v9 & 0x20) != 0)
  {
    goto LABEL_111;
  }

LABEL_14:
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_112:
  v42 = TSD::ShadowArchive::ByteSizeLong(*(this + 13));
  v3 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x80) != 0)
  {
LABEL_16:
    v10 = TSP::Color::ByteSizeLong(*(this + 14));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_17:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v9 & 0x100) != 0)
  {
    v43 = TSP::Color::ByteSizeLong(*(this + 15));
    v3 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x200) == 0)
    {
LABEL_20:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_21;
      }

LABEL_116:
      v45 = TSD::StrokeArchive::ByteSizeLong(*(this + 17));
      v3 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v9 & 0x800) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v44 = TSP::Color::ByteSizeLong(*(this + 16));
  v3 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x400) != 0)
  {
    goto LABEL_116;
  }

LABEL_21:
  if ((v9 & 0x800) != 0)
  {
LABEL_22:
    v11 = TSD::FillArchive::ByteSizeLong(*(this + 18));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_23:
  v12 = v3 + 5;
  if ((v9 & 0x1000) == 0)
  {
    v12 = v3;
  }

  v3 = v12 + ((v9 >> 13) & 2) + ((v9 >> 12) & 2) + ((v9 >> 14) & 2);
LABEL_26:
  if ((v9 & 0xFF0000) == 0)
  {
    goto LABEL_45;
  }

  v13 = v3 + ((v9 >> 15) & 2);
  if ((v9 & 0x20000) != 0)
  {
    v46 = *(this + 40);
    v47 = ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v46 >= 0)
    {
      v48 = v47;
    }

    else
    {
      v48 = 11;
    }

    v13 += v48;
    if ((v9 & 0x40000) == 0)
    {
LABEL_29:
      if ((v9 & 0x80000) == 0)
      {
        goto LABEL_30;
      }

LABEL_126:
      v52 = *(this + 42);
      v53 = ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v52 >= 0)
      {
        v54 = v53;
      }

      else
      {
        v54 = 11;
      }

      v13 += v54;
      if ((v9 & 0x100000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }
  }

  else if ((v9 & 0x40000) == 0)
  {
    goto LABEL_29;
  }

  v49 = *(this + 41);
  v50 = ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v49 >= 0)
  {
    v51 = v50;
  }

  else
  {
    v51 = 11;
  }

  v13 += v51;
  if ((v9 & 0x80000) != 0)
  {
    goto LABEL_126;
  }

LABEL_30:
  if ((v9 & 0x100000) != 0)
  {
LABEL_31:
    v14 = *(this + 43);
    v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v14 >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 11;
    }

    v13 += v16;
  }

LABEL_35:
  if ((v9 & 0x200000) != 0)
  {
    v13 += 5;
  }

  if ((v9 & 0x400000) != 0)
  {
    v3 = v13 + 5;
  }

  else
  {
    v3 = v13;
  }

  if ((v9 & 0x800000) != 0)
  {
    v17 = *(this + 46);
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

LABEL_45:
  if (BYTE3(v9))
  {
    v20 = v3 + ((v9 >> 23) & 2);
    if ((v9 & 0x2000000) != 0)
    {
      v20 += 3;
    }

    if ((v9 & 0x4000000) != 0)
    {
      v20 += 3;
    }

    if ((v9 & 0x8000000) != 0)
    {
      v20 += 3;
    }

    if ((v9 & 0x10000000) != 0)
    {
      v20 += 6;
    }

    if ((v9 & 0x20000000) != 0)
    {
      v20 += 6;
    }

    if ((v9 & 0x40000000) != 0)
    {
      v20 += 6;
    }

    if ((v9 & 0x80000000) == 0)
    {
      v3 = v20;
    }

    else
    {
      v3 = v20 + 3;
    }
  }

  v21 = *(this + 5);
  if (v21)
  {
    v22 = v3 + 3;
    if ((v21 & 1) == 0)
    {
      v22 = v3;
    }

    if ((v21 & 2) != 0)
    {
      v22 += 3;
    }

    if ((v21 & 4) != 0)
    {
      v22 += 3;
    }

    if ((v21 & 8) != 0)
    {
      v22 += 6;
    }

    if ((v21 & 0x10) != 0)
    {
      v22 += 3;
    }

    if ((v21 & 0x20) != 0)
    {
      v22 += 3;
    }

    if ((v21 & 0x40) != 0)
    {
      v22 += 3;
    }

    if ((v21 & 0x80) != 0)
    {
      v3 = v22 + 3;
    }

    else
    {
      v3 = v22;
    }
  }

  if ((v21 & 0x3F00) != 0)
  {
    v23 = v3 + 3;
    if ((v21 & 0x100) == 0)
    {
      v23 = v3;
    }

    if ((v21 & 0x200) != 0)
    {
      v23 += 3;
    }

    if ((v21 & 0x400) != 0)
    {
      v23 += 3;
    }

    if ((v21 & 0x800) != 0)
    {
      v23 += 3;
    }

    if ((v21 & 0x1000) != 0)
    {
      v3 = v23 + 3;
    }

    else
    {
      v3 = v23;
    }

    if ((v21 & 0x2000) != 0)
    {
      v24 = *(this + 56);
      v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v24 >= 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 12;
      }

      v3 += v26;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 24);
  }

  else
  {
    *(this + 6) = v3;
    return v3;
  }
}

uint64_t TSWP::CharacterStylePropertiesArchive::MergeFrom(TSWP::CharacterStylePropertiesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::CharacterStylePropertiesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::CharacterStylePropertiesArchive::MergeFrom(uint64_t this, const TSWP::CharacterStylePropertiesArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    v6 = *(a2 + 6);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 32));
    this = sub_276EA5674(v3 + 32, v7, (v6 + 8), v5, **(v3 + 48) - *(v3 + 40));
    v8 = *(v3 + 40) + v5;
    *(v3 + 40) = v8;
    v9 = *(v3 + 48);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if (!v10)
  {
    goto LABEL_53;
  }

  if (v10)
  {
    *(v3 + 16) |= 1u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v10 & 2) == 0)
    {
LABEL_9:
      if ((v10 & 4) == 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      *(v3 + 16) |= 4u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v10 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_9;
  }

  *(v3 + 16) |= 2u;
  this = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v10 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v10 & 8) != 0)
  {
LABEL_15:
    *(v3 + 16) |= 8u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
  }

LABEL_16:
  v11 = MEMORY[0x277D809E8];
  if ((v10 & 0x10) == 0)
  {
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    *(v3 + 16) |= 0x20u;
    v15 = *(v3 + 96);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277CA3210](v16);
      *(v3 + 96) = v15;
    }

    if (*(a2 + 12))
    {
      v17 = *(a2 + 12);
    }

    else
    {
      v17 = v11;
    }

    this = TSP::Color::MergeFrom(v15, v17);
    if ((v10 & 0x40) == 0)
    {
LABEL_19:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_45;
    }

    goto LABEL_37;
  }

  *(v3 + 16) |= 0x10u;
  v12 = *(v3 + 88);
  if (!v12)
  {
    v13 = *(v3 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x277CA3210](v13);
    *(v3 + 88) = v12;
  }

  if (*(a2 + 11))
  {
    v14 = *(a2 + 11);
  }

  else
  {
    v14 = v11;
  }

  this = TSP::Color::MergeFrom(v12, v14);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_37:
  *(v3 + 16) |= 0x40u;
  v18 = *(v3 + 104);
  if (!v18)
  {
    v19 = *(v3 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = MEMORY[0x277CA3140](v19);
    *(v3 + 104) = v18;
  }

  if (*(a2 + 13))
  {
    v20 = *(a2 + 13);
  }

  else
  {
    v20 = MEMORY[0x277D80498];
  }

  this = TSD::ShadowArchive::MergeFrom(v18, v20);
  if ((v10 & 0x80) != 0)
  {
LABEL_45:
    *(v3 + 16) |= 0x80u;
    v21 = *(v3 + 112);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x277CA3210](v22);
      *(v3 + 112) = v21;
    }

    if (*(a2 + 14))
    {
      v23 = *(a2 + 14);
    }

    else
    {
      v23 = v11;
    }

    this = TSP::Color::MergeFrom(v21, v23);
  }

LABEL_53:
  if ((v10 & 0xFF00) == 0)
  {
    goto LABEL_64;
  }

  if ((v10 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v25 = *(v3 + 120);
    if (!v25)
    {
      v26 = *(v3 + 8);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x277CA3210](v26);
      *(v3 + 120) = v25;
    }

    if (*(a2 + 15))
    {
      v27 = *(a2 + 15);
    }

    else
    {
      v27 = MEMORY[0x277D809E8];
    }

    this = TSP::Color::MergeFrom(v25, v27);
    if ((v10 & 0x200) == 0)
    {
LABEL_56:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_122;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_56;
  }

  *(v3 + 16) |= 0x200u;
  v28 = *(v3 + 128);
  if (!v28)
  {
    v29 = *(v3 + 8);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    v28 = MEMORY[0x277CA3210](v29);
    *(v3 + 128) = v28;
  }

  if (*(a2 + 16))
  {
    v30 = *(a2 + 16);
  }

  else
  {
    v30 = MEMORY[0x277D809E8];
  }

  this = TSP::Color::MergeFrom(v28, v30);
  if ((v10 & 0x400) == 0)
  {
LABEL_57:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_130;
  }

LABEL_122:
  *(v3 + 16) |= 0x400u;
  v31 = *(v3 + 136);
  if (!v31)
  {
    v32 = *(v3 + 8);
    if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    v31 = MEMORY[0x277CA3150](v32);
    *(v3 + 136) = v31;
  }

  if (*(a2 + 17))
  {
    v33 = *(a2 + 17);
  }

  else
  {
    v33 = MEMORY[0x277D804A0];
  }

  this = TSD::StrokeArchive::MergeFrom(v31, v33);
  if ((v10 & 0x800) == 0)
  {
LABEL_58:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_138;
  }

LABEL_130:
  *(v3 + 16) |= 0x800u;
  v34 = *(v3 + 144);
  if (!v34)
  {
    v35 = *(v3 + 8);
    if (v35)
    {
      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
    }

    v34 = MEMORY[0x277CA3120](v35);
    *(v3 + 144) = v34;
  }

  if (*(a2 + 18))
  {
    v36 = *(a2 + 18);
  }

  else
  {
    v36 = MEMORY[0x277D80488];
  }

  this = TSD::FillArchive::MergeFrom(v34, v36);
  if ((v10 & 0x1000) == 0)
  {
LABEL_59:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_139;
  }

LABEL_138:
  *(v3 + 152) = *(a2 + 38);
  if ((v10 & 0x2000) == 0)
  {
LABEL_60:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_61;
    }

LABEL_140:
    *(v3 + 157) = *(a2 + 157);
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_139:
  *(v3 + 156) = *(a2 + 156);
  if ((v10 & 0x4000) != 0)
  {
    goto LABEL_140;
  }

LABEL_61:
  if ((v10 & 0x8000) != 0)
  {
LABEL_62:
    *(v3 + 158) = *(a2 + 158);
  }

LABEL_63:
  *(v3 + 16) |= v10;
LABEL_64:
  if ((v10 & 0xFF0000) == 0)
  {
    goto LABEL_75;
  }

  if ((v10 & 0x10000) != 0)
  {
    *(v3 + 159) = *(a2 + 159);
    if ((v10 & 0x20000) == 0)
    {
LABEL_67:
      if ((v10 & 0x40000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_144;
    }
  }

  else if ((v10 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  *(v3 + 160) = *(a2 + 40);
  if ((v10 & 0x40000) == 0)
  {
LABEL_68:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_145;
  }

LABEL_144:
  *(v3 + 164) = *(a2 + 41);
  if ((v10 & 0x80000) == 0)
  {
LABEL_69:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_146;
  }

LABEL_145:
  *(v3 + 168) = *(a2 + 42);
  if ((v10 & 0x100000) == 0)
  {
LABEL_70:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_147;
  }

LABEL_146:
  *(v3 + 172) = *(a2 + 43);
  if ((v10 & 0x200000) == 0)
  {
LABEL_71:
    if ((v10 & 0x400000) == 0)
    {
      goto LABEL_72;
    }

LABEL_148:
    *(v3 + 180) = *(a2 + 45);
    if ((v10 & 0x800000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_147:
  *(v3 + 176) = *(a2 + 44);
  if ((v10 & 0x400000) != 0)
  {
    goto LABEL_148;
  }

LABEL_72:
  if ((v10 & 0x800000) != 0)
  {
LABEL_73:
    *(v3 + 184) = *(a2 + 46);
  }

LABEL_74:
  *(v3 + 16) |= v10;
LABEL_75:
  if (!HIBYTE(v10))
  {
    goto LABEL_85;
  }

  if ((v10 & 0x1000000) != 0)
  {
    *(v3 + 188) = *(a2 + 188);
    if ((v10 & 0x2000000) == 0)
    {
LABEL_78:
      if ((v10 & 0x4000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_166;
    }
  }

  else if ((v10 & 0x2000000) == 0)
  {
    goto LABEL_78;
  }

  *(v3 + 189) = *(a2 + 189);
  if ((v10 & 0x4000000) == 0)
  {
LABEL_79:
    if ((v10 & 0x8000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_167;
  }

LABEL_166:
  *(v3 + 190) = *(a2 + 190);
  if ((v10 & 0x8000000) == 0)
  {
LABEL_80:
    if ((v10 & 0x10000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_168;
  }

LABEL_167:
  *(v3 + 191) = *(a2 + 191);
  if ((v10 & 0x10000000) == 0)
  {
LABEL_81:
    if ((v10 & 0x20000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_169;
  }

LABEL_168:
  *(v3 + 192) = *(a2 + 48);
  if ((v10 & 0x20000000) == 0)
  {
LABEL_82:
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_83;
    }

LABEL_170:
    *(v3 + 200) = *(a2 + 50);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

LABEL_171:
    *(v3 + 204) = *(a2 + 204);
    goto LABEL_84;
  }

LABEL_169:
  *(v3 + 196) = *(a2 + 49);
  if ((v10 & 0x40000000) != 0)
  {
    goto LABEL_170;
  }

LABEL_83:
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_171;
  }

LABEL_84:
  *(v3 + 16) |= v10;
LABEL_85:
  v24 = *(a2 + 5);
  if (!v24)
  {
    goto LABEL_96;
  }

  if (v24)
  {
    *(v3 + 205) = *(a2 + 205);
    if ((v24 & 2) == 0)
    {
LABEL_88:
      if ((v24 & 4) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_152;
    }
  }

  else if ((v24 & 2) == 0)
  {
    goto LABEL_88;
  }

  *(v3 + 206) = *(a2 + 206);
  if ((v24 & 4) == 0)
  {
LABEL_89:
    if ((v24 & 8) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_153;
  }

LABEL_152:
  *(v3 + 207) = *(a2 + 207);
  if ((v24 & 8) == 0)
  {
LABEL_90:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_154;
  }

LABEL_153:
  *(v3 + 208) = *(a2 + 52);
  if ((v24 & 0x10) == 0)
  {
LABEL_91:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_155;
  }

LABEL_154:
  *(v3 + 212) = *(a2 + 212);
  if ((v24 & 0x20) == 0)
  {
LABEL_92:
    if ((v24 & 0x40) == 0)
    {
      goto LABEL_93;
    }

LABEL_156:
    *(v3 + 214) = *(a2 + 214);
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_155:
  *(v3 + 213) = *(a2 + 213);
  if ((v24 & 0x40) != 0)
  {
    goto LABEL_156;
  }

LABEL_93:
  if ((v24 & 0x80) != 0)
  {
LABEL_94:
    *(v3 + 215) = *(a2 + 215);
  }

LABEL_95:
  *(v3 + 20) |= v24;
LABEL_96:
  if ((v24 & 0x3F00) == 0)
  {
    return this;
  }

  if ((v24 & 0x100) != 0)
  {
    *(v3 + 216) = *(a2 + 216);
    if ((v24 & 0x200) == 0)
    {
LABEL_99:
      if ((v24 & 0x400) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_160;
    }
  }

  else if ((v24 & 0x200) == 0)
  {
    goto LABEL_99;
  }

  *(v3 + 217) = *(a2 + 217);
  if ((v24 & 0x400) == 0)
  {
LABEL_100:
    if ((v24 & 0x800) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(v3 + 218) = *(a2 + 218);
  if ((v24 & 0x800) == 0)
  {
LABEL_101:
    if ((v24 & 0x1000) == 0)
    {
      goto LABEL_102;
    }

LABEL_162:
    *(v3 + 220) = *(a2 + 220);
    if ((v24 & 0x2000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

LABEL_161:
  *(v3 + 219) = *(a2 + 219);
  if ((v24 & 0x1000) != 0)
  {
    goto LABEL_162;
  }

LABEL_102:
  if ((v24 & 0x2000) != 0)
  {
LABEL_103:
    *(v3 + 224) = *(a2 + 56);
  }

LABEL_104:
  *(v3 + 20) |= v24;
  return this;
}

uint64_t *TSWP::CharacterStylePropertiesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::CharacterStylePropertiesArchive::Clear(this);

    return TSWP::CharacterStylePropertiesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::CharacterStylePropertiesArchive::CopyFrom(uint64_t *this, const TSWP::CharacterStylePropertiesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::CharacterStylePropertiesArchive::Clear(this);

    return TSWP::CharacterStylePropertiesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::CharacterStylePropertiesArchive::IsInitialized(TSWP::CharacterStylePropertiesArchive *this)
{
  v2 = *(this + 10);
  while (v2 >= 1)
  {
    v3 = *(*(this + 6) + 8 * v2--);
    if ((~*(v3 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v5 = *(this + 4);
  if ((v5 & 0x10) != 0)
  {
    result = TSP::Color::IsInitialized(*(this + 11));
    if (!result)
    {
      return result;
    }

    v5 = *(this + 4);
  }

  if ((v5 & 0x20) != 0)
  {
    result = TSP::Color::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v5 = *(this + 4);
  }

  if ((v5 & 0x40) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(this + 13));
    if (!result)
    {
      return result;
    }

    v5 = *(this + 4);
  }

  if ((v5 & 0x80) != 0)
  {
    result = TSP::Color::IsInitialized(*(this + 14));
    if (!result)
    {
      return result;
    }

    v5 = *(this + 4);
  }

  if ((v5 & 0x100) != 0)
  {
    result = TSP::Color::IsInitialized(*(this + 15));
    if (!result)
    {
      return result;
    }

    v5 = *(this + 4);
  }

  if ((v5 & 0x200) != 0)
  {
    result = TSP::Color::IsInitialized(*(this + 16));
    if (!result)
    {
      return result;
    }

    v5 = *(this + 4);
  }

  if ((v5 & 0x400) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(this + 17));
    if (!result)
    {
      return result;
    }

    v5 = *(this + 4);
  }

  if ((v5 & 0x800) == 0)
  {
    return 1;
  }

  result = TSD::FillArchive::IsInitialized(*(this + 18));
  if (result)
  {
    return 1;
  }

  return result;
}

void TSWP::CharacterStylePropertiesArchive::InternalSwap(TSWP::CharacterStylePropertiesArchive *this, TSWP::CharacterStylePropertiesArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 5);
  v7 = *(this + 6);
  *(this + 40) = *(a2 + 40);
  *(a2 + 5) = v6;
  *(a2 + 6) = v7;
  v8 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v10;
  v11 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v11;
  v12 = *(this + 11);
  v13 = *(this + 12);
  *(this + 88) = *(a2 + 88);
  *(a2 + 11) = v12;
  *(a2 + 12) = v13;
  v14 = *(this + 13);
  v15 = *(this + 14);
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v14;
  *(a2 + 14) = v15;
  v16 = *(this + 15);
  v17 = *(this + 16);
  *(this + 120) = *(a2 + 120);
  *(a2 + 15) = v16;
  *(a2 + 16) = v17;
  sub_276EA5734(this + 17, a2 + 136);
  v18 = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v18;
}

TSS::StyleArchive *TSWP::CharacterStyleArchive::clear_super(TSWP::CharacterStyleArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSS::StyleArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWP::CharacterStyleArchive *TSWP::CharacterStyleArchive::CharacterStyleArchive(TSWP::CharacterStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288600680;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CharacterStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_288600680;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CharacterStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TSWP::CharacterStyleArchive *TSWP::CharacterStyleArchive::CharacterStyleArchive(TSWP::CharacterStyleArchive *this, const TSWP::CharacterStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288600680;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  return this;
}

void TSWP::CharacterStyleArchive::~CharacterStyleArchive(TSWP::CharacterStyleArchive *this)
{
  if (this != &TSWP::_CharacterStyleArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277CA2C50]();
      MEMORY[0x277CA3D00](v2, 0x10A1C40AC828A93);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSWP::CharacterStylePropertiesArchive::~CharacterStylePropertiesArchive(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::CharacterStyleArchive::~CharacterStyleArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::CharacterStyleArchive::default_instance(TSWP::CharacterStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_CharacterStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_CharacterStyleArchive_default_instance_;
}

uint64_t *TSWP::CharacterStyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSS::StyleArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSWP::CharacterStylePropertiesArchive::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::CharacterStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v27) & 1) == 0)
  {
    while (1)
    {
      v7 = (v27 + 1);
      v8 = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
      v27 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 11)
      {
        if (v8 != 90)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 2u;
        v17 = *(a1 + 32);
        if (!v17)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = google::protobuf::Arena::CreateMaybeMessage<TSWP::CharacterStylePropertiesArchive>(v18);
          LODWORD(v17) = v19;
          *(a1 + 32) = v19;
          v7 = v27;
        }

        sub_276F514D4(a3, v17, v7);
LABEL_36:
        v27 = v13;
        if (!v13)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (v10 != 10)
      {
        if (v10 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v20 = *(a1 + 24);
          if (!v20)
          {
            v21 = *(a1 + 8);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v22 = MEMORY[0x277CA3260](v21);
            LODWORD(v20) = v22;
            *(a1 + 24) = v22;
            v7 = v27;
          }

          v13 = sub_276F51404(a3, v20, v7);
        }

        else
        {
LABEL_13:
          if (v8)
          {
            v12 = (v8 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        goto LABEL_36;
      }

      if (v8 != 80)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v14 = (v7 + 1);
      LODWORD(v15) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v16 = *v14;
      v15 = (v15 + (v16 << 7) - 128);
      if ((v16 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_24:
        v27 = v14;
        *(a1 + 40) = v15;
        goto LABEL_37;
      }

      v25 = google::protobuf::internal::VarintParseSlow32(v7, v15);
      v27 = v25;
      *(a1 + 40) = v26;
      if (!v25)
      {
LABEL_44:
        v27 = 0;
        goto LABEL_2;
      }

LABEL_37:
      if (sub_276EA4A1C(a3, &v27))
      {
        goto LABEL_2;
      }
    }

    v7 = (v27 + 2);
LABEL_6:
    v27 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

unsigned __int8 *TSWP::CharacterStyleArchive::_InternalSerialize(TSWP::CharacterStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 3);
    *a2 = 10;
    v10 = *(v9 + 5);
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v13 = v10 >> 7;
      if (v10 >> 14)
      {
        v11 = a2 + 3;
        do
        {
          *(v11 - 1) = v13 | 0x80;
          v18 = v13 >> 7;
          ++v11;
          v19 = v13 >> 14;
          v13 >>= 7;
        }

        while (v19);
        *(v11 - 1) = v18;
      }

      else
      {
        a2[2] = v13;
        v11 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v10;
      v11 = a2 + 2;
    }

    a2 = TSS::StyleArchive::_InternalSerialize(v9, v11, a3);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 10);
  *a2 = 80;
  if (v20 > 0x7F)
  {
    a2[1] = v20 | 0x80;
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
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      a2[2] = v21;
      a2 += 3;
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    a2[1] = v20;
    a2 += 2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 4);
  *a2 = 90;
  v7 = *(v6 + 6);
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v12 = v7 >> 7;
    if (v7 >> 14)
    {
      v8 = a2 + 3;
      do
      {
        *(v8 - 1) = v12 | 0x80;
        v14 = v12 >> 7;
        ++v8;
        v15 = v12 >> 14;
        v12 >>= 7;
      }

      while (v15);
      *(v8 - 1) = v14;
    }

    else
    {
      a2[2] = v12;
      v8 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v7;
    v8 = a2 + 2;
  }

  a2 = TSWP::CharacterStylePropertiesArchive::_InternalSerialize(v6, v8, a3);
LABEL_20:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::CharacterStyleArchive::ByteSizeLong(TSWP::CharacterStyleArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSS::StyleArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 6) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = TSWP::CharacterStylePropertiesArchive::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSWP::CharacterStyleArchive::MergeFrom(TSWP::CharacterStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::CharacterStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::CharacterStyleArchive::MergeFrom(uint64_t this, const TSWP::CharacterStyleArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
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

        v6 = MEMORY[0x277CA3260](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80BD0];
      }

      this = TSS::StyleArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 40) = *(a2 + 10);
        goto LABEL_8;
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

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSWP::CharacterStylePropertiesArchive>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSWP::_CharacterStylePropertiesArchive_default_instance_;
    }

    this = TSWP::CharacterStylePropertiesArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSWP::CharacterStyleArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::CharacterStyleArchive::Clear(this);

    return TSWP::CharacterStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::CharacterStyleArchive::CopyFrom(uint64_t *this, const TSWP::CharacterStyleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::CharacterStyleArchive::Clear(this);

    return TSWP::CharacterStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::CharacterStyleArchive::IsInitialized(TSWP::CharacterStyleArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSWP::CharacterStylePropertiesArchive::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSWP::CharacterStyleArchive::InternalSwap(TSWP::CharacterStyleArchive *this, TSWP::CharacterStyleArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  return result;
}

TSWP::TabArchive *TSWP::TabArchive::TabArchive(TSWP::TabArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288600730;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TabArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  return this;
}

TSWP::TabArchive *TSWP::TabArchive::TabArchive(TSWP::TabArchive *this, const TSWP::TabArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288600730;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  *(this + 4) = *(a2 + 4);
  return this;
}

void TSWP::TabArchive::~TabArchive(TSWP::TabArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::TabArchive::~TabArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::TabArchive::default_instance(TSWP::TabArchive *this)
{
  if (atomic_load_explicit(scc_info_TabArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TabArchive_default_instance_;
}

uint64_t *TSWP::TabArchive::Clear(TSWP::TabArchive *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v1 & 6) != 0)
  {
    *(this + 4) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::TabArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v19) & 1) == 0)
  {
    while (1)
    {
      v7 = (v19 + 1);
      v8 = *v19;
      if ((*v19 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v9 - 128));
      v19 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_40;
      }

      v7 = TagFallback;
      v8 = v18;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 26)
        {
          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v13 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_29;
        }
      }

      else if (v10 == 2)
      {
        if (v8 == 16)
        {
          v15 = (v7 + 1);
          v14 = *v7;
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v16 = *v15;
          v14 = (v16 << 7) + v14 - 128;
          if (v16 < 0)
          {
            v19 = google::protobuf::internal::VarintParseSlow64(v7, v14);
            if (!v19)
            {
LABEL_40:
              v19 = 0;
              goto LABEL_2;
            }
          }

          else
          {
            v15 = (v7 + 2);
LABEL_24:
            v19 = v15;
          }

          if (v14 > 3)
          {
            sub_276F53EDC();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 36) = v14;
          }

          goto LABEL_32;
        }
      }

      else if (v10 == 1 && v8 == 13)
      {
        v5 |= 2u;
        *(a1 + 32) = *v7;
        v19 = (v7 + 4);
        goto LABEL_32;
      }

      if (v8)
      {
        v12 = (v8 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        *(a3 + 80) = v8 - 1;
        goto LABEL_2;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276EA4A94((a1 + 8));
      }

      v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_29:
      v19 = v13;
      if (!v13)
      {
        goto LABEL_40;
      }

LABEL_32:
      if (sub_276EA4A1C(a3, &v19))
      {
        goto LABEL_2;
      }
    }

    v7 = (v19 + 2);
LABEL_6:
    v19 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v19;
}

unsigned __int8 *TSWP::TabArchive::_InternalSerialize(TSWP::TabArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 8);
    *v4 = 13;
    *(v4 + 1) = v9;
    v4 += 5;
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v10 = *(this + 9);
  *v4 = 16;
  if (v10 <= 0x7F)
  {
    v4[1] = v10;
    v4 += 2;
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_4:
    v4 = sub_276E5154C(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
    goto LABEL_5;
  }

  v4[1] = v10 | 0x80;
  v11 = v10 >> 7;
  if (v10 >> 14)
  {
    v4 += 3;
    do
    {
      *(v4 - 1) = v11 | 0x80;
      v12 = v11 >> 7;
      ++v4;
      v13 = v11 >> 14;
      v11 >>= 7;
    }

    while (v13);
    *(v4 - 1) = v12;
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4[2] = v11;
    v4 += 3;
    if (v6)
    {
      goto LABEL_4;
    }
  }

LABEL_5:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TabArchive::ByteSizeLong(TSWP::TabArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 7) != 0)
  {
    if (v1)
    {
      v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = v2 + 5;
    }

    else
    {
      v3 = v2;
    }

    if ((v1 & 4) != 0)
    {
      v7 = *(this + 9);
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v7 >= 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 11;
      }

      v3 += v9;
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSWP::TabArchive::MergeFrom(TSWP::TabArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TabArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TabArchive::MergeFrom(uint64_t this, const TSWP::TabArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v3[4] |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          v3[4] |= v5;
          return this;
        }

LABEL_7:
        v3[9] = *(a2 + 9);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[8] = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

TSWP::TabArchive *TSWP::TabArchive::CopyFrom(TSWP::TabArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TabArchive::Clear(this);

    return TSWP::TabArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::TabArchive *TSWP::TabArchive::CopyFrom(TSWP::TabArchive *this, const TSWP::TabArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TabArchive::Clear(this);

    return TSWP::TabArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TabArchive::InternalSwap(TSWP::TabArchive *this, TSWP::TabArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  return result;
}

TSWP::TabsArchive *TSWP::TabsArchive::TabsArchive(TSWP::TabsArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886007E0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_TabsArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSWP::TabsArchive *TSWP::TabsArchive::TabsArchive(TSWP::TabsArchive *this, const TSWP::TabsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2886007E0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_276EA582C(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_276EA4CDC(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSWP::TabsArchive::~TabsArchive(TSWP::TabsArchive *this)
{
  sub_276E4E808(this + 1);
  sub_276EA57A8(this + 2);
}

{
  TSWP::TabsArchive::~TabsArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::TabsArchive::default_instance(TSWP::TabsArchive *this)
{
  if (atomic_load_explicit(scc_info_TabsArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TabsArchive_default_instance_;
}

uint64_t *TSWP::TabsArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::TabArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_276EA4D28(v5);
  }

  return this;
}

google::protobuf::internal *TSWP::TabsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_276EA4A1C(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v5 = (v20 + 1);
      v6 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v18;
LABEL_6:
      if (v6 == 10)
      {
        v9 = (v5 - 1);
        while (1)
        {
          v10 = (v9 + 1);
          v20 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v16 = *(a1 + 24);
          v12 = *v11;
          if (v16 < *v11)
          {
            *(a1 + 24) = v16 + 1;
            v13 = *&v11[2 * v16 + 2];
            goto LABEL_22;
          }

          if (v12 == *(a1 + 28))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v11 = *(a1 + 32);
            v12 = *v11;
          }

          *v11 = v12 + 1;
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TabArchive>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_276F515A4(a3, v13, v10);
          v20 = v9;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 10)
          {
            goto LABEL_14;
          }
        }
      }

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
        return v20;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276EA4A94((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_276EA4A1C(a3, &v20))
      {
        return v20;
      }
    }

    v5 = (v20 + 2);
LABEL_5:
    v20 = v5;
    goto LABEL_6;
  }

  return v20;
}

unsigned __int8 *TSWP::TabsArchive::_InternalSerialize(TSWP::TabsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v8 = *(v7 + 5);
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = a2 + 3;
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
          a2[2] = v10;
          v9 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v8;
        v9 = a2 + 2;
      }

      a2 = TSWP::TabArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TabsArchive::ByteSizeLong(TSWP::TabsArchive *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSWP::TabArchive::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 40);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

uint64_t TSWP::TabsArchive::MergeFrom(TSWP::TabsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TabsArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TabsArchive::MergeFrom(uint64_t this, const TSWP::TabsArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_276EA582C(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return this;
}

uint64_t *TSWP::TabsArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TabsArchive::Clear(this);

    return TSWP::TabsArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TabsArchive::CopyFrom(uint64_t *this, const TSWP::TabsArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TabsArchive::Clear(this);

    return TSWP::TabsArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSWP::TabsArchive::InternalSwap(TSWP::TabsArchive *this, TSWP::TabsArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t TSWP::LineSpacingArchive::LineSpacingArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288600890;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

{
  *result = &unk_288600890;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

TSWP::LineSpacingArchive *TSWP::LineSpacingArchive::LineSpacingArchive(TSWP::LineSpacingArchive *this, const TSWP::LineSpacingArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288600890;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 3) = v6;
  return this;
}

void TSWP::LineSpacingArchive::~LineSpacingArchive(TSWP::LineSpacingArchive *this)
{
  sub_276E4E808(this + 1);
}

{
  sub_276E4E808(this + 1);
}

{
  sub_276E4E808(this + 1);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::LineSpacingArchive::default_instance(TSWP::LineSpacingArchive *this)
{
  if (atomic_load_explicit(scc_info_LineSpacingArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_LineSpacingArchive_default_instance_;
}

uint64_t *TSWP::LineSpacingArchive::Clear(TSWP::LineSpacingArchive *this)
{
  if ((*(this + 16) & 7) != 0)
  {
    *(this + 8) = 0;
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::LineSpacingArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v21) & 1) == 0)
  {
    while (1)
    {
      v7 = (v21 + 1);
      v8 = *v21;
      if ((*v21 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v9 - 128));
      v21 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_40;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 29)
        {
          v15 = *v7;
          v13 = (v7 + 4);
          v5 |= 4u;
          *(a1 + 32) = v15;
          goto LABEL_25;
        }
      }

      else if (v10 == 2)
      {
        if (v8 == 21)
        {
          v14 = *v7;
          v13 = (v7 + 4);
          v5 |= 2u;
          *(a1 + 28) = v14;
LABEL_25:
          v21 = v13;
          goto LABEL_32;
        }
      }

      else if (v10 == 1 && v8 == 8)
      {
        v17 = (v7 + 1);
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if (v18 < 0)
        {
          v21 = google::protobuf::internal::VarintParseSlow64(v7, v16);
          if (!v21)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v17 = (v7 + 2);
LABEL_29:
          v21 = v17;
        }

        if (v16 > 4)
        {
          sub_276F53EA8();
        }

        else
        {
          *(a1 + 16) |= 1u;
          *(a1 + 24) = v16;
        }

        goto LABEL_32;
      }

      if (v8)
      {
        v12 = (v8 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        *(a3 + 80) = v8 - 1;
        goto LABEL_2;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276EA4A94((a1 + 8));
      }

      v21 = google::protobuf::internal::UnknownFieldParse();
      if (!v21)
      {
LABEL_40:
        v21 = 0;
        goto LABEL_2;
      }

LABEL_32:
      if (sub_276EA4A1C(a3, &v21))
      {
        goto LABEL_2;
      }
    }

    v7 = (v21 + 2);
LABEL_6:
    v21 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v21;
}

unsigned __int8 *TSWP::LineSpacingArchive::_InternalSerialize(TSWP::LineSpacingArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
        if ((v5 & 2) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_3:
    if ((v5 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_16:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(this + 7);
  *a2 = 21;
  *(a2 + 1) = v10;
  a2 += 5;
  if ((v5 & 4) != 0)
  {
LABEL_19:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(this + 8);
    *a2 = 29;
    *(a2 + 1) = v11;
    a2 += 5;
  }

LABEL_22:
  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::LineSpacingArchive::ByteSizeLong(TSWP::LineSpacingArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 7) != 0)
  {
    if (v1)
    {
      v4 = *(this + 6);
      if (v4 < 0)
      {
        v2 = 11;
      }

      else
      {
        v2 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v3 = v2 + 5;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSWP::LineSpacingArchive::MergeFrom(TSWP::LineSpacingArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::LineSpacingArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::LineSpacingArchive::MergeFrom(uint64_t this, const TSWP::LineSpacingArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v3[6] = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          v3[4] |= v5;
          return this;
        }

LABEL_7:
        v3[8] = *(a2 + 8);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[7] = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

TSWP::LineSpacingArchive *TSWP::LineSpacingArchive::CopyFrom(TSWP::LineSpacingArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::LineSpacingArchive::Clear(this);

    return TSWP::LineSpacingArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::LineSpacingArchive *TSWP::LineSpacingArchive::CopyFrom(TSWP::LineSpacingArchive *this, const TSWP::LineSpacingArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::LineSpacingArchive::Clear(this);

    return TSWP::LineSpacingArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::LineSpacingArchive::InternalSwap(TSWP::LineSpacingArchive *this, TSWP::LineSpacingArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

TSP::Color *TSWP::ParagraphStylePropertiesArchive::clear_fill(TSWP::ParagraphStylePropertiesArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Point *TSWP::ParagraphStylePropertiesArchive::clear_historical_rule_offset(TSWP::ParagraphStylePropertiesArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSD::StrokeArchive *TSWP::ParagraphStylePropertiesArchive::clear_stroke(TSWP::ParagraphStylePropertiesArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSD::StrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSP::Reference *TSWP::ParagraphStylePropertiesArchive::clear_list_style(TSWP::ParagraphStylePropertiesArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSP::Reference *TSWP::ParagraphStylePropertiesArchive::clear_following_style(TSWP::ParagraphStylePropertiesArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSWP::ParagraphStylePropertiesArchive *TSWP::ParagraphStylePropertiesArchive::ParagraphStylePropertiesArchive(TSWP::ParagraphStylePropertiesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288600940;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 6) = 0;
  if (atomic_load_explicit(scc_info_ParagraphStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = MEMORY[0x277D80A90];
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 164) = 0u;
  *(this + 45) = -1;
  return this;
}

TSWP::ParagraphStylePropertiesArchive *TSWP::ParagraphStylePropertiesArchive::ParagraphStylePropertiesArchive(TSWP::ParagraphStylePropertiesArchive *this, const TSWP::ParagraphStylePropertiesArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288600940;
  *(this + 2) = *(a2 + 2);
  *(this + 6) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_276EA4CDC(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = MEMORY[0x277D80A90];
  *(this + 4) = MEMORY[0x277D80A90];
  v6 = *(a2 + 4);
  if (v6)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v6 = *(a2 + 4);
  }

  *(this + 5) = v5;
  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v6 = *(a2 + 4);
  }

  *(this + 6) = v5;
  if ((v6 & 4) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v6 = *(a2 + 4);
  }

  if ((v6 & 8) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v6 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v6 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v6 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v6 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v6 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v6 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  *(this + 7) = *(a2 + 7);
  v7 = *(a2 + 8);
  v8 = *(a2 + 9);
  v9 = *(a2 + 10);
  *(this + 22) = *(a2 + 22);
  *(this + 9) = v8;
  *(this + 10) = v9;
  *(this + 8) = v7;
  return this;
}

void TSWP::ParagraphStylePropertiesArchive::~ParagraphStylePropertiesArchive(TSWP::ParagraphStylePropertiesArchive *this)
{
  sub_276E5FB40(this);
  sub_276E4E808(this + 1);
}

{
  TSWP::ParagraphStylePropertiesArchive::~ParagraphStylePropertiesArchive(this);

  JUMPOUT(0x277CA3D00);
}

TSP::Reference *sub_276E5FB40(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 4);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 5);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277CA3D00](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 6);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277CA3D00](v5, 0x1012C40EC159624);
  }

  if (v1 != &TSWP::_ParagraphStylePropertiesArchive_default_instance_)
  {
    v6 = *(v1 + 7);
    if (v6)
    {
      TSP::Color::~Color(v6);
      MEMORY[0x277CA3D00]();
    }

    v7 = *(v1 + 8);
    if (v7)
    {
      sub_276E4E808((v7 + 8));
      MEMORY[0x277CA3D00](v7, 0x1081C40B7564605);
    }

    v8 = *(v1 + 9);
    if (v8)
    {
      TSP::Point::~Point(v8);
      MEMORY[0x277CA3D00]();
    }

    v9 = *(v1 + 10);
    if (v9)
    {
      TSWP::TabsArchive::~TabsArchive(v9);
      MEMORY[0x277CA3D00]();
    }

    if (*(v1 + 11))
    {
      v10 = MEMORY[0x277CA26D0]();
      MEMORY[0x277CA3D00](v10, 0x10A1C4078DB9C03);
    }

    v11 = *(v1 + 12);
    if (v11)
    {
      TSP::Reference::~Reference(v11);
      MEMORY[0x277CA3D00]();
    }

    result = *(v1 + 13);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::ParagraphStylePropertiesArchive::default_instance(TSWP::ParagraphStylePropertiesArchive *this)
{
  if (atomic_load_explicit(scc_info_ParagraphStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ParagraphStylePropertiesArchive_default_instance_;
}

uint64_t *TSWP::ParagraphStylePropertiesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_34;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_38:
    v8 = this[6] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_42;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_34:
  v7 = this[5] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_38;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_42:
  this = TSP::Color::Clear(this[7]);
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_44:
    this = TSP::Point::Clear(*(v1 + 72));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_43:
  this = TSWP::LineSpacingArchive::Clear(*(v1 + 64));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_44;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_45:
  this = TSWP::TabsArchive::Clear(*(v1 + 80));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSD::StrokeArchive::Clear(*(v1 + 88));
  }

LABEL_11:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 96));
    }

    if ((v2 & 0x200) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 104));
    }
  }

  if ((v2 & 0xFC00) != 0)
  {
    *(v1 + 120) = 0;
    *(v1 + 112) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 132) = 0;
    *(v1 + 124) = 0;
    *(v1 + 140) = 0;
  }

  if (HIBYTE(v2))
  {
    *(v1 + 144) = 0;
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
  }

  v3 = *(v1 + 20);
  if (v3)
  {
    *(v1 + 171) = 0;
    *(v1 + 164) = 0;
  }

  if ((v3 & 0x300) != 0)
  {
    *(v1 + 176) = 0xFFFFFFFF00000000;
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  v4[1] = 0;
  if (v5)
  {

    return sub_276EA4D28(v4);
  }

  return this;
}

google::protobuf::internal *TSWP::ParagraphStylePropertiesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v164 = a2;
  if ((sub_276EA4A1C(a3, &v164) & 1) == 0)
  {
    while (1)
    {
      v6 = (v164 + 1);
      v7 = *v164;
      if (*v164 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v164, (v8 - 128));
          v164 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          v7 = v13;
          goto LABEL_7;
        }

        v6 = (v164 + 2);
      }

      v164 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 8)
          {
            goto LABEL_210;
          }

          v10 = (v6 + 1);
          v9 = *v6;
          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_12;
          }

          v11 = *v10;
          v9 = (v11 << 7) + v9 - 128;
          if (v11 < 0)
          {
            v164 = google::protobuf::internal::VarintParseSlow64(v6, v9);
            if (!v164)
            {
              return 0;
            }
          }

          else
          {
            v10 = (v6 + 2);
LABEL_12:
            v164 = v10;
          }

          if (v9 > 4)
          {
            sub_276F53EA8();
          }

          else
          {
            *(a1 + 16) |= 0x400u;
            *(a1 + 112) = v9;
          }

          goto LABEL_218;
        case 2u:
          if (v7 != 16)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x1000u;
          v73 = (v6 + 1);
          v72 = *v6;
          if ((v72 & 0x8000000000000000) == 0)
          {
            goto LABEL_126;
          }

          v74 = *v73;
          v72 = (v74 << 7) + v72 - 128;
          if (v74 < 0)
          {
            v146 = google::protobuf::internal::VarintParseSlow64(v6, v72);
            v164 = v146;
            *(a1 + 120) = v147 != 0;
            if (!v146)
            {
              return 0;
            }
          }

          else
          {
            v73 = (v6 + 2);
LABEL_126:
            v164 = v73;
            *(a1 + 120) = v72 != 0;
          }

          goto LABEL_218;
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 1u;
          goto LABEL_209;
        case 4u:
          if (v7 != 37)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x800u;
          v98 = *v6;
          v23 = (v6 + 4);
          *(a1 + 116) = v98;
          goto LABEL_192;
        case 5u:
          if (v7 != 40)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x2000u;
          v64 = (v6 + 1);
          v63 = *v6;
          if ((v63 & 0x8000000000000000) == 0)
          {
            goto LABEL_109;
          }

          v65 = *v64;
          v63 = (v65 << 7) + v63 - 128;
          if (v65 < 0)
          {
            v140 = google::protobuf::internal::VarintParseSlow64(v6, v63);
            v164 = v140;
            *(a1 + 121) = v141 != 0;
            if (!v140)
            {
              return 0;
            }
          }

          else
          {
            v64 = (v6 + 2);
LABEL_109:
            v164 = v64;
            *(a1 + 121) = v63 != 0;
          }

          goto LABEL_218;
        case 6u:
          if (v7 != 50)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 8u;
          v92 = *(a1 + 56);
          if (!v92)
          {
            v93 = *(a1 + 8);
            if (v93)
            {
              v93 = *(v93 & 0xFFFFFFFFFFFFFFFELL);
            }

            v94 = MEMORY[0x277CA3210](v93);
            LODWORD(v92) = v94;
            *(a1 + 56) = v94;
            v6 = v164;
          }

          v43 = sub_276F50FF4(a3, v92, v6);
          goto LABEL_217;
        case 7u:
          if (v7 != 61)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x10000u;
          v59 = *v6;
          v23 = (v6 + 4);
          *(a1 + 124) = v59;
          goto LABEL_192;
        case 8u:
          if (v7 != 64)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x4000u;
          v61 = (v6 + 1);
          v60 = *v6;
          if ((v60 & 0x8000000000000000) == 0)
          {
            goto LABEL_104;
          }

          v62 = *v61;
          v60 = (v62 << 7) + v60 - 128;
          if (v62 < 0)
          {
            v138 = google::protobuf::internal::VarintParseSlow64(v6, v60);
            v164 = v138;
            *(a1 + 122) = v139 != 0;
            if (!v138)
            {
              return 0;
            }
          }

          else
          {
            v61 = (v6 + 2);
LABEL_104:
            v164 = v61;
            *(a1 + 122) = v60 != 0;
          }

          goto LABEL_218;
        case 9u:
          if (v7 != 72)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x8000u;
          v79 = (v6 + 1);
          v78 = *v6;
          if ((v78 & 0x8000000000000000) == 0)
          {
            goto LABEL_136;
          }

          v80 = *v79;
          v78 = (v80 << 7) + v78 - 128;
          if (v80 < 0)
          {
            v150 = google::protobuf::internal::VarintParseSlow64(v6, v78);
            v164 = v150;
            *(a1 + 123) = v151 != 0;
            if (!v150)
            {
              return 0;
            }
          }

          else
          {
            v79 = (v6 + 2);
LABEL_136:
            v164 = v79;
            *(a1 + 123) = v78 != 0;
          }

          goto LABEL_218;
        case 0xAu:
          if (v7 != 80)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x40000u;
          v76 = (v6 + 1);
          v75 = *v6;
          if ((v75 & 0x8000000000000000) == 0)
          {
            goto LABEL_131;
          }

          v77 = *v76;
          v75 = (v77 << 7) + v75 - 128;
          if (v77 < 0)
          {
            v148 = google::protobuf::internal::VarintParseSlow64(v6, v75);
            v164 = v148;
            *(a1 + 132) = v149 != 0;
            if (!v148)
            {
              return 0;
            }
          }

          else
          {
            v76 = (v6 + 2);
LABEL_131:
            v164 = v76;
            *(a1 + 132) = v75 != 0;
          }

          goto LABEL_218;
        case 0xBu:
          if (v7 != 93)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x20000u;
          v103 = *v6;
          v23 = (v6 + 4);
          *(a1 + 128) = v103;
          goto LABEL_192;
        case 0xCu:
          if (v7 != 96)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x80000u;
          v48 = (v6 + 1);
          v47 = *v6;
          if ((v47 & 0x8000000000000000) == 0)
          {
            goto LABEL_78;
          }

          v49 = *v48;
          v47 = (v49 << 7) + v47 - 128;
          if (v49 < 0)
          {
            v134 = google::protobuf::internal::VarintParseSlow64(v6, v47);
            v164 = v134;
            *(a1 + 133) = v135 != 0;
            if (!v134)
            {
              return 0;
            }
          }

          else
          {
            v48 = (v6 + 2);
LABEL_78:
            v164 = v48;
            *(a1 + 133) = v47 != 0;
          }

          goto LABEL_218;
        case 0xDu:
          if (v7 != 106)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x10u;
          v41 = *(a1 + 64);
          if (!v41)
          {
            v42 = *(a1 + 8);
            if (v42)
            {
              v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
            }

            v41 = google::protobuf::Arena::CreateMaybeMessage<TSWP::LineSpacingArchive>(v42);
            *(a1 + 64) = v41;
            v6 = v164;
          }

          v43 = sub_276F51674(a3, v41, v6);
          goto LABEL_217;
        case 0xEu:
          if (v7 != 112)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x100000u;
          v108 = (v6 + 1);
          v107 = *v6;
          if ((v107 & 0x8000000000000000) == 0)
          {
            goto LABEL_189;
          }

          v109 = *v108;
          v107 = (v109 << 7) + v107 - 128;
          if (v109 < 0)
          {
            v159 = google::protobuf::internal::VarintParseSlow64(v6, v107);
            v164 = v159;
            *(a1 + 134) = v160 != 0;
            if (!v159)
            {
              return 0;
            }
          }

          else
          {
            v108 = (v6 + 2);
LABEL_189:
            v164 = v108;
            *(a1 + 134) = v107 != 0;
          }

          goto LABEL_218;
        case 0xFu:
          if (v7 != 120)
          {
            goto LABEL_210;
          }

          v81 = (v6 + 1);
          v82 = *v6;
          if ((v82 & 0x8000000000000000) == 0)
          {
            goto LABEL_141;
          }

          v83 = *v81;
          v84 = (v83 << 7) + v82;
          LODWORD(v82) = v84 - 128;
          if (v83 < 0)
          {
            v164 = google::protobuf::internal::VarintParseSlow64(v6, (v84 - 128));
            if (!v164)
            {
              return 0;
            }

            LODWORD(v82) = v152;
          }

          else
          {
            v81 = (v6 + 2);
LABEL_141:
            v164 = v81;
          }

          if (v82 > 0x1A || ((1 << v82) & 0x70F0F1F) == 0)
          {
            v163 = *(a1 + 8);
            if (v163)
            {
              v118 = ((v163 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
LABEL_277:
              v118 = sub_276EA4A94((a1 + 8));
            }

LABEL_222:
            google::protobuf::UnknownFieldSet::AddVarint(v118);
          }

          else
          {
            *(a1 + 16) |= 0x400000u;
            *(a1 + 136) = v82;
          }

          goto LABEL_218;
        case 0x10u:
          if (v7 != 128)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x200000u;
          v87 = (v6 + 1);
          v86 = *v6;
          if ((v86 & 0x8000000000000000) == 0)
          {
            goto LABEL_151;
          }

          v88 = *v87;
          v86 = (v88 << 7) + v86 - 128;
          if (v88 < 0)
          {
            v153 = google::protobuf::internal::VarintParseSlow64(v6, v86);
            v164 = v153;
            *(a1 + 135) = v154 != 0;
            if (!v153)
            {
              return 0;
            }
          }

          else
          {
            v87 = (v6 + 2);
LABEL_151:
            v164 = v87;
            *(a1 + 135) = v86 != 0;
          }

          goto LABEL_218;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x20u;
          v104 = *(a1 + 72);
          if (!v104)
          {
            v105 = *(a1 + 8);
            if (v105)
            {
              v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
            }

            v106 = MEMORY[0x277CA3220](v105);
            LODWORD(v104) = v106;
            *(a1 + 72) = v106;
            v6 = v164;
          }

          v43 = sub_276F51744(a3, v104, v6);
          goto LABEL_217;
        case 0x12u:
          if (v7 != 149)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x800000u;
          v99 = *v6;
          v23 = (v6 + 4);
          *(a1 + 140) = v99;
          goto LABEL_192;
        case 0x13u:
          if (v7 != 157)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x1000000u;
          v24 = *v6;
          v23 = (v6 + 4);
          *(a1 + 144) = v24;
          goto LABEL_192;
        case 0x14u:
          if (v7 != 165)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x2000000u;
          v52 = *v6;
          v23 = (v6 + 4);
          *(a1 + 148) = v52;
          goto LABEL_192;
        case 0x15u:
          if (v7 != 173)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x4000000u;
          v110 = *v6;
          v23 = (v6 + 4);
          *(a1 + 152) = v110;
LABEL_192:
          v164 = v23;
          goto LABEL_218;
        case 0x18u:
          if (v7 != 192)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x10000000u;
          v26 = (v6 + 1);
          v25 = *v6;
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_38;
          }

          v27 = *v26;
          v25 = (v27 << 7) + v25 - 128;
          if (v27 < 0)
          {
            v125 = google::protobuf::internal::VarintParseSlow64(v6, v25);
            v164 = v125;
            *(a1 + 160) = v126 != 0;
            if (!v125)
            {
              return 0;
            }
          }

          else
          {
            v26 = (v6 + 2);
LABEL_38:
            v164 = v26;
            *(a1 + 160) = v25 != 0;
          }

          goto LABEL_218;
        case 0x19u:
          if (v7 != 202)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x40u;
          v50 = *(a1 + 80);
          if (!v50)
          {
            v51 = *(a1 + 8);
            if (v51)
            {
              v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
            }

            v50 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TabsArchive>(v51);
            *(a1 + 80) = v50;
            v6 = v164;
          }

          v43 = sub_276F51814(a3, v50, v6);
          goto LABEL_217;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x20000000u;
          v32 = (v6 + 1);
          v31 = *v6;
          if ((v31 & 0x8000000000000000) == 0)
          {
            goto LABEL_50;
          }

          v33 = *v32;
          v31 = (v33 << 7) + v31 - 128;
          if (v33 < 0)
          {
            v127 = google::protobuf::internal::VarintParseSlow64(v6, v31);
            v164 = v127;
            *(a1 + 161) = v128 != 0;
            if (!v127)
            {
              return 0;
            }
          }

          else
          {
            v32 = (v6 + 2);
LABEL_50:
            v164 = v32;
            *(a1 + 161) = v31 != 0;
          }

          goto LABEL_218;
        case 0x1Bu:
          if (v7 != 216)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x8000000u;
          v66 = (v6 + 1);
          LODWORD(v67) = *v6;
          if ((*v6 & 0x80000000) == 0)
          {
            goto LABEL_114;
          }

          v68 = *v66;
          v67 = (v67 + (v68 << 7) - 128);
          if (v68 < 0)
          {
            v142 = google::protobuf::internal::VarintParseSlow32(v6, v67);
            v164 = v142;
            *(a1 + 156) = v143;
            if (!v142)
            {
              return 0;
            }
          }

          else
          {
            v66 = (v6 + 2);
LABEL_114:
            v164 = v66;
            *(a1 + 156) = v67;
          }

          goto LABEL_218;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_210;
          }

          v29 = (v6 + 1);
          v28 = *v6;
          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_43;
          }

          v30 = *v29;
          v28 = (v30 << 7) + v28 - 128;
          if (v30 < 0)
          {
            v164 = google::protobuf::internal::VarintParseSlow64(v6, v28);
            if (!v164)
            {
              return 0;
            }
          }

          else
          {
            v29 = (v6 + 2);
LABEL_43:
            v164 = v29;
          }

          if (v28 > 2)
          {
            sub_276F53F18();
          }

          else
          {
            *(a1 + 20) |= 1u;
            *(a1 + 164) = v28;
          }

          goto LABEL_218;
        case 0x1Du:
          if (v7 != 232)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x40000000u;
          v112 = (v6 + 1);
          v111 = *v6;
          if ((v111 & 0x8000000000000000) == 0)
          {
            goto LABEL_199;
          }

          v113 = *v112;
          v111 = (v113 << 7) + v111 - 128;
          if (v113 < 0)
          {
            v161 = google::protobuf::internal::VarintParseSlow64(v6, v111);
            v164 = v161;
            *(a1 + 162) = v162 != 0;
            if (!v161)
            {
              return 0;
            }
          }

          else
          {
            v112 = (v6 + 2);
LABEL_199:
            v164 = v112;
            *(a1 + 162) = v111 != 0;
          }

          goto LABEL_218;
        case 0x1Eu:
          if (v7 != 242)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 2u;
          goto LABEL_209;
        case 0x1Fu:
          if (v7 != 248)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x80000000;
          v39 = (v6 + 1);
          v38 = *v6;
          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_62;
          }

          v40 = *v39;
          v38 = (v40 << 7) + v38 - 128;
          if (v40 < 0)
          {
            v130 = google::protobuf::internal::VarintParseSlow64(v6, v38);
            v164 = v130;
            *(a1 + 163) = v131 != 0;
            if (!v130)
            {
              return 0;
            }
          }

          else
          {
            v39 = (v6 + 2);
LABEL_62:
            v164 = v39;
            *(a1 + 163) = v38 != 0;
          }

          goto LABEL_218;
        case 0x20u:
          if (v7 != 2)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x80u;
          v53 = *(a1 + 88);
          if (!v53)
          {
            v54 = *(a1 + 8);
            if (v54)
            {
              v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
            }

            v55 = MEMORY[0x277CA3150](v54);
            LODWORD(v53) = v55;
            *(a1 + 88) = v55;
            v6 = v164;
          }

          v43 = sub_276F51264(a3, v53, v6);
          goto LABEL_217;
        case 0x21u:
          if (v7 != 8)
          {
            goto LABEL_210;
          }

          *(a1 + 20) |= 2u;
          v90 = (v6 + 1);
          v89 = *v6;
          if ((v89 & 0x8000000000000000) == 0)
          {
            goto LABEL_156;
          }

          v91 = *v90;
          v89 = (v91 << 7) + v89 - 128;
          if (v91 < 0)
          {
            v155 = google::protobuf::internal::VarintParseSlow64(v6, v89);
            v164 = v155;
            *(a1 + 168) = v156 != 0;
            if (!v155)
            {
              return 0;
            }
          }

          else
          {
            v90 = (v6 + 2);
LABEL_156:
            v164 = v90;
            *(a1 + 168) = v89 != 0;
          }

          goto LABEL_218;
        case 0x22u:
          if (v7 != 16)
          {
            goto LABEL_210;
          }

          *(a1 + 20) |= 4u;
          v57 = (v6 + 1);
          v56 = *v6;
          if ((v56 & 0x8000000000000000) == 0)
          {
            goto LABEL_97;
          }

          v58 = *v57;
          v56 = (v58 << 7) + v56 - 128;
          if (v58 < 0)
          {
            v136 = google::protobuf::internal::VarintParseSlow64(v6, v56);
            v164 = v136;
            *(a1 + 169) = v137 != 0;
            if (!v136)
            {
              return 0;
            }
          }

          else
          {
            v57 = (v6 + 2);
LABEL_97:
            v164 = v57;
            *(a1 + 169) = v56 != 0;
          }

          goto LABEL_218;
        case 0x23u:
          if (v7 != 26)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 4u;
LABEL_209:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v43 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_217;
        case 0x26u:
          if (v7 != 48)
          {
            goto LABEL_210;
          }

          v34 = (v6 + 1);
          v35 = *v6;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_55;
          }

          v36 = *v34;
          v37 = (v36 << 7) + v35;
          LODWORD(v35) = v37 - 128;
          if (v36 < 0)
          {
            v164 = google::protobuf::internal::VarintParseSlow64(v6, (v37 - 128));
            if (!v164)
            {
              return 0;
            }

            LODWORD(v35) = v129;
          }

          else
          {
            v34 = (v6 + 2);
LABEL_55:
            v164 = v34;
          }

          if ((v35 + 1) <= 2)
          {
            *(a1 + 20) |= 0x200u;
            *(a1 + 180) = v35;
            goto LABEL_218;
          }

          v117 = *(a1 + 8);
          if ((v117 & 1) == 0)
          {
            goto LABEL_277;
          }

          v118 = ((v117 & 0xFFFFFFFFFFFFFFFELL) + 8);
          goto LABEL_222;
        case 0x27u:
          if (v7 != 56)
          {
            goto LABEL_210;
          }

          *(a1 + 20) |= 8u;
          v101 = (v6 + 1);
          v100 = *v6;
          if ((v100 & 0x8000000000000000) == 0)
          {
            goto LABEL_176;
          }

          v102 = *v101;
          v100 = (v102 << 7) + v100 - 128;
          if (v102 < 0)
          {
            v157 = google::protobuf::internal::VarintParseSlow64(v6, v100);
            v164 = v157;
            *(a1 + 170) = v158 != 0;
            if (!v157)
            {
              return 0;
            }
          }

          else
          {
            v101 = (v6 + 2);
LABEL_176:
            v164 = v101;
            *(a1 + 170) = v100 != 0;
          }

          goto LABEL_218;
        case 0x28u:
          if (v7 != 66)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x100u;
          v95 = *(a1 + 96);
          if (v95)
          {
            goto LABEL_206;
          }

          v114 = *(a1 + 8);
          if (v114)
          {
            v114 = *(v114 & 0xFFFFFFFFFFFFFFFELL);
          }

          v115 = MEMORY[0x277CA3250](v114);
          LODWORD(v95) = v115;
          *(a1 + 96) = v115;
          goto LABEL_205;
        case 0x29u:
          if (v7 != 72)
          {
            goto LABEL_210;
          }

          *(a1 + 20) |= 0x10u;
          v21 = (v6 + 1);
          v20 = *v6;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_31;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            v123 = google::protobuf::internal::VarintParseSlow64(v6, v20);
            v164 = v123;
            *(a1 + 171) = v124 != 0;
            if (!v123)
            {
              return 0;
            }
          }

          else
          {
            v21 = (v6 + 2);
LABEL_31:
            v164 = v21;
            *(a1 + 171) = v20 != 0;
          }

          goto LABEL_218;
        case 0x2Au:
          if (v7 != 82)
          {
            goto LABEL_210;
          }

          *(a1 + 16) |= 0x200u;
          v95 = *(a1 + 104);
          if (v95)
          {
            goto LABEL_206;
          }

          v96 = *(a1 + 8);
          if (v96)
          {
            v96 = *(v96 & 0xFFFFFFFFFFFFFFFELL);
          }

          v97 = MEMORY[0x277CA3250](v96);
          LODWORD(v95) = v97;
          *(a1 + 104) = v97;
LABEL_205:
          v6 = v164;
LABEL_206:
          v43 = sub_276F4F9E8(a3, v95, v6);
          goto LABEL_217;
        case 0x2Bu:
          if (v7 != 88)
          {
            goto LABEL_210;
          }

          *(a1 + 20) |= 0x20u;
          v18 = (v6 + 1);
          v17 = *v6;
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v19 = *v18;
          v17 = (v19 << 7) + v17 - 128;
          if (v19 < 0)
          {
            v121 = google::protobuf::internal::VarintParseSlow64(v6, v17);
            v164 = v121;
            *(a1 + 172) = v122 != 0;
            if (!v121)
            {
              return 0;
            }
          }

          else
          {
            v18 = (v6 + 2);
LABEL_26:
            v164 = v18;
            *(a1 + 172) = v17 != 0;
          }

          goto LABEL_218;
        case 0x2Cu:
          if (v7 != 96)
          {
            goto LABEL_210;
          }

          *(a1 + 20) |= 0x40u;
          v15 = (v6 + 1);
          v14 = *v6;
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_21;
          }

          v16 = *v15;
          v14 = (v16 << 7) + v14 - 128;
          if (v16 < 0)
          {
            v119 = google::protobuf::internal::VarintParseSlow64(v6, v14);
            v164 = v119;
            *(a1 + 173) = v120 != 0;
            if (!v119)
            {
              return 0;
            }
          }

          else
          {
            v15 = (v6 + 2);
LABEL_21:
            v164 = v15;
            *(a1 + 173) = v14 != 0;
          }

          goto LABEL_218;
        case 0x2Du:
          if (v7 != 104)
          {
            goto LABEL_210;
          }

          *(a1 + 20) |= 0x100u;
          v45 = (v6 + 1);
          LODWORD(v44) = *v6;
          if ((v44 & 0x80) == 0)
          {
            goto LABEL_73;
          }

          v46 = *v45;
          v44 = (v44 + (v46 << 7) - 128);
          if (v46 < 0)
          {
            v132 = google::protobuf::internal::VarintParseSlow64(v6, v44);
            v164 = v132;
            *(a1 + 176) = v133;
            if (!v132)
            {
              return 0;
            }
          }

          else
          {
            v45 = (v6 + 2);
LABEL_73:
            v164 = v45;
            *(a1 + 176) = v44;
          }

          goto LABEL_218;
        case 0x2Eu:
          if (v7 != 112)
          {
            goto LABEL_210;
          }

          *(a1 + 20) |= 0x80u;
          v70 = (v6 + 1);
          v69 = *v6;
          if ((v69 & 0x8000000000000000) == 0)
          {
            goto LABEL_119;
          }

          v71 = *v70;
          v69 = (v71 << 7) + v69 - 128;
          if (v71 < 0)
          {
            v144 = google::protobuf::internal::VarintParseSlow64(v6, v69);
            v164 = v144;
            *(a1 + 174) = v145 != 0;
            if (!v144)
            {
              return 0;
            }
          }

          else
          {
            v70 = (v6 + 2);
LABEL_119:
            v164 = v70;
            *(a1 + 174) = v69 != 0;
          }

          goto LABEL_218;
        default:
LABEL_210:
          if (v7)
          {
            v116 = (v7 & 7) == 4;
          }

          else
          {
            v116 = 1;
          }

          if (v116)
          {
            *(a3 + 80) = v7 - 1;
            return v164;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v43 = google::protobuf::internal::UnknownFieldParse();
LABEL_217:
          v164 = v43;
          if (!v43)
          {
            return 0;
          }

LABEL_218:
          if (sub_276EA4A1C(a3, &v164))
          {
            return v164;
          }

          break;
      }
    }
  }

  return v164;
}

unsigned __int8 *TSWP::ParagraphStylePropertiesArchive::_InternalSerialize(TSWP::ParagraphStylePropertiesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 28);
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
        if ((v6 & 0x1000) != 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
        if ((v6 & 0x1000) != 0)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
      if ((v6 & 0x1000) != 0)
      {
        goto LABEL_38;
      }
    }

LABEL_3:
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_41;
  }

  if ((v6 & 0x1000) == 0)
  {
    goto LABEL_3;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(this + 120);
  *v4 = 16;
  v4[1] = v11;
  v4 += 2;
  if ((v6 & 1) == 0)
  {
LABEL_4:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  v4 = sub_276E5154C(a3, 3, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x800) == 0)
  {
LABEL_5:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_42:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v12 = *(this + 29);
  *v4 = 37;
  *(v4 + 1) = v12;
  v4 += 5;
  if ((v6 & 0x2000) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 121);
  *v4 = 40;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_48:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(this + 7);
  *v4 = 50;
  v15 = *(v14 + 5);
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v17 = v15 >> 7;
    if (v15 >> 14)
    {
      v16 = v4 + 3;
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
      v4[2] = v17;
      v16 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v15;
    v16 = v4 + 2;
  }

  v4 = TSP::Color::_InternalSerialize(v14, v16, a3);
  if ((v6 & 0x10000) == 0)
  {
LABEL_8:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_58:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v20 = *(this + 31);
  *v4 = 61;
  *(v4 + 1) = v20;
  v4 += 5;
  if ((v6 & 0x4000) == 0)
  {
LABEL_9:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_64;
  }

LABEL_61:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 122);
  *v4 = 64;
  v4[1] = v21;
  v4 += 2;
  if ((v6 & 0x8000) == 0)
  {
LABEL_10:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_67;
  }

LABEL_64:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v22 = *(this + 123);
  *v4 = 72;
  v4[1] = v22;
  v4 += 2;
  if ((v6 & 0x40000) == 0)
  {
LABEL_11:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_70;
  }

LABEL_67:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 132);
  *v4 = 80;
  v4[1] = v23;
  v4 += 2;
  if ((v6 & 0x20000) == 0)
  {
LABEL_12:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_73;
  }

LABEL_70:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v24 = *(this + 32);
  *v4 = 93;
  *(v4 + 1) = v24;
  v4 += 5;
  if ((v6 & 0x80000) == 0)
  {
LABEL_13:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_76;
  }

LABEL_73:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 133);
  *v4 = 96;
  v4[1] = v25;
  v4 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_14:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_86;
  }

LABEL_76:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(this + 8);
  *v4 = 106;
  v27 = *(v26 + 5);
  if (v27 > 0x7F)
  {
    v4[1] = v27 | 0x80;
    v29 = v27 >> 7;
    if (v27 >> 14)
    {
      v28 = v4 + 3;
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
      v4[2] = v29;
      v28 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v27;
    v28 = v4 + 2;
  }

  v4 = TSWP::LineSpacingArchive::_InternalSerialize(v26, v28, a3);
  if ((v6 & 0x100000) == 0)
  {
LABEL_15:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_16;
    }

LABEL_89:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v33 = *(this + 34);
    *v4 = 120;
    if (v33 > 0x7F)
    {
      v4[1] = v33 | 0x80;
      v34 = v33 >> 7;
      if (v33 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v34 | 0x80;
          v35 = v34 >> 7;
          ++v4;
          v36 = v34 >> 14;
          v34 >>= 7;
        }

        while (v36);
        *(v4 - 1) = v35;
        if ((v6 & 0x200000) != 0)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v4[2] = v34;
        v4 += 3;
        if ((v6 & 0x200000) != 0)
        {
          goto LABEL_100;
        }
      }
    }

    else
    {
      v4[1] = v33;
      v4 += 2;
      if ((v6 & 0x200000) != 0)
      {
        goto LABEL_100;
      }
    }

LABEL_17:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_103;
  }

LABEL_86:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v32 = *(this + 134);
  *v4 = 112;
  v4[1] = v32;
  v4 += 2;
  if ((v6 & 0x400000) != 0)
  {
    goto LABEL_89;
  }

LABEL_16:
  if ((v6 & 0x200000) == 0)
  {
    goto LABEL_17;
  }

LABEL_100:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v37 = *(this + 135);
  *v4 = 384;
  v4[2] = v37;
  v4 += 3;
  if ((v6 & 0x20) == 0)
  {
LABEL_18:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_113;
  }

LABEL_103:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v38 = *(this + 9);
  *v4 = 394;
  v39 = *(v38 + 5);
  if (v39 > 0x7F)
  {
    v4[2] = v39 | 0x80;
    v41 = v39 >> 7;
    if (v39 >> 14)
    {
      v40 = v4 + 4;
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
      v40 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v39;
    v40 = v4 + 3;
  }

  v4 = TSP::Point::_InternalSerialize(v38, v40, a3);
  if ((v6 & 0x800000) == 0)
  {
LABEL_19:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_116;
  }

LABEL_113:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v44 = *(this + 35);
  *v4 = 405;
  *(v4 + 2) = v44;
  v4 += 6;
  if ((v6 & 0x1000000) == 0)
  {
LABEL_20:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_119;
  }

LABEL_116:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v45 = *(this + 36);
  *v4 = 413;
  *(v4 + 2) = v45;
  v4 += 6;
  if ((v6 & 0x2000000) == 0)
  {
LABEL_21:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_122;
  }

LABEL_119:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v46 = *(this + 37);
  *v4 = 421;
  *(v4 + 2) = v46;
  v4 += 6;
  if ((v6 & 0x4000000) == 0)
  {
LABEL_22:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_125;
  }

LABEL_122:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v47 = *(this + 38);
  *v4 = 429;
  *(v4 + 2) = v47;
  v4 += 6;
  if ((v6 & 0x10000000) == 0)
  {
LABEL_23:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_128;
  }

LABEL_125:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v48 = *(this + 160);
  *v4 = 448;
  v4[2] = v48;
  v4 += 3;
  if ((v6 & 0x40) == 0)
  {
LABEL_24:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_138;
  }

LABEL_128:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v49 = *(this + 10);
  *v4 = 458;
  v50 = *(v49 + 10);
  if (v50 > 0x7F)
  {
    v4[2] = v50 | 0x80;
    v52 = v50 >> 7;
    if (v50 >> 14)
    {
      v51 = v4 + 4;
      do
      {
        *(v51 - 1) = v52 | 0x80;
        v53 = v52 >> 7;
        ++v51;
        v54 = v52 >> 14;
        v52 >>= 7;
      }

      while (v54);
      *(v51 - 1) = v53;
    }

    else
    {
      v4[3] = v52;
      v51 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v50;
    v51 = v4 + 3;
  }

  v4 = TSWP::TabsArchive::_InternalSerialize(v49, v51, a3);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_25:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_141;
  }

LABEL_138:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v55 = *(this + 161);
  *v4 = 464;
  v4[2] = v55;
  v4 += 3;
  if ((v6 & 0x8000000) != 0)
  {
LABEL_141:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v56 = *(this + 39);
    *v4 = 472;
    if (v56 > 0x7F)
    {
      v4[2] = v56 | 0x80;
      v57 = v56 >> 7;
      if (v56 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v57 | 0x80;
          v58 = v57 >> 7;
          ++v4;
          v59 = v57 >> 14;
          v57 >>= 7;
        }

        while (v59);
        *(v4 - 1) = v58;
      }

      else
      {
        v4[3] = v57;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v56;
      v4 += 3;
    }
  }

LABEL_150:
  if (*(this + 20))
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v60 = *(this + 41);
    *v4 = 480;
    if (v60 > 0x7F)
    {
      v4[2] = v60 | 0x80;
      v61 = v60 >> 7;
      if (v60 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v61 | 0x80;
          v62 = v61 >> 7;
          ++v4;
          v63 = v61 >> 14;
          v61 >>= 7;
        }

        while (v63);
        *(v4 - 1) = v62;
      }

      else
      {
        v4[3] = v61;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v60;
      v4 += 3;
    }
  }

  v64 = *(this + 4);
  if ((v64 & 0x40000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v65 = *(this + 162);
    *v4 = 488;
    v4[2] = v65;
    v4 += 3;
    if ((v64 & 2) == 0)
    {
LABEL_162:
      if ((v64 & 0x80000000) == 0)
      {
        goto LABEL_163;
      }

      goto LABEL_169;
    }
  }

  else if ((v64 & 2) == 0)
  {
    goto LABEL_162;
  }

  v4 = sub_276E5154C(a3, 30, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v64 & 0x80000000) == 0)
  {
LABEL_163:
    if ((v64 & 0x80) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_172;
  }

LABEL_169:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v66 = *(this + 163);
  *v4 = 504;
  v4[2] = v66;
  v4 += 3;
  if ((v64 & 0x80) != 0)
  {
LABEL_172:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v67 = *(this + 11);
    *v4 = 642;
    v68 = *(v67 + 5);
    if (v68 > 0x7F)
    {
      v4[2] = v68 | 0x80;
      v70 = v68 >> 7;
      if (v68 >> 14)
      {
        v69 = v4 + 4;
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
        v4[3] = v70;
        v69 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v68;
      v69 = v4 + 3;
    }

    v4 = TSD::StrokeArchive::_InternalSerialize(v67, v69, a3);
  }

LABEL_182:
  v73 = *(this + 5);
  if ((v73 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v74 = *(this + 168);
    *v4 = 648;
    v4[2] = v74;
    v4 += 3;
  }

  if ((v73 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v75 = *(this + 169);
    *v4 = 656;
    v4[2] = v75;
    v4 += 3;
  }

  if ((*(this + 16) & 4) != 0)
  {
    v4 = sub_276E5154C(a3, 35, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v76 = *(this + 5);
  if ((v76 & 0x200) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v77 = *(this + 45);
    *v4 = 688;
    if (v77 <= 0x7F)
    {
      v4[2] = v77;
      v4 += 3;
      if ((v76 & 8) == 0)
      {
        goto LABEL_204;
      }

      goto LABEL_201;
    }

    v4[2] = v77 | 0x80;
    v78 = v77 >> 7;
    if (v77 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v78 | 0x80;
        v84 = v78 >> 7;
        ++v4;
        v85 = v78 >> 14;
        v78 >>= 7;
      }

      while (v85);
      *(v4 - 1) = v84;
      if ((v76 & 8) == 0)
      {
        goto LABEL_204;
      }

      goto LABEL_201;
    }

    v4[3] = v78;
    v4 += 4;
  }

  if ((v76 & 8) == 0)
  {
    goto LABEL_204;
  }

LABEL_201:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v79 = *(this + 170);
  *v4 = 696;
  v4[2] = v79;
  v4 += 3;
LABEL_204:
  if (*(this + 17))
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v80 = *(this + 12);
    *v4 = 706;
    v81 = *(v80 + 5);
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
          v86 = v83 >> 7;
          ++v82;
          v87 = v83 >> 14;
          v83 >>= 7;
        }

        while (v87);
        *(v82 - 1) = v86;
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

    v4 = TSP::Reference::_InternalSerialize(v80, v82, a3);
  }

  if ((*(this + 20) & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v88 = *(this + 171);
    *v4 = 712;
    v4[2] = v88;
    v4 += 3;
  }

  if ((*(this + 17) & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v89 = *(this + 13);
    *v4 = 722;
    v90 = *(v89 + 5);
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

    v4 = TSP::Reference::_InternalSerialize(v89, v91, a3);
  }

  v95 = *(this + 5);
  if ((v95 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v99 = *(this + 172);
    *v4 = 728;
    v4[2] = v99;
    v4 += 3;
    if ((v95 & 0x40) == 0)
    {
LABEL_236:
      if ((v95 & 0x100) == 0)
      {
        goto LABEL_237;
      }

      goto LABEL_249;
    }
  }

  else if ((v95 & 0x40) == 0)
  {
    goto LABEL_236;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v100 = *(this + 173);
  *v4 = 736;
  v4[2] = v100;
  v4 += 3;
  if ((v95 & 0x100) == 0)
  {
LABEL_237:
    if ((v95 & 0x80) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_238;
  }

LABEL_249:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v101 = *(this + 44);
  *v4 = 744;
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
      if ((v95 & 0x80) == 0)
      {
        goto LABEL_241;
      }
    }

    else
    {
      v4[3] = v102;
      v4 += 4;
      if ((v95 & 0x80) == 0)
      {
        goto LABEL_241;
      }
    }
  }

  else
  {
    v4[2] = v101;
    v4 += 3;
    if ((v95 & 0x80) == 0)
    {
      goto LABEL_241;
    }
  }

LABEL_238:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v96 = *(this + 174);
  *v4 = 752;
  v4[2] = v96;
  v4 += 3;
LABEL_241:
  v97 = *(this + 1);
  if ((v97 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v97 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ParagraphStylePropertiesArchive::ByteSizeLong(TSWP::ParagraphStylePropertiesArchive *this)
{
  v2 = *(this + 4);
  if (!v2)
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

  v4 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
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
    v7 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
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
    v11 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 2;
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

  v14 = TSP::Color::ByteSizeLong(*(this + 7));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = TSWP::LineSpacingArchive::ByteSizeLong(*(this + 8));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  v16 = TSP::Point::ByteSizeLong(*(this + 9));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_30:
  v17 = TSWP::TabsArchive::ByteSizeLong(*(this + 10));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v10 = TSD::StrokeArchive::ByteSizeLong(*(this + 11));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_19:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_41;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = TSP::Reference::ByteSizeLong(*(this + 12));
    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_22:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_38;
      }

LABEL_34:
      v20 = *(this + 28);
      if (v20 < 0)
      {
        v21 = 11;
      }

      else
      {
        v21 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v21;
      goto LABEL_38;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  v19 = TSP::Reference::ByteSizeLong(*(this + 13));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) != 0)
  {
    goto LABEL_34;
  }

LABEL_38:
  v22 = v3 + 5;
  if ((v2 & 0x800) == 0)
  {
    v22 = v3;
  }

  v23.i64[0] = 0x200000002;
  v23.i64[1] = 0x200000002;
  v3 = v22 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_276F9A770), v23));
LABEL_41:
  if ((v2 & 0xFF0000) != 0)
  {
    v24 = v3 + 5;
    if ((v2 & 0x10000) == 0)
    {
      v24 = v3;
    }

    if ((v2 & 0x20000) != 0)
    {
      v24 += 5;
    }

    v25 = v24 + ((v2 >> 18) & 2) + ((v2 >> 17) & 2) + ((v2 >> 19) & 2);
    if ((v2 & 0x200000) != 0)
    {
      v25 += 3;
    }

    if ((v2 & 0x400000) != 0)
    {
      v26 = *(this + 34);
      v27 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v26 >= 0)
      {
        v28 = v27;
      }

      else
      {
        v28 = 11;
      }

      v25 += v28;
    }

    if ((v2 & 0x800000) != 0)
    {
      v3 = v25 + 6;
    }

    else
    {
      v3 = v25;
    }
  }

  if (HIBYTE(v2))
  {
    v29 = v3 + 6;
    if ((v2 & 0x1000000) == 0)
    {
      v29 = v3;
    }

    if ((v2 & 0x2000000) != 0)
    {
      v29 += 6;
    }

    if ((v2 & 0x4000000) != 0)
    {
      v29 += 6;
    }

    if ((v2 & 0x8000000) != 0)
    {
      v29 += ((9 * (__clz(*(this + 39) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v2 & 0x10000000) != 0)
    {
      v29 += 3;
    }

    if ((v2 & 0x20000000) != 0)
    {
      v29 += 3;
    }

    if ((v2 & 0x40000000) != 0)
    {
      v29 += 3;
    }

    if ((v2 & 0x80000000) == 0)
    {
      v3 = v29;
    }

    else
    {
      v3 = v29 + 3;
    }
  }

  v30 = *(this + 5);
  if (v30)
  {
    if (v30)
    {
      v31 = *(this + 41);
      if (v31 < 0)
      {
        v32 = 12;
      }

      else
      {
        v32 = ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v32;
    }

    v33 = v3 + 3;
    if ((v30 & 2) == 0)
    {
      v33 = v3;
    }

    if ((v30 & 4) != 0)
    {
      v33 += 3;
    }

    if ((v30 & 8) != 0)
    {
      v33 += 3;
    }

    if ((v30 & 0x10) != 0)
    {
      v33 += 3;
    }

    if ((v30 & 0x20) != 0)
    {
      v33 += 3;
    }

    if ((v30 & 0x40) != 0)
    {
      v33 += 3;
    }

    if ((v30 & 0x80) != 0)
    {
      v3 = v33 + 3;
    }

    else
    {
      v3 = v33;
    }
  }

  if ((v30 & 0x300) != 0)
  {
    if ((v30 & 0x100) != 0)
    {
      v34 = *(this + 44);
      if (v34 < 0)
      {
        v35 = 12;
      }

      else
      {
        v35 = ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v35;
    }

    if ((v30 & 0x200) != 0)
    {
      v36 = *(this + 45);
      if (v36 < 0)
      {
        v37 = 12;
      }

      else
      {
        v37 = ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v37;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 24);
  }

  else
  {
    *(this + 6) = v3;
    return v3;
  }
}

uint64_t TSWP::ParagraphStylePropertiesArchive::MergeFrom(TSWP::ParagraphStylePropertiesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ParagraphStylePropertiesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ParagraphStylePropertiesArchive::MergeFrom(uint64_t this, const TSWP::ParagraphStylePropertiesArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (!v5)
  {
    goto LABEL_56;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(v3 + 16) |= 2u;
  this = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v3 + 16) |= 4u;
  this = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_16:
  *(v3 + 16) |= 8u;
  v6 = *(v3 + 56);
  if (!v6)
  {
    v7 = *(v3 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x277CA3210](v7);
    *(v3 + 56) = v6;
  }

  if (*(a2 + 7))
  {
    v8 = *(a2 + 7);
  }

  else
  {
    v8 = MEMORY[0x277D809E8];
  }

  this = TSP::Color::MergeFrom(v6, v8);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_32:
    *(v3 + 16) |= 0x20u;
    v12 = *(v3 + 72);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277CA3220](v13);
      *(v3 + 72) = v12;
    }

    if (*(a2 + 9))
    {
      v14 = *(a2 + 9);
    }

    else
    {
      v14 = MEMORY[0x277D809F0];
    }

    this = TSP::Point::MergeFrom(v12, v14);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_48;
    }

    goto LABEL_40;
  }

LABEL_24:
  *(v3 + 16) |= 0x10u;
  v9 = *(v3 + 64);
  if (!v9)
  {
    v10 = *(v3 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSWP::LineSpacingArchive>(v10);
    *(v3 + 64) = v9;
  }

  if (*(a2 + 8))
  {
    v11 = *(a2 + 8);
  }

  else
  {
    v11 = &TSWP::_LineSpacingArchive_default_instance_;
  }

  this = TSWP::LineSpacingArchive::MergeFrom(v9, v11);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_40:
  *(v3 + 16) |= 0x40u;
  v15 = *(v3 + 80);
  if (!v15)
  {
    v16 = *(v3 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TabsArchive>(v16);
    *(v3 + 80) = v15;
  }

  if (*(a2 + 10))
  {
    v17 = *(a2 + 10);
  }

  else
  {
    v17 = &TSWP::_TabsArchive_default_instance_;
  }

  this = TSWP::TabsArchive::MergeFrom(v15, v17);
  if ((v5 & 0x80) != 0)
  {
LABEL_48:
    *(v3 + 16) |= 0x80u;
    v18 = *(v3 + 88);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = MEMORY[0x277CA3150](v19);
      *(v3 + 88) = v18;
    }

    if (*(a2 + 11))
    {
      v20 = *(a2 + 11);
    }

    else
    {
      v20 = MEMORY[0x277D804A0];
    }

    this = TSD::StrokeArchive::MergeFrom(v18, v20);
  }

LABEL_56:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_67;
  }

  v21 = MEMORY[0x277D80A18];
  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v23 = *(v3 + 96);
    if (!v23)
    {
      v24 = *(v3 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x277CA3250](v24);
      *(v3 + 96) = v23;
    }

    if (*(a2 + 12))
    {
      v25 = *(a2 + 12);
    }

    else
    {
      v25 = v21;
    }

    this = TSP::Reference::MergeFrom(v23, v25);
    if ((v5 & 0x200) == 0)
    {
LABEL_59:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_122;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_59;
  }

  *(v3 + 16) |= 0x200u;
  v26 = *(v3 + 104);
  if (!v26)
  {
    v27 = *(v3 + 8);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = MEMORY[0x277CA3250](v27);
    *(v3 + 104) = v26;
  }

  if (*(a2 + 13))
  {
    v28 = *(a2 + 13);
  }

  else
  {
    v28 = v21;
  }

  this = TSP::Reference::MergeFrom(v26, v28);
  if ((v5 & 0x400) == 0)
  {
LABEL_60:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(v3 + 112) = *(a2 + 28);
  if ((v5 & 0x800) == 0)
  {
LABEL_61:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_124;
  }

LABEL_123:
  *(v3 + 116) = *(a2 + 29);
  if ((v5 & 0x1000) == 0)
  {
LABEL_62:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_125;
  }

LABEL_124:
  *(v3 + 120) = *(a2 + 120);
  if ((v5 & 0x2000) == 0)
  {
LABEL_63:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_64;
    }

LABEL_126:
    *(v3 + 122) = *(a2 + 122);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_125:
  *(v3 + 121) = *(a2 + 121);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_126;
  }

LABEL_64:
  if ((v5 & 0x8000) != 0)
  {
LABEL_65:
    *(v3 + 123) = *(a2 + 123);
  }

LABEL_66:
  *(v3 + 16) |= v5;
LABEL_67:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_78;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 124) = *(a2 + 31);
    if ((v5 & 0x20000) == 0)
    {
LABEL_70:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_130;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_70;
  }

  *(v3 + 128) = *(a2 + 32);
  if ((v5 & 0x40000) == 0)
  {
LABEL_71:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_131;
  }

LABEL_130:
  *(v3 + 132) = *(a2 + 132);
  if ((v5 & 0x80000) == 0)
  {
LABEL_72:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_132;
  }

LABEL_131:
  *(v3 + 133) = *(a2 + 133);
  if ((v5 & 0x100000) == 0)
  {
LABEL_73:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_133;
  }

LABEL_132:
  *(v3 + 134) = *(a2 + 134);
  if ((v5 & 0x200000) == 0)
  {
LABEL_74:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_75;
    }

LABEL_134:
    *(v3 + 136) = *(a2 + 34);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

LABEL_133:
  *(v3 + 135) = *(a2 + 135);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_134;
  }

LABEL_75:
  if ((v5 & 0x800000) != 0)
  {
LABEL_76:
    *(v3 + 140) = *(a2 + 35);
  }

LABEL_77:
  *(v3 + 16) |= v5;
LABEL_78:
  if (!HIBYTE(v5))
  {
    goto LABEL_88;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 144) = *(a2 + 36);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_81:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_146;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_81;
  }

  *(v3 + 148) = *(a2 + 37);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_82:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_147;
  }

LABEL_146:
  *(v3 + 152) = *(a2 + 38);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_83:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_148;
  }

LABEL_147:
  *(v3 + 156) = *(a2 + 39);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_84:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_149;
  }

LABEL_148:
  *(v3 + 160) = *(a2 + 160);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_85:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_86;
    }

LABEL_150:
    *(v3 + 162) = *(a2 + 162);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_87;
    }

LABEL_151:
    *(v3 + 163) = *(a2 + 163);
    goto LABEL_87;
  }

LABEL_149:
  *(v3 + 161) = *(a2 + 161);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_150;
  }

LABEL_86:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_151;
  }

LABEL_87:
  *(v3 + 16) |= v5;
LABEL_88:
  v22 = *(a2 + 5);
  if (!v22)
  {
    goto LABEL_99;
  }

  if (v22)
  {
    *(v3 + 164) = *(a2 + 41);
    if ((v22 & 2) == 0)
    {
LABEL_91:
      if ((v22 & 4) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_138;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_91;
  }

  *(v3 + 168) = *(a2 + 168);
  if ((v22 & 4) == 0)
  {
LABEL_92:
    if ((v22 & 8) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_139;
  }

LABEL_138:
  *(v3 + 169) = *(a2 + 169);
  if ((v22 & 8) == 0)
  {
LABEL_93:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_140;
  }

LABEL_139:
  *(v3 + 170) = *(a2 + 170);
  if ((v22 & 0x10) == 0)
  {
LABEL_94:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_141;
  }

LABEL_140:
  *(v3 + 171) = *(a2 + 171);
  if ((v22 & 0x20) == 0)
  {
LABEL_95:
    if ((v22 & 0x40) == 0)
    {
      goto LABEL_96;
    }

LABEL_142:
    *(v3 + 173) = *(a2 + 173);
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

LABEL_141:
  *(v3 + 172) = *(a2 + 172);
  if ((v22 & 0x40) != 0)
  {
    goto LABEL_142;
  }

LABEL_96:
  if ((v22 & 0x80) != 0)
  {
LABEL_97:
    *(v3 + 174) = *(a2 + 174);
  }

LABEL_98:
  *(v3 + 20) |= v22;
LABEL_99:
  if ((v22 & 0x300) != 0)
  {
    if ((v22 & 0x100) != 0)
    {
      *(v3 + 176) = *(a2 + 44);
    }

    if ((v22 & 0x200) != 0)
    {
      *(v3 + 180) = *(a2 + 45);
    }

    *(v3 + 20) |= v22;
  }

  return this;
}

uint64_t *TSWP::ParagraphStylePropertiesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ParagraphStylePropertiesArchive::Clear(this);

    return TSWP::ParagraphStylePropertiesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ParagraphStylePropertiesArchive::CopyFrom(uint64_t *this, const TSWP::ParagraphStylePropertiesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ParagraphStylePropertiesArchive::Clear(this);

    return TSWP::ParagraphStylePropertiesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ParagraphStylePropertiesArchive::IsInitialized(TSWP::ParagraphStylePropertiesArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 8) != 0)
  {
    result = TSP::Color::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSP::Point::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(this + 11));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x200) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 13));
  if (result)
  {
    return 1;
  }

  return result;
}

void TSWP::ParagraphStylePropertiesArchive::InternalSwap(TSWP::ParagraphStylePropertiesArchive *this, TSWP::ParagraphStylePropertiesArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(this + 7);
  v10 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  v12 = *(this + 10);
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v11;
  *(a2 + 10) = v12;
  sub_276E7F70C(this + 11, a2 + 88);
  v13 = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v13;
}

TSS::StyleArchive *TSWP::ParagraphStyleArchive::clear_super(TSWP::ParagraphStyleArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSS::StyleArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWP::ParagraphStyleArchive *TSWP::ParagraphStyleArchive::ParagraphStyleArchive(TSWP::ParagraphStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886009F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ParagraphStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2886009F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ParagraphStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  return this;
}

TSWP::ParagraphStyleArchive *TSWP::ParagraphStyleArchive::ParagraphStyleArchive(TSWP::ParagraphStyleArchive *this, const TSWP::ParagraphStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886009F0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  *(this + 12) = *(a2 + 12);
  return this;
}

void TSWP::ParagraphStyleArchive::~ParagraphStyleArchive(TSWP::ParagraphStyleArchive *this)
{
  if (this != &TSWP::_ParagraphStyleArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277CA2C50]();
      MEMORY[0x277CA3D00](v2, 0x10A1C40AC828A93);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSWP::CharacterStylePropertiesArchive::~CharacterStylePropertiesArchive(v3);
      MEMORY[0x277CA3D00]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSWP::ParagraphStylePropertiesArchive::~ParagraphStylePropertiesArchive(v4);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::ParagraphStyleArchive::~ParagraphStyleArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::ParagraphStyleArchive::default_instance(TSWP::ParagraphStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_ParagraphStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ParagraphStyleArchive_default_instance_;
}

uint64_t *TSWP::ParagraphStyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSS::StyleArchive::Clear(this[3]);
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

    this = TSWP::CharacterStylePropertiesArchive::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSWP::ParagraphStylePropertiesArchive::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::ParagraphStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v28) & 1) == 0)
  {
    while (1)
    {
      v7 = (v28 + 1);
      v8 = *v28;
      if ((*v28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v9 - 128));
      v28 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_50;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 0xA)
      {
        if (v10 == 11)
        {
          if (v8 != 90)
          {
            goto LABEL_35;
          }

          *(a1 + 16) |= 2u;
          v20 = *(a1 + 32);
          if (!v20)
          {
            v21 = *(a1 + 8);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::CharacterStylePropertiesArchive>(v21);
            LODWORD(v20) = v22;
            *(a1 + 32) = v22;
            v7 = v28;
          }

          sub_276F514D4(a3, v20, v7);
        }

        else
        {
          if (v10 != 12 || v8 != 98)
          {
            goto LABEL_35;
          }

          *(a1 + 16) |= 4u;
          v14 = *(a1 + 40);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParagraphStylePropertiesArchive>(v15);
            *(a1 + 40) = v14;
            v7 = v28;
          }

          v16 = sub_276F518E4(a3, v14, v7);
        }

LABEL_42:
        v28 = v16;
        if (!v16)
        {
          goto LABEL_50;
        }

        goto LABEL_43;
      }

      if (v10 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v17 = *(a1 + 24);
          if (!v17)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = MEMORY[0x277CA3260](v18);
            LODWORD(v17) = v19;
            *(a1 + 24) = v19;
            v7 = v28;
          }

          v16 = sub_276F51404(a3, v17, v7);
          goto LABEL_42;
        }

LABEL_35:
        if (v8)
        {
          v23 = (v8 & 7) == 4;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
        }

        v16 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_42;
      }

      if (v10 != 10 || v8 != 80)
      {
        goto LABEL_35;
      }

      v5 |= 8u;
      v11 = (v7 + 1);
      LODWORD(v12) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      v13 = *v11;
      v12 = (v12 + (v13 << 7) - 128);
      if ((v13 & 0x80000000) == 0)
      {
        v11 = (v7 + 2);
LABEL_14:
        v28 = v11;
        *(a1 + 48) = v12;
        goto LABEL_43;
      }

      v26 = google::protobuf::internal::VarintParseSlow32(v7, v12);
      v28 = v26;
      *(a1 + 48) = v27;
      if (!v26)
      {
LABEL_50:
        v28 = 0;
        goto LABEL_2;
      }

LABEL_43:
      if (sub_276EA4A1C(a3, &v28))
      {
        goto LABEL_2;
      }
    }

    v7 = (v28 + 2);
LABEL_6:
    v28 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

unsigned __int8 *TSWP::ParagraphStyleArchive::_InternalSerialize(TSWP::ParagraphStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 12);
    *a2 = 80;
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
        if ((v5 & 2) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
      if ((v5 & 2) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 3);
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
  if ((v5 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((v5 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 4);
  *a2 = 90;
  v17 = *(v16 + 6);
  if (v17 > 0x7F)
  {
    a2[1] = v17 | 0x80;
    v19 = v17 >> 7;
    if (v17 >> 14)
    {
      v18 = a2 + 3;
      do
      {
        *(v18 - 1) = v19 | 0x80;
        v20 = v19 >> 7;
        ++v18;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
      *(v18 - 1) = v20;
    }

    else
    {
      a2[2] = v19;
      v18 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v17;
    v18 = a2 + 2;
  }

  a2 = TSWP::CharacterStylePropertiesArchive::_InternalSerialize(v16, v18, a3);
  if ((v5 & 4) != 0)
  {
LABEL_37:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(this + 5);
    *a2 = 98;
    v23 = *(v22 + 6);
    if (v23 > 0x7F)
    {
      a2[1] = v23 | 0x80;
      v25 = v23 >> 7;
      if (v23 >> 14)
      {
        v24 = a2 + 3;
        do
        {
          *(v24 - 1) = v25 | 0x80;
          v26 = v25 >> 7;
          ++v24;
          v27 = v25 >> 14;
          v25 >>= 7;
        }

        while (v27);
        *(v24 - 1) = v26;
      }

      else
      {
        a2[2] = v25;
        v24 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v23;
      v24 = a2 + 2;
    }

    a2 = TSWP::ParagraphStylePropertiesArchive::_InternalSerialize(v22, v24, a3);
  }

LABEL_47:
  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v28 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ParagraphStyleArchive::ByteSizeLong(TSWP::ParagraphStyleArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSS::StyleArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v6 = TSWP::CharacterStylePropertiesArchive::ByteSizeLong(*(this + 4));
      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 4) == 0)
      {
LABEL_7:
        if ((v2 & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

    v7 = TSWP::ParagraphStylePropertiesArchive::ByteSizeLong(*(this + 5));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) != 0)
    {
LABEL_8:
      v3 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_9:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSWP::ParagraphStyleArchive::MergeFrom(TSWP::ParagraphStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ParagraphStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ParagraphStyleArchive::MergeFrom(uint64_t this, const TSWP::ParagraphStyleArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) != 0)
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

        v6 = MEMORY[0x277CA3260](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80BD0];
      }

      this = TSS::StyleArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_27;
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

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSWP::CharacterStylePropertiesArchive>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSWP::_CharacterStylePropertiesArchive_default_instance_;
    }

    this = TSWP::CharacterStylePropertiesArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_8:
      *(v3 + 48) = *(a2 + 12);
      goto LABEL_9;
    }

LABEL_27:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParagraphStylePropertiesArchive>(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = &TSWP::_ParagraphStylePropertiesArchive_default_instance_;
    }

    this = TSWP::ParagraphStylePropertiesArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TSWP::ParagraphStyleArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ParagraphStyleArchive::Clear(this);

    return TSWP::ParagraphStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ParagraphStyleArchive::CopyFrom(uint64_t *this, const TSWP::ParagraphStyleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ParagraphStyleArchive::Clear(this);

    return TSWP::ParagraphStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ParagraphStyleArchive::IsInitialized(TSWP::ParagraphStyleArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSWP::CharacterStylePropertiesArchive::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) == 0)
    {
      return 1;
    }

    result = TSWP::ParagraphStylePropertiesArchive::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSWP::ParagraphStyleArchive::InternalSwap(TSWP::ParagraphStyleArchive *this, TSWP::ParagraphStyleArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  LODWORD(v8) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  return result;
}

double TSWP::ListStyleArchive_LabelGeometry::ListStyleArchive_LabelGeometry(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288600AA0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  result = 0.0078125;
  *(a1 + 24) = 0x3F80000000000000;
  *(a1 + 32) = 1;
  return result;
}

{
  *a1 = &unk_288600AA0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  result = 0.0078125;
  *(a1 + 24) = 0x3F80000000000000;
  *(a1 + 32) = 1;
  return result;
}

TSWP::ListStyleArchive_LabelGeometry *TSWP::ListStyleArchive_LabelGeometry::ListStyleArchive_LabelGeometry(TSWP::ListStyleArchive_LabelGeometry *this, const TSWP::ListStyleArchive_LabelGeometry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288600AA0;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 3);
  *(this + 32) = *(a2 + 32);
  *(this + 3) = v6;
  return this;
}

void TSWP::ListStyleArchive_LabelGeometry::~ListStyleArchive_LabelGeometry(TSWP::ListStyleArchive_LabelGeometry *this)
{
  sub_276E4E808(this + 1);
}

{
  sub_276E4E808(this + 1);
}

{
  sub_276E4E808(this + 1);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::ListStyleArchive_LabelGeometry::default_instance(TSWP::ListStyleArchive_LabelGeometry *this)
{
  if (atomic_load_explicit(scc_info_ListStyleArchive_LabelGeometry_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ListStyleArchive_LabelGeometry_default_instance_;
}

uint64_t *TSWP::ListStyleArchive_LabelGeometry::Clear(TSWP::ListStyleArchive_LabelGeometry *this)
{
  if ((*(this + 16) & 7) != 0)
  {
    *(this + 3) = 0x3F80000000000000;
    *(this + 32) = 1;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::ListStyleArchive_LabelGeometry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v23) & 1) == 0)
  {
    while (1)
    {
      v7 = (v23 + 1);
      v8 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 != 3)
      {
        if (v10 == 2)
        {
          if (v8 == 21)
          {
            v14 = *v7;
            v13 = (v7 + 4);
            v5 |= 1u;
            *(a1 + 24) = v14;
LABEL_29:
            v23 = v13;
            goto LABEL_30;
          }
        }

        else if (v10 == 1 && v8 == 13)
        {
          v18 = *v7;
          v13 = (v7 + 4);
          v5 |= 2u;
          *(a1 + 28) = v18;
          goto LABEL_29;
        }

LABEL_13:
        if (v8)
        {
          v12 = (v8 & 7) == 4;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
        }

        v23 = google::protobuf::internal::UnknownFieldParse();
        if (!v23)
        {
LABEL_37:
          v23 = 0;
          goto LABEL_2;
        }

        goto LABEL_30;
      }

      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v16 = (v7 + 1);
      v15 = *v7;
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v17 = *v16;
      v15 = (v17 << 7) + v15 - 128;
      if ((v17 & 0x80000000) == 0)
      {
        v16 = (v7 + 2);
LABEL_27:
        v23 = v16;
        *(a1 + 32) = v15 != 0;
        goto LABEL_30;
      }

      v21 = google::protobuf::internal::VarintParseSlow64(v7, v15);
      v23 = v21;
      *(a1 + 32) = v22 != 0;
      if (!v21)
      {
        goto LABEL_37;
      }

LABEL_30:
      if (sub_276EA4A1C(a3, &v23))
      {
        goto LABEL_2;
      }
    }

    v7 = (v23 + 2);
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

unsigned __int8 *TSWP::ListStyleArchive_LabelGeometry::_InternalSerialize(TSWP::ListStyleArchive_LabelGeometry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 7);
    *a2 = 13;
    *(a2 + 1) = v6;
    a2 += 5;
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 6);
  *a2 = 21;
  *(a2 + 1) = v7;
  a2 += 5;
  if ((v5 & 4) != 0)
  {
LABEL_11:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 32);
    *a2 = 24;
    a2[1] = v8;
    a2 += 2;
  }

LABEL_14:
  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ListStyleArchive_LabelGeometry::ByteSizeLong(TSWP::ListStyleArchive_LabelGeometry *this)
{
  v1 = *(this + 4);
  v2 = 5;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 5;
  }

  v3 = v2 + ((v1 >> 1) & 2);
  if ((v1 & 7) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v4, this + 20);
  }

  *(this + 5) = v4;
  return v4;
}

uint64_t TSWP::ListStyleArchive_LabelGeometry::MergeFrom(TSWP::ListStyleArchive_LabelGeometry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ListStyleArchive_LabelGeometry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ListStyleArchive_LabelGeometry::MergeFrom(uint64_t this, const TSWP::ListStyleArchive_LabelGeometry *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      *(v3 + 24) = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 32) = *(a2 + 32);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 28) = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

TSWP::ListStyleArchive_LabelGeometry *TSWP::ListStyleArchive_LabelGeometry::CopyFrom(TSWP::ListStyleArchive_LabelGeometry *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ListStyleArchive_LabelGeometry::Clear(this);

    return TSWP::ListStyleArchive_LabelGeometry::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::ListStyleArchive_LabelGeometry *TSWP::ListStyleArchive_LabelGeometry::CopyFrom(TSWP::ListStyleArchive_LabelGeometry *this, const TSWP::ListStyleArchive_LabelGeometry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ListStyleArchive_LabelGeometry::Clear(this);

    return TSWP::ListStyleArchive_LabelGeometry::MergeFrom(v4, a2);
  }

  return this;
}

float TSWP::ListStyleArchive_LabelGeometry::InternalSwap(TSWP::ListStyleArchive_LabelGeometry *this, TSWP::ListStyleArchive_LabelGeometry *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  LOBYTE(v4) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  return result;
}

TSP::DataReference *TSWP::ListStyleArchive_LabelImage::clear_image(TSWP::ListStyleArchive_LabelImage *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSWP::ListStyleArchive_LabelImage::clear_database_image(TSWP::ListStyleArchive_LabelImage *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWP::ListStyleArchive_LabelImage *TSWP::ListStyleArchive_LabelImage::ListStyleArchive_LabelImage(TSWP::ListStyleArchive_LabelImage *this, google::protobuf::Arena *a2)
{
  *this = &unk_288600B50;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ListStyleArchive_LabelImage_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_288600B50;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ListStyleArchive_LabelImage_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

TSWP::ListStyleArchive_LabelImage *TSWP::ListStyleArchive_LabelImage::ListStyleArchive_LabelImage(TSWP::ListStyleArchive_LabelImage *this, const TSWP::ListStyleArchive_LabelImage *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288600B50;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  *(this + 40) = *(a2 + 40);
  return this;
}

void TSWP::ListStyleArchive_LabelImage::~ListStyleArchive_LabelImage(TSWP::ListStyleArchive_LabelImage *this)
{
  if (this != &TSWP::_ListStyleArchive_LabelImage_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277CA3D00]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::DataReference::~DataReference(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::ListStyleArchive_LabelImage::~ListStyleArchive_LabelImage(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::ListStyleArchive_LabelImage::default_instance(TSWP::ListStyleArchive_LabelImage *this)
{
  if (atomic_load_explicit(scc_info_ListStyleArchive_LabelImage_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ListStyleArchive_LabelImage_default_instance_;
}

uint64_t *TSWP::ListStyleArchive_LabelImage::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::Reference::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::DataReference::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::ListStyleArchive_LabelImage::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v27) & 1) == 0)
  {
    while (1)
    {
      v7 = (v27 + 1);
      v8 = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
      v27 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 2u;
        v17 = *(a1 + 32);
        if (!v17)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = MEMORY[0x277CA31E0](v18);
          LODWORD(v17) = v19;
          *(a1 + 32) = v19;
          v7 = v27;
        }

        v13 = sub_276F519B4(a3, v17, v7);
LABEL_36:
        v27 = v13;
        if (!v13)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (v10 != 2)
      {
        if (v10 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v20 = *(a1 + 24);
          if (!v20)
          {
            v21 = *(a1 + 8);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v22 = MEMORY[0x277CA3250](v21);
            LODWORD(v20) = v22;
            *(a1 + 24) = v22;
            v7 = v27;
          }

          v13 = sub_276F4F9E8(a3, v20, v7);
        }

        else
        {
LABEL_13:
          if (v8)
          {
            v12 = (v8 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        goto LABEL_36;
      }

      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v15 = (v7 + 1);
      v14 = *v7;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v16 = *v15;
      v14 = (v16 << 7) + v14 - 128;
      if ((v16 & 0x80000000) == 0)
      {
        v15 = (v7 + 2);
LABEL_24:
        v27 = v15;
        *(a1 + 40) = v14 != 0;
        goto LABEL_37;
      }

      v25 = google::protobuf::internal::VarintParseSlow64(v7, v14);
      v27 = v25;
      *(a1 + 40) = v26 != 0;
      if (!v25)
      {
LABEL_44:
        v27 = 0;
        goto LABEL_2;
      }

LABEL_37:
      if (sub_276EA4A1C(a3, &v27))
      {
        goto LABEL_2;
      }
    }

    v7 = (v27 + 2);
LABEL_6:
    v27 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

unsigned __int8 *TSWP::ListStyleArchive_LabelImage::_InternalSerialize(TSWP::ListStyleArchive_LabelImage *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
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

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 40);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 2) != 0)
  {
LABEL_18:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 4);
    *a2 = 26;
    v14 = *(v13 + 5);
    if (v14 > 0x7F)
    {
      a2[1] = v14 | 0x80;
      v16 = v14 >> 7;
      if (v14 >> 14)
      {
        v15 = a2 + 3;
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
        a2[2] = v16;
        v15 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v14;
      v15 = a2 + 2;
    }

    a2 = TSP::DataReference::_InternalSerialize(v13, v15, a3);
  }

LABEL_28:
  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ListStyleArchive_LabelImage::ByteSizeLong(TSP::Reference **this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v4 = 0;
    goto LABEL_9;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = TSP::Reference::ByteSizeLong(this[3]);
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSP::DataReference::ByteSizeLong(this[4]);
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v4 = v3 + ((v2 >> 1) & 2);
LABEL_9:
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v4, this + 20);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSWP::ListStyleArchive_LabelImage::MergeFrom(TSWP::ListStyleArchive_LabelImage *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ListStyleArchive_LabelImage::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ListStyleArchive_LabelImage::MergeFrom(uint64_t this, const TSWP::ListStyleArchive_LabelImage *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
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

        v6 = MEMORY[0x277CA3250](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      this = TSP::Reference::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 40) = *(a2 + 40);
        goto LABEL_8;
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

      v9 = MEMORY[0x277CA31E0](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = MEMORY[0x277D80A30];
    }

    this = TSP::DataReference::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSWP::ListStyleArchive_LabelImage::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ListStyleArchive_LabelImage::Clear(this);

    return TSWP::ListStyleArchive_LabelImage::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ListStyleArchive_LabelImage::CopyFrom(uint64_t *this, const TSWP::ListStyleArchive_LabelImage *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ListStyleArchive_LabelImage::Clear(this);

    return TSWP::ListStyleArchive_LabelImage::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ListStyleArchive_LabelImage::IsInitialized(TSWP::ListStyleArchive_LabelImage *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSP::DataReference::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}