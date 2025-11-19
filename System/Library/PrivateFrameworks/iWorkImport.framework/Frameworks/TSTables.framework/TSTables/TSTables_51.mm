uint64_t TST::PivotOwnerArchive::ByteSizeLong(TST::PivotOwnerArchive *this)
{
  v2 = *(this + 4);
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
    v7 = TSP::UUID::ByteSizeLong(*(this + 4));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v15 = TST::GroupColumnListArchive::ByteSizeLong(*(this + 5));
    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v16 = TST::GroupColumnListArchive::ByteSizeLong(*(this + 6));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = TST::ColumnAggregateListArchive::ByteSizeLong(*(this + 7));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = TSP::UUID::ByteSizeLong(*(this + 8));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_36:
  v19 = TSP::Reference::ByteSizeLong(*(this + 9));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_16:
    v8 = TST::FormulaStoreArchive::ByteSizeLong(*(this + 10));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_17:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_30;
  }

  if ((v2 & 0x100) == 0)
  {
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_20;
    }

LABEL_39:
    v21 = TSP::UUID::ByteSizeLong(*(this + 12));
    v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v20 = TSP::UUID::ByteSizeLong(*(this + 11));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200) != 0)
  {
    goto LABEL_39;
  }

LABEL_20:
  if ((v2 & 0x400) != 0)
  {
LABEL_21:
    v9 = TSP::UUID::ByteSizeLong(*(this + 13));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_22:
  v10 = v3 + 9;
  if ((v2 & 0x800) == 0)
  {
    v10 = v3;
  }

  if ((v2 & 0x1000) != 0)
  {
    v11 = *(this + 30);
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 11;
    }

    v10 += v13;
  }

  v3 = v10 + ((v2 >> 13) & 2) + ((v2 >> 12) & 2) + ((v2 >> 14) & 2);
LABEL_30:
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

