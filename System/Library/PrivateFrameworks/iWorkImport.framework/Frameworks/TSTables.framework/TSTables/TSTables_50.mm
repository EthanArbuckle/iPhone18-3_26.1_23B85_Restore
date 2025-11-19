uint64_t TST::GroupByArchive_AggregatorArchive::MergeFrom(TST::GroupByArchive_AggregatorArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::GroupByArchive_AggregatorArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::GroupByArchive_AggregatorArchive::MergeFrom(uint64_t this, const TST::GroupByArchive_AggregatorArchive *a2)
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_AggNodeArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TST::_GroupByArchive_AggNodeArchive_default_instance_;
      }

      return TST::GroupByArchive_AggNodeArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TST::GroupByArchive_AggregatorArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive_AggregatorArchive::Clear(this);

    return TST::GroupByArchive_AggregatorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::GroupByArchive_AggregatorArchive::CopyFrom(uint64_t *this, const TST::GroupByArchive_AggregatorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive_AggregatorArchive::Clear(this);

    return TST::GroupByArchive_AggregatorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::GroupByArchive_AggregatorArchive::IsInitialized(TST::GroupByArchive_AggregatorArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSP::UUID::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TST::GroupByArchive_AggNodeArchive::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::GroupByArchive_AggregatorArchive::InternalSwap(TST::GroupByArchive_AggregatorArchive *this, TST::GroupByArchive_AggregatorArchive *a2)
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

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::clear_row_uids(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7CD8;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this, const TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834B7CD8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_2215679F8(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::~GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567974(this + 2);
}

{
  TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::~GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::default_instance(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive_default_instance_;
}

uint64_t *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
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

google::protobuf::internal *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  if ((sub_221567030(a3, &v21) & 1) == 0)
  {
    while (1)
    {
      v5 = (v21 + 1);
      v6 = *v21;
      if ((*v21 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v7 - 128));
      v21 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v19;
LABEL_6:
      if (v6 == 10)
      {
        v9 = v5 - 1;
        while (1)
        {
          v10 = (v9 + 1);
          v21 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v17 = *(a1 + 24);
          v12 = *v11;
          if (v17 < *v11)
          {
            *(a1 + 24) = v17 + 1;
            v14 = *&v11[2 * v17 + 2];
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
          v13 = MEMORY[0x223DA0360](*(a1 + 16));
          LODWORD(v14) = v13;
          v15 = *(a1 + 24);
          v16 = *(a1 + 32) + 8 * v15;
          *(a1 + 24) = v15 + 1;
          *(v16 + 8) = v13;
          v10 = v21;
LABEL_22:
          v9 = sub_2216F813C(a3, v14, v10);
          v21 = v9;
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
        return v21;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v21 = google::protobuf::internal::UnknownFieldParse();
      if (!v21)
      {
        return 0;
      }

LABEL_14:
      if (sub_221567030(a3, &v21))
      {
        return v21;
      }
    }

    v5 = (v21 + 2);
LABEL_5:
    v21 = v5;
    goto LABEL_6;
  }

  return v21;
}

unsigned __int8 *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::_InternalSerialize(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSP::UUID::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::ByteSizeLong(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this)
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

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::MergeFrom(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::MergeFrom(uint64_t this, const TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *a2)
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
    this = sub_2215679F8(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::Clear(this);

    return TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::CopyFrom(uint64_t *this, const TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::Clear(this);

    return TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::IsInitialized(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this)
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
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::InternalSwap(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *this, TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive *a2)
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

uint64_t *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::clear_cell_value(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSCE::CellValueArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::clear_formats(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSK::FormatStructArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

uint64_t *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::clear_row_uid_lookup_sets(uint64_t *this)
{
  v1 = *(this + 20);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (this[11] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::IndexSetArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 80) = 0;
  }

  return this;
}

TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::GroupByArchive_GroupNodeArchive_FormatManagerArchive(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7D88;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 9) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (atomic_load_explicit(scc_info_GroupByArchive_GroupNodeArchive_FormatManagerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

void sub_221658130(_Unwind_Exception *a1)
{
  sub_2216806E8(v3);
  sub_221680664(v2);
  sub_2216805E0(v1);
  _Unwind_Resume(a1);
}

TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::GroupByArchive_GroupNodeArchive_FormatManagerArchive(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this, const TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B7D88;
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
    sub_22168076C(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_22168082C(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_2216808EC(this + 72, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
    v18 = *(this + 20) + v15;
    *(this + 20) = v18;
    v19 = *(this + 11);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 1);
  if (v20)
  {
    sub_22156734C(v4, (v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 12) = 0;
  return this;
}

void sub_22165835C(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x10A1C405ED7AD85);
  sub_2216806E8(v4);
  sub_221680664(v2);
  sub_2216805E0((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::~GroupByArchive_GroupNodeArchive_FormatManagerArchive(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this)
{
  if (this != &TST::_GroupByArchive_GroupNodeArchive_FormatManagerArchive_default_instance_)
  {
    v2 = *(this + 12);
    if (v2)
    {
      TSCE::CellValueArchive::~CellValueArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_2216806E8(this + 9);
  sub_221680664(this + 6);
  sub_2216805E0(this + 3);
}

{
  TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::~GroupByArchive_GroupNodeArchive_FormatManagerArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::default_instance(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupByArchive_GroupNodeArchive_FormatManagerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_GroupByArchive_GroupNodeArchive_FormatManagerArchive_default_instance_;
}

uint64_t *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSK::FormatStructArchive::Clear(v4);
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
      this = TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::Clear(v7);
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
      this = TSCE::IndexSetArchive::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSCE::CellValueArchive::Clear(*(v1 + 96));
  }

  v12 = *(v1 + 8);
  v11 = v1 + 8;
  *(v11 + 8) = 0;
  if (v12)
  {

    return sub_221567398(v11);
  }

  return this;
}

google::protobuf::internal *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v42 = a2;
  while (1)
  {
LABEL_2:
    if (sub_221567030(a3, &v42))
    {
      return v42;
    }

    v5 = (v42 + 1);
    v6 = *v42;
    if ((*v42 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v42 + 2);
LABEL_6:
      v42 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v42, (v7 - 128));
    v42 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v40;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 != 3)
      {
        if (v8 != 4 || v6 != 34)
        {
          goto LABEL_60;
        }

        v19 = (v5 - 1);
        while (1)
        {
          v20 = (v19 + 1);
          v42 = (v19 + 1);
          v21 = *(a1 + 88);
          if (!v21)
          {
            goto LABEL_31;
          }

          v26 = *(a1 + 80);
          v22 = *v21;
          if (v26 < *v21)
          {
            *(a1 + 80) = v26 + 1;
            v23 = *&v21[2 * v26 + 2];
            goto LABEL_35;
          }

          if (v22 == *(a1 + 84))
          {
LABEL_31:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v21 = *(a1 + 88);
            v22 = *v21;
          }

          *v21 = v22 + 1;
          v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(*(a1 + 72));
          v24 = *(a1 + 80);
          v25 = *(a1 + 88) + 8 * v24;
          *(a1 + 80) = v24 + 1;
          *(v25 + 8) = v23;
          v20 = v42;
LABEL_35:
          v19 = sub_2216F83AC(a3, v23, v20);
          v42 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 34)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 != 26)
      {
        goto LABEL_60;
      }

      v30 = (v5 - 1);
      while (1)
      {
        v31 = (v30 + 1);
        v42 = (v30 + 1);
        v32 = *(a1 + 64);
        if (!v32)
        {
          goto LABEL_50;
        }

        v37 = *(a1 + 56);
        v33 = *v32;
        if (v37 < *v32)
        {
          *(a1 + 56) = v37 + 1;
          v34 = *&v32[2 * v37 + 2];
          goto LABEL_54;
        }

        if (v33 == *(a1 + 60))
        {
LABEL_50:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
          v32 = *(a1 + 64);
          v33 = *v32;
        }

        *v32 = v33 + 1;
        v34 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive>(*(a1 + 48));
        v35 = *(a1 + 56);
        v36 = *(a1 + 64) + 8 * v35;
        *(a1 + 56) = v35 + 1;
        *(v36 + 8) = v34;
        v31 = v42;
LABEL_54:
        v30 = sub_221707B9C(a3, v34, v31);
        v42 = v30;
        if (!v30)
        {
          return 0;
        }

        if (*a3 <= v30 || *v30 != 26)
        {
          goto LABEL_2;
        }
      }
    }

    if (v8 != 1)
    {
      if (v8 != 2 || v6 != 18)
      {
        goto LABEL_60;
      }

      v10 = v5 - 1;
      while (1)
      {
        v11 = (v10 + 1);
        v42 = (v10 + 1);
        v12 = *(a1 + 40);
        if (!v12)
        {
          goto LABEL_16;
        }

        v18 = *(a1 + 32);
        v13 = *v12;
        if (v18 < *v12)
        {
          *(a1 + 32) = v18 + 1;
          v15 = *&v12[2 * v18 + 2];
          goto LABEL_20;
        }

        if (v13 == *(a1 + 36))
        {
LABEL_16:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v12 = *(a1 + 40);
          v13 = *v12;
        }

        *v12 = v13 + 1;
        v14 = MEMORY[0x223DA02D0](*(a1 + 24));
        LODWORD(v15) = v14;
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v14;
        v11 = v42;
LABEL_20:
        v10 = sub_2216FEC0C(a3, v15, v11);
        v42 = v10;
        if (!v10)
        {
          return 0;
        }

        if (*a3 <= v10 || *v10 != 18)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v27 = *(a1 + 96);
      if (!v27)
      {
        v28 = *(a1 + 8);
        if (v28)
        {
          v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
        }

        v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v28);
        *(a1 + 96) = v27;
        v5 = v42;
      }

      v29 = sub_2216FB46C(a3, v27, v5);
      goto LABEL_67;
    }

LABEL_60:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v29 = google::protobuf::internal::UnknownFieldParse();
LABEL_67:
    v42 = v29;
    if (!v29)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v42;
}

unsigned __int8 *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::_InternalSerialize(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 12);
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

    a2 = TSCE::CellValueArchive::_InternalSerialize(v5, v7, a3);
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
      v14 = *(v13 + 12);
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

      a2 = TSK::FormatStructArchive::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 14);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(this + 8) + 8 * j + 8);
      *a2 = 26;
      v22 = *(v21 + 10);
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

      a2 = TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(this + 20);
  if (v27)
  {
    for (k = 0; k != v27; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v29 = *(*(this + 11) + 8 * k + 8);
      *a2 = 34;
      v30 = *(v29 + 10);
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

      a2 = TSCE::IndexSetArchive::_InternalSerialize(v29, v31, a3);
    }
  }

  v35 = *(this + 1);
  if ((v35 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v35 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::ByteSizeLong(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this)
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
      v7 = TSK::FormatStructArchive::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 14);
  v9 = v2 + v8;
  v10 = *(this + 8);
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
      v14 = TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 20);
  v16 = v9 + v15;
  v17 = *(this + 11);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = TSCE::IndexSetArchive::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  if (*(this + 16))
  {
    v22 = TSCE::CellValueArchive::ByteSizeLong(*(this + 12));
    v16 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v16, this + 20);
  }

  else
  {
    *(this + 5) = v16;
    return v16;
  }
}

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::MergeFrom(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::MergeFrom(uint64_t this, const TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *a2)
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
    this = sub_22168076C(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_22168082C(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    this = sub_2216808EC(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  if (*(a2 + 16))
  {
    v20 = *(a2 + 12);
    *(v3 + 16) |= 1u;
    v21 = *(v3 + 96);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v22);
      *(v3 + 96) = v21;
      v20 = *(a2 + 12);
    }

    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = &TSCE::_CellValueArchive_default_instance_;
    }

    return TSCE::CellValueArchive::MergeFrom(v21, v23);
  }

  return this;
}

uint64_t *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::Clear(this);

    return TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::CopyFrom(uint64_t *this, const TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::Clear(this);

    return TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::IsInitialized(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSK::FormatStructArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_2216591C8(this + 48);
  if (result)
  {
    v6 = *(this + 20);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = TSCE::IndexSetArchive::IsInitialized(*(*(this + 11) + 8 * v6));
      v6 = v7;
      if (!v8)
      {
        return 0;
      }
    }

    if ((*(this + 16) & 1) == 0)
    {
      return 1;
    }

    result = TSCE::CellValueArchive::IsInitialized(*(this + 12));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2216591C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v3 = v1--;
      v4 = *(*(a1 + 16) + 8 * v1 + 8);
      v5 = *(v4 + 24);
      while (v5 >= 1)
      {
        v6 = v5 - 1;
        IsInitialized = TSP::UUID::IsInitialized(*(*(v4 + 32) + 8 * v5));
        v5 = v6;
        if ((IsInitialized & 1) == 0)
        {
          return 0;
        }
      }
    }

    while (v3 >= 2);
  }

  return 1;
}

__n128 TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::InternalSwap(TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *this, TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive *a2)
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
  result = *(a2 + 5);
  *(this + 5) = result;
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v12 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v12;
  return result;
}

TSP::UUID *TST::GroupByArchive_GroupNodeArchive::clear_group_uid(TST::GroupByArchive_GroupNodeArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TST::GroupByArchive_GroupNodeArchive::clear_row_uid(uint64_t this)
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

uint64_t *TST::GroupByArchive_GroupNodeArchive::clear_agg_formula_coords(uint64_t *this)
{
  v1 = *(this + 20);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (this[11] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellCoordinateArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 80) = 0;
  }

  return this;
}

uint64_t *TST::GroupByArchive_GroupNodeArchive::clear_group_cell_value(TST::GroupByArchive_GroupNodeArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSCE::CellValueArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t *TST::GroupByArchive_GroupNodeArchive::clear_row_indexes(TST::GroupByArchive_GroupNodeArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSCE::IndexSetArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

uint64_t *TST::GroupByArchive_GroupNodeArchive::clear_row_lookup_uids(TST::GroupByArchive_GroupNodeArchive *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSCE::IndexSetArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

uint64_t TST::GroupByArchive_GroupNodeArchive::clear_child_ref(uint64_t this)
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

TST::GroupByArchive_GroupNodeArchive *TST::GroupByArchive_GroupNodeArchive::GroupByArchive_GroupNodeArchive(TST::GroupByArchive_GroupNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7E38;
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
  if (atomic_load_explicit(scc_info_GroupByArchive_GroupNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 19) = 0;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  return this;
}

void sub_2216595BC(_Unwind_Exception *a1)
{
  sub_2216E381C(v4);
  sub_2215685C4(v3);
  sub_221567974(v2);
  sub_2216809AC(v1);
  _Unwind_Resume(a1);
}

TST::GroupByArchive_GroupNodeArchive *TST::GroupByArchive_GroupNodeArchive::GroupByArchive_GroupNodeArchive(TST::GroupByArchive_GroupNodeArchive *this, const TST::GroupByArchive_GroupNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B7E38;
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
    sub_221680A30(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2215686E0(this + 72, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
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
  if ((v26 & 4) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v26 & 8) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v26 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  return this;
}

void sub_22165993C(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v5, 0x10A1C40290C9B23);
  sub_2216E381C(v4);
  sub_2215685C4(v3);
  sub_221567974(v2);
  sub_2216809AC((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::GroupByArchive_GroupNodeArchive::~GroupByArchive_GroupNodeArchive(TST::GroupByArchive_GroupNodeArchive *this)
{
  sub_221659A54(this);
  sub_2214DFCF8(this + 1);
  sub_2216E381C(this + 12);
  sub_2215685C4(this + 9);
  sub_221567974(this + 6);
  sub_2216809AC(this + 3);
}

{
  TST::GroupByArchive_GroupNodeArchive::~GroupByArchive_GroupNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

void *sub_221659A54(void *result)
{
  if (result != &TST::_GroupByArchive_GroupNodeArchive_default_instance_)
  {
    v1 = result;
    v2 = result[15];
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[16];
    if (v3)
    {
      TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::~GroupByArchive_GroupNodeArchive_FormatManagerArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[17];
    if (v4)
    {
      TSCE::CellValueArchive::~CellValueArchive(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[18];
    if (v5)
    {
      TSCE::IndexSetArchive::~IndexSetArchive(v5);
      MEMORY[0x223DA1450]();
    }

    result = v1[19];
    if (result)
    {
      TSCE::IndexSetArchive::~IndexSetArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::GroupByArchive_GroupNodeArchive::default_instance(TST::GroupByArchive_GroupNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupByArchive_GroupNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_GroupByArchive_GroupNodeArchive_default_instance_;
}

uint64_t *TST::GroupByArchive_GroupNodeArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::GroupByArchive_GroupNodeArchive::Clear(v4);
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
      this = TSCE::CellCoordinateArchive::Clear(v10);
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

  v14 = *(v1 + 16);
  if ((v14 & 0x1F) == 0)
  {
    goto LABEL_24;
  }

  if (v14)
  {
    this = TSP::UUID::Clear(*(v1 + 120));
    if ((v14 & 2) == 0)
    {
LABEL_20:
      if ((v14 & 4) == 0)
      {
        goto LABEL_21;
      }

LABEL_30:
      this = TSCE::CellValueArchive::Clear(*(v1 + 136));
      if ((v14 & 8) == 0)
      {
LABEL_22:
        if ((v14 & 0x10) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      goto LABEL_31;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_20;
  }

  this = TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::Clear(*(v1 + 128));
  if ((v14 & 4) != 0)
  {
    goto LABEL_30;
  }

LABEL_21:
  if ((v14 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_31:
  this = TSCE::IndexSetArchive::Clear(*(v1 + 144));
  if ((v14 & 0x10) != 0)
  {
LABEL_23:
    this = TSCE::IndexSetArchive::Clear(*(v1 + 152));
  }

LABEL_24:
  v16 = *(v1 + 8);
  v15 = v1 + 8;
  *(v15 + 8) = 0;
  if (v16)
  {

    return sub_221567398(v15);
  }

  return this;
}

google::protobuf::internal *TST::GroupByArchive_GroupNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v60 = a2;
  while (1)
  {
LABEL_2:
    if (sub_221567030(a3, &v60))
    {
      return v60;
    }

    v5 = (v60 + 1);
    v6 = *v60;
    if ((*v60 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v60 + 2);
LABEL_6:
      v60 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v60, (v7 - 128));
    v60 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v40;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 5)
    {
      if (v6 >> 3 <= 3)
      {
        if (v8 == 1)
        {
          if (v6 == 10)
          {
            *(a1 + 16) |= 1u;
            v41 = *(a1 + 120);
            if (!v41)
            {
              v42 = *(a1 + 8);
              if (v42)
              {
                v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
              }

              v43 = MEMORY[0x223DA0360](v42);
              LODWORD(v41) = v43;
              *(a1 + 120) = v43;
              v5 = v60;
            }

            v38 = sub_2216F813C(a3, v41, v5);
            goto LABEL_113;
          }

          goto LABEL_106;
        }

        if (v8 != 3 || v6 != 26)
        {
          goto LABEL_106;
        }

        v19 = v5 - 1;
        while (1)
        {
          v20 = (v19 + 1);
          v60 = (v19 + 1);
          v21 = *(a1 + 40);
          if (!v21)
          {
            goto LABEL_34;
          }

          v27 = *(a1 + 32);
          v22 = *v21;
          if (v27 < *v21)
          {
            *(a1 + 32) = v27 + 1;
            v24 = *&v21[2 * v27 + 2];
            goto LABEL_38;
          }

          if (v22 == *(a1 + 36))
          {
LABEL_34:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v21 = *(a1 + 40);
            v22 = *v21;
          }

          *v21 = v22 + 1;
          v23 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive>(*(a1 + 24));
          LODWORD(v24) = v23;
          v25 = *(a1 + 32);
          v26 = *(a1 + 40) + 8 * v25;
          *(a1 + 32) = v25 + 1;
          *(v26 + 8) = v23;
          v20 = v60;
LABEL_38:
          v19 = sub_221707C6C(a3, v24, v20);
          v60 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_2;
          }
        }
      }

      if (v8 != 4)
      {
        if (v8 != 5 || v6 != 42)
        {
          goto LABEL_106;
        }

        v28 = (v5 - 1);
        while (1)
        {
          v29 = (v28 + 1);
          v60 = (v28 + 1);
          v30 = *(a1 + 88);
          if (!v30)
          {
            goto LABEL_49;
          }

          v35 = *(a1 + 80);
          v31 = *v30;
          if (v35 < *v30)
          {
            *(a1 + 80) = v35 + 1;
            v32 = *&v30[2 * v35 + 2];
            goto LABEL_53;
          }

          if (v31 == *(a1 + 84))
          {
LABEL_49:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v30 = *(a1 + 88);
            v31 = *v30;
          }

          *v30 = v31 + 1;
          v32 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(*(a1 + 72));
          v33 = *(a1 + 80);
          v34 = *(a1 + 88) + 8 * v33;
          *(a1 + 80) = v33 + 1;
          *(v34 + 8) = v32;
          v29 = v60;
LABEL_53:
          v28 = sub_2216F806C(a3, v32, v29);
          v60 = v28;
          if (!v28)
          {
            return 0;
          }

          if (*a3 <= v28 || *v28 != 42)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 != 34)
      {
        goto LABEL_106;
      }

      v44 = v5 - 1;
      while (1)
      {
        v45 = (v44 + 1);
        v60 = (v44 + 1);
        v46 = *(a1 + 64);
        if (!v46)
        {
          goto LABEL_78;
        }

        v52 = *(a1 + 56);
        v47 = *v46;
        if (v52 < *v46)
        {
          *(a1 + 56) = v52 + 1;
          v49 = *&v46[2 * v52 + 2];
          goto LABEL_82;
        }

        if (v47 == *(a1 + 60))
        {
LABEL_78:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
          v46 = *(a1 + 64);
          v47 = *v46;
        }

        *v46 = v47 + 1;
        v48 = MEMORY[0x223DA0360](*(a1 + 48));
        LODWORD(v49) = v48;
        v50 = *(a1 + 56);
        v51 = *(a1 + 64) + 8 * v50;
        *(a1 + 56) = v50 + 1;
        *(v51 + 8) = v48;
        v45 = v60;
LABEL_82:
        v44 = sub_2216F813C(a3, v49, v45);
        v60 = v44;
        if (!v44)
        {
          return 0;
        }

        if (*a3 <= v44 || *v44 != 34)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 >> 3 <= 7)
    {
      break;
    }

    if (v8 == 8)
    {
      if (v6 != 66)
      {
        goto LABEL_106;
      }

      *(a1 + 16) |= 8u;
      v53 = *(a1 + 144);
      if (!v53)
      {
        v54 = *(a1 + 8);
        if (v54)
        {
          v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
        }

        v53 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v54);
        *(a1 + 144) = v53;
        goto LABEL_104;
      }
    }

    else
    {
      if (v8 != 9)
      {
        if (v8 == 10 && v6 == 82)
        {
          v9 = v5 - 1;
          while (1)
          {
            v10 = (v9 + 1);
            v60 = (v9 + 1);
            v11 = *(a1 + 112);
            if (!v11)
            {
              goto LABEL_15;
            }

            v17 = *(a1 + 104);
            v12 = *v11;
            if (v17 < *v11)
            {
              *(a1 + 104) = v17 + 1;
              v14 = *&v11[2 * v17 + 2];
              goto LABEL_19;
            }

            if (v12 == *(a1 + 108))
            {
LABEL_15:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
              v11 = *(a1 + 112);
              v12 = *v11;
            }

            *v11 = v12 + 1;
            v13 = MEMORY[0x223DA0390](*(a1 + 96));
            LODWORD(v14) = v13;
            v15 = *(a1 + 104);
            v16 = *(a1 + 112) + 8 * v15;
            *(a1 + 104) = v15 + 1;
            *(v16 + 8) = v13;
            v10 = v60;
LABEL_19:
            v9 = sub_22170B7F8(a3, v14, v10);
            v60 = v9;
            if (!v9)
            {
              return 0;
            }

            if (*a3 <= v9 || *v9 != 82)
            {
              goto LABEL_2;
            }
          }
        }

        goto LABEL_106;
      }

      if (v6 != 74)
      {
        goto LABEL_106;
      }

      *(a1 + 16) |= 0x10u;
      v53 = *(a1 + 152);
      if (!v53)
      {
        v57 = *(a1 + 8);
        if (v57)
        {
          v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
        }

        v53 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v57);
        *(a1 + 152) = v53;
LABEL_104:
        v5 = v60;
      }
    }

    v38 = sub_2216F83AC(a3, v53, v5);
LABEL_113:
    v60 = v38;
    if (!v38)
    {
      return 0;
    }
  }

  if (v8 == 6)
  {
    if (v6 == 50)
    {
      *(a1 + 16) |= 2u;
      v55 = *(a1 + 128);
      if (!v55)
      {
        v56 = *(a1 + 8);
        if (v56)
        {
          v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
        }

        v55 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive>(v56);
        *(a1 + 128) = v55;
        v5 = v60;
      }

      v38 = sub_221707D3C(a3, v55, v5);
      goto LABEL_113;
    }
  }

  else if (v8 == 7 && v6 == 58)
  {
    *(a1 + 16) |= 4u;
    v36 = *(a1 + 136);
    if (!v36)
    {
      v37 = *(a1 + 8);
      if (v37)
      {
        v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
      }

      v36 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v37);
      *(a1 + 136) = v36;
      v5 = v60;
    }

    v38 = sub_2216FB46C(a3, v36, v5);
    goto LABEL_113;
  }

LABEL_106:
  if (v6)
  {
    v58 = (v6 & 7) == 4;
  }

  else
  {
    v58 = 1;
  }

  if (!v58)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v38 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_113;
  }

  *(a3 + 80) = v6 - 1;
  return v60;
}

unsigned __int8 *TST::GroupByArchive_GroupNodeArchive::_InternalSerialize(TST::GroupByArchive_GroupNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
      *a2 = 26;
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

      a2 = TST::GroupByArchive_GroupNodeArchive::_InternalSerialize(v14, v16, a3);
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

      a2 = TSP::UUID::_InternalSerialize(v22, v24, a3);
    }
  }

  v28 = *(this + 20);
  if (v28)
  {
    for (k = 0; k != v28; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v30 = *(*(this + 11) + 8 * k + 8);
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

      a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v30, v32, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v36 = *(this + 16);
    *a2 = 50;
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

    a2 = TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::_InternalSerialize(v36, v38, a3);
    if ((v5 & 4) == 0)
    {
LABEL_50:
      if ((v5 & 8) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_73;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_50;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v42 = *(this + 17);
  *a2 = 58;
  v43 = *(v42 + 5);
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

  a2 = TSCE::CellValueArchive::_InternalSerialize(v42, v44, a3);
  if ((v5 & 8) == 0)
  {
LABEL_51:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_83;
  }

LABEL_73:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v48 = *(this + 18);
  *a2 = 66;
  v49 = *(v48 + 10);
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

  a2 = TSCE::IndexSetArchive::_InternalSerialize(v48, v50, a3);
  if ((v5 & 0x10) != 0)
  {
LABEL_83:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v54 = *(this + 19);
    *a2 = 74;
    v55 = *(v54 + 10);
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

    a2 = TSCE::IndexSetArchive::_InternalSerialize(v54, v56, a3);
  }

LABEL_93:
  v60 = *(this + 26);
  if (v60)
  {
    for (m = 0; m != v60; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v62 = *(*(this + 14) + 8 * m + 8);
      *a2 = 82;
      v63 = *(v62 + 5);
      if (v63 > 0x7F)
      {
        a2[1] = v63 | 0x80;
        v65 = v63 >> 7;
        if (v63 >> 14)
        {
          v64 = a2 + 3;
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
          a2[2] = v65;
          v64 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v63;
        v64 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v62, v64, a3);
    }
  }

  v68 = *(this + 1);
  if ((v68 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v68 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::GroupByArchive_GroupNodeArchive::ByteSizeLong(TSP::UUID **this)
{
  if (this[2])
  {
    v3 = TSP::UUID::ByteSizeLong(this[15]);
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
      v10 = TST::GroupByArchive_GroupNodeArchive::ByteSizeLong(v9);
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

  v18 = *(this + 20);
  v19 = v12 + v18;
  v20 = this[11];
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 8 * v18;
    do
    {
      v23 = *v21++;
      v24 = TSCE::CellCoordinateArchive::ByteSizeLong(v23);
      v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      v22 -= 8;
    }

    while (v22);
  }

  v25 = *(this + 26);
  v26 = v19 + v25;
  v27 = this[14];
  if (v27)
  {
    v28 = (v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  if (v25)
  {
    v29 = 8 * v25;
    do
    {
      v30 = *v28++;
      v31 = TSP::Reference::ByteSizeLong(v30);
      v26 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6);
      v29 -= 8;
    }

    while (v29);
  }

  v32 = *(this + 4);
  if ((v32 & 0x1E) == 0)
  {
    goto LABEL_34;
  }

  if ((v32 & 2) == 0)
  {
    if ((v32 & 4) == 0)
    {
      goto LABEL_31;
    }

LABEL_37:
    v36 = TSCE::CellValueArchive::ByteSizeLong(this[17]);
    v26 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v32 & 8) == 0)
    {
LABEL_32:
      if ((v32 & 0x10) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    goto LABEL_38;
  }

  v35 = TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::ByteSizeLong(this[16]);
  v26 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v32 & 4) != 0)
  {
    goto LABEL_37;
  }

LABEL_31:
  if ((v32 & 8) == 0)
  {
    goto LABEL_32;
  }

LABEL_38:
  v37 = TSCE::IndexSetArchive::ByteSizeLong(this[18]);
  v26 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v32 & 0x10) != 0)
  {
LABEL_33:
    v33 = TSCE::IndexSetArchive::ByteSizeLong(this[19]);
    v26 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_34:
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v26, this + 20);
  }

  else
  {
    *(this + 5) = v26;
    return v26;
  }
}

uint64_t TST::GroupByArchive_GroupNodeArchive::MergeFrom(TST::GroupByArchive_GroupNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::GroupByArchive_GroupNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::GroupByArchive_GroupNodeArchive::MergeFrom(uint64_t this, const TST::GroupByArchive_GroupNodeArchive *a2)
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
    this = sub_221680A30(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_2215686E0(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
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

  v25 = *(a2 + 4);
  if ((v25 & 0x1F) != 0)
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
LABEL_44:
          if ((v25 & 8) != 0)
          {
            *(v3 + 16) |= 8u;
            v35 = *(v3 + 144);
            if (!v35)
            {
              v36 = *(v3 + 8);
              if (v36)
              {
                v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
              }

              v35 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v36);
              *(v3 + 144) = v35;
            }

            if (*(a2 + 18))
            {
              v37 = *(a2 + 18);
            }

            else
            {
              v37 = &TSCE::_IndexSetArchive_default_instance_;
            }

            this = TSCE::IndexSetArchive::MergeFrom(v35, v37);
          }

          if ((v25 & 0x10) != 0)
          {
            *(v3 + 16) |= 0x10u;
            v38 = *(v3 + 152);
            if (!v38)
            {
              v39 = *(v3 + 8);
              if (v39)
              {
                v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
              }

              v38 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v39);
              *(v3 + 152) = v38;
            }

            if (*(a2 + 19))
            {
              v40 = *(a2 + 19);
            }

            else
            {
              v40 = &TSCE::_IndexSetArchive_default_instance_;
            }

            return TSCE::IndexSetArchive::MergeFrom(v38, v40);
          }

          return this;
        }

LABEL_36:
        *(v3 + 16) |= 4u;
        v32 = *(v3 + 136);
        if (!v32)
        {
          v33 = *(v3 + 8);
          if (v33)
          {
            v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
          }

          v32 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v33);
          *(v3 + 136) = v32;
        }

        if (*(a2 + 17))
        {
          v34 = *(a2 + 17);
        }

        else
        {
          v34 = &TSCE::_CellValueArchive_default_instance_;
        }

        this = TSCE::CellValueArchive::MergeFrom(v32, v34);
        goto LABEL_44;
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

      v29 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive>(v30);
      *(v3 + 128) = v29;
    }

    if (*(a2 + 16))
    {
      v31 = *(a2 + 16);
    }

    else
    {
      v31 = &TST::_GroupByArchive_GroupNodeArchive_FormatManagerArchive_default_instance_;
    }

    this = TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::MergeFrom(v29, v31);
    if ((v25 & 4) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  return this;
}

uint64_t *TST::GroupByArchive_GroupNodeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive_GroupNodeArchive::Clear(this);

    return TST::GroupByArchive_GroupNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::GroupByArchive_GroupNodeArchive::CopyFrom(uint64_t *this, const TST::GroupByArchive_GroupNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive_GroupNodeArchive::Clear(this);

    return TST::GroupByArchive_GroupNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::GroupByArchive_GroupNodeArchive::IsInitialized(TST::GroupByArchive_GroupNodeArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_22165B198(this + 24);
  if (result)
  {
    v3 = *(this + 14);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      IsInitialized = TSP::UUID::IsInitialized(*(*(this + 8) + 8 * v3));
      v3 = v4;
      if ((IsInitialized & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(this + 26);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = TSP::Reference::IsInitialized(*(*(this + 14) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(this + 4);
    if (v9)
    {
      result = TSP::UUID::IsInitialized(*(this + 15));
      if (!result)
      {
        return result;
      }

      v9 = *(this + 4);
    }

    if ((v9 & 2) != 0)
    {
      result = TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::IsInitialized(*(this + 16));
      if (!result)
      {
        return result;
      }

      v9 = *(this + 4);
    }

    if ((v9 & 4) != 0)
    {
      result = TSCE::CellValueArchive::IsInitialized(*(this + 17));
      if (!result)
      {
        return result;
      }

      v9 = *(this + 4);
    }

    if ((v9 & 8) != 0)
    {
      result = TSCE::IndexSetArchive::IsInitialized(*(this + 18));
      if (!result)
      {
        return result;
      }

      v9 = *(this + 4);
    }

    if ((v9 & 0x10) == 0)
    {
      return 1;
    }

    result = TSCE::IndexSetArchive::IsInitialized(*(this + 19));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_22165B198(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TST::GroupByArchive_GroupNodeArchive::IsInitialized(*(*(a1 + 16) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TST::GroupByArchive_GroupNodeArchive::InternalSwap(TST::GroupByArchive_GroupNodeArchive *this, TST::GroupByArchive_GroupNodeArchive *a2)
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
  *(this + 120) = *(a2 + 120);
  *(a2 + 15) = v13;
  *(a2 + 16) = v14;
  v15 = *(this + 17);
  v16 = *(this + 18);
  result = *(a2 + 136);
  *(this + 136) = result;
  *(a2 + 17) = v15;
  *(a2 + 18) = v16;
  v18 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v18;
  return result;
}

TSP::UUID *TST::GroupByArchive::clear_group_by_uid(TST::GroupByArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t *TST::GroupByArchive::clear_indirect_agg_type_change_formula(TST::GroupByArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t *TST::GroupByArchive::clear_grouping_columns_formula(TST::GroupByArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

uint64_t *TST::GroupByArchive::clear_aggs_in_group_root_formula(TST::GroupByArchive *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

uint64_t *TST::GroupByArchive::clear_grouping_column_headers_formula(TST::GroupByArchive *this)
{
  result = *(this + 20);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

uint64_t *TST::GroupByArchive::clear_column_order_changed_formula(TST::GroupByArchive *this)
{
  result = *(this + 21);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

uint64_t *TST::GroupByArchive::clear_row_order_changed_formula(TST::GroupByArchive *this)
{
  result = *(this + 22);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

uint64_t *TST::GroupByArchive::clear_row_order_changed_ignoring_recalc_formula(TST::GroupByArchive *this)
{
  result = *(this + 23);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

uint64_t *TST::GroupByArchive::clear_row_uid_lookup(TST::GroupByArchive *this)
{
  result = *(this + 24);
  if (result)
  {
    result = TSCE::UidLookupListArchive::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

uint64_t *TST::GroupByArchive::clear_hidden_states_changed_formula(TST::GroupByArchive *this)
{
  result = *(this + 25);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

uint64_t TST::GroupByArchive::clear_aggregator_ref(uint64_t this)
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

TSP::Reference *TST::GroupByArchive::clear_group_node_root_ref(TST::GroupByArchive *this)
{
  result = *(this + 26);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x800u;
  return result;
}

TST::GroupByArchive *TST::GroupByArchive::GroupByArchive(TST::GroupByArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7EE8;
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
  if (atomic_load_explicit(scc_info_GroupByArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 216) = 0;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 55) = 8;
  return this;
}

void sub_22165B6C0(_Unwind_Exception *a1)
{
  sub_2216E381C(v4);
  sub_221680358(v3);
  sub_221680AF0(v2);
  sub_221680214(v1);
  _Unwind_Resume(a1);
}

TST::GroupByArchive *TST::GroupByArchive::GroupByArchive(TST::GroupByArchive *this, const TST::GroupByArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B7EE8;
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
    sub_221680298(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_221680B74(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_2216803DC(this + 72, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
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
  if ((v26 & 4) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v26 & 8) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v26 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v26 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  if ((v26 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 21) = 0;
  if ((v26 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 22) = 0;
  if ((v26 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 23) = 0;
  if ((v26 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 24) = 0;
  if ((v26 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 25) = 0;
  if ((v26 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 26) = 0;
  *(this + 27) = *(a2 + 27);
  return this;
}

void sub_22165BBD0(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v5, 0x1081C407D3F2757);
  sub_2216E381C(v4);
  sub_221680358(v3);
  sub_221680AF0(v2);
  sub_221680214((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::GroupByArchive::~GroupByArchive(TST::GroupByArchive *this)
{
  sub_22165BD10(this);
  sub_2214DFCF8(this + 1);
  sub_2216E381C(this + 12);
  sub_221680358(this + 9);
  sub_221680AF0(this + 6);
  sub_221680214(this + 3);
}

{
  TST::GroupByArchive::~GroupByArchive(this);

  JUMPOUT(0x223DA1450);
}

void *sub_22165BD10(void *result)
{
  if (result != &TST::_GroupByArchive_default_instance_)
  {
    v1 = result;
    v2 = result[15];
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[16];
    if (v3)
    {
      TST::GroupByArchive_GroupNodeArchive::~GroupByArchive_GroupNodeArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[17];
    if (v4)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[18];
    if (v5)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v5);
      MEMORY[0x223DA1450]();
    }

    v6 = v1[19];
    if (v6)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v6);
      MEMORY[0x223DA1450]();
    }

    v7 = v1[20];
    if (v7)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v7);
      MEMORY[0x223DA1450]();
    }

    v8 = v1[21];
    if (v8)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v8);
      MEMORY[0x223DA1450]();
    }

    v9 = v1[22];
    if (v9)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v9);
      MEMORY[0x223DA1450]();
    }

    v10 = v1[23];
    if (v10)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v10);
      MEMORY[0x223DA1450]();
    }

    v11 = v1[24];
    if (v11)
    {
      TSCE::UidLookupListArchive::~UidLookupListArchive(v11);
      MEMORY[0x223DA1450]();
    }

    v12 = v1[25];
    if (v12)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v12);
      MEMORY[0x223DA1450]();
    }

    result = v1[26];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::GroupByArchive::default_instance(TST::GroupByArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupByArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_GroupByArchive_default_instance_;
}

uint64_t *TST::GroupByArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::GroupColumnArchive::Clear(v4);
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
      this = TST::GroupByArchive_AggregatorArchive::Clear(v7);
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
      this = TST::ColumnAggregateArchive::Clear(v10);
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

  v14 = *(v1 + 16);
  if (!v14)
  {
    goto LABEL_27;
  }

  if (v14)
  {
    this = TSP::UUID::Clear(*(v1 + 120));
    if ((v14 & 2) == 0)
    {
LABEL_20:
      if ((v14 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_41;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_20;
  }

  this = TST::GroupByArchive_GroupNodeArchive::Clear(*(v1 + 128));
  if ((v14 & 4) == 0)
  {
LABEL_21:
    if ((v14 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = TSCE::CellCoordinateArchive::Clear(*(v1 + 136));
  if ((v14 & 8) == 0)
  {
LABEL_22:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = TSCE::CellCoordinateArchive::Clear(*(v1 + 144));
  if ((v14 & 0x10) == 0)
  {
LABEL_23:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_24;
    }

LABEL_44:
    this = TSCE::CellCoordinateArchive::Clear(*(v1 + 160));
    if ((v14 & 0x40) == 0)
    {
LABEL_25:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    goto LABEL_45;
  }

LABEL_43:
  this = TSCE::CellCoordinateArchive::Clear(*(v1 + 152));
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_44;
  }

LABEL_24:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_25;
  }

LABEL_45:
  this = TSCE::CellCoordinateArchive::Clear(*(v1 + 168));
  if ((v14 & 0x80) != 0)
  {
LABEL_26:
    this = TSCE::CellCoordinateArchive::Clear(*(v1 + 176));
  }

LABEL_27:
  if ((v14 & 0xF00) == 0)
  {
    goto LABEL_33;
  }

  if ((v14 & 0x100) != 0)
  {
    this = TSCE::CellCoordinateArchive::Clear(*(v1 + 184));
    if ((v14 & 0x200) == 0)
    {
LABEL_30:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_49;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_30;
  }

  this = TSCE::UidLookupListArchive::Clear(*(v1 + 192));
  if ((v14 & 0x400) == 0)
  {
LABEL_31:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_49:
  this = TSCE::CellCoordinateArchive::Clear(*(v1 + 200));
  if ((v14 & 0x800) != 0)
  {
LABEL_32:
    this = TSP::Reference::Clear(*(v1 + 208));
  }

LABEL_33:
  if ((v14 & 0x3000) != 0)
  {
    *(v1 + 216) = 0;
    *(v1 + 220) = 8;
  }

  v16 = *(v1 + 8);
  v15 = v1 + 8;
  *(v15 + 8) = 0;
  if (v16)
  {

    return sub_221567398(v15);
  }

  return this;
}

google::protobuf::internal *TST::GroupByArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v76 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v76) & 1) == 0)
  {
    while (2)
    {
      v7 = (v76 + 1);
      v8 = *v76;
      if (*v76 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v76, (v9 - 128));
          v76 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_153;
          }

          v7 = TagFallback;
          v8 = v15;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_141;
              }

              *(a1 + 16) |= 1u;
              v10 = *(a1 + 120);
              if (!v10)
              {
                v11 = *(a1 + 8);
                if (v11)
                {
                  v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
                }

                v12 = MEMORY[0x223DA0360](v11);
                LODWORD(v10) = v12;
                *(a1 + 120) = v12;
                v7 = v76;
              }

              v13 = sub_2216F813C(a3, v10, v7);
              goto LABEL_138;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_141;
              }

              v51 = (v7 - 1);
              while (1)
              {
                v52 = (v51 + 1);
                v76 = (v51 + 1);
                v53 = *(a1 + 40);
                if (!v53)
                {
                  goto LABEL_95;
                }

                v58 = *(a1 + 32);
                v54 = *v53;
                if (v58 < *v53)
                {
                  *(a1 + 32) = v58 + 1;
                  v55 = *&v53[2 * v58 + 2];
                  goto LABEL_99;
                }

                if (v54 == *(a1 + 36))
                {
LABEL_95:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                  v53 = *(a1 + 40);
                  v54 = *v53;
                }

                *v53 = v54 + 1;
                v55 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupColumnArchive>(*(a1 + 24));
                v56 = *(a1 + 32);
                v57 = *(a1 + 40) + 8 * v56;
                *(a1 + 32) = v56 + 1;
                *(v57 + 8) = v55;
                v52 = v76;
LABEL_99:
                v51 = sub_22170785C(a3, v55, v52);
                v76 = v51;
                if (!v51)
                {
                  goto LABEL_153;
                }

                if (*a3 <= v51 || *v51 != 18)
                {
                  goto LABEL_139;
                }
              }

            case 3u:
              if (v8 != 26)
              {
                goto LABEL_141;
              }

              *(a1 + 16) |= 2u;
              v39 = *(a1 + 128);
              if (!v39)
              {
                v40 = *(a1 + 8);
                if (v40)
                {
                  v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
                }

                v39 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive>(v40);
                *(a1 + 128) = v39;
                v7 = v76;
              }

              v13 = sub_221707C6C(a3, v39, v7);
              goto LABEL_138;
            case 4u:
              if (v8 != 34)
              {
                goto LABEL_141;
              }

              v42 = (v7 - 1);
              while (1)
              {
                v43 = (v42 + 1);
                v76 = (v42 + 1);
                v44 = *(a1 + 64);
                if (!v44)
                {
                  goto LABEL_77;
                }

                v49 = *(a1 + 56);
                v45 = *v44;
                if (v49 < *v44)
                {
                  *(a1 + 56) = v49 + 1;
                  v46 = *&v44[2 * v49 + 2];
                  goto LABEL_81;
                }

                if (v45 == *(a1 + 60))
                {
LABEL_77:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v44 = *(a1 + 64);
                  v45 = *v44;
                }

                *v44 = v45 + 1;
                v46 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_AggregatorArchive>(*(a1 + 48));
                v47 = *(a1 + 56);
                v48 = *(a1 + 64) + 8 * v47;
                *(a1 + 56) = v47 + 1;
                *(v48 + 8) = v46;
                v43 = v76;
LABEL_81:
                v42 = sub_221707E0C(a3, v46, v43);
                v76 = v42;
                if (!v42)
                {
                  goto LABEL_153;
                }

                if (*a3 <= v42 || *v42 != 34)
                {
                  goto LABEL_139;
                }
              }

            case 5u:
              if (v8 != 42)
              {
                goto LABEL_141;
              }

              v29 = (v7 - 1);
              while (1)
              {
                v30 = (v29 + 1);
                v76 = (v29 + 1);
                v31 = *(a1 + 88);
                if (!v31)
                {
                  goto LABEL_43;
                }

                v36 = *(a1 + 80);
                v32 = *v31;
                if (v36 < *v31)
                {
                  *(a1 + 80) = v36 + 1;
                  v33 = *&v31[2 * v36 + 2];
                  goto LABEL_47;
                }

                if (v32 == *(a1 + 84))
                {
LABEL_43:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
                  v31 = *(a1 + 88);
                  v32 = *v31;
                }

                *v31 = v32 + 1;
                v33 = google::protobuf::Arena::CreateMaybeMessage<TST::ColumnAggregateArchive>(*(a1 + 72));
                v34 = *(a1 + 80);
                v35 = *(a1 + 88) + 8 * v34;
                *(a1 + 80) = v34 + 1;
                *(v35 + 8) = v33;
                v30 = v76;
LABEL_47:
                v29 = sub_22170792C(a3, v33, v30);
                v76 = v29;
                if (!v29)
                {
                  goto LABEL_153;
                }

                if (*a3 <= v29 || *v29 != 42)
                {
                  goto LABEL_139;
                }
              }

            case 6u:
              if (v8 != 48)
              {
                goto LABEL_141;
              }

              v5 |= 0x1000u;
              v63 = (v7 + 1);
              v62 = *v7;
              if ((v62 & 0x8000000000000000) == 0)
              {
                goto LABEL_115;
              }

              v64 = *v63;
              v62 = (v64 << 7) + v62 - 128;
              if (v64 < 0)
              {
                v72 = google::protobuf::internal::VarintParseSlow64(v7, v62);
                v76 = v72;
                *(a1 + 216) = v73 != 0;
                if (!v72)
                {
                  goto LABEL_153;
                }
              }

              else
              {
                v63 = (v7 + 2);
LABEL_115:
                v76 = v63;
                *(a1 + 216) = v62 != 0;
              }

              goto LABEL_139;
            case 7u:
              if (v8 != 58)
              {
                goto LABEL_141;
              }

              *(a1 + 16) |= 4u;
              v27 = *(a1 + 136);
              if (v27)
              {
                goto LABEL_137;
              }

              v68 = *(a1 + 8);
              if (v68)
              {
                v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
              }

              v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v68);
              *(a1 + 136) = v27;
              goto LABEL_136;
            case 8u:
              if (v8 != 66)
              {
                goto LABEL_141;
              }

              *(a1 + 16) |= 8u;
              v27 = *(a1 + 144);
              if (v27)
              {
                goto LABEL_137;
              }

              v50 = *(a1 + 8);
              if (v50)
              {
                v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
              }

              v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v50);
              *(a1 + 144) = v27;
              goto LABEL_136;
            case 9u:
              if (v8 != 74)
              {
                goto LABEL_141;
              }

              *(a1 + 16) |= 0x10u;
              v27 = *(a1 + 152);
              if (v27)
              {
                goto LABEL_137;
              }

              v70 = *(a1 + 8);
              if (v70)
              {
                v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
              }

              v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v70);
              *(a1 + 152) = v27;
              goto LABEL_136;
            case 0xAu:
              if (v8 != 82)
              {
                goto LABEL_141;
              }

              *(a1 + 16) |= 0x20u;
              v27 = *(a1 + 160);
              if (v27)
              {
                goto LABEL_137;
              }

              v38 = *(a1 + 8);
              if (v38)
              {
                v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
              }

              v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v38);
              *(a1 + 160) = v27;
              goto LABEL_136;
            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_141;
              }

              *(a1 + 16) |= 0x40u;
              v27 = *(a1 + 168);
              if (v27)
              {
                goto LABEL_137;
              }

              v69 = *(a1 + 8);
              if (v69)
              {
                v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
              }

              v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v69);
              *(a1 + 168) = v27;
              goto LABEL_136;
            case 0xCu:
              if (v8 != 98)
              {
                goto LABEL_141;
              }

              *(a1 + 16) |= 0x80u;
              v27 = *(a1 + 176);
              if (v27)
              {
                goto LABEL_137;
              }

              v28 = *(a1 + 8);
              if (v28)
              {
                v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
              }

              v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v28);
              *(a1 + 176) = v27;
              goto LABEL_136;
            case 0xDu:
              if (v8 != 106)
              {
                goto LABEL_141;
              }

              *(a1 + 16) |= 0x100u;
              v27 = *(a1 + 184);
              if (v27)
              {
                goto LABEL_137;
              }

              v37 = *(a1 + 8);
              if (v37)
              {
                v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
              }

              v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v37);
              *(a1 + 184) = v27;
              goto LABEL_136;
            case 0xEu:
              if (v8 != 112)
              {
                goto LABEL_141;
              }

              v5 |= 0x2000u;
              v66 = (v7 + 1);
              LODWORD(v65) = *v7;
              if ((v65 & 0x80) == 0)
              {
                goto LABEL_120;
              }

              v67 = *v66;
              v65 = (v65 + (v67 << 7) - 128);
              if (v67 < 0)
              {
                v74 = google::protobuf::internal::VarintParseSlow64(v7, v65);
                v76 = v74;
                *(a1 + 220) = v75;
                if (!v74)
                {
                  goto LABEL_153;
                }
              }

              else
              {
                v66 = (v7 + 2);
LABEL_120:
                v76 = v66;
                *(a1 + 220) = v65;
              }

              goto LABEL_139;
            case 0xFu:
              if (v8 != 122)
              {
                goto LABEL_141;
              }

              *(a1 + 16) |= 0x200u;
              v25 = *(a1 + 192);
              if (!v25)
              {
                v26 = *(a1 + 8);
                if (v26)
                {
                  v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
                }

                v25 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidLookupListArchive>(v26);
                *(a1 + 192) = v25;
                v7 = v76;
              }

              v13 = sub_221701698(a3, v25, v7);
              goto LABEL_138;
            case 0x10u:
              if (v8 != 130)
              {
                goto LABEL_141;
              }

              *(a1 + 16) |= 0x400u;
              v27 = *(a1 + 200);
              if (v27)
              {
                goto LABEL_137;
              }

              v41 = *(a1 + 8);
              if (v41)
              {
                v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
              }

              v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v41);
              *(a1 + 200) = v27;
LABEL_136:
              v7 = v76;
LABEL_137:
              v13 = sub_2216F806C(a3, v27, v7);
              goto LABEL_138;
            case 0x11u:
              if (v8 != 138)
              {
                goto LABEL_141;
              }

              v16 = v7 - 2;
              break;
            case 0x12u:
              if (v8 != 146)
              {
                goto LABEL_141;
              }

              *(a1 + 16) |= 0x800u;
              v59 = *(a1 + 208);
              if (!v59)
              {
                v60 = *(a1 + 8);
                if (v60)
                {
                  v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
                }

                v61 = MEMORY[0x223DA0390](v60);
                LODWORD(v59) = v61;
                *(a1 + 208) = v61;
                v7 = v76;
              }

              v13 = sub_22170B7F8(a3, v59, v7);
              goto LABEL_138;
            default:
LABEL_141:
              if (v8)
              {
                v71 = (v8 & 7) == 4;
              }

              else
              {
                v71 = 1;
              }

              if (v71)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_221567188((a1 + 8));
              }

              v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_138:
              v76 = v13;
              if (!v13)
              {
LABEL_153:
                v76 = 0;
                goto LABEL_2;
              }

LABEL_139:
              if (sub_221567030(a3, &v76))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v17 = (v16 + 2);
            v76 = (v16 + 2);
            v18 = *(a1 + 112);
            if (!v18)
            {
              goto LABEL_19;
            }

            v24 = *(a1 + 104);
            v19 = *v18;
            if (v24 < *v18)
            {
              *(a1 + 104) = v24 + 1;
              v21 = *&v18[2 * v24 + 2];
              goto LABEL_23;
            }

            if (v19 == *(a1 + 108))
            {
LABEL_19:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
              v18 = *(a1 + 112);
              v19 = *v18;
            }

            *v18 = v19 + 1;
            v20 = MEMORY[0x223DA0390](*(a1 + 96));
            LODWORD(v21) = v20;
            v22 = *(a1 + 104);
            v23 = *(a1 + 112) + 8 * v22;
            *(a1 + 104) = v22 + 1;
            *(v23 + 8) = v20;
            v17 = v76;
LABEL_23:
            v16 = sub_22170B7F8(a3, v21, v17);
            v76 = v16;
            if (!v16)
            {
              goto LABEL_153;
            }

            if (*a3 <= v16 || *v16 != 394)
            {
              goto LABEL_139;
            }
          }
        }

        v7 = (v76 + 2);
      }

      break;
    }

    v76 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v76;
}

unsigned __int8 *TST::GroupByArchive::_InternalSerialize(TST::GroupByArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TST::GroupColumnArchive::_InternalSerialize(v14, v16, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 16);
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

    a2 = TST::GroupByArchive_GroupNodeArchive::_InternalSerialize(v20, v22, a3);
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

      a2 = TST::GroupByArchive_AggregatorArchive::_InternalSerialize(v28, v30, a3);
    }
  }

  v34 = *(this + 20);
  if (v34)
  {
    for (k = 0; k != v34; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v36 = *(*(this + 11) + 8 * k + 8);
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

      a2 = TST::ColumnAggregateArchive::_InternalSerialize(v36, v38, a3);
    }
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v42 = *(this + 216);
    *a2 = 48;
    a2[1] = v42;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
LABEL_61:
      if ((v5 & 8) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_84;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_61;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v43 = *(this + 17);
  *a2 = 58;
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

  a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v43, v45, a3);
  if ((v5 & 8) == 0)
  {
LABEL_62:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_94;
  }

LABEL_84:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v49 = *(this + 18);
  *a2 = 66;
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

  a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v49, v51, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_63:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_104;
  }

LABEL_94:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v55 = *(this + 19);
  *a2 = 74;
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

  a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v55, v57, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_64:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_114;
  }

LABEL_104:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v61 = *(this + 20);
  *a2 = 82;
  v62 = *(v61 + 5);
  if (v62 > 0x7F)
  {
    a2[1] = v62 | 0x80;
    v64 = v62 >> 7;
    if (v62 >> 14)
    {
      v63 = a2 + 3;
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
      a2[2] = v64;
      v63 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v62;
    v63 = a2 + 2;
  }

  a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v61, v63, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_65:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_124;
  }

LABEL_114:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v67 = *(this + 21);
  *a2 = 90;
  v68 = *(v67 + 5);
  if (v68 > 0x7F)
  {
    a2[1] = v68 | 0x80;
    v70 = v68 >> 7;
    if (v68 >> 14)
    {
      v69 = a2 + 3;
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
      a2[2] = v70;
      v69 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v68;
    v69 = a2 + 2;
  }

  a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v67, v69, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_66:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_134;
  }

LABEL_124:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v73 = *(this + 22);
  *a2 = 98;
  v74 = *(v73 + 5);
  if (v74 > 0x7F)
  {
    a2[1] = v74 | 0x80;
    v76 = v74 >> 7;
    if (v74 >> 14)
    {
      v75 = a2 + 3;
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
      a2[2] = v76;
      v75 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v74;
    v75 = a2 + 2;
  }

  a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v73, v75, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_67:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_68;
    }

LABEL_144:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v85 = *(this + 55);
    *a2 = 112;
    if (v85 > 0x7F)
    {
      a2[1] = v85 | 0x80;
      v86 = v85 >> 7;
      if (v85 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v86 | 0x80;
          v87 = v86 >> 7;
          ++a2;
          v88 = v86 >> 14;
          v86 >>= 7;
        }

        while (v88);
        *(a2 - 1) = v87;
        if ((v5 & 0x200) != 0)
        {
          goto LABEL_155;
        }
      }

      else
      {
        a2[2] = v86;
        a2 += 3;
        if ((v5 & 0x200) != 0)
        {
          goto LABEL_155;
        }
      }
    }

    else
    {
      a2[1] = v85;
      a2 += 2;
      if ((v5 & 0x200) != 0)
      {
        goto LABEL_155;
      }
    }

LABEL_69:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_165;
  }

LABEL_134:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v79 = *(this + 23);
  *a2 = 106;
  v80 = *(v79 + 5);
  if (v80 > 0x7F)
  {
    a2[1] = v80 | 0x80;
    v82 = v80 >> 7;
    if (v80 >> 14)
    {
      v81 = a2 + 3;
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
      a2[2] = v82;
      v81 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v80;
    v81 = a2 + 2;
  }

  a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v79, v81, a3);
  if ((v5 & 0x2000) != 0)
  {
    goto LABEL_144;
  }

LABEL_68:
  if ((v5 & 0x200) == 0)
  {
    goto LABEL_69;
  }

LABEL_155:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v89 = *(this + 24);
  *a2 = 122;
  v90 = *(v89 + 10);
  if (v90 > 0x7F)
  {
    a2[1] = v90 | 0x80;
    v92 = v90 >> 7;
    if (v90 >> 14)
    {
      v91 = a2 + 3;
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
      a2[2] = v92;
      v91 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v90;
    v91 = a2 + 2;
  }

  a2 = TSCE::UidLookupListArchive::_InternalSerialize(v89, v91, a3);
  if ((v5 & 0x400) != 0)
  {
LABEL_165:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v95 = *(this + 25);
    *a2 = 386;
    v96 = *(v95 + 5);
    if (v96 > 0x7F)
    {
      a2[2] = v96 | 0x80;
      v98 = v96 >> 7;
      if (v96 >> 14)
      {
        v97 = a2 + 4;
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
        a2[3] = v98;
        v97 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v96;
      v97 = a2 + 3;
    }

    a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v95, v97, a3);
  }

LABEL_175:
  v101 = *(this + 26);
  if (v101)
  {
    for (m = 0; m != v101; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v103 = *(*(this + 14) + 8 * m + 8);
      *a2 = 394;
      v104 = *(v103 + 5);
      if (v104 > 0x7F)
      {
        a2[2] = v104 | 0x80;
        v106 = v104 >> 7;
        if (v104 >> 14)
        {
          v105 = a2 + 4;
          do
          {
            *(v105 - 1) = v106 | 0x80;
            v107 = v106 >> 7;
            ++v105;
            v108 = v106 >> 14;
            v106 >>= 7;
          }

          while (v108);
          *(v105 - 1) = v107;
        }

        else
        {
          a2[3] = v106;
          v105 = a2 + 4;
        }
      }

      else
      {
        a2[2] = v104;
        v105 = a2 + 3;
      }

      a2 = TSP::Reference::_InternalSerialize(v103, v105, a3);
    }
  }

  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v109 = *(this + 26);
    *a2 = 402;
    v110 = *(v109 + 5);
    if (v110 > 0x7F)
    {
      a2[2] = v110 | 0x80;
      v112 = v110 >> 7;
      if (v110 >> 14)
      {
        v111 = a2 + 4;
        do
        {
          *(v111 - 1) = v112 | 0x80;
          v113 = v112 >> 7;
          ++v111;
          v114 = v112 >> 14;
          v112 >>= 7;
        }

        while (v114);
        *(v111 - 1) = v113;
      }

      else
      {
        a2[3] = v112;
        v111 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v110;
      v111 = a2 + 3;
    }

    a2 = TSP::Reference::_InternalSerialize(v109, v111, a3);
  }

  v115 = *(this + 1);
  if ((v115 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v115 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::GroupByArchive::RequiredFieldsByteSizeFallback(TST::GroupByArchive *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 15));
    v2 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v1 = *(this + 4);
  }

  else
  {
    v2 = 0;
  }

  return v2 + ((v1 >> 11) & 2);
}

uint64_t TST::GroupByArchive::ByteSizeLong(TST::GroupByArchive *this)
{
  if ((~*(this + 4) & 0x1001) != 0)
  {
    v3 = TST::GroupByArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(*(this + 15));
    v3 = v2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 3;
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
      v10 = TST::GroupColumnArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(this + 14);
  v12 = v5 + v11;
  v13 = *(this + 8);
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
      v17 = TST::GroupByArchive_AggregatorArchive::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(this + 20);
  v19 = v12 + v18;
  v20 = *(this + 11);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 8 * v18;
    do
    {
      v23 = *v21++;
      v24 = TST::ColumnAggregateArchive::ByteSizeLong(v23);
      v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      v22 -= 8;
    }

    while (v22);
  }

  v25 = *(this + 26);
  v26 = v19 + 2 * v25;
  v27 = *(this + 14);
  if (v27)
  {
    v28 = (v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  if (v25)
  {
    v29 = 8 * v25;
    do
    {
      v30 = *v28++;
      v31 = TSP::Reference::ByteSizeLong(v30);
      v26 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6);
      v29 -= 8;
    }

    while (v29);
  }

  v32 = *(this + 4);
  if ((v32 & 0xFE) == 0)
  {
    goto LABEL_37;
  }

  if ((v32 & 2) != 0)
  {
    v39 = TST::GroupByArchive_GroupNodeArchive::ByteSizeLong(*(this + 16));
    v26 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v32 & 4) == 0)
    {
LABEL_31:
      if ((v32 & 8) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_52;
    }
  }

  else if ((v32 & 4) == 0)
  {
    goto LABEL_31;
  }

  v40 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 17));
  v26 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v32 & 8) == 0)
  {
LABEL_32:
    if ((v32 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_53;
  }

LABEL_52:
  v41 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 18));
  v26 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v32 & 0x10) == 0)
  {
LABEL_33:
    if ((v32 & 0x20) == 0)
    {
      goto LABEL_34;
    }

LABEL_54:
    v43 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 20));
    v26 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v32 & 0x40) == 0)
    {
LABEL_35:
      if ((v32 & 0x80) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    goto LABEL_55;
  }

LABEL_53:
  v42 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 19));
  v26 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v32 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_34:
  if ((v32 & 0x40) == 0)
  {
    goto LABEL_35;
  }

LABEL_55:
  v44 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 21));
  v26 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v32 & 0x80) != 0)
  {
LABEL_36:
    v33 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 22));
    v26 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_37:
  if ((v32 & 0xF00) == 0)
  {
    goto LABEL_43;
  }

  if ((v32 & 0x100) != 0)
  {
    v45 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 23));
    v26 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v32 & 0x200) == 0)
    {
LABEL_40:
      if ((v32 & 0x400) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_59;
    }
  }

  else if ((v32 & 0x200) == 0)
  {
    goto LABEL_40;
  }

  v46 = TSCE::UidLookupListArchive::ByteSizeLong(*(this + 24));
  v26 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v32 & 0x400) == 0)
  {
LABEL_41:
    if ((v32 & 0x800) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_59:
  v47 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 25));
  v26 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v32 & 0x800) != 0)
  {
LABEL_42:
    v34 = TSP::Reference::ByteSizeLong(*(this + 26));
    v26 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_43:
  if ((v32 & 0x2000) != 0)
  {
    v35 = *(this + 55);
    v36 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v35 >= 0)
    {
      v37 = v36;
    }

    else
    {
      v37 = 11;
    }

    v26 += v37;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v26, this + 20);
  }

  else
  {
    *(this + 5) = v26;
    return v26;
  }
}

uint64_t TST::GroupByArchive::MergeFrom(TST::GroupByArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::GroupByArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::GroupByArchive::MergeFrom(uint64_t this, const TST::GroupByArchive *a2)
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
    this = sub_221680298(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_221680B74(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    this = sub_2216803DC(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
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

  v25 = *(a2 + 4);
  if (!v25)
  {
    goto LABEL_89;
  }

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
  }

  if ((v25 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v29 = *(v3 + 128);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive>(v30);
      *(v3 + 128) = v29;
    }

    if (*(a2 + 16))
    {
      v31 = *(a2 + 16);
    }

    else
    {
      v31 = &TST::_GroupByArchive_GroupNodeArchive_default_instance_;
    }

    this = TST::GroupByArchive_GroupNodeArchive::MergeFrom(v29, v31);
  }

  if ((v25 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v32 = *(v3 + 136);
    if (!v32)
    {
      v33 = *(v3 + 8);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v33);
      *(v3 + 136) = v32;
    }

    if (*(a2 + 17))
    {
      v34 = *(a2 + 17);
    }

    else
    {
      v34 = &TSCE::_CellCoordinateArchive_default_instance_;
    }

    this = TSCE::CellCoordinateArchive::MergeFrom(v32, v34);
    if ((v25 & 8) == 0)
    {
LABEL_36:
      if ((v25 & 0x10) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_57;
    }
  }

  else if ((v25 & 8) == 0)
  {
    goto LABEL_36;
  }

  *(v3 + 16) |= 8u;
  v35 = *(v3 + 144);
  if (!v35)
  {
    v36 = *(v3 + 8);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v36);
    *(v3 + 144) = v35;
  }

  if (*(a2 + 18))
  {
    v37 = *(a2 + 18);
  }

  else
  {
    v37 = &TSCE::_CellCoordinateArchive_default_instance_;
  }

  this = TSCE::CellCoordinateArchive::MergeFrom(v35, v37);
  if ((v25 & 0x10) == 0)
  {
LABEL_37:
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_38;
    }

LABEL_65:
    *(v3 + 16) |= 0x20u;
    v41 = *(v3 + 160);
    if (!v41)
    {
      v42 = *(v3 + 8);
      if (v42)
      {
        v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
      }

      v41 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v42);
      *(v3 + 160) = v41;
    }

    if (*(a2 + 20))
    {
      v43 = *(a2 + 20);
    }

    else
    {
      v43 = &TSCE::_CellCoordinateArchive_default_instance_;
    }

    this = TSCE::CellCoordinateArchive::MergeFrom(v41, v43);
    if ((v25 & 0x40) == 0)
    {
LABEL_39:
      if ((v25 & 0x80) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_81;
    }

    goto LABEL_73;
  }

LABEL_57:
  *(v3 + 16) |= 0x10u;
  v38 = *(v3 + 152);
  if (!v38)
  {
    v39 = *(v3 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v39);
    *(v3 + 152) = v38;
  }

  if (*(a2 + 19))
  {
    v40 = *(a2 + 19);
  }

  else
  {
    v40 = &TSCE::_CellCoordinateArchive_default_instance_;
  }

  this = TSCE::CellCoordinateArchive::MergeFrom(v38, v40);
  if ((v25 & 0x20) != 0)
  {
    goto LABEL_65;
  }

LABEL_38:
  if ((v25 & 0x40) == 0)
  {
    goto LABEL_39;
  }

LABEL_73:
  *(v3 + 16) |= 0x40u;
  v44 = *(v3 + 168);
  if (!v44)
  {
    v45 = *(v3 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v45);
    *(v3 + 168) = v44;
  }

  if (*(a2 + 21))
  {
    v46 = *(a2 + 21);
  }

  else
  {
    v46 = &TSCE::_CellCoordinateArchive_default_instance_;
  }

  this = TSCE::CellCoordinateArchive::MergeFrom(v44, v46);
  if ((v25 & 0x80) != 0)
  {
LABEL_81:
    *(v3 + 16) |= 0x80u;
    v47 = *(v3 + 176);
    if (!v47)
    {
      v48 = *(v3 + 8);
      if (v48)
      {
        v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
      }

      v47 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v48);
      *(v3 + 176) = v47;
    }

    if (*(a2 + 22))
    {
      v49 = *(a2 + 22);
    }

    else
    {
      v49 = &TSCE::_CellCoordinateArchive_default_instance_;
    }

    this = TSCE::CellCoordinateArchive::MergeFrom(v47, v49);
  }

LABEL_89:
  if ((v25 & 0x3F00) == 0)
  {
    return this;
  }

  if ((v25 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v50 = *(v3 + 184);
    if (!v50)
    {
      v51 = *(v3 + 8);
      if (v51)
      {
        v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
      }

      v50 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v51);
      *(v3 + 184) = v50;
    }

    if (*(a2 + 23))
    {
      v52 = *(a2 + 23);
    }

    else
    {
      v52 = &TSCE::_CellCoordinateArchive_default_instance_;
    }

    this = TSCE::CellCoordinateArchive::MergeFrom(v50, v52);
    if ((v25 & 0x200) == 0)
    {
LABEL_92:
      if ((v25 & 0x400) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_115;
    }
  }

  else if ((v25 & 0x200) == 0)
  {
    goto LABEL_92;
  }

  *(v3 + 16) |= 0x200u;
  v53 = *(v3 + 192);
  if (!v53)
  {
    v54 = *(v3 + 8);
    if (v54)
    {
      v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
    }

    v53 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidLookupListArchive>(v54);
    *(v3 + 192) = v53;
  }

  if (*(a2 + 24))
  {
    v55 = *(a2 + 24);
  }

  else
  {
    v55 = &TSCE::_UidLookupListArchive_default_instance_;
  }

  this = TSCE::UidLookupListArchive::MergeFrom(v53, v55);
  if ((v25 & 0x400) == 0)
  {
LABEL_93:
    if ((v25 & 0x800) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_123;
  }

LABEL_115:
  *(v3 + 16) |= 0x400u;
  v56 = *(v3 + 200);
  if (!v56)
  {
    v57 = *(v3 + 8);
    if (v57)
    {
      v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
    }

    v56 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v57);
    *(v3 + 200) = v56;
  }

  if (*(a2 + 25))
  {
    v58 = *(a2 + 25);
  }

  else
  {
    v58 = &TSCE::_CellCoordinateArchive_default_instance_;
  }

  this = TSCE::CellCoordinateArchive::MergeFrom(v56, v58);
  if ((v25 & 0x800) == 0)
  {
LABEL_94:
    if ((v25 & 0x1000) == 0)
    {
      goto LABEL_95;
    }

LABEL_131:
    *(v3 + 216) = *(a2 + 216);
    if ((v25 & 0x2000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

LABEL_123:
  *(v3 + 16) |= 0x800u;
  v59 = *(v3 + 208);
  if (!v59)
  {
    v60 = *(v3 + 8);
    if (v60)
    {
      v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
    }

    v59 = MEMORY[0x223DA0390](v60);
    *(v3 + 208) = v59;
  }

  if (*(a2 + 26))
  {
    v61 = *(a2 + 26);
  }

  else
  {
    v61 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v59, v61);
  if ((v25 & 0x1000) != 0)
  {
    goto LABEL_131;
  }

LABEL_95:
  if ((v25 & 0x2000) != 0)
  {
LABEL_96:
    *(v3 + 220) = *(a2 + 55);
  }

LABEL_97:
  *(v3 + 16) |= v25;
  return this;
}

uint64_t *TST::GroupByArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive::Clear(this);

    return TST::GroupByArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::GroupByArchive::CopyFrom(uint64_t *this, const TST::GroupByArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::GroupByArchive::Clear(this);

    return TST::GroupByArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::GroupByArchive::IsInitialized(TST::GroupByArchive *this)
{
  if ((~*(this + 4) & 0x1001) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TST::GroupColumnArchive::IsInitialized(*(*(this + 5) + 8 * v2));
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
    v8 = TST::GroupByArchive_AggregatorArchive::IsInitialized(*(*(this + 8) + 8 * v6));
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
    v11 = TST::ColumnAggregateArchive::IsInitialized(*(*(this + 11) + 8 * v9));
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

  v15 = *(this + 4);
  if (v15)
  {
    result = TSP::UUID::IsInitialized(*(this + 15));
    if (!result)
    {
      return result;
    }

    v15 = *(this + 4);
  }

  if ((v15 & 2) != 0)
  {
    result = TST::GroupByArchive_GroupNodeArchive::IsInitialized(*(this + 16));
    if (!result)
    {
      return result;
    }

    v15 = *(this + 4);
  }

  if ((v15 & 0x200) != 0)
  {
    result = TSCE::UidLookupListArchive::IsInitialized(*(this + 24));
    if (!result)
    {
      return result;
    }

    v15 = *(this + 4);
  }

  if ((v15 & 0x800) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 26));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::GroupByArchive::InternalSwap(TST::GroupByArchive *this, TST::GroupByArchive *a2)
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
  *(this + 120) = *(a2 + 120);
  *(a2 + 15) = v13;
  *(a2 + 16) = v14;
  v15 = *(this + 17);
  v16 = *(this + 18);
  *(this + 136) = *(a2 + 136);
  *(a2 + 17) = v15;
  *(a2 + 18) = v16;
  v17 = *(this + 19);
  v18 = *(this + 20);
  *(this + 152) = *(a2 + 152);
  *(a2 + 19) = v17;
  *(a2 + 20) = v18;
  v19 = *(this + 21);
  v20 = *(this + 22);
  *(this + 168) = *(a2 + 168);
  *(a2 + 21) = v19;
  *(a2 + 22) = v20;
  v21 = *(this + 23);
  v22 = *(this + 24);
  *(this + 184) = *(a2 + 184);
  *(a2 + 23) = v21;
  *(a2 + 24) = v22;
  v23 = *(this + 25);
  v24 = *(this + 26);
  result = *(a2 + 200);
  *(this + 200) = result;
  *(a2 + 25) = v23;
  *(a2 + 26) = v24;
  LOBYTE(v23) = *(this + 216);
  *(this + 216) = *(a2 + 216);
  *(a2 + 216) = v23;
  LODWORD(v23) = *(this + 55);
  *(this + 55) = *(a2 + 55);
  *(a2 + 55) = v23;
  return result;
}

TSP::UUID *TST::CategoryOwnerArchive::clear_owner_uid(TST::CategoryOwnerArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::CategoryOwnerArchive *TST::CategoryOwnerArchive::CategoryOwnerArchive(TST::CategoryOwnerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7F98;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CategoryOwnerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TST::CategoryOwnerArchive *TST::CategoryOwnerArchive::CategoryOwnerArchive(TST::CategoryOwnerArchive *this, const TST::CategoryOwnerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B7F98;
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
    sub_221680CB8(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void sub_22165E4F4(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C40825B58B5);
  sub_221680C34((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::CategoryOwnerArchive::~CategoryOwnerArchive(TST::CategoryOwnerArchive *this)
{
  if (this != &TST::_CategoryOwnerArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_221680C34(this + 3);
}

{
  TST::CategoryOwnerArchive::~CategoryOwnerArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::CategoryOwnerArchive::default_instance(TST::CategoryOwnerArchive *this)
{
  if (atomic_load_explicit(scc_info_CategoryOwnerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CategoryOwnerArchive_default_instance_;
}

google::protobuf::internal *TST::CategoryOwnerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        v15 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive>(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v25;
LABEL_26:
        v11 = sub_221707EDC(a3, v15, v12);
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

unsigned __int8 *TST::CategoryOwnerArchive::_InternalSerialize(TST::CategoryOwnerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TST::GroupByArchive::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::CategoryOwnerArchive::ByteSizeLong(TSP::UUID **this)
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
      v10 = TST::GroupByArchive::ByteSizeLong(v9);
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

uint64_t TST::CategoryOwnerArchive::MergeFrom(TST::CategoryOwnerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CategoryOwnerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TST::CategoryOwnerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CategoryOwnerArchive::Clear(this);

    return TST::CategoryOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CategoryOwnerArchive::CopyFrom(uint64_t *this, const TST::CategoryOwnerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CategoryOwnerArchive::Clear(this);

    return TST::CategoryOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TST::CategoryOwnerArchive::InternalSwap(__n128 *this, __n128 *a2)
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

uint64_t TST::CategoryOwnerRefArchive::clear_group_by(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

TST::CategoryOwnerRefArchive *TST::CategoryOwnerRefArchive::CategoryOwnerRefArchive(TST::CategoryOwnerRefArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B8048;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_CategoryOwnerRefArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TST::CategoryOwnerRefArchive *TST::CategoryOwnerRefArchive::CategoryOwnerRefArchive(TST::CategoryOwnerRefArchive *this, const TST::CategoryOwnerRefArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834B8048;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_221568514(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TST::CategoryOwnerRefArchive::~CategoryOwnerRefArchive(TST::CategoryOwnerRefArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_2216E381C(this + 2);
}

{
  TST::CategoryOwnerRefArchive::~CategoryOwnerRefArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::CategoryOwnerRefArchive::default_instance(TST::CategoryOwnerRefArchive *this)
{
  if (atomic_load_explicit(scc_info_CategoryOwnerRefArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CategoryOwnerRefArchive_default_instance_;
}

uint64_t *TST::CategoryOwnerRefArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
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

google::protobuf::internal *TST::CategoryOwnerRefArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  if ((sub_221567030(a3, &v21) & 1) == 0)
  {
    while (1)
    {
      v5 = (v21 + 1);
      v6 = *v21;
      if ((*v21 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v7 - 128));
      v21 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v19;
LABEL_6:
      if (v6 == 10)
      {
        v9 = v5 - 1;
        while (1)
        {
          v10 = (v9 + 1);
          v21 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v17 = *(a1 + 24);
          v12 = *v11;
          if (v17 < *v11)
          {
            *(a1 + 24) = v17 + 1;
            v14 = *&v11[2 * v17 + 2];
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
          v13 = MEMORY[0x223DA0390](*(a1 + 16));
          LODWORD(v14) = v13;
          v15 = *(a1 + 24);
          v16 = *(a1 + 32) + 8 * v15;
          *(a1 + 24) = v15 + 1;
          *(v16 + 8) = v13;
          v10 = v21;
LABEL_22:
          v9 = sub_22170B7F8(a3, v14, v10);
          v21 = v9;
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
        return v21;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v21 = google::protobuf::internal::UnknownFieldParse();
      if (!v21)
      {
        return 0;
      }

LABEL_14:
      if (sub_221567030(a3, &v21))
      {
        return v21;
      }
    }

    v5 = (v21 + 2);
LABEL_5:
    v21 = v5;
    goto LABEL_6;
  }

  return v21;
}

unsigned __int8 *TST::CategoryOwnerRefArchive::_InternalSerialize(TST::CategoryOwnerRefArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::CategoryOwnerRefArchive::ByteSizeLong(TST::CategoryOwnerRefArchive *this)
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
      v7 = TSP::Reference::ByteSizeLong(v6);
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

uint64_t TST::CategoryOwnerRefArchive::MergeFrom(TST::CategoryOwnerRefArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CategoryOwnerRefArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CategoryOwnerRefArchive::MergeFrom(uint64_t this, const TST::CategoryOwnerRefArchive *a2)
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
    this = sub_221568514(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TST::CategoryOwnerRefArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CategoryOwnerRefArchive::Clear(this);

    return TST::CategoryOwnerRefArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CategoryOwnerRefArchive::CopyFrom(uint64_t *this, const TST::CategoryOwnerRefArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CategoryOwnerRefArchive::Clear(this);

    return TST::CategoryOwnerRefArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::CategoryOwnerRefArchive::IsInitialized(TST::CategoryOwnerRefArchive *this)
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
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TST::CategoryOwnerRefArchive::InternalSwap(TST::CategoryOwnerRefArchive *this, TST::CategoryOwnerRefArchive *a2)
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

uint64_t TST::PivotGroupingColumnOptionsMapArchive::clear_uids(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

uint64_t TST::PivotGroupingColumnOptionsMapArchive::clear_aggregate_rule_uids(uint64_t this)
{
  v1 = *(this + 64);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 72) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 64) = 0;
  }

  return this;
}

TST::PivotGroupingColumnOptionsMapArchive *TST::PivotGroupingColumnOptionsMapArchive::PivotGroupingColumnOptionsMapArchive(TST::PivotGroupingColumnOptionsMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B80F8;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 7) = a2;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  if (atomic_load_explicit(scc_info_PivotGroupingColumnOptionsMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_22165F778(_Unwind_Exception *a1)
{
  sub_221567974(v4);
  sub_2216FF1A4((v1 + 44), v3);
  sub_221567974(v2);
  _Unwind_Resume(a1);
}

TST::PivotGroupingColumnOptionsMapArchive *TST::PivotGroupingColumnOptionsMapArchive::PivotGroupingColumnOptionsMapArchive(TST::PivotGroupingColumnOptionsMapArchive *this, const TST::PivotGroupingColumnOptionsMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834B80F8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_2215679F8(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  v11 = *(a2 + 10);
  if (v11)
  {
    sub_2210BBC64(this + 10, v11);
    v12 = *(this + 6);
    *(this + 10) += *(a2 + 10);
    memcpy(v12, *(a2 + 6), 4 * *(a2 + 10));
  }

  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = *(a2 + 9);
    v15 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 56));
    sub_2215679F8(this + 56, v15, (v14 + 8), v13, **(this + 9) - *(this + 16));
    v16 = *(this + 16) + v13;
    *(this + 16) = v16;
    v17 = *(this + 9);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  *(this + 20) = 0;
  v18 = *(a2 + 1);
  if (v18)
  {
    sub_22156734C(v4, (v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_22165F934(_Unwind_Exception *a1)
{
  sub_221567974(v3);
  if (*(v2 + 44) >= 1)
  {
    v5 = *(v2 + 48);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  sub_221567974(v1);
  _Unwind_Resume(a1);
}

void TST::PivotGroupingColumnOptionsMapArchive::~PivotGroupingColumnOptionsMapArchive(TST::PivotGroupingColumnOptionsMapArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567974(this + 7);
  if (*(this + 11) >= 1)
  {
    v2 = *(this + 6);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  sub_221567974(this + 2);
}

{
  TST::PivotGroupingColumnOptionsMapArchive::~PivotGroupingColumnOptionsMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::PivotGroupingColumnOptionsMapArchive::default_instance(TST::PivotGroupingColumnOptionsMapArchive *this)
{
  if (atomic_load_explicit(scc_info_PivotGroupingColumnOptionsMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_PivotGroupingColumnOptionsMapArchive_default_instance_;
}

uint64_t *TST::PivotGroupingColumnOptionsMapArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  *(v1 + 40) = 0;
  v5 = *(v1 + 64);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 72) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::UUID::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 64) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_221567398(v8);
  }

  return this;
}

google::protobuf::internal *TST::PivotGroupingColumnOptionsMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  if (sub_221567030(a3, &v39))
  {
    return v39;
  }

  while (1)
  {
    v6 = (v39 + 1);
    v7 = *v39;
    if ((*v39 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v39 + 2);
LABEL_6:
      v39 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v8 - 128));
    v39 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v38;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 == 4)
    {
      if (v7 != 34)
      {
        goto LABEL_13;
      }

      v19 = v6 - 1;
      while (1)
      {
        v20 = (v19 + 1);
        v39 = (v19 + 1);
        v21 = *(a1 + 72);
        if (!v21)
        {
          goto LABEL_40;
        }

        v27 = *(a1 + 64);
        v22 = *v21;
        if (v27 < *v21)
        {
          *(a1 + 64) = v27 + 1;
          v24 = *&v21[2 * v27 + 2];
          goto LABEL_44;
        }

        if (v22 == *(a1 + 68))
        {
LABEL_40:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56));
          v21 = *(a1 + 72);
          v22 = *v21;
        }

        *v21 = v22 + 1;
        v23 = MEMORY[0x223DA0360](*(a1 + 56));
        LODWORD(v24) = v23;
        v25 = *(a1 + 64);
        v26 = *(a1 + 72) + 8 * v25;
        *(a1 + 64) = v25 + 1;
        *(v26 + 8) = v23;
        v20 = v39;
LABEL_44:
        v19 = sub_2216F813C(a3, v24, v20);
        v39 = v19;
        if (!v19)
        {
          return 0;
        }

        if (*a3 <= v19 || *v19 != 34)
        {
          goto LABEL_35;
        }
      }
    }

    if (v9 != 2)
    {
      if (v9 != 1 || v7 != 10)
      {
        goto LABEL_13;
      }

      v28 = v6 - 1;
      while (1)
      {
        v29 = (v28 + 1);
        v39 = (v28 + 1);
        v30 = *(a1 + 32);
        if (!v30)
        {
          goto LABEL_52;
        }

        v36 = *(a1 + 24);
        v31 = *v30;
        if (v36 < *v30)
        {
          *(a1 + 24) = v36 + 1;
          v33 = *&v30[2 * v36 + 2];
          goto LABEL_56;
        }

        if (v31 == *(a1 + 28))
        {
LABEL_52:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
          v30 = *(a1 + 32);
          v31 = *v30;
        }

        *v30 = v31 + 1;
        v32 = MEMORY[0x223DA0360](*(a1 + 16));
        LODWORD(v33) = v32;
        v34 = *(a1 + 24);
        v35 = *(a1 + 32) + 8 * v34;
        *(a1 + 24) = v34 + 1;
        *(v35 + 8) = v32;
        v29 = v39;
LABEL_56:
        v28 = sub_2216F813C(a3, v33, v29);
        v39 = v28;
        if (!v28)
        {
          return 0;
        }

        if (*a3 <= v28 || *v28 != 10)
        {
          goto LABEL_35;
        }
      }
    }

    if (v7 == 16)
    {
      break;
    }

    if (v7 == 18)
    {
      v12 = google::protobuf::internal::PackedUInt32Parser();
      goto LABEL_20;
    }

LABEL_13:
    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      *(a3 + 80) = v7 - 1;
      return v39;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_20:
    v39 = v12;
    if (!v12)
    {
      return 0;
    }

LABEL_35:
    if (sub_221567030(a3, &v39))
    {
      return v39;
    }
  }

  v13 = v6 - 1;
  while (1)
  {
    v39 = (v13 + 1);
    v14 = v13[1];
    if (v13[1] < 0)
    {
      v15 = v14 + (v13[2] << 7);
      v14 = v15 - 128;
      if (v13[2] < 0)
      {
        v13 = google::protobuf::internal::VarintParseSlow32((v13 + 1), (v15 - 128));
        v14 = v16;
      }

      else
      {
        v13 += 3;
      }
    }

    else
    {
      v13 += 2;
    }

    v39 = v13;
    v17 = *(a1 + 40);
    if (v17 == *(a1 + 44))
    {
      v18 = v17 + 1;
      sub_2210BBC64((a1 + 40), v17 + 1);
      *(*(a1 + 48) + 4 * v17) = v14;
      v13 = v39;
    }

    else
    {
      *(*(a1 + 48) + 4 * v17) = v14;
      v18 = v17 + 1;
    }

    *(a1 + 40) = v18;
    if (!v13)
    {
      return 0;
    }

    if (*a3 <= v13 || *v13 != 16)
    {
      goto LABEL_35;
    }
  }
}

unsigned __int8 *TST::PivotGroupingColumnOptionsMapArchive::_InternalSerialize(TST::PivotGroupingColumnOptionsMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSP::UUID::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 10);
  if (v13 >= 1)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 6) + 4 * j);
      *a2 = 16;
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v16 = v15 >> 7;
        if (v15 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++a2;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(a2 - 1) = v17;
        }

        else
        {
          a2[2] = v16;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v15;
        a2 += 2;
      }
    }
  }

  v19 = *(this + 16);
  if (v19)
  {
    for (k = 0; k != v19; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(this + 9) + 8 * k + 8);
      *a2 = 34;
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

  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v27 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::PivotGroupingColumnOptionsMapArchive::ByteSizeLong(TST::PivotGroupingColumnOptionsMapArchive *this)
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

  v8 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v9 = *(this + 16);
  v10 = v8 + v2 + *(this + 10) + v9;
  v11 = *(this + 9);
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
      v15 = TSP::UUID::ByteSizeLong(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v10, this + 80);
  }

  else
  {
    *(this + 20) = v10;
    return v10;
  }
}

uint64_t TST::PivotGroupingColumnOptionsMapArchive::MergeFrom(TST::PivotGroupingColumnOptionsMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::PivotGroupingColumnOptionsMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::PivotGroupingColumnOptionsMapArchive::MergeFrom(uint64_t this, const TST::PivotGroupingColumnOptionsMapArchive *a2)
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
    this = sub_2215679F8(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 10);
  if (v10)
  {
    v11 = *(v3 + 40);
    sub_2210BBC64((v3 + 40), v11 + v10);
    v12 = *(v3 + 48);
    *(v3 + 40) += *(a2 + 10);
    this = memcpy((v12 + 4 * v11), *(a2 + 6), 4 * *(a2 + 10));
  }

  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = *(a2 + 9);
    v15 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 56));
    this = sub_2215679F8(v3 + 56, v15, (v14 + 8), v13, **(v3 + 72) - *(v3 + 64));
    v16 = *(v3 + 64) + v13;
    *(v3 + 64) = v16;
    v17 = *(v3 + 72);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  return this;
}

uint64_t *TST::PivotGroupingColumnOptionsMapArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PivotGroupingColumnOptionsMapArchive::Clear(this);

    return TST::PivotGroupingColumnOptionsMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::PivotGroupingColumnOptionsMapArchive::CopyFrom(uint64_t *this, const TST::PivotGroupingColumnOptionsMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PivotGroupingColumnOptionsMapArchive::Clear(this);

    return TST::PivotGroupingColumnOptionsMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::PivotGroupingColumnOptionsMapArchive::IsInitialized(TST::PivotGroupingColumnOptionsMapArchive *this)
{
  v2 = *(this + 6);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 16);
  do
  {
    v5 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = TSP::UUID::IsInitialized(*(*(this + 9) + 8 * v6));
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  return v5;
}

__n128 TST::PivotGroupingColumnOptionsMapArchive::InternalSwap(TST::PivotGroupingColumnOptionsMapArchive *this, TST::PivotGroupingColumnOptionsMapArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  v7 = *(this + 6);
  *(this + 40) = *(a2 + 40);
  *(a2 + 5) = v6;
  *(a2 + 6) = v7;
  v8 = *(this + 8);
  v9 = *(this + 9);
  result = *(a2 + 4);
  *(this + 4) = result;
  *(a2 + 8) = v8;
  *(a2 + 9) = v9;
  return result;
}

TSP::UUID *TST::PivotOwnerArchive::clear_pivot_owner_uid(TST::PivotOwnerArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUID *TST::PivotOwnerArchive::clear_source_table_uid(TST::PivotOwnerArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSP::Reference *TST::PivotOwnerArchive::clear_grpg_col_options_map(TST::PivotOwnerArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::UUID *TST::PivotOwnerArchive::clear_refresh_uid(TST::PivotOwnerArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSP::UUID *TST::PivotOwnerArchive::clear_row_column_rule_change_uid(TST::PivotOwnerArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSP::UUID *TST::PivotOwnerArchive::clear_aggregate_rule_change_uid(TST::PivotOwnerArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

TST::PivotOwnerArchive *TST::PivotOwnerArchive::PivotOwnerArchive(TST::PivotOwnerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B81A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PivotOwnerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 111) = 0u;
  return this;
}

TST::PivotOwnerArchive *TST::PivotOwnerArchive::PivotOwnerArchive(TST::PivotOwnerArchive *this, const TST::PivotOwnerArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B81A8;
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
  if ((v4 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v4 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v4 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v4 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v4 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v4 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v4 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v4 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  v6 = *(a2 + 14);
  *(this + 119) = *(a2 + 119);
  *(this + 14) = v6;
  return this;
}

void TST::PivotOwnerArchive::~PivotOwnerArchive(TST::PivotOwnerArchive *this)
{
  sub_221660B4C(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::PivotOwnerArchive::~PivotOwnerArchive(this);

  JUMPOUT(0x223DA1450);
}

TSP::UUID *sub_221660B4C(TSP::UUID *result)
{
  v1 = result;
  v2 = *(result + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  if (v1 != &TST::_PivotOwnerArchive_default_instance_)
  {
    v3 = *(v1 + 4);
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(v1 + 5);
    if (v4)
    {
      TST::GroupColumnListArchive::~GroupColumnListArchive(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = *(v1 + 6);
    if (v5)
    {
      TST::GroupColumnListArchive::~GroupColumnListArchive(v5);
      MEMORY[0x223DA1450]();
    }

    v6 = *(v1 + 7);
    if (v6)
    {
      TST::ColumnAggregateListArchive::~ColumnAggregateListArchive(v6);
      MEMORY[0x223DA1450]();
    }

    v7 = *(v1 + 8);
    if (v7)
    {
      TSP::UUID::~UUID(v7);
      MEMORY[0x223DA1450]();
    }

    v8 = *(v1 + 9);
    if (v8)
    {
      TSP::Reference::~Reference(v8);
      MEMORY[0x223DA1450]();
    }

    v9 = *(v1 + 10);
    if (v9)
    {
      TST::FormulaStoreArchive::~FormulaStoreArchive(v9);
      MEMORY[0x223DA1450]();
    }

    v10 = *(v1 + 11);
    if (v10)
    {
      TSP::UUID::~UUID(v10);
      MEMORY[0x223DA1450]();
    }

    v11 = *(v1 + 12);
    if (v11)
    {
      TSP::UUID::~UUID(v11);
      MEMORY[0x223DA1450]();
    }

    result = *(v1 + 13);
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::PivotOwnerArchive::default_instance(TST::PivotOwnerArchive *this)
{
  if (atomic_load_explicit(scc_info_PivotOwnerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_PivotOwnerArchive_default_instance_;
}

uint64_t *TST::PivotOwnerArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_29:
  this = TSP::UUID::Clear(this[4]);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = TST::GroupColumnListArchive::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = TST::GroupColumnListArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_33:
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

    goto LABEL_34;
  }

LABEL_32:
  this = TST::ColumnAggregateListArchive::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_34:
  this = TSP::Reference::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TST::FormulaStoreArchive::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x700) == 0)
  {
    goto LABEL_16;
  }

  if ((v2 & 0x100) != 0)
  {
    this = TSP::UUID::Clear(*(v1 + 88));
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

  this = TSP::UUID::Clear(*(v1 + 96));
  if ((v2 & 0x400) != 0)
  {
LABEL_15:
    this = TSP::UUID::Clear(*(v1 + 104));
  }

LABEL_16:
  if ((v2 & 0xF800) != 0)
  {
    *(v1 + 119) = 0;
    *(v1 + 112) = 0;
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

google::protobuf::internal *TST::PivotOwnerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v55 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v55) & 1) == 0)
  {
    while (1)
    {
      v7 = (v55 + 1);
      v8 = *v55;
      if (*v55 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v55, (v9 - 128));
          v55 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_110;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v55 + 2);
      }

      v55 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_94;
          }

          *(a1 + 16) |= 2u;
          v10 = *(a1 + 32);
          if (v10)
          {
            goto LABEL_68;
          }

          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x223DA0360](v11);
          LODWORD(v10) = v12;
          *(a1 + 32) = v12;
          goto LABEL_67;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_94;
          }

          *(a1 + 16) |= 4u;
          v20 = *(a1 + 40);
          if (v20)
          {
            goto LABEL_49;
          }

          v28 = *(a1 + 8);
          if (v28)
          {
            v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupColumnListArchive>(v28);
          *(a1 + 40) = v20;
          goto LABEL_48;
        case 4u:
          if (v8 != 34)
          {
            goto LABEL_94;
          }

          *(a1 + 16) |= 8u;
          v20 = *(a1 + 48);
          if (v20)
          {
            goto LABEL_49;
          }

          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupColumnListArchive>(v21);
          *(a1 + 48) = v20;
LABEL_48:
          v7 = v55;
LABEL_49:
          v17 = sub_221707FAC(a3, v20, v7);
          goto LABEL_69;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_94;
          }

          *(a1 + 16) |= 0x10u;
          v35 = *(a1 + 56);
          if (!v35)
          {
            v36 = *(a1 + 8);
            if (v36)
            {
              v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
            }

            v35 = google::protobuf::Arena::CreateMaybeMessage<TST::ColumnAggregateListArchive>(v36);
            *(a1 + 56) = v35;
            v7 = v55;
          }

          v17 = sub_22170807C(a3, v35, v7);
          goto LABEL_69;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_94;
          }

          v5 |= 0x1000u;
          v38 = (v7 + 1);
          LODWORD(v37) = *v7;
          if ((v37 & 0x80) == 0)
          {
            goto LABEL_82;
          }

          v39 = *v38;
          v37 = (v37 + (v39 << 7) - 128);
          if (v39 < 0)
          {
            v51 = google::protobuf::internal::VarintParseSlow64(v7, v37);
            v55 = v51;
            *(a1 + 120) = v52;
            if (!v51)
            {
              goto LABEL_110;
            }
          }

          else
          {
            v38 = (v7 + 2);
LABEL_82:
            v55 = v38;
            *(a1 + 120) = v37;
          }

          goto LABEL_70;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_94;
          }

          v5 |= 0x2000u;
          v23 = (v7 + 1);
          v22 = *v7;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            v47 = google::protobuf::internal::VarintParseSlow64(v7, v22);
            v55 = v47;
            *(a1 + 124) = v48 != 0;
            if (!v47)
            {
              goto LABEL_110;
            }
          }

          else
          {
            v23 = (v7 + 2);
LABEL_37:
            v55 = v23;
            *(a1 + 124) = v22 != 0;
          }

          goto LABEL_70;
        case 8u:
          if (v8 != 66)
          {
            goto LABEL_94;
          }

          *(a1 + 16) |= 0x20u;
          v10 = *(a1 + 64);
          if (v10)
          {
            goto LABEL_68;
          }

          v29 = *(a1 + 8);
          if (v29)
          {
            v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
          }

          v30 = MEMORY[0x223DA0360](v29);
          LODWORD(v10) = v30;
          *(a1 + 64) = v30;
          goto LABEL_67;
        case 9u:
          if (v8 != 73)
          {
            goto LABEL_94;
          }

          v5 |= 0x800u;
          *(a1 + 112) = *v7;
          v55 = (v7 + 8);
          goto LABEL_70;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_94;
          }

          *(a1 + 16) |= 0x40u;
          v43 = *(a1 + 72);
          if (!v43)
          {
            v44 = *(a1 + 8);
            if (v44)
            {
              v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
            }

            v45 = MEMORY[0x223DA0390](v44);
            LODWORD(v43) = v45;
            *(a1 + 72) = v45;
            v7 = v55;
          }

          v17 = sub_22170B7F8(a3, v43, v7);
          goto LABEL_69;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_94;
          }

          v5 |= 0x4000u;
          v41 = (v7 + 1);
          v40 = *v7;
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_87;
          }

          v42 = *v41;
          v40 = (v42 << 7) + v40 - 128;
          if (v42 < 0)
          {
            v53 = google::protobuf::internal::VarintParseSlow64(v7, v40);
            v55 = v53;
            *(a1 + 125) = v54 != 0;
            if (!v53)
            {
              goto LABEL_110;
            }
          }

          else
          {
            v41 = (v7 + 2);
LABEL_87:
            v55 = v41;
            *(a1 + 125) = v40 != 0;
          }

          goto LABEL_70;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_94;
          }

          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v17 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_69;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_94;
          }

          v5 |= 0x8000u;
          v26 = (v7 + 1);
          v25 = *v7;
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_42;
          }

          v27 = *v26;
          v25 = (v27 << 7) + v25 - 128;
          if (v27 < 0)
          {
            v49 = google::protobuf::internal::VarintParseSlow64(v7, v25);
            v55 = v49;
            *(a1 + 126) = v50 != 0;
            if (!v49)
            {
              goto LABEL_110;
            }
          }

          else
          {
            v26 = (v7 + 2);
LABEL_42:
            v55 = v26;
            *(a1 + 126) = v25 != 0;
          }

          goto LABEL_70;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_94;
          }

          *(a1 + 16) |= 0x80u;
          v18 = *(a1 + 80);
          if (!v18)
          {
            v19 = *(a1 + 8);
            if (v19)
            {
              v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaStoreArchive>(v19);
            *(a1 + 80) = v18;
            v7 = v55;
          }

          v17 = sub_2217076BC(a3, v18, v7);
          goto LABEL_69;
        case 0x12u:
          if (v8 != 146)
          {
            goto LABEL_94;
          }

          *(a1 + 16) |= 0x100u;
          v10 = *(a1 + 88);
          if (v10)
          {
            goto LABEL_68;
          }

          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v16 = MEMORY[0x223DA0360](v15);
          LODWORD(v10) = v16;
          *(a1 + 88) = v16;
          goto LABEL_67;
        case 0x13u:
          if (v8 != 154)
          {
            goto LABEL_94;
          }

          *(a1 + 16) |= 0x200u;
          v10 = *(a1 + 96);
          if (v10)
          {
            goto LABEL_68;
          }

          v31 = *(a1 + 8);
          if (v31)
          {
            v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
          }

          v32 = MEMORY[0x223DA0360](v31);
          LODWORD(v10) = v32;
          *(a1 + 96) = v32;
          goto LABEL_67;
        case 0x14u:
          if (v8 != 162)
          {
            goto LABEL_94;
          }

          *(a1 + 16) |= 0x400u;
          v10 = *(a1 + 104);
          if (v10)
          {
            goto LABEL_68;
          }

          v33 = *(a1 + 8);
          if (v33)
          {
            v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x223DA0360](v33);
          LODWORD(v10) = v34;
          *(a1 + 104) = v34;
LABEL_67:
          v7 = v55;
LABEL_68:
          v17 = sub_2216F813C(a3, v10, v7);
          goto LABEL_69;
        default:
LABEL_94:
          if (v8)
          {
            v46 = (v8 & 7) == 4;
          }

          else
          {
            v46 = 1;
          }

          if (v46)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v17 = google::protobuf::internal::UnknownFieldParse();
LABEL_69:
          v55 = v17;
          if (!v17)
          {
LABEL_110:
            v55 = 0;
            goto LABEL_2;
          }

LABEL_70:
          if (sub_221567030(a3, &v55))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v55;
}

unsigned __int8 *TST::PivotOwnerArchive::_InternalSerialize(TST::PivotOwnerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

    v4 = TSP::UUID::_InternalSerialize(v7, v9, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
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

  v4 = TST::GroupColumnListArchive::_InternalSerialize(v13, v15, a3);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 6);
  *v4 = 34;
  v20 = *(v19 + 10);
  if (v20 > 0x7F)
  {
    v4[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = v4 + 3;
      do
      {
        *(v21 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++v21;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(v21 - 1) = v23;
    }

    else
    {
      v4[2] = v22;
      v21 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v20;
    v21 = v4 + 2;
  }

  v4 = TST::GroupColumnListArchive::_InternalSerialize(v19, v21, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

LABEL_58:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v31 = *(this + 30);
    *v4 = 48;
    if (v31 > 0x7F)
    {
      v4[1] = v31 | 0x80;
      v32 = v31 >> 7;
      if (v31 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v32 | 0x80;
          v33 = v32 >> 7;
          ++v4;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
        *(v4 - 1) = v33;
        if ((v6 & 0x2000) != 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v4[2] = v32;
        v4 += 3;
        if ((v6 & 0x2000) != 0)
        {
          goto LABEL_69;
        }
      }
    }

    else
    {
      v4[1] = v31;
      v4 += 2;
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_69;
      }
    }

LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_72;
  }

LABEL_48:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 7);
  *v4 = 42;
  v26 = *(v25 + 10);
  if (v26 > 0x7F)
  {
    v4[1] = v26 | 0x80;
    v28 = v26 >> 7;
    if (v26 >> 14)
    {
      v27 = v4 + 3;
      do
      {
        *(v27 - 1) = v28 | 0x80;
        v29 = v28 >> 7;
        ++v27;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
      *(v27 - 1) = v29;
    }

    else
    {
      v4[2] = v28;
      v27 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v26;
    v27 = v4 + 2;
  }

  v4 = TST::ColumnAggregateListArchive::_InternalSerialize(v25, v27, a3);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_58;
  }

LABEL_6:
  if ((v6 & 0x2000) == 0)
  {
    goto LABEL_7;
  }

LABEL_69:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(this + 124);
  *v4 = 56;
  v4[1] = v35;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_82;
  }

LABEL_72:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v36 = *(this + 8);
  *v4 = 66;
  v37 = *(v36 + 5);
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

  v4 = TSP::UUID::_InternalSerialize(v36, v38, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_85;
  }

LABEL_82:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v42 = *(this + 14);
  *v4 = 73;
  *(v4 + 1) = v42;
  v4 += 9;
  if ((v6 & 0x40) == 0)
  {
LABEL_10:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_95;
  }

LABEL_85:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v43 = *(this + 9);
  *v4 = 82;
  v44 = *(v43 + 5);
  if (v44 > 0x7F)
  {
    v4[1] = v44 | 0x80;
    v46 = v44 >> 7;
    if (v44 >> 14)
    {
      v45 = v4 + 3;
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
      v4[2] = v46;
      v45 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v44;
    v45 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v43, v45, a3);
  if ((v6 & 0x4000) == 0)
  {
LABEL_11:
    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_98;
  }

LABEL_95:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v49 = *(this + 125);
  *v4 = 88;
  v4[1] = v49;
  v4 += 2;
  if ((v6 & 1) == 0)
  {
LABEL_12:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_99;
  }

LABEL_98:
  v4 = sub_22150C00C(a3, 12, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x8000) == 0)
  {
LABEL_13:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_102;
  }

LABEL_99:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v50 = *(this + 126);
  *v4 = 104;
  v4[1] = v50;
  v4 += 2;
  if ((v6 & 0x80) == 0)
  {
LABEL_14:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_112;
  }

LABEL_102:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v51 = *(this + 10);
  *v4 = 394;
  v52 = *(v51 + 5);
  if (v52 > 0x7F)
  {
    v4[2] = v52 | 0x80;
    v54 = v52 >> 7;
    if (v52 >> 14)
    {
      v53 = v4 + 4;
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
      v4[3] = v54;
      v53 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v52;
    v53 = v4 + 3;
  }

  v4 = TST::FormulaStoreArchive::_InternalSerialize(v51, v53, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_15:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_122;
  }

LABEL_112:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v57 = *(this + 11);
  *v4 = 402;
  v58 = *(v57 + 5);
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

  v4 = TSP::UUID::_InternalSerialize(v57, v59, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_16:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_132;
  }

LABEL_122:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v63 = *(this + 12);
  *v4 = 410;
  v64 = *(v63 + 5);
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

  v4 = TSP::UUID::_InternalSerialize(v63, v65, a3);
  if ((v6 & 0x400) != 0)
  {
LABEL_132:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v69 = *(this + 13);
    *v4 = 418;
    v70 = *(v69 + 5);
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

    v4 = TSP::UUID::_InternalSerialize(v69, v71, a3);
  }

LABEL_142:
  v75 = *(this + 1);
  if ((v75 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v75 & 0xFFFFFFFFFFFFFFFELL) + 8);
}