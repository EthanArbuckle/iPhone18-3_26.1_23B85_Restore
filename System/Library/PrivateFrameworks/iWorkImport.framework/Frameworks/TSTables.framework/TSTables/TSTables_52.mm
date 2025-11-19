uint64_t TST::ChangePropagationMapWrapper::ByteSizeLong(TST::ChangePropagationMapWrapper *this)
{
  if ((*(this + 16) & 0x10) != 0)
  {
    v3 = *(this + 56);
    v2 = 11;
    v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v3 >= 0)
    {
      v2 = v4;
    }
  }

  else
  {
    v2 = 0;
  }

  v5 = *(this + 8);
  v6 = v2 + v5;
  v7 = *(this + 5);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = TSP::Reference::ByteSizeLong(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  v12 = *(this + 14);
  v13 = v6 + v12;
  v14 = *(this + 8);
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  if (v12)
  {
    v16 = 8 * v12;
    do
    {
      v17 = *v15++;
      v18 = TSP::Reference::ByteSizeLong(v17);
      v13 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
      v16 -= 8;
    }

    while (v16);
  }

  v19 = *(this + 20);
  v20 = v13 + v19;
  v21 = *(this + 11);
  if (v21)
  {
    v22 = (v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  if (v19)
  {
    v23 = 8 * v19;
    do
    {
      v24 = *v22++;
      v25 = TSP::Reference::ByteSizeLong(v24);
      v20 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6);
      v23 -= 8;
    }

    while (v23);
  }

  v26 = *(this + 26);
  v27 = v20 + v26;
  v28 = *(this + 14);
  if (v28)
  {
    v29 = (v28 + 8);
  }

  else
  {
    v29 = 0;
  }

  if (v26)
  {
    v30 = 8 * v26;
    do
    {
      v31 = *v29++;
      v32 = TSP::Reference::ByteSizeLong(v31);
      v27 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6);
      v30 -= 8;
    }

    while (v30);
  }

  v33 = *(this + 32);
  v34 = v27 + v33;
  v35 = *(this + 17);
  if (v35)
  {
    v36 = (v35 + 8);
  }

  else
  {
    v36 = 0;
  }

  if (v33)
  {
    v37 = 8 * v33;
    do
    {
      v38 = *v36++;
      v39 = TSP::Reference::ByteSizeLong(v38);
      v34 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6);
      v37 -= 8;
    }

    while (v37);
  }

  v40 = *(this + 38);
  v41 = v34 + v40;
  v42 = *(this + 20);
  if (v42)
  {
    v43 = (v42 + 8);
  }

  else
  {
    v43 = 0;
  }

  if (v40)
  {
    v44 = 8 * v40;
    do
    {
      v45 = *v43++;
      v46 = TSP::Reference::ByteSizeLong(v45);
      v41 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6);
      v44 -= 8;
    }

    while (v44);
  }

  v47 = *(this + 44);
  v48 = v41 + v47;
  v49 = *(this + 23);
  if (v49)
  {
    v50 = (v49 + 8);
  }

  else
  {
    v50 = 0;
  }

  if (v47)
  {
    v51 = 8 * v47;
    do
    {
      v52 = *v50++;
      v53 = TSP::Reference::ByteSizeLong(v52);
      v48 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6);
      v51 -= 8;
    }

    while (v51);
  }

  v54 = *(this + 4);
  if ((v54 & 0xF) == 0)
  {
    goto LABEL_53;
  }

  if ((v54 & 1) == 0)
  {
    if ((v54 & 2) == 0)
    {
      goto LABEL_50;
    }

LABEL_56:
    v58 = TSP::Reference::ByteSizeLong(*(this + 25));
    v48 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v54 & 4) == 0)
    {
LABEL_51:
      if ((v54 & 8) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    goto LABEL_57;
  }

  v57 = TSP::Reference::ByteSizeLong(*(this + 24));
  v48 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v54 & 2) != 0)
  {
    goto LABEL_56;
  }

LABEL_50:
  if ((v54 & 4) == 0)
  {
    goto LABEL_51;
  }

LABEL_57:
  v59 = TSP::Reference::ByteSizeLong(*(this + 26));
  v48 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v54 & 8) != 0)
  {
LABEL_52:
    v55 = TSP::Reference::ByteSizeLong(*(this + 27));
    v48 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_53:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v48, this + 20);
  }

  else
  {
    *(this + 5) = v48;
    return v48;
  }
}