uint64_t TST::PivotOwnerArchive::MergeFrom(TST::PivotOwnerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::PivotOwnerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::PivotOwnerArchive::MergeFrom(uint64_t this, const TST::PivotOwnerArchive *a2)
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
    goto LABEL_70;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
  }

  v6 = MEMORY[0x277D809E0];
  if ((v5 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v7 = *(v3 + 32);
    if (!v7)
    {
      v8 = *(v3 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x223DA0360](v8);
      *(v3 + 32) = v7;
    }

    if (*(a2 + 4))
    {
      v9 = *(a2 + 4);
    }

    else
    {
      v9 = v6;
    }

    this = TSP::UUID::MergeFrom(v7, v9);
  }

  if ((v5 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v10 = *(v3 + 40);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupColumnListArchive>(v11);
      *(v3 + 40) = v10;
    }

    if (*(a2 + 5))
    {
      v12 = *(a2 + 5);
    }

    else
    {
      v12 = &TST::_GroupColumnListArchive_default_instance_;
    }

    this = TST::GroupColumnListArchive::MergeFrom(v10, v12);
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
  v13 = *(v3 + 48);
  if (!v13)
  {
    v14 = *(v3 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupColumnListArchive>(v14);
    *(v3 + 48) = v13;
  }

  if (*(a2 + 6))
  {
    v15 = *(a2 + 6);
  }

  else
  {
    v15 = &TST::_GroupColumnListArchive_default_instance_;
  }

  this = TST::GroupColumnListArchive::MergeFrom(v13, v15);
  if ((v5 & 0x10) == 0)
  {
LABEL_18:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_46:
    *(v3 + 16) |= 0x20u;
    v19 = *(v3 + 64);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x223DA0360](v20);
      *(v3 + 64) = v19;
    }

    if (*(a2 + 8))
    {
      v21 = *(a2 + 8);
    }

    else
    {
      v21 = v6;
    }

    this = TSP::UUID::MergeFrom(v19, v21);
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
  v16 = *(v3 + 56);
  if (!v16)
  {
    v17 = *(v3 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = google::protobuf::Arena::CreateMaybeMessage<TST::ColumnAggregateListArchive>(v17);
    *(v3 + 56) = v16;
  }

  if (*(a2 + 7))
  {
    v18 = *(a2 + 7);
  }

  else
  {
    v18 = &TST::_ColumnAggregateListArchive_default_instance_;
  }

  this = TST::ColumnAggregateListArchive::MergeFrom(v16, v18);
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
  v22 = *(v3 + 72);
  if (!v22)
  {
    v23 = *(v3 + 8);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = MEMORY[0x223DA0390](v23);
    *(v3 + 72) = v22;
  }

  if (*(a2 + 9))
  {
    v24 = *(a2 + 9);
  }

  else
  {
    v24 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v22, v24);
  if ((v5 & 0x80) != 0)
  {
LABEL_62:
    *(v3 + 16) |= 0x80u;
    v25 = *(v3 + 80);
    if (!v25)
    {
      v26 = *(v3 + 8);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaStoreArchive>(v26);
      *(v3 + 80) = v25;
    }

    if (*(a2 + 10))
    {
      v27 = *(a2 + 10);
    }

    else
    {
      v27 = &TST::_FormulaStoreArchive_default_instance_;
    }

    this = TST::FormulaStoreArchive::MergeFrom(v25, v27);
  }

LABEL_70:
  if ((v5 & 0xFF00) == 0)
  {
    return this;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v28 = *(v3 + 88);
    if (!v28)
    {
      v29 = *(v3 + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x223DA0360](v29);
      *(v3 + 88) = v28;
    }

    if (*(a2 + 11))
    {
      v30 = *(a2 + 11);
    }

    else
    {
      v30 = MEMORY[0x277D809E0];
    }

    this = TSP::UUID::MergeFrom(v28, v30);
    if ((v5 & 0x200) == 0)
    {
LABEL_73:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_98;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  *(v3 + 16) |= 0x200u;
  v31 = *(v3 + 96);
  if (!v31)
  {
    v32 = *(v3 + 8);
    if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    v31 = MEMORY[0x223DA0360](v32);
    *(v3 + 96) = v31;
  }

  if (*(a2 + 12))
  {
    v33 = *(a2 + 12);
  }

  else
  {
    v33 = MEMORY[0x277D809E0];
  }

  this = TSP::UUID::MergeFrom(v31, v33);
  if ((v5 & 0x400) == 0)
  {
LABEL_74:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_106;
  }

LABEL_98:
  *(v3 + 16) |= 0x400u;
  v34 = *(v3 + 104);
  if (!v34)
  {
    v35 = *(v3 + 8);
    if (v35)
    {
      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
    }

    v34 = MEMORY[0x223DA0360](v35);
    *(v3 + 104) = v34;
  }

  if (*(a2 + 13))
  {
    v36 = *(a2 + 13);
  }

  else
  {
    v36 = MEMORY[0x277D809E0];
  }

  this = TSP::UUID::MergeFrom(v34, v36);
  if ((v5 & 0x800) == 0)
  {
LABEL_75:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(v3 + 112) = *(a2 + 14);
  if ((v5 & 0x1000) == 0)
  {
LABEL_76:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(v3 + 120) = *(a2 + 30);
  if ((v5 & 0x2000) == 0)
  {
LABEL_77:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_78;
    }

LABEL_109:
    *(v3 + 125) = *(a2 + 125);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_108:
  *(v3 + 124) = *(a2 + 124);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_109;
  }

LABEL_78:
  if ((v5 & 0x8000) != 0)
  {
LABEL_79:
    *(v3 + 126) = *(a2 + 126);
  }

LABEL_80:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t *TST::PivotOwnerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PivotOwnerArchive::Clear(this);

    return TST::PivotOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::PivotOwnerArchive::CopyFrom(uint64_t *this, const TST::PivotOwnerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PivotOwnerArchive::Clear(this);

    return TST::PivotOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::PivotOwnerArchive::IsInitialized(TST::PivotOwnerArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    result = TSP::UUID::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    v4 = *(this + 5);
    v5 = *(v4 + 24);
    while (v5 >= 1)
    {
      v6 = v5 - 1;
      IsInitialized = TST::GroupColumnArchive::IsInitialized(*(*(v4 + 32) + 8 * v5));
      v5 = v6;
      if ((IsInitialized & 1) == 0)
      {
        return 0;
      }
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    v8 = *(this + 6);
    v9 = *(v8 + 24);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = TST::GroupColumnArchive::IsInitialized(*(*(v8 + 32) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10) != 0)
  {
    v12 = *(this + 7);
    v13 = *(v12 + 24);
    while (v13 >= 1)
    {
      v14 = v13 - 1;
      v15 = TST::ColumnAggregateArchive::IsInitialized(*(*(v12 + 32) + 8 * v13));
      v13 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSP::UUID::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x80) != 0)
  {
    v16 = *(this + 10);
    if ((*(v16 + 16) & 1) == 0)
    {
      return 0;
    }

    result = sub_22164DA10(v16 + 24);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
    if ((v2 & 0x100) != 0)
    {
      goto LABEL_30;
    }
  }

  else if ((v2 & 0x100) != 0)
  {
LABEL_30:
    result = TSP::UUID::IsInitialized(*(this + 11));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSP::UUID::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x400) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 13));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::PivotOwnerArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  this[4] = a2[4];
  a2[4].n128_u64[0] = v10;
  a2[4].n128_u64[1] = v11;
  v12 = this[5].n128_u64[0];
  v13 = this[5].n128_u64[1];
  this[5] = a2[5];
  a2[5].n128_u64[0] = v12;
  a2[5].n128_u64[1] = v13;
  v14 = this[6].n128_u64[0];
  v15 = this[6].n128_u64[1];
  result = a2[6];
  this[6] = result;
  a2[6].n128_u64[0] = v14;
  a2[6].n128_u64[1] = v15;
  v17 = this[7].n128_u64[0];
  this[7].n128_u64[0] = a2[7].n128_u64[0];
  a2[7].n128_u64[0] = v17;
  LODWORD(v17) = this[7].n128_u32[2];
  this[7].n128_u32[2] = a2[7].n128_u32[2];
  a2[7].n128_u32[2] = v17;
  LOWORD(v17) = this[7].n128_u16[6];
  this[7].n128_u16[6] = a2[7].n128_u16[6];
  a2[7].n128_u16[6] = v17;
  LOBYTE(v17) = this[7].n128_u8[14];
  this[7].n128_u8[14] = a2[7].n128_u8[14];
  a2[7].n128_u8[14] = v17;
  return result;
}

TSP::Reference *TST::RichTextPayloadArchive::clear_storage(TST::RichTextPayloadArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Range *TST::RichTextPayloadArchive::clear_range(TST::RichTextPayloadArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Range::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::RichTextPayloadArchive *TST::RichTextPayloadArchive::RichTextPayloadArchive(TST::RichTextPayloadArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8258;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RichTextPayloadArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2834B8258;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RichTextPayloadArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TST::RichTextPayloadArchive *TST::RichTextPayloadArchive::RichTextPayloadArchive(TST::RichTextPayloadArchive *this, const TST::RichTextPayloadArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8258;
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

void TST::RichTextPayloadArchive::~RichTextPayloadArchive(TST::RichTextPayloadArchive *this)
{
  if (this != TST::_RichTextPayloadArchive_default_instance_)
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
      TSP::Range::~Range(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TST::CellID::~CellID(v4);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::RichTextPayloadArchive::~RichTextPayloadArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::RichTextPayloadArchive::default_instance(TST::RichTextPayloadArchive *this)
{
  if (atomic_load_explicit(scc_info_RichTextPayloadArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_RichTextPayloadArchive_default_instance_;
}

uint64_t *TST::RichTextPayloadArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSP::Reference::Clear(this[3]);
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

    this = TSP::Range::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TST::CellID::Clear(*(v1 + 40));
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

google::protobuf::internal *TST::RichTextPayloadArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  while ((sub_221567030(a3, &v23) & 1) == 0)
  {
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

        v15 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v16);
        *(a1 + 40) = v15;
        v5 = v23;
      }

      v11 = sub_221701838(a3, v15, v5);
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

        v14 = MEMORY[0x223DA0370](v13);
        LODWORD(v12) = v14;
        *(a1 + 32) = v14;
        v5 = v23;
      }

      v11 = sub_2217022C8(a3, v12, v5);
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
          return v23;
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

        v19 = MEMORY[0x223DA0390](v18);
        LODWORD(v17) = v19;
        *(a1 + 24) = v19;
        v5 = v23;
      }

      v11 = sub_22170B7F8(a3, v17, v5);
    }

LABEL_37:
    v23 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v23;
}

unsigned __int8 *TST::RichTextPayloadArchive::_InternalSerialize(TST::RichTextPayloadArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  a2 = TSP::Range::_InternalSerialize(v12, v14, a3);
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

    a2 = TST::CellID::_InternalSerialize(v18, v20, a3);
  }

LABEL_35:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::RichTextPayloadArchive::RequiredFieldsByteSizeFallback(TST::RichTextPayloadArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 4) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSP::Reference::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 4) != 0)
  {
LABEL_5:
    v5 = TST::CellID::ByteSizeLong(*(this + 5));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::RichTextPayloadArchive::ByteSizeLong(TSP::Reference **this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    v4 = TST::RichTextPayloadArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(this[3]);
    v3 = TST::CellID::ByteSizeLong(this[5]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((this[2] & 2) != 0)
  {
    v5 = TSP::Range::ByteSizeLong(this[4]);
    v4 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::RichTextPayloadArchive::MergeFrom(TST::RichTextPayloadArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::RichTextPayloadArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::RichTextPayloadArchive::MergeFrom(uint64_t this, const TST::RichTextPayloadArchive *a2)
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

        v6 = MEMORY[0x223DA0390](v7);
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
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x223DA0370](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = MEMORY[0x277D809F8];
    }

    this = TSP::Range::MergeFrom(v9, v11);
    if ((v5 & 4) != 0)
    {
LABEL_24:
      *(v3 + 16) |= 4u;
      v12 = *(v3 + 40);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 5))
      {
        v14 = *(a2 + 5);
      }

      else
      {
        v14 = TST::_CellID_default_instance_;
      }

      return TST::CellID::MergeFrom(v12, v14);
    }
  }

  return this;
}

uint64_t *TST::RichTextPayloadArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::RichTextPayloadArchive::Clear(this);

    return TST::RichTextPayloadArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::RichTextPayloadArchive::CopyFrom(uint64_t *this, const TST::RichTextPayloadArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::RichTextPayloadArchive::Clear(this);

    return TST::RichTextPayloadArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::RichTextPayloadArchive::IsInitialized(TST::RichTextPayloadArchive *this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    return 0;
  }

  result = TSP::Reference::IsInitialized(*(this + 3));
  if (!result)
  {
    return result;
  }

  v3 = *(this + 4);
  if ((v3 & 2) != 0)
  {
    result = TSP::Range::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  return (v3 & 4) == 0 || (*(*(this + 5) + 16) & 2) != 0;
}

__n128 TST::RichTextPayloadArchive::InternalSwap(TST::RichTextPayloadArchive *this, TST::RichTextPayloadArchive *a2)
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

TSWP::UIGraphicalAttachment *TST::FormulaEqualsTokenAttachmentArchive::clear_super(TST::FormulaEqualsTokenAttachmentArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSWP::UIGraphicalAttachment::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::FormulaEqualsTokenAttachmentArchive *TST::FormulaEqualsTokenAttachmentArchive::FormulaEqualsTokenAttachmentArchive(TST::FormulaEqualsTokenAttachmentArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8308;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaEqualsTokenAttachmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B8308;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaEqualsTokenAttachmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::FormulaEqualsTokenAttachmentArchive *TST::FormulaEqualsTokenAttachmentArchive::FormulaEqualsTokenAttachmentArchive(TST::FormulaEqualsTokenAttachmentArchive *this, const TST::FormulaEqualsTokenAttachmentArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8308;
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

void TST::FormulaEqualsTokenAttachmentArchive::~FormulaEqualsTokenAttachmentArchive(TST::FormulaEqualsTokenAttachmentArchive *this)
{
  if (this != TST::_FormulaEqualsTokenAttachmentArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::UIGraphicalAttachment::~UIGraphicalAttachment(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::FormulaEqualsTokenAttachmentArchive::~FormulaEqualsTokenAttachmentArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::FormulaEqualsTokenAttachmentArchive::default_instance(TST::FormulaEqualsTokenAttachmentArchive *this)
{
  if (atomic_load_explicit(scc_info_FormulaEqualsTokenAttachmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_FormulaEqualsTokenAttachmentArchive_default_instance_;
}

uint64_t *TST::FormulaEqualsTokenAttachmentArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWP::UIGraphicalAttachment::Clear(this[3]);
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

google::protobuf::internal *TST::FormulaEqualsTokenAttachmentArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v12 = MEMORY[0x223DA03E0](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_2217071DC(a3, v10, v5);
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

unsigned __int8 *TST::FormulaEqualsTokenAttachmentArchive::_InternalSerialize(TST::FormulaEqualsTokenAttachmentArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
    *a2 = 10;
    v6 = *(v5 + 4);
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

    a2 = TSWP::UIGraphicalAttachment::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::FormulaEqualsTokenAttachmentArchive::ByteSizeLong(TSWP::UIGraphicalAttachment **this)
{
  if (this[2])
  {
    v3 = TSWP::UIGraphicalAttachment::ByteSizeLong(this[3]);
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

uint64_t TST::FormulaEqualsTokenAttachmentArchive::MergeFrom(TST::FormulaEqualsTokenAttachmentArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::FormulaEqualsTokenAttachmentArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::FormulaEqualsTokenAttachmentArchive::MergeFrom(uint64_t this, const TST::FormulaEqualsTokenAttachmentArchive *a2)
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

      v6 = MEMORY[0x223DA03E0](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D81080];
    }

    return TSWP::UIGraphicalAttachment::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TST::FormulaEqualsTokenAttachmentArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FormulaEqualsTokenAttachmentArchive::Clear(this);

    return TST::FormulaEqualsTokenAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::FormulaEqualsTokenAttachmentArchive::CopyFrom(uint64_t *this, const TST::FormulaEqualsTokenAttachmentArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FormulaEqualsTokenAttachmentArchive::Clear(this);

    return TST::FormulaEqualsTokenAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::FormulaEqualsTokenAttachmentArchive::InternalSwap(TST::FormulaEqualsTokenAttachmentArchive *this, TST::FormulaEqualsTokenAttachmentArchive *a2)
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

TSD::FillArchive *TST::CellFillStandIn::clear_fill(TST::CellFillStandIn *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::FillArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::CellFillStandIn *TST::CellFillStandIn::CellFillStandIn(TST::CellFillStandIn *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B83B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellFillStandIn_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 47) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2834B83B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellFillStandIn_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 47) = 0;
  *(this + 5) = 0;
  return this;
}

TST::CellFillStandIn *TST::CellFillStandIn::CellFillStandIn(TST::CellFillStandIn *this, const TST::CellFillStandIn *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B83B8;
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
  *(this + 47) = *(a2 + 47);
  *(this + 2) = v7;
  return this;
}

void TST::CellFillStandIn::~CellFillStandIn(TST::CellFillStandIn *this)
{
  if (this != TST::_CellFillStandIn_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x223D9F940]();
    MEMORY[0x223DA1450](v2, 0x10A1C4042C41316);
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::CellFillStandIn::~CellFillStandIn(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::CellFillStandIn::default_instance(TST::CellFillStandIn *this)
{
  if (atomic_load_explicit(scc_info_CellFillStandIn_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_CellFillStandIn_default_instance_;
}

uint64_t *TST::CellFillStandIn::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSD::FillArchive::Clear(this[3]);
  }

  if ((v2 & 0xFE) != 0)
  {
    *(v1 + 35) = 0;
    *(v1 + 32) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 39) = 0;
  }

  if ((v2 & 0xF0000) != 0)
  {
    *(v1 + 47) = 0;
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

google::protobuf::internal *TST::CellFillStandIn::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v112 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v112) & 1) == 0)
  {
    while (1)
    {
      v7 = (v112 + 1);
      v8 = *v112;
      if (*v112 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v112, (v9 - 128));
          v112 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_160;
          }

          v7 = TagFallback;
          v8 = v15;
          goto LABEL_7;
        }

        v7 = (v112 + 2);
      }

      v112 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_111;
          }

          *(a1 + 16) |= 1u;
          v10 = *(a1 + 24);
          if (!v10)
          {
            v11 = *(a1 + 8);
            if (v11)
            {
              v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
            }

            v12 = MEMORY[0x223DA0280](v11);
            LODWORD(v10) = v12;
            *(a1 + 24) = v12;
            v7 = v112;
          }

          v13 = sub_22170B318(a3, v10, v7);
          goto LABEL_118;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_111;
          }

          v5 |= 2u;
          v47 = (v7 + 1);
          v46 = *v7;
          if ((v46 & 0x8000000000000000) == 0)
          {
            goto LABEL_70;
          }

          v48 = *v47;
          v46 = (v48 << 7) + v46 - 128;
          if (v48 < 0)
          {
            v94 = google::protobuf::internal::VarintParseSlow64(v7, v46);
            v112 = v94;
            *(a1 + 32) = v95 != 0;
            if (!v94)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v47 = (v7 + 2);
LABEL_70:
            v112 = v47;
            *(a1 + 32) = v46 != 0;
          }

          goto LABEL_119;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_111;
          }

          v5 |= 4u;
          v35 = (v7 + 1);
          v34 = *v7;
          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_50;
          }

          v36 = *v35;
          v34 = (v36 << 7) + v34 - 128;
          if (v36 < 0)
          {
            v86 = google::protobuf::internal::VarintParseSlow64(v7, v34);
            v112 = v86;
            *(a1 + 33) = v87 != 0;
            if (!v86)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v35 = (v7 + 2);
LABEL_50:
            v112 = v35;
            *(a1 + 33) = v34 != 0;
          }

          goto LABEL_119;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_111;
          }

          v5 |= 8u;
          v41 = (v7 + 1);
          v40 = *v7;
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_60;
          }

          v42 = *v41;
          v40 = (v42 << 7) + v40 - 128;
          if (v42 < 0)
          {
            v90 = google::protobuf::internal::VarintParseSlow64(v7, v40);
            v112 = v90;
            *(a1 + 34) = v91 != 0;
            if (!v90)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v41 = (v7 + 2);
LABEL_60:
            v112 = v41;
            *(a1 + 34) = v40 != 0;
          }

          goto LABEL_119;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_111;
          }

          v5 |= 0x10u;
          v26 = (v7 + 1);
          v25 = *v7;
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          v27 = *v26;
          v25 = (v27 << 7) + v25 - 128;
          if (v27 < 0)
          {
            v80 = google::protobuf::internal::VarintParseSlow64(v7, v25);
            v112 = v80;
            *(a1 + 35) = v81 != 0;
            if (!v80)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v26 = (v7 + 2);
LABEL_35:
            v112 = v26;
            *(a1 + 35) = v25 != 0;
          }

          goto LABEL_119;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_111;
          }

          v5 |= 0x20u;
          v53 = (v7 + 1);
          v52 = *v7;
          if ((v52 & 0x8000000000000000) == 0)
          {
            goto LABEL_80;
          }

          v54 = *v53;
          v52 = (v54 << 7) + v52 - 128;
          if (v54 < 0)
          {
            v98 = google::protobuf::internal::VarintParseSlow64(v7, v52);
            v112 = v98;
            *(a1 + 36) = v99 != 0;
            if (!v98)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v53 = (v7 + 2);
LABEL_80:
            v112 = v53;
            *(a1 + 36) = v52 != 0;
          }

          goto LABEL_119;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_111;
          }

          v5 |= 0x40u;
          v59 = (v7 + 1);
          v58 = *v7;
          if ((v58 & 0x8000000000000000) == 0)
          {
            goto LABEL_90;
          }

          v60 = *v59;
          v58 = (v60 << 7) + v58 - 128;
          if (v60 < 0)
          {
            v102 = google::protobuf::internal::VarintParseSlow64(v7, v58);
            v112 = v102;
            *(a1 + 37) = v103 != 0;
            if (!v102)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v59 = (v7 + 2);
LABEL_90:
            v112 = v59;
            *(a1 + 37) = v58 != 0;
          }

          goto LABEL_119;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_111;
          }

          v5 |= 0x80u;
          v44 = (v7 + 1);
          v43 = *v7;
          if ((v43 & 0x8000000000000000) == 0)
          {
            goto LABEL_65;
          }

          v45 = *v44;
          v43 = (v45 << 7) + v43 - 128;
          if (v45 < 0)
          {
            v92 = google::protobuf::internal::VarintParseSlow64(v7, v43);
            v112 = v92;
            *(a1 + 38) = v93 != 0;
            if (!v92)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v44 = (v7 + 2);
LABEL_65:
            v112 = v44;
            *(a1 + 38) = v43 != 0;
          }

          goto LABEL_119;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_111;
          }

          v5 |= 0x100u;
          v68 = (v7 + 1);
          v67 = *v7;
          if ((v67 & 0x8000000000000000) == 0)
          {
            goto LABEL_105;
          }

          v69 = *v68;
          v67 = (v69 << 7) + v67 - 128;
          if (v69 < 0)
          {
            v108 = google::protobuf::internal::VarintParseSlow64(v7, v67);
            v112 = v108;
            *(a1 + 39) = v109 != 0;
            if (!v108)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v68 = (v7 + 2);
LABEL_105:
            v112 = v68;
            *(a1 + 39) = v67 != 0;
          }

          goto LABEL_119;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_111;
          }

          v5 |= 0x200u;
          v32 = (v7 + 1);
          v31 = *v7;
          if ((v31 & 0x8000000000000000) == 0)
          {
            goto LABEL_45;
          }

          v33 = *v32;
          v31 = (v33 << 7) + v31 - 128;
          if (v33 < 0)
          {
            v84 = google::protobuf::internal::VarintParseSlow64(v7, v31);
            v112 = v84;
            *(a1 + 40) = v85 != 0;
            if (!v84)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v32 = (v7 + 2);
LABEL_45:
            v112 = v32;
            *(a1 + 40) = v31 != 0;
          }

          goto LABEL_119;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_111;
          }

          v5 |= 0x400u;
          v65 = (v7 + 1);
          v64 = *v7;
          if ((v64 & 0x8000000000000000) == 0)
          {
            goto LABEL_100;
          }

          v66 = *v65;
          v64 = (v66 << 7) + v64 - 128;
          if (v66 < 0)
          {
            v106 = google::protobuf::internal::VarintParseSlow64(v7, v64);
            v112 = v106;
            *(a1 + 41) = v107 != 0;
            if (!v106)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v65 = (v7 + 2);
LABEL_100:
            v112 = v65;
            *(a1 + 41) = v64 != 0;
          }

          goto LABEL_119;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_111;
          }

          v5 |= 0x800u;
          v23 = (v7 + 1);
          v22 = *v7;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            v78 = google::protobuf::internal::VarintParseSlow64(v7, v22);
            v112 = v78;
            *(a1 + 42) = v79 != 0;
            if (!v78)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v23 = (v7 + 2);
LABEL_30:
            v112 = v23;
            *(a1 + 42) = v22 != 0;
          }

          goto LABEL_119;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_111;
          }

          v5 |= 0x1000u;
          v29 = (v7 + 1);
          v28 = *v7;
          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_40;
          }

          v30 = *v29;
          v28 = (v30 << 7) + v28 - 128;
          if (v30 < 0)
          {
            v82 = google::protobuf::internal::VarintParseSlow64(v7, v28);
            v112 = v82;
            *(a1 + 43) = v83 != 0;
            if (!v82)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v29 = (v7 + 2);
LABEL_40:
            v112 = v29;
            *(a1 + 43) = v28 != 0;
          }

          goto LABEL_119;
        case 0xEu:
          if (v8 != 112)
          {
            goto LABEL_111;
          }

          v5 |= 0x2000u;
          v56 = (v7 + 1);
          v55 = *v7;
          if ((v55 & 0x8000000000000000) == 0)
          {
            goto LABEL_85;
          }

          v57 = *v56;
          v55 = (v57 << 7) + v55 - 128;
          if (v57 < 0)
          {
            v100 = google::protobuf::internal::VarintParseSlow64(v7, v55);
            v112 = v100;
            *(a1 + 44) = v101 != 0;
            if (!v100)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v56 = (v7 + 2);
LABEL_85:
            v112 = v56;
            *(a1 + 44) = v55 != 0;
          }

          goto LABEL_119;
        case 0xFu:
          if (v8 != 120)
          {
            goto LABEL_111;
          }

          v5 |= 0x4000u;
          v20 = (v7 + 1);
          v19 = *v7;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if (v21 < 0)
          {
            v76 = google::protobuf::internal::VarintParseSlow64(v7, v19);
            v112 = v76;
            *(a1 + 45) = v77 != 0;
            if (!v76)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v20 = (v7 + 2);
LABEL_25:
            v112 = v20;
            *(a1 + 45) = v19 != 0;
          }

          goto LABEL_119;
        case 0x10u:
          if (v8 != 128)
          {
            goto LABEL_111;
          }

          v5 |= 0x8000u;
          v38 = (v7 + 1);
          v37 = *v7;
          if ((v37 & 0x8000000000000000) == 0)
          {
            goto LABEL_55;
          }

          v39 = *v38;
          v37 = (v39 << 7) + v37 - 128;
          if (v39 < 0)
          {
            v88 = google::protobuf::internal::VarintParseSlow64(v7, v37);
            v112 = v88;
            *(a1 + 46) = v89 != 0;
            if (!v88)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v38 = (v7 + 2);
LABEL_55:
            v112 = v38;
            *(a1 + 46) = v37 != 0;
          }

          goto LABEL_119;
        case 0x11u:
          if (v8 != 136)
          {
            goto LABEL_111;
          }

          v5 |= 0x10000u;
          v17 = (v7 + 1);
          v16 = *v7;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_20;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if (v18 < 0)
          {
            v74 = google::protobuf::internal::VarintParseSlow64(v7, v16);
            v112 = v74;
            *(a1 + 47) = v75 != 0;
            if (!v74)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v17 = (v7 + 2);
LABEL_20:
            v112 = v17;
            *(a1 + 47) = v16 != 0;
          }

          goto LABEL_119;
        case 0x12u:
          if (v8 != 144)
          {
            goto LABEL_111;
          }

          v5 |= 0x20000u;
          v50 = (v7 + 1);
          v49 = *v7;
          if ((v49 & 0x8000000000000000) == 0)
          {
            goto LABEL_75;
          }

          v51 = *v50;
          v49 = (v51 << 7) + v49 - 128;
          if (v51 < 0)
          {
            v96 = google::protobuf::internal::VarintParseSlow64(v7, v49);
            v112 = v96;
            *(a1 + 48) = v97 != 0;
            if (!v96)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v50 = (v7 + 2);
LABEL_75:
            v112 = v50;
            *(a1 + 48) = v49 != 0;
          }

          goto LABEL_119;
        case 0x13u:
          if (v8 != 152)
          {
            goto LABEL_111;
          }

          v5 |= 0x40000u;
          v62 = (v7 + 1);
          v61 = *v7;
          if ((v61 & 0x8000000000000000) == 0)
          {
            goto LABEL_95;
          }

          v63 = *v62;
          v61 = (v63 << 7) + v61 - 128;
          if (v63 < 0)
          {
            v104 = google::protobuf::internal::VarintParseSlow64(v7, v61);
            v112 = v104;
            *(a1 + 49) = v105 != 0;
            if (!v104)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v62 = (v7 + 2);
LABEL_95:
            v112 = v62;
            *(a1 + 49) = v61 != 0;
          }

          goto LABEL_119;
        case 0x14u:
          if (v8 != 160)
          {
            goto LABEL_111;
          }

          v5 |= 0x80000u;
          v71 = (v7 + 1);
          v70 = *v7;
          if ((v70 & 0x8000000000000000) == 0)
          {
            goto LABEL_110;
          }

          v72 = *v71;
          v70 = (v72 << 7) + v70 - 128;
          if (v72 < 0)
          {
            v110 = google::protobuf::internal::VarintParseSlow64(v7, v70);
            v112 = v110;
            *(a1 + 50) = v111 != 0;
            if (!v110)
            {
              goto LABEL_160;
            }
          }

          else
          {
            v71 = (v7 + 2);
LABEL_110:
            v112 = v71;
            *(a1 + 50) = v70 != 0;
          }

          goto LABEL_119;
        default:
LABEL_111:
          if (v8)
          {
            v73 = (v8 & 7) == 4;
          }

          else
          {
            v73 = 1;
          }

          if (v73)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_118:
          v112 = v13;
          if (!v13)
          {
LABEL_160:
            v112 = 0;
            goto LABEL_2;
          }

LABEL_119:
          if (sub_221567030(a3, &v112))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v112;
}

unsigned __int8 *TST::CellFillStandIn::_InternalSerialize(TST::CellFillStandIn *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
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
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_35:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 33);
  *a2 = 24;
  a2[1] = v13;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 34);
  *a2 = 32;
  a2[1] = v14;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v15 = *(this + 35);
  *a2 = 40;
  a2[1] = v15;
  a2 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 36);
  *a2 = 48;
  a2[1] = v16;
  a2 += 2;
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_47:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 37);
  *a2 = 56;
  a2[1] = v17;
  a2 += 2;
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_50:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 38);
  *a2 = 64;
  a2[1] = v18;
  a2 += 2;
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_53:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 39);
  *a2 = 72;
  a2[1] = v19;
  a2 += 2;
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_56:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 40);
  *a2 = 80;
  a2[1] = v20;
  a2 += 2;
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_59:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 41);
  *a2 = 88;
  a2[1] = v21;
  a2 += 2;
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_65;
  }

