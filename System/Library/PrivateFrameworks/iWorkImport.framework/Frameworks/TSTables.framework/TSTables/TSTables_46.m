unsigned __int8 *TST::FormulaPredArgArchive::_InternalSerialize(TST::FormulaPredArgArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 26);
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
        if (v5)
        {
          goto LABEL_22;
        }
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
        if (v5)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
      if (v5)
      {
        goto LABEL_22;
      }
    }

LABEL_3:
    if ((v5 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_32;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_22:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(this + 6);
  *a2 = 18;
  v11 = *(v10 + 5);
  if (v11 > 0x7F)
  {
    a2[1] = v11 | 0x80;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = a2 + 3;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      a2[2] = v13;
      v12 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v11;
    v12 = a2 + 2;
  }

  a2 = TST::FormulaPredArgDataArchive::_InternalSerialize(v10, v12, a3);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
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

  v16 = *(this + 7);
  *a2 = 26;
  v17 = *(v16 + 5);
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

  a2 = TSCE::CellReferenceArchive::_InternalSerialize(v16, v18, a3);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
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

  v22 = *(this + 8);
  *a2 = 34;
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

  a2 = TSCE::RelativeCellRefArchive::_InternalSerialize(v22, v24, a3);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_62;
  }

LABEL_52:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v28 = *(this + 9);
  *a2 = 42;
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

  a2 = TSCE::CategoryReferenceArchive::_InternalSerialize(v28, v30, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_72;
  }

LABEL_62:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v34 = *(this + 10);
  *a2 = 50;
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

  a2 = TSCE::ASTNodeArrayArchive_ASTUidTractList::_InternalSerialize(v34, v36, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_82;
  }

LABEL_72:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v40 = *(this + 11);
  *a2 = 58;
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

  a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v40, v42, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_85;
  }

LABEL_82:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v46 = *(this + 108);
  *a2 = 64;
  a2[1] = v46;
  a2 += 2;
  if ((v5 & 0x200) != 0)
  {
LABEL_85:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v47 = *(this + 109);
    *a2 = 72;
    a2[1] = v47;
    a2 += 2;
  }

LABEL_88:
  v48 = *(this + 8);
  if (v48)
  {
    for (i = 0; i != v48; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v50 = *(*(this + 5) + 8 * i + 8);
      *a2 = 82;
      v51 = *(v50 + 5);
      if (v51 > 0x7F)
      {
        a2[1] = v51 | 0x80;
        v53 = v51 >> 7;
        if (v51 >> 14)
        {
          v52 = a2 + 3;
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
          a2[2] = v53;
          v52 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v51;
        v52 = a2 + 2;
      }

      a2 = TST::FormulaPredArgDataArchive::_InternalSerialize(v50, v52, a3);
    }
  }

  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v56 = *(this + 12);
    *a2 = 90;
    v57 = *(v56 + 5);
    if (v57 > 0x7F)
    {
      a2[1] = v57 | 0x80;
      v59 = v57 >> 7;
      if (v57 >> 14)
      {
        v58 = a2 + 3;
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
        a2[2] = v59;
        v58 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v57;
      v58 = a2 + 2;
    }

    a2 = TSCE::ViewTractRefArchive::_InternalSerialize(v56, v58, a3);
  }

  v62 = *(this + 1);
  if ((v62 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v62 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::FormulaPredArgArchive::ByteSizeLong(TST::FormulaPredArgArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x80) != 0)
  {
    v4 = *(this + 26);
    v3 = 11;
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v4 >= 0)
    {
      v3 = v5;
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = *(this + 8);
  v7 = v3 + v6;
  v8 = *(this + 5);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = TST::FormulaPredArgDataArchive::ByteSizeLong(v11);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
    v2 = *(this + 4);
  }

  if ((v2 & 0x7F) == 0)
  {
    goto LABEL_21;
  }

  if (v2)
  {
    v16 = TST::FormulaPredArgDataArchive::ByteSizeLong(*(this + 6));
    v7 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
LABEL_15:
      if ((v2 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_15;
  }

  v17 = TSCE::CellReferenceArchive::ByteSizeLong(*(this + 7));
  v7 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 4) == 0)
  {
LABEL_16:
    if ((v2 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = TSCE::RelativeCellRefArchive::ByteSizeLong(*(this + 8));
  v7 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_17:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_18;
    }

LABEL_30:
    v20 = TSCE::ASTNodeArrayArchive_ASTUidTractList::ByteSizeLong(*(this + 10));
    v7 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x20) == 0)
    {
LABEL_19:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_29:
  v19 = TSCE::CategoryReferenceArchive::ByteSizeLong(*(this + 9));
  v7 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_19;
  }

LABEL_31:
  v21 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 11));
  v7 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) != 0)
  {
LABEL_20:
    v13 = TSCE::ViewTractRefArchive::ByteSizeLong(*(this + 12));
    v7 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_21:
  if ((v2 & 0x300) != 0)
  {
    v14 = v7 + ((v2 >> 8) & 2) + ((v2 >> 7) & 2);
  }

  else
  {
    v14 = v7;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v14, this + 20);
  }

  else
  {
    *(this + 5) = v14;
    return v14;
  }
}

uint64_t TST::FormulaPredArgArchive::MergeFrom(TST::FormulaPredArgArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::FormulaPredArgArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::FormulaPredArgArchive::MergeFrom(uint64_t this, const TST::FormulaPredArgArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_22167F4AC(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if (v10)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      v11 = *(v3 + 48);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgDataArchive>(v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = &TST::_FormulaPredArgDataArchive_default_instance_;
      }

      this = TST::FormulaPredArgDataArchive::MergeFrom(v11, v13);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_40;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 16) |= 2u;
    v14 = *(v3 + 56);
    if (!v14)
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v15);
      *(v3 + 56) = v14;
    }

    if (*(a2 + 7))
    {
      v16 = *(a2 + 7);
    }

    else
    {
      v16 = TSCE::_CellReferenceArchive_default_instance_;
    }

    this = TSCE::CellReferenceArchive::MergeFrom(v14, v16);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_48;
    }

LABEL_40:
    *(v3 + 16) |= 4u;
    v17 = *(v3 + 64);
    if (!v17)
    {
      v18 = *(v3 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RelativeCellRefArchive>(v18);
      *(v3 + 64) = v17;
    }

    if (*(a2 + 8))
    {
      v19 = *(a2 + 8);
    }

    else
    {
      v19 = TSCE::_RelativeCellRefArchive_default_instance_;
    }

    this = TSCE::RelativeCellRefArchive::MergeFrom(v17, v19);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_56;
    }

LABEL_48:
    *(v3 + 16) |= 8u;
    v20 = *(v3 + 72);
    if (!v20)
    {
      v21 = *(v3 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CategoryReferenceArchive>(v21);
      *(v3 + 72) = v20;
    }

    if (*(a2 + 9))
    {
      v22 = *(a2 + 9);
    }

    else
    {
      v22 = TSCE::_CategoryReferenceArchive_default_instance_;
    }

    this = TSCE::CategoryReferenceArchive::MergeFrom(v20, v22);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_64;
    }

LABEL_56:
    *(v3 + 16) |= 0x10u;
    v23 = *(v3 + 80);
    if (!v23)
    {
      v24 = *(v3 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidTractList>(v24);
      *(v3 + 80) = v23;
    }

    if (*(a2 + 10))
    {
      v25 = *(a2 + 10);
    }

    else
    {
      v25 = &TSCE::_ASTNodeArrayArchive_ASTUidTractList_default_instance_;
    }

    this = TSCE::ASTNodeArrayArchive_ASTUidTractList::MergeFrom(v23, v25);
    if ((v10 & 0x20) == 0)
    {
LABEL_13:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_72;
    }

LABEL_64:
    *(v3 + 16) |= 0x20u;
    v26 = *(v3 + 88);
    if (!v26)
    {
      v27 = *(v3 + 8);
      if (v27)
      {
        v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v27);
      *(v3 + 88) = v26;
    }

    if (*(a2 + 11))
    {
      v28 = *(a2 + 11);
    }

    else
    {
      v28 = &TSCE::_CellCoordinateArchive_default_instance_;
    }

    this = TSCE::CellCoordinateArchive::MergeFrom(v26, v28);
    if ((v10 & 0x40) == 0)
    {
LABEL_14:
      if ((v10 & 0x80) == 0)
      {
LABEL_16:
        *(v3 + 16) |= v10;
        goto LABEL_17;
      }

LABEL_15:
      *(v3 + 104) = *(a2 + 26);
      goto LABEL_16;
    }

LABEL_72:
    *(v3 + 16) |= 0x40u;
    v29 = *(v3 + 96);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ViewTractRefArchive>(v30);
      *(v3 + 96) = v29;
    }

    if (*(a2 + 12))
    {
      v31 = *(a2 + 12);
    }

    else
    {
      v31 = TSCE::_ViewTractRefArchive_default_instance_;
    }

    this = TSCE::ViewTractRefArchive::MergeFrom(v29, v31);
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if ((v10 & 0x300) != 0)
  {
    if ((v10 & 0x100) != 0)
    {
      *(v3 + 108) = *(a2 + 108);
    }

    if ((v10 & 0x200) != 0)
    {
      *(v3 + 109) = *(a2 + 109);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TST::FormulaPredArgArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FormulaPredArgArchive::Clear(this);

    return TST::FormulaPredArgArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::FormulaPredArgArchive::CopyFrom(uint64_t *this, const TST::FormulaPredArgArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FormulaPredArgArchive::Clear(this);

    return TST::FormulaPredArgArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::FormulaPredArgArchive::IsInitialized(TST::FormulaPredArgArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x80) == 0)
  {
    return 0;
  }

  if ((v1 & 2) != 0)
  {
    result = TSCE::CellReferenceArchive::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 4) != 0)
  {
    result = TSCE::RelativeCellRefArchive::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 8) != 0)
  {
    result = TSCE::CategoryReferenceArchive::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x10) != 0)
  {
    result = TSCE::ASTNodeArrayArchive_ASTUidTractList::IsInitialized(*(this + 10));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x40) == 0)
  {
    return 1;
  }

  result = TSCE::ViewTractRefArchive::IsInitialized(*(this + 12));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::FormulaPredArgArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  this[2] = a2[2];
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v7 = this[3].n128_u64[0];
  v8 = this[3].n128_u64[1];
  this[3] = a2[3];
  a2[3].n128_u64[0] = v7;
  a2[3].n128_u64[1] = v8;
  v9 = this[4].n128_u64[0];
  v10 = this[4].n128_u64[1];
  this[4] = a2[4];
  a2[4].n128_u64[0] = v9;
  a2[4].n128_u64[1] = v10;
  v11 = this[5].n128_u64[0];
  v12 = this[5].n128_u64[1];
  result = a2[5];
  this[5] = result;
  a2[5].n128_u64[0] = v11;
  a2[5].n128_u64[1] = v12;
  v14 = this[6].n128_u64[0];
  this[6].n128_u64[0] = a2[6].n128_u64[0];
  a2[6].n128_u64[0] = v14;
  LODWORD(v14) = this[6].n128_u32[2];
  this[6].n128_u32[2] = a2[6].n128_u32[2];
  a2[6].n128_u32[2] = v14;
  LOWORD(v14) = this[6].n128_u16[6];
  this[6].n128_u16[6] = a2[6].n128_u16[6];
  a2[6].n128_u16[6] = v14;
  return result;
}

