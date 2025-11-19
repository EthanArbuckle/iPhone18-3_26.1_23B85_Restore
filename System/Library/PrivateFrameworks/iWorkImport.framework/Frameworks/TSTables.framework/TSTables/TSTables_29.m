uint64_t TSCE::ASTNodeArrayArchive_ASTNodeArchive::ByteSizeLong(TSCE::ASTNodeArrayArchive_ASTNodeArchive *this)
{
  if ((*(this + 21) & 8) != 0)
  {
    v3 = *(this + 72);
    if (v3 < 0)
    {
      v2 = 11;
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 4);
  if (!*(this + 4))
  {
    goto LABEL_16;
  }

  if (v4)
  {
    v15 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 2) == 0)
    {
LABEL_9:
      if ((v4 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_81;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_9;
  }

  v18 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 4) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_84;
  }

LABEL_81:
  v21 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  v23 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v23 = v22;
  }

  v2 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_87;
  }

LABEL_84:
  v24 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(v24 + 23);
  v26 = *(v24 + 8);
  if ((v25 & 0x80u) == 0)
  {
    v26 = v25;
  }

  v2 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_90:
    v30 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
    v31 = *(v30 + 23);
    v32 = *(v30 + 8);
    if ((v31 & 0x80u) == 0)
    {
      v32 = v31;
    }

    v2 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v4 & 0x40) == 0)
    {
LABEL_14:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_93;
  }

LABEL_87:
  v27 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
  v28 = *(v27 + 23);
  v29 = *(v27 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v29 = v28;
  }

  v2 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_90;
  }

LABEL_13:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_93:
  v33 = TSCE::ASTNodeArrayArchive::ByteSizeLong(*(this + 10));
  v2 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x80) != 0)
  {
LABEL_15:
    v5 = TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::ByteSizeLong(*(this + 11));
    v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_26;
  }

  if ((v4 & 0x100) != 0)
  {
    v34 = TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::ByteSizeLong(*(this + 12));
    v2 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v4 & 0x200) == 0)
    {
LABEL_19:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_97;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_19;
  }

  v35 = TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::ByteSizeLong(*(this + 13));
  v2 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 0x400) == 0)
  {
LABEL_20:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_98;
  }

LABEL_97:
  v36 = TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::ByteSizeLong(*(this + 14));
  v2 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 0x800) == 0)
  {
LABEL_21:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_99;
  }

LABEL_98:
  v37 = TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::ByteSizeLong(*(this + 15));
  v2 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 0x1000) == 0)
  {
LABEL_22:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_100;
  }

LABEL_99:
  v38 = TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::ByteSizeLong(*(this + 16));
  v2 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 0x2000) == 0)
  {
LABEL_23:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_101;
  }

LABEL_100:
  v39 = TSCE::ASTNodeArrayArchive_ASTStickyBits::ByteSizeLong(*(this + 17));
  v2 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 0x4000) == 0)
  {
LABEL_24:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_101:
  v40 = TSCE::ASTNodeArrayArchive_ASTUidTractList::ByteSizeLong(*(this + 18));
  v2 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 0x8000) != 0)
  {
LABEL_25:
    v6 = TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::ByteSizeLong(*(this + 19));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_26:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_39;
  }

  if ((v4 & 0x10000) != 0)
  {
    v41 = TSCE::ASTNodeArrayArchive_ASTColonTractArchive::ByteSizeLong(*(this + 20));
    v2 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v4 & 0x20000) == 0)
    {
LABEL_29:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_105;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_29;
  }

  v42 = TSCE::ASTNodeArrayArchive_ASTStickyBits::ByteSizeLong(*(this + 21));
  v2 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 0x40000) == 0)
  {
LABEL_30:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_106;
  }