LABEL_62:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 42);
  *a2 = 96;
  a2[1] = v22;
  a2 += 2;
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_68;
  }

LABEL_65:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v23 = *(this + 43);
  *a2 = 104;
  a2[1] = v23;
  a2 += 2;
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_71;
  }

LABEL_68:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 44);
  *a2 = 112;
  a2[1] = v24;
  a2 += 2;
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_74;
  }

LABEL_71:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 45);
  *a2 = 120;
  a2[1] = v25;
  a2 += 2;
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_77;
  }

LABEL_74:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 46);
  *a2 = 384;
  a2[2] = v26;
  a2 += 3;
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_80;
  }

LABEL_77:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(this + 47);
  *a2 = 392;
  a2[2] = v27;
  a2 += 3;
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_83;
  }

LABEL_80:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v28 = *(this + 48);
  *a2 = 400;
  a2[2] = v28;
  a2 += 3;
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_86;
  }

LABEL_83:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v29 = *(this + 49);
  *a2 = 408;
  a2[2] = v29;
  a2 += 3;
  if ((v5 & 0x80000) != 0)
  {
LABEL_86:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(this + 50);
    *a2 = 416;
    a2[2] = v30;
    a2 += 3;
  }

LABEL_89:
  v31 = *(this + 1);
  if ((v31 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v31 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::CellFillStandIn::ByteSizeLong(TST::CellFillStandIn *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::FillArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  v5 = vdupq_n_s32(v2);
  if ((v2 & 0xFE) != 0)
  {
    v6.i64[0] = 0x200000002;
    v6.i64[1] = 0x200000002;
    v3 += vaddlvq_u32(vandq_s8(vshlq_u32(v5, xmmword_2217E2240), v6)) + (v2 & 2) + ((v2 >> 5) & 2) + ((v2 >> 6) & 2);
  }

  if ((v2 & 0xFF00) != 0)
  {
    v7.i64[0] = 0x200000002;
    v7.i64[1] = 0x200000002;
    v8 = (v2 >> 13) & 2;
    v9 = vaddvq_s32(vandq_s8(vshlq_u32(v5, xmmword_2217F5640), v7));
    if ((v2 & 0x8000) != 0)
    {
      v3 += v9 + ((v2 >> 11) & 2) + ((v2 >> 12) & 2) + v8 + 3;
    }

    else
    {
      v3 += v9 + ((v2 >> 11) & 2) + ((v2 >> 12) & 2) + v8;
    }
  }

  if ((v2 & 0xF0000) != 0)
  {
    v10 = v3 + 3;
    if ((v2 & 0x10000) == 0)
    {
      v10 = v3;
    }

    if ((v2 & 0x20000) != 0)
    {
      v10 += 3;
    }

    if ((v2 & 0x40000) != 0)
    {
      v10 += 3;
    }

    if ((v2 & 0x80000) != 0)
    {
      v3 = v10 + 3;
    }

    else
    {
      v3 = v10;
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

uint64_t TST::CellFillStandIn::MergeFrom(TST::CellFillStandIn *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellFillStandIn::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellFillStandIn::MergeFrom(uint64_t this, const TST::CellFillStandIn *a2)
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

        v6 = MEMORY[0x223DA0280](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80488];
      }

      this = TSD::FillArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_42;
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
        goto LABEL_8;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(v3 + 33) = *(a2 + 33);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(v3 + 34) = *(a2 + 34);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_45;
    }

LABEL_44:
    *(v3 + 35) = *(a2 + 35);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_46;
    }

LABEL_45:
    *(v3 + 36) = *(a2 + 36);
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
      *(v3 + 38) = *(a2 + 38);
      goto LABEL_13;
    }

LABEL_46:
    *(v3 + 37) = *(a2 + 37);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 39) = *(a2 + 39);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_50;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 40) = *(a2 + 40);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v3 + 41) = *(a2 + 41);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v3 + 42) = *(a2 + 42);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v3 + 43) = *(a2 + 43);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

LABEL_54:
    *(v3 + 45) = *(a2 + 45);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_53:
  *(v3 + 44) = *(a2 + 44);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_54;
  }

LABEL_22:
  if ((v5 & 0x8000) != 0)
  {
LABEL_23:
    *(v3 + 46) = *(a2 + 46);
  }

LABEL_24:
  *(v3 + 16) |= v5;