uint64_t *TST::FormulaPredicatePrePivotArchive::clear_formula(TST::FormulaPredicatePrePivotArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSCE::FormulaArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::FormulaPredicatePrePivotArchive *TST::FormulaPredicatePrePivotArchive::FormulaPredicatePrePivotArchive(TST::FormulaPredicatePrePivotArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5A78;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaPredicatePrePivotArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834B5A78;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaPredicatePrePivotArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TST::FormulaPredicatePrePivotArchive *TST::FormulaPredicatePrePivotArchive::FormulaPredicatePrePivotArchive(TST::FormulaPredicatePrePivotArchive *this, const TST::FormulaPredicatePrePivotArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B5A78;
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
  v7 = *(a2 + 2);
  *(this + 6) = *(a2 + 6);
  *(this + 2) = v7;
  return this;
}

void TST::FormulaPredicatePrePivotArchive::~FormulaPredicatePrePivotArchive(TST::FormulaPredicatePrePivotArchive *this)
{
  if (this != TST::_FormulaPredicatePrePivotArchive_default_instance_)
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
  TST::FormulaPredicatePrePivotArchive::~FormulaPredicatePrePivotArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::FormulaPredicatePrePivotArchive::default_instance(TST::FormulaPredicatePrePivotArchive *this)
{
  if (atomic_load_explicit(scc_info_FormulaPredicatePrePivotArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_FormulaPredicatePrePivotArchive_default_instance_;
}

google::protobuf::internal *TST::FormulaPredicatePrePivotArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v48 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v48) & 1) == 0)
  {
    while (1)
    {
      v7 = (v48 + 1);
      v8 = *v48;
      if ((*v48 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v48, (v9 - 128));
      v48 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_80;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v23 = *(a1 + 24);
            if (!v23)
            {
              v24 = *(a1 + 8);
              if (v24)
              {
                v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v24);
              *(a1 + 24) = v23;
              v7 = v48;
            }

            v25 = sub_2216FE0AC(a3, v23, v7);
          }

          else
          {
LABEL_57:
            if (v8)
            {
              v35 = (v8 & 7) == 4;
            }

            else
            {
              v35 = 1;
            }

            if (v35)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v25 = google::protobuf::internal::UnknownFieldParse();
          }

          v48 = v25;
          if (!v25)
          {
            goto LABEL_80;
          }

          goto LABEL_65;
        }

        if (v10 == 2)
        {
          if (v8 != 16)
          {
            goto LABEL_57;
          }

          v5 |= 2u;
          v33 = (v7 + 1);
          LODWORD(v32) = *v7;
          if ((v32 & 0x80) == 0)
          {
            goto LABEL_56;
          }

          v34 = *v33;
          v32 = (v32 + (v34 << 7) - 128);
          if ((v34 & 0x80000000) == 0)
          {
            v33 = (v7 + 2);
LABEL_56:
            v48 = v33;
            *(a1 + 32) = v32;
            goto LABEL_65;
          }

          v46 = google::protobuf::internal::VarintParseSlow64(v7, v32);
          v48 = v46;
          *(a1 + 32) = v47;
          if (!v46)
          {
LABEL_80:
            v48 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 3 || v8 != 24)
          {
            goto LABEL_57;
          }

          v5 |= 4u;
          v16 = (v7 + 1);
          LODWORD(v15) = *v7;
          if ((v15 & 0x80) == 0)
          {
            goto LABEL_26;
          }

          v17 = *v16;
          v15 = (v15 + (v17 << 7) - 128);
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_26:
            v48 = v16;
            *(a1 + 36) = v15;
            goto LABEL_65;
          }

          v44 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v48 = v44;
          *(a1 + 36) = v45;
          if (!v44)
          {
            goto LABEL_80;
          }
        }
      }

      else if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 != 48)
          {
            goto LABEL_57;
          }

          v5 |= 0x20u;
          v30 = (v7 + 1);
          LODWORD(v29) = *v7;
          if ((v29 & 0x80) == 0)
          {
            goto LABEL_51;
          }

          v31 = *v30;
          v29 = (v29 + (v31 << 7) - 128);
          if ((v31 & 0x80000000) == 0)
          {
            v30 = (v7 + 2);
LABEL_51:
            v48 = v30;
            *(a1 + 48) = v29;
            goto LABEL_65;
          }

          v38 = google::protobuf::internal::VarintParseSlow64(v7, v29);
          v48 = v38;
          *(a1 + 48) = v39;
          if (!v38)
          {
            goto LABEL_80;
          }
        }

        else
        {
          if (v10 != 7 || v8 != 56)
          {
            goto LABEL_57;
          }

          v5 |= 0x40u;
          v19 = (v7 + 1);
          LODWORD(v18) = *v7;
          if ((v18 & 0x80) == 0)
          {
            goto LABEL_33;
          }

          v20 = *v19;
          v18 = (v18 + (v20 << 7) - 128);
          if ((v20 & 0x80000000) == 0)
          {
            v19 = (v7 + 2);
LABEL_33:
            v48 = v19;
            *(a1 + 52) = v18;
            goto LABEL_65;
          }

          v42 = google::protobuf::internal::VarintParseSlow64(v7, v18);
          v48 = v42;
          *(a1 + 52) = v43;
          if (!v42)
          {
            goto LABEL_80;
          }
        }
      }

      else if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_57;
        }

        v5 |= 8u;
        v27 = (v7 + 1);
        LODWORD(v26) = *v7;
        if ((v26 & 0x80) == 0)
        {
          goto LABEL_46;
        }

        v28 = *v27;
        v26 = (v26 + (v28 << 7) - 128);
        if ((v28 & 0x80000000) == 0)
        {
          v27 = (v7 + 2);
LABEL_46:
          v48 = v27;
          *(a1 + 40) = v26;
          goto LABEL_65;
        }

        v36 = google::protobuf::internal::VarintParseSlow64(v7, v26);
        v48 = v36;
        *(a1 + 40) = v37;
        if (!v36)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_57;
        }

        v5 |= 0x10u;
        v12 = (v7 + 1);
        LODWORD(v11) = *v7;
        if ((v11 & 0x80) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v12;
        v11 = (v11 + (v13 << 7) - 128);
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_15:
          v48 = v12;
          *(a1 + 44) = v11;
          goto LABEL_65;
        }

        v40 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v48 = v40;
        *(a1 + 44) = v41;
        if (!v40)
        {
          goto LABEL_80;
        }
      }

LABEL_65:
      if (sub_221567030(a3, &v48))
      {
        goto LABEL_2;
      }
    }

    v7 = (v48 + 2);
LABEL_6:
    v48 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v48;
}

unsigned __int8 *TST::FormulaPredicatePrePivotArchive::_InternalSerialize(TST::FormulaPredicatePrePivotArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        goto LABEL_4;
      }

LABEL_38:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v20 = *(this + 9);
      *a2 = 24;
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
          if ((v5 & 8) != 0)
          {
            goto LABEL_49;
          }
        }

        else
        {
          a2[2] = v21;
          a2 += 3;
          if ((v5 & 8) != 0)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        a2[1] = v20;
        a2 += 2;
        if ((v5 & 8) != 0)
        {
          goto LABEL_49;
        }
      }

LABEL_5:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_60:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v28 = *(this + 11);
      *a2 = 40;
      if (v28 > 0x7F)
      {
        a2[1] = v28 | 0x80;
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
          if ((v5 & 0x20) != 0)
          {
            goto LABEL_71;
          }
        }

        else
        {
          a2[2] = v29;
          a2 += 3;
          if ((v5 & 0x20) != 0)
          {
            goto LABEL_71;
          }
        }
      }

      else
      {
        a2[1] = v28;
        a2 += 2;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_71;
        }
      }

LABEL_7:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_8;
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
      if ((v5 & 4) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      a2[2] = v17;
      a2 += 3;
      if ((v5 & 4) != 0)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    a2[1] = v16;
    a2 += 2;
    if ((v5 & 4) != 0)
    {
      goto LABEL_38;
    }
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_49:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 10);
  *a2 = 32;
  if (v24 > 0x7F)
  {
    a2[1] = v24 | 0x80;
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
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      a2[2] = v25;
      a2 += 3;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_60;
      }
    }
  }

  else
  {
    a2[1] = v24;
    a2 += 2;
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_60;
    }
  }

LABEL_6:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_71:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v32 = *(this + 12);
  *a2 = 48;
  if (v32 > 0x7F)
  {
    a2[1] = v32 | 0x80;
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
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_82;
      }
    }

    else
    {
      a2[2] = v33;
      a2 += 3;
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_82;
      }
    }
  }

  else
  {
    a2[1] = v32;
    a2 += 2;
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_82;
    }
  }

LABEL_8:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 13);
  *a2 = 56;
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