LABEL_105:
  v43 = TSCE::ASTNodeArrayArchive_ASTCategoryLevels::ByteSizeLong(*(this + 22));
  v2 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 0x80000) == 0)
  {
LABEL_31:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

LABEL_107:
    v2 += ((9 * (__clz(*(this + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_106:
  v44 = TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::ByteSizeLong(*(this + 23));
  v2 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v4 & 0x100000) != 0)
  {
    goto LABEL_107;
  }

LABEL_32:
  if ((v4 & 0x200000) != 0)
  {
LABEL_33:
    v2 += ((9 * (__clz(*(this + 49) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_34:
  v7 = v2 + 9;
  if ((v4 & 0x400000) == 0)
  {
    v7 = v2;
  }

  if ((v4 & 0x800000) != 0)
  {
    v2 = v7 + 9;
  }

  else
  {
    v2 = v7;
  }

LABEL_39:
  if (!BYTE3(v4))
  {
    goto LABEL_51;
  }

  v8 = v2 + 9;
  if ((v4 & 0x1000000) == 0)
  {
    v8 = v2;
  }

  if ((v4 & 0x2000000) != 0)
  {
    v45 = *(this + 56);
    if (v45 < 0)
    {
      v46 = 11;
    }

    else
    {
      v46 = ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v8 += v46;
    if ((v4 & 0x4000000) == 0)
    {
LABEL_44:
      if ((v4 & 0x8000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_121;
    }
  }

  else if ((v4 & 0x4000000) == 0)
  {
    goto LABEL_44;
  }

  v8 += ((9 * (__clz(*(this + 57) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x8000000) == 0)
  {
LABEL_45:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_122;
  }

LABEL_121:
  v8 += ((9 * (__clz(*(this + 58) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x10000000) == 0)
  {
LABEL_46:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_122:
  v8 += ((9 * (__clz(*(this + 59) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x20000000) != 0)
  {
LABEL_47:
    v8 += ((9 * (__clz(*(this + 60) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_48:
  v9 = v8 + ((v4 >> 29) & 2);
  if ((v4 & 0x80000000) == 0)
  {
    v2 = v9;
  }

  else
  {
    v2 = v9 + 3;
  }

LABEL_51:
  v10 = *(this + 5);
  if (*(this + 5))
  {
    v11 = v2 + 3;
    if ((v10 & 1) == 0)
    {
      v11 = v2;
    }

    if ((v10 & 2) != 0)
    {
      v11 += 3;
    }

    if ((v10 & 4) != 0)
    {
      v11 += ((9 * (__clz(*(this + 62) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v10 & 8) != 0)
    {
      v11 += ((9 * (__clz(*(this + 63) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v12 = v11 + ((v10 >> 3) & 2);
    if ((v10 & 0x20) != 0)
    {
      v2 = v12 + 3;
    }

    else
    {
      v2 = v12;
    }

    if ((v10 & 0x40) != 0)
    {
      v2 += ((9 * (__clz(*(this + 65) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v10 & 0x80) != 0)
    {
      v2 += ((9 * (__clz(*(this + 66) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  if ((v10 & 0x700) != 0)
  {
    if ((v10 & 0x100) != 0)
    {
      v2 += ((9 * (__clz(*(this + 67) | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v10 & 0x200) == 0)
      {
LABEL_70:
        if ((v10 & 0x400) == 0)
        {
          goto LABEL_72;
        }

        goto LABEL_71;
      }
    }

    else if ((v10 & 0x200) == 0)
    {
      goto LABEL_70;
    }

    v2 += ((9 * (__clz(*(this + 34) | 1) ^ 0x3F) + 73) >> 6) + 2;
    if ((v10 & 0x400) != 0)
    {
LABEL_71:
      v2 += ((9 * (__clz(*(this + 35) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }
  }

LABEL_72:
  if ((v10 & 0x1000) != 0)
  {
    v13 = *(this + 73);
    if (v13 < 0)
    {
      v14 = 12;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v2 += v14;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 24);
  }

  else
  {
    *(this + 6) = v2;
    return v2;
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTNodeArchive::MergeFrom(TSCE::ASTNodeArrayArchive_ASTNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTNodeArchive::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTNodeArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (!v5)
  {
    goto LABEL_35;
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

    goto LABEL_17;
  }

LABEL_16:
  *(v3 + 16) |= 8u;
  this = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    *(v3 + 16) |= 0x20u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    goto LABEL_19;
  }

LABEL_17:
  *(v3 + 16) |= 0x10u;
  this = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_19:
  *(v3 + 16) |= 0x40u;
  v6 = *(v3 + 80);
  if (!v6)
  {
    v7 = *(v3 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive>(v7);
    *(v3 + 80) = v6;
  }

  if (*(a2 + 10))
  {
    v8 = *(a2 + 10);
  }

  else
  {
    v8 = &TSCE::_ASTNodeArrayArchive_default_instance_;
  }

  this = TSCE::ASTNodeArrayArchive::MergeFrom(v6, v8);
  if ((v5 & 0x80) != 0)
  {
LABEL_27:
    *(v3 + 16) |= 0x80u;
    v9 = *(v3 + 88);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive>(v10);
      *(v3 + 88) = v9;
    }

    if (*(a2 + 11))
    {
      v11 = *(a2 + 11);
    }

    else
    {
      v11 = &TSCE::_ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive_default_instance_;
    }

    this = TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::MergeFrom(v9, v11);
  }

LABEL_35:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_109;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v12 = *(v3 + 96);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive>(v13);
      *(v3 + 96) = v12;
    }

    if (*(a2 + 12))
    {
      v14 = *(a2 + 12);
    }

    else
    {
      v14 = &TSCE::_ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive_default_instance_;
    }

    this = TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::MergeFrom(v12, v14);
    if ((v5 & 0x200) == 0)
    {
LABEL_38:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_61;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_38;
  }

  *(v3 + 16) |= 0x200u;
  v15 = *(v3 + 104);
  if (!v15)
  {
    v16 = *(v3 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive>(v16);
    *(v3 + 104) = v15;
  }

  if (*(a2 + 13))
  {
    v17 = *(a2 + 13);
  }

  else
  {
    v17 = &TSCE::_ASTNodeArrayArchive_ASTColumnCoordinateArchive_default_instance_;
  }

  this = TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::MergeFrom(v15, v17);
  if ((v5 & 0x400) == 0)
  {
LABEL_39:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_69;
  }

LABEL_61:
  *(v3 + 16) |= 0x400u;
  v18 = *(v3 + 112);
  if (!v18)
  {
    v19 = *(v3 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive>(v19);
    *(v3 + 112) = v18;
  }

  if (*(a2 + 14))
  {
    v20 = *(a2 + 14);
  }

  else
  {
    v20 = &TSCE::_ASTNodeArrayArchive_ASTRowCoordinateArchive_default_instance_;
  }

  this = TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::MergeFrom(v18, v20);
  if ((v5 & 0x800) == 0)
  {
LABEL_40:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_77;
  }

LABEL_69:
  *(v3 + 16) |= 0x800u;
  v21 = *(v3 + 120);
  if (!v21)
  {
    v22 = *(v3 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive>(v22);
    *(v3 + 120) = v21;
  }

  if (*(a2 + 15))
  {
    v23 = *(a2 + 15);
  }

  else
  {
    v23 = &TSCE::_ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive_default_instance_;
  }

  this = TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::MergeFrom(v21, v23);
  if ((v5 & 0x1000) == 0)
  {
LABEL_41:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_77:
  *(v3 + 16) |= 0x1000u;
  v24 = *(v3 + 128);
  if (!v24)
  {
    v25 = *(v3 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive>(v25);
    *(v3 + 128) = v24;
  }

  if (*(a2 + 16))
  {
    v26 = *(a2 + 16);
  }

  else
  {
    v26 = &TSCE::_ASTNodeArrayArchive_ASTUidCoordinateArchive_default_instance_;
  }

  this = TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::MergeFrom(v24, v26);
  if ((v5 & 0x2000) == 0)
  {
LABEL_42:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_93;
  }

LABEL_85:
  *(v3 + 16) |= 0x2000u;
  v27 = *(v3 + 136);
  if (!v27)
  {
    v28 = *(v3 + 8);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTStickyBits>(v28);
    *(v3 + 136) = v27;
  }

  if (*(a2 + 17))
  {
    v29 = *(a2 + 17);
  }

  else
  {
    v29 = TSCE::_ASTNodeArrayArchive_ASTStickyBits_default_instance_;
  }

  this = TSCE::ASTNodeArrayArchive_ASTStickyBits::MergeFrom(v27, v29);
  if ((v5 & 0x4000) == 0)
  {
LABEL_43:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_101;
  }

LABEL_93:
  *(v3 + 16) |= 0x4000u;
  v30 = *(v3 + 144);
  if (!v30)
  {
    v31 = *(v3 + 8);
    if (v31)
    {
      v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
    }

    v30 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidTractList>(v31);
    *(v3 + 144) = v30;
  }

  if (*(a2 + 18))
  {
    v32 = *(a2 + 18);
  }

  else
  {
    v32 = &TSCE::_ASTNodeArrayArchive_ASTUidTractList_default_instance_;
  }

  this = TSCE::ASTNodeArrayArchive_ASTUidTractList::MergeFrom(v30, v32);
  if ((v5 & 0x8000) != 0)
  {
LABEL_101:
    *(v3 + 16) |= 0x8000u;
    v33 = *(v3 + 152);
    if (!v33)
    {
      v34 = *(v3 + 8);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive>(v34);
      *(v3 + 152) = v33;
    }

    if (*(a2 + 19))
    {
      v35 = *(a2 + 19);
    }

    else
    {
      v35 = TSCE::_ASTNodeArrayArchive_ASTCategoryReferenceArchive_default_instance_;
    }

    this = TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::MergeFrom(v33, v35);
  }

LABEL_109:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_120;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v37 = *(v3 + 160);
    if (!v37)
    {
      v38 = *(v3 + 8);
      if (v38)
      {
        v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
      }

      v37 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTColonTractArchive>(v38);
      *(v3 + 160) = v37;
    }

    if (*(a2 + 20))
    {
      v39 = *(a2 + 20);
    }

    else
    {
      v39 = &TSCE::_ASTNodeArrayArchive_ASTColonTractArchive_default_instance_;
    }

    this = TSCE::ASTNodeArrayArchive_ASTColonTractArchive::MergeFrom(v37, v39);
    if ((v5 & 0x20000) == 0)
    {
LABEL_112:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_166;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_112;
  }

  *(v3 + 16) |= 0x20000u;
  v40 = *(v3 + 168);
  if (!v40)
  {
    v41 = *(v3 + 8);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTStickyBits>(v41);
    *(v3 + 168) = v40;
  }

  if (*(a2 + 21))
  {
    v42 = *(a2 + 21);
  }

  else
  {
    v42 = TSCE::_ASTNodeArrayArchive_ASTStickyBits_default_instance_;
  }

  this = TSCE::ASTNodeArrayArchive_ASTStickyBits::MergeFrom(v40, v42);
  if ((v5 & 0x40000) == 0)
  {
LABEL_113:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_174;
  }

LABEL_166:
  *(v3 + 16) |= 0x40000u;
  v43 = *(v3 + 176);
  if (!v43)
  {
    v44 = *(v3 + 8);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v43 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTCategoryLevels>(v44);
    *(v3 + 176) = v43;
  }

  if (*(a2 + 22))
  {
    v45 = *(a2 + 22);
  }

  else
  {
    v45 = &TSCE::_ASTNodeArrayArchive_ASTCategoryLevels_default_instance_;
  }

  this = TSCE::ASTNodeArrayArchive_ASTCategoryLevels::MergeFrom(v43, v45);
  if ((v5 & 0x80000) == 0)
  {
LABEL_114:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_182;
  }

LABEL_174:
  *(v3 + 16) |= 0x80000u;
  v46 = *(v3 + 184);
  if (!v46)
  {
    v47 = *(v3 + 8);
    if (v47)
    {
      v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
    }

    v46 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive>(v47);
    *(v3 + 184) = v46;
  }

  if (*(a2 + 23))
  {
    v48 = *(a2 + 23);
  }

  else
  {
    v48 = &TSCE::_ASTNodeArrayArchive_ASTLambdaIdentsListArchive_default_instance_;
  }

  this = TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::MergeFrom(v46, v48);
  if ((v5 & 0x100000) == 0)
  {
LABEL_115:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_183;
  }

LABEL_182:
  *(v3 + 192) = *(a2 + 48);
  if ((v5 & 0x200000) == 0)
  {
LABEL_116:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_117;
    }

LABEL_184:
    *(v3 + 200) = *(a2 + 25);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

LABEL_183:
  *(v3 + 196) = *(a2 + 49);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_184;
  }

LABEL_117:
  if ((v5 & 0x800000) != 0)
  {
LABEL_118:
    *(v3 + 208) = *(a2 + 26);
  }

LABEL_119:
  *(v3 + 16) |= v5;
LABEL_120:
  if (!HIBYTE(v5))
  {
    goto LABEL_130;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 216) = *(a2 + 27);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_123:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_201;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_123;
  }

  *(v3 + 224) = *(a2 + 56);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_124:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_202;
  }

LABEL_201:
  *(v3 + 228) = *(a2 + 57);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_125:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_203;
  }

LABEL_202:
  *(v3 + 232) = *(a2 + 58);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_126:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_204;
  }

LABEL_203:
  *(v3 + 236) = *(a2 + 59);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_127:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_128;
    }

LABEL_205:
    *(v3 + 244) = *(a2 + 244);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_129;
    }

LABEL_206:
    *(v3 + 245) = *(a2 + 245);
    goto LABEL_129;
  }

LABEL_204:
  *(v3 + 240) = *(a2 + 60);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_205;
  }

LABEL_128:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_206;
  }

LABEL_129:
  *(v3 + 16) |= v5;
LABEL_130:
  v36 = *(a2 + 5);
  if (!v36)
  {
    goto LABEL_141;
  }

  if (v36)
  {
    *(v3 + 246) = *(a2 + 246);
    if ((v36 & 2) == 0)
    {
LABEL_133:
      if ((v36 & 4) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_188;
    }
  }

  else if ((v36 & 2) == 0)
  {
    goto LABEL_133;
  }

  *(v3 + 247) = *(a2 + 247);
  if ((v36 & 4) == 0)
  {
LABEL_134:
    if ((v36 & 8) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_189;
  }

LABEL_188:
  *(v3 + 248) = *(a2 + 62);
  if ((v36 & 8) == 0)
  {
LABEL_135:
    if ((v36 & 0x10) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_190;
  }

LABEL_189:
  *(v3 + 252) = *(a2 + 63);
  if ((v36 & 0x10) == 0)
  {
LABEL_136:
    if ((v36 & 0x20) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_191;
  }

LABEL_190:
  *(v3 + 256) = *(a2 + 256);
  if ((v36 & 0x20) == 0)
  {
LABEL_137:
    if ((v36 & 0x40) == 0)
    {
      goto LABEL_138;
    }

LABEL_192:
    *(v3 + 260) = *(a2 + 65);
    if ((v36 & 0x80) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_139;
  }

LABEL_191:
  *(v3 + 257) = *(a2 + 257);
  if ((v36 & 0x40) != 0)
  {
    goto LABEL_192;
  }

LABEL_138:
  if ((v36 & 0x80) != 0)
  {
LABEL_139:
    *(v3 + 264) = *(a2 + 66);
  }

LABEL_140:
  *(v3 + 20) |= v36;
LABEL_141:
  if ((v36 & 0x1F00) == 0)
  {
    return this;
  }

  if ((v36 & 0x100) != 0)
  {
    *(v3 + 268) = *(a2 + 67);
    if ((v36 & 0x200) == 0)
    {
LABEL_144:
      if ((v36 & 0x400) == 0)
      {
        goto LABEL_145;
      }

      goto LABEL_196;
    }
  }

  else if ((v36 & 0x200) == 0)
  {
    goto LABEL_144;
  }

  *(v3 + 272) = *(a2 + 34);
  if ((v36 & 0x400) == 0)
  {
LABEL_145:
    if ((v36 & 0x800) == 0)
    {
      goto LABEL_146;
    }

LABEL_197:
    *(v3 + 288) = *(a2 + 72);
    if ((v36 & 0x1000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_147;
  }

LABEL_196:
  *(v3 + 280) = *(a2 + 35);
  if ((v36 & 0x800) != 0)
  {
    goto LABEL_197;
  }

LABEL_146:
  if ((v36 & 0x1000) != 0)
  {
LABEL_147:
    *(v3 + 292) = *(a2 + 73);
  }

LABEL_148:
  *(v3 + 20) |= v36;
  return this;
}

uint64_t TSCE::ASTNodeArrayArchive::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_22156B4E8(v3 + 16, v7, v6 + 8, v5, (**(v3 + 32) - *(v3 + 24)));
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

uint64_t *TSCE::ASTNodeArrayArchive_ASTNodeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTNodeArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTNodeArchive::CopyFrom(uint64_t *this, const TSCE::ASTNodeArrayArchive_ASTNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTNodeArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::ASTNodeArrayArchive_ASTNodeArchive::IsInitialized(TSCE::ASTNodeArrayArchive_ASTNodeArchive *this)
{
  if ((*(this + 21) & 8) == 0)
  {
    return 0;
  }

  v3 = *(this + 4);
  if ((v3 & 0x40) != 0)
  {
    v4 = *(this + 10);
    v5 = *(v4 + 24);
    while (v5 >= 1)
    {
      v6 = v5 - 1;
      IsInitialized = TSCE::ASTNodeArrayArchive_ASTNodeArchive::IsInitialized(*(*(v4 + 32) + 8 * v5));
      v5 = v6;
      if ((IsInitialized & 1) == 0)
      {
        return 0;
      }
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x80) != 0 && (~*(*(this + 11) + 16) & 0xF) != 0 || (v3 & 0x100) != 0 && (~*(*(this + 12) + 16) & 0x1F0) != 0 || (v3 & 0x200) != 0 && (*(*(this + 13) + 16) & 1) == 0 || (v3 & 0x400) != 0 && (*(*(this + 14) + 16) & 1) == 0 || (v3 & 0x800) != 0 && (*(*(this + 15) + 16) & 0x10) == 0)
  {
    return 0;
  }

  if ((v3 & 0x1000) != 0)
  {
    result = TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::IsInitialized(*(this + 16));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x2000) != 0 && (~*(*(this + 17) + 16) & 0xF) != 0)
  {
    return 0;
  }

  if ((v3 & 0x4000) != 0)
  {
    result = TSCE::ASTNodeArrayArchive_ASTUidTractList::IsInitialized(*(this + 18));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x8000) == 0)
  {
    if ((v3 & 0x10000) == 0)
    {
      return ((v3 & 0x20000) == 0 || (~*(*(this + 21) + 16) & 0xF) == 0) && ((v3 & 0x40000) == 0 || (~*(*(this + 22) + 16) & 3) == 0);
    }

    goto LABEL_29;
  }

  v8 = *(this + 19);
  if ((*(v8 + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSCE::CategoryReferenceArchive::IsInitialized(*(v8 + 24));
  if (!result)
  {
    return result;
  }

  v3 = *(this + 4);
  if ((v3 & 0x10000) == 0)
  {
    return ((v3 & 0x20000) == 0 || (~*(*(this + 21) + 16) & 0xF) == 0) && ((v3 & 0x40000) == 0 || (~*(*(this + 22) + 16) & 3) == 0);
  }

LABEL_29:
  result = TSCE::ASTNodeArrayArchive_ASTColonTractArchive::IsInitialized(*(this + 20));
  if (result)
  {
    return ((v3 & 0x20000) == 0 || (~*(*(this + 21) + 16) & 0xF) == 0) && ((v3 & 0x40000) == 0 || (~*(*(this + 22) + 16) & 3) == 0);
  }

  return result;
}

BOOL TSCE::ASTNodeArrayArchive::IsInitialized(TSCE::ASTNodeArrayArchive *this)
{
  v2 = *(this + 6);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSCE::ASTNodeArrayArchive_ASTNodeArchive::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

void TSCE::ASTNodeArrayArchive_ASTNodeArchive::InternalSwap(TSCE::ASTNodeArrayArchive_ASTNodeArchive *this, TSCE::ASTNodeArrayArchive_ASTNodeArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
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
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  v12 = *(this + 10);
  v13 = *(this + 11);
  *(this + 5) = *(a2 + 5);
  *(a2 + 10) = v12;
  *(a2 + 11) = v13;
  v14 = *(this + 12);
  v15 = *(this + 13);
  *(this + 6) = *(a2 + 6);
  *(a2 + 12) = v14;
  *(a2 + 13) = v15;
  v16 = *(this + 14);
  v17 = *(this + 15);
  *(this + 7) = *(a2 + 7);
  *(a2 + 14) = v16;
  *(a2 + 15) = v17;
  v18 = *(this + 16);
  v19 = *(this + 17);
  *(this + 8) = *(a2 + 8);
  *(a2 + 16) = v18;
  *(a2 + 17) = v19;
  sub_221547320(this + 18, a2 + 144);
  v20 = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 72) = v20;
  v21 = *(this + 73);
  *(this + 73) = *(a2 + 73);
  *(a2 + 73) = v21;
}

TSCE::ASTNodeArrayArchive *TSCE::ASTNodeArrayArchive::ASTNodeArrayArchive(TSCE::ASTNodeArrayArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AEE60;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::ASTNodeArrayArchive *TSCE::ASTNodeArrayArchive::ASTNodeArrayArchive(TSCE::ASTNodeArrayArchive *this, const TSCE::ASTNodeArrayArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AEE60;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22156B4E8(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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
    sub_22156734C(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSCE::ASTNodeArrayArchive::~ASTNodeArrayArchive(TSCE::ASTNodeArrayArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22156B464(this + 2);
}

{
  TSCE::ASTNodeArrayArchive::~ASTNodeArrayArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::ASTNodeArrayArchive::default_instance(TSCE::ASTNodeArrayArchive *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ASTNodeArrayArchive_default_instance_;
}

google::protobuf::internal *TSCE::ASTNodeArrayArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_221567030(a3, &v20) & 1) == 0)
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
        v9 = v5 - 1;
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTNodeArchive>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          sub_2216FDF0C(a3, v13, v10);
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
        sub_221567188((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_221567030(a3, &v20))
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

unsigned __int8 *TSCE::ASTNodeArrayArchive::_InternalSerialize(TSCE::ASTNodeArrayArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
      v8 = *(v7 + 6);
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

      a2 = TSCE::ASTNodeArrayArchive_ASTNodeArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ASTNodeArrayArchive::ByteSizeLong(TSCE::ASTNodeArrayArchive *this)
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
      v7 = TSCE::ASTNodeArrayArchive_ASTNodeArchive::ByteSizeLong(v6);
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

uint64_t TSCE::ASTNodeArrayArchive::MergeFrom(TSCE::ASTNodeArrayArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TSCE::ASTNodeArrayArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive::CopyFrom(uint64_t *this, const TSCE::ASTNodeArrayArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::ASTNodeArrayArchive::InternalSwap(TSCE::ASTNodeArrayArchive *this, TSCE::ASTNodeArrayArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

void *TSCE::FormulaTranslationFlagsArchive::FormulaTranslationFlagsArchive(void *result, uint64_t a2)
{
  *result = &unk_2834AEF10;
  result[1] = a2;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

{
  *result = &unk_2834AEF10;
  result[1] = a2;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

TSCE::FormulaTranslationFlagsArchive *TSCE::FormulaTranslationFlagsArchive::FormulaTranslationFlagsArchive(TSCE::FormulaTranslationFlagsArchive *this, const TSCE::FormulaTranslationFlagsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AEF10;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 6);
  *(this + 28) = *(a2 + 28);
  *(this + 6) = v6;
  return this;
}

void TSCE::FormulaTranslationFlagsArchive::~FormulaTranslationFlagsArchive(TSCE::FormulaTranslationFlagsArchive *this)
{
  sub_2214DFCF8(this + 1);
}

{
  sub_2214DFCF8(this + 1);
}

{
  sub_2214DFCF8(this + 1);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::FormulaTranslationFlagsArchive::default_instance(TSCE::FormulaTranslationFlagsArchive *this)
{
  if (atomic_load_explicit(scc_info_FormulaTranslationFlagsArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_FormulaTranslationFlagsArchive_default_instance_;
}

uint64_t *TSCE::FormulaTranslationFlagsArchive::Clear(TSCE::FormulaTranslationFlagsArchive *this)
{
  if ((*(this + 16) & 0x1F) != 0)
  {
    *(this + 28) = 0;
    *(this + 6) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TSCE::FormulaTranslationFlagsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v40 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v40) & 1) == 0)
  {
    while (1)
    {
      v7 = (v40 + 1);
      v8 = *v40;
      if ((*v40 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v40, (v9 - 128));
      v40 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_63;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 8)
          {
            goto LABEL_41;
          }

          v5 |= 1u;
          v25 = (v7 + 1);
          v24 = *v7;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_40;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if ((v26 & 0x80000000) == 0)
          {
            v25 = (v7 + 2);
LABEL_40:
            v40 = v25;
            *(a1 + 24) = v24 != 0;
            goto LABEL_48;
          }

          v34 = google::protobuf::internal::VarintParseSlow64(v7, v24);
          v40 = v34;
          *(a1 + 24) = v35 != 0;
          if (!v34)
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v10 != 2 || v8 != 16)
          {
LABEL_41:
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
              sub_221567188((a1 + 8));
            }

            v40 = google::protobuf::internal::UnknownFieldParse();
            if (!v40)
            {
LABEL_63:
              v40 = 0;
              goto LABEL_2;
            }

            goto LABEL_48;
          }

          v5 |= 2u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_25:
            v40 = v16;
            *(a1 + 25) = v15 != 0;
            goto LABEL_48;
          }

          v38 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v40 = v38;
          *(a1 + 25) = v39 != 0;
          if (!v38)
          {
            goto LABEL_63;
          }
        }
      }

      else if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_41;
        }

        v5 |= 4u;
        v19 = (v7 + 1);
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_30:
          v40 = v19;
          *(a1 + 26) = v18 != 0;
          goto LABEL_48;
        }

        v30 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v40 = v30;
        *(a1 + 26) = v31 != 0;
        if (!v30)
        {
          goto LABEL_63;
        }
      }

      else if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_41;
        }

        v5 |= 8u;
        v22 = (v7 + 1);
        v21 = *v7;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_35;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if ((v23 & 0x80000000) == 0)
        {
          v22 = (v7 + 2);
LABEL_35:
          v40 = v22;
          *(a1 + 27) = v21 != 0;
          goto LABEL_48;
        }

        v32 = google::protobuf::internal::VarintParseSlow64(v7, v21);
        v40 = v32;
        *(a1 + 27) = v33 != 0;
        if (!v32)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_41;
        }

        v5 |= 0x10u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_15:
          v40 = v12;
          *(a1 + 28) = v11 != 0;
          goto LABEL_48;
        }

        v36 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v40 = v36;
        *(a1 + 28) = v37 != 0;
        if (!v36)
        {
          goto LABEL_63;
        }
      }

LABEL_48:
      if (sub_221567030(a3, &v40))
      {
        goto LABEL_2;
      }
    }

    v7 = (v40 + 2);
LABEL_6:
    v40 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v40;
}

unsigned __int8 *TSCE::FormulaTranslationFlagsArchive::_InternalSerialize(TSCE::FormulaTranslationFlagsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 24);
    *a2 = 8;
    a2[1] = v6;
    a2 += 2;
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
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

  v7 = *(this + 25);
  *a2 = 16;
  a2[1] = v7;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 26);
  *a2 = 24;
  a2[1] = v8;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 27);
  *a2 = 32;
  a2[1] = v9;
  a2 += 2;
  if ((v5 & 0x10) != 0)
  {
LABEL_19:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 28);
    *a2 = 40;
    a2[1] = v10;
    a2 += 2;
  }

LABEL_22:
  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::FormulaTranslationFlagsArchive::ByteSizeLong(TSCE::FormulaTranslationFlagsArchive *this)
{
  v1 = *(this + 4);
  v2 = 2 * (v1 & 1) + (v1 & 2) + ((v1 >> 1) & 2) + ((v1 >> 2) & 2) + ((v1 >> 3) & 2);
  if ((*(this + 4) & 0x1F) != 0)
  {
    v3 = v2;
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

uint64_t TSCE::FormulaTranslationFlagsArchive::MergeFrom(TSCE::FormulaTranslationFlagsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::FormulaTranslationFlagsArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::FormulaTranslationFlagsArchive::MergeFrom(uint64_t this, const TSCE::FormulaTranslationFlagsArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x1F) != 0)
  {
    if (v5)
    {
      *(v3 + 24) = *(a2 + 24);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 25) = *(a2 + 25);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    *(v3 + 26) = *(a2 + 26);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
LABEL_10:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_9:
      *(v3 + 28) = *(a2 + 28);
      goto LABEL_10;
    }

LABEL_15:
    *(v3 + 27) = *(a2 + 27);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

TSCE::FormulaTranslationFlagsArchive *TSCE::FormulaTranslationFlagsArchive::CopyFrom(TSCE::FormulaTranslationFlagsArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormulaTranslationFlagsArchive::Clear(this);

    return TSCE::FormulaTranslationFlagsArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::FormulaTranslationFlagsArchive *TSCE::FormulaTranslationFlagsArchive::CopyFrom(TSCE::FormulaTranslationFlagsArchive *this, const TSCE::FormulaTranslationFlagsArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormulaTranslationFlagsArchive::Clear(this);

    return TSCE::FormulaTranslationFlagsArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::FormulaTranslationFlagsArchive::InternalSwap(TSCE::FormulaTranslationFlagsArchive *this, TSCE::FormulaTranslationFlagsArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  LOBYTE(v6) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v6;
  return result;
}

TSP::UUID *TSCE::FormulaArchive::clear_host_table_uid(TSCE::FormulaArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::UUID *TSCE::FormulaArchive::clear_host_column_uid(TSCE::FormulaArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::UUID *TSCE::FormulaArchive::clear_host_row_uid(TSCE::FormulaArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSCE::FormulaArchive *TSCE::FormulaArchive::FormulaArchive(TSCE::FormulaArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AEFC0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 36) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834AEFC0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 36) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSCE::FormulaArchive *TSCE::FormulaArchive::FormulaArchive(TSCE::FormulaArchive *this, const TSCE::FormulaArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AEFC0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v5 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  v7 = *(a2 + 8);
  *(this + 36) = *(a2 + 36);
  *(this + 8) = v7;
  return this;
}

void TSCE::FormulaArchive::~FormulaArchive(TSCE::FormulaArchive *this)
{
  sub_22153E9B4(this);
  sub_2214DFCF8(this + 1);
}

{
  TSCE::FormulaArchive::~FormulaArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_22153E9B4(uint64_t *result)
{
  if (result != TSCE::_FormulaArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSCE::ASTNodeArrayArchive::~ASTNodeArrayArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[4];
    if (v3)
    {
      sub_2214DFCF8((v3 + 8));
      MEMORY[0x223DA1450](v3, 0x1081C40E25C5AF7);
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::UUID::~UUID(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x223DA1450]();
    }

    result = v1[7];
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TSCE::FormulaArchive::default_instance(TSCE::FormulaArchive *this)
{
  if (atomic_load_explicit(scc_info_FormulaArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_FormulaArchive_default_instance_;
}

uint64_t *TSCE::FormulaArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    this = TSCE::ASTNodeArrayArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      this = TSP::UUID::Clear(*(v1 + 40));
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSCE::FormulaTranslationFlagsArchive::Clear(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  this = TSP::UUID::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    this = TSP::UUID::Clear(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 65) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TSCE::FormulaArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v47 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v47) & 1) == 0)
  {
    while (1)
    {
      v7 = (v47 + 1);
      v8 = *v47;
      if ((*v47 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v47, (v9 - 128));
      v47 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_92;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 4)
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 != 24)
            {
              goto LABEL_73;
            }

            v5 |= 0x40u;
            v28 = (v7 + 1);
            LODWORD(v29) = *v7;
            if ((*v7 & 0x80000000) == 0)
            {
              goto LABEL_55;
            }

            v30 = *v28;
            v29 = (v29 + (v30 << 7) - 128);
            if ((v30 & 0x80000000) == 0)
            {
              v28 = (v7 + 2);
LABEL_55:
              v47 = v28;
              *(a1 + 68) = v29;
              goto LABEL_81;
            }

            v43 = google::protobuf::internal::VarintParseSlow32(v7, v29);
            v47 = v43;
            *(a1 + 68) = v44;
            if (!v43)
            {
              goto LABEL_92;
            }
          }

          else
          {
            if (v10 != 4 || v8 != 32)
            {
              goto LABEL_73;
            }

            v5 |= 0x80u;
            v19 = (v7 + 1);
            v18 = *v7;
            if ((v18 & 0x8000000000000000) == 0)
            {
              goto LABEL_34;
            }

            v20 = *v19;
            v18 = (v20 << 7) + v18 - 128;
            if ((v20 & 0x80000000) == 0)
            {
              v19 = (v7 + 2);
LABEL_34:
              v47 = v19;
              *(a1 + 72) = v18 != 0;
              goto LABEL_81;
            }

            v41 = google::protobuf::internal::VarintParseSlow64(v7, v18);
            v47 = v41;
            *(a1 + 72) = v42 != 0;
            if (!v41)
            {
              goto LABEL_92;
            }
          }
        }

        else
        {
          if (v10 == 1)
          {
            if (v8 != 10)
            {
              goto LABEL_73;
            }

            *(a1 + 16) |= 1u;
            v26 = *(a1 + 24);
            if (!v26)
            {
              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v26 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive>(v27);
              *(a1 + 24) = v26;
              v7 = v47;
            }

            v23 = sub_2216FD54C(a3, v26, v7);
            goto LABEL_80;
          }

          if (v10 != 2 || v8 != 16)
          {
            goto LABEL_73;
          }

          v5 |= 0x20u;
          v15 = (v7 + 1);
          LODWORD(v16) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_27;
          }

          v17 = *v15;
          v16 = (v16 + (v17 << 7) - 128);
          if ((v17 & 0x80000000) == 0)
          {
            v15 = (v7 + 2);
LABEL_27:
            v47 = v15;
            *(a1 + 64) = v16;
            goto LABEL_81;
          }

          v39 = google::protobuf::internal::VarintParseSlow32(v7, v16);
          v47 = v39;
          *(a1 + 64) = v40;
          if (!v39)
          {
            goto LABEL_92;
          }
        }
      }

      else
      {
        if (v8 >> 3 > 6)
        {
          if (v10 == 7)
          {
            if (v8 != 58)
            {
              goto LABEL_73;
            }

            *(a1 + 16) |= 4u;
            v11 = *(a1 + 40);
            if (v11)
            {
              goto LABEL_72;
            }

            v31 = *(a1 + 8);
            if (v31)
            {
              v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
            }

            v32 = MEMORY[0x223DA0360](v31);
            LODWORD(v11) = v32;
            *(a1 + 40) = v32;
          }

          else
          {
            if (v10 != 8)
            {
              if (v10 != 9 || v8 != 74)
              {
                goto LABEL_73;
              }

              *(a1 + 16) |= 0x10u;
              v11 = *(a1 + 56);
              if (!v11)
              {
                v12 = *(a1 + 8);
                if (v12)
                {
                  v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
                }

                v13 = MEMORY[0x223DA0360](v12);
                LODWORD(v11) = v13;
                *(a1 + 56) = v13;
                goto LABEL_71;
              }

LABEL_72:
              v23 = sub_2216F813C(a3, v11, v7);
              goto LABEL_80;
            }

            if (v8 != 66)
            {
              goto LABEL_73;
            }

            *(a1 + 16) |= 8u;
            v11 = *(a1 + 48);
            if (v11)
            {
              goto LABEL_72;
            }

            v36 = *(a1 + 8);
            if (v36)
            {
              v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
            }

            v37 = MEMORY[0x223DA0360](v36);
            LODWORD(v11) = v37;
            *(a1 + 48) = v37;
          }

LABEL_71:
          v7 = v47;
          goto LABEL_72;
        }

        if (v10 != 5)
        {
          if (v10 == 6 && v8 == 50)
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

              v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaTranslationFlagsArchive>(v22);
              *(a1 + 32) = v21;
              v7 = v47;
            }

            v23 = sub_2216FDFDC(a3, v21, v7);
            goto LABEL_80;
          }

LABEL_73:
          if (v8)
          {
            v38 = (v8 & 7) == 4;
          }

          else
          {
            v38 = 1;
          }

          if (v38)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v23 = google::protobuf::internal::UnknownFieldParse();
LABEL_80:
          v47 = v23;
          if (!v23)
          {
            goto LABEL_92;
          }

          goto LABEL_81;
        }

        if (v8 != 40)
        {
          goto LABEL_73;
        }

        v5 |= 0x100u;
        v34 = (v7 + 1);
        v33 = *v7;
        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_65;
        }

        v35 = *v34;
        v33 = (v35 << 7) + v33 - 128;
        if ((v35 & 0x80000000) == 0)
        {
          v34 = (v7 + 2);
LABEL_65:
          v47 = v34;
          *(a1 + 73) = v33 != 0;
          goto LABEL_81;
        }

        v45 = google::protobuf::internal::VarintParseSlow64(v7, v33);
        v47 = v45;
        *(a1 + 73) = v46 != 0;
        if (!v45)
        {
LABEL_92:
          v47 = 0;
          goto LABEL_2;
        }
      }

LABEL_81:
      if (sub_221567030(a3, &v47))
      {
        goto LABEL_2;
      }
    }

    v7 = (v47 + 2);
LABEL_6:
    v47 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v47;
}

unsigned __int8 *TSCE::FormulaArchive::_InternalSerialize(TSCE::FormulaArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    v7 = *(v6 + 10);
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

    a2 = TSCE::ASTNodeArrayArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

LABEL_32:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(this + 17);
      *a2 = 24;
      if (v16 > 0x7F)
      {
        a2[1] = v16 | 0x80;
        v17 = v16 >> 7;
        if (v16 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++a2;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(a2 - 1) = v18;
          if ((v5 & 0x80) != 0)
          {
            goto LABEL_43;
          }
        }

        else
        {
          a2[2] = v17;
          a2 += 3;
          if ((v5 & 0x80) != 0)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        a2[1] = v16;
        a2 += 2;
        if ((v5 & 0x80) != 0)
        {
          goto LABEL_43;
        }
      }

LABEL_5:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_46;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 16);
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
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      a2[2] = v13;
      a2 += 3;
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    a2[1] = v12;
    a2 += 2;
    if ((v5 & 0x40) != 0)
    {
      goto LABEL_32;
    }
  }

LABEL_4:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_5;
  }

LABEL_43:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 72);
  *a2 = 32;
  a2[1] = v20;
  a2 += 2;
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

LABEL_46:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 73);
  *a2 = 40;
  a2[1] = v21;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_59;
  }

LABEL_49:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 4);
  *a2 = 50;
  v23 = *(v22 + 5);
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

  a2 = TSCE::FormulaTranslationFlagsArchive::_InternalSerialize(v22, v24, a3);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_69;
  }

LABEL_59:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v28 = *(this + 5);
  *a2 = 58;
  v29 = *(v28 + 5);
  if (v29 > 0x7F)
  {
    a2[1] = v29 | 0x80;
    v31 = v29 >> 7;
    if (v29 >> 14)
    {
      v30 = a2 + 3;
      do
      {
        *(v30 - 1) = v31 | 0x80;
        v32 = v31 >> 7;
        ++v30;
        v33 = v31 >> 14;
        v31 >>= 7;
      }

      while (v33);
      *(v30 - 1) = v32;
    }

    else
    {
      a2[2] = v31;
      v30 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v29;
    v30 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v28, v30, a3);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_79;
  }

LABEL_69:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v34 = *(this + 6);
  *a2 = 66;
  v35 = *(v34 + 5);
  if (v35 > 0x7F)
  {
    a2[1] = v35 | 0x80;
    v37 = v35 >> 7;
    if (v35 >> 14)
    {
      v36 = a2 + 3;
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
      a2[2] = v37;
      v36 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v35;
    v36 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v34, v36, a3);
  if ((v5 & 0x10) != 0)
  {
LABEL_79:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v40 = *(this + 7);
    *a2 = 74;
    v41 = *(v40 + 5);
    if (v41 > 0x7F)
    {
      a2[1] = v41 | 0x80;
      v43 = v41 >> 7;
      if (v41 >> 14)
      {
        v42 = a2 + 3;
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
        a2[2] = v43;
        v42 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v41;
      v42 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v40, v42, a3);
  }

LABEL_89:
  v46 = *(this + 1);
  if ((v46 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v46 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::FormulaArchive::ByteSizeLong(TSCE::FormulaArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCE::ASTNodeArrayArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xFE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v7 = TSCE::FormulaTranslationFlagsArchive::ByteSizeLong(*(this + 4));
      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 4) == 0)
      {
LABEL_7:
        if ((v2 & 8) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

    v8 = TSP::UUID::ByteSizeLong(*(this + 5));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = TSP::UUID::ByteSizeLong(*(this + 6));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
LABEL_9:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = TSP::UUID::ByteSizeLong(*(this + 7));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x20) == 0)
    {
LABEL_10:
      if ((v2 & 0x40) == 0)
      {
LABEL_12:
        v3 += (v2 >> 6) & 2;
        goto LABEL_13;
      }

LABEL_11:
      v3 += ((9 * (__clz(*(this + 17) | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_12;
    }

LABEL_19:
    v3 += ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v5 = v3 + ((v2 >> 7) & 2);
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v3 + ((v2 >> 7) & 2);
  }
}

uint64_t TSCE::FormulaArchive::MergeFrom(TSCE::FormulaArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::FormulaArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::FormulaArchive::MergeFrom(uint64_t this, const TSCE::FormulaArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCE::_ASTNodeArrayArchive_default_instance_;
      }

      this = TSCE::ASTNodeArrayArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v9 = *(v3 + 32);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaTranslationFlagsArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSCE::_FormulaTranslationFlagsArchive_default_instance_;
      }

      this = TSCE::FormulaTranslationFlagsArchive::MergeFrom(v9, v11);
    }

    v12 = MEMORY[0x277D809E0];
    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v14 = *(v3 + 40);
      if (!v14)
      {
        v15 = *(v3 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x223DA0360](v15);
        *(v3 + 40) = v14;
      }

      if (*(a2 + 5))
      {
        v16 = *(a2 + 5);
      }

      else
      {
        v16 = v12;
      }

      this = TSP::UUID::MergeFrom(v14, v16);
      if ((v5 & 8) == 0)
      {
LABEL_24:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_49;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_24;
    }

    *(v3 + 16) |= 8u;
    v17 = *(v3 + 48);
    if (!v17)
    {
      v18 = *(v3 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x223DA0360](v18);
      *(v3 + 48) = v17;
    }

    if (*(a2 + 6))
    {
      v19 = *(a2 + 6);
    }

    else
    {
      v19 = v12;
    }

    this = TSP::UUID::MergeFrom(v17, v19);
    if ((v5 & 0x10) == 0)
    {
LABEL_25:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_57;
    }

LABEL_49:
    *(v3 + 16) |= 0x10u;
    v20 = *(v3 + 56);
    if (!v20)
    {
      v21 = *(v3 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x223DA0360](v21);
      *(v3 + 56) = v20;
    }

    if (*(a2 + 7))
    {
      v22 = *(a2 + 7);
    }

    else
    {
      v22 = v12;
    }

    this = TSP::UUID::MergeFrom(v20, v22);
    if ((v5 & 0x20) == 0)
    {
LABEL_26:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_58;
    }

LABEL_57:
    *(v3 + 64) = *(a2 + 16);
    if ((v5 & 0x40) == 0)
    {
LABEL_27:
      if ((v5 & 0x80) == 0)
      {
LABEL_29:
        *(v3 + 16) |= v5;
        goto LABEL_30;
      }

LABEL_28:
      *(v3 + 72) = *(a2 + 72);
      goto LABEL_29;
    }

LABEL_58:
    *(v3 + 68) = *(a2 + 17);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_30:
  if ((v5 & 0x100) != 0)
  {
    v13 = *(a2 + 73);
    *(v3 + 16) |= 0x100u;
    *(v3 + 73) = v13;
  }

  return this;
}

uint64_t *TSCE::FormulaArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormulaArchive::Clear(this);

    return TSCE::FormulaArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::FormulaArchive::CopyFrom(uint64_t *this, const TSCE::FormulaArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormulaArchive::Clear(this);

    return TSCE::FormulaArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::FormulaArchive::IsInitialized(TSCE::FormulaArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 3);
  v4 = *(v3 + 24);
  while (v4 >= 1)
  {
    v5 = v4 - 1;
    IsInitialized = TSCE::ASTNodeArrayArchive_ASTNodeArchive::IsInitialized(*(*(v3 + 32) + 8 * v4));
    v4 = v5;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(this + 4);
  if ((v7 & 4) != 0)
  {
    result = TSP::UUID::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v7 = *(this + 4);
  }

  if ((v7 & 8) != 0)
  {
    result = TSP::UUID::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v7 = *(this + 4);
  }

  if ((v7 & 0x10) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCE::FormulaArchive::InternalSwap(TSCE::FormulaArchive *this, TSCE::FormulaArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  *(this + 40) = *(a2 + 40);
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  v9 = *(this + 7);
  v10 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  LOWORD(v9) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v9;
  return result;
}

TSCE::FunctorArchive *TSCE::FunctorArchive::FunctorArchive(TSCE::FunctorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AF070;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FunctorArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834AF070;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FunctorArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCE::FunctorArchive *TSCE::FunctorArchive::FunctorArchive(TSCE::FunctorArchive *this, const TSCE::FunctorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AF070;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 4) = *(a2 + 4);
  return this;
}

void TSCE::FunctorArchive::~FunctorArchive(TSCE::FunctorArchive *this)
{
  if (this != TSCE::_FunctorArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::FormulaArchive::~FormulaArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::FunctorArchive::~FunctorArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::FunctorArchive::default_instance(TSCE::FunctorArchive *this)
{
  if (atomic_load_explicit(scc_info_FunctorArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_FunctorArchive_default_instance_;
}

uint64_t *TSCE::FunctorArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSCE::FormulaArchive::Clear(this[3]);
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 32) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TSCE::FunctorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v28) & 1) == 0)
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
        goto LABEL_45;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_13;
        }

        v5 |= 4u;
        v17 = (v7 + 1);
        LODWORD(v18) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        v19 = *v17;
        v18 = (v18 + (v19 << 7) - 128);
        if ((v19 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_29:
          v28 = v17;
          *(a1 + 36) = v18;
          goto LABEL_36;
        }

        v26 = google::protobuf::internal::VarintParseSlow32(v7, v18);
        v28 = v26;
        *(a1 + 36) = v27;
        if (!v26)
        {
LABEL_45:
          v28 = 0;
          goto LABEL_2;
        }
      }

      else
      {
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

              v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v21);
              *(a1 + 24) = v20;
              v7 = v28;
            }

            v13 = sub_2216FE0AC(a3, v20, v7);
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
              sub_221567188((a1 + 8));
            }

            v13 = google::protobuf::internal::UnknownFieldParse();
          }

          v28 = v13;
          if (!v13)
          {
            goto LABEL_45;
          }

          goto LABEL_36;
        }

        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
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
          v28 = v14;
          *(a1 + 32) = v15;
          goto LABEL_36;
        }

        v24 = google::protobuf::internal::VarintParseSlow32(v7, v15);
        v28 = v24;
        *(a1 + 32) = v25;
        if (!v24)
        {
          goto LABEL_45;
        }
      }

LABEL_36:
      if (sub_221567030(a3, &v28))
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

unsigned __int8 *TSCE::FunctorArchive::_InternalSerialize(TSCE::FunctorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v11 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v11 | 0x80;
          v14 = v11 >> 7;
          ++v9;
          v15 = v11 >> 14;
          v11 >>= 7;
        }

        while (v15);
        *(v9 - 1) = v14;
      }

      else
      {
        a2[2] = v11;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSCE::FormulaArchive::_InternalSerialize(v7, v9, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_4;
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

  v16 = *(this + 8);
  *a2 = 16;
  if (v16 > 0x7F)
  {
    a2[1] = v16 | 0x80;
    v17 = v16 >> 7;
    if (v16 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v17 | 0x80;
        v18 = v17 >> 7;
        ++a2;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
      *(a2 - 1) = v18;
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      a2[2] = v17;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    a2[1] = v16;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 9);
  *a2 = 24;
  if (v6 > 0x7F)
  {
    a2[1] = v6 | 0x80;
    v10 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v12 = v10 >> 7;
        ++a2;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
  }

LABEL_34:
  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::FunctorArchive::RequiredFieldsByteSizeFallback(TSCE::FunctorArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCE::FormulaArchive::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::FunctorArchive::ByteSizeLong(TSCE::FormulaArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSCE::FunctorArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::FormulaArchive::ByteSizeLong(this[3]);
    v3 = v2 + ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((this[2] & 4) != 0)
  {
    v3 += ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSCE::FunctorArchive::MergeFrom(TSCE::FunctorArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::FunctorArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::FunctorArchive::MergeFrom(uint64_t this, const TSCE::FunctorArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TSCE::_FormulaArchive_default_instance_;
      }

      this = TSCE::FormulaArchive::MergeFrom(v6, v8);
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
        *(v3 + 36) = *(a2 + 9);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSCE::FunctorArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FunctorArchive::Clear(this);

    return TSCE::FunctorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::FunctorArchive::CopyFrom(uint64_t *this, const TSCE::FunctorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FunctorArchive::Clear(this);

    return TSCE::FunctorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::FunctorArchive::IsInitialized(TSCE::FormulaArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSCE::FormulaArchive::IsInitialized(this[3]);
  }
}

__n128 TSCE::FunctorArchive::InternalSwap(TSCE::FunctorArchive *this, TSCE::FunctorArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  return result;
}

TSCE::FormatStructArchive *TSCE::FormatStructArchive::FormatStructArchive(TSCE::FormatStructArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AF120;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormatStructArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  return this;
}

TSCE::FormatStructArchive *TSCE::FormatStructArchive::FormatStructArchive(TSCE::FormatStructArchive *this, const TSCE::FormatStructArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834AF120;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  v6 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 4) = v6;
  if ((v4 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  v7 = *(a2 + 40);
  v8 = *(a2 + 56);
  *(this + 68) = *(a2 + 68);
  *(this + 56) = v8;
  *(this + 40) = v7;
  return this;
}

void TSCE::FormatStructArchive::~FormatStructArchive(TSCE::FormatStructArchive *this)
{
  v2 = *(this + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x223DA1450](v4, 0x1012C40EC159624);
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::FormatStructArchive::~FormatStructArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::FormatStructArchive::default_instance(TSCE::FormatStructArchive *this)
{
  if (atomic_load_explicit(scc_info_FormatStructArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_FormatStructArchive_default_instance_;
}

uint64_t *TSCE::FormatStructArchive::Clear(TSCE::FormatStructArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v3 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_11:
  if ((v1 & 0xFC) != 0)
  {
    *(this + 5) = 0;
    *(this + 6) = 0;
    *(this + 53) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 69) = 0;
    *(this + 61) = 0;
    *(this + 76) = 0;
  }

  v5 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v5)
  {
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TSCE::FormatStructArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v84 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v84) & 1) == 0)
  {
    while (1)
    {
      v7 = (v84 + 1);
      v8 = *v84;
      if (*v84 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v84, (v9 - 128));
          v84 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_124;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v84 + 2);
      }

      v84 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_85;
          }

          v5 |= 4u;
          v10 = (v7 + 1);
          LODWORD(v11) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          v12 = *v10;
          v11 = (v11 + (v12 << 7) - 128);
          if ((v12 & 0x80000000) == 0)
          {
            v10 = (v7 + 2);
LABEL_12:
            v84 = v10;
            *(a1 + 40) = v11;
            goto LABEL_93;
          }

          v72 = google::protobuf::internal::VarintParseSlow32(v7, v11);
          v84 = v72;
          *(a1 + 40) = v73;
          if (!v72)
          {
            goto LABEL_124;
          }

          goto LABEL_93;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_85;
          }

          v5 |= 8u;
          v39 = (v7 + 1);
          LODWORD(v40) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_61;
          }

          v41 = *v39;
          v40 = (v40 + (v41 << 7) - 128);
          if (v41 < 0)
          {
            v74 = google::protobuf::internal::VarintParseSlow32(v7, v40);
            v84 = v74;
            *(a1 + 44) = v75;
            if (!v74)
            {
              goto LABEL_124;
            }
          }

          else
          {
            v39 = (v7 + 2);
LABEL_61:
            v84 = v39;
            *(a1 + 44) = v40;
          }

          goto LABEL_93;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_85;
          }

          *(a1 + 16) |= 1u;
          goto LABEL_69;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_85;
          }

          v5 |= 0x10u;
          v33 = (v7 + 1);
          LODWORD(v34) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_51;
          }

          v35 = *v33;
          v34 = (v34 + (v35 << 7) - 128);
          if (v35 < 0)
          {
            v68 = google::protobuf::internal::VarintParseSlow32(v7, v34);
            v84 = v68;
            *(a1 + 48) = v69;
            if (!v68)
            {
              goto LABEL_124;
            }
          }

          else
          {
            v33 = (v7 + 2);
LABEL_51:
            v84 = v33;
            *(a1 + 48) = v34;
          }

          goto LABEL_93;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_85;
          }

          v5 |= 0x80u;
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
            v60 = google::protobuf::internal::VarintParseSlow64(v7, v21);
            v84 = v60;
            *(a1 + 60) = v61 != 0;
            if (!v60)
            {
              goto LABEL_124;
            }
          }

          else
          {
            v22 = (v7 + 2);
LABEL_29:
            v84 = v22;
            *(a1 + 60) = v21 != 0;
          }

          goto LABEL_93;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_85;
          }

          v5 |= 0x100u;
          v43 = (v7 + 1);
          v42 = *v7;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_66;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v76 = google::protobuf::internal::VarintParseSlow64(v7, v42);
            v84 = v76;
            *(a1 + 61) = v77 != 0;
            if (!v76)
            {
              goto LABEL_124;
            }
          }

          else
          {
            v43 = (v7 + 2);
LABEL_66:
            v84 = v43;
            *(a1 + 61) = v42 != 0;
          }

          goto LABEL_93;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_85;
          }

          v5 |= 0x20u;
          v46 = (v7 + 1);
          LODWORD(v47) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_74;
          }

          v48 = *v46;
          v47 = (v47 + (v48 << 7) - 128);
          if (v48 < 0)
          {
            v78 = google::protobuf::internal::VarintParseSlow32(v7, v47);
            v84 = v78;
            *(a1 + 52) = v79;
            if (!v78)
            {
              goto LABEL_124;
            }
          }

          else
          {
            v46 = (v7 + 2);
LABEL_74:
            v84 = v46;
            *(a1 + 52) = v47;
          }

          goto LABEL_93;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_85;
          }

          v5 |= 0x40u;
          v36 = (v7 + 1);
          LODWORD(v37) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          v38 = *v36;
          v37 = (v37 + (v38 << 7) - 128);
          if (v38 < 0)
          {
            v70 = google::protobuf::internal::VarintParseSlow32(v7, v37);
            v84 = v70;
            *(a1 + 56) = v71;
            if (!v70)
            {
              goto LABEL_124;
            }
          }

          else
          {
            v36 = (v7 + 2);
LABEL_56:
            v84 = v36;
            *(a1 + 56) = v37;
          }

          goto LABEL_93;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_85;
          }

          v5 |= 0x800u;
          v52 = (v7 + 1);
          LODWORD(v53) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_84;
          }

          v54 = *v52;
          v53 = (v53 + (v54 << 7) - 128);
          if (v54 < 0)
          {
            v82 = google::protobuf::internal::VarintParseSlow32(v7, v53);
            v84 = v82;
            *(a1 + 64) = v83;
            if (!v82)
            {
              goto LABEL_124;
            }
          }

          else
          {
            v52 = (v7 + 2);
LABEL_84:
            v84 = v52;
            *(a1 + 64) = v53;
          }

          goto LABEL_93;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_85;
          }

          v5 |= 0x200u;
          v28 = (v7 + 1);
          v27 = *v7;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v64 = google::protobuf::internal::VarintParseSlow64(v7, v27);
            v84 = v64;
            *(a1 + 62) = v65 != 0;
            if (!v64)
            {
              goto LABEL_124;
            }
          }

          else
          {
            v28 = (v7 + 2);
LABEL_39:
            v84 = v28;
            *(a1 + 62) = v27 != 0;
          }

          goto LABEL_93;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_85;
          }

          v5 |= 0x1000u;
          v49 = (v7 + 1);
          LODWORD(v50) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_79;
          }

          v51 = *v49;
          v50 = (v50 + (v51 << 7) - 128);
          if (v51 < 0)
          {
            v80 = google::protobuf::internal::VarintParseSlow32(v7, v50);
            v84 = v80;
            *(a1 + 68) = v81;
            if (!v80)
            {
              goto LABEL_124;
            }
          }

          else
          {
            v49 = (v7 + 2);
LABEL_79:
            v84 = v49;
            *(a1 + 68) = v50;
          }

          goto LABEL_93;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_85;
          }

          v5 |= 0x400u;
          v19 = (v7 + 1);
          v18 = *v7;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v58 = google::protobuf::internal::VarintParseSlow64(v7, v18);
            v84 = v58;
            *(a1 + 63) = v59 != 0;
            if (!v58)
            {
              goto LABEL_124;
            }
          }

          else
          {
            v19 = (v7 + 2);
LABEL_24:
            v84 = v19;
            *(a1 + 63) = v18 != 0;
          }

          goto LABEL_93;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_85;
          }

          v5 |= 0x2000u;
          v25 = (v7 + 1);
          v24 = *v7;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v62 = google::protobuf::internal::VarintParseSlow64(v7, v24);
            v84 = v62;
            *(a1 + 72) = v63 != 0;
            if (!v62)
            {
              goto LABEL_124;
            }
          }

          else
          {
            v25 = (v7 + 2);
LABEL_34:
            v84 = v25;
            *(a1 + 72) = v24 != 0;
          }

          goto LABEL_93;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_85;
          }

          *(a1 + 16) |= 2u;
LABEL_69:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v45 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_92;
        case 0xFu:
          if (v8 != 120)
          {
            goto LABEL_85;
          }

          v5 |= 0x4000u;
          v15 = (v7 + 1);
          LODWORD(v16) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          v17 = *v15;
          v16 = (v16 + (v17 << 7) - 128);
          if (v17 < 0)
          {
            v56 = google::protobuf::internal::VarintParseSlow32(v7, v16);
            v84 = v56;
            *(a1 + 76) = v57;
            if (!v56)
            {
              goto LABEL_124;
            }
          }

          else
          {
            v15 = (v7 + 2);
LABEL_19:
            v84 = v15;
            *(a1 + 76) = v16;
          }

          goto LABEL_93;
        case 0x10u:
          if (v8 != 128)
          {
            goto LABEL_85;
          }

          v5 |= 0x8000u;
          v30 = (v7 + 1);
          LODWORD(v31) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          v32 = *v30;
          v31 = (v31 + (v32 << 7) - 128);
          if (v32 < 0)
          {
            v66 = google::protobuf::internal::VarintParseSlow32(v7, v31);
            v84 = v66;
            *(a1 + 80) = v67;
            if (!v66)
            {
              goto LABEL_124;
            }
          }

          else
          {
            v30 = (v7 + 2);
LABEL_46:
            v84 = v30;
            *(a1 + 80) = v31;
          }

          goto LABEL_93;
        default:
LABEL_85:
          if (v8)
          {
            v55 = (v8 & 7) == 4;
          }

          else
          {
            v55 = 1;
          }

          if (v55)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v45 = google::protobuf::internal::UnknownFieldParse();
LABEL_92:
          v84 = v45;
          if (!v45)
          {
LABEL_124:
            v84 = 0;
            goto LABEL_2;
          }

LABEL_93:
          if (sub_221567030(a3, &v84))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v84;
}

unsigned __int8 *TSCE::FormatStructArchive::_InternalSerialize(TSCE::FormatStructArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_37:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(this + 11);
    *v4 = 16;
    if (v15 > 0x7F)
    {
      v4[1] = v15 | 0x80;
      v16 = v15 >> 7;
      if (v15 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v4;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v4 - 1) = v17;
        if (v6)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v4[2] = v16;
        v4 += 3;
        if (v6)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      v4[1] = v15;
      v4 += 2;
      if (v6)
      {
        goto LABEL_48;
      }
    }

LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_49:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v19 = *(this + 12);
    *v4 = 32;
    if (v19 > 0x7F)
    {
      v4[1] = v19 | 0x80;
      v20 = v19 >> 7;
      if (v19 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v20 | 0x80;
          v21 = v20 >> 7;
          ++v4;
          v22 = v20 >> 14;
          v20 >>= 7;
        }

        while (v22);
        *(v4 - 1) = v21;
        if ((v6 & 0x80) != 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v4[2] = v20;
        v4 += 3;
        if ((v6 & 0x80) != 0)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v4[1] = v19;
      v4 += 2;
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_60;
      }
    }

LABEL_6:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_63;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 10);
  *v4 = 8;
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v10 | 0x80;
        v13 = v10 >> 7;
        ++v4;
        v14 = v10 >> 14;
        v10 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
      if ((v6 & 8) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v4[2] = v10;
      v4 += 3;
      if ((v6 & 8) != 0)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v4[1] = v8;
    v4 += 2;
    if ((v6 & 8) != 0)
    {
      goto LABEL_37;
    }
  }

LABEL_3:
  if ((v6 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_48:
  v4 = sub_22150C00C(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_49;
  }

LABEL_5:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_6;
  }

LABEL_60:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 60);
  *v4 = 40;
  v4[1] = v23;
  v4 += 2;
  if ((v6 & 0x100) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_66:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(this + 13);
    *v4 = 56;
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
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v4[2] = v26;
        v4 += 3;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_77;
        }
      }
    }

    else
    {
      v4[1] = v25;
      v4 += 2;
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_77;
      }
    }

LABEL_9:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_10;
    }

LABEL_88:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v33 = *(this + 16);
    *v4 = 72;
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
        if ((v6 & 0x200) != 0)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v4[2] = v34;
        v4 += 3;
        if ((v6 & 0x200) != 0)
        {
          goto LABEL_99;
        }
      }
    }

    else
    {
      v4[1] = v33;
      v4 += 2;
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_99;
      }
    }

LABEL_11:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

LABEL_102:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v38 = *(this + 17);
    *v4 = 88;
    if (v38 > 0x7F)
    {
      v4[1] = v38 | 0x80;
      v39 = v38 >> 7;
      if (v38 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v39 | 0x80;
          v40 = v39 >> 7;
          ++v4;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
        *(v4 - 1) = v40;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v4[2] = v39;
        v4 += 3;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_113;
        }
      }
    }

    else
    {
      v4[1] = v38;
      v4 += 2;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_113;
      }
    }

LABEL_13:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_116;
  }

LABEL_63:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v24 = *(this + 61);
  *v4 = 48;
  v4[1] = v24;
  v4 += 2;
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_66;
  }

LABEL_8:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_77:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 14);
  *v4 = 64;
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
      if ((v6 & 0x800) != 0)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v4[2] = v30;
      v4 += 3;
      if ((v6 & 0x800) != 0)
      {
        goto LABEL_88;
      }
    }
  }

  else
  {
    v4[1] = v29;
    v4 += 2;
    if ((v6 & 0x800) != 0)
    {
      goto LABEL_88;
    }
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_11;
  }

LABEL_99:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v37 = *(this + 62);
  *v4 = 80;
  v4[1] = v37;
  v4 += 2;
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_102;
  }

LABEL_12:
  if ((v6 & 0x400) == 0)
  {
    goto LABEL_13;
  }

LABEL_113:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v42 = *(this + 63);
  *v4 = 96;
  v4[1] = v42;
  v4 += 2;
  if ((v6 & 0x2000) == 0)
  {
LABEL_14:
    if ((v6 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_119;
  }

LABEL_116:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v43 = *(this + 72);
  *v4 = 104;
  v4[1] = v43;
  v4 += 2;
  if ((v6 & 2) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_120;
  }

LABEL_119:
  v4 = sub_22150C00C(a3, 14, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_17;
  }

LABEL_120:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v44 = *(this + 19);
  *v4 = 120;
  if (v44 > 0x7F)
  {
    v4[1] = v44 | 0x80;
    v45 = v44 >> 7;
    if (v44 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v45 | 0x80;
        v46 = v45 >> 7;
        ++v4;
        v47 = v45 >> 14;
        v45 >>= 7;
      }

      while (v47);
      *(v4 - 1) = v46;
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_131;
      }
    }

    else
    {
      v4[2] = v45;
      v4 += 3;
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_131;
      }
    }
  }

  else
  {
    v4[1] = v44;
    v4 += 2;
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_131;
    }
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 20);
  *v4 = 384;
  if (v7 > 0x7F)
  {
    v4[2] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 4;
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
    }

    else
    {
      v4[3] = v9;
      v4 += 4;
    }
  }

  else
  {
    v4[2] = v7;
    v4 += 3;
  }

LABEL_131:
  v48 = *(this + 1);
  if ((v48 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v48 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::FormatStructArchive::ByteSizeLong(TSCE::FormatStructArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 4) != 0)
  {
    v2 = ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
      v4 = *(v3 + 23);
      v5 = *(v3 + 8);
      if ((v4 & 0x80u) == 0)
      {
        v5 = v4;
      }

      v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v1 & 2) != 0)
    {
      v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if ((v1 & 0xF8) != 0)
  {
    if ((v1 & 8) != 0)
    {
      v2 += ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 0x10) == 0)
      {
LABEL_16:
        if ((v1 & 0x20) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_33;
      }
    }

    else if ((v1 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    v2 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0x20) == 0)
    {
LABEL_17:
      if ((v1 & 0x40) == 0)
      {
LABEL_19:
        v2 += (v1 >> 6) & 2;
        goto LABEL_20;
      }

LABEL_18:
      v2 += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_19;
    }

LABEL_33:
    v2 += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
  if ((v1 & 0xFF00) != 0)
  {
    v9 = v2 + ((v1 >> 8) & 2) + ((v1 >> 7) & 2) + ((v1 >> 9) & 2);
    if ((v1 & 0x800) != 0)
    {
      v9 += ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v1 & 0x1000) != 0)
    {
      v9 += ((9 * (__clz(*(this + 17) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 = v9 + ((v1 >> 12) & 2);
    if ((v1 & 0x4000) != 0)
    {
      v2 += ((9 * (__clz(*(this + 19) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v1 & 0x8000) != 0)
    {
      v2 += ((9 * (__clz(*(this + 20) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSCE::FormatStructArchive::MergeFrom(TSCE::FormatStructArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::FormatStructArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::FormatStructArchive::MergeFrom(uint64_t this, const TSCE::FormatStructArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
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

        goto LABEL_28;
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

      goto LABEL_29;
    }

LABEL_28:
    *(v3 + 40) = *(a2 + 10);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(v3 + 44) = *(a2 + 11);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_31;
    }

LABEL_30:
    *(v3 + 48) = *(a2 + 12);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(v3 + 52) = *(a2 + 13);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        goto LABEL_14;
      }

LABEL_12:
      *(v3 + 60) = *(a2 + 60);
      goto LABEL_13;
    }

LABEL_32:
    *(v3 + 56) = *(a2 + 14);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    return this;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 61) = *(a2 + 61);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_36;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 62) = *(a2 + 62);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v3 + 63) = *(a2 + 63);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v3 + 64) = *(a2 + 16);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v3 + 68) = *(a2 + 17);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

LABEL_40:
    *(v3 + 76) = *(a2 + 19);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_39:
  *(v3 + 72) = *(a2 + 72);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_40;
  }

LABEL_22:
  if ((v5 & 0x8000) != 0)
  {
LABEL_23:
    *(v3 + 80) = *(a2 + 20);
  }

LABEL_24:
  *(v3 + 16) |= v5;
  return this;
}

TSCE::FormatStructArchive *TSCE::FormatStructArchive::CopyFrom(TSCE::FormatStructArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormatStructArchive::Clear(this);

    return TSCE::FormatStructArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::FormatStructArchive *TSCE::FormatStructArchive::CopyFrom(TSCE::FormatStructArchive *this, const TSCE::FormatStructArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormatStructArchive::Clear(this);

    return TSCE::FormatStructArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::FormatStructArchive::InternalSwap(TSCE::FormatStructArchive *this, TSCE::FormatStructArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  *(this + 40) = *(a2 + 40);
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  v9 = *(this + 7);
  v10 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  v12 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v12;
  LODWORD(v12) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v12;
  return result;
}

void *TSCE::RangeCoordinateArchive::RangeCoordinateArchive(void *result, uint64_t a2)
{
  *result = &unk_2834AF1D0;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

{
  *result = &unk_2834AF1D0;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

TSCE::RangeCoordinateArchive *TSCE::RangeCoordinateArchive::RangeCoordinateArchive(TSCE::RangeCoordinateArchive *this, const TSCE::RangeCoordinateArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AF1D0;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 24) = *(a2 + 24);
  return this;
}

void TSCE::RangeCoordinateArchive::~RangeCoordinateArchive(TSCE::RangeCoordinateArchive *this)
{
  sub_2214DFCF8(this + 1);
}

{
  sub_2214DFCF8(this + 1);
}

{
  sub_2214DFCF8(this + 1);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::RangeCoordinateArchive::default_instance(TSCE::RangeCoordinateArchive *this)
{
  if (atomic_load_explicit(scc_info_RangeCoordinateArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_RangeCoordinateArchive_default_instance_;
}

google::protobuf::internal *TSCE::RangeCoordinateArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v35 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v35) & 1) == 0)
  {
    while (1)
    {
      v7 = (v35 + 1);
      v8 = *v35;
      if ((*v35 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v35, (v9 - 128));
      v35 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_55;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 24)
          {
            goto LABEL_35;
          }

          v5 |= 4u;
          v21 = (v7 + 1);
          LODWORD(v22) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          v23 = *v21;
          v22 = (v22 + (v23 << 7) - 128);
          if ((v23 & 0x80000000) == 0)
          {
            v21 = (v7 + 2);
LABEL_34:
            v35 = v21;
            *(a1 + 32) = v22;
            goto LABEL_42;
          }

          v33 = google::protobuf::internal::VarintParseSlow32(v7, v22);
          v35 = v33;
          *(a1 + 32) = v34;
          if (!v33)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v10 != 4 || v8 != 32)
          {
            goto LABEL_35;
          }

          v5 |= 8u;
          v15 = (v7 + 1);
          LODWORD(v16) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v15;
          v16 = (v16 + (v17 << 7) - 128);
          if ((v17 & 0x80000000) == 0)
          {
            v15 = (v7 + 2);
LABEL_24:
            v35 = v15;
            *(a1 + 36) = v16;
            goto LABEL_42;
          }

          v27 = google::protobuf::internal::VarintParseSlow32(v7, v16);
          v35 = v27;
          *(a1 + 36) = v28;
          if (!v27)
          {
            goto LABEL_55;
          }
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_35;
        }

        v5 |= 1u;
        v18 = (v7 + 1);
        LODWORD(v19) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_29:
          v35 = v18;
          *(a1 + 24) = v19;
          goto LABEL_42;
        }

        v31 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v35 = v31;
        *(a1 + 24) = v32;
        if (!v31)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
LABEL_35:
          if (v8)
          {
            v24 = (v8 & 7) == 4;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v35 = google::protobuf::internal::UnknownFieldParse();
          if (!v35)
          {
LABEL_55:
            v35 = 0;
            goto LABEL_2;
          }

          goto LABEL_42;
        }

        v5 |= 2u;
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_17:
          v35 = v12;
          *(a1 + 28) = v13;
          goto LABEL_42;
        }

        v29 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v35 = v29;
        *(a1 + 28) = v30;
        if (!v29)
        {
          goto LABEL_55;
        }
      }

LABEL_42:
      if (sub_221567030(a3, &v35))
      {
        goto LABEL_2;
      }
    }

    v7 = (v35 + 2);
LABEL_6:
    v35 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v35;
}

unsigned __int8 *TSCE::RangeCoordinateArchive::_InternalSerialize(TSCE::RangeCoordinateArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 7);
    *a2 = 16;
    if (v14 > 0x7F)
    {
      a2[1] = v14 | 0x80;
      v15 = v14 >> 7;
      if (v14 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v15 | 0x80;
          v16 = v15 >> 7;
          ++a2;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
        *(a2 - 1) = v16;
        if ((v5 & 4) != 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        a2[2] = v15;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      a2[1] = v14;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_36;
      }
    }

LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_5;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 6);
  *a2 = 8;
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v9 | 0x80;
        v12 = v9 >> 7;
        ++a2;
        v13 = v9 >> 14;
        v9 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
      if ((v5 & 2) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
      if ((v5 & 2) != 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    a2[1] = v7;
    a2 += 2;
    if ((v5 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_36:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 8);
  *a2 = 24;
  if (v18 > 0x7F)
  {
    a2[1] = v18 | 0x80;
    v19 = v18 >> 7;
    if (v18 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v19 | 0x80;
        v20 = v19 >> 7;
        ++a2;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
      *(a2 - 1) = v20;
      if ((v5 & 8) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      a2[2] = v19;
      a2 += 3;
      if ((v5 & 8) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    a2[1] = v18;
    a2 += 2;
    if ((v5 & 8) == 0)
    {
      goto LABEL_47;
    }
  }

LABEL_5:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 9);
  *a2 = 32;
  if (v6 > 0x7F)
  {
    a2[1] = v6 | 0x80;
    v8 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v10 = v8 >> 7;
        ++a2;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
    }

    else
    {
      a2[2] = v8;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
  }

LABEL_47:
  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RangeCoordinateArchive::RequiredFieldsByteSizeFallback(TSCE::RangeCoordinateArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_10:
    result += ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1;
    return result;
  }

  result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t TSCE::RangeCoordinateArchive::ByteSizeLong(TSCE::RangeCoordinateArchive *this)
{
  if ((~*(this + 4) & 0xF) != 0)
  {
    v4 = TSCE::RangeCoordinateArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2.i64[0] = 0x1F0000001FLL;
    v2.i64[1] = 0x1F0000001FLL;
    v3.i64[0] = 0x4900000049;
    v3.i64[1] = 0x4900000049;
    v4 = (vaddvq_s32(vshrq_n_u32(vmlal_u16(v3, vmovn_s32(veorq_s8(vclzq_s32((*(this + 24) | __PAIR128__(0x100000001, 0x100000001))), v2)), 0x9000900090009), 6uLL)) + 4);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v4, this + 20);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSCE::RangeCoordinateArchive::MergeFrom(TSCE::RangeCoordinateArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RangeCoordinateArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

TSCE::RangeCoordinateArchive *TSCE::RangeCoordinateArchive::CopyFrom(TSCE::RangeCoordinateArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RangeCoordinateArchive::Clear(this);

    return TSCE::RangeCoordinateArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::RangeCoordinateArchive *TSCE::RangeCoordinateArchive::CopyFrom(TSCE::RangeCoordinateArchive *this, const TSCE::RangeCoordinateArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RangeCoordinateArchive::Clear(this);

    return TSCE::RangeCoordinateArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::RangeCoordinateArchive::InternalSwap(TSCE::RangeCoordinateArchive *this, TSCE::RangeCoordinateArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  return result;
}

TSCE::TableTransposeInfoArchive *TSCE::TableTransposeInfoArchive::TableTransposeInfoArchive(TSCE::TableTransposeInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AF280;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TableTransposeInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834AF280;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TableTransposeInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSCE::TableTransposeInfoArchive *TSCE::TableTransposeInfoArchive::TableTransposeInfoArchive(TSCE::TableTransposeInfoArchive *this, const TSCE::TableTransposeInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AF280;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 8) = *(a2 + 8);
  return this;
}

void TSCE::TableTransposeInfoArchive::~TableTransposeInfoArchive(TSCE::TableTransposeInfoArchive *this)
{
  if (this != TSCE::_TableTransposeInfoArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_2214DFCF8((v2 + 8));
      MEMORY[0x223DA1450](v2, 0x1081C40825B58B5);
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::TableTransposeInfoArchive::~TableTransposeInfoArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::TableTransposeInfoArchive::default_instance(TSCE::TableTransposeInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_TableTransposeInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_TableTransposeInfoArchive_default_instance_;
}

uint64_t *TSCE::TableTransposeInfoArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSCE::RangeCoordinateArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TSCE::TableTransposeInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 1u;
          v13 = *(a1 + 24);
          if (!v13)
          {
            v14 = *(a1 + 8);
            if (v14)
            {
              v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
            }

            v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v14);
            *(a1 + 24) = v13;
            v7 = v22;
          }

          v12 = sub_2216F820C(a3, v13, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }

      if (v8 >> 3 != 3 || v8 != 24)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v15 = (v7 + 1);
      LODWORD(v16) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v17 = *v15;
      v16 = (v16 + (v17 << 7) - 128);
      if ((v17 & 0x80000000) == 0)
      {
        v15 = (v7 + 2);
LABEL_30:
        v22 = v15;
        *(a1 + 32) = v16;
        goto LABEL_31;
      }

      v20 = google::protobuf::internal::VarintParseSlow32(v7, v16);
      v22 = v20;
      *(a1 + 32) = v21;
      if (!v20)
      {
LABEL_38:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_221567030(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TSCE::TableTransposeInfoArchive::_InternalSerialize(TSCE::TableTransposeInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 8);
    *a2 = 24;
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[1] = v6 | 0x80;
    v7 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v7 | 0x80;
        v12 = v7 >> 7;
        ++a2;
        v13 = v7 >> 14;
        v7 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
      if ((v5 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 3);
  *a2 = 34;
  v9 = *(v8 + 5);
  if (v9 > 0x7F)
  {
    a2[1] = v9 | 0x80;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      v10 = a2 + 3;
      do
      {
        *(v10 - 1) = v11 | 0x80;
        v14 = v11 >> 7;
        ++v10;
        v15 = v11 >> 14;
        v11 >>= 7;
      }

      while (v15);
      *(v10 - 1) = v14;
    }

    else
    {
      a2[2] = v11;
      v10 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v9;
    v10 = a2 + 2;
  }

  a2 = TSCE::RangeCoordinateArchive::_InternalSerialize(v8, v10, a3);
LABEL_24:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::TableTransposeInfoArchive::RequiredFieldsByteSizeFallback(TSCE::TableTransposeInfoArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCE::RangeCoordinateArchive::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::TableTransposeInfoArchive::ByteSizeLong(TSCE::RangeCoordinateArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSCE::TableTransposeInfoArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::RangeCoordinateArchive::ByteSizeLong(this[3]);
    v3 = v2 + ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSCE::TableTransposeInfoArchive::MergeFrom(TSCE::TableTransposeInfoArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::TableTransposeInfoArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::TableTransposeInfoArchive::MergeFrom(uint64_t this, const TSCE::TableTransposeInfoArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCE::_RangeCoordinateArchive_default_instance_;
      }

      this = TSCE::RangeCoordinateArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSCE::TableTransposeInfoArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::TableTransposeInfoArchive::Clear(this);

    return TSCE::TableTransposeInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::TableTransposeInfoArchive::CopyFrom(uint64_t *this, const TSCE::TableTransposeInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::TableTransposeInfoArchive::Clear(this);

    return TSCE::TableTransposeInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::TableTransposeInfoArchive::InternalSwap(TSCE::TableTransposeInfoArchive *this, TSCE::TableTransposeInfoArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
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

double TSCE::MergeOriginMovedArchive::MergeOriginMovedArchive(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2834AF330;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  return result;
}

{
  *a1 = &unk_2834AF330;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  return result;
}

TSCE::MergeOriginMovedArchive *TSCE::MergeOriginMovedArchive::MergeOriginMovedArchive(TSCE::MergeOriginMovedArchive *this, const TSCE::MergeOriginMovedArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2834AF330;
  *(this + 3) = 0;
  v6 = *(a2 + 4);
  if (v6)
  {
    sub_2210BBC64(v5, v6);
    v7 = *(this + 3);
    *(this + 4) += *(a2 + 4);
    memcpy(v7, *(a2 + 3), 4 * *(a2 + 4));
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  v8 = *(a2 + 8);
  if (v8)
  {
    sub_2210BBC64(this + 8, v8);
    v9 = *(this + 5);
    *(this + 8) += *(a2 + 8);
    memcpy(v9, *(a2 + 5), 4 * *(a2 + 8));
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  v10 = *(a2 + 12);
  if (v10)
  {
    sub_2210BBC64(this + 12, v10);
    v11 = *(this + 7);
    *(this + 12) += *(a2 + 12);
    memcpy(v11, *(a2 + 7), 4 * *(a2 + 12));
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  v12 = *(a2 + 16);
  if (v12)
  {
    sub_2210BBC64(this + 16, v12);
    v13 = *(this + 9);
    *(this + 16) += *(a2 + 16);
    memcpy(v13, *(a2 + 9), 4 * *(a2 + 16));
  }

  *(this + 20) = 0;
  v14 = *(a2 + 1);
  if (v14)
  {
    sub_22156734C(v4, (v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_221543608(_Unwind_Exception *exception_object)
{
  if (*(v1 + 68) >= 1)
  {
    v3 = *(v1 + 72);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(v1 + 52) >= 1)
  {
    v6 = *(v1 + 56);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  if (*(v1 + 36) >= 1)
  {
    v9 = *(v1 + 40);
    v11 = *(v9 - 8);
    v10 = (v9 - 8);
    if (!v11)
    {
      operator delete(v10);
    }
  }

  if (*(v1 + 20) >= 1)
  {
    v12 = *(v1 + 24);
    v14 = *(v12 - 8);
    v13 = (v12 - 8);
    if (!v14)
    {
      operator delete(v13);
    }
  }

  _Unwind_Resume(exception_object);
}

void TSCE::MergeOriginMovedArchive::~MergeOriginMovedArchive(TSCE::MergeOriginMovedArchive *this)
{
  sub_2214DFCF8(this + 1);
  if (*(this + 17) >= 1)
  {
    v2 = *(this + 9);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  if (*(this + 13) >= 1)
  {
    v5 = *(this + 7);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(this + 9) >= 1)
  {
    v8 = *(this + 5);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  if (*(this + 5) >= 1)
  {
    v11 = *(this + 3);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }
}

{
  TSCE::MergeOriginMovedArchive::~MergeOriginMovedArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::MergeOriginMovedArchive::default_instance(TSCE::MergeOriginMovedArchive *this)
{
  if (atomic_load_explicit(scc_info_MergeOriginMovedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_MergeOriginMovedArchive_default_instance_;
}

uint64_t *TSCE::MergeOriginMovedArchive::Clear(TSCE::MergeOriginMovedArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 6) = 0;
  *(result + 10) = 0;
  *(result + 14) = 0;
  if (v2)
  {
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TSCE::MergeOriginMovedArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  if ((sub_221567030(a3, &v38) & 1) == 0)
  {
    while (1)
    {
      v6 = (v38 + 1);
      v7 = *v38;
      if ((*v38 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v8 - 128));
      v38 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v35;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 > 2)
      {
        if (v9 == 3)
        {
          if (v7 == 24)
          {
            v28 = v6 - 1;
            while (1)
            {
              v38 = (v28 + 1);
              v29 = v28[1];
              if (v28[1] < 0)
              {
                v30 = v29 + (v28[2] << 7);
                v29 = v30 - 128;
                if (v28[2] < 0)
                {
                  v28 = google::protobuf::internal::VarintParseSlow32((v28 + 1), (v30 - 128));
                  v29 = v31;
                }

                else
                {
                  v28 += 3;
                }
              }

              else
              {
                v28 += 2;
              }

              v38 = v28;
              v32 = *(a1 + 48);
              if (v32 == *(a1 + 52))
              {
                v33 = v32 + 1;
                sub_2210BBC64((a1 + 48), v32 + 1);
                *(*(a1 + 56) + 4 * v32) = v29;
                v28 = v38;
              }

              else
              {
                *(*(a1 + 56) + 4 * v32) = v29;
                v33 = v32 + 1;
              }

              *(a1 + 48) = v33;
              if (!v28)
              {
                return 0;
              }

              if (*a3 <= v28 || *v28 != 24)
              {
                goto LABEL_86;
              }
            }
          }

          if (v7 == 26)
          {
            goto LABEL_77;
          }
        }

        else if (v9 == 4)
        {
          if (v7 == 32)
          {
            v16 = v6 - 1;
            while (1)
            {
              v38 = (v16 + 1);
              v17 = v16[1];
              if (v16[1] < 0)
              {
                v18 = v17 + (v16[2] << 7);
                v17 = v18 - 128;
                if (v16[2] < 0)
                {
                  v16 = google::protobuf::internal::VarintParseSlow32((v16 + 1), (v18 - 128));
                  v17 = v19;
                }

                else
                {
                  v16 += 3;
                }
              }

              else
              {
                v16 += 2;
              }

              v38 = v16;
              v20 = *(a1 + 64);
              if (v20 == *(a1 + 68))
              {
                v21 = v20 + 1;
                sub_2210BBC64((a1 + 64), v20 + 1);
                *(*(a1 + 72) + 4 * v20) = v17;
                v16 = v38;
              }

              else
              {
                *(*(a1 + 72) + 4 * v20) = v17;
                v21 = v20 + 1;
              }

              *(a1 + 64) = v21;
              if (!v16)
              {
                return 0;
              }

              if (*a3 <= v16 || *v16 != 32)
              {
                goto LABEL_86;
              }
            }
          }

          if (v7 == 34)
          {
            goto LABEL_77;
          }
        }
      }

      else if (v9 == 1)
      {
        if (v7 == 8)
        {
          v22 = v6 - 1;
          while (1)
          {
            v38 = (v22 + 1);
            v23 = v22[1];
            if (v22[1] < 0)
            {
              v24 = v23 + (v22[2] << 7);
              v23 = v24 - 128;
              if (v22[2] < 0)
              {
                v22 = google::protobuf::internal::VarintParseSlow32((v22 + 1), (v24 - 128));
                v23 = v25;
              }

              else
              {
                v22 += 3;
              }
            }

            else
            {
              v22 += 2;
            }

            v38 = v22;
            v26 = *(a1 + 16);
            if (v26 == *(a1 + 20))
            {
              v27 = v26 + 1;
              sub_2210BBC64((a1 + 16), v26 + 1);
              *(*(a1 + 24) + 4 * v26) = v23;
              v22 = v38;
            }

            else
            {
              *(*(a1 + 24) + 4 * v26) = v23;
              v27 = v26 + 1;
            }

            *(a1 + 16) = v27;
            if (!v22)
            {
              return 0;
            }

            if (*a3 <= v22 || *v22 != 8)
            {
              goto LABEL_86;
            }
          }
        }

        if (v7 == 10)
        {
LABEL_77:
          v36 = google::protobuf::internal::PackedUInt32Parser();
          goto LABEL_85;
        }
      }

      else if (v9 == 2)
      {
        if (v7 == 16)
        {
          v10 = v6 - 1;
          while (1)
          {
            v38 = (v10 + 1);
            v11 = v10[1];
            if (v10[1] < 0)
            {
              v12 = v11 + (v10[2] << 7);
              v11 = v12 - 128;
              if (v10[2] < 0)
              {
                v10 = google::protobuf::internal::VarintParseSlow32((v10 + 1), (v12 - 128));
                v11 = v13;
              }

              else
              {
                v10 += 3;
              }
            }

            else
            {
              v10 += 2;
            }

            v38 = v10;
            v14 = *(a1 + 32);
            if (v14 == *(a1 + 36))
            {
              v15 = v14 + 1;
              sub_2210BBC64((a1 + 32), v14 + 1);
              *(*(a1 + 40) + 4 * v14) = v11;
              v10 = v38;
            }

            else
            {
              *(*(a1 + 40) + 4 * v14) = v11;
              v15 = v14 + 1;
            }

            *(a1 + 32) = v15;
            if (!v10)
            {
              return 0;
            }

            if (*a3 <= v10 || *v10 != 16)
            {
              goto LABEL_86;
            }
          }
        }

        if (v7 == 18)
        {
          goto LABEL_77;
        }
      }

      if (v7)
      {
        v37 = (v7 & 7) == 4;
      }

      else
      {
        v37 = 1;
      }

      if (v37)
      {
        *(a3 + 80) = v7 - 1;
        return v38;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v36 = google::protobuf::internal::UnknownFieldParse();
LABEL_85:
      v38 = v36;
      if (!v36)
      {
        return 0;
      }

LABEL_86:
      if (sub_221567030(a3, &v38))
      {
        return v38;
      }
    }

    v6 = (v38 + 2);
LABEL_6:
    v38 = v6;
    goto LABEL_7;
  }

  return v38;
}

unsigned __int8 *TSCE::MergeOriginMovedArchive::_InternalSerialize(TSCE::MergeOriginMovedArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 3) + 4 * i);
      *a2 = 8;
      if (v7 > 0x7F)
      {
        a2[1] = v7 | 0x80;
        v8 = v7 >> 7;
        if (v7 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v8 | 0x80;
            v9 = v8 >> 7;
            ++a2;
            v10 = v8 >> 14;
            v8 >>= 7;
          }

          while (v10);
          *(a2 - 1) = v9;
        }

        else
        {
          a2[2] = v8;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v7;
        a2 += 2;
      }
    }
  }

  v11 = *(this + 8);
  if (v11 >= 1)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 5) + 4 * j);
      *a2 = 16;
      if (v13 > 0x7F)
      {
        a2[1] = v13 | 0x80;
        v14 = v13 >> 7;
        if (v13 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            ++a2;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(a2 - 1) = v15;
        }

        else
        {
          a2[2] = v14;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v13;
        a2 += 2;
      }
    }
  }

  v17 = *(this + 12);
  if (v17 >= 1)
  {
    for (k = 0; k != v17; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v19 = *(*(this + 7) + 4 * k);
      *a2 = 24;
      if (v19 > 0x7F)
      {
        a2[1] = v19 | 0x80;
        v20 = v19 >> 7;
        if (v19 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            ++a2;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(a2 - 1) = v21;
        }

        else
        {
          a2[2] = v20;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v19;
        a2 += 2;
      }
    }
  }

  v23 = *(this + 16);
  if (v23 >= 1)
  {
    for (m = 0; m != v23; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v25 = *(*(this + 9) + 4 * m);
      *a2 = 32;
      if (v25 > 0x7F)
      {
        a2[1] = v25 | 0x80;
        v26 = v25 >> 7;
        if (v25 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v26 | 0x80;
            v27 = v26 >> 7;
            ++a2;
            v28 = v26 >> 14;
            v26 >>= 7;
          }

          while (v28);
          *(a2 - 1) = v27;
        }

        else
        {
          a2[2] = v26;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v25;
        a2 += 2;
      }
    }
  }

  v29 = *(this + 1);
  if ((v29 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v29 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::MergeOriginMovedArchive::ByteSizeLong(TSCE::MergeOriginMovedArchive *this)
{
  v2 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v3 = *(this + 4);
  v4 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v5 = *(this + 8);
  v6 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v7 = *(this + 12);
  v8 = v2 + v4 + v3 + v5 + v6 + v7 + google::protobuf::internal::WireFormatLite::UInt32Size() + *(this + 16);
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v8, this + 80);
  }

  else
  {
    *(this + 20) = v8;
    return v8;
  }
}

uint64_t *TSCE::MergeOriginMovedArchive::MergeFrom(TSCE::MergeOriginMovedArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::MergeOriginMovedArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TSCE::MergeOriginMovedArchive::MergeFrom(uint64_t *this, const TSCE::MergeOriginMovedArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    v6 = v3[4];
    sub_2210BBC64(v3 + 4, v6 + v5);
    v7 = *(v3 + 3);
    v3[4] += *(a2 + 4);
    this = memcpy((v7 + 4 * v6), *(a2 + 3), 4 * *(a2 + 4));
  }

  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v3[8];
    sub_2210BBC64(v3 + 8, v9 + v8);
    v10 = *(v3 + 5);
    v3[8] += *(a2 + 8);
    this = memcpy((v10 + 4 * v9), *(a2 + 5), 4 * *(a2 + 8));
  }

  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = v3[12];
    sub_2210BBC64(v3 + 12, v12 + v11);
    v13 = *(v3 + 7);
    v3[12] += *(a2 + 12);
    this = memcpy((v13 + 4 * v12), *(a2 + 7), 4 * *(a2 + 12));
  }

  v14 = *(a2 + 16);
  if (v14)
  {
    v16 = v3[16];
    v15 = v3 + 16;
    sub_2210BBC64(v15, v16 + v14);
    v17 = *(v15 + 1);
    *v15 += *(a2 + 16);
    v18 = (v17 + 4 * v16);
    v19 = *(a2 + 9);
    v20 = 4 * *(a2 + 16);

    return memcpy(v18, v19, v20);
  }

  return this;
}

uint64_t *TSCE::MergeOriginMovedArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    *(v5 + 2) = 0;
    *(v5 + 6) = 0;
    *(v5 + 10) = 0;
    *(v5 + 14) = 0;
    if (v6)
    {
      sub_221567398(v5);
    }

    return TSCE::MergeOriginMovedArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSCE::MergeOriginMovedArchive::CopyFrom(uint64_t *this, const TSCE::MergeOriginMovedArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    *(v5 + 2) = 0;
    *(v5 + 6) = 0;
    *(v5 + 10) = 0;
    *(v5 + 14) = 0;
    if (v6)
    {
      sub_221567398(v5);
    }

    return TSCE::MergeOriginMovedArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::MergeOriginMovedArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u64[0];
  v5 = this[1].n128_u64[1];
  this[1] = a2[1];
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u64[1] = v5;
  v6 = this[2].n128_u64[0];
  v7 = this[2].n128_u64[1];
  this[2] = a2[2];
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u64[1] = v7;
  v8 = this[3].n128_u64[0];
  v9 = this[3].n128_u64[1];
  this[3] = a2[3];
  a2[3].n128_u64[0] = v8;
  a2[3].n128_u64[1] = v9;
  v10 = this[4].n128_u64[0];
  v11 = this[4].n128_u64[1];
  result = a2[4];
  this[4] = result;
  a2[4].n128_u64[0] = v10;
  a2[4].n128_u64[1] = v11;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_table_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_next_table_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_hidden_state_for_rows_owner_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_next_hidden_state_for_rows_owner_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_hidden_state_for_columns_owner_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_next_hidden_state_for_columns_owner_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_conditional_style_owner_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_next_conditional_style_owner_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_sort_rule_reference_tracker_owner_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_next_sort_rule_reference_tracker_owner_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_merge_owner_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_next_merge_owner_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x800u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_category_aggregates_owner_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x1000u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_next_category_aggregates_owner_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x2000u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_group_by_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x4000u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_next_group_by_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x8000u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_pencil_annotation_owner_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x10000u;
  return result;
}

TSP::UUID *TSCE::OwnerUIDMapperArchive::clear_next_pencil_annotation_owner_uid(TSCE::OwnerUIDMapperArchive *this)
{
  result = *(this + 20);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x20000u;
  return result;
}

TSCE::OwnerUIDMapperArchive *TSCE::OwnerUIDMapperArchive::OwnerUIDMapperArchive(TSCE::OwnerUIDMapperArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AF3E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_OwnerUIDMapperArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834AF3E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_OwnerUIDMapperArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSCE::OwnerUIDMapperArchive *TSCE::OwnerUIDMapperArchive::OwnerUIDMapperArchive(TSCE::OwnerUIDMapperArchive *this, const TSCE::OwnerUIDMapperArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AF3E0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v5 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v5 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v5 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v5 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v5 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v5 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v5 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v5 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v5 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v5 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v5 & 0x4000) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v5 & 0x8000) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v5 & 0x10000) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v5 & 0x20000) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  return this;
}

void TSCE::OwnerUIDMapperArchive::~OwnerUIDMapperArchive(TSCE::OwnerUIDMapperArchive *this)
{
  sub_221544D88(this);
  sub_2214DFCF8(this + 1);
}

{
  TSCE::OwnerUIDMapperArchive::~OwnerUIDMapperArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_221544D88(uint64_t *result)
{
  if (result != TSCE::_OwnerUIDMapperArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::UUID::~UUID(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x223DA1450]();
    }

    v6 = v1[7];
    if (v6)
    {
      TSP::UUID::~UUID(v6);
      MEMORY[0x223DA1450]();
    }

    v7 = v1[8];
    if (v7)
    {
      TSP::UUID::~UUID(v7);
      MEMORY[0x223DA1450]();
    }

    v8 = v1[9];
    if (v8)
    {
      TSP::UUID::~UUID(v8);
      MEMORY[0x223DA1450]();
    }

    v9 = v1[10];
    if (v9)
    {
      TSP::UUID::~UUID(v9);
      MEMORY[0x223DA1450]();
    }

    v10 = v1[11];
    if (v10)
    {
      TSP::UUID::~UUID(v10);
      MEMORY[0x223DA1450]();
    }

    v11 = v1[12];
    if (v11)
    {
      TSP::UUID::~UUID(v11);
      MEMORY[0x223DA1450]();
    }

    v12 = v1[13];
    if (v12)
    {
      TSP::UUID::~UUID(v12);
      MEMORY[0x223DA1450]();
    }

    v13 = v1[14];
    if (v13)
    {
      TSP::UUID::~UUID(v13);
      MEMORY[0x223DA1450]();
    }

    v14 = v1[15];
    if (v14)
    {
      TSP::UUID::~UUID(v14);
      MEMORY[0x223DA1450]();
    }

    v15 = v1[16];
    if (v15)
    {
      TSP::UUID::~UUID(v15);
      MEMORY[0x223DA1450]();
    }

    v16 = v1[17];
    if (v16)
    {
      TSP::UUID::~UUID(v16);
      MEMORY[0x223DA1450]();
    }

    v17 = v1[18];
    if (v17)
    {
      TSP::UUID::~UUID(v17);
      MEMORY[0x223DA1450]();
    }

    v18 = v1[19];
    if (v18)
    {
      TSP::UUID::~UUID(v18);
      MEMORY[0x223DA1450]();
    }

    result = v1[20];
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TSCE::OwnerUIDMapperArchive::default_instance(TSCE::OwnerUIDMapperArchive *this)
{
  if (atomic_load_explicit(scc_info_OwnerUIDMapperArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_OwnerUIDMapperArchive_default_instance_;
}

uint64_t *TSCE::OwnerUIDMapperArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    this = TSP::UUID::Clear(this[3]);
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

  this = TSP::UUID::Clear(*(v1 + 32));
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
  this = TSP::UUID::Clear(*(v1 + 40));
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
  this = TSP::UUID::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_35:
    this = TSP::UUID::Clear(*(v1 + 64));
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
  this = TSP::UUID::Clear(*(v1 + 56));
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
  this = TSP::UUID::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSP::UUID::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 & 0x100) != 0)
  {
    this = TSP::UUID::Clear(*(v1 + 88));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_40;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this = TSP::UUID::Clear(*(v1 + 96));
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = TSP::UUID::Clear(*(v1 + 104));
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = TSP::UUID::Clear(*(v1 + 112));
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = TSP::UUID::Clear(*(v1 + 120));
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = TSP::UUID::Clear(*(v1 + 128));
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_44:
  this = TSP::UUID::Clear(*(v1 + 136));
  if ((v2 & 0x8000) != 0)
  {
LABEL_20:
    this = TSP::UUID::Clear(*(v1 + 144));
  }

LABEL_21:
  if ((v2 & 0x30000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      this = TSP::UUID::Clear(*(v1 + 152));
    }

    if ((v2 & 0x20000) != 0)
    {
      this = TSP::UUID::Clear(*(v1 + 160));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TSCE::OwnerUIDMapperArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v50 = a2;
  while (2)
  {
    if (sub_221567030(a3, &v50))
    {
      return v50;
    }

    v5 = (v50 + 1);
    v6 = *v50;
    if ((*v50 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v50 + 2);
LABEL_6:
      v50 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v50, (v7 - 128));
    v50 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v12;
LABEL_7:
    switch(v6 >> 3)
    {
      case 1u:
        if (v6 != 10)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 1u;
        v8 = *(a1 + 24);
        if (v8)
        {
          goto LABEL_101;
        }

        v9 = *(a1 + 8);
        if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x223DA0360](v9);
        LODWORD(v8) = v10;
        *(a1 + 24) = v10;
        goto LABEL_100;
      case 2u:
        if (v6 != 18)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 2u;
        v8 = *(a1 + 32);
        if (v8)
        {
          goto LABEL_101;
        }

        v21 = *(a1 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = MEMORY[0x223DA0360](v21);
        LODWORD(v8) = v22;
        *(a1 + 32) = v22;
        goto LABEL_100;
      case 3u:
        if (v6 != 26)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 4u;
        v8 = *(a1 + 40);
        if (v8)
        {
          goto LABEL_101;
        }

        v29 = *(a1 + 8);
        if (v29)
        {
          v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
        }

        v30 = MEMORY[0x223DA0360](v29);
        LODWORD(v8) = v30;
        *(a1 + 40) = v30;
        goto LABEL_100;
      case 4u:
        if (v6 != 34)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 8u;
        v8 = *(a1 + 48);
        if (v8)
        {
          goto LABEL_101;
        }

        v27 = *(a1 + 8);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        v28 = MEMORY[0x223DA0360](v27);
        LODWORD(v8) = v28;
        *(a1 + 48) = v28;
        goto LABEL_100;
      case 5u:
        if (v6 != 42)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x10u;
        v8 = *(a1 + 56);
        if (v8)
        {
          goto LABEL_101;
        }

        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = MEMORY[0x223DA0360](v17);
        LODWORD(v8) = v18;
        *(a1 + 56) = v18;
        goto LABEL_100;
      case 6u:
        if (v6 != 50)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x20u;
        v8 = *(a1 + 64);
        if (v8)
        {
          goto LABEL_101;
        }

        v23 = *(a1 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v24 = MEMORY[0x223DA0360](v23);
        LODWORD(v8) = v24;
        *(a1 + 64) = v24;
        goto LABEL_100;
      case 7u:
        if (v6 != 58)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x40u;
        v8 = *(a1 + 72);
        if (v8)
        {
          goto LABEL_101;
        }

        v31 = *(a1 + 8);
        if (v31)
        {
          v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
        }

        v32 = MEMORY[0x223DA0360](v31);
        LODWORD(v8) = v32;
        *(a1 + 72) = v32;
        goto LABEL_100;
      case 8u:
        if (v6 != 66)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x80u;
        v8 = *(a1 + 80);
        if (v8)
        {
          goto LABEL_101;
        }

        v33 = *(a1 + 8);
        if (v33)
        {
          v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
        }

        v34 = MEMORY[0x223DA0360](v33);
        LODWORD(v8) = v34;
        *(a1 + 80) = v34;
        goto LABEL_100;
      case 9u:
        if (v6 != 74)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x100u;
        v8 = *(a1 + 88);
        if (v8)
        {
          goto LABEL_101;
        }

        v41 = *(a1 + 8);
        if (v41)
        {
          v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
        }

        v42 = MEMORY[0x223DA0360](v41);
        LODWORD(v8) = v42;
        *(a1 + 88) = v42;
        goto LABEL_100;
      case 0xAu:
        if (v6 != 82)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x200u;
        v8 = *(a1 + 96);
        if (v8)
        {
          goto LABEL_101;
        }

        v39 = *(a1 + 8);
        if (v39)
        {
          v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
        }

        v40 = MEMORY[0x223DA0360](v39);
        LODWORD(v8) = v40;
        *(a1 + 96) = v40;
        goto LABEL_100;
      case 0xBu:
        if (v6 != 90)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x400u;
        v8 = *(a1 + 104);
        if (v8)
        {
          goto LABEL_101;
        }

        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x223DA0360](v15);
        LODWORD(v8) = v16;
        *(a1 + 104) = v16;
        goto LABEL_100;
      case 0xCu:
        if (v6 != 98)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x800u;
        v8 = *(a1 + 112);
        if (v8)
        {
          goto LABEL_101;
        }

        v25 = *(a1 + 8);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = MEMORY[0x223DA0360](v25);
        LODWORD(v8) = v26;
        *(a1 + 112) = v26;
        goto LABEL_100;
      case 0xFu:
        if (v6 != 122)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x1000u;
        v8 = *(a1 + 120);
        if (v8)
        {
          goto LABEL_101;
        }

        v19 = *(a1 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = MEMORY[0x223DA0360](v19);
        LODWORD(v8) = v20;
        *(a1 + 120) = v20;
        goto LABEL_100;
      case 0x10u:
        if (v6 != 130)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x2000u;
        v8 = *(a1 + 128);
        if (v8)
        {
          goto LABEL_101;
        }

        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x223DA0360](v13);
        LODWORD(v8) = v14;
        *(a1 + 128) = v14;
        goto LABEL_100;
      case 0x11u:
        if (v6 != 138)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x4000u;
        v8 = *(a1 + 136);
        if (v8)
        {
          goto LABEL_101;
        }

        v35 = *(a1 + 8);
        if (v35)
        {
          v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
        }

        v36 = MEMORY[0x223DA0360](v35);
        LODWORD(v8) = v36;
        *(a1 + 136) = v36;
        goto LABEL_100;
      case 0x12u:
        if (v6 != 146)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x8000u;
        v8 = *(a1 + 144);
        if (v8)
        {
          goto LABEL_101;
        }

        v37 = *(a1 + 8);
        if (v37)
        {
          v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
        }

        v38 = MEMORY[0x223DA0360](v37);
        LODWORD(v8) = v38;
        *(a1 + 144) = v38;
        goto LABEL_100;
      case 0x13u:
        if (v6 != 154)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x10000u;
        v8 = *(a1 + 152);
        if (v8)
        {
          goto LABEL_101;
        }

        v45 = *(a1 + 8);
        if (v45)
        {
          v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
        }

        v46 = MEMORY[0x223DA0360](v45);
        LODWORD(v8) = v46;
        *(a1 + 152) = v46;
        goto LABEL_100;
      case 0x14u:
        if (v6 != 162)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x20000u;
        v8 = *(a1 + 160);
        if (v8)
        {
          goto LABEL_101;
        }

        v43 = *(a1 + 8);
        if (v43)
        {
          v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
        }

        v44 = MEMORY[0x223DA0360](v43);
        LODWORD(v8) = v44;
        *(a1 + 160) = v44;
LABEL_100:
        v5 = v50;
LABEL_101:
        v47 = sub_2216F813C(a3, v8, v5);
        goto LABEL_102;
      default:
LABEL_104:
        if (v6)
        {
          v48 = (v6 & 7) == 4;
        }

        else
        {
          v48 = 1;
        }

        if (!v48)
        {
          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v47 = google::protobuf::internal::UnknownFieldParse();
LABEL_102:
          v50 = v47;
          if (!v47)
          {
            return 0;
          }

          continue;
        }

        *(a3 + 80) = v6 - 1;
        return v50;
    }
  }
}