LABEL_25:
  if ((v5 & 0xF0000) == 0)
  {
    return this;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 47) = *(a2 + 47);
    if ((v5 & 0x20000) == 0)
    {
LABEL_28:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

LABEL_58:
      *(v3 + 49) = *(a2 + 49);
      if ((v5 & 0x80000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  *(v3 + 48) = *(a2 + 48);
  if ((v5 & 0x40000) != 0)
  {
    goto LABEL_58;
  }

LABEL_29:
  if ((v5 & 0x80000) != 0)
  {
LABEL_30:
    *(v3 + 50) = *(a2 + 50);
  }

LABEL_31:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t *TST::CellFillStandIn::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellFillStandIn::Clear(this);

    return TST::CellFillStandIn::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CellFillStandIn::CopyFrom(uint64_t *this, const TST::CellFillStandIn *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellFillStandIn::Clear(this);

    return TST::CellFillStandIn::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::CellFillStandIn::IsInitialized(TSD::FillArchive **this)
{
  if (this[2])
  {
    return TSD::FillArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

__n128 TST::CellFillStandIn::InternalSwap(TST::CellFillStandIn *this, TST::CellFillStandIn *a2)
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
  LOWORD(v8) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v8;
  LOBYTE(v8) = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v8;
  return result;
}

TSWP::SelectionArchive *TST::FormulaSelectionArchive::clear_super(TST::FormulaSelectionArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSWP::SelectionArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::FormulaSelectionArchive *TST::FormulaSelectionArchive::FormulaSelectionArchive(TST::FormulaSelectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8468;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B8468;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TST::FormulaSelectionArchive *TST::FormulaSelectionArchive::FormulaSelectionArchive(TST::FormulaSelectionArchive *this, const TST::FormulaSelectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8468;
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

void TST::FormulaSelectionArchive::~FormulaSelectionArchive(TST::FormulaSelectionArchive *this)
{
  if (this != TST::_FormulaSelectionArchive_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x223DA0020]();
    MEMORY[0x223DA1450](v2, 0x10A1C40ADBBBB6CLL);
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::FormulaSelectionArchive::~FormulaSelectionArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::FormulaSelectionArchive::default_instance(TST::FormulaSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_FormulaSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_FormulaSelectionArchive_default_instance_;
}

uint64_t *TST::FormulaSelectionArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWP::SelectionArchive::Clear(this[3]);
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

google::protobuf::internal *TST::FormulaSelectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v23) & 1) == 0)
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
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = MEMORY[0x223DA03D0](v17);
            LODWORD(v16) = v18;
            *(a1 + 24) = v18;
            v7 = v23;
          }

          v12 = sub_22170814C(a3, v16, v7);
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

        v23 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v13 = (v7 + 1);
      LODWORD(v14) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v13;
      v14 = (v14 + (v15 << 7) - 128);
      if ((v15 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_23:
        v23 = v13;
        *(a1 + 32) = v14;
        goto LABEL_30;
      }

      v21 = google::protobuf::internal::VarintParseSlow32(v7, v14);
      v23 = v21;
      *(a1 + 32) = v22;
      if (!v21)
      {
LABEL_37:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_221567030(a3, &v23))
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

unsigned __int8 *TST::FormulaSelectionArchive::_InternalSerialize(TST::FormulaSelectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::SelectionArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 8);
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

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::FormulaSelectionArchive::ByteSizeLong(TST::FormulaSelectionArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSWP::SelectionArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v3 += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
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

uint64_t TST::FormulaSelectionArchive::MergeFrom(TST::FormulaSelectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::FormulaSelectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::FormulaSelectionArchive::MergeFrom(uint64_t this, const TST::FormulaSelectionArchive *a2)
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

        v6 = MEMORY[0x223DA03D0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D81068];
      }

      this = TSWP::SelectionArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TST::FormulaSelectionArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FormulaSelectionArchive::Clear(this);

    return TST::FormulaSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::FormulaSelectionArchive::CopyFrom(uint64_t *this, const TST::FormulaSelectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FormulaSelectionArchive::Clear(this);

    return TST::FormulaSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::FormulaSelectionArchive::IsInitialized(TST::FormulaSelectionArchive *this)
{
  if (*(this + 16))
  {
    return MEMORY[0x2821EBC30](*(this + 3));
  }

  else
  {
    return 0;
  }
}

uint64_t *TST::FormulaSelectionArchive::InternalSwap(TST::FormulaSelectionArchive *this, TST::FormulaSelectionArchive *a2)
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

TSD::StrokeArchive *TST::CellBorderArchive::clear_top_stroke(TST::CellBorderArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::StrokeArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::StrokeArchive *TST::CellBorderArchive::clear_right_stroke(TST::CellBorderArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSD::StrokeArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::StrokeArchive *TST::CellBorderArchive::clear_bottom_stroke(TST::CellBorderArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSD::StrokeArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::StrokeArchive *TST::CellBorderArchive::clear_left_stroke(TST::CellBorderArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSD::StrokeArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TST::CellBorderArchive *TST::CellBorderArchive::CellBorderArchive(TST::CellBorderArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8518;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellBorderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834B8518;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellBorderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TST::CellBorderArchive *TST::CellBorderArchive::CellBorderArchive(TST::CellBorderArchive *this, const TST::CellBorderArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8518;
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
  *(this + 56) = *(a2 + 56);
  return this;
}

void TST::CellBorderArchive::~CellBorderArchive(TST::CellBorderArchive *this)
{
  sub_2216663E4(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::CellBorderArchive::~CellBorderArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_2216663E4(uint64_t *result)
{
  if (result != &TST::_CellBorderArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v2, 0x10A1C4078DB9C03);
    }

    if (v1[4])
    {
      v3 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v3, 0x10A1C4078DB9C03);
    }

    if (v1[5])
    {
      v4 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v4, 0x10A1C4078DB9C03);
    }

    result = v1[6];
    if (result)
    {
      MEMORY[0x223D9F990]();

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TST::CellBorderArchive::default_instance(TST::CellBorderArchive *this)
{
  if (atomic_load_explicit(scc_info_CellBorderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_CellBorderArchive_default_instance_;
}

google::protobuf::internal *TST::CellBorderArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v45 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v45) & 1) == 0)
  {
    while (1)
    {
      v7 = (v45 + 1);
      v8 = *v45;
      if ((*v45 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v45, (v9 - 128));
      v45 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_84;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 > 6)
        {
          if (v10 == 7)
          {
            if (v8 == 58)
            {
              *(a1 + 16) |= 8u;
              v26 = *(a1 + 48);
              if (!v26)
              {
                v33 = *(a1 + 8);
                if (v33)
                {
                  v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
                }

                v34 = MEMORY[0x223DA0290](v33);
                LODWORD(v26) = v34;
                *(a1 + 48) = v34;
LABEL_63:
                v7 = v45;
              }

LABEL_64:
              v35 = sub_22170B248(a3, v26, v7);
LABEL_65:
              v45 = v35;
              if (!v35)
              {
                goto LABEL_84;
              }

              goto LABEL_66;
            }

LABEL_68:
            if (v8)
            {
              v36 = (v8 & 7) == 4;
            }

            else
            {
              v36 = 1;
            }

            if (v36)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v35 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_65;
          }

          if (v10 != 8 || v8 != 64)
          {
            goto LABEL_68;
          }

          v5 |= 0x80u;
          v22 = (v7 + 1);
          LODWORD(v21) = *v7;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_40;
          }

          v23 = *v22;
          v21 = (v21 + (v23 << 7) - 128);
          if ((v23 & 0x80000000) == 0)
          {
            v22 = (v7 + 2);
LABEL_40:
            v45 = v22;
            *(a1 + 68) = v21;
            goto LABEL_66;
          }

          v43 = google::protobuf::internal::VarintParseSlow64(v7, v21);
          v45 = v43;
          *(a1 + 68) = v44;
          if (!v43)
          {
LABEL_84:
            v45 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 == 5)
          {
            if (v8 == 42)
            {
              *(a1 + 16) |= 4u;
              v26 = *(a1 + 40);
              if (!v26)
              {
                v29 = *(a1 + 8);
                if (v29)
                {
                  v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
                }

                v30 = MEMORY[0x223DA0290](v29);
                LODWORD(v26) = v30;
                *(a1 + 40) = v30;
                goto LABEL_63;
              }

              goto LABEL_64;
            }

            goto LABEL_68;
          }

          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_68;
          }

          v5 |= 0x40u;
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
            v45 = v16;
            *(a1 + 64) = v15;
            goto LABEL_66;
          }

          v39 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v45 = v39;
          *(a1 + 64) = v40;
          if (!v39)
          {
            goto LABEL_84;
          }
        }
      }

      else if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 16) |= 2u;
            v26 = *(a1 + 32);
            if (!v26)
            {
              v31 = *(a1 + 8);
              if (v31)
              {
                v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
              }

              v32 = MEMORY[0x223DA0290](v31);
              LODWORD(v26) = v32;
              *(a1 + 32) = v32;
              goto LABEL_63;
            }

            goto LABEL_64;
          }

          goto LABEL_68;
        }

        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_68;
        }

        v5 |= 0x20u;
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
          v45 = v19;
          *(a1 + 60) = v18;
          goto LABEL_66;
        }

        v41 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v45 = v41;
        *(a1 + 60) = v42;
        if (!v41)
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v26 = *(a1 + 24);
            if (!v26)
            {
              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v28 = MEMORY[0x223DA0290](v27);
              LODWORD(v26) = v28;
              *(a1 + 24) = v28;
              goto LABEL_63;
            }

            goto LABEL_64;
          }

          goto LABEL_68;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_68;
        }

        v5 |= 0x10u;
        v13 = (v7 + 1);
        LODWORD(v12) = *v7;
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v13;
        v12 = (v12 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_18:
          v45 = v13;
          *(a1 + 56) = v12;
          goto LABEL_66;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v45 = v37;
        *(a1 + 56) = v38;
        if (!v37)
        {
          goto LABEL_84;
        }
      }

LABEL_66:
      if (sub_221567030(a3, &v45))
      {
        goto LABEL_2;
      }
    }

    v7 = (v45 + 2);
LABEL_6:
    v45 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v45;
}

unsigned __int8 *TST::CellBorderArchive::_InternalSerialize(TST::CellBorderArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 14);
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
        if ((v5 & 2) != 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
      if ((v5 & 2) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_41:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(this + 15);
    *a2 = 32;
    if (v22 > 0x7F)
    {
      a2[1] = v22 | 0x80;
      v23 = v22 >> 7;
      if (v22 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v23 | 0x80;
          v24 = v23 >> 7;
          ++a2;
          v25 = v23 >> 14;
          v23 >>= 7;
        }

        while (v25);
        *(a2 - 1) = v24;
        if ((v5 & 4) != 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        a2[2] = v23;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      a2[1] = v22;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_52;
      }
    }

LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_62:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v32 = *(this + 16);
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
        if ((v5 & 8) != 0)
        {
          goto LABEL_73;
        }
      }

      else
      {
        a2[2] = v33;
        a2 += 3;
        if ((v5 & 8) != 0)
        {
          goto LABEL_73;
        }
      }
    }

    else
    {
      a2[1] = v32;
      a2 += 2;
      if ((v5 & 8) != 0)
      {
        goto LABEL_73;
      }
    }

LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_83;
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

  a2 = TSD::StrokeArchive::_InternalSerialize(v6, v8, a3);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v5 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_31:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 4);
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

  a2 = TSD::StrokeArchive::_InternalSerialize(v16, v18, a3);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_41;
  }