LABEL_82:
  v36 = *(this + 1);
  if ((v36 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v36 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::FormulaPredicatePrePivotArchive::RequiredFieldsByteSizeFallback(TST::FormulaPredicatePrePivotArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCE::FormulaArchive::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  v5 = *(this + 8);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_9:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 9);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
    if ((v2 & 8) == 0)
    {
LABEL_11:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_11;
  }

  v9 = *(this + 10);
  if (v9 < 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v10;
  if ((v2 & 0x10) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_23:
  v11 = *(this + 11);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v12;
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_27:
  v13 = *(this + 12);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v14;
  if ((v2 & 0x40) != 0)
  {
LABEL_31:
    v15 = *(this + 13);
    if (v15 < 0)
    {
      v16 = 11;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v16;
  }

  return result;
}

uint64_t TST::FormulaPredicatePrePivotArchive::ByteSizeLong(TSCE::FormulaArchive **this)
{
  if ((~*(this + 4) & 0x7F) != 0)
  {
    v22 = TST::FormulaPredicatePrePivotArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::FormulaArchive::ByteSizeLong(this[3]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = 10;
    v5 = *(this + 8);
    v6 = *(this + 9);
    v7 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    if (v5 >= 0)
    {
      v4 = v7;
    }

    v8 = 10;
    v9 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    if (v6 >= 0)
    {
      v8 = v9;
    }

    v10 = 10;
    v11 = *(this + 10);
    v12 = *(this + 11);
    v13 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
    if (v11 >= 0)
    {
      v10 = v13;
    }

    v14 = 10;
    v15 = (9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6;
    if (v12 >= 0)
    {
      v14 = v15;
    }

    v16 = 10;
    v17 = *(this + 12);
    v18 = *(this + 13);
    v19 = (9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6;
    if (v17 >= 0)
    {
      v16 = v19;
    }

    v20 = 10;
    v21 = (9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6;
    if (v18 >= 0)
    {
      v20 = v21;
    }

    v22 = v2 + v3 + v4 + v8 + v10 + v14 + v16 + v20 + 7;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v22, this + 20);
  }

  else
  {
    *(this + 5) = v22;
    return v22;
  }
}

uint64_t TST::FormulaPredicatePrePivotArchive::MergeFrom(TST::FormulaPredicatePrePivotArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::FormulaPredicatePrePivotArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TST::FormulaPredicatePrePivotArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FormulaPredicatePrePivotArchive::Clear(this);

    return TST::FormulaPredicatePrePivotArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::FormulaPredicatePrePivotArchive::CopyFrom(uint64_t *this, const TST::FormulaPredicatePrePivotArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FormulaPredicatePrePivotArchive::Clear(this);

    return TST::FormulaPredicatePrePivotArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TST::FormulaPredicatePrePivotArchive::InternalSwap(TST::FormulaPredicatePrePivotArchive *this, TST::FormulaPredicatePrePivotArchive *a2)
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
  result = *(a2 + 40);
  *(this + 40) = result;
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  return result;
}

uint64_t *TST::FormulaPredicateArchive::clear_formula(TST::FormulaPredicateArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSCE::FormulaArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::UUID *TST::FormulaPredicateArchive::clear_host_table_uid(TST::FormulaPredicateArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::UUID *TST::FormulaPredicateArchive::clear_host_column_uid(TST::FormulaPredicateArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSP::UUID *TST::FormulaPredicateArchive::clear_host_row_uid(TST::FormulaPredicateArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TST::FormulaPredicateArchive *TST::FormulaPredicateArchive::FormulaPredicateArchive(TST::FormulaPredicateArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5B28;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaPredicateArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 85) = 0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834B5B28;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaPredicateArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 85) = 0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TST::FormulaPredicateArchive *TST::FormulaPredicateArchive::FormulaPredicateArchive(TST::FormulaPredicateArchive *this, const TST::FormulaPredicateArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B5B28;
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
  v7 = *(a2 + 10);
  *(this + 85) = *(a2 + 85);
  *(this + 10) = v7;
  return this;
}

void TST::FormulaPredicateArchive::~FormulaPredicateArchive(TST::FormulaPredicateArchive *this)
{
  sub_22162E7EC(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::FormulaPredicateArchive::~FormulaPredicateArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_22162E7EC(uint64_t *result)
{
  if (result != TST::_FormulaPredicateArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TST::FormulaPredArgArchive::~FormulaPredArgArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[4];
    if (v3)
    {
      TST::FormulaPredArgArchive::~FormulaPredArgArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[5];
    if (v4)
    {
      TST::FormulaPredArgArchive::~FormulaPredArgArchive(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSCE::FormulaArchive::~FormulaArchive(v5);
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

    result = v1[9];
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TST::FormulaPredicateArchive::default_instance(TST::FormulaPredicateArchive *this)
{
  if (atomic_load_explicit(scc_info_FormulaPredicateArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_FormulaPredicateArchive_default_instance_;
}

google::protobuf::internal *TST::FormulaPredicateArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v49 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v49) & 1) == 0)
  {
    while (1)
    {
      v7 = (v49 + 1);
      v8 = *v49;
      if ((*v49 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v49, (v9 - 128));
      v49 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_105;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 5)
      {
        if (v8 >> 3 <= 2)
        {
          if (v10 == 1)
          {
            if (v8 != 8)
            {
              goto LABEL_86;
            }

            v5 |= 0x80u;
            v26 = (v7 + 1);
            LODWORD(v25) = *v7;
            if ((v25 & 0x80) == 0)
            {
              goto LABEL_50;
            }

            v27 = *v26;
            v25 = (v25 + (v27 << 7) - 128);
            if ((v27 & 0x80000000) == 0)
            {
              v26 = (v7 + 2);
LABEL_50:
              v49 = v26;
              *(a1 + 80) = v25;
              goto LABEL_94;
            }

            v41 = google::protobuf::internal::VarintParseSlow64(v7, v25);
            v49 = v41;
            *(a1 + 80) = v42;
            if (!v41)
            {
              goto LABEL_105;
            }
          }

          else
          {
            if (v10 != 2 || v8 != 16)
            {
              goto LABEL_86;
            }

            v5 |= 0x100u;
            v21 = (v7 + 1);
            LODWORD(v20) = *v7;
            if ((v20 & 0x80) == 0)
            {
              goto LABEL_43;
            }

            v22 = *v21;
            v20 = (v20 + (v22 << 7) - 128);
            if ((v22 & 0x80000000) == 0)
            {
              v21 = (v7 + 2);
LABEL_43:
              v49 = v21;
              *(a1 + 84) = v20;
              goto LABEL_94;
            }

            v43 = google::protobuf::internal::VarintParseSlow64(v7, v20);
            v49 = v43;
            *(a1 + 84) = v44;
            if (!v43)
            {
              goto LABEL_105;
            }
          }
        }

        else
        {
          if (v10 != 3)
          {
            if (v10 == 4)
            {
              if (v8 != 34)
              {
                goto LABEL_86;
              }

              *(a1 + 16) |= 1u;
              v14 = *(a1 + 24);
              if (!v14)
              {
                v28 = *(a1 + 8);
                if (v28)
                {
                  v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
                }

                v14 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgArchive>(v28);
                *(a1 + 24) = v14;
LABEL_77:
                v7 = v49;
              }

LABEL_78:
              v31 = sub_2217068EC(a3, v14, v7);
            }

            else
            {
              if (v10 == 5 && v8 == 42)
              {
                *(a1 + 16) |= 2u;
                v14 = *(a1 + 32);
                if (!v14)
                {
                  v15 = *(a1 + 8);
                  if (v15)
                  {
                    v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v14 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgArchive>(v15);
                  *(a1 + 32) = v14;
                  goto LABEL_77;
                }

                goto LABEL_78;
              }

LABEL_86:
              if (v8)
              {
                v40 = (v8 & 7) == 4;
              }

              else
              {
                v40 = 1;
              }

              if (v40)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_221567188((a1 + 8));
              }

              v31 = google::protobuf::internal::UnknownFieldParse();
            }

LABEL_93:
            v49 = v31;
            if (!v31)
            {
              goto LABEL_105;
            }

            goto LABEL_94;
          }

          if (v8 != 24)
          {
            goto LABEL_86;
          }

          v5 |= 0x200u;
          v35 = (v7 + 1);
          LODWORD(v34) = *v7;
          if ((v34 & 0x80) == 0)
          {
            goto LABEL_71;
          }

          v36 = *v35;
          v34 = (v34 + (v36 << 7) - 128);
          if ((v36 & 0x80000000) == 0)
          {
            v35 = (v7 + 2);
LABEL_71:
            v49 = v35;
            *(a1 + 88) = v34;
            goto LABEL_94;
          }

          v45 = google::protobuf::internal::VarintParseSlow64(v7, v34);
          v49 = v45;
          *(a1 + 88) = v46;
          if (!v45)
          {
            goto LABEL_105;
          }
        }
      }

      else
      {
        if (v8 >> 3 > 8)
        {
          if (v10 == 9)
          {
            if (v8 != 74)
            {
              goto LABEL_86;
            }

            *(a1 + 16) |= 0x10u;
            v16 = *(a1 + 56);
            if (v16)
            {
              goto LABEL_85;
            }

            v38 = *(a1 + 8);
            if (v38)
            {
              v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
            }

            v39 = MEMORY[0x223DA0360](v38);
            LODWORD(v16) = v39;
            *(a1 + 56) = v39;
          }

          else
          {
            if (v10 != 10)
            {
              if (v10 != 11 || v8 != 90)
              {
                goto LABEL_86;
              }

              *(a1 + 16) |= 0x40u;
              v16 = *(a1 + 72);
              if (!v16)
              {
                v17 = *(a1 + 8);
                if (v17)
                {
                  v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
                }

                v18 = MEMORY[0x223DA0360](v17);
                LODWORD(v16) = v18;
                *(a1 + 72) = v18;
                goto LABEL_84;
              }

LABEL_85:
              v31 = sub_2216F813C(a3, v16, v7);
              goto LABEL_93;
            }

            if (v8 != 82)
            {
              goto LABEL_86;
            }

            *(a1 + 16) |= 0x20u;
            v16 = *(a1 + 64);
            if (v16)
            {
              goto LABEL_85;
            }

            v32 = *(a1 + 8);
            if (v32)
            {
              v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
            }

            v33 = MEMORY[0x223DA0360](v32);
            LODWORD(v16) = v33;
            *(a1 + 64) = v33;
          }

LABEL_84:
          v7 = v49;
          goto LABEL_85;
        }

        if (v10 == 6)
        {
          if (v8 == 50)
          {
            *(a1 + 16) |= 4u;
            v14 = *(a1 + 40);
            if (!v14)
            {
              v37 = *(a1 + 8);
              if (v37)
              {
                v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
              }

              v14 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgArchive>(v37);
              *(a1 + 40) = v14;
              goto LABEL_77;
            }

            goto LABEL_78;
          }

          goto LABEL_86;
        }

        if (v10 == 7)
        {
          if (v8 != 58)
          {
            goto LABEL_86;
          }

          *(a1 + 16) |= 8u;
          v29 = *(a1 + 48);
          if (!v29)
          {
            v30 = *(a1 + 8);
            if (v30)
            {
              v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
            }

            v29 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v30);
            *(a1 + 48) = v29;
            v7 = v49;
          }

          v31 = sub_2216FE0AC(a3, v29, v7);
          goto LABEL_93;
        }

        if (v10 != 8 || v8 != 64)
        {
          goto LABEL_86;
        }

        v5 |= 0x400u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_16:
          v49 = v12;
          *(a1 + 92) = v11 != 0;
          goto LABEL_94;
        }

        v47 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v49 = v47;
        *(a1 + 92) = v48 != 0;
        if (!v47)
        {
LABEL_105:
          v49 = 0;
          goto LABEL_2;
        }
      }

LABEL_94:
      if (sub_221567030(a3, &v49))
      {
        goto LABEL_2;
      }
    }

    v7 = (v49 + 2);
LABEL_6:
    v49 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v49;
}

unsigned __int8 *TST::FormulaPredicateArchive::_InternalSerialize(TST::FormulaPredicateArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 20);
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
        if ((v5 & 0x100) != 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
        if ((v5 & 0x100) != 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 0x100) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_3:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_4;
    }

LABEL_35:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 22);
    *a2 = 24;
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
        if (v5)
        {
          goto LABEL_46;
        }
      }

      else
      {
        a2[2] = v15;
        a2 += 3;
        if (v5)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      a2[1] = v14;
      a2 += 2;
      if (v5)
      {
        goto LABEL_46;
      }
    }

LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_56;
  }

  if ((v5 & 0x100) == 0)
  {
    goto LABEL_3;
  }

LABEL_24:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(this + 21);
  *a2 = 16;
  if (v10 > 0x7F)
  {
    a2[1] = v10 | 0x80;
    v11 = v10 >> 7;
    if (v10 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v11 | 0x80;
        v12 = v11 >> 7;
        ++a2;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
      if ((v5 & 0x200) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      a2[2] = v11;
      a2 += 3;
      if ((v5 & 0x200) != 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    a2[1] = v10;
    a2 += 2;
    if ((v5 & 0x200) != 0)
    {
      goto LABEL_35;
    }
  }

LABEL_4:
  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_46:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 3);
  *a2 = 34;
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

  a2 = TST::FormulaPredArgArchive::_InternalSerialize(v18, v20, a3);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_66;
  }

LABEL_56:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 4);
  *a2 = 42;
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

  a2 = TST::FormulaPredArgArchive::_InternalSerialize(v24, v26, a3);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_76;
  }

LABEL_66:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(this + 5);
  *a2 = 50;
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

  a2 = TST::FormulaPredArgArchive::_InternalSerialize(v30, v32, a3);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_86;
  }

LABEL_76:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v36 = *(this + 6);
  *a2 = 58;
  v37 = *(v36 + 5);
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

  a2 = TSCE::FormulaArchive::_InternalSerialize(v36, v38, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_89;
  }

LABEL_86:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v42 = *(this + 92);
  *a2 = 64;
  a2[1] = v42;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_99;
  }

LABEL_89:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v43 = *(this + 7);
  *a2 = 74;
  v44 = *(v43 + 5);
  if (v44 > 0x7F)
  {
    a2[1] = v44 | 0x80;
    v46 = v44 >> 7;
    if (v44 >> 14)
    {
      v45 = a2 + 3;
      do
      {
        *(v45 - 1) = v46 | 0x80;
        v47 = v46 >> 7;
        ++v45;
        v48 = v46 >> 14;
        v46 >>= 7;
      }

      while (v48);
      *(v45 - 1) = v47;
    }

    else
    {
      a2[2] = v46;
      v45 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v44;
    v45 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v43, v45, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_11:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_109;
  }

LABEL_99:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v49 = *(this + 8);
  *a2 = 82;
  v50 = *(v49 + 5);
  if (v50 > 0x7F)
  {
    a2[1] = v50 | 0x80;
    v52 = v50 >> 7;
    if (v50 >> 14)
    {
      v51 = a2 + 3;
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
      a2[2] = v52;
      v51 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v50;
    v51 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v49, v51, a3);
  if ((v5 & 0x40) != 0)
  {
LABEL_109:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v55 = *(this + 9);
    *a2 = 90;
    v56 = *(v55 + 5);
    if (v56 > 0x7F)
    {
      a2[1] = v56 | 0x80;
      v58 = v56 >> 7;
      if (v56 >> 14)
      {
        v57 = a2 + 3;
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
        a2[2] = v58;
        v57 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v56;
      v57 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v55, v57, a3);
  }

LABEL_119:
  v61 = *(this + 1);
  if ((v61 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v61 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::FormulaPredicateArchive::RequiredFieldsByteSizeFallback(TST::FormulaPredicateArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x80) != 0)
  {
    v4 = *(this + 20);
    if (v4 < 0)
    {
      result = 11;
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    result = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = *(this + 21);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_12:
  if ((v2 & 0x200) != 0)
  {
    v7 = *(this + 22);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
  }

  return result;
}

unint64_t TST::FormulaPredicateArchive::ByteSizeLong(TST::FormulaPredArgArchive **this)
{
  v2 = *(this + 4);
  if ((~v2 & 0x380) != 0)
  {
    v5 = TST::FormulaPredicateArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v3 = *(this + 20);
    if (v3 < 0)
    {
      v4 = 13;
    }

    else
    {
      v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 3;
    }

    v6 = *(this + 21);
    if (v6 < 0)
    {
      v7 = 10;
    }

    else
    {
      v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    }

    v8 = *(this + 22);
    if (v8 < 0)
    {
      v9 = 10;
    }

    else
    {
      v9 = (9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6;
    }

    v5 = v4 + v7 + v9;
  }

  if ((v2 & 0x7F) == 0)
  {
    goto LABEL_22;
  }

  if (v2)
  {
    v13 = TST::FormulaPredArgArchive::ByteSizeLong(this[3]);
    v5 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
LABEL_16:
      if ((v2 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_16;
  }

  v14 = TST::FormulaPredArgArchive::ByteSizeLong(this[4]);
  v5 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 4) == 0)
  {
LABEL_17:
    if ((v2 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_26:
  v15 = TST::FormulaPredArgArchive::ByteSizeLong(this[5]);
  v5 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_18:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_19;
    }

LABEL_28:
    v17 = TSP::UUID::ByteSizeLong(this[7]);
    v5 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x20) == 0)
    {
LABEL_20:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_29;
  }

LABEL_27:
  v16 = TSCE::FormulaArchive::ByteSizeLong(this[6]);
  v5 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_28;
  }

LABEL_19:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_29:
  v18 = TSP::UUID::ByteSizeLong(this[8]);
  v5 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) != 0)
  {
LABEL_21:
    v10 = TSP::UUID::ByteSizeLong(this[9]);
    v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_22:
  v11 = v5 + ((v2 >> 9) & 2);
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v11, this + 20);
  }

  else
  {
    *(this + 5) = v11;
    return v5 + ((v2 >> 9) & 2);
  }
}

uint64_t TST::FormulaPredicateArchive::MergeFrom(TST::FormulaPredicateArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::FormulaPredicateArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TST::FormulaPredicateArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FormulaPredicateArchive::Clear(this);

    return TST::FormulaPredicateArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::FormulaPredicateArchive::CopyFrom(uint64_t *this, const TST::FormulaPredicateArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FormulaPredicateArchive::Clear(this);

    return TST::FormulaPredicateArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TST::FormulaPredicateArchive::InternalSwap(TST::FormulaPredicateArchive *this, TST::FormulaPredicateArchive *a2)
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
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  v12 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v11;
  *(a2 + 10) = v12;
  LODWORD(v11) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v11;
  LOBYTE(v11) = *(this + 92);
  *(this + 92) = *(a2 + 92);
  *(a2 + 92) = v11;
  return result;
}

TSP::Reference *TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::clear_cell_style(TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::clear_text_style(TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot(TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5BD8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ConditionalStyleSetArchive_ConditionalStyleRulePrePivot_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2834B5BD8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ConditionalStyleSetArchive_ConditionalStyleRulePrePivot_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot(TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *this, const TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B5BD8;
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
  return this;
}

void TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::~ConditionalStyleSetArchive_ConditionalStyleRulePrePivot(TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *this)
{
  if (this != TST::_ConditionalStyleSetArchive_ConditionalStyleRulePrePivot_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::FormulaPredicatePrePivotArchive::~FormulaPredicatePrePivotArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::~ConditionalStyleSetArchive_ConditionalStyleRulePrePivot(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::default_instance(TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *this)
{
  if (atomic_load_explicit(scc_info_ConditionalStyleSetArchive_ConditionalStyleRulePrePivot_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_ConditionalStyleSetArchive_ConditionalStyleRulePrePivot_default_instance_;
}

uint64_t *TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TST::FormulaPredicatePrePivotArchive::Clear(this[3]);
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

    this = TSP::Reference::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSP::Reference::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  while ((sub_221567030(a3, &v22) & 1) == 0)
  {
    v5 = (v22 + 1);
    v6 = *v22;
    if ((*v22 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v22 + 2);
LABEL_6:
      v22 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v7 - 128));
    v22 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v20;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 4u;
      v12 = *(a1 + 40);
      if (!v12)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x223DA0390](v15);
        LODWORD(v12) = v16;
        *(a1 + 40) = v16;
LABEL_30:
        v5 = v22;
      }

LABEL_31:
      v11 = sub_22170B7F8(a3, v12, v5);
      goto LABEL_37;
    }

    if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v12 = *(a1 + 32);
      if (!v12)
      {
        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x223DA0390](v13);
        LODWORD(v12) = v14;
        *(a1 + 32) = v14;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    if (v8 != 1 || v6 != 10)
    {
LABEL_13:
      if (v6)
      {
        v10 = (v6 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        *(a3 + 80) = v6 - 1;
        return v22;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v11 = google::protobuf::internal::UnknownFieldParse();
      goto LABEL_37;
    }

    *(a1 + 16) |= 1u;
    v17 = *(a1 + 24);
    if (!v17)
    {
      v18 = *(a1 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredicatePrePivotArchive>(v18);
      *(a1 + 24) = v17;
      v5 = v22;
    }

    v11 = sub_22170626C(a3, v17, v5);
LABEL_37:
    v22 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v22;
}

unsigned __int8 *TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::_InternalSerialize(TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::FormulaPredicatePrePivotArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
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

  v12 = *(this + 4);
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

  a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 5);
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

    a2 = TSP::Reference::_InternalSerialize(v18, v20, a3);
  }

LABEL_35:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::RequiredFieldsByteSizeFallback(TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TST::FormulaPredicatePrePivotArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

unint64_t TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::ByteSizeLong(TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v5 = TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TST::FormulaPredicatePrePivotArchive::ByteSizeLong(*(this + 3));
    v3 = TSP::Reference::ByteSizeLong(*(this + 4));
    v4 = TSP::Reference::ByteSizeLong(*(this + 5));
    v5 = v2 + v3 + v4 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::MergeFrom(TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::MergeFrom(uint64_t this, const TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredicatePrePivotArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TST::_FormulaPredicatePrePivotArchive_default_instance_;
      }

      this = TST::FormulaPredicatePrePivotArchive::MergeFrom(v6, v8);
    }

    v9 = MEMORY[0x277D80A18];
    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v10 = *(v3 + 32);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x223DA0390](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 4))
      {
        v12 = *(a2 + 4);
      }

      else
      {
        v12 = v9;
      }

      this = TSP::Reference::MergeFrom(v10, v12);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v13 = *(v3 + 40);
      if (!v13)
      {
        v14 = *(v3 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x223DA0390](v14);
        *(v3 + 40) = v13;
      }

      if (*(a2 + 5))
      {
        v15 = *(a2 + 5);
      }

      else
      {
        v15 = v9;
      }

      return TSP::Reference::MergeFrom(v13, v15);
    }
  }

  return this;
}

uint64_t *TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::Clear(this);

    return TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::CopyFrom(uint64_t *this, const TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::Clear(this);

    return TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::IsInitialized(TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    return 0;
  }

  v2 = *(this + 3);
  if ((~*(v2 + 16) & 0x7F) != 0)
  {
    return 0;
  }

  result = TSCE::FormulaArchive::IsInitialized(*(v2 + 24));
  if (!result)
  {
    return result;
  }

  v4 = *(this + 4);
  if ((v4 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v4 = *(this + 4);
  }

  if ((v4 & 4) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::InternalSwap(TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *this, TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot *a2)
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
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  return result;
}

TSP::Reference *TST::ConditionalStyleSetArchive_ConditionalStyleRule::clear_cell_style(TST::ConditionalStyleSetArchive_ConditionalStyleRule *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TST::ConditionalStyleSetArchive_ConditionalStyleRule::clear_text_style(TST::ConditionalStyleSetArchive_ConditionalStyleRule *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TST::ConditionalStyleSetArchive_ConditionalStyleRule *TST::ConditionalStyleSetArchive_ConditionalStyleRule::ConditionalStyleSetArchive_ConditionalStyleRule(TST::ConditionalStyleSetArchive_ConditionalStyleRule *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5C88;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ConditionalStyleSetArchive_ConditionalStyleRule_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2834B5C88;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ConditionalStyleSetArchive_ConditionalStyleRule_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TST::ConditionalStyleSetArchive_ConditionalStyleRule *TST::ConditionalStyleSetArchive_ConditionalStyleRule::ConditionalStyleSetArchive_ConditionalStyleRule(TST::ConditionalStyleSetArchive_ConditionalStyleRule *this, const TST::ConditionalStyleSetArchive_ConditionalStyleRule *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B5C88;
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
  return this;
}

void TST::ConditionalStyleSetArchive_ConditionalStyleRule::~ConditionalStyleSetArchive_ConditionalStyleRule(TST::ConditionalStyleSetArchive_ConditionalStyleRule *this)
{
  if (this != &TST::_ConditionalStyleSetArchive_ConditionalStyleRule_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::FormulaPredicateArchive::~FormulaPredicateArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::ConditionalStyleSetArchive_ConditionalStyleRule::~ConditionalStyleSetArchive_ConditionalStyleRule(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::ConditionalStyleSetArchive_ConditionalStyleRule::default_instance(TST::ConditionalStyleSetArchive_ConditionalStyleRule *this)
{
  if (atomic_load_explicit(scc_info_ConditionalStyleSetArchive_ConditionalStyleRule_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ConditionalStyleSetArchive_ConditionalStyleRule_default_instance_;
}

uint64_t *TST::ConditionalStyleSetArchive_ConditionalStyleRule::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TST::FormulaPredicateArchive::Clear(this[3]);
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

    this = TSP::Reference::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSP::Reference::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::ConditionalStyleSetArchive_ConditionalStyleRule::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  while ((sub_221567030(a3, &v22) & 1) == 0)
  {
    v5 = (v22 + 1);
    v6 = *v22;
    if ((*v22 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v22 + 2);
LABEL_6:
      v22 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v7 - 128));
    v22 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v20;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 4u;
      v12 = *(a1 + 40);
      if (!v12)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x223DA0390](v15);
        LODWORD(v12) = v16;
        *(a1 + 40) = v16;
LABEL_30:
        v5 = v22;
      }

LABEL_31:
      v11 = sub_22170B7F8(a3, v12, v5);
      goto LABEL_37;
    }

    if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v12 = *(a1 + 32);
      if (!v12)
      {
        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x223DA0390](v13);
        LODWORD(v12) = v14;
        *(a1 + 32) = v14;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    if (v8 != 1 || v6 != 10)
    {
LABEL_13:
      if (v6)
      {
        v10 = (v6 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        *(a3 + 80) = v6 - 1;
        return v22;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v11 = google::protobuf::internal::UnknownFieldParse();
      goto LABEL_37;
    }

    *(a1 + 16) |= 1u;
    v17 = *(a1 + 24);
    if (!v17)
    {
      v18 = *(a1 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredicateArchive>(v18);
      *(a1 + 24) = v17;
      v5 = v22;
    }

    v11 = sub_22170633C(a3, v17, v5);
LABEL_37:
    v22 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v22;
}

unsigned __int8 *TST::ConditionalStyleSetArchive_ConditionalStyleRule::_InternalSerialize(TST::ConditionalStyleSetArchive_ConditionalStyleRule *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::FormulaPredicateArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
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

  v12 = *(this + 4);
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

  a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 5);
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

    a2 = TSP::Reference::_InternalSerialize(v18, v20, a3);
  }

LABEL_35:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::ConditionalStyleSetArchive_ConditionalStyleRule::RequiredFieldsByteSizeFallback(TST::ConditionalStyleSetArchive_ConditionalStyleRule *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) == 0)
  {
    v3 = 0;
    if ((v2 & 4) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSP::Reference::ByteSizeLong(*(this + 4));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 4) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::ConditionalStyleSetArchive_ConditionalStyleRule::ByteSizeLong(TST::ConditionalStyleSetArchive_ConditionalStyleRule *this)
{
  if ((~*(this + 4) & 6) != 0)
  {
    v4 = TST::ConditionalStyleSetArchive_ConditionalStyleRule::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 = TSP::Reference::ByteSizeLong(*(this + 5));
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (*(this + 16))
  {
    v5 = TST::FormulaPredicateArchive::ByteSizeLong(*(this + 3));
    v4 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::ConditionalStyleSetArchive_ConditionalStyleRule::MergeFrom(TST::ConditionalStyleSetArchive_ConditionalStyleRule *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ConditionalStyleSetArchive_ConditionalStyleRule::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ConditionalStyleSetArchive_ConditionalStyleRule::MergeFrom(uint64_t this, const TST::ConditionalStyleSetArchive_ConditionalStyleRule *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredicateArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TST::_FormulaPredicateArchive_default_instance_;
      }

      this = TST::FormulaPredicateArchive::MergeFrom(v6, v8);
    }

    v9 = MEMORY[0x277D80A18];
    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v10 = *(v3 + 32);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x223DA0390](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 4))
      {
        v12 = *(a2 + 4);
      }

      else
      {
        v12 = v9;
      }

      this = TSP::Reference::MergeFrom(v10, v12);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v13 = *(v3 + 40);
      if (!v13)
      {
        v14 = *(v3 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x223DA0390](v14);
        *(v3 + 40) = v13;
      }

      if (*(a2 + 5))
      {
        v15 = *(a2 + 5);
      }

      else
      {
        v15 = v9;
      }

      return TSP::Reference::MergeFrom(v13, v15);
    }
  }

  return this;
}

uint64_t *TST::ConditionalStyleSetArchive_ConditionalStyleRule::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConditionalStyleSetArchive_ConditionalStyleRule::Clear(this);

    return TST::ConditionalStyleSetArchive_ConditionalStyleRule::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::ConditionalStyleSetArchive_ConditionalStyleRule::CopyFrom(uint64_t *this, const TST::ConditionalStyleSetArchive_ConditionalStyleRule *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConditionalStyleSetArchive_ConditionalStyleRule::Clear(this);

    return TST::ConditionalStyleSetArchive_ConditionalStyleRule::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::ConditionalStyleSetArchive_ConditionalStyleRule::IsInitialized(TST::ConditionalStyleSetArchive_ConditionalStyleRule *this)
{
  v1 = *(this + 4);
  if ((~v1 & 6) != 0)
  {
    return 0;
  }

  if (v1)
  {
    result = TST::FormulaPredicateArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 4) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::ConditionalStyleSetArchive_ConditionalStyleRule::InternalSwap(TST::ConditionalStyleSetArchive_ConditionalStyleRule *this, TST::ConditionalStyleSetArchive_ConditionalStyleRule *a2)
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
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  return result;
}

TST::ConditionalStyleSetArchive_ConditionalStyleRules *TST::ConditionalStyleSetArchive_ConditionalStyleRules::ConditionalStyleSetArchive_ConditionalStyleRules(TST::ConditionalStyleSetArchive_ConditionalStyleRules *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5D38;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_ConditionalStyleSetArchive_ConditionalStyleRules_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TST::ConditionalStyleSetArchive_ConditionalStyleRules *TST::ConditionalStyleSetArchive_ConditionalStyleRules::ConditionalStyleSetArchive_ConditionalStyleRules(TST::ConditionalStyleSetArchive_ConditionalStyleRules *this, const TST::ConditionalStyleSetArchive_ConditionalStyleRules *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834B5D38;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22167F5F0(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TST::ConditionalStyleSetArchive_ConditionalStyleRules::~ConditionalStyleSetArchive_ConditionalStyleRules(TST::ConditionalStyleSetArchive_ConditionalStyleRules *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167F56C(this + 2);
}

{
  TST::ConditionalStyleSetArchive_ConditionalStyleRules::~ConditionalStyleSetArchive_ConditionalStyleRules(this);

  JUMPOUT(0x223DA1450);
}

void *TST::ConditionalStyleSetArchive_ConditionalStyleRules::default_instance(TST::ConditionalStyleSetArchive_ConditionalStyleRules *this)
{
  if (atomic_load_explicit(scc_info_ConditionalStyleSetArchive_ConditionalStyleRules_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ConditionalStyleSetArchive_ConditionalStyleRules_default_instance_;
}

uint64_t *TST::ConditionalStyleSetArchive_ConditionalStyleRules::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TST::ConditionalStyleSetArchive_ConditionalStyleRule::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::ConditionalStyleSetArchive_ConditionalStyleRules::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TST::ConditionalStyleSetArchive_ConditionalStyleRule>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2217069BC(a3, v13, v10);
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

unsigned __int8 *TST::ConditionalStyleSetArchive_ConditionalStyleRules::_InternalSerialize(TST::ConditionalStyleSetArchive_ConditionalStyleRules *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TST::ConditionalStyleSetArchive_ConditionalStyleRule::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::ConditionalStyleSetArchive_ConditionalStyleRules::ByteSizeLong(TST::ConditionalStyleSetArchive_ConditionalStyleRules *this)
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
      v7 = TST::ConditionalStyleSetArchive_ConditionalStyleRule::ByteSizeLong(v6);
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

uint64_t TST::ConditionalStyleSetArchive_ConditionalStyleRules::MergeFrom(TST::ConditionalStyleSetArchive_ConditionalStyleRules *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ConditionalStyleSetArchive_ConditionalStyleRules::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ConditionalStyleSetArchive_ConditionalStyleRules::MergeFrom(uint64_t this, const TST::ConditionalStyleSetArchive_ConditionalStyleRules *a2)
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
    this = sub_22167F5F0(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TST::ConditionalStyleSetArchive_ConditionalStyleRules::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConditionalStyleSetArchive_ConditionalStyleRules::Clear(this);

    return TST::ConditionalStyleSetArchive_ConditionalStyleRules::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::ConditionalStyleSetArchive_ConditionalStyleRules::CopyFrom(uint64_t *this, const TST::ConditionalStyleSetArchive_ConditionalStyleRules *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConditionalStyleSetArchive_ConditionalStyleRules::Clear(this);

    return TST::ConditionalStyleSetArchive_ConditionalStyleRules::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::ConditionalStyleSetArchive_ConditionalStyleRules::IsInitialized(TST::ConditionalStyleSetArchive_ConditionalStyleRules *this)
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
    IsInitialized = TST::ConditionalStyleSetArchive_ConditionalStyleRule::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TST::ConditionalStyleSetArchive_ConditionalStyleRules::InternalSwap(TST::ConditionalStyleSetArchive_ConditionalStyleRules *this, TST::ConditionalStyleSetArchive_ConditionalStyleRules *a2)
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

TST::ConditionalStyleSetArchive *TST::ConditionalStyleSetArchive::ConditionalStyleSetArchive(TST::ConditionalStyleSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5DE8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ConditionalStyleSetArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 6) = 0;
  return this;
}

TST::ConditionalStyleSetArchive *TST::ConditionalStyleSetArchive::ConditionalStyleSetArchive(TST::ConditionalStyleSetArchive *this, const TST::ConditionalStyleSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B5DE8;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_22167F734(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_22156734C(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  *(this + 14) = *(a2 + 14);
  return this;
}

void sub_2216320E0(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C40290C9B23);
  sub_22167F6B0((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::ConditionalStyleSetArchive::~ConditionalStyleSetArchive(TST::ConditionalStyleSetArchive *this)
{
  if (this != &TST::_ConditionalStyleSetArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TST::ConditionalStyleSetArchive_ConditionalStyleRules::~ConditionalStyleSetArchive_ConditionalStyleRules(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_22167F6B0(this + 3);
}

{
  TST::ConditionalStyleSetArchive::~ConditionalStyleSetArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::ConditionalStyleSetArchive::default_instance(TST::ConditionalStyleSetArchive *this)
{
  if (atomic_load_explicit(scc_info_ConditionalStyleSetArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ConditionalStyleSetArchive_default_instance_;
}

uint64_t *TST::ConditionalStyleSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TST::ConditionalStyleSetArchive_ConditionalStyleRules::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::ConditionalStyleSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v31 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v31) & 1) == 0)
  {
    while (1)
    {
      v7 = (v31 + 1);
      v8 = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v9 - 128));
      v31 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_52;
      }

      v7 = TagFallback;
      v8 = v28;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 1u;
        v22 = *(a1 + 48);
        if (!v22)
        {
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = google::protobuf::Arena::CreateMaybeMessage<TST::ConditionalStyleSetArchive_ConditionalStyleRules>(v23);
          *(a1 + 48) = v22;
          v7 = v31;
        }

        v13 = sub_221706B5C(a3, v22, v7);
LABEL_39:
        v31 = v13;
        if (!v13)
        {
          goto LABEL_52;
        }

        goto LABEL_45;
      }

      if (v10 == 2)
      {
        if (v8 == 18)
        {
          v14 = (v7 - 1);
          while (1)
          {
            v15 = (v14 + 1);
            v31 = (v14 + 1);
            v16 = *(a1 + 40);
            if (!v16)
            {
              goto LABEL_23;
            }

            v21 = *(a1 + 32);
            v17 = *v16;
            if (v21 < *v16)
            {
              *(a1 + 32) = v21 + 1;
              v18 = *&v16[2 * v21 + 2];
              goto LABEL_27;
            }

            if (v17 == *(a1 + 36))
            {
LABEL_23:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v16 = *(a1 + 40);
              v17 = *v16;
            }

            *v16 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot>(*(a1 + 24));
            v19 = *(a1 + 32);
            v20 = *(a1 + 40) + 8 * v19;
            *(a1 + 32) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v31;
LABEL_27:
            v14 = sub_221706A8C(a3, v18, v15);
            v31 = v14;
            if (!v14)
            {
              goto LABEL_52;
            }

            if (*a3 <= v14 || *v14 != 18)
            {
              goto LABEL_45;
            }
          }
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
          sub_221567188((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_39;
      }

      if (v10 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v24 = (v7 + 1);
      LODWORD(v25) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      v26 = *v24;
      v25 = (v25 + (v26 << 7) - 128);
      if ((v26 & 0x80000000) == 0)
      {
        v24 = (v7 + 2);
LABEL_44:
        v31 = v24;
        *(a1 + 56) = v25;
        goto LABEL_45;
      }

      v29 = google::protobuf::internal::VarintParseSlow32(v7, v25);
      v31 = v29;
      *(a1 + 56) = v30;
      if (!v29)
      {
LABEL_52:
        v31 = 0;
        goto LABEL_2;
      }

LABEL_45:
      if (sub_221567030(a3, &v31))
      {
        goto LABEL_2;
      }
    }

    v7 = (v31 + 2);
LABEL_6:
    v31 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

unsigned __int8 *TST::ConditionalStyleSetArchive::_InternalSerialize(TST::ConditionalStyleSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 14);
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
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 8);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v12 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::_InternalSerialize(v12, v14, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 6);
    *a2 = 26;
    v19 = *(v18 + 10);
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

    a2 = TST::ConditionalStyleSetArchive_ConditionalStyleRules::_InternalSerialize(v18, v20, a3);
  }

  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::ConditionalStyleSetArchive::ByteSizeLong(TST::ConditionalStyleSetArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    v3 = ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 8);
  v5 = v3 + v4;
  v6 = *(this + 5);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
    v2 = *(this + 4);
  }

  if (v2)
  {
    v11 = TST::ConditionalStyleSetArchive_ConditionalStyleRules::ByteSizeLong(*(this + 6));
    v5 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TST::ConditionalStyleSetArchive::MergeFrom(TST::ConditionalStyleSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ConditionalStyleSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ConditionalStyleSetArchive::MergeFrom(uint64_t this, const TST::ConditionalStyleSetArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_22167F734(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      v11 = *(v3 + 48);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = google::protobuf::Arena::CreateMaybeMessage<TST::ConditionalStyleSetArchive_ConditionalStyleRules>(v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = &TST::_ConditionalStyleSetArchive_ConditionalStyleRules_default_instance_;
      }

      this = TST::ConditionalStyleSetArchive_ConditionalStyleRules::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 14);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TST::ConditionalStyleSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConditionalStyleSetArchive::Clear(this);

    return TST::ConditionalStyleSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::ConditionalStyleSetArchive::CopyFrom(uint64_t *this, const TST::ConditionalStyleSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ConditionalStyleSetArchive::Clear(this);

    return TST::ConditionalStyleSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::ConditionalStyleSetArchive::IsInitialized(TST::ConditionalStyleSetArchive *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  v7 = *(this + 6);
  v8 = *(v7 + 24);
  do
  {
    v5 = v8 < 1;
    if (v8 < 1)
    {
      break;
    }

    v9 = v8 - 1;
    v10 = TST::ConditionalStyleSetArchive_ConditionalStyleRule::IsInitialized(*(*(v7 + 32) + 8 * v8));
    v8 = v9;
  }

  while ((v10 & 1) != 0);
  return v5;
}

__n128 TST::ConditionalStyleSetArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v8;
  LODWORD(v8) = this[3].n128_u32[2];
  this[3].n128_u32[2] = a2[3].n128_u32[2];
  a2[3].n128_u32[2] = v8;
  return result;
}

TST::FilterSetArchive *TST::FilterSetArchive::FilterSetArchive(TST::FilterSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5E98;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 7) = a2;
  *(this + 4) = 0;
  *(this + 40) = 0u;
  *(this + 9) = a2;
  *(this + 10) = a2;
  *(this + 8) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  if (atomic_load_explicit(scc_info_FilterSetArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 26) = 0;
  *(this + 54) = 256;
  return this;
}

void sub_221632CFC(_Unwind_Exception *a1)
{
  sub_22167F878(v2);
  sub_22170883C();
  sub_22167F7F4(v1);
  _Unwind_Resume(a1);
}

TST::FilterSetArchive *TST::FilterSetArchive::FilterSetArchive(TST::FilterSetArchive *this, const TST::FilterSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B5E98;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_22167F8FC(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
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
    sub_22167D63C(this + 16, v12);
    v13 = *(this + 9);
    *(this + 16) += *(a2 + 16);
    memcpy(v13, *(a2 + 9), *(a2 + 16));
  }

  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  v14 = *(a2 + 22);
  if (v14)
  {
    v15 = *(a2 + 12);
    v16 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 80));
    sub_22167F9BC(this + 80, v16, (v15 + 8), v14, **(this + 12) - *(this + 22));
    v17 = *(this + 22) + v14;
    *(this + 22) = v17;
    v18 = *(this + 12);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 1);
  if (v19)
  {
    sub_22156734C(v4, (v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v20 = *(a2 + 26);
  *(this + 54) = *(a2 + 54);
  *(this + 26) = v20;
  return this;
}

void sub_221632F04(_Unwind_Exception *a1)
{
  sub_22167F878(v2);
  if (*(v1 + 68) >= 1)
  {
    v4 = *(v1 + 72);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(v1 + 52) >= 1)
  {
    v7 = *(v1 + 56);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  sub_22167F7F4((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::FilterSetArchive::~FilterSetArchive(TST::FilterSetArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167F878(this + 10);
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

  sub_22167F7F4(this + 3);
}

{
  TST::FilterSetArchive::~FilterSetArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::FilterSetArchive::default_instance(TST::FilterSetArchive *this)
{
  if (atomic_load_explicit(scc_info_FilterSetArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_FilterSetArchive_default_instance_;
}

uint64_t *TST::FilterSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::FilterRulePrePivotArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  v5 = *(v1 + 88);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 96) + 8);
    do
    {
      v7 = *v6++;
      this = TST::FilterRuleArchive::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 88) = 0;
  }

  if ((*(v1 + 16) & 7) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 108) = 256;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_221567398(v8);
  }

  return this;
}

google::protobuf::internal *TST::FilterSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v56 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v56) & 1) == 0)
  {
    while (1)
    {
      v7 = (v56 + 1);
      v8 = *v56;
      if ((*v56 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v56, (v9 - 128));
      v56 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_114;
      }

      v7 = TagFallback;
      v8 = v35;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 8)
          {
            goto LABEL_102;
          }

          v37 = (v7 + 1);
          v36 = *v7;
          if ((v36 & 0x8000000000000000) != 0)
          {
            v38 = *v37;
            v36 = (v38 << 7) + v36 - 128;
            if ((v38 & 0x80000000) == 0)
            {
              v37 = (v7 + 2);
              goto LABEL_65;
            }

            v56 = google::protobuf::internal::VarintParseSlow64(v7, v36);
            if (!v56)
            {
              goto LABEL_114;
            }
          }

          else
          {
LABEL_65:
            v56 = v37;
          }

          if (v36 > 1)
          {
            sub_2217087CC();
          }

          else
          {
            *(a1 + 16) |= 1u;
            *(a1 + 104) = v36;
          }

          goto LABEL_110;
        }

        if (v10 != 2)
        {
          if (v10 != 3 || v8 != 26)
          {
            goto LABEL_102;
          }

          v18 = (v7 - 1);
          while (2)
          {
            v19 = (v18 + 1);
            v56 = (v18 + 1);
            v20 = *(a1 + 40);
            if (!v20)
            {
LABEL_34:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v20 = *(a1 + 40);
              v21 = *v20;
              goto LABEL_35;
            }

            v25 = *(a1 + 32);
            v21 = *v20;
            if (v25 >= *v20)
            {
              if (v21 == *(a1 + 36))
              {
                goto LABEL_34;
              }

LABEL_35:
              *v20 = v21 + 1;
              v22 = google::protobuf::Arena::CreateMaybeMessage<TST::FilterRulePrePivotArchive>(*(a1 + 24));
              v23 = *(a1 + 32);
              v24 = *(a1 + 40) + 8 * v23;
              *(a1 + 32) = v23 + 1;
              *(v24 + 8) = v22;
              v19 = v56;
            }

            else
            {
              *(a1 + 32) = v25 + 1;
              v22 = *&v20[2 * v25 + 2];
            }

            v18 = sub_221706C2C(a3, v22, v19);
            v56 = v18;
            if (!v18)
            {
              goto LABEL_114;
            }

            if (*a3 <= v18 || *v18 != 26)
            {
              goto LABEL_110;
            }

            continue;
          }
        }

        if (v8 != 16)
        {
          goto LABEL_102;
        }

        v5 |= 4u;
        v48 = (v7 + 1);
        v47 = *v7;
        if ((v47 & 0x8000000000000000) != 0)
        {
          v49 = *v48;
          v47 = (v49 << 7) + v47 - 128;
          if (v49 < 0)
          {
            v52 = google::protobuf::internal::VarintParseSlow64(v7, v47);
            v56 = v52;
            *(a1 + 109) = v53 != 0;
            if (!v52)
            {
              goto LABEL_114;
            }

            goto LABEL_110;
          }

          v48 = (v7 + 2);
        }

        v56 = v48;
        *(a1 + 109) = v47 != 0;
      }

      else
      {
        if (v8 >> 3 > 5)
        {
          if (v10 == 6)
          {
            if (v8 == 48)
            {
              v42 = v7 - 1;
              while (1)
              {
                v56 = (v42 + 1);
                v43 = v42[1];
                if ((v43 & 0x8000000000000000) != 0)
                {
                  v43 = (v42[2] << 7) + v43 - 128;
                  if (v42[2] < 0)
                  {
                    v42 = google::protobuf::internal::VarintParseSlow64((v42 + 1), v43);
                  }

                  else
                  {
                    v42 += 3;
                  }
                }

                else
                {
                  v42 += 2;
                }

                v56 = v42;
                v44 = v43 != 0;
                v45 = *(a1 + 64);
                if (v45 == *(a1 + 68))
                {
                  v46 = v45 + 1;
                  sub_22167D63C((a1 + 64), v45 + 1);
                  *(*(a1 + 72) + v45) = v44;
                  v42 = v56;
                }

                else
                {
                  *(*(a1 + 72) + v45) = v44;
                  v46 = v45 + 1;
                }

                *(a1 + 64) = v46;
                if (!v42)
                {
                  goto LABEL_114;
                }

                if (*a3 <= v42 || *v42 != 48)
                {
                  goto LABEL_110;
                }
              }
            }

            if (v8 == 50)
            {
              v54 = google::protobuf::internal::PackedBoolParser();
              goto LABEL_109;
            }

LABEL_102:
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

            v54 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_109;
          }

          if (v10 != 7 || v8 != 58)
          {
            goto LABEL_102;
          }

          v26 = (v7 - 1);
          while (2)
          {
            v27 = (v26 + 1);
            v56 = (v26 + 1);
            v28 = *(a1 + 96);
            if (!v28)
            {
LABEL_49:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 80));
              v28 = *(a1 + 96);
              v29 = *v28;
              goto LABEL_50;
            }

            v33 = *(a1 + 88);
            v29 = *v28;
            if (v33 >= *v28)
            {
              if (v29 == *(a1 + 92))
              {
                goto LABEL_49;
              }

LABEL_50:
              *v28 = v29 + 1;
              v30 = google::protobuf::Arena::CreateMaybeMessage<TST::FilterRuleArchive>(*(a1 + 80));
              v31 = *(a1 + 88);
              v32 = *(a1 + 96) + 8 * v31;
              *(a1 + 88) = v31 + 1;
              *(v32 + 8) = v30;
              v27 = v56;
            }

            else
            {
              *(a1 + 88) = v33 + 1;
              v30 = *&v28[2 * v33 + 2];
            }

            v26 = sub_221706CFC(a3, v30, v27);
            v56 = v26;
            if (!v26)
            {
              goto LABEL_114;
            }

            if (*a3 <= v26 || *v26 != 58)
            {
              goto LABEL_110;
            }

            continue;
          }
        }

        if (v10 != 4)
        {
          if (v10 == 5)
          {
            if (v8 == 40)
            {
              v11 = v7 - 1;
              while (1)
              {
                v56 = (v11 + 1);
                v12 = v11[1];
                if (v11[1] < 0)
                {
                  v13 = v12 + (v11[2] << 7);
                  v12 = v13 - 128;
                  if (v11[2] < 0)
                  {
                    v11 = google::protobuf::internal::VarintParseSlow32((v11 + 1), (v13 - 128));
                    v12 = v14;
                  }

                  else
                  {
                    v11 += 3;
                  }
                }

                else
                {
                  v11 += 2;
                }

                v56 = v11;
                v15 = *(a1 + 48);
                if (v15 == *(a1 + 52))
                {
                  v16 = v15 + 1;
                  sub_2210BBC64((a1 + 48), v15 + 1);
                  *(*(a1 + 56) + 4 * v15) = v12;
                  v11 = v56;
                }

                else
                {
                  *(*(a1 + 56) + 4 * v15) = v12;
                  v16 = v15 + 1;
                }

                *(a1 + 48) = v16;
                if (!v11)
                {
                  break;
                }

                if (*a3 <= v11 || *v11 != 40)
                {
                  goto LABEL_110;
                }
              }

LABEL_114:
              v56 = 0;
              goto LABEL_2;
            }

            if (v8 == 42)
            {
              v54 = google::protobuf::internal::PackedUInt32Parser();
LABEL_109:
              v56 = v54;
              if (!v54)
              {
                goto LABEL_114;
              }

              goto LABEL_110;
            }
          }

          goto LABEL_102;
        }

        if (v8 != 32)
        {
          goto LABEL_102;
        }

        v5 |= 2u;
        v40 = (v7 + 1);
        v39 = *v7;
        if ((v39 & 0x8000000000000000) != 0)
        {
          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v50 = google::protobuf::internal::VarintParseSlow64(v7, v39);
            v56 = v50;
            *(a1 + 108) = v51 != 0;
            if (!v50)
            {
              goto LABEL_114;
            }

            goto LABEL_110;
          }

          v40 = (v7 + 2);
        }

        v56 = v40;
        *(a1 + 108) = v39 != 0;
      }

LABEL_110:
      if (sub_221567030(a3, &v56))
      {
        goto LABEL_2;
      }
    }

    v7 = (v56 + 2);
LABEL_6:
    v56 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v56;
}

unsigned __int8 *TST::FilterSetArchive::_InternalSerialize(TST::FilterSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 26);
    *a2 = 8;
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
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
        v37 = v7 >> 7;
        ++a2;
        v38 = v7 >> 14;
        v7 >>= 7;
      }

      while (v38);
      *(a2 - 1) = v37;
      if ((v5 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 109);
  *a2 = 16;
  a2[1] = v8;
  a2 += 2;
LABEL_13:
  v9 = *(this + 8);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v11 = *(*(this + 5) + 8 * i + 8);
      *a2 = 26;
      v12 = *(v11 + 5);
      if (v12 > 0x7F)
      {
        a2[1] = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = a2 + 3;
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
          a2[2] = v14;
          v13 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v12;
        v13 = a2 + 2;
      }

      a2 = TST::FilterRulePrePivotArchive::_InternalSerialize(v11, v13, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v17 = *(this + 108);
    *a2 = 32;
    a2[1] = v17;
    a2 += 2;
  }

  v18 = *(this + 12);
  if (v18 >= 1)
  {
    for (j = 0; j != v18; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v20 = *(*(this + 7) + 4 * j);
      *a2 = 40;
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
        }

        else
        {
          a2[2] = v21;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v20;
        a2 += 2;
      }
    }
  }

  v24 = *(this + 16);
  if (v24 >= 1)
  {
    for (k = 0; k != v24; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v26 = *(*(this + 9) + k);
      *a2 = 48;
      a2[1] = v26;
      a2 += 2;
    }
  }

  v27 = *(this + 22);
  if (v27)
  {
    for (m = 0; m != v27; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v29 = *(*(this + 12) + 8 * m + 8);
      *a2 = 58;
      v30 = *(v29 + 5);
      if (v30 > 0x7F)
      {
        a2[1] = v30 | 0x80;
        v32 = v30 >> 7;
        if (v30 >> 14)
        {
          v31 = a2 + 3;
          do
          {
            *(v31 - 1) = v32 | 0x80;
            v33 = v32 >> 7;
            ++v31;
            v34 = v32 >> 14;
            v32 >>= 7;
          }

          while (v34);
          *(v31 - 1) = v33;
        }

        else
        {
          a2[2] = v32;
          v31 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v30;
        v31 = a2 + 2;
      }

      a2 = TST::FilterRuleArchive::_InternalSerialize(v29, v31, a3);
    }
  }

  v35 = *(this + 1);
  if ((v35 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v35 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::FilterSetArchive::ByteSizeLong(TST::FilterSetArchive *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
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
      v7 = TST::FilterRulePrePivotArchive::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v9 = *(this + 22);
  v10 = v8 + v2 + *(this + 12) + 2 * *(this + 16) + v9;
  v11 = *(this + 12);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 8 * v9;
    do
    {
      v14 = *v12++;
      v15 = TST::FilterRuleArchive::ByteSizeLong(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(this + 4);
  if ((v16 & 7) != 0)
  {
    if (v16)
    {
      v17 = *(this + 26);
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v17 >= 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 11;
      }

      v10 += v19;
    }

    v10 += ((*(this + 4) >> 1) & 2) + (*(this + 4) & 2u);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v10, this + 20);
  }

  else
  {
    *(this + 5) = v10;
    return v10;
  }
}

uint64_t TST::FilterSetArchive::MergeFrom(TST::FilterSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::FilterSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::FilterSetArchive::MergeFrom(uint64_t this, const TST::FilterSetArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_22167F8FC(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 12);
  if (v10)
  {
    v11 = *(v3 + 48);
    sub_2210BBC64((v3 + 48), v11 + v10);
    v12 = *(v3 + 56);
    *(v3 + 48) += *(a2 + 12);
    this = memcpy((v12 + 4 * v11), *(a2 + 7), 4 * *(a2 + 12));
  }

  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = *(v3 + 64);
    sub_22167D63C((v3 + 64), v14 + v13);
    v15 = *(v3 + 72);
    *(v3 + 64) += *(a2 + 16);
    this = memcpy((v15 + v14), *(a2 + 9), *(a2 + 16));
  }

  v16 = *(a2 + 22);
  if (v16)
  {
    v17 = *(a2 + 12);
    v18 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 80));
    this = sub_22167F9BC(v3 + 80, v18, (v17 + 8), v16, **(v3 + 96) - *(v3 + 88));
    v19 = *(v3 + 88) + v16;
    *(v3 + 88) = v19;
    v20 = *(v3 + 96);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 4);
  if ((v21 & 7) != 0)
  {
    if (v21)
    {
      *(v3 + 104) = *(a2 + 26);
      if ((v21 & 2) == 0)
      {
LABEL_16:
        if ((v21 & 4) == 0)
        {
LABEL_18:
          *(v3 + 16) |= v21;
          return this;
        }

LABEL_17:
        *(v3 + 109) = *(a2 + 109);
        goto LABEL_18;
      }
    }

    else if ((v21 & 2) == 0)
    {
      goto LABEL_16;
    }

    *(v3 + 108) = *(a2 + 108);
    if ((v21 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  return this;
}

uint64_t *TST::FilterSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FilterSetArchive::Clear(this);

    return TST::FilterSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::FilterSetArchive::CopyFrom(uint64_t *this, const TST::FilterSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FilterSetArchive::Clear(this);

    return TST::FilterSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::FilterSetArchive::IsInitialized(TST::FilterSetArchive *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TST::FilterRulePrePivotArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  return sub_221633FF8(this + 80);
}

BOOL sub_221633FF8(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(*(a1 + 16) + 8 * v2);
    if ((*(v4 + 16) & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while ((TST::FormulaPredicateArchive::IsInitialized(*(v4 + 24)) & 1) != 0);
  return v3 < 1;
}

__n128 TST::FilterSetArchive::InternalSwap(TST::FilterSetArchive *this, TST::FilterSetArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  v8 = *(this + 7);
  *(this + 3) = *(a2 + 3);
  *(a2 + 6) = v7;
  *(a2 + 7) = v8;
  v9 = *(this + 8);
  v10 = *(this + 9);
  *(this + 4) = *(a2 + 4);
  *(a2 + 8) = v9;
  *(a2 + 9) = v10;
  v11 = *(this + 11);
  v12 = *(this + 12);
  result = *(a2 + 88);
  *(this + 88) = result;
  *(a2 + 11) = v11;
  *(a2 + 12) = v12;
  LODWORD(v11) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v11;
  LOBYTE(v11) = *(this + 108);
  *(this + 108) = *(a2 + 108);
  *(a2 + 108) = v11;
  LOBYTE(v11) = *(this + 109);
  *(this + 109) = *(a2 + 109);
  *(a2 + 109) = v11;
  return result;
}

uint64_t TST::UniqueIndexArchive_UniqueIndexEntryArchive::clear_row_uids(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TST::UniqueIndexArchive_UniqueIndexEntryArchive *TST::UniqueIndexArchive_UniqueIndexEntryArchive::UniqueIndexArchive_UniqueIndexEntryArchive(TST::UniqueIndexArchive_UniqueIndexEntryArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5F48;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_UniqueIndexArchive_UniqueIndexEntryArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = MEMORY[0x277D80A90];
  return this;
}

TST::UniqueIndexArchive_UniqueIndexEntryArchive *TST::UniqueIndexArchive_UniqueIndexEntryArchive::UniqueIndexArchive_UniqueIndexEntryArchive(TST::UniqueIndexArchive_UniqueIndexEntryArchive *this, const TST::UniqueIndexArchive_UniqueIndexEntryArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B5F48;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_2215679F8(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_22156734C(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 6) = MEMORY[0x277D80A90];
  if (*(a2 + 16))
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  return this;
}

void TST::UniqueIndexArchive_UniqueIndexEntryArchive::~UniqueIndexArchive_UniqueIndexEntryArchive(TST::UniqueIndexArchive_UniqueIndexEntryArchive *this)
{
  v2 = *(this + 6);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  sub_2214DFCF8(this + 1);
  sub_221567974(this + 3);
}

{
  TST::UniqueIndexArchive_UniqueIndexEntryArchive::~UniqueIndexArchive_UniqueIndexEntryArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::UniqueIndexArchive_UniqueIndexEntryArchive::default_instance(TST::UniqueIndexArchive_UniqueIndexEntryArchive *this)
{
  if (atomic_load_explicit(scc_info_UniqueIndexArchive_UniqueIndexEntryArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_UniqueIndexArchive_UniqueIndexEntryArchive_default_instance_;
}

uint64_t *TST::UniqueIndexArchive_UniqueIndexEntryArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_221567398(v6);
  }

  return this;
}

google::protobuf::internal *TST::UniqueIndexArchive_UniqueIndexEntryArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  while (1)
  {
LABEL_2:
    if (sub_221567030(a3, &v23))
    {
      return v23;
    }

    v5 = (v23 + 1);
    v6 = *v23;
    if ((*v23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v23 + 2);
LABEL_6:
      v23 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v7 - 128));
    v23 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v21;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      break;
    }

    if (v6 >> 3 != 1 || v6 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    google::protobuf::internal::ArenaStringPtr::Mutable();
    v10 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_33:
    v23 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  if (v6 == 18)
  {
    v11 = v5 - 1;
    while (1)
    {
      v12 = (v11 + 1);
      v23 = (v11 + 1);
      v13 = *(a1 + 40);
      if (!v13)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 32);
      v14 = *v13;
      if (v19 < *v13)
      {
        *(a1 + 32) = v19 + 1;
        v16 = *&v13[2 * v19 + 2];
        goto LABEL_26;
      }

      if (v14 == *(a1 + 36))
      {
LABEL_22:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v13 = *(a1 + 40);
        v14 = *v13;
      }

      *v13 = v14 + 1;
      v15 = MEMORY[0x223DA0360](*(a1 + 24));
      LODWORD(v16) = v15;
      v17 = *(a1 + 32);
      v18 = *(a1 + 40) + 8 * v17;
      *(a1 + 32) = v17 + 1;
      *(v18 + 8) = v15;
      v12 = v23;
LABEL_26:
      v11 = sub_2216F813C(a3, v16, v12);
      v23 = v11;
      if (!v11)
      {
        return 0;
      }

      if (*a3 <= v11 || *v11 != 18)
      {
        goto LABEL_2;
      }
    }
  }

LABEL_12:
  if (v6)
  {
    v9 = (v6 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_33;
  }

  *(a3 + 80) = v6 - 1;
  return v23;
}

unsigned __int8 *TST::UniqueIndexArchive_UniqueIndexEntryArchive::_InternalSerialize(TST::UniqueIndexArchive_UniqueIndexEntryArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (*(this + 16))
  {
    v4 = sub_22150C00C(a3, 1, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v6 = *(this + 8);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v8 = *(*(this + 5) + 8 * i + 8);
      *v4 = 18;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        v4[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = v4 + 3;
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
          v4[2] = v11;
          v10 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v9;
        v10 = v4 + 2;
      }

      v4 = TSP::UUID::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::UniqueIndexArchive_UniqueIndexEntryArchive::ByteSizeLong(TST::UniqueIndexArchive_UniqueIndexEntryArchive *this)
{
  if (*(this + 16))
  {
    v3 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v6 = *(this + 8);
  v7 = v2 + v6;
  v8 = *(this + 5);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = TSP::UUID::ByteSizeLong(v11);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v7, this + 20);
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

uint64_t TST::UniqueIndexArchive_UniqueIndexEntryArchive::MergeFrom(TST::UniqueIndexArchive_UniqueIndexEntryArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::UniqueIndexArchive_UniqueIndexEntryArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::UniqueIndexArchive_UniqueIndexEntryArchive::MergeFrom(uint64_t this, const TST::UniqueIndexArchive_UniqueIndexEntryArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2215679F8(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;

    return google::protobuf::internal::ArenaStringPtr::Set();
  }

  return this;
}

uint64_t *TST::UniqueIndexArchive_UniqueIndexEntryArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::UniqueIndexArchive_UniqueIndexEntryArchive::Clear(this);

    return TST::UniqueIndexArchive_UniqueIndexEntryArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::UniqueIndexArchive_UniqueIndexEntryArchive::CopyFrom(uint64_t *this, const TST::UniqueIndexArchive_UniqueIndexEntryArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::UniqueIndexArchive_UniqueIndexEntryArchive::Clear(this);

    return TST::UniqueIndexArchive_UniqueIndexEntryArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::UniqueIndexArchive_UniqueIndexEntryArchive::IsInitialized(TST::UniqueIndexArchive_UniqueIndexEntryArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

__n128 TST::UniqueIndexArchive_UniqueIndexEntryArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v8;
  return result;
}

TSP::UUID *TST::UniqueIndexArchive::clear_column_uid(TST::UniqueIndexArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::UniqueIndexArchive *TST::UniqueIndexArchive::UniqueIndexArchive(TST::UniqueIndexArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5FF8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_UniqueIndexArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TST::UniqueIndexArchive *TST::UniqueIndexArchive::UniqueIndexArchive(TST::UniqueIndexArchive *this, const TST::UniqueIndexArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B5FF8;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_22167FB00(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_22156734C(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_221634EA4(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C40825B58B5);
  sub_22167FA7C((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::UniqueIndexArchive::~UniqueIndexArchive(TST::UniqueIndexArchive *this)
{
  if (this != &TST::_UniqueIndexArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_22167FA7C(this + 3);
}

{
  TST::UniqueIndexArchive::~UniqueIndexArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::UniqueIndexArchive::default_instance(TST::UniqueIndexArchive *this)
{
  if (atomic_load_explicit(scc_info_UniqueIndexArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_UniqueIndexArchive_default_instance_;
}

uint64_t *TST::UniqueIndexArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::UniqueIndexArchive_UniqueIndexEntryArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::UUID::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::UniqueIndexArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  while (1)
  {
LABEL_2:
    if (sub_221567030(a3, &v25))
    {
      return v25;
    }

    v5 = (v25 + 1);
    v6 = *v25;
    if ((*v25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v25 + 2);
LABEL_6:
      v25 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v7 - 128));
    v25 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v23;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      v11 = (v5 - 1);
      while (1)
      {
        v12 = (v11 + 1);
        v25 = (v11 + 1);
        v13 = *(a1 + 40);
        if (!v13)
        {
          goto LABEL_22;
        }

        v18 = *(a1 + 32);
        v14 = *v13;
        if (v18 < *v13)
        {
          *(a1 + 32) = v18 + 1;
          v15 = *&v13[2 * v18 + 2];
          goto LABEL_26;
        }

        if (v14 == *(a1 + 36))
        {
LABEL_22:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v13 = *(a1 + 40);
          v14 = *v13;
        }

        *v13 = v14 + 1;
        v15 = google::protobuf::Arena::CreateMaybeMessage<TST::UniqueIndexArchive_UniqueIndexEntryArchive>(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v25;
LABEL_26:
        v11 = sub_221706DCC(a3, v15, v12);
        v25 = v11;
        if (!v11)
        {
          return 0;
        }

        if (*a3 <= v11 || *v11 != 18)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 >> 3 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 48);
      if (!v19)
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = MEMORY[0x223DA0360](v20);
        LODWORD(v19) = v21;
        *(a1 + 48) = v21;
        v5 = v25;
      }

      v10 = sub_2216F813C(a3, v19, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v25 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v25;
}

unsigned __int8 *TST::UniqueIndexArchive::_InternalSerialize(TST::UniqueIndexArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 6);
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

    a2 = TSP::UUID::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 8);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
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

      a2 = TST::UniqueIndexArchive_UniqueIndexEntryArchive::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::UniqueIndexArchive::ByteSizeLong(TSP::UUID **this)
{
  if (this[2])
  {
    v3 = TSP::UUID::ByteSizeLong(this[6]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  v6 = this[5];
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TST::UniqueIndexArchive_UniqueIndexEntryArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TST::UniqueIndexArchive::MergeFrom(TST::UniqueIndexArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::UniqueIndexArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::UniqueIndexArchive::MergeFrom(uint64_t this, const TST::UniqueIndexArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_22167FB00(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 6);
    *(v3 + 16) |= 1u;
    v11 = *(v3 + 48);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x223DA0360](v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277D809E0];
    }

    return TSP::UUID::MergeFrom(v11, v13);
  }

  return this;
}

uint64_t *TST::UniqueIndexArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::UniqueIndexArchive::Clear(this);

    return TST::UniqueIndexArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::UniqueIndexArchive::CopyFrom(uint64_t *this, const TST::UniqueIndexArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::UniqueIndexArchive::Clear(this);

    return TST::UniqueIndexArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::UniqueIndexArchive::IsInitialized(TST::UniqueIndexArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TST::UniqueIndexArchive_UniqueIndexEntryArchive::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if (!IsInitialized)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::UniqueIndexArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v8;
  return result;
}

TSP::UUID *TST::HiddenStateExtentArchive_RowOrColumnState::clear_row_or_column_uid(TST::HiddenStateExtentArchive_RowOrColumnState *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::HiddenStateExtentArchive_RowOrColumnState *TST::HiddenStateExtentArchive_RowOrColumnState::HiddenStateExtentArchive_RowOrColumnState(TST::HiddenStateExtentArchive_RowOrColumnState *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B60A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_HiddenStateExtentArchive_RowOrColumnState_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 31) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B60A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_HiddenStateExtentArchive_RowOrColumnState_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 31) = 0;
  *(this + 3) = 0;
  return this;
}

TST::HiddenStateExtentArchive_RowOrColumnState *TST::HiddenStateExtentArchive_RowOrColumnState::HiddenStateExtentArchive_RowOrColumnState(TST::HiddenStateExtentArchive_RowOrColumnState *this, const TST::HiddenStateExtentArchive_RowOrColumnState *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B60A8;
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
  v7 = *(a2 + 16);
  *(this + 34) = *(a2 + 34);
  *(this + 16) = v7;
  return this;
}

void TST::HiddenStateExtentArchive_RowOrColumnState::~HiddenStateExtentArchive_RowOrColumnState(TST::HiddenStateExtentArchive_RowOrColumnState *this)
{
  if (this != &TST::_HiddenStateExtentArchive_RowOrColumnState_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::HiddenStateExtentArchive_RowOrColumnState::~HiddenStateExtentArchive_RowOrColumnState(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::HiddenStateExtentArchive_RowOrColumnState::default_instance(TST::HiddenStateExtentArchive_RowOrColumnState *this)
{
  if (atomic_load_explicit(scc_info_HiddenStateExtentArchive_RowOrColumnState_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_HiddenStateExtentArchive_RowOrColumnState_default_instance_;
}

uint64_t *TST::HiddenStateExtentArchive_RowOrColumnState::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::UUID::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 26) = 0;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TST::HiddenStateExtentArchive_RowOrColumnState::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v34 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v34) & 1) == 0)
  {
    while (1)
    {
      v7 = (v34 + 1);
      v8 = *v34;
      if ((*v34 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v34, (v9 - 128));
      v34 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_55;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 24)
          {
            goto LABEL_36;
          }

          v5 |= 4u;
          v23 = (v7 + 1);
          v22 = *v7;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if ((v24 & 0x80000000) == 0)
          {
            v23 = (v7 + 2);
LABEL_35:
            v34 = v23;
            *(a1 + 33) = v22 != 0;
            goto LABEL_44;
          }

          v32 = google::protobuf::internal::VarintParseSlow64(v7, v22);
          v34 = v32;
          *(a1 + 33) = v33 != 0;
          if (!v32)
          {
LABEL_55:
            v34 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 4 || v8 != 32)
          {
            goto LABEL_36;
          }

          v5 |= 8u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_24:
            v34 = v16;
            *(a1 + 34) = v15 != 0;
            goto LABEL_44;
          }

          v28 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v34 = v28;
          *(a1 + 34) = v29 != 0;
          if (!v28)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v18 = *(a1 + 24);
            if (!v18)
            {
              v19 = *(a1 + 8);
              if (v19)
              {
                v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
              }

              v20 = MEMORY[0x223DA0360](v19);
              LODWORD(v18) = v20;
              *(a1 + 24) = v20;
              v7 = v34;
            }

            v21 = sub_2216F813C(a3, v18, v7);
          }

          else
          {
LABEL_36:
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
              sub_221567188((a1 + 8));
            }

            v21 = google::protobuf::internal::UnknownFieldParse();
          }

          v34 = v21;
          if (!v21)
          {
            goto LABEL_55;
          }

          goto LABEL_44;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_36;
        }

        v5 |= 2u;
        v13 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_17:
          v34 = v13;
          *(a1 + 32) = v12 != 0;
          goto LABEL_44;
        }

        v30 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v34 = v30;
        *(a1 + 32) = v31 != 0;
        if (!v30)
        {
          goto LABEL_55;
        }
      }

LABEL_44:
      if (sub_221567030(a3, &v34))
      {
        goto LABEL_2;
      }
    }

    v7 = (v34 + 2);
LABEL_6:
    v34 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v34;
}

unsigned __int8 *TST::HiddenStateExtentArchive_RowOrColumnState::_InternalSerialize(TST::HiddenStateExtentArchive_RowOrColumnState *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
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

  v12 = *(this + 32);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 33);
  *a2 = 24;
  a2[1] = v13;
  a2 += 2;
  if ((v5 & 8) != 0)
  {
LABEL_22:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 34);
    *a2 = 32;
    a2[1] = v14;
    a2 += 2;
  }

LABEL_25:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::HiddenStateExtentArchive_RowOrColumnState::ByteSizeLong(TST::HiddenStateExtentArchive_RowOrColumnState *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  v5 = (v2 & 0xE) == 0;
  v6 = v3 + (v2 & 2) + ((v2 >> 1) & 2) + ((v2 >> 2) & 2);
  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v7, this + 20);
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

uint64_t TST::HiddenStateExtentArchive_RowOrColumnState::MergeFrom(TST::HiddenStateExtentArchive_RowOrColumnState *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HiddenStateExtentArchive_RowOrColumnState::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::HiddenStateExtentArchive_RowOrColumnState::MergeFrom(uint64_t this, const TST::HiddenStateExtentArchive_RowOrColumnState *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x223DA0360](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 32);
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
      *(v3 + 34) = *(a2 + 34);
      goto LABEL_9;
    }

LABEL_20:
    *(v3 + 33) = *(a2 + 33);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TST::HiddenStateExtentArchive_RowOrColumnState::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HiddenStateExtentArchive_RowOrColumnState::Clear(this);

    return TST::HiddenStateExtentArchive_RowOrColumnState::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::HiddenStateExtentArchive_RowOrColumnState::CopyFrom(uint64_t *this, const TST::HiddenStateExtentArchive_RowOrColumnState *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HiddenStateExtentArchive_RowOrColumnState::Clear(this);

    return TST::HiddenStateExtentArchive_RowOrColumnState::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::HiddenStateExtentArchive_RowOrColumnState::IsInitialized(TSP::UUID **this)
{
  if (this[2])
  {
    return TSP::UUID::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TST::HiddenStateExtentArchive_RowOrColumnState::InternalSwap(TST::HiddenStateExtentArchive_RowOrColumnState *this, TST::HiddenStateExtentArchive_RowOrColumnState *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOWORD(v6) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v6;
  LOBYTE(v6) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v6;
  return result;
}

TSP::UUID *TST::HiddenStateExtentArchive::clear_hidden_state_extent_uid(TST::HiddenStateExtentArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t *TST::HiddenStateExtentArchive::clear_threshold_value(uint64_t *this)
{
  v1 = *(this + 14);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (this[8] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellValueArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

uint64_t TST::HiddenStateExtentArchive::clear_collapsed_group_uids(uint64_t this)
{
  v1 = *(this + 80);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 88) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 80) = 0;
  }

  return this;
}

TSP::Reference *TST::HiddenStateExtentArchive::clear_filter_set(TST::HiddenStateExtentArchive *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TST::HiddenStateExtentArchive::clear_summary_pivot_hidden_indexes(TST::HiddenStateExtentArchive *this)
{
  result = *(this + 20);
  if (result)
  {
    result = TSCE::IndexSetArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t *TST::HiddenStateExtentArchive::clear_summary_filtered_indexes(TST::HiddenStateExtentArchive *this)
{
  result = *(this + 21);
  if (result)
  {
    result = TSCE::IndexSetArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TST::HiddenStateExtentArchive *TST::HiddenStateExtentArchive::HiddenStateExtentArchive(TST::HiddenStateExtentArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6158;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = a2;
  *(this + 15) = a2;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  if (atomic_load_explicit(scc_info_HiddenStateExtentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 173) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  return this;
}

void sub_221636644(_Unwind_Exception *a1)
{
  sub_22167FBC0(v5);
  sub_22167FC44(v4);
  sub_221567974(v3);
  sub_22167DA48(v2);
  sub_22167FBC0(v1);
  _Unwind_Resume(a1);
}

TST::HiddenStateExtentArchive *TST::HiddenStateExtentArchive::HiddenStateExtentArchive(TST::HiddenStateExtentArchive *this, const TST::HiddenStateExtentArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B6158;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_22167FCC8(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_22167DB8C(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    sub_2215679F8(this + 72, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
    v18 = *(this + 20) + v15;
    *(this + 20) = v18;
    v19 = *(this + 11);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v20 = *(a2 + 26);
  if (v20)
  {
    v21 = *(a2 + 14);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96));
    sub_22167FD88(this + 96, v22, (v21 + 8), v20, **(this + 14) - *(this + 26));
    v23 = *(this + 26) + v20;
    *(this + 26) = v23;
    v24 = *(this + 14);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  v25 = *(a2 + 32);
  if (v25)
  {
    v26 = *(a2 + 17);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 120));
    sub_22167FCC8(this + 120, v27, (v26 + 8), v25, **(this + 17) - *(this + 32));
    v28 = *(this + 32) + v25;
    *(this + 32) = v28;
    v29 = *(this + 17);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 1);
  if (v30)
  {
    sub_22156734C(v4, (v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v31 = *(a2 + 4);
  if (v31)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v31 & 2) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v31 & 4) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  if ((v31 & 8) != 0)
  {
    operator new();
  }

  *(this + 21) = 0;
  v32 = *(a2 + 44);
  *(this + 180) = *(a2 + 180);
  *(this + 44) = v32;
  return this;
}

void sub_221636A18(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v5, 0x10A1C40290C9B23);
  sub_22167FBC0(v6);
  sub_22167FC44(v4);
  sub_221567974(v3);
  sub_22167DA48(v2);
  sub_22167FBC0((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::HiddenStateExtentArchive::~HiddenStateExtentArchive(TST::HiddenStateExtentArchive *this)
{
  sub_221636B40(this);
  sub_2214DFCF8(this + 1);
  sub_22167FBC0(this + 15);
  sub_22167FC44(this + 12);
  sub_221567974(this + 9);
  sub_22167DA48(this + 6);
  sub_22167FBC0(this + 3);
}

{
  TST::HiddenStateExtentArchive::~HiddenStateExtentArchive(this);

  JUMPOUT(0x223DA1450);
}

void *sub_221636B40(void *result)
{
  if (result != &TST::_HiddenStateExtentArchive_default_instance_)
  {
    v1 = result;
    v2 = result[18];
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[19];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[20];
    if (v4)
    {
      TSCE::IndexSetArchive::~IndexSetArchive(v4);
      MEMORY[0x223DA1450]();
    }

    result = v1[21];
    if (result)
    {
      TSCE::IndexSetArchive::~IndexSetArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}