uint64_t TST::ChangePropagationMapWrapper::MergeFrom(TST::ChangePropagationMapWrapper *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ChangePropagationMapWrapper::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ChangePropagationMapWrapper::MergeFrom(uint64_t this, const TST::ChangePropagationMapWrapper *a2)
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
    this = sub_221568514(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    this = sub_221568514(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    this = sub_221568514(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 26);
  if (v20)
  {
    v21 = *(a2 + 14);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 96));
    this = sub_221568514(v3 + 96, v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 32);
  if (v25)
  {
    v26 = *(a2 + 17);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 120));
    this = sub_221568514(v3 + 120, v27, (v26 + 8), v25, **(v3 + 136) - *(v3 + 128));
    v28 = *(v3 + 128) + v25;
    *(v3 + 128) = v28;
    v29 = *(v3 + 136);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 38);
  if (v30)
  {
    v31 = *(a2 + 20);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 144));
    this = sub_221568514(v3 + 144, v32, (v31 + 8), v30, **(v3 + 160) - *(v3 + 152));
    v33 = *(v3 + 152) + v30;
    *(v3 + 152) = v33;
    v34 = *(v3 + 160);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 44);
  if (v35)
  {
    v36 = *(a2 + 23);
    v37 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 168));
    this = sub_221568514(v3 + 168, v37, (v36 + 8), v35, **(v3 + 184) - *(v3 + 176));
    v38 = *(v3 + 176) + v35;
    *(v3 + 176) = v38;
    v39 = *(v3 + 184);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  v40 = *(a2 + 4);
  if ((v40 & 0x1F) != 0)
  {
    v41 = MEMORY[0x277D80A18];
    if (v40)
    {
      *(v3 + 16) |= 1u;
      v42 = *(v3 + 192);
      if (!v42)
      {
        v43 = *(v3 + 8);
        if (v43)
        {
          v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
        }

        v42 = MEMORY[0x223DA0390](v43);
        *(v3 + 192) = v42;
      }

      if (*(a2 + 24))
      {
        v44 = *(a2 + 24);
      }

      else
      {
        v44 = v41;
      }

      this = TSP::Reference::MergeFrom(v42, v44);
      if ((v40 & 2) == 0)
      {
LABEL_27:
        if ((v40 & 4) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_49;
      }
    }

    else if ((v40 & 2) == 0)
    {
      goto LABEL_27;
    }

    *(v3 + 16) |= 2u;
    v45 = *(v3 + 200);
    if (!v45)
    {
      v46 = *(v3 + 8);
      if (v46)
      {
        v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
      }

      v45 = MEMORY[0x223DA0390](v46);
      *(v3 + 200) = v45;
    }

    if (*(a2 + 25))
    {
      v47 = *(a2 + 25);
    }

    else
    {
      v47 = v41;
    }

    this = TSP::Reference::MergeFrom(v45, v47);
    if ((v40 & 4) == 0)
    {
LABEL_28:
      if ((v40 & 8) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_57;
    }

LABEL_49:
    *(v3 + 16) |= 4u;
    v48 = *(v3 + 208);
    if (!v48)
    {
      v49 = *(v3 + 8);
      if (v49)
      {
        v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
      }

      v48 = MEMORY[0x223DA0390](v49);
      *(v3 + 208) = v48;
    }

    if (*(a2 + 26))
    {
      v50 = *(a2 + 26);
    }

    else
    {
      v50 = v41;
    }

    this = TSP::Reference::MergeFrom(v48, v50);
    if ((v40 & 8) == 0)
    {
LABEL_29:
      if ((v40 & 0x10) == 0)
      {
LABEL_31:
        *(v3 + 16) |= v40;
        return this;
      }

LABEL_30:
      *(v3 + 224) = *(a2 + 56);
      goto LABEL_31;
    }

LABEL_57:
    *(v3 + 16) |= 8u;
    v51 = *(v3 + 216);
    if (!v51)
    {
      v52 = *(v3 + 8);
      if (v52)
      {
        v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
      }

      v51 = MEMORY[0x223DA0390](v52);
      *(v3 + 216) = v51;
    }

    if (*(a2 + 27))
    {
      v53 = *(a2 + 27);
    }

    else
    {
      v53 = v41;
    }

    this = TSP::Reference::MergeFrom(v51, v53);
    if ((v40 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return this;
}

uint64_t *TST::ChangePropagationMapWrapper::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ChangePropagationMapWrapper::Clear(this);

    return TST::ChangePropagationMapWrapper::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::ChangePropagationMapWrapper::CopyFrom(uint64_t *this, const TST::ChangePropagationMapWrapper *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ChangePropagationMapWrapper::Clear(this);

    return TST::ChangePropagationMapWrapper::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::ChangePropagationMapWrapper::IsInitialized(TST::ChangePropagationMapWrapper *this)
{
  if ((*(this + 16) & 0x10) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 14);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::Reference::IsInitialized(*(*(this + 8) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(this + 20);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = TSP::Reference::IsInitialized(*(*(this + 11) + 8 * v9));
    v9 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(this + 26);
  while (v12 >= 1)
  {
    v13 = v12 - 1;
    v14 = TSP::Reference::IsInitialized(*(*(this + 14) + 8 * v12));
    v12 = v13;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(this + 32);
  while (v15 >= 1)
  {
    v16 = v15 - 1;
    v17 = TSP::Reference::IsInitialized(*(*(this + 17) + 8 * v15));
    result = 0;
    v15 = v16;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v18 = *(this + 38);
  while (v18 >= 1)
  {
    v19 = v18 - 1;
    v20 = TSP::Reference::IsInitialized(*(*(this + 20) + 8 * v18));
    result = 0;
    v18 = v19;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  v21 = *(this + 44);
  while (v21 >= 1)
  {
    v22 = v21 - 1;
    v23 = TSP::Reference::IsInitialized(*(*(this + 23) + 8 * v21));
    result = 0;
    v21 = v22;
    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  v24 = *(this + 4);
  if (v24)
  {
    result = TSP::Reference::IsInitialized(*(this + 24));
    if (!result)
    {
      return result;
    }

    v24 = *(this + 4);
  }

  if ((v24 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 25));
    if (!result)
    {
      return result;
    }

    v24 = *(this + 4);
  }

  if ((v24 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 26));
    if (!result)
    {
      return result;
    }

    v24 = *(this + 4);
  }

  if ((v24 & 8) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 27));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::ChangePropagationMapWrapper::InternalSwap(TST::ChangePropagationMapWrapper *this, TST::ChangePropagationMapWrapper *a2)
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
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 10);
  v10 = *(this + 11);
  *(this + 5) = *(a2 + 5);
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v11 = *(this + 13);
  v12 = *(this + 14);
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v11;
  *(a2 + 14) = v12;
  v13 = *(this + 16);
  v14 = *(this + 17);
  *(this + 8) = *(a2 + 8);
  *(a2 + 16) = v13;
  *(a2 + 17) = v14;
  v15 = *(this + 19);
  v16 = *(this + 20);
  *(this + 152) = *(a2 + 152);
  *(a2 + 19) = v15;
  *(a2 + 20) = v16;
  v17 = *(this + 22);
  v18 = *(this + 23);
  *(this + 11) = *(a2 + 11);
  *(a2 + 22) = v17;
  *(a2 + 23) = v18;
  v19 = *(this + 24);
  v20 = *(this + 25);
  *(this + 12) = *(a2 + 12);
  *(a2 + 24) = v19;
  *(a2 + 25) = v20;
  v21 = *(this + 26);
  v22 = *(this + 27);
  result = *(a2 + 13);
  *(this + 13) = result;
  *(a2 + 26) = v21;
  *(a2 + 27) = v22;
  LODWORD(v21) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v21;
  return result;
}

TSP::UUID *TST::SummaryCellVendorArchive_SummaryCellEntry::clear_wildcarduid(TST::SummaryCellVendorArchive_SummaryCellEntry *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUID *TST::SummaryCellVendorArchive_SummaryCellEntry::clear_columnuid(TST::SummaryCellVendorArchive_SummaryCellEntry *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::SummaryCellVendorArchive_SummaryCellEntry *TST::SummaryCellVendorArchive_SummaryCellEntry::SummaryCellVendorArchive_SummaryCellEntry(TST::SummaryCellVendorArchive_SummaryCellEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B87D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SummaryCellVendorArchive_SummaryCellEntry_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2834B87D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SummaryCellVendorArchive_SummaryCellEntry_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TST::SummaryCellVendorArchive_SummaryCellEntry *TST::SummaryCellVendorArchive_SummaryCellEntry::SummaryCellVendorArchive_SummaryCellEntry(TST::SummaryCellVendorArchive_SummaryCellEntry *this, const TST::SummaryCellVendorArchive_SummaryCellEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B87D8;
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

void TST::SummaryCellVendorArchive_SummaryCellEntry::~SummaryCellVendorArchive_SummaryCellEntry(TST::SummaryCellVendorArchive_SummaryCellEntry *this)
{
  if (this != &TST::_SummaryCellVendorArchive_SummaryCellEntry_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TST::Cell::~Cell(v4);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::SummaryCellVendorArchive_SummaryCellEntry::~SummaryCellVendorArchive_SummaryCellEntry(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::SummaryCellVendorArchive_SummaryCellEntry::default_instance(TST::SummaryCellVendorArchive_SummaryCellEntry *this)
{
  if (atomic_load_explicit(scc_info_SummaryCellVendorArchive_SummaryCellEntry_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_SummaryCellVendorArchive_SummaryCellEntry_default_instance_;
}

uint64_t *TST::SummaryCellVendorArchive_SummaryCellEntry::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSP::UUID::Clear(this[3]);
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

    this = TSP::UUID::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TST::Cell::Clear(*(v1 + 40));
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

google::protobuf::internal *TST::SummaryCellVendorArchive_SummaryCellEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
    if (v6 >> 3 != 3)
    {
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

          v14 = MEMORY[0x223DA0360](v13);
          LODWORD(v12) = v14;
          *(a1 + 32) = v14;
LABEL_35:
          v5 = v22;
        }
      }

      else
      {
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
        v12 = *(a1 + 24);
        if (!v12)
        {
          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x223DA0360](v17);
          LODWORD(v12) = v18;
          *(a1 + 24) = v18;
          goto LABEL_35;
        }
      }

      v11 = sub_2216F813C(a3, v12, v5);
      goto LABEL_37;
    }

    if (v6 != 26)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 4u;
    v15 = *(a1 + 40);
    if (!v15)
    {
      v16 = *(a1 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v16);
      *(a1 + 40) = v15;
      v5 = v22;
    }

    v11 = sub_221705678(a3, v15, v5);
LABEL_37:
    v22 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v22;
}

unsigned __int8 *TST::SummaryCellVendorArchive_SummaryCellEntry::_InternalSerialize(TST::SummaryCellVendorArchive_SummaryCellEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  a2 = TSP::UUID::_InternalSerialize(v12, v14, a3);
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

    a2 = TST::Cell::_InternalSerialize(v18, v20, a3);
  }

LABEL_35:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::SummaryCellVendorArchive_SummaryCellEntry::RequiredFieldsByteSizeFallback(TST::SummaryCellVendorArchive_SummaryCellEntry *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
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
    v5 = TSP::UUID::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = TST::Cell::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

unint64_t TST::SummaryCellVendorArchive_SummaryCellEntry::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v5 = TST::SummaryCellVendorArchive_SummaryCellEntry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[3]);
    v3 = TSP::UUID::ByteSizeLong(this[4]);
    v4 = TST::Cell::ByteSizeLong(this[5]);
    v5 = v2 + v3 + v4 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3;
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

uint64_t TST::SummaryCellVendorArchive_SummaryCellEntry::MergeFrom(TST::SummaryCellVendorArchive_SummaryCellEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::SummaryCellVendorArchive_SummaryCellEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::SummaryCellVendorArchive_SummaryCellEntry::MergeFrom(uint64_t this, const TST::SummaryCellVendorArchive_SummaryCellEntry *a2)
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
    v6 = MEMORY[0x277D809E0];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x223DA0360](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = v6;
      }

      this = TSP::UUID::MergeFrom(v7, v9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return this;
        }

        goto LABEL_24;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v10 = *(v3 + 32);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x223DA0360](v11);
      *(v3 + 32) = v10;
    }

    if (*(a2 + 4))
    {
      v12 = *(a2 + 4);
    }

    else
    {
      v12 = v6;
    }

    this = TSP::UUID::MergeFrom(v10, v12);
    if ((v5 & 4) != 0)
    {
LABEL_24:
      *(v3 + 16) |= 4u;
      v13 = *(v3 + 40);
      if (!v13)
      {
        v14 = *(v3 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v14);
        *(v3 + 40) = v13;
      }

      if (*(a2 + 5))
      {
        v15 = *(a2 + 5);
      }

      else
      {
        v15 = &TST::_Cell_default_instance_;
      }

      return TST::Cell::MergeFrom(v13, v15);
    }
  }

  return this;
}

uint64_t *TST::SummaryCellVendorArchive_SummaryCellEntry::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SummaryCellVendorArchive_SummaryCellEntry::Clear(this);

    return TST::SummaryCellVendorArchive_SummaryCellEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::SummaryCellVendorArchive_SummaryCellEntry::CopyFrom(uint64_t *this, const TST::SummaryCellVendorArchive_SummaryCellEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SummaryCellVendorArchive_SummaryCellEntry::Clear(this);

    return TST::SummaryCellVendorArchive_SummaryCellEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::SummaryCellVendorArchive_SummaryCellEntry::IsInitialized(TST::SummaryCellVendorArchive_SummaryCellEntry *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    return 0;
  }

  result = TSP::UUID::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 4));
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

    result = TST::Cell::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::SummaryCellVendorArchive_SummaryCellEntry::InternalSwap(TST::SummaryCellVendorArchive_SummaryCellEntry *this, TST::SummaryCellVendorArchive_SummaryCellEntry *a2)
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

TSP::Reference *TST::SummaryCellVendorArchive::clear_table_info(TST::SummaryCellVendorArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::SummaryCellVendorArchive *TST::SummaryCellVendorArchive::SummaryCellVendorArchive(TST::SummaryCellVendorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8888;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_SummaryCellVendorArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TST::SummaryCellVendorArchive *TST::SummaryCellVendorArchive::SummaryCellVendorArchive(TST::SummaryCellVendorArchive *this, const TST::SummaryCellVendorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8888;
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
    sub_221680F40(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void sub_22166D2EC(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C407D3F2757);
  sub_221680EBC((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::SummaryCellVendorArchive::~SummaryCellVendorArchive(TST::SummaryCellVendorArchive *this)
{
  if (this != &TST::_SummaryCellVendorArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_221680EBC(this + 3);
}

{
  TST::SummaryCellVendorArchive::~SummaryCellVendorArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::SummaryCellVendorArchive::default_instance(TST::SummaryCellVendorArchive *this)
{
  if (atomic_load_explicit(scc_info_SummaryCellVendorArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_SummaryCellVendorArchive_default_instance_;
}

uint64_t *TST::SummaryCellVendorArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::SummaryCellVendorArchive_SummaryCellEntry::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::Reference::Clear(*(v1 + 48));
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

google::protobuf::internal *TST::SummaryCellVendorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        v15 = google::protobuf::Arena::CreateMaybeMessage<TST::SummaryCellVendorArchive_SummaryCellEntry>(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v25;
LABEL_26:
        v11 = sub_2217082EC(a3, v15, v12);
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

        v21 = MEMORY[0x223DA0390](v20);
        LODWORD(v19) = v21;
        *(a1 + 48) = v21;
        v5 = v25;
      }

      v10 = sub_22170B7F8(a3, v19, v5);
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

unsigned __int8 *TST::SummaryCellVendorArchive::_InternalSerialize(TST::SummaryCellVendorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
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

      a2 = TST::SummaryCellVendorArchive_SummaryCellEntry::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::SummaryCellVendorArchive::ByteSizeLong(TSP::Reference **this)
{
  if (this[2])
  {
    v3 = TSP::Reference::ByteSizeLong(this[6]);
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
      v10 = TST::SummaryCellVendorArchive_SummaryCellEntry::ByteSizeLong(v9);
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

uint64_t TST::SummaryCellVendorArchive::MergeFrom(TST::SummaryCellVendorArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::SummaryCellVendorArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::SummaryCellVendorArchive::MergeFrom(uint64_t this, const TST::SummaryCellVendorArchive *a2)
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
    this = sub_221680F40(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

      v11 = MEMORY[0x223DA0390](v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v11, v13);
  }

  return this;
}

uint64_t *TST::SummaryCellVendorArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SummaryCellVendorArchive::Clear(this);

    return TST::SummaryCellVendorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::SummaryCellVendorArchive::CopyFrom(uint64_t *this, const TST::SummaryCellVendorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SummaryCellVendorArchive::Clear(this);

    return TST::SummaryCellVendorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::SummaryCellVendorArchive::IsInitialized(TST::SummaryCellVendorArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TST::SummaryCellVendorArchive_SummaryCellEntry::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::SummaryCellVendorArchive::InternalSwap(__n128 *this, __n128 *a2)
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

TSP::Reference *TST::CategoryOrderArchive::clear_table_info(TST::CategoryOrderArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TST::CategoryOrderArchive::clear_uid_map(TST::CategoryOrderArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::CategoryOrderArchive *TST::CategoryOrderArchive::CategoryOrderArchive(TST::CategoryOrderArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8938;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CategoryOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834B8938;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CategoryOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TST::CategoryOrderArchive *TST::CategoryOrderArchive::CategoryOrderArchive(TST::CategoryOrderArchive *this, const TST::CategoryOrderArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8938;
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
  return this;
}

void TST::CategoryOrderArchive::~CategoryOrderArchive(TST::CategoryOrderArchive *this)
{
  if (this != TST::_CategoryOrderArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::CategoryOrderArchive::~CategoryOrderArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::CategoryOrderArchive::default_instance(TST::CategoryOrderArchive *this)
{
  if (atomic_load_explicit(scc_info_CategoryOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CategoryOrderArchive_default_instance_;
}

uint64_t *TST::CategoryOrderArchive::Clear(uint64_t *this)
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
      this = TSP::Reference::Clear(*(v1 + 32));
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

google::protobuf::internal *TST::CategoryOrderArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  while ((sub_221567030(a3, &v19) & 1) == 0)
  {
    v5 = (v19 + 1);
    v6 = *v19;
    if ((*v19 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v19 + 2);
LABEL_6:
      v19 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v7 - 128));
    v19 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v17;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      *(a1 + 16) |= 2u;
      v11 = *(a1 + 32);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x223DA0390](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        goto LABEL_28;
      }
    }

    else
    {
      if (v6 >> 3 != 1 || v6 != 10)
      {
LABEL_12:
        if (v6)
        {
          v9 = (v6 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v6 - 1;
          return v19;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x223DA0390](v14);
        LODWORD(v11) = v15;
        *(a1 + 24) = v15;
LABEL_28:
        v5 = v19;
      }
    }

    v10 = sub_22170B7F8(a3, v11, v5);
LABEL_30:
    v19 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v19;
}

unsigned __int8 *TST::CategoryOrderArchive::_InternalSerialize(TST::CategoryOrderArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
  }

  if ((v5 & 2) != 0)
  {
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
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::CategoryOrderArchive::RequiredFieldsByteSizeFallback(TST::CategoryOrderArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSP::Reference::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::CategoryOrderArchive::ByteSizeLong(TSP::Reference **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TST::CategoryOrderArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(this[3]);
    v3 = TSP::Reference::ByteSizeLong(this[4]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

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

uint64_t TST::CategoryOrderArchive::MergeFrom(TST::CategoryOrderArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CategoryOrderArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CategoryOrderArchive::MergeFrom(uint64_t this, const TST::CategoryOrderArchive *a2)
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
    v6 = MEMORY[0x277D80A18];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x223DA0390](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = v6;
      }

      this = TSP::Reference::MergeFrom(v7, v9);
    }

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
        v12 = v6;
      }

      return TSP::Reference::MergeFrom(v10, v12);
    }
  }

  return this;
}

uint64_t *TST::CategoryOrderArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CategoryOrderArchive::Clear(this);

    return TST::CategoryOrderArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CategoryOrderArchive::CopyFrom(uint64_t *this, const TST::CategoryOrderArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CategoryOrderArchive::Clear(this);

    return TST::CategoryOrderArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::CategoryOrderArchive::IsInitialized(TST::CategoryOrderArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  result = TSP::Reference::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::CategoryOrderArchive::InternalSwap(TST::CategoryOrderArchive *this, TST::CategoryOrderArchive *a2)
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

TSP::Reference *TST::PivotOrderArchive::clear_uid_map(TST::PivotOrderArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::PivotOrderArchive *TST::PivotOrderArchive::PivotOrderArchive(TST::PivotOrderArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B89E8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PivotOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B89E8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PivotOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::PivotOrderArchive *TST::PivotOrderArchive::PivotOrderArchive(TST::PivotOrderArchive *this, const TST::PivotOrderArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B89E8;
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
  return this;
}

void TST::PivotOrderArchive::~PivotOrderArchive(TST::PivotOrderArchive *this)
{
  if (this != TST::_PivotOrderArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::PivotOrderArchive::~PivotOrderArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::PivotOrderArchive::default_instance(TST::PivotOrderArchive *this)
{
  if (atomic_load_explicit(scc_info_PivotOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_PivotOrderArchive_default_instance_;
}

uint64_t *TST::PivotOrderArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Reference::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TST::PivotOrderArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_221567030(a3, &v16) & 1) == 0)
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

        v12 = MEMORY[0x223DA0390](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_22170B7F8(a3, v10, v5);
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
        sub_221567188((a1 + 8));
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

unsigned __int8 *TST::PivotOrderArchive::_InternalSerialize(TST::PivotOrderArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
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

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::PivotOrderArchive::ByteSizeLong(TSP::Reference **this)
{
  if (this[2])
  {
    v3 = TSP::Reference::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TST::PivotOrderArchive::MergeFrom(TST::PivotOrderArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::PivotOrderArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::PivotOrderArchive::MergeFrom(uint64_t this, const TST::PivotOrderArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x223DA0390](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TST::PivotOrderArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PivotOrderArchive::Clear(this);

    return TST::PivotOrderArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::PivotOrderArchive::CopyFrom(uint64_t *this, const TST::PivotOrderArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PivotOrderArchive::Clear(this);

    return TST::PivotOrderArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::PivotOrderArchive::IsInitialized(TST::PivotOrderArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TST::PivotOrderArchive::InternalSwap(TST::PivotOrderArchive *this, TST::PivotOrderArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t *TST::HeaderNameMgrTileArchive_NameFragmentArchive::clear_name_precedent(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TST::HeaderNameMgrTileArchive_NameFragmentArchive::clear_uses_of_name_fragment(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSCE::UidCellRefSetArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TST::HeaderNameMgrTileArchive_NameFragmentArchive *TST::HeaderNameMgrTileArchive_NameFragmentArchive::HeaderNameMgrTileArchive_NameFragmentArchive(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8A98;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_HeaderNameMgrTileArchive_NameFragmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  return this;
}

TST::HeaderNameMgrTileArchive_NameFragmentArchive *TST::HeaderNameMgrTileArchive_NameFragmentArchive::HeaderNameMgrTileArchive_NameFragmentArchive(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this, const TST::HeaderNameMgrTileArchive_NameFragmentArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B8A98;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  if ((v4 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v4 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  return this;
}

void TST::HeaderNameMgrTileArchive_NameFragmentArchive::~HeaderNameMgrTileArchive_NameFragmentArchive(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  if (this != &TST::_HeaderNameMgrTileArchive_NameFragmentArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSCE::UidCellRefSetArchive::~UidCellRefSetArchive(v4);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::HeaderNameMgrTileArchive_NameFragmentArchive::~HeaderNameMgrTileArchive_NameFragmentArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::HeaderNameMgrTileArchive_NameFragmentArchive::default_instance(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this)
{
  if (atomic_load_explicit(scc_info_HeaderNameMgrTileArchive_NameFragmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_HeaderNameMgrTileArchive_NameFragmentArchive_default_instance_;
}

uint64_t *TST::HeaderNameMgrTileArchive_NameFragmentArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  this = TSCE::CellCoordinateArchive::Clear(this[4]);
  if ((v2 & 4) != 0)
  {
LABEL_5:
    this = TSCE::UidCellRefSetArchive::Clear(*(v1 + 40));
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

google::protobuf::internal *TST::HeaderNameMgrTileArchive_NameFragmentArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  while ((sub_221567030(a3, &v19) & 1) == 0)
  {
    v5 = (v19 + 1);
    v6 = *v19;
    if ((*v19 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v19 + 2);
LABEL_6:
      v19 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v7 - 128));
    v19 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v17;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
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

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidCellRefSetArchive>(v15);
        *(a1 + 40) = v14;
        v5 = v19;
      }

      v11 = sub_2217083BC(a3, v14, v5);
    }

    else if (v8 == 2)
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

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v13);
        *(a1 + 32) = v12;
        v5 = v19;
      }

      v11 = sub_2216F806C(a3, v12, v5);
    }

    else
    {
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
          return v19;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v11 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_33;
      }

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v11 = google::protobuf::internal::InlineGreedyStringParser();
    }

LABEL_33:
    v19 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v19;
}

unsigned __int8 *TST::HeaderNameMgrTileArchive_NameFragmentArchive::_InternalSerialize(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_22150C00C(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 4);
  *v4 = 18;
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

  v4 = TSCE::CellCoordinateArchive::_InternalSerialize(v7, v9, a3);
  if ((v6 & 4) != 0)
  {
LABEL_16:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 5);
    *v4 = 26;
    v14 = *(v13 + 10);
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

    v4 = TSCE::UidCellRefSetArchive::_InternalSerialize(v13, v15, a3);
  }

LABEL_26:
  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::HeaderNameMgrTileArchive_NameFragmentArchive::RequiredFieldsByteSizeFallback(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v6 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 4));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TST::HeaderNameMgrTileArchive_NameFragmentArchive::ByteSizeLong(TSCE::UidCellRefSetArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v8 = TST::HeaderNameMgrTileArchive_NameFragmentArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = this[4];
    v3 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = TSCE::CellCoordinateArchive::ByteSizeLong(v2);
    v8 = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((this[2] & 4) != 0)
  {
    v9 = TSCE::UidCellRefSetArchive::ByteSizeLong(this[5]);
    v8 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v8, this + 20);
  }

  else
  {
    *(this + 5) = v8;
    return v8;
  }
}

uint64_t TST::HeaderNameMgrTileArchive_NameFragmentArchive::MergeFrom(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HeaderNameMgrTileArchive_NameFragmentArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::HeaderNameMgrTileArchive_NameFragmentArchive::MergeFrom(uint64_t this, const TST::HeaderNameMgrTileArchive_NameFragmentArchive *a2)
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return this;
        }

        goto LABEL_17;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = &TSCE::_CellCoordinateArchive_default_instance_;
    }

    this = TSCE::CellCoordinateArchive::MergeFrom(v6, v8);
    if ((v5 & 4) != 0)
    {
LABEL_17:
      *(v3 + 16) |= 4u;
      v9 = *(v3 + 40);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidCellRefSetArchive>(v10);
        *(v3 + 40) = v9;
      }

      if (*(a2 + 5))
      {
        v11 = *(a2 + 5);
      }

      else
      {
        v11 = &TSCE::_UidCellRefSetArchive_default_instance_;
      }

      return TSCE::UidCellRefSetArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TST::HeaderNameMgrTileArchive_NameFragmentArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderNameMgrTileArchive_NameFragmentArchive::Clear(this);

    return TST::HeaderNameMgrTileArchive_NameFragmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::HeaderNameMgrTileArchive_NameFragmentArchive::CopyFrom(uint64_t *this, const TST::HeaderNameMgrTileArchive_NameFragmentArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderNameMgrTileArchive_NameFragmentArchive::Clear(this);

    return TST::HeaderNameMgrTileArchive_NameFragmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::HeaderNameMgrTileArchive_NameFragmentArchive::IsInitialized(TST::HeaderNameMgrTileArchive_NameFragmentArchive *this)
{
  v1 = *(this + 4);
  if ((~v1 & 3) != 0)
  {
    return 0;
  }

  if ((v1 & 4) == 0)
  {
    return 1;
  }

  result = TSCE::UidCellRefSetArchive::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::HeaderNameMgrTileArchive_NameFragmentArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[1].n128_u64[1];
  this[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v5;
  v6 = this[2].n128_u64[0];
  v7 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u64[1] = v7;
  return result;
}

TST::HeaderNameMgrTileArchive *TST::HeaderNameMgrTileArchive::HeaderNameMgrTileArchive(TST::HeaderNameMgrTileArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8B48;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_HeaderNameMgrTileArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 6) = MEMORY[0x277D80A90];
  *(this + 7) = v3;
  return this;
}

TST::HeaderNameMgrTileArchive *TST::HeaderNameMgrTileArchive::HeaderNameMgrTileArchive(TST::HeaderNameMgrTileArchive *this, const TST::HeaderNameMgrTileArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8B48;
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
    sub_221681084(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  v11 = MEMORY[0x277D80A90];
  *(this + 6) = MEMORY[0x277D80A90];
  v12 = *(a2 + 4);
  if (v12)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v12 = *(a2 + 4);
  }

  *(this + 7) = v11;
  if ((v12 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  return this;
}

void TST::HeaderNameMgrTileArchive::~HeaderNameMgrTileArchive(TST::HeaderNameMgrTileArchive *this)
{
  v2 = *(this + 6);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 7);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x223DA1450](v4, 0x1012C40EC159624);
  }

  sub_2214DFCF8(this + 1);
  sub_221681000(this + 3);
}

{
  TST::HeaderNameMgrTileArchive::~HeaderNameMgrTileArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::HeaderNameMgrTileArchive::default_instance(TST::HeaderNameMgrTileArchive *this)
{
  if (atomic_load_explicit(scc_info_HeaderNameMgrTileArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_HeaderNameMgrTileArchive_default_instance_;
}

uint64_t *TST::HeaderNameMgrTileArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::HeaderNameMgrTileArchive_NameFragmentArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v5 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      *v6 = 0;
      *(v6 + 23) = 0;
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_10:
    v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_15:
  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_221567398(v8);
  }

  return this;
}

google::protobuf::internal *TST::HeaderNameMgrTileArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      break;
    }

    if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
    }

    else
    {
      if (v8 != 1 || v6 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
    }

    google::protobuf::internal::ArenaStringPtr::Mutable();
    v11 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_37:
    v23 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  if (v6 == 26)
  {
    v12 = (v5 - 1);
    while (1)
    {
      v13 = (v12 + 1);
      v23 = (v12 + 1);
      v14 = *(a1 + 40);
      if (!v14)
      {
        goto LABEL_25;
      }

      v19 = *(a1 + 32);
      v15 = *v14;
      if (v19 < *v14)
      {
        *(a1 + 32) = v19 + 1;
        v16 = *&v14[2 * v19 + 2];
        goto LABEL_29;
      }

      if (v15 == *(a1 + 36))
      {
LABEL_25:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v14 = *(a1 + 40);
        v15 = *v14;
      }

      *v14 = v15 + 1;
      v16 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderNameMgrTileArchive_NameFragmentArchive>(*(a1 + 24));
      v17 = *(a1 + 32);
      v18 = *(a1 + 40) + 8 * v17;
      *(a1 + 32) = v17 + 1;
      *(v18 + 8) = v16;
      v13 = v23;
LABEL_29:
      v12 = sub_22170848C(a3, v16, v13);
      v23 = v12;
      if (!v12)
      {
        return 0;
      }

      if (*a3 <= v12 || *v12 != 26)
      {
        goto LABEL_2;
      }
    }
  }

LABEL_13:
  if (v6)
  {
    v10 = (v6 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_37;
  }

  *(a3 + 80) = v6 - 1;
  return v23;
}

unsigned __int8 *TST::HeaderNameMgrTileArchive::_InternalSerialize(TST::HeaderNameMgrTileArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_22150C00C(a3, 1, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_22150C00C(a3, 2, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = *(*(this + 5) + 8 * i + 8);
      *v4 = 26;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        v4[1] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 3;
          do
          {
            *(v11 - 1) = v12 | 0x80;
            v13 = v12 >> 7;
            ++v11;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
          *(v11 - 1) = v13;
        }

        else
        {
          v4[2] = v12;
          v11 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v10;
        v11 = v4 + 2;
      }

      v4 = TST::HeaderNameMgrTileArchive_NameFragmentArchive::_InternalSerialize(v9, v11, a3);
    }
  }

  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::HeaderNameMgrTileArchive::RequiredFieldsByteSizeFallback(TST::HeaderNameMgrTileArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v6 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TST::HeaderNameMgrTileArchive::ByteSizeLong(TST::HeaderNameMgrTileArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v9 = TST::HeaderNameMgrTileArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v9 = v4 + v8 + v5 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v10 = *(this + 8);
  v11 = v9 + v10;
  v12 = *(this + 5);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = TST::HeaderNameMgrTileArchive_NameFragmentArchive::ByteSizeLong(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v11, this + 20);
  }

  else
  {
    *(this + 5) = v11;
    return v11;
  }
}

uint64_t TST::HeaderNameMgrTileArchive::MergeFrom(TST::HeaderNameMgrTileArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HeaderNameMgrTileArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::HeaderNameMgrTileArchive::MergeFrom(uint64_t this, const TST::HeaderNameMgrTileArchive *a2)
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
    this = sub_221681084(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;

      return google::protobuf::internal::ArenaStringPtr::Set();
    }
  }

  return this;
}

uint64_t *TST::HeaderNameMgrTileArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderNameMgrTileArchive::Clear(this);

    return TST::HeaderNameMgrTileArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::HeaderNameMgrTileArchive::CopyFrom(uint64_t *this, const TST::HeaderNameMgrTileArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderNameMgrTileArchive::Clear(this);

    return TST::HeaderNameMgrTileArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL sub_221670A24(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    v4 = *(v3 + 16);
    if ((~v4 & 3) != 0)
    {
      break;
    }

    if ((v4 & 4) != 0)
    {
      result = TSCE::UidCellRefSetArchive::IsInitialized(*(v3 + 40));
      if (!result)
      {
        return result;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return 0;
}

__n128 TST::HeaderNameMgrTileArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  v9 = this[3].n128_u64[1];
  this[3].n128_u64[1] = a2[3].n128_u64[1];
  a2[3].n128_u64[1] = v9;
  return result;
}

TSP::UUID *TST::HeaderNameMgrArchive_PerTableArchive::clear_table_uid(TST::HeaderNameMgrArchive_PerTableArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t *TST::HeaderNameMgrArchive_PerTableArchive::clear_per_table_precedent(TST::HeaderNameMgrArchive_PerTableArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::clear_header_row_uids(uint64_t this)
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

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::clear_header_column_uids(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 64) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::clear_update_header_row_uids(uint64_t this)
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

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::clear_update_header_column_uids(uint64_t this)
{
  v1 = *(this + 104);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 112) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 104) = 0;
  }

  return this;
}

TST::HeaderNameMgrArchive_PerTableArchive *TST::HeaderNameMgrArchive_PerTableArchive::HeaderNameMgrArchive_PerTableArchive(TST::HeaderNameMgrArchive_PerTableArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8BF8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 12) = a2;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  if (atomic_load_explicit(scc_info_HeaderNameMgrArchive_PerTableArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 136) = 0;
  return this;
}

void sub_221670DB4(_Unwind_Exception *a1)
{
  sub_221567974(v4);
  sub_221567974(v3);
  sub_221567974(v2);
  sub_221567974(v1);
  _Unwind_Resume(a1);
}

TST::HeaderNameMgrArchive_PerTableArchive *TST::HeaderNameMgrArchive_PerTableArchive::HeaderNameMgrArchive_PerTableArchive(TST::HeaderNameMgrArchive_PerTableArchive *this, const TST::HeaderNameMgrArchive_PerTableArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8BF8;
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

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_2215679F8(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_2215679F8(this + 96, v22, (v21 + 8), v20, **(this + 14) - *(this + 26));
    v23 = *(this + 26) + v20;
    *(this + 26) = v23;
    v24 = *(this + 14);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 1);
  if (v25)
  {
    sub_22156734C(v4, (v25 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v26 = *(a2 + 4);
  if (v26)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v26 & 2) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  *(this + 136) = *(a2 + 136);
  return this;
}

void sub_221671094(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v4, 0x1081C40B7564605);
  sub_221567974(v5);
  sub_221567974(v3);
  sub_221567974(v2);
  sub_221567974((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::HeaderNameMgrArchive_PerTableArchive::~HeaderNameMgrArchive_PerTableArchive(TST::HeaderNameMgrArchive_PerTableArchive *this)
{
  if (this != &TST::_HeaderNameMgrArchive_PerTableArchive_default_instance_)
  {
    v2 = *(this + 15);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 16);
    if (v3)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_221567974(this + 12);
  sub_221567974(this + 9);
  sub_221567974(this + 6);
  sub_221567974(this + 3);
}

{
  TST::HeaderNameMgrArchive_PerTableArchive::~HeaderNameMgrArchive_PerTableArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::HeaderNameMgrArchive_PerTableArchive::default_instance(TST::HeaderNameMgrArchive_PerTableArchive *this)
{
  if (atomic_load_explicit(scc_info_HeaderNameMgrArchive_PerTableArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_HeaderNameMgrArchive_PerTableArchive_default_instance_;
}

uint64_t *TST::HeaderNameMgrArchive_PerTableArchive::Clear(uint64_t *this)
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

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::UUID::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      this = TSP::UUID::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 112) + 8);
    do
    {
      v13 = *v12++;
      this = TSP::UUID::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 16);
  if ((v14 & 3) != 0)
  {
    if (v14)
    {
      this = TSP::UUID::Clear(*(v1 + 120));
    }

    if ((v14 & 2) != 0)
    {
      this = TSCE::CellCoordinateArchive::Clear(*(v1 + 128));
    }
  }

  v16 = *(v1 + 8);
  v15 = v1 + 8;
  *(v15 + 128) = 0;
  *(v15 + 8) = 0;
  if (v16)
  {

    return sub_221567398(v15);
  }

  return this;
}

google::protobuf::internal *TST::HeaderNameMgrArchive_PerTableArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v62 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v62) & 1) == 0)
  {
    while (1)
    {
      v7 = (v62 + 1);
      v8 = *v62;
      if ((*v62 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v62, (v9 - 128));
      v62 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_103;
      }

      v7 = TagFallback;
      v8 = v34;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 <= 6)
        {
          if (v10 != 5)
          {
            if (v10 == 6 && v8 == 50)
            {
              v11 = v7 - 1;
              while (1)
              {
                v12 = (v11 + 1);
                v62 = (v11 + 1);
                v13 = *(a1 + 64);
                if (!v13)
                {
                  goto LABEL_14;
                }

                v19 = *(a1 + 56);
                v14 = *v13;
                if (v19 < *v13)
                {
                  *(a1 + 56) = v19 + 1;
                  v16 = *&v13[2 * v19 + 2];
                  goto LABEL_18;
                }

                if (v14 == *(a1 + 60))
                {
LABEL_14:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v13 = *(a1 + 64);
                  v14 = *v13;
                }

                *v13 = v14 + 1;
                v15 = MEMORY[0x223DA0360](*(a1 + 48));
                LODWORD(v16) = v15;
                v17 = *(a1 + 56);
                v18 = *(a1 + 64) + 8 * v17;
                *(a1 + 56) = v17 + 1;
                *(v18 + 8) = v15;
                v12 = v62;
LABEL_18:
                v11 = sub_2216F813C(a3, v16, v12);
                v62 = v11;
                if (!v11)
                {
                  goto LABEL_103;
                }

                if (*a3 <= v11 || *v11 != 50)
                {
                  goto LABEL_98;
                }
              }
            }

            goto LABEL_90;
          }

          if (v8 != 42)
          {
LABEL_90:
            if (v8)
            {
              v59 = (v8 & 7) == 4;
            }

            else
            {
              v59 = 1;
            }

            if (v59)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v38 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_97;
          }

          v39 = v7 - 1;
          while (2)
          {
            v40 = (v39 + 1);
            v62 = (v39 + 1);
            v41 = *(a1 + 40);
            if (!v41)
            {
LABEL_61:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v41 = *(a1 + 40);
              v42 = *v41;
              goto LABEL_62;
            }

            v47 = *(a1 + 32);
            v42 = *v41;
            if (v47 >= *v41)
            {
              if (v42 == *(a1 + 36))
              {
                goto LABEL_61;
              }

LABEL_62:
              *v41 = v42 + 1;
              v43 = MEMORY[0x223DA0360](*(a1 + 24));
              LODWORD(v44) = v43;
              v45 = *(a1 + 32);
              v46 = *(a1 + 40) + 8 * v45;
              *(a1 + 32) = v45 + 1;
              *(v46 + 8) = v43;
              v40 = v62;
            }

            else
            {
              *(a1 + 32) = v47 + 1;
              v44 = *&v41[2 * v47 + 2];
            }

            v39 = sub_2216F813C(a3, v44, v40);
            v62 = v39;
            if (!v39)
            {
              goto LABEL_103;
            }

            if (*a3 <= v39 || *v39 != 42)
            {
              goto LABEL_98;
            }

            continue;
          }
        }

        if (v10 != 7)
        {
          if (v10 != 8 || v8 != 66)
          {
            goto LABEL_90;
          }

          v24 = v7 - 1;
          while (2)
          {
            v25 = (v24 + 1);
            v62 = (v24 + 1);
            v26 = *(a1 + 112);
            if (!v26)
            {
LABEL_40:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
              v26 = *(a1 + 112);
              v27 = *v26;
              goto LABEL_41;
            }

            v32 = *(a1 + 104);
            v27 = *v26;
            if (v32 >= *v26)
            {
              if (v27 == *(a1 + 108))
              {
                goto LABEL_40;
              }

LABEL_41:
              *v26 = v27 + 1;
              v28 = MEMORY[0x223DA0360](*(a1 + 96));
              LODWORD(v29) = v28;
              v30 = *(a1 + 104);
              v31 = *(a1 + 112) + 8 * v30;
              *(a1 + 104) = v30 + 1;
              *(v31 + 8) = v28;
              v25 = v62;
            }

            else
            {
              *(a1 + 104) = v32 + 1;
              v29 = *&v26[2 * v32 + 2];
            }

            v24 = sub_2216F813C(a3, v29, v25);
            v62 = v24;
            if (!v24)
            {
              goto LABEL_103;
            }

            if (*a3 <= v24 || *v24 != 66)
            {
              goto LABEL_98;
            }

            continue;
          }
        }

        if (v8 != 58)
        {
          goto LABEL_90;
        }

        v48 = v7 - 1;
        while (2)
        {
          v49 = (v48 + 1);
          v62 = (v48 + 1);
          v50 = *(a1 + 88);
          if (!v50)
          {
LABEL_74:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v50 = *(a1 + 88);
            v51 = *v50;
            goto LABEL_75;
          }

          v56 = *(a1 + 80);
          v51 = *v50;
          if (v56 >= *v50)
          {
            if (v51 == *(a1 + 84))
            {
              goto LABEL_74;
            }

LABEL_75:
            *v50 = v51 + 1;
            v52 = MEMORY[0x223DA0360](*(a1 + 72));
            LODWORD(v53) = v52;
            v54 = *(a1 + 80);
            v55 = *(a1 + 88) + 8 * v54;
            *(a1 + 80) = v54 + 1;
            *(v55 + 8) = v52;
            v49 = v62;
          }

          else
          {
            *(a1 + 80) = v56 + 1;
            v53 = *&v50[2 * v56 + 2];
          }

          v48 = sub_2216F813C(a3, v53, v49);
          v62 = v48;
          if (!v48)
          {
            goto LABEL_103;
          }

          if (*a3 <= v48 || *v48 != 58)
          {
            goto LABEL_98;
          }

          continue;
        }
      }

      if (v10 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v35 = *(a1 + 120);
          if (!v35)
          {
            v36 = *(a1 + 8);
            if (v36)
            {
              v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
            }

            v37 = MEMORY[0x223DA0360](v36);
            LODWORD(v35) = v37;
            *(a1 + 120) = v37;
            v7 = v62;
          }

          v38 = sub_2216F813C(a3, v35, v7);
LABEL_97:
          v62 = v38;
          if (!v38)
          {
            goto LABEL_103;
          }

          goto LABEL_98;
        }

        goto LABEL_90;
      }

      if (v10 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 2u;
          v57 = *(a1 + 128);
          if (!v57)
          {
            v58 = *(a1 + 8);
            if (v58)
            {
              v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
            }

            v57 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v58);
            *(a1 + 128) = v57;
            v7 = v62;
          }

          v38 = sub_2216F806C(a3, v57, v7);
          goto LABEL_97;
        }

        goto LABEL_90;
      }

      if (v10 != 3 || v8 != 24)
      {
        goto LABEL_90;
      }

      v5 |= 4u;
      v22 = (v7 + 1);
      v21 = *v7;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }

      v23 = *v22;
      v21 = (v23 << 7) + v21 - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = (v7 + 2);
LABEL_34:
        v62 = v22;
        *(a1 + 136) = v21 != 0;
        goto LABEL_98;
      }

      v60 = google::protobuf::internal::VarintParseSlow64(v7, v21);
      v62 = v60;
      *(a1 + 136) = v61 != 0;
      if (!v60)
      {
LABEL_103:
        v62 = 0;
        goto LABEL_2;
      }

LABEL_98:
      if (sub_221567030(a3, &v62))
      {
        goto LABEL_2;
      }
    }

    v7 = (v62 + 2);
LABEL_6:
    v62 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v62;
}

unsigned __int8 *TST::HeaderNameMgrArchive_PerTableArchive::_InternalSerialize(TST::HeaderNameMgrArchive_PerTableArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 15);
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
        goto LABEL_28;
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

  v12 = *(this + 16);
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

  a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 136);
    *a2 = 24;
    a2[1] = v18;
    a2 += 2;
  }

LABEL_28:
  v19 = *(this + 8);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(this + 5) + 8 * i + 8);
      *a2 = 42;
      v22 = *(v21 + 5);
      if (v22 > 0x7F)
      {
        a2[1] = v22 | 0x80;
        v24 = v22 >> 7;
        if (v22 >> 14)
        {
          v23 = a2 + 3;
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
          a2[2] = v24;
          v23 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v22;
        v23 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(this + 14);
  if (v27)
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v29 = *(*(this + 8) + 8 * j + 8);
      *a2 = 50;
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

      a2 = TSP::UUID::_InternalSerialize(v29, v31, a3);
    }
  }

  v35 = *(this + 20);
  if (v35)
  {
    for (k = 0; k != v35; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v37 = *(*(this + 11) + 8 * k + 8);
      *a2 = 58;
      v38 = *(v37 + 5);
      if (v38 > 0x7F)
      {
        a2[1] = v38 | 0x80;
        v40 = v38 >> 7;
        if (v38 >> 14)
        {
          v39 = a2 + 3;
          do
          {
            *(v39 - 1) = v40 | 0x80;
            v41 = v40 >> 7;
            ++v39;
            v42 = v40 >> 14;
            v40 >>= 7;
          }

          while (v42);
          *(v39 - 1) = v41;
        }

        else
        {
          a2[2] = v40;
          v39 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v38;
        v39 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v37, v39, a3);
    }
  }

  v43 = *(this + 26);
  if (v43)
  {
    for (m = 0; m != v43; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v45 = *(*(this + 14) + 8 * m + 8);
      *a2 = 66;
      v46 = *(v45 + 5);
      if (v46 > 0x7F)
      {
        a2[1] = v46 | 0x80;
        v48 = v46 >> 7;
        if (v46 >> 14)
        {
          v47 = a2 + 3;
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
          a2[2] = v48;
          v47 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v46;
        v47 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v45, v47, a3);
    }
  }

  v51 = *(this + 1);
  if ((v51 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v51 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::RequiredFieldsByteSizeFallback(TST::HeaderNameMgrArchive_PerTableArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSP::UUID::ByteSizeLong(*(this + 15));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 16));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TST::HeaderNameMgrArchive_PerTableArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[15]);
    v3 = TSCE::CellCoordinateArchive::ByteSizeLong(this[16]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v5 = *(this + 8);
  v6 = v4 + v5;
  v7 = this[5];
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = TSP::UUID::ByteSizeLong(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  v12 = *(this + 14);
  v13 = v6 + v12;
  v14 = this[8];
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  if (v12)
  {
    v16 = 8 * v12;
    do
    {
      v17 = *v15++;
      v18 = TSP::UUID::ByteSizeLong(v17);
      v13 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
      v16 -= 8;
    }

    while (v16);
  }

  v19 = *(this + 20);
  v20 = v13 + v19;
  v21 = this[11];
  if (v21)
  {
    v22 = (v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  if (v19)
  {
    v23 = 8 * v19;
    do
    {
      v24 = *v22++;
      v25 = TSP::UUID::ByteSizeLong(v24);
      v20 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6);
      v23 -= 8;
    }

    while (v23);
  }

  v26 = *(this + 26);
  v27 = v20 + v26;
  v28 = this[14];
  if (v28)
  {
    v29 = (v28 + 8);
  }

  else
  {
    v29 = 0;
  }

  if (v26)
  {
    v30 = 8 * v26;
    do
    {
      v31 = *v29++;
      v32 = TSP::UUID::ByteSizeLong(v31);
      v27 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6);
      v30 -= 8;
    }

    while (v30);
  }

  v33 = (*(this + 4) >> 1) & 2;
  v34 = v27 + v33;
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v34, this + 20);
  }

  else
  {
    *(this + 5) = v34;
    return v27 + v33;
  }
}

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::MergeFrom(TST::HeaderNameMgrArchive_PerTableArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HeaderNameMgrArchive_PerTableArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::MergeFrom(uint64_t this, const TST::HeaderNameMgrArchive_PerTableArchive *a2)
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

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    this = sub_2215679F8(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    this = sub_2215679F8(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 26);
  if (v20)
  {
    v21 = *(a2 + 14);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 96));
    this = sub_2215679F8(v3 + 96, v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 4);
  if ((v25 & 7) != 0)
  {
    if (v25)
    {
      *(v3 + 16) |= 1u;
      v26 = *(v3 + 120);
      if (!v26)
      {
        v27 = *(v3 + 8);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = MEMORY[0x223DA0360](v27);
        *(v3 + 120) = v26;
      }

      if (*(a2 + 15))
      {
        v28 = *(a2 + 15);
      }

      else
      {
        v28 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v26, v28);
      if ((v25 & 2) == 0)
      {
LABEL_18:
        if ((v25 & 4) == 0)
        {
LABEL_20:
          *(v3 + 16) |= v25;
          return this;
        }

LABEL_19:
        *(v3 + 136) = *(a2 + 136);
        goto LABEL_20;
      }
    }

    else if ((v25 & 2) == 0)
    {
      goto LABEL_18;
    }

    *(v3 + 16) |= 2u;
    v29 = *(v3 + 128);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v30);
      *(v3 + 128) = v29;
    }

    if (*(a2 + 16))
    {
      v31 = *(a2 + 16);
    }

    else
    {
      v31 = &TSCE::_CellCoordinateArchive_default_instance_;
    }

    this = TSCE::CellCoordinateArchive::MergeFrom(v29, v31);
    if ((v25 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  return this;
}

uint64_t *TST::HeaderNameMgrArchive_PerTableArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderNameMgrArchive_PerTableArchive::Clear(this);

    return TST::HeaderNameMgrArchive_PerTableArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::HeaderNameMgrArchive_PerTableArchive::CopyFrom(uint64_t *this, const TST::HeaderNameMgrArchive_PerTableArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderNameMgrArchive_PerTableArchive::Clear(this);

    return TST::HeaderNameMgrArchive_PerTableArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::HeaderNameMgrArchive_PerTableArchive::IsInitialized(TST::HeaderNameMgrArchive_PerTableArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 14);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::UUID::IsInitialized(*(*(this + 8) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(this + 20);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = TSP::UUID::IsInitialized(*(*(this + 11) + 8 * v9));
    v9 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(this + 26);
  while (v12 >= 1)
  {
    v13 = v12 - 1;
    v14 = TSP::UUID::IsInitialized(*(*(this + 14) + 8 * v12));
    v12 = v13;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 15));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::HeaderNameMgrArchive_PerTableArchive::InternalSwap(TST::HeaderNameMgrArchive_PerTableArchive *this, TST::HeaderNameMgrArchive_PerTableArchive *a2)
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
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 10);
  v10 = *(this + 11);
  *(this + 5) = *(a2 + 5);
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v11 = *(this + 13);
  v12 = *(this + 14);
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v11;
  *(a2 + 14) = v12;
  v13 = *(this + 15);
  v14 = *(this + 16);
  result = *(a2 + 120);
  *(this + 120) = result;
  *(a2 + 15) = v13;
  *(a2 + 16) = v14;
  LOBYTE(v13) = *(this + 136);
  *(this + 136) = *(a2 + 136);
  *(a2 + 136) = v13;
  return result;
}

TSP::UUID *TST::HeaderNameMgrArchive::clear_owner_uid(TST::HeaderNameMgrArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUID *TST::HeaderNameMgrArchive::clear_nrm_owner_uid(TST::HeaderNameMgrArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t TST::HeaderNameMgrArchive::clear_name_frag_tiles(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 64) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

TST::HeaderNameMgrArchive *TST::HeaderNameMgrArchive::HeaderNameMgrArchive(TST::HeaderNameMgrArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8CA8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_HeaderNameMgrArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  return this;
}

void sub_221672750(_Unwind_Exception *a1)
{
  sub_2216E381C(v2);
  sub_221681144(v1);
  _Unwind_Resume(a1);
}

TST::HeaderNameMgrArchive *TST::HeaderNameMgrArchive::HeaderNameMgrArchive(TST::HeaderNameMgrArchive *this, const TST::HeaderNameMgrArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8CA8;
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
    sub_2216811C8(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_221568514(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 1);
  if (v15)
  {
    sub_22156734C(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v16 = *(a2 + 4);
  if (v16)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v16 & 2) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  return this;
}

void sub_221672938(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x1081C40825B58B5);
  sub_2216E381C(v2);
  sub_221681144((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::HeaderNameMgrArchive::~HeaderNameMgrArchive(TST::HeaderNameMgrArchive *this)
{
  if (this != &TST::_HeaderNameMgrArchive_default_instance_)
  {
    v2 = *(this + 9);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 10);
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_2216E381C(this + 6);
  sub_221681144(this + 3);
}

{
  TST::HeaderNameMgrArchive::~HeaderNameMgrArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::HeaderNameMgrArchive::default_instance(TST::HeaderNameMgrArchive *this)
{
  if (atomic_load_explicit(scc_info_HeaderNameMgrArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_HeaderNameMgrArchive_default_instance_;
}

uint64_t *TST::HeaderNameMgrArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::HeaderNameMgrArchive_PerTableArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      this = TSP::UUID::Clear(*(v1 + 72));
    }

    if ((v8 & 2) != 0)
    {
      this = TSP::UUID::Clear(*(v1 + 80));
    }
  }

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_221567398(v9);
  }

  return this;
}

google::protobuf::internal *TST::HeaderNameMgrArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v37 = a2;
  while (1)
  {
LABEL_2:
    if (sub_221567030(a3, &v37))
    {
      return v37;
    }

    v5 = (v37 + 1);
    v6 = *v37;
    if ((*v37 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v37 + 2);
LABEL_6:
      v37 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v37, (v7 - 128));
    v37 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v35;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      break;
    }

    if (v8 == 1)
    {
      if (v6 != 10)
      {
        goto LABEL_53;
      }

      *(a1 + 16) |= 1u;
      v10 = *(a1 + 72);
      if (!v10)
      {
        v22 = *(a1 + 8);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = MEMORY[0x223DA0360](v22);
        LODWORD(v10) = v23;
        *(a1 + 72) = v23;
        goto LABEL_38;
      }
    }

    else
    {
      if (v8 != 2 || v6 != 18)
      {
        goto LABEL_53;
      }

      *(a1 + 16) |= 2u;
      v10 = *(a1 + 80);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0360](v11);
        LODWORD(v10) = v12;
        *(a1 + 80) = v12;
LABEL_38:
        v5 = v37;
      }
    }

    v24 = sub_2216F813C(a3, v10, v5);
LABEL_60:
    v37 = v24;
    if (!v24)
    {
      return 0;
    }
  }

  if (v8 == 3)
  {
    if (v6 != 26)
    {
      goto LABEL_53;
    }

    v25 = (v5 - 1);
    while (1)
    {
      v26 = (v25 + 1);
      v37 = (v25 + 1);
      v27 = *(a1 + 40);
      if (!v27)
      {
        goto LABEL_43;
      }

      v32 = *(a1 + 32);
      v28 = *v27;
      if (v32 < *v27)
      {
        *(a1 + 32) = v32 + 1;
        v29 = *&v27[2 * v32 + 2];
        goto LABEL_47;
      }

      if (v28 == *(a1 + 36))
      {
LABEL_43:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v27 = *(a1 + 40);
        v28 = *v27;
      }

      *v27 = v28 + 1;
      v29 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderNameMgrArchive_PerTableArchive>(*(a1 + 24));
      v30 = *(a1 + 32);
      v31 = *(a1 + 40) + 8 * v30;
      *(a1 + 32) = v30 + 1;
      *(v31 + 8) = v29;
      v26 = v37;
LABEL_47:
      v25 = sub_22170855C(a3, v29, v26);
      v37 = v25;
      if (!v25)
      {
        return 0;
      }

      if (*a3 <= v25 || *v25 != 26)
      {
        goto LABEL_2;
      }
    }
  }

  if (v8 == 4 && v6 == 34)
  {
    v13 = v5 - 1;
    while (1)
    {
      v14 = (v13 + 1);
      v37 = (v13 + 1);
      v15 = *(a1 + 64);
      if (!v15)
      {
        goto LABEL_23;
      }

      v21 = *(a1 + 56);
      v16 = *v15;
      if (v21 < *v15)
      {
        *(a1 + 56) = v21 + 1;
        v18 = *&v15[2 * v21 + 2];
        goto LABEL_27;
      }

      if (v16 == *(a1 + 60))
      {
LABEL_23:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
        v15 = *(a1 + 64);
        v16 = *v15;
      }

      *v15 = v16 + 1;
      v17 = MEMORY[0x223DA0390](*(a1 + 48));
      LODWORD(v18) = v17;
      v19 = *(a1 + 56);
      v20 = *(a1 + 64) + 8 * v19;
      *(a1 + 56) = v19 + 1;
      *(v20 + 8) = v17;
      v14 = v37;
LABEL_27:
      v13 = sub_22170B7F8(a3, v18, v14);
      v37 = v13;
      if (!v13)
      {
        return 0;
      }

      if (*a3 <= v13 || *v13 != 34)
      {
        goto LABEL_2;
      }
    }
  }

LABEL_53:
  if (v6)
  {
    v33 = (v6 & 7) == 4;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v24 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_60;
  }

  *(a3 + 80) = v6 - 1;
  return v37;
}

unsigned __int8 *TST::HeaderNameMgrArchive::_InternalSerialize(TST::HeaderNameMgrArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 9);
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
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 10);
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

    a2 = TSP::UUID::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 8);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v20 = *(*(this + 5) + 8 * i + 8);
      *a2 = 26;
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

      a2 = TST::HeaderNameMgrArchive_PerTableArchive::_InternalSerialize(v20, v22, a3);
    }
  }

  v26 = *(this + 14);
  if (v26)
  {
    for (j = 0; j != v26; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v28 = *(*(this + 8) + 8 * j + 8);
      *a2 = 34;
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

      a2 = TSP::Reference::_InternalSerialize(v28, v30, a3);
    }
  }

  v34 = *(this + 1);
  if ((v34 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v34 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::HeaderNameMgrArchive::ByteSizeLong(TSP::UUID **this)
{
  if (this[2])
  {
    v3 = TSP::UUID::ByteSizeLong(this[9]);
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
      v10 = TST::HeaderNameMgrArchive_PerTableArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(this + 14);
  v12 = v5 + v11;
  v13 = this[8];
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 8 * v11;
    do
    {
      v16 = *v14++;
      v17 = TSP::Reference::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  if ((this[2] & 2) != 0)
  {
    v18 = TSP::UUID::ByteSizeLong(this[10]);
    v12 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v12, this + 20);
  }

  else
  {
    *(this + 5) = v12;
    return v12;
  }
}

uint64_t TST::HeaderNameMgrArchive::MergeFrom(TST::HeaderNameMgrArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HeaderNameMgrArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::HeaderNameMgrArchive::MergeFrom(uint64_t this, const TST::HeaderNameMgrArchive *a2)
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
    this = sub_2216811C8(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    this = sub_221568514(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 4);
  if ((v15 & 3) != 0)
  {
    v16 = MEMORY[0x277D809E0];
    if (v15)
    {
      *(v3 + 16) |= 1u;
      v17 = *(v3 + 72);
      if (!v17)
      {
        v18 = *(v3 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = MEMORY[0x223DA0360](v18);
        *(v3 + 72) = v17;
      }

      if (*(a2 + 9))
      {
        v19 = *(a2 + 9);
      }

      else
      {
        v19 = v16;
      }

      this = TSP::UUID::MergeFrom(v17, v19);
    }

    if ((v15 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v20 = *(v3 + 80);
      if (!v20)
      {
        v21 = *(v3 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = MEMORY[0x223DA0360](v21);
        *(v3 + 80) = v20;
      }

      if (*(a2 + 10))
      {
        v22 = *(a2 + 10);
      }

      else
      {
        v22 = v16;
      }

      return TSP::UUID::MergeFrom(v20, v22);
    }
  }

  return this;
}

uint64_t *TST::HeaderNameMgrArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderNameMgrArchive::Clear(this);

    return TST::HeaderNameMgrArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::HeaderNameMgrArchive::CopyFrom(uint64_t *this, const TST::HeaderNameMgrArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderNameMgrArchive::Clear(this);

    return TST::HeaderNameMgrArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::HeaderNameMgrArchive::IsInitialized(TST::HeaderNameMgrArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TST::HeaderNameMgrArchive_PerTableArchive::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 14);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::Reference::IsInitialized(*(*(this + 8) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(this + 4);
  if (v9)
  {
    result = TSP::UUID::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 2) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 10));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::HeaderNameMgrArchive::InternalSwap(TST::HeaderNameMgrArchive *this, TST::HeaderNameMgrArchive *a2)
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
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 9);
  v10 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  return result;
}

void *TST::WidthHeightCacheFittingEntry::WidthHeightCacheFittingEntry(void *result, uint64_t a2)
{
  *result = &unk_2834B8D58;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_2834B8D58;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TST::WidthHeightCacheFittingEntry *TST::WidthHeightCacheFittingEntry::WidthHeightCacheFittingEntry(TST::WidthHeightCacheFittingEntry *this, const TST::WidthHeightCacheFittingEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8D58;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TST::WidthHeightCacheFittingEntry::~WidthHeightCacheFittingEntry(TST::WidthHeightCacheFittingEntry *this)
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

uint64_t *TST::WidthHeightCacheFittingEntry::default_instance(TST::WidthHeightCacheFittingEntry *this)
{
  if (atomic_load_explicit(scc_info_WidthHeightCacheFittingEntry_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_WidthHeightCacheFittingEntry_default_instance_;
}

uint64_t *TST::WidthHeightCacheFittingEntry::Clear(TST::WidthHeightCacheFittingEntry *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
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

google::protobuf::internal *TST::WidthHeightCacheFittingEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v19) & 1) == 0)
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
        goto LABEL_33;
      }

      v7 = TagFallback;
      v8 = v16;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 21)
        {
          v5 |= 2u;
          *(a1 + 28) = *v7;
          v19 = (v7 + 4);
          goto LABEL_26;
        }

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

        v19 = google::protobuf::internal::UnknownFieldParse();
        if (!v19)
        {
LABEL_33:
          v19 = 0;
          goto LABEL_2;
        }

        goto LABEL_26;
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v5 |= 1u;
      v12 = (v7 + 1);
      LODWORD(v13) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v14 = *v12;
      v13 = (v13 + (v14 << 7) - 128);
      if ((v14 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_25:
        v19 = v12;
        *(a1 + 24) = v13;
        goto LABEL_26;
      }

      v17 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v19 = v17;
      *(a1 + 24) = v18;
      if (!v17)
      {
        goto LABEL_33;
      }

LABEL_26:
      if (sub_221567030(a3, &v19))
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

unsigned __int8 *TST::WidthHeightCacheFittingEntry::_InternalSerialize(TST::WidthHeightCacheFittingEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 2) == 0)
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
        v11 = v7 >> 7;
        ++a2;
        v12 = v7 >> 14;
        v7 >>= 7;
      }

      while (v12);
      *(a2 - 1) = v11;
      if ((v5 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 21;
  *(a2 + 1) = v8;
  a2 += 5;
LABEL_13:
  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::WidthHeightCacheFittingEntry::ByteSizeLong(TST::WidthHeightCacheFittingEntry *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::WidthHeightCacheFittingEntry::MergeFrom(TST::WidthHeightCacheFittingEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::WidthHeightCacheFittingEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::WidthHeightCacheFittingEntry::MergeFrom(uint64_t this, const TST::WidthHeightCacheFittingEntry *a2)
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
      v3[6] = *(a2 + 6);
    }

    if ((v5 & 2) != 0)
    {
      v3[7] = *(a2 + 7);
    }

    v3[4] |= v5;
  }

  return this;
}

TST::WidthHeightCacheFittingEntry *TST::WidthHeightCacheFittingEntry::CopyFrom(TST::WidthHeightCacheFittingEntry *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::WidthHeightCacheFittingEntry::Clear(this);

    return TST::WidthHeightCacheFittingEntry::MergeFrom(v4, a2);
  }

  return this;
}

TST::WidthHeightCacheFittingEntry *TST::WidthHeightCacheFittingEntry::CopyFrom(TST::WidthHeightCacheFittingEntry *this, const TST::WidthHeightCacheFittingEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::WidthHeightCacheFittingEntry::Clear(this);

    return TST::WidthHeightCacheFittingEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::WidthHeightCacheFittingEntry::InternalSwap(TST::WidthHeightCacheFittingEntry *this, TST::WidthHeightCacheFittingEntry *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TST::WidthHeightCache *TST::WidthHeightCache::WidthHeightCache(TST::WidthHeightCache *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8E08;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_WidthHeightCache_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

TST::WidthHeightCache *TST::WidthHeightCache::WidthHeightCache(TST::WidthHeightCache *this, const TST::WidthHeightCache *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8E08;
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
    sub_221681288(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  *(this + 12) = *(a2 + 12);
  return this;
}

void TST::WidthHeightCache::~WidthHeightCache(TST::WidthHeightCache *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567450(this + 3);
}

{
  TST::WidthHeightCache::~WidthHeightCache(this);

  JUMPOUT(0x223DA1450);
}

void *TST::WidthHeightCache::default_instance(TST::WidthHeightCache *this)
{
  if (atomic_load_explicit(scc_info_WidthHeightCache_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_WidthHeightCache_default_instance_;
}

uint64_t *TST::WidthHeightCache::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::WidthHeightCacheFittingEntry::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::WidthHeightCache::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v27) & 1) == 0)
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
      if (v8 >> 3 != 3)
      {
        if (v8 >> 3 != 1 || v8 != 10)
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

          v27 = google::protobuf::internal::UnknownFieldParse();
          if (!v27)
          {
LABEL_44:
            v27 = 0;
            goto LABEL_2;
          }

          goto LABEL_25;
        }

        v15 = (v7 - 1);
        while (2)
        {
          v16 = (v15 + 1);
          v27 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v17 = *(a1 + 40);
            v18 = *v17;
            goto LABEL_30;
          }

          v22 = *(a1 + 32);
          v18 = *v17;
          if (v22 >= *v17)
          {
            if (v18 == *(a1 + 36))
            {
              goto LABEL_29;
            }

LABEL_30:
            *v17 = v18 + 1;
            v19 = google::protobuf::Arena::CreateMaybeMessage<TST::WidthHeightCacheFittingEntry>(*(a1 + 24));
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v27;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_22170862C(a3, v19, v16);
          v27 = v15;
          if (!v15)
          {
            goto LABEL_44;
          }

          if (*a3 <= v15 || *v15 != 10)
          {
            goto LABEL_25;
          }

          continue;
        }
      }

      if (v8 != 24)
      {
        goto LABEL_12;
      }

      v12 = (v7 + 1);
      LODWORD(v13) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v14 = *v12;
      v13 = (v13 + (v14 << 7) - 128);
      if ((v14 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_24:
        v27 = v12;
        *(a1 + 48) = v13;
        v5 = 1;
        goto LABEL_25;
      }

      v25 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v27 = v25;
      *(a1 + 48) = v26;
      v5 = 1;
      if (!v25)
      {
        goto LABEL_44;
      }

LABEL_25:
      if (sub_221567030(a3, &v27))
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

unsigned __int8 *TST::WidthHeightCache::_InternalSerialize(TST::WidthHeightCache *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TST::WidthHeightCacheFittingEntry::_InternalSerialize(v7, v9, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 12);
    *a2 = 24;
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

  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::WidthHeightCache::ByteSizeLong(TST::WidthHeightCache *this)
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
      v7 = TST::WidthHeightCacheFittingEntry::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 16))
  {
    v2 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TST::WidthHeightCache::MergeFrom(TST::WidthHeightCache *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::WidthHeightCache::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::WidthHeightCache::MergeFrom(uint64_t this, const TST::WidthHeightCache *a2)
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
    this = sub_221681288(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    v10 = *(a2 + 12);
    *(v3 + 16) |= 1u;
    *(v3 + 48) = v10;
  }

  return this;
}

uint64_t *TST::WidthHeightCache::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::WidthHeightCache::Clear(this);

    return TST::WidthHeightCache::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::WidthHeightCache::CopyFrom(uint64_t *this, const TST::WidthHeightCache *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::WidthHeightCache::Clear(this);

    return TST::WidthHeightCache::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TST::WidthHeightCache::InternalSwap(__n128 *this, __n128 *a2)
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
  LODWORD(v5) = this[3].n128_u32[0];
  this[3].n128_u32[0] = a2[3].n128_u32[0];
  a2[3].n128_u32[0] = v5;
  return result;
}

TST::LayoutEngineArchive *TST::LayoutEngineArchive::LayoutEngineArchive(TST::LayoutEngineArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8EB8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LayoutEngineArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B8EB8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LayoutEngineArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::LayoutEngineArchive *TST::LayoutEngineArchive::LayoutEngineArchive(TST::LayoutEngineArchive *this, const TST::LayoutEngineArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8EB8;
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
  return this;
}

void TST::LayoutEngineArchive::~LayoutEngineArchive(TST::LayoutEngineArchive *this)
{
  if (this != &TST::_LayoutEngineArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::WidthHeightCache::~WidthHeightCache(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::LayoutEngineArchive::~LayoutEngineArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::LayoutEngineArchive::default_instance(TST::LayoutEngineArchive *this)
{
  if (atomic_load_explicit(scc_info_LayoutEngineArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_LayoutEngineArchive_default_instance_;
}

google::protobuf::internal *TST::LayoutEngineArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_221567030(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v15 + 2);
LABEL_6:
      v15 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
    v15 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v13;
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TST::WidthHeightCache>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_2217086FC(a3, v10, v5);
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
        return v15;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v15;
}

unsigned __int8 *TST::LayoutEngineArchive::_InternalSerialize(TST::LayoutEngineArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
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

    a2 = TST::WidthHeightCache::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::LayoutEngineArchive::ByteSizeLong(TST::WidthHeightCache **this)
{
  if (this[2])
  {
    v3 = TST::WidthHeightCache::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TST::LayoutEngineArchive::MergeFrom(TST::LayoutEngineArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::LayoutEngineArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TST::LayoutEngineArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::LayoutEngineArchive::Clear(this);

    return TST::LayoutEngineArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::LayoutEngineArchive::CopyFrom(uint64_t *this, const TST::LayoutEngineArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::LayoutEngineArchive::Clear(this);

    return TST::LayoutEngineArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::LayoutEngineArchive::InternalSwap(TST::LayoutEngineArchive *this, TST::LayoutEngineArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t TST::CollaboratorTableCursorSubselectionArchive::clear_row_column_uid_list(uint64_t this)
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

TST::CollaboratorTableCursorSubselectionArchive *TST::CollaboratorTableCursorSubselectionArchive::CollaboratorTableCursorSubselectionArchive(TST::CollaboratorTableCursorSubselectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8F68;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CollaboratorTableCursorSubselectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 6) = 0;
  return this;
}

TST::CollaboratorTableCursorSubselectionArchive *TST::CollaboratorTableCursorSubselectionArchive::CollaboratorTableCursorSubselectionArchive(TST::CollaboratorTableCursorSubselectionArchive *this, const TST::CollaboratorTableCursorSubselectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8F68;
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

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  *(this + 14) = *(a2 + 14);
  return this;
}

void sub_221675274(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C40643BB50ELL);
  sub_221567974((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::CollaboratorTableCursorSubselectionArchive::~CollaboratorTableCursorSubselectionArchive(TST::CollaboratorTableCursorSubselectionArchive *this)
{
  if (this != &TST::_CollaboratorTableCursorSubselectionArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TST::CellUIDListArchive::~CellUIDListArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_221567974(this + 3);
}

{
  TST::CollaboratorTableCursorSubselectionArchive::~CollaboratorTableCursorSubselectionArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::CollaboratorTableCursorSubselectionArchive::default_instance(TST::CollaboratorTableCursorSubselectionArchive *this)
{
  if (atomic_load_explicit(scc_info_CollaboratorTableCursorSubselectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CollaboratorTableCursorSubselectionArchive_default_instance_;
}

uint64_t *TST::CollaboratorTableCursorSubselectionArchive::Clear(uint64_t *this)
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
    this = TST::CellUIDListArchive::Clear(*(v1 + 48));
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

google::protobuf::internal *TST::CollaboratorTableCursorSubselectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  while (1)
  {
    while (1)
    {
LABEL_2:
      if (sub_221567030(a3, &v29))
      {
        return v29;
      }

      v5 = (v29 + 1);
      v6 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        v5 = (v29 + 2);
LABEL_6:
        v29 = v5;
        goto LABEL_7;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v7 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v27;
LABEL_7:
      v8 = v6 >> 3;
      if (v6 >> 3 == 4)
      {
        if (v6 != 34)
        {
          goto LABEL_13;
        }

        v15 = v5 - 1;
        while (1)
        {
          v16 = (v15 + 1);
          v29 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
            goto LABEL_30;
          }

          v23 = *(a1 + 32);
          v18 = *v17;
          if (v23 < *v17)
          {
            *(a1 + 32) = v23 + 1;
            v20 = *&v17[2 * v23 + 2];
            goto LABEL_34;
          }

          if (v18 == *(a1 + 36))
          {
LABEL_30:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v17 = *(a1 + 40);
            v18 = *v17;
          }

          *v17 = v18 + 1;
          v19 = MEMORY[0x223DA0360](*(a1 + 24));
          LODWORD(v20) = v19;
          v21 = *(a1 + 32);
          v22 = *(a1 + 40) + 8 * v21;
          *(a1 + 32) = v21 + 1;
          *(v22 + 8) = v19;
          v16 = v29;
LABEL_34:
          v15 = sub_2216F813C(a3, v20, v16);
          v29 = v15;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 34)
          {
            goto LABEL_2;
          }
        }
      }

      if (v8 != 3)
      {
        break;
      }

      if (v6 != 24)
      {
        goto LABEL_13;
      }

      v13 = (v5 + 1);
      v12 = *v5;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = (v5 + 2);
LABEL_24:
        v29 = v13;
        goto LABEL_25;
      }

      v29 = google::protobuf::internal::VarintParseSlow64(v5, v12);
      if (!v29)
      {
        return 0;
      }

LABEL_25:
      if (v12 > 7)
      {
        sub_221708800();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 56) = v12;
      }
    }

    if (v8 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v24 = *(a1 + 48);
      if (!v24)
      {
        v25 = *(a1 + 8);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v24 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDListArchive>(v25);
        *(a1 + 48) = v24;
        v5 = v29;
      }

      v11 = sub_2217054D8(a3, v24, v5);
      goto LABEL_45;
    }

LABEL_13:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_45:
    v29 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v29;
}

unsigned __int8 *TST::CollaboratorTableCursorSubselectionArchive::_InternalSerialize(TST::CollaboratorTableCursorSubselectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
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

    a2 = TST::CellUIDListArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 14);
    *a2 = 24;
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
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
    }
  }

  v16 = *(this + 8);
  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v18 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSP::UUID::_InternalSerialize(v18, v20, a3);
    }
  }

  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::CollaboratorTableCursorSubselectionArchive::ByteSizeLong(TST::CollaboratorTableCursorSubselectionArchive *this)
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
      v7 = TSP::UUID::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = TST::CellUIDListArchive::ByteSizeLong(*(this + 6));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = *(this + 14);
      if (v10 < 0)
      {
        v11 = 11;
      }

      else
      {
        v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v11;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TST::CollaboratorTableCursorSubselectionArchive::MergeFrom(TST::CollaboratorTableCursorSubselectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CollaboratorTableCursorSubselectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CollaboratorTableCursorSubselectionArchive::MergeFrom(uint64_t this, const TST::CollaboratorTableCursorSubselectionArchive *a2)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDListArchive>(v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = &TST::_CellUIDListArchive_default_instance_;
      }

      this = TST::CellUIDListArchive::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 14);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TST::CollaboratorTableCursorSubselectionArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CollaboratorTableCursorSubselectionArchive::Clear(this);

    return TST::CollaboratorTableCursorSubselectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CollaboratorTableCursorSubselectionArchive::CopyFrom(uint64_t *this, const TST::CollaboratorTableCursorSubselectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CollaboratorTableCursorSubselectionArchive::Clear(this);

    return TST::CollaboratorTableCursorSubselectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::CollaboratorTableCursorSubselectionArchive::IsInitialized(TST::CollaboratorTableCursorSubselectionArchive *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 5) + 8 * v2));
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

  result = TST::CellUIDListArchive::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::CollaboratorTableCursorSubselectionArchive::InternalSwap(__n128 *this, __n128 *a2)
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

uint64_t sub_221675DA4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221681660(a1);
}

TST::CellUIDLookupListArchive *sub_221675E74(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221681764(a1, 1);
  TST::CellUIDLookupListArchive::CellUIDLookupListArchive(v2, a1);
  return v2;
}

TST::CellUIDListArchive *sub_221675F00(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216817F0(a1, 1);
  TST::CellUIDListArchive::CellUIDListArchive(v2, a1);
  return v2;
}

uint64_t sub_221675F8C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_22168187C(a1, 1);
  *result = &unk_2834B22C8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_221676000(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221681924(a1, 1);
  *result = &unk_2834B2378;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_221676070(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216819CC(a1);
}

void *sub_22167613C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221681ACC(a1);
}

void *sub_221676208(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221681BCC(a1);
}

TST::TileRowInfo *sub_2216762D8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221681CD0(a1, 1);
  TST::TileRowInfo::TileRowInfo(v2, a1);
  return v2;
}

TST::Tile *sub_221676364(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221681D5C(a1, 1);
  TST::Tile::Tile(v2, a1);
  return v2;
}

uint64_t sub_2216763F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221681DE8(a1);
}

TST::TileStorage *sub_2216764C0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221681EEC(a1, 1);
  TST::TileStorage::TileStorage(v2, a1);
  return v2;
}

TST::PopUpMenuModel_CellValue *sub_22167654C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221681F78(a1, 1);
  TST::PopUpMenuModel_CellValue::PopUpMenuModel_CellValue(v2, a1);
  return v2;
}

TST::PopUpMenuModel *sub_2216765D8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221682004(a1, 1);
  TST::PopUpMenuModel::PopUpMenuModel(v2, a1);
  return v2;
}

TST::ImportWarningSetArchive_FormulaImportWarning *sub_221676664(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221682090(a1, 1);
  TST::ImportWarningSetArchive_FormulaImportWarning::ImportWarningSetArchive_FormulaImportWarning(v2, a1);
  return v2;
}

TST::ImportWarningSetArchive *sub_2216766F0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22168211C(a1, 1);
  TST::ImportWarningSetArchive::ImportWarningSetArchive(v2, a1);
  return v2;
}

void *sub_22167677C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216821A8(a1);
}

TST::ImportWarningSetByCellRefArchive *sub_221676848(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216822A8(a1, 1);
  TST::ImportWarningSetByCellRefArchive::ImportWarningSetByCellRefArchive(v2, a1);
  return v2;
}

TST::TableDataList_ListEntry *sub_2216768D4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221682334(a1, 1);
  TST::TableDataList_ListEntry::TableDataList_ListEntry(v2, a1);
  return v2;
}

TST::TableDataList *sub_221676960(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216823C0(a1, 1);
  TST::TableDataList::TableDataList(v2, a1);
  return v2;
}

TST::TableDataListSegment *sub_2216769EC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22168244C(a1, 1);
  TST::TableDataListSegment::TableDataListSegment(v2, a1);
  return v2;
}

void *sub_221676A78(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2216824D8(a1, 1);
  *result = &unk_2834B2F28;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TST::TableRBTree *sub_221676AE8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221682580(a1, 1);
  TST::TableRBTree::TableRBTree(v2, a1);
  return v2;
}

uint64_t sub_221676B74(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22168260C(a1);
}

TST::HeaderStorageBucket *sub_221676C48(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221682714(a1, 1);
  TST::HeaderStorageBucket::HeaderStorageBucket(v2, a1);
  return v2;
}

TST::HeaderStorage *sub_221676CD4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216827A0(a1, 1);
  TST::HeaderStorage::HeaderStorage(v2, a1);
  return v2;
}

uint64_t sub_221676D60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22168282C(a1);
}

uint64_t sub_221676E58(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221682958(a1);
}

void *sub_221676F40(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221682A74(a1);
}

void *sub_22167700C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221682B74(a1);
}

uint64_t sub_2216770D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221682C74(a1);
}

uint64_t sub_2216771D0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221682DA0(a1);
}

TST::TableGroupSortOrderUIDArchive *sub_2216772A0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221682EA4(a1, 1);
  TST::TableGroupSortOrderUIDArchive::TableGroupSortOrderUIDArchive(v2, a1);
  return v2;
}

void *sub_22167732C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221682F30(a1, 1);
  *result = &unk_2834B3768;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TST::TableSortOrderArchive *sub_22167739C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221682FD8(a1, 1);
  TST::TableSortOrderArchive::TableSortOrderArchive(v2, a1);
  return v2;
}

uint64_t sub_221677428(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221683064(a1);
}

TST::TableSortOrderUIDArchive *sub_2216774F8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683168(a1, 1);
  TST::TableSortOrderUIDArchive::TableSortOrderUIDArchive(v2, a1);
  return v2;
}

void *sub_221677584(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216831F4(a1);
}

TST::CellRegion *sub_221677650(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216832F4(a1, 1);
  TST::CellRegion::CellRegion(v2, a1);
  return v2;
}

TST::CellUIDRegionArchive *sub_2216776DC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683380(a1, 1);
  TST::CellUIDRegionArchive::CellUIDRegionArchive(v2, a1);
  return v2;
}

TST::StructuredTextImportRecord *sub_221677768(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22168340C(a1, 1);
  TST::StructuredTextImportRecord::StructuredTextImportRecord(v2, a1);
  return v2;
}

TST::StructuredTextImportRecordUID *sub_2216777F4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683498(a1, 1);
  TST::StructuredTextImportRecordUID::StructuredTextImportRecordUID(v2, a1);
  return v2;
}

TST::TableModelArchive *sub_221677880(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683524(a1, 1);
  TST::TableModelArchive::TableModelArchive(v2, a1);
  return v2;
}

TST::SummaryModelArchive *sub_22167790C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216835B0(a1, 1);
  TST::SummaryModelArchive::SummaryModelArchive(v2, a1);
  return v2;
}

TST::SummaryModelGroupByChangeStateArchive *sub_221677998(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22168363C(a1, 1);
  TST::SummaryModelGroupByChangeStateArchive::SummaryModelGroupByChangeStateArchive(v2, a1);
  return v2;
}

TST::ColumnRowUIDMapArchive *sub_221677A24(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216836C8(a1, 1);
  TST::ColumnRowUIDMapArchive::ColumnRowUIDMapArchive(v2, a1);
  return v2;
}

uint64_t sub_221677AB0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221683754(a1);
}

TST::StrokeLayerArchive *sub_221677B80(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683858(a1, 1);
  TST::StrokeLayerArchive::StrokeLayerArchive(v2, a1);
  return v2;
}

TST::StrokeSidecarArchive *sub_221677C0C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216838E4(a1, 1);
  TST::StrokeSidecarArchive::StrokeSidecarArchive(v2, a1);
  return v2;
}

uint64_t sub_221677C98(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221683970(a1, 1);
  *result = &unk_2834B4268;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

TST::Cell *sub_221677D08(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683A18(a1, 1);
  TST::Cell::Cell(v2, a1);
  return v2;
}

TST::MergeRegionMapArchive *sub_221677D94(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683AA4(a1, 1);
  TST::MergeRegionMapArchive::MergeRegionMapArchive(v2, a1);
  return v2;
}

TST::CellMapArchive *sub_221677E20(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683B30(a1, 1);
  TST::CellMapArchive::CellMapArchive(v2, a1);
  return v2;
}

void *sub_221677EAC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221683BBC(a1);
}

TST::CellListArchive *sub_221677F78(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683CBC(a1, 1);
  TST::CellListArchive::CellListArchive(v2, a1);
  return v2;
}

TST::ConcurrentCellMapArchive *sub_221678004(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683D48(a1, 1);
  TST::ConcurrentCellMapArchive::ConcurrentCellMapArchive(v2, a1);
  return v2;
}

void *sub_221678090(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221683DD4(a1);
}

TST::ConcurrentCellListArchive *sub_22167815C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683ED4(a1, 1);
  TST::ConcurrentCellListArchive::ConcurrentCellListArchive(v2, a1);
  return v2;
}

TST::CellFormatAndValueArchive *sub_2216781E8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221683F60(a1, 1);
  TST::CellFormatAndValueArchive::CellFormatAndValueArchive(v2, a1);
  return v2;
}

uint64_t sub_221678274(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221683FEC(a1);
}

void *sub_22167834C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216840F8(a1);
}

void *sub_221678418(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216841F8(a1);
}

void *sub_2216784E4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216842F8(a1);
}

TST::CellDiffArraySegment *sub_2216785B0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216843F8(a1, 1);
  TST::CellDiffArraySegment::CellDiffArraySegment(v2, a1);
  return v2;
}

TST::CellDiffMapArchive *sub_22167863C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221684484(a1, 1);
  TST::CellDiffMapArchive::CellDiffMapArchive(v2, a1);
  return v2;
}

TST::HierarchicalCellDiffMapArchive_BoxedRow *sub_2216786C8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221684510(a1, 1);
  TST::HierarchicalCellDiffMapArchive_BoxedRow::HierarchicalCellDiffMapArchive_BoxedRow(v2, a1);
  return v2;
}

TST::HierarchicalCellDiffMapArchive *sub_221678754(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22168459C(a1, 1);
  TST::HierarchicalCellDiffMapArchive::HierarchicalCellDiffMapArchive(v2, a1);
  return v2;
}

void *sub_2216787E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221684628(a1);
}