LABEL_5:
  if ((v5 & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_52:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 5);
  *a2 = 42;
  v27 = *(v26 + 5);
  if (v27 > 0x7F)
  {
    a2[1] = v27 | 0x80;
    v29 = v27 >> 7;
    if (v27 >> 14)
    {
      v28 = a2 + 3;
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
      a2[2] = v29;
      v28 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v27;
    v28 = a2 + 2;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v26, v28, a3);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_62;
  }

LABEL_7:
  if ((v5 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_73:
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

  a2 = TSD::StrokeArchive::_InternalSerialize(v36, v38, a3);
  if ((v5 & 0x80) != 0)
  {
LABEL_83:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v42 = *(this + 17);
    *a2 = 64;
    if (v42 > 0x7F)
    {
      a2[1] = v42 | 0x80;
      v43 = v42 >> 7;
      if (v42 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v43 | 0x80;
          v44 = v43 >> 7;
          ++a2;
          v45 = v43 >> 14;
          v43 >>= 7;
        }

        while (v45);
        *(a2 - 1) = v44;
      }

      else
      {
        a2[2] = v43;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v42;
      a2 += 2;
    }
  }

LABEL_92:
  v46 = *(this + 1);
  if ((v46 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v46 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::CellBorderArchive::ByteSizeLong(TST::CellBorderArchive *this)
{
  v2 = *(this + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_33;
  }

  if (*(this + 16))
  {
    v4 = TSD::StrokeArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((*(this + 16) & 2) != 0)
  {
LABEL_7:
    v5 = TSD::StrokeArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = TSD::StrokeArchive::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v7 = TSD::StrokeArchive::ByteSizeLong(*(this + 6));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_17:
  v8 = *(this + 14);
  if (v8 < 0)
  {
    v9 = 11;
  }

  else
  {
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v9;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    v12 = *(this + 16);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v13;
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_21:
  v10 = *(this + 15);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v11;
  if ((v2 & 0x40) != 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  if (v2 < 0)
  {
LABEL_29:
    v14 = *(this + 17);
    if (v14 < 0)
    {
      v15 = 11;
    }

    else
    {
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v15;
  }

LABEL_33:
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

uint64_t TST::CellBorderArchive::MergeFrom(TST::CellBorderArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellBorderArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TST::CellBorderArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellBorderArchive::Clear(this);

    return TST::CellBorderArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CellBorderArchive::CopyFrom(uint64_t *this, const TST::CellBorderArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellBorderArchive::Clear(this);

    return TST::CellBorderArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TST::CellBorderArchive::InternalSwap(TST::CellBorderArchive *this, TST::CellBorderArchive *a2)
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
  return result;
}

TSP::Reference *TST::DefaultCellStylesContainerArchive::clear_table_style_network(TST::DefaultCellStylesContainerArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TST::DefaultCellStylesContainerArchive::clear_row_uids(uint64_t this)
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

uint64_t TST::DefaultCellStylesContainerArchive::clear_column_uids(uint64_t this)
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

TST::DefaultCellStylesContainerArchive *TST::DefaultCellStylesContainerArchive::DefaultCellStylesContainerArchive(TST::DefaultCellStylesContainerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B85C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 10) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 4) = 0u;
  *(this + 11) = 0;
  *(this + 12) = a2;
  if (atomic_load_explicit(scc_info_DefaultCellStylesContainerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 112) = 0;
  *(this + 13) = 0;
  return this;
}

void sub_2216673B0(_Unwind_Exception *a1)
{
  if (*(v1 + 92) >= 1)
  {
    sub_2216FF128(v5);
  }

  sub_2216FF1A4((v1 + 76), v4);
  sub_221567974(v3);
  sub_221567974(v2);
  _Unwind_Resume(a1);
}

TST::DefaultCellStylesContainerArchive *TST::DefaultCellStylesContainerArchive::DefaultCellStylesContainerArchive(TST::DefaultCellStylesContainerArchive *this, const TST::DefaultCellStylesContainerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B85C8;
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
  v15 = *(a2 + 18);
  if (v15)
  {
    sub_2210BBC64(this + 18, v15);
    v16 = *(this + 10);
    *(this + 18) += *(a2 + 18);
    memcpy(v16, *(a2 + 10), 4 * *(a2 + 18));
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  v17 = *(a2 + 22);
  if (v17)
  {
    sub_2210BBC64(this + 22, v17);
    v18 = *(this + 12);
    *(this + 22) += *(a2 + 22);
    memcpy(v18, *(a2 + 12), 4 * *(a2 + 22));
  }

  v19 = *(a2 + 1);
  if (v19)
  {
    sub_22156734C(v4, (v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 13) = 0;
  *(this + 112) = *(a2 + 112);
  return this;
}

void sub_2216675F8(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x1081C407D3F2757);
  if (*(v1 + 92) >= 1)
  {
    v5 = *(v1 + 96);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(v1 + 76) >= 1)
  {
    v8 = *(v1 + 80);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  sub_221567974(v2);
  sub_221567974((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::DefaultCellStylesContainerArchive::~DefaultCellStylesContainerArchive(TST::DefaultCellStylesContainerArchive *this)
{
  if (this != &TST::_DefaultCellStylesContainerArchive_default_instance_)
  {
    v2 = *(this + 13);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  if (*(this + 23) >= 1)
  {
    v3 = *(this + 12);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(this + 19) >= 1)
  {
    v6 = *(this + 10);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  sub_221567974(this + 6);
  sub_221567974(this + 3);
}

{
  TST::DefaultCellStylesContainerArchive::~DefaultCellStylesContainerArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::DefaultCellStylesContainerArchive::default_instance(TST::DefaultCellStylesContainerArchive *this)
{
  if (atomic_load_explicit(scc_info_DefaultCellStylesContainerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_DefaultCellStylesContainerArchive_default_instance_;
}

uint64_t *TST::DefaultCellStylesContainerArchive::Clear(uint64_t *this)
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

  *(v1 + 72) = 0;
  *(v1 + 88) = 0;
  if (*(v1 + 16))
  {
    this = TSP::Reference::Clear(*(v1 + 104));
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 104) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_221567398(v8);
  }

  return this;
}

google::protobuf::internal *TST::DefaultCellStylesContainerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v54 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v54) & 1) == 0)
  {
    while (1)
    {
      v7 = (v54 + 1);
      v8 = *v54;
      if ((*v54 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v54, (v9 - 128));
      v54 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_101;
      }

      v7 = TagFallback;
      v8 = v50;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_90;
          }

          *(a1 + 16) |= 1u;
          v24 = *(a1 + 104);
          if (!v24)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = MEMORY[0x223DA0390](v25);
            LODWORD(v24) = v26;
            *(a1 + 104) = v26;
            v7 = v54;
          }

          v27 = sub_22170B7F8(a3, v24, v7);
          goto LABEL_97;
        }

        if (v10 != 2)
        {
          if (v10 != 3 || v8 != 26)
          {
            goto LABEL_90;
          }

          v12 = v7 - 1;
          while (2)
          {
            v13 = (v12 + 1);
            v54 = (v12 + 1);
            v14 = *(a1 + 64);
            if (!v14)
            {
LABEL_17:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v14 = *(a1 + 64);
              v15 = *v14;
              goto LABEL_18;
            }

            v20 = *(a1 + 56);
            v15 = *v14;
            if (v20 >= *v14)
            {
              if (v15 == *(a1 + 60))
              {
                goto LABEL_17;
              }

LABEL_18:
              *v14 = v15 + 1;
              v16 = MEMORY[0x223DA0360](*(a1 + 48));
              LODWORD(v17) = v16;
              v18 = *(a1 + 56);
              v19 = *(a1 + 64) + 8 * v18;
              *(a1 + 56) = v18 + 1;
              *(v19 + 8) = v16;
              v13 = v54;
            }

            else
            {
              *(a1 + 56) = v20 + 1;
              v17 = *&v14[2 * v20 + 2];
            }

            v12 = sub_2216F813C(a3, v17, v13);
            v54 = v12;
            if (!v12)
            {
              goto LABEL_101;
            }

            if (*a3 <= v12 || *v12 != 26)
            {
              goto LABEL_98;
            }

            continue;
          }
        }

        if (v8 != 18)
        {
          goto LABEL_90;
        }

        v34 = v7 - 1;
        while (2)
        {
          v35 = (v34 + 1);
          v54 = (v34 + 1);
          v36 = *(a1 + 40);
          if (!v36)
          {
LABEL_58:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v36 = *(a1 + 40);
            v37 = *v36;
            goto LABEL_59;
          }

          v42 = *(a1 + 32);
          v37 = *v36;
          if (v42 >= *v36)
          {
            if (v37 == *(a1 + 36))
            {
              goto LABEL_58;
            }

LABEL_59:
            *v36 = v37 + 1;
            v38 = MEMORY[0x223DA0360](*(a1 + 24));
            LODWORD(v39) = v38;
            v40 = *(a1 + 32);
            v41 = *(a1 + 40) + 8 * v40;
            *(a1 + 32) = v40 + 1;
            *(v41 + 8) = v38;
            v35 = v54;
          }

          else
          {
            *(a1 + 32) = v42 + 1;
            v39 = *&v36[2 * v42 + 2];
          }

          v34 = sub_2216F813C(a3, v39, v35);
          v54 = v34;
          if (!v34)
          {
            goto LABEL_101;
          }

          if (*a3 <= v34 || *v34 != 18)
          {
            goto LABEL_98;
          }

          continue;
        }
      }

      if (v10 == 4)
      {
        if (v8 == 32)
        {
          v28 = v7 - 1;
          while (1)
          {
            v54 = (v28 + 1);
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

            v54 = v28;
            v32 = *(a1 + 72);
            if (v32 == *(a1 + 76))
            {
              v33 = v32 + 1;
              sub_2210BBC64((a1 + 72), v32 + 1);
              *(*(a1 + 80) + 4 * v32) = v29;
              v28 = v54;
            }

            else
            {
              *(*(a1 + 80) + 4 * v32) = v29;
              v33 = v32 + 1;
            }

            *(a1 + 72) = v33;
            if (!v28)
            {
              goto LABEL_101;
            }

            if (*a3 <= v28 || *v28 != 32)
            {
              goto LABEL_98;
            }
          }
        }

        if (v8 != 34)
        {
          goto LABEL_90;
        }

LABEL_89:
        v27 = google::protobuf::internal::PackedUInt32Parser();
LABEL_97:
        v54 = v27;
        if (!v27)
        {
          goto LABEL_101;
        }

        goto LABEL_98;
      }

      if (v10 == 5)
      {
        if (v8 == 40)
        {
          v43 = v7 - 1;
          while (1)
          {
            v54 = (v43 + 1);
            v44 = v43[1];
            if (v43[1] < 0)
            {
              v45 = v44 + (v43[2] << 7);
              v44 = v45 - 128;
              if (v43[2] < 0)
              {
                v43 = google::protobuf::internal::VarintParseSlow32((v43 + 1), (v45 - 128));
                v44 = v46;
              }

              else
              {
                v43 += 3;
              }
            }

            else
            {
              v43 += 2;
            }

            v54 = v43;
            v47 = *(a1 + 88);
            if (v47 == *(a1 + 92))
            {
              v48 = v47 + 1;
              sub_2210BBC64((a1 + 88), v47 + 1);
              *(*(a1 + 96) + 4 * v47) = v44;
              v43 = v54;
            }

            else
            {
              *(*(a1 + 96) + 4 * v47) = v44;
              v48 = v47 + 1;
            }

            *(a1 + 88) = v48;
            if (!v43)
            {
              break;
            }

            if (*a3 <= v43 || *v43 != 40)
            {
              goto LABEL_98;
            }
          }

LABEL_101:
          v54 = 0;
          goto LABEL_2;
        }

        if (v8 == 42)
        {
          goto LABEL_89;
        }

LABEL_90:
        if (v8)
        {
          v53 = (v8 & 7) == 4;
        }

        else
        {
          v53 = 1;
        }

        if (v53)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v27 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_97;
      }

      if (v10 != 6 || v8 != 48)
      {
        goto LABEL_90;
      }

      v5 |= 2u;
      v22 = (v7 + 1);
      v21 = *v7;
      if ((v21 & 0x8000000000000000) != 0)
      {
        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if (v23 < 0)
        {
          v51 = google::protobuf::internal::VarintParseSlow64(v7, v21);
          v54 = v51;
          *(a1 + 112) = v52 != 0;
          if (!v51)
          {
            goto LABEL_101;
          }

          goto LABEL_98;
        }

        v22 = (v7 + 2);
      }

      v54 = v22;
      *(a1 + 112) = v21 != 0;
LABEL_98:
      if (sub_221567030(a3, &v54))
      {
        goto LABEL_2;
      }
    }

    v7 = (v54 + 2);
LABEL_6:
    v54 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v54;
}

unsigned __int8 *TST::DefaultCellStylesContainerArchive::_InternalSerialize(TST::DefaultCellStylesContainerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 13);
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

  v12 = *(this + 8);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
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

      a2 = TSP::UUID::_InternalSerialize(v14, v16, a3);
    }
  }

  v20 = *(this + 14);
  if (v20)
  {
    for (j = 0; j != v20; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v22 = *(*(this + 8) + 8 * j + 8);
      *a2 = 26;
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

      a2 = TSP::UUID::_InternalSerialize(v22, v24, a3);
    }
  }

  v28 = *(this + 18);
  if (v28 >= 1)
  {
    for (k = 0; k != v28; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v30 = *(*(this + 10) + 4 * k);
      *a2 = 32;
      if (v30 > 0x7F)
      {
        a2[1] = v30 | 0x80;
        v31 = v30 >> 7;
        if (v30 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v31 | 0x80;
            v32 = v31 >> 7;
            ++a2;
            v33 = v31 >> 14;
            v31 >>= 7;
          }

          while (v33);
          *(a2 - 1) = v32;
        }

        else
        {
          a2[2] = v31;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v30;
        a2 += 2;
      }
    }
  }

  v34 = *(this + 22);
  if (v34 >= 1)
  {
    for (m = 0; m != v34; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v36 = *(*(this + 12) + 4 * m);
      *a2 = 40;
      if (v36 > 0x7F)
      {
        a2[1] = v36 | 0x80;
        v37 = v36 >> 7;
        if (v36 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v37 | 0x80;
            v38 = v37 >> 7;
            ++a2;
            v39 = v37 >> 14;
            v37 >>= 7;
          }

          while (v39);
          *(a2 - 1) = v38;
        }

        else
        {
          a2[2] = v37;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v36;
        a2 += 2;
      }
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v40 = *(this + 112);
    *a2 = 48;
    a2[1] = v40;
    a2 += 2;
  }

  v41 = *(this + 1);
  if ((v41 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v41 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::DefaultCellStylesContainerArchive::ByteSizeLong(TSP::Reference **this)
{
  if (this[2])
  {
    v3 = TSP::Reference::ByteSizeLong(this[13]);
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
      v10 = TSP::UUID::ByteSizeLong(v9);
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
      v17 = TSP::UUID::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v19 = *(this + 18);
  v20 = v18 + v19 + google::protobuf::internal::WireFormatLite::UInt32Size() + *(this + 22) + (this[2] & 2);
  v21 = v20 + v12;
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v21, this + 20);
  }

  else
  {
    *(this + 5) = v21;
    return v20 + v12;
  }
}

uint64_t TST::DefaultCellStylesContainerArchive::MergeFrom(TST::DefaultCellStylesContainerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::DefaultCellStylesContainerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::DefaultCellStylesContainerArchive::MergeFrom(uint64_t this, const TST::DefaultCellStylesContainerArchive *a2)
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

  v15 = *(a2 + 18);
  if (v15)
  {
    v16 = *(v3 + 72);
    sub_2210BBC64((v3 + 72), v16 + v15);
    v17 = *(v3 + 80);
    *(v3 + 72) += *(a2 + 18);
    this = memcpy((v17 + 4 * v16), *(a2 + 10), 4 * *(a2 + 18));
  }

  v18 = *(a2 + 22);
  if (v18)
  {
    v19 = *(v3 + 88);
    sub_2210BBC64((v3 + 88), v19 + v18);
    v20 = *(v3 + 96);
    *(v3 + 88) += *(a2 + 22);
    this = memcpy((v20 + 4 * v19), *(a2 + 12), 4 * *(a2 + 22));
  }

  v21 = *(a2 + 4);
  if ((v21 & 3) != 0)
  {
    if (v21)
    {
      *(v3 + 16) |= 1u;
      v22 = *(v3 + 104);
      if (!v22)
      {
        v23 = *(v3 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = MEMORY[0x223DA0390](v23);
        *(v3 + 104) = v22;
      }

      if (*(a2 + 13))
      {
        v24 = *(a2 + 13);
      }

      else
      {
        v24 = MEMORY[0x277D80A18];
      }

      this = TSP::Reference::MergeFrom(v22, v24);
    }

    if ((v21 & 2) != 0)
    {
      *(v3 + 112) = *(a2 + 112);
    }

    *(v3 + 16) |= v21;
  }

  return this;
}

uint64_t *TST::DefaultCellStylesContainerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DefaultCellStylesContainerArchive::Clear(this);

    return TST::DefaultCellStylesContainerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::DefaultCellStylesContainerArchive::CopyFrom(uint64_t *this, const TST::DefaultCellStylesContainerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DefaultCellStylesContainerArchive::Clear(this);

    return TST::DefaultCellStylesContainerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::DefaultCellStylesContainerArchive::IsInitialized(TST::DefaultCellStylesContainerArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 5) + 8 * v3));
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
    v8 = TSP::UUID::IsInitialized(*(*(this + 8) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
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

__n128 TST::DefaultCellStylesContainerArchive::InternalSwap(TST::DefaultCellStylesContainerArchive *this, TST::DefaultCellStylesContainerArchive *a2)
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
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  v11 = *(this + 11);
  v12 = *(this + 12);
  result = *(a2 + 88);
  *(this + 88) = result;
  *(a2 + 11) = v11;
  *(a2 + 12) = v12;
  v14 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v14;
  LOBYTE(v14) = *(this + 112);
  *(this + 112) = *(a2 + 112);
  *(a2 + 112) = v14;
  return result;
}

uint64_t *TST::MultiTableRemapperArchive::clear_owner_uid_mapper(uint64_t *this)
{
  v1 = *(this + 8);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::OwnerUIDMapperArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSP::UUIDMapArchive *TST::MultiTableRemapperArchive::clear_backing_tables_for_charts(TST::MultiTableRemapperArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUIDMapArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::MultiTableRemapperArchive *TST::MultiTableRemapperArchive::MultiTableRemapperArchive(TST::MultiTableRemapperArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8678;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_MultiTableRemapperArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  return this;
}

TST::MultiTableRemapperArchive *TST::MultiTableRemapperArchive::MultiTableRemapperArchive(TST::MultiTableRemapperArchive *this, const TST::MultiTableRemapperArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8678;
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
    sub_221680DFC(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  *(this + 7) = *(a2 + 7);
  return this;
}

void sub_221668A34(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C40759568C3);
  sub_221680D78((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::MultiTableRemapperArchive::~MultiTableRemapperArchive(TST::MultiTableRemapperArchive *this)
{
  if (this != &TST::_MultiTableRemapperArchive_default_instance_ && *(this + 6))
  {
    v2 = MEMORY[0x223D9FC20]();
    MEMORY[0x223DA1450](v2, 0x10A1C40759568C3);
  }

  sub_2214DFCF8(this + 1);
  sub_221680D78(this + 3);
}

{
  TST::MultiTableRemapperArchive::~MultiTableRemapperArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::MultiTableRemapperArchive::default_instance(TST::MultiTableRemapperArchive *this)
{
  if (atomic_load_explicit(scc_info_MultiTableRemapperArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_MultiTableRemapperArchive_default_instance_;
}

uint64_t *TST::MultiTableRemapperArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::OwnerUIDMapperArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    this = TSP::UUIDMapArchive::Clear(*(v1 + 48));
  }

  if ((v5 & 0x3E) != 0)
  {
    *(v1 + 56) = 0;
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

google::protobuf::internal *TST::MultiTableRemapperArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v50 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v50) & 1) == 0)
  {
    while (1)
    {
      v7 = (v50 + 1);
      v8 = *v50;
      if ((*v50 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v50, (v9 - 128));
      v50 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_89;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 8)
          {
            goto LABEL_67;
          }

          v25 = (v7 + 1);
          v24 = *v7;
          if ((v24 & 0x8000000000000000) != 0)
          {
            v26 = *v25;
            v24 = (v26 << 7) + v24 - 128;
            if ((v26 & 0x80000000) == 0)
            {
              v25 = (v7 + 2);
              goto LABEL_41;
            }

            v50 = google::protobuf::internal::VarintParseSlow64(v7, v24);
            if (!v50)
            {
              goto LABEL_89;
            }
          }

          else
          {
LABEL_41:
            v50 = v25;
          }

          if (v24 > 2)
          {
            sub_2217087CC();
          }

          else
          {
            *(a1 + 16) |= 2u;
            *(a1 + 56) = v24;
          }

          goto LABEL_75;
        }

        if (v10 == 2)
        {
          if (v8 != 16)
          {
            goto LABEL_67;
          }

          v5 |= 4u;
          v39 = (v7 + 1);
          v38 = *v7;
          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_66;
          }

          v40 = *v39;
          v38 = (v40 << 7) + v38 - 128;
          if ((v40 & 0x80000000) == 0)
          {
            v39 = (v7 + 2);
LABEL_66:
            v50 = v39;
            *(a1 + 60) = v38 != 0;
            goto LABEL_75;
          }

          v48 = google::protobuf::internal::VarintParseSlow64(v7, v38);
          v50 = v48;
          *(a1 + 60) = v49 != 0;
          if (!v48)
          {
LABEL_89:
            v50 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 3 || v8 != 24)
          {
            goto LABEL_67;
          }

          v5 |= 8u;
          v17 = (v7 + 1);
          v16 = *v7;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if ((v18 & 0x80000000) == 0)
          {
            v17 = (v7 + 2);
LABEL_27:
            v50 = v17;
            *(a1 + 61) = v16 != 0;
            goto LABEL_75;
          }

          v46 = google::protobuf::internal::VarintParseSlow64(v7, v16);
          v50 = v46;
          *(a1 + 61) = v47 != 0;
          if (!v46)
          {
            goto LABEL_89;
          }
        }
      }

      else
      {
        if (v8 >> 3 <= 5)
        {
          if (v10 != 4)
          {
            if (v10 == 5 && v8 == 42)
            {
              *(a1 + 16) |= 1u;
              v11 = *(a1 + 48);
              if (!v11)
              {
                v12 = *(a1 + 8);
                if (v12)
                {
                  v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
                }

                v13 = MEMORY[0x223DA0310](v12);
                LODWORD(v11) = v13;
                *(a1 + 48) = v13;
                v7 = v50;
              }

              v14 = sub_2216FE24C(a3, v11, v7);
LABEL_74:
              v50 = v14;
              if (!v14)
              {
                goto LABEL_89;
              }

              goto LABEL_75;
            }

LABEL_67:
            if (v8)
            {
              v41 = (v8 & 7) == 4;
            }

            else
            {
              v41 = 1;
            }

            if (v41)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v14 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_74;
          }

          if (v8 != 34)
          {
            goto LABEL_67;
          }

          v27 = (v7 - 1);
          while (2)
          {
            v28 = (v27 + 1);
            v50 = (v27 + 1);
            v29 = *(a1 + 40);
            if (!v29)
            {
LABEL_47:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v29 = *(a1 + 40);
              v30 = *v29;
              goto LABEL_48;
            }

            v34 = *(a1 + 32);
            v30 = *v29;
            if (v34 >= *v29)
            {
              if (v30 == *(a1 + 36))
              {
                goto LABEL_47;
              }

LABEL_48:
              *v29 = v30 + 1;
              v31 = google::protobuf::Arena::CreateMaybeMessage<TSCE::OwnerUIDMapperArchive>(*(a1 + 24));
              v32 = *(a1 + 32);
              v33 = *(a1 + 40) + 8 * v32;
              *(a1 + 32) = v32 + 1;
              *(v33 + 8) = v31;
              v28 = v50;
            }

            else
            {
              *(a1 + 32) = v34 + 1;
              v31 = *&v29[2 * v34 + 2];
            }

            v27 = sub_22170821C(a3, v31, v28);
            v50 = v27;
            if (!v27)
            {
              goto LABEL_89;
            }

            if (*a3 <= v27 || *v27 != 34)
            {
              goto LABEL_75;
            }

            continue;
          }
        }

        if (v10 == 6)
        {
          if (v8 != 48)
          {
            goto LABEL_67;
          }

          v5 |= 0x10u;
          v36 = (v7 + 1);
          v35 = *v7;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_61;
          }

          v37 = *v36;
          v35 = (v37 << 7) + v35 - 128;
          if ((v37 & 0x80000000) == 0)
          {
            v36 = (v7 + 2);
LABEL_61:
            v50 = v36;
            *(a1 + 62) = v35 != 0;
            goto LABEL_75;
          }

          v42 = google::protobuf::internal::VarintParseSlow64(v7, v35);
          v50 = v42;
          *(a1 + 62) = v43 != 0;
          if (!v42)
          {
            goto LABEL_89;
          }
        }

        else
        {
          if (v10 != 7 || v8 != 56)
          {
            goto LABEL_67;
          }

          v5 |= 0x20u;
          v20 = (v7 + 1);
          v19 = *v7;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if ((v21 & 0x80000000) == 0)
          {
            v20 = (v7 + 2);
LABEL_34:
            v50 = v20;
            *(a1 + 63) = v19 != 0;
            goto LABEL_75;
          }

          v44 = google::protobuf::internal::VarintParseSlow64(v7, v19);
          v50 = v44;
          *(a1 + 63) = v45 != 0;
          if (!v44)
          {
            goto LABEL_89;
          }
        }
      }

LABEL_75:
      if (sub_221567030(a3, &v50))
      {
        goto LABEL_2;
      }
    }

    v7 = (v50 + 2);
LABEL_6:
    v50 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v50;
}

unsigned __int8 *TST::MultiTableRemapperArchive::_InternalSerialize(TST::MultiTableRemapperArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        if ((v5 & 4) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_3:
    if ((v5 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

LABEL_16:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(this + 60);
  *a2 = 16;
  a2[1] = v10;
  a2 += 2;
  if ((v5 & 8) != 0)
  {
LABEL_19:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(this + 61);
    *a2 = 24;
    a2[1] = v11;
    a2 += 2;
  }

LABEL_22:
  v12 = *(this + 8);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(this + 5) + 8 * i + 8);
      *a2 = 34;
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

      a2 = TSCE::OwnerUIDMapperArchive::_InternalSerialize(v14, v16, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 6);
    *a2 = 42;
    v21 = *(v20 + 16);
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

    a2 = TSP::UUIDMapArchive::_InternalSerialize(v20, v22, a3);
    if ((v5 & 0x10) == 0)
    {
LABEL_36:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_36;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 62);
  *a2 = 48;
  a2[1] = v26;
  a2 += 2;
  if ((v5 & 0x20) != 0)
  {
LABEL_51:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v27 = *(this + 63);
    *a2 = 56;
    a2[1] = v27;
    a2 += 2;
  }

LABEL_54:
  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v28 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::MultiTableRemapperArchive::RequiredFieldsByteSizeFallback(TST::MultiTableRemapperArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUIDMapArchive::ByteSizeLong(*(this + 6));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  v5 = *(this + 14);
  v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 11;
  }

  v3 += v7;
LABEL_9:
  v8.i64[0] = 0x200000002;
  v8.i64[1] = 0x200000002;
  return v3 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_2217F5630), v8));
}

uint64_t TST::MultiTableRemapperArchive::ByteSizeLong(TSP::UUIDMapArchive **this)
{
  if ((~*(this + 4) & 0x3F) != 0)
  {
    v7 = TST::MultiTableRemapperArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUIDMapArchive::ByteSizeLong(this[6]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = *(this + 14);
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 10;
    }

    v7 = v2 + v3 + v6 + 10;
  }

  v8 = *(this + 8);
  v9 = v7 + v8;
  v10 = this[5];
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = TSCE::OwnerUIDMapperArchive::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v9, this + 20);
  }

  else
  {
    *(this + 5) = v9;
    return v9;
  }
}

uint64_t TST::MultiTableRemapperArchive::MergeFrom(TST::MultiTableRemapperArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::MultiTableRemapperArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::MultiTableRemapperArchive::MergeFrom(uint64_t this, const TST::MultiTableRemapperArchive *a2)
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
    this = sub_221680DFC(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 0x3F) != 0)
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

        v11 = MEMORY[0x223DA0310](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = MEMORY[0x277D80A38];
      }

      this = TSP::UUIDMapArchive::MergeFrom(v11, v13);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_25;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 56) = *(a2 + 14);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(v3 + 60) = *(a2 + 60);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(v3 + 61) = *(a2 + 61);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
LABEL_14:
        *(v3 + 16) |= v10;
        return this;
      }

LABEL_13:
      *(v3 + 63) = *(a2 + 63);
      goto LABEL_14;
    }

LABEL_27:
    *(v3 + 62) = *(a2 + 62);
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return this;
}

uint64_t *TST::MultiTableRemapperArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::MultiTableRemapperArchive::Clear(this);

    return TST::MultiTableRemapperArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::MultiTableRemapperArchive::CopyFrom(uint64_t *this, const TST::MultiTableRemapperArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::MultiTableRemapperArchive::Clear(this);

    return TST::MultiTableRemapperArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::MultiTableRemapperArchive::IsInitialized(TST::MultiTableRemapperArchive *this)
{
  if ((~*(this + 4) & 0x3F) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSCE::OwnerUIDMapperArchive::IsInitialized(*(*(this + 5) + 8 * v2));
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

  result = TSP::UUIDMapArchive::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::MultiTableRemapperArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  result = a2[3];
  this[3] = result;
  a2[3].n128_u64[0] = v7;
  a2[3].n128_u64[1] = v8;
  return result;
}

uint64_t TST::ChangePropagationMapWrapper::clear_style_replace_prototypes(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

uint64_t TST::ChangePropagationMapWrapper::clear_style_replace_replacements(uint64_t this)
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

uint64_t TST::ChangePropagationMapWrapper::clear_style_modify_styles(uint64_t this)
{
  v1 = *(this + 80);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 88) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 80) = 0;
  }

  return this;
}

uint64_t TST::ChangePropagationMapWrapper::clear_style_modify_old_prop_maps(uint64_t this)
{
  v1 = *(this + 104);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 112) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 104) = 0;
  }

  return this;
}

uint64_t TST::ChangePropagationMapWrapper::clear_style_modify_new_prop_maps(uint64_t this)
{
  v1 = *(this + 128);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 136) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 128) = 0;
  }

  return this;
}

uint64_t TST::ChangePropagationMapWrapper::clear_style_delete_prototypes(uint64_t this)
{
  v1 = *(this + 152);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 160) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 152) = 0;
  }

  return this;
}

uint64_t TST::ChangePropagationMapWrapper::clear_style_delete_replacements(uint64_t this)
{
  v1 = *(this + 176);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 184) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 176) = 0;
  }

  return this;
}

TSP::Reference *TST::ChangePropagationMapWrapper::clear_table_preset_replace_prototype(TST::ChangePropagationMapWrapper *this)
{
  result = *(this + 24);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TST::ChangePropagationMapWrapper::clear_table_preset_replace_replacement(TST::ChangePropagationMapWrapper *this)
{
  result = *(this + 25);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TST::ChangePropagationMapWrapper::clear_table_preset_delete_prototype(TST::ChangePropagationMapWrapper *this)
{
  result = *(this + 26);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TST::ChangePropagationMapWrapper::clear_table_preset_delete_replacement(TST::ChangePropagationMapWrapper *this)
{
  result = *(this + 27);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TST::ChangePropagationMapWrapper *TST::ChangePropagationMapWrapper::ChangePropagationMapWrapper(TST::ChangePropagationMapWrapper *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8728;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = a2;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = a2;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 21) = a2;
  *(this + 18) = a2;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  if (atomic_load_explicit(scc_info_ChangePropagationMapWrapper_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  return this;
}

void sub_221669D70(_Unwind_Exception *a1)
{
  sub_2216E381C(v7);
  sub_2216E381C(v6);
  sub_2216E381C(v5);
  sub_2216E381C(v4);
  sub_2216E381C(v3);
  sub_2216E381C(v2);
  sub_2216E381C(v1);
  _Unwind_Resume(a1);
}

TST::ChangePropagationMapWrapper *TST::ChangePropagationMapWrapper::ChangePropagationMapWrapper(TST::ChangePropagationMapWrapper *this, const TST::ChangePropagationMapWrapper *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B8728;
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
    sub_221568514(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    sub_221568514(this + 72, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
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
    sub_221568514(this + 96, v22, (v21 + 8), v20, **(this + 14) - *(this + 26));
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
    sub_221568514(this + 120, v27, (v26 + 8), v25, **(this + 17) - *(this + 32));
    v28 = *(this + 32) + v25;
    *(this + 32) = v28;
    v29 = *(this + 17);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  v30 = *(a2 + 38);
  if (v30)
  {
    v31 = *(a2 + 20);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 144));
    sub_221568514(this + 144, v32, (v31 + 8), v30, **(this + 20) - *(this + 38));
    v33 = *(this + 38) + v30;
    *(this + 38) = v33;
    v34 = *(this + 20);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  v35 = *(a2 + 44);
  if (v35)
  {
    v36 = v4;
    v37 = *(a2 + 23);
    v38 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 168));
    sub_221568514(this + 168, v38, (v37 + 8), v35, **(this + 23) - *(this + 44));
    v39 = *(this + 44) + v35;
    *(this + 44) = v39;
    v40 = *(this + 23);
    v4 = v36;
    if (*v40 < v39)
    {
      *v40 = v39;
    }
  }

  v41 = *(a2 + 1);
  if (v41)
  {
    sub_22156734C(v4, (v41 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v42 = *(a2 + 4);
  if (v42)
  {
    operator new();
  }

  *(this + 24) = 0;
  if ((v42 & 2) != 0)
  {
    operator new();
  }

  *(this + 25) = 0;
  if ((v42 & 4) != 0)
  {
    operator new();
  }

  *(this + 26) = 0;
  if ((v42 & 8) != 0)
  {
    operator new();
  }

  *(this + 27) = 0;
  *(this + 56) = *(a2 + 56);
  return this;
}

void sub_22166A238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  MEMORY[0x223DA1450](v14, 0x1081C407D3F2757);
  sub_2216E381C(v16);
  sub_2216E381C(v15);
  sub_2216E381C(v13);
  sub_2216E381C(v12);
  sub_2216E381C(v11);
  sub_2216E381C(a10);
  sub_2216E381C((v10 + 24));
  _Unwind_Resume(a1);
}

void TST::ChangePropagationMapWrapper::~ChangePropagationMapWrapper(TST::ChangePropagationMapWrapper *this)
{
  sub_22166A380(this);
  sub_2214DFCF8(this + 1);
  sub_2216E381C(this + 21);
  sub_2216E381C(this + 18);
  sub_2216E381C(this + 15);
  sub_2216E381C(this + 12);
  sub_2216E381C(this + 9);
  sub_2216E381C(this + 6);
  sub_2216E381C(this + 3);
}

{
  TST::ChangePropagationMapWrapper::~ChangePropagationMapWrapper(this);

  JUMPOUT(0x223DA1450);
}

void *sub_22166A380(void *result)
{
  if (result != &TST::_ChangePropagationMapWrapper_default_instance_)
  {
    v1 = result;
    v2 = result[24];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[25];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[26];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x223DA1450]();
    }

    result = v1[27];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::ChangePropagationMapWrapper::default_instance(TST::ChangePropagationMapWrapper *this)
{
  if (atomic_load_explicit(scc_info_ChangePropagationMapWrapper_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ChangePropagationMapWrapper_default_instance_;
}

uint64_t *TST::ChangePropagationMapWrapper::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
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

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      this = TSP::Reference::Clear(v10);
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
      this = TSP::Reference::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 128);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 136) + 8);
    do
    {
      v16 = *v15++;
      this = TSP::Reference::Clear(v16);
      --v14;
    }

    while (v14);
    *(v1 + 128) = 0;
  }

  v17 = *(v1 + 152);
  if (v17 >= 1)
  {
    v18 = (*(v1 + 160) + 8);
    do
    {
      v19 = *v18++;
      this = TSP::Reference::Clear(v19);
      --v17;
    }

    while (v17);
    *(v1 + 152) = 0;
  }

  v20 = *(v1 + 176);
  if (v20 >= 1)
  {
    v21 = (*(v1 + 184) + 8);
    do
    {
      v22 = *v21++;
      this = TSP::Reference::Clear(v22);
      --v20;
    }

    while (v20);
    *(v1 + 176) = 0;
  }

  v23 = *(v1 + 16);
  if ((v23 & 0xF) == 0)
  {
    goto LABEL_35;
  }

  if ((v23 & 1) == 0)
  {
    if ((v23 & 2) == 0)
    {
      goto LABEL_32;
    }

LABEL_40:
    this = TSP::Reference::Clear(*(v1 + 200));
    if ((v23 & 4) == 0)
    {
LABEL_33:
      if ((v23 & 8) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    goto LABEL_41;
  }

  this = TSP::Reference::Clear(*(v1 + 192));
  if ((v23 & 2) != 0)
  {
    goto LABEL_40;
  }

LABEL_32:
  if ((v23 & 4) == 0)
  {
    goto LABEL_33;
  }

LABEL_41:
  this = TSP::Reference::Clear(*(v1 + 208));
  if ((v23 & 8) != 0)
  {
LABEL_34:
    this = TSP::Reference::Clear(*(v1 + 216));
  }

LABEL_35:
  v25 = *(v1 + 8);
  v24 = v1 + 8;
  *(v24 + 216) = 0;
  *(v24 + 8) = 0;
  if (v25)
  {

    return sub_221567398(v24);
  }

  return this;
}

google::protobuf::internal *TST::ChangePropagationMapWrapper::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v93 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v93) & 1) == 0)
  {
    while (1)
    {
      v7 = (v93 + 1);
      v8 = *v93;
      if ((*v93 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v93, (v9 - 128));
      v93 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_158;
      }

      v7 = TagFallback;
      v8 = v36;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 6)
      {
        if (v8 >> 3 > 9)
        {
          if (v10 == 10)
          {
            if (v8 != 82)
            {
              goto LABEL_148;
            }

            *(a1 + 16) |= 2u;
            v21 = *(a1 + 200);
            if (v21)
            {
              goto LABEL_144;
            }

            v58 = *(a1 + 8);
            if (v58)
            {
              v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
            }

            v59 = MEMORY[0x223DA0390](v58);
            LODWORD(v21) = v59;
            *(a1 + 200) = v59;
          }

          else if (v10 == 11)
          {
            if (v8 != 90)
            {
              goto LABEL_148;
            }

            *(a1 + 16) |= 4u;
            v21 = *(a1 + 208);
            if (v21)
            {
              goto LABEL_144;
            }

            v87 = *(a1 + 8);
            if (v87)
            {
              v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
            }

            v88 = MEMORY[0x223DA0390](v87);
            LODWORD(v21) = v88;
            *(a1 + 208) = v88;
          }

          else
          {
            if (v10 != 12 || v8 != 98)
            {
              goto LABEL_148;
            }

            *(a1 + 16) |= 8u;
            v21 = *(a1 + 216);
            if (v21)
            {
              goto LABEL_144;
            }

            v33 = *(a1 + 8);
            if (v33)
            {
              v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
            }

            v34 = MEMORY[0x223DA0390](v33);
            LODWORD(v21) = v34;
            *(a1 + 216) = v34;
          }

LABEL_143:
          v7 = v93;
LABEL_144:
          v89 = sub_22170B7F8(a3, v21, v7);
LABEL_145:
          v93 = v89;
          if (!v89)
          {
            goto LABEL_158;
          }

          goto LABEL_146;
        }

        if (v10 != 7)
        {
          if (v10 != 8)
          {
            if (v10 != 9 || v8 != 74)
            {
              goto LABEL_148;
            }

            *(a1 + 16) |= 1u;
            v21 = *(a1 + 192);
            if (!v21)
            {
              v22 = *(a1 + 8);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = MEMORY[0x223DA0390](v22);
              LODWORD(v21) = v23;
              *(a1 + 192) = v23;
              goto LABEL_143;
            }

            goto LABEL_144;
          }

          if (v8 != 66)
          {
            goto LABEL_148;
          }

          v69 = v7 - 1;
          while (2)
          {
            v70 = (v69 + 1);
            v93 = (v69 + 1);
            v71 = *(a1 + 184);
            if (!v71)
            {
LABEL_115:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 168));
              v71 = *(a1 + 184);
              v72 = *v71;
              goto LABEL_116;
            }

            v77 = *(a1 + 176);
            v72 = *v71;
            if (v77 >= *v71)
            {
              if (v72 == *(a1 + 180))
              {
                goto LABEL_115;
              }

LABEL_116:
              *v71 = v72 + 1;
              v73 = MEMORY[0x223DA0390](*(a1 + 168));
              LODWORD(v74) = v73;
              v75 = *(a1 + 176);
              v76 = *(a1 + 184) + 8 * v75;
              *(a1 + 176) = v75 + 1;
              *(v76 + 8) = v73;
              v70 = v93;
            }

            else
            {
              *(a1 + 176) = v77 + 1;
              v74 = *&v71[2 * v77 + 2];
            }

            v69 = sub_22170B7F8(a3, v74, v70);
            v93 = v69;
            if (!v69)
            {
              goto LABEL_158;
            }

            if (*a3 <= v69 || *v69 != 66)
            {
              goto LABEL_146;
            }

            continue;
          }
        }

        if (v8 != 58)
        {
          goto LABEL_148;
        }

        v40 = v7 - 1;
        while (2)
        {
          v41 = (v40 + 1);
          v93 = (v40 + 1);
          v42 = *(a1 + 160);
          if (!v42)
          {
LABEL_71:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144));
            v42 = *(a1 + 160);
            v43 = *v42;
            goto LABEL_72;
          }

          v48 = *(a1 + 152);
          v43 = *v42;
          if (v48 >= *v42)
          {
            if (v43 == *(a1 + 156))
            {
              goto LABEL_71;
            }

LABEL_72:
            *v42 = v43 + 1;
            v44 = MEMORY[0x223DA0390](*(a1 + 144));
            LODWORD(v45) = v44;
            v46 = *(a1 + 152);
            v47 = *(a1 + 160) + 8 * v46;
            *(a1 + 152) = v46 + 1;
            *(v47 + 8) = v44;
            v41 = v93;
          }

          else
          {
            *(a1 + 152) = v48 + 1;
            v45 = *&v42[2 * v48 + 2];
          }

          v40 = sub_22170B7F8(a3, v45, v41);
          v93 = v40;
          if (!v40)
          {
            goto LABEL_158;
          }

          if (*a3 <= v40 || *v40 != 58)
          {
            goto LABEL_146;
          }

          continue;
        }
      }

      if (v8 >> 3 > 3)
      {
        if (v10 != 4)
        {
          if (v10 != 5)
          {
            if (v10 != 6 || v8 != 50)
            {
              goto LABEL_148;
            }

            v24 = v7 - 1;
            while (2)
            {
              v25 = (v24 + 1);
              v93 = (v24 + 1);
              v26 = *(a1 + 136);
              if (!v26)
              {
LABEL_43:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
                v26 = *(a1 + 136);
                v27 = *v26;
                goto LABEL_44;
              }

              v32 = *(a1 + 128);
              v27 = *v26;
              if (v32 >= *v26)
              {
                if (v27 == *(a1 + 132))
                {
                  goto LABEL_43;
                }

LABEL_44:
                *v26 = v27 + 1;
                v28 = MEMORY[0x223DA0390](*(a1 + 120));
                LODWORD(v29) = v28;
                v30 = *(a1 + 128);
                v31 = *(a1 + 136) + 8 * v30;
                *(a1 + 128) = v30 + 1;
                *(v31 + 8) = v28;
                v25 = v93;
              }

              else
              {
                *(a1 + 128) = v32 + 1;
                v29 = *&v26[2 * v32 + 2];
              }

              v24 = sub_22170B7F8(a3, v29, v25);
              v93 = v24;
              if (!v24)
              {
                goto LABEL_158;
              }

              if (*a3 <= v24 || *v24 != 50)
              {
                goto LABEL_146;
              }

              continue;
            }
          }

          if (v8 != 42)
          {
            goto LABEL_148;
          }

          v78 = v7 - 1;
          while (2)
          {
            v79 = (v78 + 1);
            v93 = (v78 + 1);
            v80 = *(a1 + 112);
            if (!v80)
            {
LABEL_128:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
              v80 = *(a1 + 112);
              v81 = *v80;
              goto LABEL_129;
            }

            v86 = *(a1 + 104);
            v81 = *v80;
            if (v86 >= *v80)
            {
              if (v81 == *(a1 + 108))
              {
                goto LABEL_128;
              }

LABEL_129:
              *v80 = v81 + 1;
              v82 = MEMORY[0x223DA0390](*(a1 + 96));
              LODWORD(v83) = v82;
              v84 = *(a1 + 104);
              v85 = *(a1 + 112) + 8 * v84;
              *(a1 + 104) = v84 + 1;
              *(v85 + 8) = v82;
              v79 = v93;
            }

            else
            {
              *(a1 + 104) = v86 + 1;
              v83 = *&v80[2 * v86 + 2];
            }

            v78 = sub_22170B7F8(a3, v83, v79);
            v93 = v78;
            if (!v78)
            {
              goto LABEL_158;
            }

            if (*a3 <= v78 || *v78 != 42)
            {
              goto LABEL_146;
            }

            continue;
          }
        }

        if (v8 != 34)
        {
          goto LABEL_148;
        }

        v49 = v7 - 1;
        while (2)
        {
          v50 = (v49 + 1);
          v93 = (v49 + 1);
          v51 = *(a1 + 88);
          if (!v51)
          {
LABEL_84:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v51 = *(a1 + 88);
            v52 = *v51;
            goto LABEL_85;
          }

          v57 = *(a1 + 80);
          v52 = *v51;
          if (v57 >= *v51)
          {
            if (v52 == *(a1 + 84))
            {
              goto LABEL_84;
            }

LABEL_85:
            *v51 = v52 + 1;
            v53 = MEMORY[0x223DA0390](*(a1 + 72));
            LODWORD(v54) = v53;
            v55 = *(a1 + 80);
            v56 = *(a1 + 88) + 8 * v55;
            *(a1 + 80) = v55 + 1;
            *(v56 + 8) = v53;
            v50 = v93;
          }

          else
          {
            *(a1 + 80) = v57 + 1;
            v54 = *&v51[2 * v57 + 2];
          }

          v49 = sub_22170B7F8(a3, v54, v50);
          v93 = v49;
          if (!v49)
          {
            goto LABEL_158;
          }

          if (*a3 <= v49 || *v49 != 34)
          {
            goto LABEL_146;
          }

          continue;
        }
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          if (v10 != 3 || v8 != 26)
          {
LABEL_148:
            if (v8)
            {
              v90 = (v8 & 7) == 4;
            }

            else
            {
              v90 = 1;
            }

            if (v90)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v89 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_145;
          }

          v12 = v7 - 1;
          while (2)
          {
            v13 = (v12 + 1);
            v93 = (v12 + 1);
            v14 = *(a1 + 64);
            if (!v14)
            {
LABEL_18:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v14 = *(a1 + 64);
              v15 = *v14;
              goto LABEL_19;
            }

            v20 = *(a1 + 56);
            v15 = *v14;
            if (v20 >= *v14)
            {
              if (v15 == *(a1 + 60))
              {
                goto LABEL_18;
              }

LABEL_19:
              *v14 = v15 + 1;
              v16 = MEMORY[0x223DA0390](*(a1 + 48));
              LODWORD(v17) = v16;
              v18 = *(a1 + 56);
              v19 = *(a1 + 64) + 8 * v18;
              *(a1 + 56) = v18 + 1;
              *(v19 + 8) = v16;
              v13 = v93;
            }

            else
            {
              *(a1 + 56) = v20 + 1;
              v17 = *&v14[2 * v20 + 2];
            }

            v12 = sub_22170B7F8(a3, v17, v13);
            v93 = v12;
            if (!v12)
            {
              goto LABEL_158;
            }

            if (*a3 <= v12 || *v12 != 26)
            {
              goto LABEL_146;
            }

            continue;
          }
        }

        if (v8 != 18)
        {
          goto LABEL_148;
        }

        v60 = v7 - 1;
        while (2)
        {
          v61 = (v60 + 1);
          v93 = (v60 + 1);
          v62 = *(a1 + 40);
          if (!v62)
          {
LABEL_102:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v62 = *(a1 + 40);
            v63 = *v62;
            goto LABEL_103;
          }

          v68 = *(a1 + 32);
          v63 = *v62;
          if (v68 >= *v62)
          {
            if (v63 == *(a1 + 36))
            {
              goto LABEL_102;
            }

LABEL_103:
            *v62 = v63 + 1;
            v64 = MEMORY[0x223DA0390](*(a1 + 24));
            LODWORD(v65) = v64;
            v66 = *(a1 + 32);
            v67 = *(a1 + 40) + 8 * v66;
            *(a1 + 32) = v66 + 1;
            *(v67 + 8) = v64;
            v61 = v93;
          }

          else
          {
            *(a1 + 32) = v68 + 1;
            v65 = *&v62[2 * v68 + 2];
          }

          v60 = sub_22170B7F8(a3, v65, v61);
          v93 = v60;
          if (!v60)
          {
            goto LABEL_158;
          }

          if (*a3 <= v60 || *v60 != 18)
          {
            goto LABEL_146;
          }

          continue;
        }
      }

      if (v8 != 8)
      {
        goto LABEL_148;
      }

      v5 |= 0x10u;
      v38 = (v7 + 1);
      LODWORD(v37) = *v7;
      if ((v37 & 0x80) == 0)
      {
        goto LABEL_67;
      }

      v39 = *v38;
      v37 = (v37 + (v39 << 7) - 128);
      if ((v39 & 0x80000000) == 0)
      {
        v38 = (v7 + 2);
LABEL_67:
        v93 = v38;
        *(a1 + 224) = v37;
        goto LABEL_146;
      }

      v91 = google::protobuf::internal::VarintParseSlow64(v7, v37);
      v93 = v91;
      *(a1 + 224) = v92;
      if (!v91)
      {
LABEL_158:
        v93 = 0;
        goto LABEL_2;
      }

LABEL_146:
      if (sub_221567030(a3, &v93))
      {
        goto LABEL_2;
      }
    }

    v7 = (v93 + 2);
LABEL_6:
    v93 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v93;
}

unsigned __int8 *TST::ChangePropagationMapWrapper::_InternalSerialize(TST::ChangePropagationMapWrapper *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 56);
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

      a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
    }
  }

  v18 = *(this + 14);
  if (v18)
  {
    for (j = 0; j != v18; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v20 = *(*(this + 8) + 8 * j + 8);
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

      a2 = TSP::Reference::_InternalSerialize(v20, v22, a3);
    }
  }

  v26 = *(this + 20);
  if (v26)
  {
    for (k = 0; k != v26; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v28 = *(*(this + 11) + 8 * k + 8);
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

  v34 = *(this + 26);
  if (v34)
  {
    for (m = 0; m != v34; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v36 = *(*(this + 14) + 8 * m + 8);
      *a2 = 42;
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

      a2 = TSP::Reference::_InternalSerialize(v36, v38, a3);
    }
  }

  v42 = *(this + 32);
  if (v42)
  {
    for (n = 0; n != v42; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v44 = *(*(this + 17) + 8 * n + 8);
      *a2 = 50;
      v45 = *(v44 + 5);
      if (v45 > 0x7F)
      {
        a2[1] = v45 | 0x80;
        v47 = v45 >> 7;
        if (v45 >> 14)
        {
          v46 = a2 + 3;
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
          a2[2] = v47;
          v46 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v45;
        v46 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v44, v46, a3);
    }
  }

  v50 = *(this + 38);
  if (v50)
  {
    for (ii = 0; ii != v50; ++ii)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v52 = *(*(this + 20) + 8 * ii + 8);
      *a2 = 58;
      v53 = *(v52 + 5);
      if (v53 > 0x7F)
      {
        a2[1] = v53 | 0x80;
        v55 = v53 >> 7;
        if (v53 >> 14)
        {
          v54 = a2 + 3;
          do
          {
            *(v54 - 1) = v55 | 0x80;
            v56 = v55 >> 7;
            ++v54;
            v57 = v55 >> 14;
            v55 >>= 7;
          }

          while (v57);
          *(v54 - 1) = v56;
        }

        else
        {
          a2[2] = v55;
          v54 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v53;
        v54 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v52, v54, a3);
    }
  }

  v58 = *(this + 44);
  if (v58)
  {
    for (jj = 0; jj != v58; ++jj)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v60 = *(*(this + 23) + 8 * jj + 8);
      *a2 = 66;
      v61 = *(v60 + 5);
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

      a2 = TSP::Reference::_InternalSerialize(v60, v62, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v66 = *(this + 24);
    *a2 = 74;
    v67 = *(v66 + 5);
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

    a2 = TSP::Reference::_InternalSerialize(v66, v68, a3);
    if ((v5 & 2) == 0)
    {
LABEL_97:
      if ((v5 & 4) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_120;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_97;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v72 = *(this + 25);
  *a2 = 82;
  v73 = *(v72 + 5);
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

  a2 = TSP::Reference::_InternalSerialize(v72, v74, a3);
  if ((v5 & 4) == 0)
  {
LABEL_98:
    if ((v5 & 8) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_130;
  }

LABEL_120:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v78 = *(this + 26);
  *a2 = 90;
  v79 = *(v78 + 5);
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

  a2 = TSP::Reference::_InternalSerialize(v78, v80, a3);
  if ((v5 & 8) != 0)
  {
LABEL_130:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v84 = *(this + 27);
    *a2 = 98;
    v85 = *(v84 + 5);
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

    a2 = TSP::Reference::_InternalSerialize(v84, v86, a3);
  }

LABEL_140:
  v90 = *(this + 1);
  if ((v90 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v90 & 0xFFFFFFFFFFFFFFFELL) + 8);
}