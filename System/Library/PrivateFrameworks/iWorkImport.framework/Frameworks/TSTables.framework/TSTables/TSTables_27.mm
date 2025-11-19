unsigned __int8 *TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::_InternalSerialize(TSCE::GroupByNodeMapArchive_CellRefsForGroupNode *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 4);
    *a2 = 26;
    v13 = *(v12 + 10);
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

    a2 = TSCE::InternalCellRefSetArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::ByteSizeLong(TSCE::GroupByNodeMapArchive_CellRefsForGroupNode *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
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
    v5 = TSCE::InternalCellRefSetArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::MergeFrom(TSCE::GroupByNodeMapArchive_CellRefsForGroupNode *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::MergeFrom(uint64_t this, const TSCE::GroupByNodeMapArchive_CellRefsForGroupNode *a2)
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSCE::_InternalCellRefSetArchive_default_instance_;
      }

      return TSCE::InternalCellRefSetArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::Clear(this);

    return TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::CopyFrom(uint64_t *this, const TSCE::GroupByNodeMapArchive_CellRefsForGroupNode *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::Clear(this);

    return TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::IsInitialized(TSCE::GroupByNodeMapArchive_CellRefsForGroupNode *this)
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

    result = sub_2214E71E0(*(this + 4) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::InternalSwap(TSCE::GroupByNodeMapArchive_CellRefsForGroupNode *this, TSCE::GroupByNodeMapArchive_CellRefsForGroupNode *a2)
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

TSP::UUID *TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::clear_group_by_uid(TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy *TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::GroupByNodeMapArchive_GroupNodesForGroupBy(TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ADE90;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_GroupByNodeMapArchive_GroupNodesForGroupBy_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy *TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::GroupByNodeMapArchive_GroupNodesForGroupBy(TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy *this, const TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ADE90;
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
    sub_22156AE54(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void sub_221527374(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C40825B58B5);
  sub_22156ADD0((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::~GroupByNodeMapArchive_GroupNodesForGroupBy(TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy *this)
{
  if (this != &TSCE::_GroupByNodeMapArchive_GroupNodesForGroupBy_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_22156ADD0(this + 3);
}

{
  TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::~GroupByNodeMapArchive_GroupNodesForGroupBy(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::default_instance(TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy *this)
{
  if (atomic_load_explicit(scc_info_GroupByNodeMapArchive_GroupNodesForGroupBy_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_GroupByNodeMapArchive_GroupNodesForGroupBy_default_instance_;
}

uint64_t *TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::Clear(v4);
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

google::protobuf::internal *TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByNodeMapArchive_CellRefsForGroupNode>(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v25;
LABEL_26:
        v11 = sub_2216FBBBC(a3, v15, v12);
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

unsigned __int8 *TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::_InternalSerialize(TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::ByteSizeLong(TSP::UUID **this)
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
      v10 = TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::ByteSizeLong(v9);
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

uint64_t TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::MergeFrom(TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::MergeFrom(uint64_t this, const TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy *a2)
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
    this = sub_22156AE54(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

uint64_t *TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::Clear(this);

    return TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::CopyFrom(uint64_t *this, const TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::Clear(this);

    return TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::IsInitialized(TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::IsInitialized(*(*(this + 5) + 8 * v3));
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

  result = TSP::UUID::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::InternalSwap(__n128 *this, __n128 *a2)
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

TSCE::GroupByNodeMapArchive *TSCE::GroupByNodeMapArchive::GroupByNodeMapArchive(TSCE::GroupByNodeMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ADF40;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_GroupByNodeMapArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::GroupByNodeMapArchive *TSCE::GroupByNodeMapArchive::GroupByNodeMapArchive(TSCE::GroupByNodeMapArchive *this, const TSCE::GroupByNodeMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834ADF40;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22156AF98(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::GroupByNodeMapArchive::~GroupByNodeMapArchive(TSCE::GroupByNodeMapArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22156AF14(this + 2);
}

{
  TSCE::GroupByNodeMapArchive::~GroupByNodeMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::GroupByNodeMapArchive::default_instance(TSCE::GroupByNodeMapArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupByNodeMapArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_GroupByNodeMapArchive_default_instance_;
}

uint64_t *TSCE::GroupByNodeMapArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::Clear(v4);
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

google::protobuf::internal *TSCE::GroupByNodeMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216FBC8C(a3, v13, v10);
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

unsigned __int8 *TSCE::GroupByNodeMapArchive::_InternalSerialize(TSCE::GroupByNodeMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::GroupByNodeMapArchive::ByteSizeLong(TSCE::GroupByNodeMapArchive *this)
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
      v7 = TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::ByteSizeLong(v6);
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

uint64_t TSCE::GroupByNodeMapArchive::MergeFrom(TSCE::GroupByNodeMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::GroupByNodeMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::GroupByNodeMapArchive::MergeFrom(uint64_t this, const TSCE::GroupByNodeMapArchive *a2)
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
    this = sub_22156AF98(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::GroupByNodeMapArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::GroupByNodeMapArchive::Clear(this);

    return TSCE::GroupByNodeMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::GroupByNodeMapArchive::CopyFrom(uint64_t *this, const TSCE::GroupByNodeMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::GroupByNodeMapArchive::Clear(this);

    return TSCE::GroupByNodeMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::GroupByNodeMapArchive::IsInitialized(TSCE::GroupByNodeMapArchive *this)
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
    IsInitialized = TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSCE::GroupByNodeMapArchive::InternalSwap(TSCE::GroupByNodeMapArchive *this, TSCE::GroupByNodeMapArchive *a2)
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

TSP::Reference *TSCE::CalculationEngineArchive::clear_named_reference_manager(TSCE::CalculationEngineArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::Reference *TSCE::CalculationEngineArchive::clear_remote_data_store(TSCE::CalculationEngineArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSP::Reference *TSCE::CalculationEngineArchive::clear_header_name_manager(TSCE::CalculationEngineArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSP::Reference *TSCE::CalculationEngineArchive::clear_refs_to_dirty(TSCE::CalculationEngineArchive *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

uint64_t TSCE::CalculationEngineArchive::clear_begin_tracking_names_legacy_nrm(uint64_t this)
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

uint64_t TSCE::CalculationEngineArchive::clear_end_tracking_names_legacy_nrm(uint64_t this)
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

TSCE::CalculationEngineArchive *TSCE::CalculationEngineArchive::CalculationEngineArchive(TSCE::CalculationEngineArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ADFF0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_CalculationEngineArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 9) = MEMORY[0x277D80A90];
  *(this + 10) = v3;
  *(this + 11) = v3;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 176) = 0;
  *(this + 45) = 1;
  return this;
}

void sub_2215288FC(_Unwind_Exception *a1)
{
  sub_221567974(v2);
  sub_221567974(v1);
  _Unwind_Resume(a1);
}

TSCE::CalculationEngineArchive *TSCE::CalculationEngineArchive::CalculationEngineArchive(TSCE::CalculationEngineArchive *this, const TSCE::CalculationEngineArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ADFF0;
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

  v15 = *(a2 + 1);
  if (v15)
  {
    sub_22156734C(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v16 = MEMORY[0x277D80A90];
  *(this + 9) = MEMORY[0x277D80A90];
  v17 = *(a2 + 4);
  if (v17)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v17 = *(a2 + 4);
  }

  *(this + 10) = v16;
  if ((v17 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v17 = *(a2 + 4);
  }

  *(this + 11) = v16;
  if ((v17 & 4) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v17 = *(a2 + 4);
  }

  if ((v17 & 8) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v17 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v17 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v17 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v17 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v17 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v17 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v17 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  v18 = *(a2 + 10);
  *(this + 22) = *(a2 + 22);
  *(this + 10) = v18;
  return this;
}

void sub_221528CDC(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x1081C407D3F2757);
  sub_221567974(v2);
  sub_221567974((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::CalculationEngineArchive::~CalculationEngineArchive(TSCE::CalculationEngineArchive *this)
{
  sub_221528DB8(this);
  sub_2214DFCF8(this + 1);
  sub_221567974(this + 6);
  sub_221567974(this + 3);
}

{
  TSCE::CalculationEngineArchive::~CalculationEngineArchive(this);

  JUMPOUT(0x223DA1450);
}

TSP::Reference *sub_221528DB8(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 9);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 10);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x223DA1450](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 11);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x223DA1450](v5, 0x1012C40EC159624);
  }

  if (v1 != &TSCE::_CalculationEngineArchive_default_instance_)
  {
    v6 = *(v1 + 12);
    if (v6)
    {
      TSCE::DependencyTrackerArchive::~DependencyTrackerArchive(v6);
      MEMORY[0x223DA1450]();
    }

    v7 = *(v1 + 13);
    if (v7)
    {
      TSP::Reference::~Reference(v7);
      MEMORY[0x223DA1450]();
    }

    v8 = *(v1 + 14);
    if (v8)
    {
      TSCE::UuidReferenceMapArchive::~UuidReferenceMapArchive(v8);
      MEMORY[0x223DA1450]();
    }

    v9 = *(v1 + 15);
    if (v9)
    {
      TSCE::RewriteTableUIDInfoArchive::~RewriteTableUIDInfoArchive(v9);
      MEMORY[0x223DA1450]();
    }

    v10 = *(v1 + 16);
    if (v10)
    {
      TSP::Reference::~Reference(v10);
      MEMORY[0x223DA1450]();
    }

    v11 = *(v1 + 17);
    if (v11)
    {
      TSCE::GroupByNodeMapArchive::~GroupByNodeMapArchive(v11);
      MEMORY[0x223DA1450]();
    }

    v12 = *(v1 + 18);
    if (v12)
    {
      TSP::Reference::~Reference(v12);
      MEMORY[0x223DA1450]();
    }

    result = *(v1 + 19);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TSCE::CalculationEngineArchive::default_instance(TSCE::CalculationEngineArchive *this)
{
  if (atomic_load_explicit(scc_info_CalculationEngineArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CalculationEngineArchive_default_instance_;
}

uint64_t *TSCE::CalculationEngineArchive::Clear(uint64_t *this)
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

  v8 = *(v1 + 16);
  if (!v8)
  {
    goto LABEL_19;
  }

  if (v8)
  {
    v11 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_12:
    if ((v8 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_41:
    v13 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 23) < 0)
    {
      **v13 = 0;
      *(v13 + 8) = 0;
      if ((v8 & 8) != 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      *v13 = 0;
      *(v13 + 23) = 0;
      if ((v8 & 8) != 0)
      {
        goto LABEL_45;
      }
    }

LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

  if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_37:
  v12 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v8 & 4) != 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v8 & 4) != 0)
    {
      goto LABEL_41;
    }
  }

LABEL_13:
  if ((v8 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_45:
  this = TSCE::DependencyTrackerArchive::Clear(*(v1 + 96));
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_47:
    this = TSCE::UuidReferenceMapArchive::Clear(*(v1 + 112));
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_46:
  this = TSP::Reference::Clear(*(v1 + 104));
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_47;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_48:
  this = TSCE::RewriteTableUIDInfoArchive::Clear(*(v1 + 120));
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    this = TSP::Reference::Clear(*(v1 + 128));
  }

LABEL_19:
  if ((v8 & 0x700) == 0)
  {
    goto LABEL_24;
  }

  if ((v8 & 0x100) != 0)
  {
    this = TSCE::GroupByNodeMapArchive::Clear(*(v1 + 136));
    if ((v8 & 0x200) == 0)
    {
LABEL_22:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  this = TSP::Reference::Clear(*(v1 + 144));
  if ((v8 & 0x400) != 0)
  {
LABEL_23:
    this = TSP::Reference::Clear(*(v1 + 152));
  }

LABEL_24:
  if ((v8 & 0x7800) != 0)
  {
    *(v1 + 160) = 0;
    *(v1 + 168) = 0;
    *(v1 + 176) = 0;
    *(v1 + 180) = 1;
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

uint64_t *TSCE::RewriteTableUIDInfoArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::Clear(v4);
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

google::protobuf::internal *TSCE::CalculationEngineArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v62 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v62) & 1) == 0)
  {
    while (2)
    {
      v7 = (v62 + 1);
      v8 = *v62;
      if (*v62 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v62, (v9 - 128));
          v62 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_126;
          }

          v7 = TagFallback;
          v8 = v14;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 8)
              {
                goto LABEL_108;
              }

              v5 |= 0x2000u;
              v11 = (v7 + 1);
              v10 = *v7;
              if ((v10 & 0x8000000000000000) == 0)
              {
                goto LABEL_12;
              }

              v12 = *v11;
              v10 = (v12 << 7) + v10 - 128;
              if ((v12 & 0x80000000) == 0)
              {
                v11 = (v7 + 2);
LABEL_12:
                v62 = v11;
                *(a1 + 176) = v10 != 0;
                goto LABEL_116;
              }

              v60 = google::protobuf::internal::VarintParseSlow64(v7, v10);
              v62 = v60;
              *(a1 + 176) = v61 != 0;
              if (!v60)
              {
                goto LABEL_126;
              }

              goto LABEL_116;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_108;
              }

              *(a1 + 16) |= 8u;
              v22 = *(a1 + 96);
              if (!v22)
              {
                v23 = *(a1 + 8);
                if (v23)
                {
                  v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
                }

                v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::DependencyTrackerArchive>(v23);
                *(a1 + 96) = v22;
                v7 = v62;
              }

              v24 = sub_2216FBD5C(a3, v22, v7);
              goto LABEL_115;
            case 3u:
              if (v8 != 26)
              {
                goto LABEL_108;
              }

              *(a1 + 16) |= 0x10u;
              v15 = *(a1 + 104);
              if (v15)
              {
                goto LABEL_62;
              }

              v33 = *(a1 + 8);
              if (v33)
              {
                v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
              }

              v34 = MEMORY[0x223DA0390](v33);
              LODWORD(v15) = v34;
              *(a1 + 104) = v34;
              goto LABEL_61;
            case 4u:
              if (v8 != 32)
              {
                goto LABEL_108;
              }

              v31 = (v7 + 1);
              v30 = *v7;
              if ((v30 & 0x8000000000000000) == 0)
              {
                goto LABEL_53;
              }

              v32 = *v31;
              v30 = (v32 << 7) + v30 - 128;
              if (v32 < 0)
              {
                v62 = google::protobuf::internal::VarintParseSlow64(v7, v30);
                if (!v62)
                {
                  goto LABEL_126;
                }
              }

              else
              {
                v31 = (v7 + 2);
LABEL_53:
                v62 = v31;
              }

              if ((v30 - 1) > 2)
              {
                sub_2216FF1F8();
              }

              else
              {
                *(a1 + 16) |= 0x4000u;
                *(a1 + 180) = v30;
              }

              goto LABEL_116;
            case 5u:
              if (v8 != 42)
              {
                goto LABEL_108;
              }

              *(a1 + 16) |= 1u;
              goto LABEL_94;
            case 6u:
              if (v8 != 48)
              {
                goto LABEL_108;
              }

              v5 |= 0x800u;
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
                v58 = google::protobuf::internal::VarintParseSlow64(v7, v25);
                v62 = v58;
                *(a1 + 160) = v59;
                if (!v58)
                {
                  goto LABEL_126;
                }
              }

              else
              {
                v26 = (v7 + 2);
LABEL_42:
                v62 = v26;
                *(a1 + 160) = v25;
              }

              goto LABEL_116;
            case 7u:
              if (v8 != 58)
              {
                goto LABEL_108;
              }

              *(a1 + 16) |= 0x20u;
              v35 = *(a1 + 112);
              if (!v35)
              {
                v36 = *(a1 + 8);
                if (v36)
                {
                  v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
                }

                v35 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferenceMapArchive>(v36);
                *(a1 + 112) = v35;
                v7 = v62;
              }

              v24 = sub_2216FBE2C(a3, v35, v7);
              goto LABEL_115;
            case 9u:
              if (v8 != 73)
              {
                goto LABEL_108;
              }

              v5 |= 0x1000u;
              *(a1 + 168) = *v7;
              v62 = (v7 + 8);
              goto LABEL_116;
            case 0xAu:
              if (v8 != 82)
              {
                goto LABEL_108;
              }

              *(a1 + 16) |= 2u;
              goto LABEL_94;
            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_108;
              }

              *(a1 + 16) |= 0x40u;
              v46 = *(a1 + 120);
              if (!v46)
              {
                v47 = *(a1 + 8);
                if (v47)
                {
                  v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
                }

                v46 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RewriteTableUIDInfoArchive>(v47);
                *(a1 + 120) = v46;
                v7 = v62;
              }

              v24 = sub_2216FBEFC(a3, v46, v7);
              goto LABEL_115;
            case 0xCu:
              if (v8 != 98)
              {
                goto LABEL_108;
              }

              *(a1 + 16) |= 0x80u;
              v15 = *(a1 + 128);
              if (v15)
              {
                goto LABEL_62;
              }

              v18 = *(a1 + 8);
              if (v18)
              {
                v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
              }

              v19 = MEMORY[0x223DA0390](v18);
              LODWORD(v15) = v19;
              *(a1 + 128) = v19;
              goto LABEL_61;
            case 0xDu:
              if (v8 != 106)
              {
                goto LABEL_108;
              }

              *(a1 + 16) |= 0x100u;
              v28 = *(a1 + 136);
              if (!v28)
              {
                v29 = *(a1 + 8);
                if (v29)
                {
                  v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
                }

                v28 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByNodeMapArchive>(v29);
                *(a1 + 136) = v28;
                v7 = v62;
              }

              v24 = sub_2216FBFCC(a3, v28, v7);
              goto LABEL_115;
            case 0xEu:
              if (v8 != 114)
              {
                goto LABEL_108;
              }

              *(a1 + 16) |= 0x200u;
              v15 = *(a1 + 144);
              if (v15)
              {
                goto LABEL_62;
              }

              v20 = *(a1 + 8);
              if (v20)
              {
                v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
              }

              v21 = MEMORY[0x223DA0390](v20);
              LODWORD(v15) = v21;
              *(a1 + 144) = v21;
              goto LABEL_61;
            case 0xFu:
              if (v8 != 122)
              {
                goto LABEL_108;
              }

              *(a1 + 16) |= 0x400u;
              v15 = *(a1 + 152);
              if (v15)
              {
                goto LABEL_62;
              }

              v16 = *(a1 + 8);
              if (v16)
              {
                v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = MEMORY[0x223DA0390](v16);
              LODWORD(v15) = v17;
              *(a1 + 152) = v17;
LABEL_61:
              v7 = v62;
LABEL_62:
              v24 = sub_22170B7F8(a3, v15, v7);
              goto LABEL_115;
            case 0x10u:
              if (v8 != 130)
              {
                goto LABEL_108;
              }

              *(a1 + 16) |= 4u;
LABEL_94:
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v24 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_115;
            case 0x11u:
              if (v8 != 138)
              {
                goto LABEL_108;
              }

              v37 = v7 - 2;
              while (1)
              {
                v38 = (v37 + 2);
                v62 = (v37 + 2);
                v39 = *(a1 + 40);
                if (!v39)
                {
                  goto LABEL_76;
                }

                v45 = *(a1 + 32);
                v40 = *v39;
                if (v45 < *v39)
                {
                  *(a1 + 32) = v45 + 1;
                  v42 = *&v39[2 * v45 + 2];
                  goto LABEL_80;
                }

                if (v40 == *(a1 + 36))
                {
LABEL_76:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                  v39 = *(a1 + 40);
                  v40 = *v39;
                }

                *v39 = v40 + 1;
                v41 = MEMORY[0x223DA0360](*(a1 + 24));
                LODWORD(v42) = v41;
                v43 = *(a1 + 32);
                v44 = *(a1 + 40) + 8 * v43;
                *(a1 + 32) = v43 + 1;
                *(v44 + 8) = v41;
                v38 = v62;
LABEL_80:
                v37 = sub_2216F813C(a3, v42, v38);
                v62 = v37;
                if (!v37)
                {
                  goto LABEL_126;
                }

                if (*a3 <= v37 || *v37 != 394)
                {
                  goto LABEL_116;
                }
              }

            case 0x12u:
              if (v8 != 146)
              {
                goto LABEL_108;
              }

              v48 = v7 - 2;
              break;
            default:
LABEL_108:
              if (v8)
              {
                v57 = (v8 & 7) == 4;
              }

              else
              {
                v57 = 1;
              }

              if (v57)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_221567188((a1 + 8));
              }

              v24 = google::protobuf::internal::UnknownFieldParse();
LABEL_115:
              v62 = v24;
              if (!v24)
              {
LABEL_126:
                v62 = 0;
                goto LABEL_2;
              }

LABEL_116:
              if (sub_221567030(a3, &v62))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v49 = (v48 + 2);
            v62 = (v48 + 2);
            v50 = *(a1 + 64);
            if (!v50)
            {
              goto LABEL_98;
            }

            v56 = *(a1 + 56);
            v51 = *v50;
            if (v56 < *v50)
            {
              *(a1 + 56) = v56 + 1;
              v53 = *&v50[2 * v56 + 2];
              goto LABEL_102;
            }

            if (v51 == *(a1 + 60))
            {
LABEL_98:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v50 = *(a1 + 64);
              v51 = *v50;
            }

            *v50 = v51 + 1;
            v52 = MEMORY[0x223DA0360](*(a1 + 48));
            LODWORD(v53) = v52;
            v54 = *(a1 + 56);
            v55 = *(a1 + 64) + 8 * v54;
            *(a1 + 56) = v54 + 1;
            *(v55 + 8) = v52;
            v49 = v62;
LABEL_102:
            v48 = sub_2216F813C(a3, v53, v49);
            v62 = v48;
            if (!v48)
            {
              goto LABEL_126;
            }

            if (*a3 <= v48 || *v48 != 402)
            {
              goto LABEL_116;
            }
          }
        }

        v7 = (v62 + 2);
      }

      break;
    }

    v62 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v62;
}

unsigned __int8 *TSCE::CalculationEngineArchive::_InternalSerialize(TSCE::CalculationEngineArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(this + 176);
    *v4 = 8;
    v4[1] = v25;
    v4 += 2;
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(this + 12);
  *v4 = 18;
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

  v4 = TSCE::DependencyTrackerArchive::_InternalSerialize(v26, v28, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_5;
    }

LABEL_66:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v38 = *(this + 45);
    *v4 = 32;
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
        if (v6)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v4[2] = v39;
        v4 += 3;
        if (v6)
        {
          goto LABEL_77;
        }
      }
    }

    else
    {
      v4[1] = v38;
      v4 += 2;
      if (v6)
      {
        goto LABEL_77;
      }
    }

LABEL_6:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_7;
    }

LABEL_78:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v42 = *(this + 20);
    *v4 = 48;
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
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v4[2] = v43;
        v4 += 3;
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_89;
        }
      }
    }

    else
    {
      v4[1] = v42;
      v4 += 2;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_89;
      }
    }

LABEL_8:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_99;
  }

LABEL_56:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v32 = *(this + 13);
  *v4 = 26;
  v33 = *(v32 + 5);
  if (v33 > 0x7F)
  {
    v4[1] = v33 | 0x80;
    v35 = v33 >> 7;
    if (v33 >> 14)
    {
      v34 = v4 + 3;
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
      v4[2] = v35;
      v34 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v33;
    v34 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v32, v34, a3);
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_66;
  }

LABEL_5:
  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_77:
  v4 = sub_22150C00C(a3, 5, (*(this + 9) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_78;
  }

LABEL_7:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_89:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v46 = *(this + 14);
  *v4 = 58;
  v47 = *(v46 + 10);
  if (v47 > 0x7F)
  {
    v4[1] = v47 | 0x80;
    v49 = v47 >> 7;
    if (v47 >> 14)
    {
      v48 = v4 + 3;
      do
      {
        *(v48 - 1) = v49 | 0x80;
        v50 = v49 >> 7;
        ++v48;
        v51 = v49 >> 14;
        v49 >>= 7;
      }

      while (v51);
      *(v48 - 1) = v50;
    }

    else
    {
      v4[2] = v49;
      v48 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v47;
    v48 = v4 + 2;
  }

  v4 = TSCE::UuidReferenceMapArchive::_InternalSerialize(v46, v48, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_9:
    if ((v6 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_102;
  }

LABEL_99:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v52 = *(this + 21);
  *v4 = 73;
  *(v4 + 1) = v52;
  v4 += 9;
  if ((v6 & 2) == 0)
  {
LABEL_10:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_103;
  }

LABEL_102:
  v4 = sub_22150C00C(a3, 10, (*(this + 10) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_11:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_113;
  }

LABEL_103:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v53 = *(this + 15);
  *v4 = 90;
  v54 = *(v53 + 10);
  if (v54 > 0x7F)
  {
    v4[1] = v54 | 0x80;
    v56 = v54 >> 7;
    if (v54 >> 14)
    {
      v55 = v4 + 3;
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
      v4[2] = v56;
      v55 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v54;
    v55 = v4 + 2;
  }

  v4 = TSCE::RewriteTableUIDInfoArchive::_InternalSerialize(v53, v55, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_12:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_123;
  }

LABEL_113:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v59 = *(this + 16);
  *v4 = 98;
  v60 = *(v59 + 5);
  if (v60 > 0x7F)
  {
    v4[1] = v60 | 0x80;
    v62 = v60 >> 7;
    if (v60 >> 14)
    {
      v61 = v4 + 3;
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
      v4[2] = v62;
      v61 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v60;
    v61 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v59, v61, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_13:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_133;
  }

LABEL_123:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v65 = *(this + 17);
  *v4 = 106;
  v66 = *(v65 + 10);
  if (v66 > 0x7F)
  {
    v4[1] = v66 | 0x80;
    v68 = v66 >> 7;
    if (v66 >> 14)
    {
      v67 = v4 + 3;
      do
      {
        *(v67 - 1) = v68 | 0x80;
        v69 = v68 >> 7;
        ++v67;
        v70 = v68 >> 14;
        v68 >>= 7;
      }

      while (v70);
      *(v67 - 1) = v69;
    }

    else
    {
      v4[2] = v68;
      v67 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v66;
    v67 = v4 + 2;
  }

  v4 = TSCE::GroupByNodeMapArchive::_InternalSerialize(v65, v67, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_14:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_143;
  }

LABEL_133:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v71 = *(this + 18);
  *v4 = 114;
  v72 = *(v71 + 5);
  if (v72 > 0x7F)
  {
    v4[1] = v72 | 0x80;
    v74 = v72 >> 7;
    if (v72 >> 14)
    {
      v73 = v4 + 3;
      do
      {
        *(v73 - 1) = v74 | 0x80;
        v75 = v74 >> 7;
        ++v73;
        v76 = v74 >> 14;
        v74 >>= 7;
      }

      while (v76);
      *(v73 - 1) = v75;
    }

    else
    {
      v4[2] = v74;
      v73 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v72;
    v73 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v71, v73, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_15:
    if ((v6 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_143:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v77 = *(this + 19);
  *v4 = 122;
  v78 = *(v77 + 5);
  if (v78 > 0x7F)
  {
    v4[1] = v78 | 0x80;
    v80 = v78 >> 7;
    if (v78 >> 14)
    {
      v79 = v4 + 3;
      do
      {
        *(v79 - 1) = v80 | 0x80;
        v81 = v80 >> 7;
        ++v79;
        v82 = v80 >> 14;
        v80 >>= 7;
      }

      while (v82);
      *(v79 - 1) = v81;
    }

    else
    {
      v4[2] = v80;
      v79 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v78;
    v79 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v77, v79, a3);
  if ((v6 & 4) != 0)
  {
LABEL_16:
    v4 = sub_22150C00C(a3, 16, (*(this + 11) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_17:
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
      *v4 = 394;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        v4[2] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 4;
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
          v4[3] = v12;
          v11 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v10;
        v11 = v4 + 3;
      }

      v4 = TSP::UUID::_InternalSerialize(v9, v11, a3);
    }
  }

  v15 = *(this + 14);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v17 = *(*(this + 8) + 8 * j + 8);
      *v4 = 402;
      v18 = *(v17 + 5);
      if (v18 > 0x7F)
      {
        v4[2] = v18 | 0x80;
        v20 = v18 >> 7;
        if (v18 >> 14)
        {
          v19 = v4 + 4;
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
          v4[3] = v20;
          v19 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v18;
        v19 = v4 + 3;
      }

      v4 = TSP::UUID::_InternalSerialize(v17, v19, a3);
    }
  }

  v23 = *(this + 1);
  if ((v23 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v23 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CalculationEngineArchive::ByteSizeLong(TSCE::DependencyTrackerArchive **this)
{
  if ((this[2] & 8) != 0)
  {
    v3 = TSCE::DependencyTrackerArchive::ByteSizeLong(this[12]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + 2 * v4;
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
  v12 = v5 + 2 * v11;
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

  v18 = *(this + 4);
  if ((v18 & 7) != 0)
  {
    if (v18)
    {
      v28 = this[9] & 0xFFFFFFFFFFFFFFFELL;
      v29 = *(v28 + 23);
      v30 = *(v28 + 8);
      if ((v29 & 0x80u) == 0)
      {
        v30 = v29;
      }

      v12 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v18 & 2) == 0)
      {
LABEL_19:
        if ((v18 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_20;
      }
    }

    else if ((v18 & 2) == 0)
    {
      goto LABEL_19;
    }

    v31 = this[10] & 0xFFFFFFFFFFFFFFFELL;
    v32 = *(v31 + 23);
    v33 = *(v31 + 8);
    if ((v32 & 0x80u) == 0)
    {
      v33 = v32;
    }

    v12 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v18 & 4) != 0)
    {
LABEL_20:
      v19 = this[11] & 0xFFFFFFFFFFFFFFFELL;
      v20 = *(v19 + 23);
      v21 = *(v19 + 8);
      if ((v20 & 0x80u) == 0)
      {
        v21 = v20;
      }

      v12 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

LABEL_23:
  if ((v18 & 0xF0) == 0)
  {
    goto LABEL_29;
  }

  if ((v18 & 0x10) != 0)
  {
    v34 = TSP::Reference::ByteSizeLong(this[13]);
    v12 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v18 & 0x20) == 0)
    {
LABEL_26:
      if ((v18 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_53;
    }
  }

  else if ((v18 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  v35 = TSCE::UuidReferenceMapArchive::ByteSizeLong(this[14]);
  v12 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v18 & 0x40) == 0)
  {
LABEL_27:
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_53:
  v36 = TSCE::RewriteTableUIDInfoArchive::ByteSizeLong(this[15]);
  v12 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v18 & 0x80) != 0)
  {
LABEL_28:
    v22 = TSP::Reference::ByteSizeLong(this[16]);
    v12 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_29:
  if ((v18 & 0x7F00) == 0)
  {
    goto LABEL_42;
  }

  if ((v18 & 0x100) != 0)
  {
    v37 = TSCE::GroupByNodeMapArchive::ByteSizeLong(this[17]);
    v12 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v18 & 0x200) == 0)
    {
LABEL_32:
      if ((v18 & 0x400) == 0)
      {
        goto LABEL_33;
      }

LABEL_57:
      v39 = TSP::Reference::ByteSizeLong(this[19]);
      v12 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v18 & 0x800) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((v18 & 0x200) == 0)
  {
    goto LABEL_32;
  }

  v38 = TSP::Reference::ByteSizeLong(this[18]);
  v12 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v18 & 0x400) != 0)
  {
    goto LABEL_57;
  }

LABEL_33:
  if ((v18 & 0x800) != 0)
  {
LABEL_34:
    v12 += ((9 * (__clz(this[20] | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_35:
  v23 = v12 + 9;
  if ((v18 & 0x1000) == 0)
  {
    v23 = v12;
  }

  v12 = v23 + ((v18 >> 12) & 2);
  if ((v18 & 0x4000) != 0)
  {
    v24 = *(this + 45);
    v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v24 >= 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = 11;
    }

    v12 += v26;
  }

LABEL_42:
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

uint64_t TSCE::CalculationEngineArchive::MergeFrom(TSCE::CalculationEngineArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CalculationEngineArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CalculationEngineArchive::MergeFrom(uint64_t this, const TSCE::CalculationEngineArchive *a2)
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

  v15 = *(a2 + 4);
  if (!v15)
  {
    goto LABEL_63;
  }

  if (v15)
  {
    *(v3 + 16) |= 1u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v15 & 2) == 0)
    {
LABEL_12:
      if ((v15 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_12;
  }

  *(v3 + 16) |= 2u;
  this = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v15 & 4) == 0)
  {
LABEL_13:
    if ((v15 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v3 + 16) |= 4u;
  this = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v15 & 8) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  *(v3 + 16) |= 8u;
  v16 = *(v3 + 96);
  if (!v16)
  {
    v17 = *(v3 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = google::protobuf::Arena::CreateMaybeMessage<TSCE::DependencyTrackerArchive>(v17);
    *(v3 + 96) = v16;
  }

  if (*(a2 + 12))
  {
    v18 = *(a2 + 12);
  }

  else
  {
    v18 = &TSCE::_DependencyTrackerArchive_default_instance_;
  }

  this = TSCE::DependencyTrackerArchive::MergeFrom(v16, v18);
LABEL_26:
  v19 = MEMORY[0x277D80A18];
  if ((v15 & 0x10) == 0)
  {
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_39:
    *(v3 + 16) |= 0x20u;
    v23 = *(v3 + 112);
    if (!v23)
    {
      v24 = *(v3 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferenceMapArchive>(v24);
      *(v3 + 112) = v23;
    }

    if (*(a2 + 14))
    {
      v25 = *(a2 + 14);
    }

    else
    {
      v25 = &TSCE::_UuidReferenceMapArchive_default_instance_;
    }

    this = TSCE::UuidReferenceMapArchive::MergeFrom(v23, v25);
    if ((v15 & 0x40) == 0)
    {
LABEL_29:
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_55;
    }

    goto LABEL_47;
  }

  *(v3 + 16) |= 0x10u;
  v20 = *(v3 + 104);
  if (!v20)
  {
    v21 = *(v3 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = MEMORY[0x223DA0390](v21);
    *(v3 + 104) = v20;
  }

  if (*(a2 + 13))
  {
    v22 = *(a2 + 13);
  }

  else
  {
    v22 = v19;
  }

  this = TSP::Reference::MergeFrom(v20, v22);
  if ((v15 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_28:
  if ((v15 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_47:
  *(v3 + 16) |= 0x40u;
  v26 = *(v3 + 120);
  if (!v26)
  {
    v27 = *(v3 + 8);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RewriteTableUIDInfoArchive>(v27);
    *(v3 + 120) = v26;
  }

  if (*(a2 + 15))
  {
    v28 = *(a2 + 15);
  }

  else
  {
    v28 = &TSCE::_RewriteTableUIDInfoArchive_default_instance_;
  }

  this = TSCE::RewriteTableUIDInfoArchive::MergeFrom(v26, v28);
  if ((v15 & 0x80) != 0)
  {
LABEL_55:
    *(v3 + 16) |= 0x80u;
    v29 = *(v3 + 128);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x223DA0390](v30);
      *(v3 + 128) = v29;
    }

    if (*(a2 + 16))
    {
      v31 = *(a2 + 16);
    }

    else
    {
      v31 = v19;
    }

    this = TSP::Reference::MergeFrom(v29, v31);
  }

LABEL_63:
  if ((v15 & 0x7F00) == 0)
  {
    return this;
  }

  if ((v15 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v32 = *(v3 + 136);
    if (!v32)
    {
      v33 = *(v3 + 8);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByNodeMapArchive>(v33);
      *(v3 + 136) = v32;
    }

    if (*(a2 + 17))
    {
      v34 = *(a2 + 17);
    }

    else
    {
      v34 = &TSCE::_GroupByNodeMapArchive_default_instance_;
    }

    this = TSCE::GroupByNodeMapArchive::MergeFrom(v32, v34);
    if ((v15 & 0x200) == 0)
    {
LABEL_66:
      if ((v15 & 0x400) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_90;
    }
  }

  else if ((v15 & 0x200) == 0)
  {
    goto LABEL_66;
  }

  *(v3 + 16) |= 0x200u;
  v35 = *(v3 + 144);
  if (!v35)
  {
    v36 = *(v3 + 8);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = MEMORY[0x223DA0390](v36);
    *(v3 + 144) = v35;
  }

  if (*(a2 + 18))
  {
    v37 = *(a2 + 18);
  }

  else
  {
    v37 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v35, v37);
  if ((v15 & 0x400) == 0)
  {
LABEL_67:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_98;
  }

LABEL_90:
  *(v3 + 16) |= 0x400u;
  v38 = *(v3 + 152);
  if (!v38)
  {
    v39 = *(v3 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = MEMORY[0x223DA0390](v39);
    *(v3 + 152) = v38;
  }

  if (*(a2 + 19))
  {
    v40 = *(a2 + 19);
  }

  else
  {
    v40 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v38, v40);
  if ((v15 & 0x800) == 0)
  {
LABEL_68:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(v3 + 160) = *(a2 + 20);
  if ((v15 & 0x1000) == 0)
  {
LABEL_69:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_70;
    }

LABEL_100:
    *(v3 + 176) = *(a2 + 176);
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_99:
  *(v3 + 168) = *(a2 + 21);
  if ((v15 & 0x2000) != 0)
  {
    goto LABEL_100;
  }

LABEL_70:
  if ((v15 & 0x4000) != 0)
  {
LABEL_71:
    *(v3 + 180) = *(a2 + 45);
  }

LABEL_72:
  *(v3 + 16) |= v15;
  return this;
}

uint64_t TSCE::RewriteTableUIDInfoArchive::MergeFrom(uint64_t this, const TSCE::RewriteTableUIDInfoArchive *a2)
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
    this = sub_22156B62C(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::CalculationEngineArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CalculationEngineArchive::Clear(this);

    return TSCE::CalculationEngineArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CalculationEngineArchive::CopyFrom(uint64_t *this, const TSCE::CalculationEngineArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CalculationEngineArchive::Clear(this);

    return TSCE::CalculationEngineArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::CalculationEngineArchive::IsInitialized(TSCE::CalculationEngineArchive *this)
{
  if ((*(this + 16) & 8) == 0)
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

  v9 = *(this + 4);
  if ((v9 & 8) != 0)
  {
    result = TSCE::DependencyTrackerArchive::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x10) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 13));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x20) != 0)
  {
    v10 = *(this + 14);
    v11 = *(v10 + 24);
    while (v11 >= 1)
    {
      v12 = v11 - 1;
      v13 = TSCE::UuidReferenceMapArchive_CellRefsForUuid::IsInitialized(*(*(v10 + 32) + 8 * v11));
      result = 0;
      v11 = v12;
      if ((v13 & 1) == 0)
      {
        return result;
      }
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x40) != 0)
  {
    v14 = *(this + 15);
    v15 = *(v14 + 24);
    while (v15 >= 1)
    {
      v16 = v15 - 1;
      v17 = TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::IsInitialized(*(*(v14 + 32) + 8 * v15));
      result = 0;
      v15 = v16;
      if ((v17 & 1) == 0)
      {
        return result;
      }
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x80) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 16));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x100) != 0)
  {
    v18 = *(this + 17);
    v19 = *(v18 + 24);
    while (v19 >= 1)
    {
      v20 = v19 - 1;
      v21 = TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::IsInitialized(*(*(v18 + 32) + 8 * v19));
      result = 0;
      v19 = v20;
      if ((v21 & 1) == 0)
      {
        return result;
      }
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x200) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 18));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x400) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 19));
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL TSCE::RewriteTableUIDInfoArchive::IsInitialized(TSCE::RewriteTableUIDInfoArchive *this)
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
    IsInitialized = TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSCE::CalculationEngineArchive::InternalSwap(TSCE::CalculationEngineArchive *this, TSCE::CalculationEngineArchive *a2)
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
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v9;
  v10 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v10;
  v11 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v11;
  v12 = *(this + 12);
  v13 = *(this + 13);
  *(this + 6) = *(a2 + 6);
  *(a2 + 12) = v12;
  *(a2 + 13) = v13;
  v14 = *(this + 14);
  v15 = *(this + 15);
  *(this + 7) = *(a2 + 7);
  *(a2 + 14) = v14;
  *(a2 + 15) = v15;
  v16 = *(this + 16);
  v17 = *(this + 17);
  *(this + 8) = *(a2 + 8);
  *(a2 + 16) = v16;
  *(a2 + 17) = v17;
  v18 = *(this + 18);
  v19 = *(this + 19);
  *(this + 9) = *(a2 + 9);
  *(a2 + 18) = v18;
  *(a2 + 19) = v19;
  v20 = *(this + 20);
  v21 = *(this + 21);
  result = *(a2 + 10);
  *(this + 10) = result;
  *(a2 + 20) = v20;
  *(a2 + 21) = v21;
  LOBYTE(v20) = *(this + 176);
  *(this + 176) = *(a2 + 176);
  *(a2 + 176) = v20;
  LODWORD(v20) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v20;
  return result;
}

uint64_t TSCE::PreserveColumnRowFlagsArchive::PreserveColumnRowFlagsArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_2834AE0A0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  *result = &unk_2834AE0A0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

TSCE::PreserveColumnRowFlagsArchive *TSCE::PreserveColumnRowFlagsArchive::PreserveColumnRowFlagsArchive(TSCE::PreserveColumnRowFlagsArchive *this, const TSCE::PreserveColumnRowFlagsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AE0A0;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 6) = *(a2 + 6);
  return this;
}

void TSCE::PreserveColumnRowFlagsArchive::~PreserveColumnRowFlagsArchive(TSCE::PreserveColumnRowFlagsArchive *this)
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

uint64_t *TSCE::PreserveColumnRowFlagsArchive::default_instance(TSCE::PreserveColumnRowFlagsArchive *this)
{
  if (atomic_load_explicit(scc_info_PreserveColumnRowFlagsArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_PreserveColumnRowFlagsArchive_default_instance_;
}

uint64_t *TSCE::PreserveColumnRowFlagsArchive::Clear(TSCE::PreserveColumnRowFlagsArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TSCE::PreserveColumnRowFlagsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
            v35 = v22;
            *(a1 + 26) = v21 != 0;
            goto LABEL_42;
          }

          v33 = google::protobuf::internal::VarintParseSlow64(v7, v21);
          v35 = v33;
          *(a1 + 26) = v34 != 0;
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
            v35 = v16;
            *(a1 + 27) = v15 != 0;
            goto LABEL_42;
          }

          v27 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v35 = v27;
          *(a1 + 27) = v28 != 0;
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
        v19 = (v7 + 1);
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_29:
          v35 = v19;
          *(a1 + 24) = v18 != 0;
          goto LABEL_42;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v35 = v31;
        *(a1 + 24) = v32 != 0;
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
          v35 = v13;
          *(a1 + 25) = v12 != 0;
          goto LABEL_42;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v35 = v29;
        *(a1 + 25) = v30 != 0;
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

unsigned __int8 *TSCE::PreserveColumnRowFlagsArchive::_InternalSerialize(TSCE::PreserveColumnRowFlagsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      goto LABEL_12;
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
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 26);
  *a2 = 24;
  a2[1] = v8;
  a2 += 2;
  if ((v5 & 8) != 0)
  {
LABEL_15:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 27);
    *a2 = 32;
    a2[1] = v9;
    a2 += 2;
  }

LABEL_18:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::PreserveColumnRowFlagsArchive::ByteSizeLong(TSCE::PreserveColumnRowFlagsArchive *this)
{
  v1 = *(this + 4);
  v2 = 2 * (v1 & 1) + (v1 & 2);
  if ((~v1 & 3) == 0)
  {
    v2 = 4;
  }

  v3 = ((v1 >> 2) & 2) + ((v1 >> 1) & 2) + v2;
  if ((*(this + 4) & 0xC) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  v6 = *(this + 8);
  v5 = this + 8;
  if (v6)
  {
    return MEMORY[0x2821EADD8](v5, v4, v5 + 12);
  }

  *(v5 + 3) = v4;
  return v4;
}

uint64_t TSCE::PreserveColumnRowFlagsArchive::MergeFrom(TSCE::PreserveColumnRowFlagsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::PreserveColumnRowFlagsArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::PreserveColumnRowFlagsArchive::MergeFrom(uint64_t this, const TSCE::PreserveColumnRowFlagsArchive *a2)
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
      *(v3 + 24) = *(a2 + 24);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
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
LABEL_9:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_8:
      *(v3 + 27) = *(a2 + 27);
      goto LABEL_9;
    }

LABEL_13:
    *(v3 + 26) = *(a2 + 26);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

TSCE::PreserveColumnRowFlagsArchive *TSCE::PreserveColumnRowFlagsArchive::CopyFrom(TSCE::PreserveColumnRowFlagsArchive *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_221567398(v5);
    }

    return TSCE::PreserveColumnRowFlagsArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

const TSCE::PreserveColumnRowFlagsArchive *TSCE::PreserveColumnRowFlagsArchive::CopyFrom(const TSCE::PreserveColumnRowFlagsArchive *this, const TSCE::PreserveColumnRowFlagsArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_221567398(v5);
    }

    return TSCE::PreserveColumnRowFlagsArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::PreserveColumnRowFlagsArchive::InternalSwap(TSCE::PreserveColumnRowFlagsArchive *this, TSCE::PreserveColumnRowFlagsArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  return result;
}

uint64_t TSCE::CategoryReferenceArchive_CatRefUidList::clear_uid(uint64_t this)
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

TSCE::CategoryReferenceArchive_CatRefUidList *TSCE::CategoryReferenceArchive_CatRefUidList::CategoryReferenceArchive_CatRefUidList(TSCE::CategoryReferenceArchive_CatRefUidList *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AE150;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_CategoryReferenceArchive_CatRefUidList_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::CategoryReferenceArchive_CatRefUidList *TSCE::CategoryReferenceArchive_CatRefUidList::CategoryReferenceArchive_CatRefUidList(TSCE::CategoryReferenceArchive_CatRefUidList *this, const TSCE::CategoryReferenceArchive_CatRefUidList *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AE150;
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

void TSCE::CategoryReferenceArchive_CatRefUidList::~CategoryReferenceArchive_CatRefUidList(TSCE::CategoryReferenceArchive_CatRefUidList *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567974(this + 2);
}

{
  TSCE::CategoryReferenceArchive_CatRefUidList::~CategoryReferenceArchive_CatRefUidList(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::CategoryReferenceArchive_CatRefUidList::default_instance(TSCE::CategoryReferenceArchive_CatRefUidList *this)
{
  if (atomic_load_explicit(scc_info_CategoryReferenceArchive_CatRefUidList_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CategoryReferenceArchive_CatRefUidList_default_instance_;
}

uint64_t *TSCE::CategoryReferenceArchive_CatRefUidList::Clear(uint64_t *this)
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

google::protobuf::internal *TSCE::CategoryReferenceArchive_CatRefUidList::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *TSCE::CategoryReferenceArchive_CatRefUidList::_InternalSerialize(TSCE::CategoryReferenceArchive_CatRefUidList *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSCE::CategoryReferenceArchive_CatRefUidList::ByteSizeLong(TSCE::CategoryReferenceArchive_CatRefUidList *this)
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

uint64_t TSCE::CategoryReferenceArchive_CatRefUidList::MergeFrom(TSCE::CategoryReferenceArchive_CatRefUidList *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CategoryReferenceArchive_CatRefUidList::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CategoryReferenceArchive_CatRefUidList::MergeFrom(uint64_t this, const TSCE::CategoryReferenceArchive_CatRefUidList *a2)
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

uint64_t *TSCE::CategoryReferenceArchive_CatRefUidList::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CategoryReferenceArchive_CatRefUidList::Clear(this);

    return TSCE::CategoryReferenceArchive_CatRefUidList::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CategoryReferenceArchive_CatRefUidList::CopyFrom(uint64_t *this, const TSCE::CategoryReferenceArchive_CatRefUidList *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CategoryReferenceArchive_CatRefUidList::Clear(this);

    return TSCE::CategoryReferenceArchive_CatRefUidList::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::CategoryReferenceArchive_CatRefUidList::IsInitialized(TSCE::CategoryReferenceArchive_CatRefUidList *this)
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

__n128 TSCE::CategoryReferenceArchive_CatRefUidList::InternalSwap(TSCE::CategoryReferenceArchive_CatRefUidList *this, TSCE::CategoryReferenceArchive_CatRefUidList *a2)
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

TSP::UUID *TSCE::CategoryReferenceArchive::clear_group_by_uid(TSCE::CategoryReferenceArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUID *TSCE::CategoryReferenceArchive::clear_column_uid(TSCE::CategoryReferenceArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUID *TSCE::CategoryReferenceArchive::clear_relative_group_uid(TSCE::CategoryReferenceArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::UUID *TSCE::CategoryReferenceArchive::clear_absolute_group_uid(TSCE::CategoryReferenceArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSCE::CategoryReferenceArchive *TSCE::CategoryReferenceArchive::CategoryReferenceArchive(TSCE::CategoryReferenceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AE200;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CategoryReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 22) = 0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834AE200;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CategoryReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 22) = 0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSCE::CategoryReferenceArchive *TSCE::CategoryReferenceArchive::CategoryReferenceArchive(TSCE::CategoryReferenceArchive *this, const TSCE::CategoryReferenceArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AE200;
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
  v7 = *(a2 + 72);
  *(this + 22) = *(a2 + 22);
  *(this + 72) = v7;
  return this;
}

void TSCE::CategoryReferenceArchive::~CategoryReferenceArchive(TSCE::CategoryReferenceArchive *this)
{
  sub_22152C728(this);
  sub_2214DFCF8(this + 1);
}

{
  TSCE::CategoryReferenceArchive::~CategoryReferenceArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_22152C728(uint64_t *result)
{
  if (result != TSCE::_CategoryReferenceArchive_default_instance_)
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
      TSCE::CategoryReferenceArchive_CatRefUidList::~CategoryReferenceArchive_CatRefUidList(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[6];
    if (v5)
    {
      sub_2214DFCF8((v5 + 8));
      MEMORY[0x223DA1450](v5, 0x1081C40E1DA5700);
    }

    v6 = v1[7];
    if (v6)
    {
      TSP::UUID::~UUID(v6);
      MEMORY[0x223DA1450]();
    }

    result = v1[8];
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TSCE::CategoryReferenceArchive::default_instance(TSCE::CategoryReferenceArchive *this)
{
  if (atomic_load_explicit(scc_info_CategoryReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_CategoryReferenceArchive_default_instance_;
}

uint64_t *TSCE::CategoryReferenceArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_16;
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

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSP::UUID::Clear(v1[4]);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v3 = v1[6];
    v4 = *(v3 + 8);
    this = (v3 + 8);
    *(this + 4) = 0;
    *(this + 2) = 0;
    if (v4)
    {
      this = sub_221567398(this);
    }

    goto LABEL_12;
  }

LABEL_9:
  this = TSCE::CategoryReferenceArchive_CatRefUidList::Clear(v1[5]);
  if ((v2 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  if ((v2 & 0x10) != 0)
  {
    this = TSP::UUID::Clear(v1[7]);
  }

  if ((v2 & 0x20) != 0)
  {
    this = TSP::UUID::Clear(v1[8]);
  }

LABEL_16:
  if ((v2 & 0xC0) != 0)
  {
    v1[9] = 0;
  }

  if ((v2 & 0x1F00) != 0)
  {
    *(v1 + 22) = 0;
    v1[10] = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TSCE::CategoryReferenceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v59 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v59) & 1) == 0)
  {
    while (1)
    {
      v7 = (v59 + 1);
      v8 = *v59;
      if (*v59 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v59, (v9 - 128));
          v59 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_104;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v59 + 2);
      }

      v59 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_81;
          }

          *(a1 + 16) |= 1u;
          v10 = *(a1 + 24);
          if (v10)
          {
            goto LABEL_77;
          }

          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x223DA0360](v11);
          LODWORD(v10) = v12;
          *(a1 + 24) = v12;
          goto LABEL_76;
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_81;
          }

          *(a1 + 16) |= 2u;
          v10 = *(a1 + 32);
          if (v10)
          {
            goto LABEL_77;
          }

          v34 = *(a1 + 8);
          if (v34)
          {
            v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
          }

          v35 = MEMORY[0x223DA0360](v34);
          LODWORD(v10) = v35;
          *(a1 + 32) = v35;
          goto LABEL_76;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_81;
          }

          v5 |= 0x40u;
          v31 = (v7 + 1);
          LODWORD(v32) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          v33 = *v31;
          v32 = (v32 + (v33 << 7) - 128);
          if (v33 < 0)
          {
            v53 = google::protobuf::internal::VarintParseSlow32(v7, v32);
            v59 = v53;
            *(a1 + 72) = v54;
            if (!v53)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v31 = (v7 + 2);
LABEL_50:
            v59 = v31;
            *(a1 + 72) = v32;
          }

          goto LABEL_79;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_81;
          }

          v29 = (v7 + 1);
          v30 = *v7;
          if ((v30 & 0x8000000000000000) != 0)
          {
            v30 = (*v29 << 7) + v30 - 128;
            if (*v29 < 0)
            {
              v29 = google::protobuf::internal::VarintParseSlow64(v7, v30);
            }

            else
            {
              v29 = (v7 + 2);
            }
          }

          v5 |= 0x80u;
          v59 = v29;
          *(a1 + 76) = -(v30 & 1) ^ (v30 >> 1);
          if (!v29)
          {
            goto LABEL_104;
          }

          goto LABEL_79;
        case 6u:
          if (v8 != 50)
          {
            goto LABEL_81;
          }

          *(a1 + 16) |= 4u;
          v18 = *(a1 + 40);
          if (!v18)
          {
            v19 = *(a1 + 8);
            if (v19)
            {
              v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CategoryReferenceArchive_CatRefUidList>(v19);
            *(a1 + 40) = v18;
            v7 = v59;
          }

          v20 = sub_2216FC09C(a3, v18, v7);
          goto LABEL_78;
        case 7u:
          if (v8 != 58)
          {
            goto LABEL_81;
          }

          *(a1 + 16) |= 8u;
          v24 = *(a1 + 48);
          if (!v24)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = google::protobuf::Arena::CreateMaybeMessage<TSCE::PreserveColumnRowFlagsArchive>(v25);
            *(a1 + 48) = v24;
            v7 = v59;
          }

          v20 = sub_2216FC16C(a3, v24, v7);
          goto LABEL_78;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_81;
          }

          v5 |= 0x100u;
          v37 = (v7 + 1);
          LODWORD(v36) = *v7;
          if ((v36 & 0x80) == 0)
          {
            goto LABEL_60;
          }

          v38 = *v37;
          v36 = (v36 + (v38 << 7) - 128);
          if (v38 < 0)
          {
            v55 = google::protobuf::internal::VarintParseSlow64(v7, v36);
            v59 = v55;
            *(a1 + 80) = v56;
            if (!v55)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v37 = (v7 + 2);
LABEL_60:
            v59 = v37;
            *(a1 + 80) = v36;
          }

          goto LABEL_79;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_81;
          }

          *(a1 + 16) |= 0x10u;
          v10 = *(a1 + 56);
          if (v10)
          {
            goto LABEL_77;
          }

          v39 = *(a1 + 8);
          if (v39)
          {
            v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
          }

          v40 = MEMORY[0x223DA0360](v39);
          LODWORD(v10) = v40;
          *(a1 + 56) = v40;
          goto LABEL_76;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_81;
          }

          *(a1 + 16) |= 0x20u;
          v10 = *(a1 + 64);
          if (v10)
          {
            goto LABEL_77;
          }

          v44 = *(a1 + 8);
          if (v44)
          {
            v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
          }

          v45 = MEMORY[0x223DA0360](v44);
          LODWORD(v10) = v45;
          *(a1 + 64) = v45;
LABEL_76:
          v7 = v59;
LABEL_77:
          v20 = sub_2216F813C(a3, v10, v7);
          goto LABEL_78;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_81;
          }

          v5 |= 0x200u;
          v42 = (v7 + 1);
          v41 = *v7;
          if ((v41 & 0x8000000000000000) == 0)
          {
            goto LABEL_70;
          }

          v43 = *v42;
          v41 = (v43 << 7) + v41 - 128;
          if (v43 < 0)
          {
            v57 = google::protobuf::internal::VarintParseSlow64(v7, v41);
            v59 = v57;
            *(a1 + 84) = v58 != 0;
            if (!v57)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v42 = (v7 + 2);
LABEL_70:
            v59 = v42;
            *(a1 + 84) = v41 != 0;
          }

          goto LABEL_79;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_81;
          }

          v5 |= 0x400u;
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
            v47 = google::protobuf::internal::VarintParseSlow64(v7, v15);
            v59 = v47;
            *(a1 + 85) = v48 != 0;
            if (!v47)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v16 = (v7 + 2);
LABEL_19:
            v59 = v16;
            *(a1 + 85) = v15 != 0;
          }

          goto LABEL_79;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_81;
          }

          v5 |= 0x1000u;
          v26 = (v7 + 1);
          LODWORD(v27) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_41;
          }

          v28 = *v26;
          v27 = (v27 + (v28 << 7) - 128);
          if (v28 < 0)
          {
            v51 = google::protobuf::internal::VarintParseSlow32(v7, v27);
            v59 = v51;
            *(a1 + 88) = v52;
            if (!v51)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v26 = (v7 + 2);
LABEL_41:
            v59 = v26;
            *(a1 + 88) = v27;
          }

          goto LABEL_79;
        case 0xEu:
          if (v8 != 112)
          {
            goto LABEL_81;
          }

          v5 |= 0x800u;
          v22 = (v7 + 1);
          v21 = *v7;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v49 = google::protobuf::internal::VarintParseSlow64(v7, v21);
            v59 = v49;
            *(a1 + 86) = v50 != 0;
            if (!v49)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v22 = (v7 + 2);
LABEL_30:
            v59 = v22;
            *(a1 + 86) = v21 != 0;
          }

          goto LABEL_79;
        default:
LABEL_81:
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

          v20 = google::protobuf::internal::UnknownFieldParse();
LABEL_78:
          v59 = v20;
          if (!v20)
          {
LABEL_104:
            v59 = 0;
            goto LABEL_2;
          }

LABEL_79:
          if (sub_221567030(a3, &v59))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v59;
}

unsigned __int8 *TSCE::CategoryReferenceArchive::_InternalSerialize(TSCE::CategoryReferenceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
      v12 = v10 >> 7;
      if (v10 >> 14)
      {
        v11 = a2 + 3;
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
        a2[2] = v12;
        v11 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v10;
      v11 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v9, v11, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
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

  v15 = *(this + 4);
  *a2 = 18;
  v16 = *(v15 + 5);
  if (v16 > 0x7F)
  {
    a2[1] = v16 | 0x80;
    v18 = v16 >> 7;
    if (v16 >> 14)
    {
      v17 = a2 + 3;
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
      a2[2] = v18;
      v17 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v16;
    v17 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v15, v17, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

LABEL_50:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(this + 19);
    *a2 = 32;
    v26 = (2 * v25) ^ (v25 >> 31);
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
        if ((v5 & 4) != 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        a2[2] = v27;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      a2[1] = v26;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_61;
      }
    }

LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_71;
  }

LABEL_39:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 18);
  *a2 = 24;
  if (v21 > 0x7F)
  {
    a2[1] = v21 | 0x80;
    v22 = v21 >> 7;
    if (v21 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++a2;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(a2 - 1) = v23;
      if ((v5 & 0x80) != 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      a2[2] = v22;
      a2 += 3;
      if ((v5 & 0x80) != 0)
      {
        goto LABEL_50;
      }
    }
  }

  else
  {
    a2[1] = v21;
    a2 += 2;
    if ((v5 & 0x80) != 0)
    {
      goto LABEL_50;
    }
  }

LABEL_5:
  if ((v5 & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_61:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(this + 5);
  *a2 = 50;
  v31 = *(v30 + 10);
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

  a2 = TSCE::CategoryReferenceArchive_CatRefUidList::_InternalSerialize(v30, v32, a3);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

LABEL_81:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v42 = *(this + 20);
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
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        a2[2] = v43;
        a2 += 3;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_92;
        }
      }
    }

    else
    {
      a2[1] = v42;
      a2 += 2;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_92;
      }
    }

LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_102;
  }

LABEL_71:
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

  a2 = TSCE::PreserveColumnRowFlagsArchive::_InternalSerialize(v36, v38, a3);
  if ((v5 & 0x100) != 0)
  {
    goto LABEL_81;
  }

LABEL_8:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_92:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v46 = *(this + 7);
  *a2 = 74;
  v47 = *(v46 + 5);
  if (v47 > 0x7F)
  {
    a2[1] = v47 | 0x80;
    v49 = v47 >> 7;
    if (v47 >> 14)
    {
      v48 = a2 + 3;
      do
      {
        *(v48 - 1) = v49 | 0x80;
        v50 = v49 >> 7;
        ++v48;
        v51 = v49 >> 14;
        v49 >>= 7;
      }

      while (v51);
      *(v48 - 1) = v50;
    }

    else
    {
      a2[2] = v49;
      v48 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v47;
    v48 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v46, v48, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_112;
  }

LABEL_102:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v52 = *(this + 8);
  *a2 = 82;
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

  a2 = TSP::UUID::_InternalSerialize(v52, v54, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_115;
  }

LABEL_112:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v58 = *(this + 84);
  *a2 = 88;
  a2[1] = v58;
  a2 += 2;
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_118;
  }

LABEL_115:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v59 = *(this + 85);
  *a2 = 96;
  a2[1] = v59;
  a2 += 2;
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_118:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v60 = *(this + 22);
  *a2 = 104;
  if (v60 > 0x7F)
  {
    a2[1] = v60 | 0x80;
    v61 = v60 >> 7;
    if (v60 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v61 | 0x80;
        v62 = v61 >> 7;
        ++a2;
        v63 = v61 >> 14;
        v61 >>= 7;
      }

      while (v63);
      *(a2 - 1) = v62;
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      a2[2] = v61;
      a2 += 3;
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    a2[1] = v60;
    a2 += 2;
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_14:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 86);
  *a2 = 112;
  a2[1] = v6;
  a2 += 2;
LABEL_17:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CategoryReferenceArchive::RequiredFieldsByteSizeFallback(TSCE::CategoryReferenceArchive *this)
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
  if ((v2 & 0x40) != 0)
  {
    v3 += ((9 * (__clz(*(this + 18) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x80) == 0)
    {
      return v3;
    }

    goto LABEL_8;
  }

  if ((v2 & 0x80) != 0)
  {
LABEL_8:
    v3 += ((9 * (__clz((2 * *(this + 19)) ^ (*(this + 19) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

unint64_t TSCE::CategoryReferenceArchive::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 0xC3) != 0)
  {
    v7 = TSCE::CategoryReferenceArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[3]);
    v3 = TSP::UUID::ByteSizeLong(this[4]);
    v4.i32[0] = v2 | 1;
    v4.i32[1] = v3 | 1;
    v4.i32[2] = *(this + 18) | 1;
    v4.i32[3] = (2 * *(this + 19)) ^ (*(this + 19) >> 31) | 1;
    v5.i64[0] = 0x1F0000001FLL;
    v5.i64[1] = 0x1F0000001FLL;
    v6.i64[0] = 0x4900000049;
    v6.i64[1] = 0x4900000049;
    v7 = v2 + vaddlvq_u32(vshrq_n_u32(vmlal_u16(v6, vmovn_s32(veorq_s8(vclzq_s32(v4), v5)), 0x9000900090009), 6uLL)) + v3 + 4;
  }

  v8 = *(this + 4);
  if ((v8 & 0x3C) == 0)
  {
    goto LABEL_10;
  }

  if ((v8 & 4) == 0)
  {
    if ((v8 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    v15 = TSCE::PreserveColumnRowFlagsArchive::ByteSizeLong(this[6]);
    v7 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
LABEL_8:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_22;
  }

  v14 = TSCE::CategoryReferenceArchive_CatRefUidList::ByteSizeLong(this[5]);
  v7 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  if ((v8 & 0x10) == 0)
  {
    goto LABEL_8;
  }

LABEL_22:
  v16 = TSP::UUID::ByteSizeLong(this[7]);
  v7 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
LABEL_9:
    v9 = TSP::UUID::ByteSizeLong(this[8]);
    v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v8 & 0x1F00) != 0)
  {
    if ((v8 & 0x100) != 0)
    {
      v10 = *(this + 20);
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v10 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 11;
      }

      v7 += v12;
    }

    v7 += ((v8 >> 9) & 2) + ((v8 >> 8) & 2) + ((v8 >> 10) & 2);
    if ((v8 & 0x1000) != 0)
    {
      v7 += ((9 * (__clz(*(this + 22) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v7, this + 20);
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

uint64_t TSCE::CategoryReferenceArchive::MergeFrom(TSCE::CategoryReferenceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CategoryReferenceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CategoryReferenceArchive::MergeFrom(uint64_t this, const TSCE::CategoryReferenceArchive *a2)
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
          goto LABEL_7;
        }

        goto LABEL_39;
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
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_47;
    }

LABEL_39:
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CategoryReferenceArchive_CatRefUidList>(v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 5))
    {
      v15 = *(a2 + 5);
    }

    else
    {
      v15 = &TSCE::_CategoryReferenceArchive_CatRefUidList_default_instance_;
    }

    this = TSCE::CategoryReferenceArchive_CatRefUidList::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_55;
    }

LABEL_47:
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = google::protobuf::Arena::CreateMaybeMessage<TSCE::PreserveColumnRowFlagsArchive>(v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = TSCE::_PreserveColumnRowFlagsArchive_default_instance_;
    }

    this = TSCE::PreserveColumnRowFlagsArchive::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_63;
    }

LABEL_55:
    *(v3 + 16) |= 0x10u;
    v19 = *(v3 + 56);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x223DA0360](v20);
      *(v3 + 56) = v19;
    }

    if (*(a2 + 7))
    {
      v21 = *(a2 + 7);
    }

    else
    {
      v21 = v6;
    }

    this = TSP::UUID::MergeFrom(v19, v21);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_71;
    }

LABEL_63:
    *(v3 + 16) |= 0x20u;
    v22 = *(v3 + 64);
    if (!v22)
    {
      v23 = *(v3 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x223DA0360](v23);
      *(v3 + 64) = v22;
    }

    if (*(a2 + 8))
    {
      v24 = *(a2 + 8);
    }

    else
    {
      v24 = v6;
    }

    this = TSP::UUID::MergeFrom(v22, v24);
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
      *(v3 + 76) = *(a2 + 19);
      goto LABEL_13;
    }

LABEL_71:
    *(v3 + 72) = *(a2 + 18);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0x1F00) == 0)
  {
    return this;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 80) = *(a2 + 20);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_75;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 84) = *(a2 + 84);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

LABEL_76:
    *(v3 + 86) = *(a2 + 86);
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_75:
  *(v3 + 85) = *(a2 + 85);
  if ((v5 & 0x800) != 0)
  {
    goto LABEL_76;
  }

LABEL_19:
  if ((v5 & 0x1000) != 0)
  {
LABEL_20:
    *(v3 + 88) = *(a2 + 22);
  }

LABEL_21:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t *TSCE::CategoryReferenceArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CategoryReferenceArchive::Clear(this);

    return TSCE::CategoryReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CategoryReferenceArchive::CopyFrom(uint64_t *this, const TSCE::CategoryReferenceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CategoryReferenceArchive::Clear(this);

    return TSCE::CategoryReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::CategoryReferenceArchive::IsInitialized(TSCE::CategoryReferenceArchive *this)
{
  if ((~*(this + 4) & 0xC3) != 0)
  {
    return 0;
  }

  result = TSP::UUID::IsInitialized(*(this + 3));
  if (!result)
  {
    return result;
  }

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

  if ((v3 & 4) != 0)
  {
    v4 = *(this + 5);
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

    v3 = *(this + 4);
  }

  if ((v3 & 8) != 0 && (~*(*(this + 6) + 16) & 3) != 0)
  {
    return 0;
  }

  if ((v3 & 0x10) != 0)
  {
    result = TSP::UUID::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v3 = *(this + 4);
  }

  if ((v3 & 0x20) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 8));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCE::CategoryReferenceArchive::InternalSwap(TSCE::CategoryReferenceArchive *this, TSCE::CategoryReferenceArchive *a2)
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
  return result;
}

void *TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive(void *result, uint64_t a2)
{
  *result = &unk_2834AE2B0;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

{
  *result = &unk_2834AE2B0;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive(TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *this, const TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AE2B0;
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

void TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::~ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive(TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *this)
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

uint64_t *TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::default_instance(TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::Clear(TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *this)
{
  if ((*(this + 16) & 0xF) != 0)
  {
    *(this + 3) = 0;
    *(this + 4) = 0;
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

google::protobuf::internal *TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::RequiredFieldsByteSizeFallback(TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *this)
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

uint64_t TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::ByteSizeLong(TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *this)
{
  if ((~*(this + 4) & 0xF) != 0)
  {
    v4 = TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::RequiredFieldsByteSizeFallback(this);
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

uint64_t TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::MergeFrom(TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *a2)
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
      v3[6] = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[7] = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        v3[4] |= v5;
        return this;
      }

LABEL_8:
      v3[9] = *(a2 + 9);
      goto LABEL_9;
    }

LABEL_13:
    v3[8] = *(a2 + 8);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::CopyFrom(TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::CopyFrom(TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *this, const TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::InternalSwap(TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *this, TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive *a2)
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

TSP::CFUUIDArchive *TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::clear_table_id(TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::CFUUIDArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive(TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AE360;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  return this;
}

TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive(TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *this, const TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834AE360;
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
    v4 = *(a2 + 4);
  }

  *(this + 5) = v6;
  if ((v4 & 4) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 6) = v6;
  if ((v4 & 8) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  if ((v4 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  *(this + 4) = *(a2 + 4);
  return this;
}

void TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::~ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive(TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *this)
{
  sub_22152ECF0(this);
  sub_2214DFCF8(this + 1);
}

{
  TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::~ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_22152ECF0(uint64_t result)
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

    result = MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 32);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x223DA1450](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 40);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x223DA1450](v5, 0x1012C40EC159624);
  }

  v6 = *(v1 + 48);
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = MEMORY[0x223DA1450](v6, 0x1012C40EC159624);
  }

  if (v1 != &TSCE::_ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive_default_instance_)
  {
    result = *(v1 + 56);
    if (result)
    {
      MEMORY[0x223D9FBD0]();

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::default_instance(TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_18:
    v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_18;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v7 = this[5] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_26;
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_26:
  v8 = this[6] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    this = TSP::CFUUIDArchive::Clear(this[7]);
    goto LABEL_8;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 68) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v39) & 1) == 0)
  {
    while (1)
    {
      v7 = (v39 + 1);
      v8 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v9 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_78;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 <= 6)
        {
          if (v10 == 5)
          {
            if (v8 != 42)
            {
              goto LABEL_62;
            }

            *(a1 + 16) |= 0x10u;
            v26 = *(a1 + 56);
            if (!v26)
            {
              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v28 = MEMORY[0x223DA0300](v27);
              LODWORD(v26) = v28;
              *(a1 + 56) = v28;
              v7 = v39;
            }

            v29 = sub_2216F7F9C(a3, v26, v7);
            goto LABEL_59;
          }

          if (v10 != 6 || v8 != 50)
          {
            goto LABEL_62;
          }

          *(a1 + 16) |= 1u;
        }

        else if (v10 == 7)
        {
          if (v8 != 58)
          {
            goto LABEL_62;
          }

          *(a1 + 16) |= 2u;
        }

        else
        {
          if (v10 != 8)
          {
            if (v10 == 9 && v8 == 74)
            {
              *(a1 + 16) |= 8u;
              goto LABEL_58;
            }

LABEL_62:
            if (v8)
            {
              v30 = (v8 & 7) == 4;
            }

            else
            {
              v30 = 1;
            }

            if (v30)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v29 = google::protobuf::internal::UnknownFieldParse();
LABEL_59:
            v39 = v29;
            if (!v29)
            {
              goto LABEL_78;
            }

            goto LABEL_60;
          }

          if (v8 != 66)
          {
            goto LABEL_62;
          }

          *(a1 + 16) |= 4u;
        }

LABEL_58:
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v29 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_59;
      }

      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 24)
          {
            goto LABEL_62;
          }

          v5 |= 0x80u;
          v23 = (v7 + 1);
          LODWORD(v24) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_47;
          }

          v25 = *v23;
          v24 = (v24 + (v25 << 7) - 128);
          if ((v25 & 0x80000000) == 0)
          {
            v23 = (v7 + 2);
LABEL_47:
            v39 = v23;
            *(a1 + 72) = v24;
            goto LABEL_60;
          }

          v37 = google::protobuf::internal::VarintParseSlow32(v7, v24);
          v39 = v37;
          *(a1 + 72) = v38;
          if (!v37)
          {
LABEL_78:
            v39 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 4 || v8 != 32)
          {
            goto LABEL_62;
          }

          v5 |= 0x100u;
          v15 = (v7 + 1);
          LODWORD(v16) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          v17 = *v15;
          v16 = (v16 + (v17 << 7) - 128);
          if ((v17 & 0x80000000) == 0)
          {
            v15 = (v7 + 2);
LABEL_31:
            v39 = v15;
            *(a1 + 76) = v16;
            goto LABEL_60;
          }

          v33 = google::protobuf::internal::VarintParseSlow32(v7, v16);
          v39 = v33;
          *(a1 + 76) = v34;
          if (!v33)
          {
            goto LABEL_78;
          }
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_62;
        }

        v5 |= 0x20u;
        v20 = (v7 + 1);
        LODWORD(v21) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v22 = *v20;
        v21 = (v21 + (v22 << 7) - 128);
        if ((v22 & 0x80000000) == 0)
        {
          v20 = (v7 + 2);
LABEL_42:
          v39 = v20;
          *(a1 + 64) = v21;
          goto LABEL_60;
        }

        v35 = google::protobuf::internal::VarintParseSlow32(v7, v21);
        v39 = v35;
        *(a1 + 64) = v36;
        if (!v35)
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_62;
        }

        v5 |= 0x40u;
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
          v39 = v12;
          *(a1 + 68) = v13;
          goto LABEL_60;
        }

        v31 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v39 = v31;
        *(a1 + 68) = v32;
        if (!v31)
        {
          goto LABEL_78;
        }
      }

LABEL_60:
      if (sub_221567030(a3, &v39))
      {
        goto LABEL_2;
      }
    }

    v7 = (v39 + 2);
LABEL_6:
    v39 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x20) == 0)
  {
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_3;
    }

LABEL_24:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 17);
    *v4 = 16;
    if (v13 > 0x7F)
    {
      v4[1] = v13 | 0x80;
      v14 = v13 >> 7;
      if (v13 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v14 | 0x80;
          v15 = v14 >> 7;
          ++v4;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
        *(v4 - 1) = v15;
        if ((v6 & 0x80) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v4[2] = v14;
        v4 += 3;
        if ((v6 & 0x80) != 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v4[1] = v13;
      v4 += 2;
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_4:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_5;
    }

LABEL_46:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v21 = *(this + 19);
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
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v4[2] = v22;
        v4 += 3;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
      v4[1] = v21;
      v4 += 2;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_57;
      }
    }

LABEL_6:
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 16);
  *v4 = 8;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v10 = v9 >> 7;
    if (v9 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v4;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v4[2] = v10;
      v4 += 3;
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v4[1] = v9;
    v4 += 2;
    if ((v6 & 0x40) != 0)
    {
      goto LABEL_24;
    }
  }

LABEL_3:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_4;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(this + 18);
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
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v4[2] = v18;
      v4 += 3;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    v4[1] = v17;
    v4 += 2;
    if ((v6 & 0x100) != 0)
    {
      goto LABEL_46;
    }
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_57:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 7);
  *v4 = 42;
  v26 = *(v25 + 5);
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

  v4 = TSP::CFUUIDArchive::_InternalSerialize(v25, v27, a3);
  if ((v6 & 1) == 0)
  {
LABEL_7:
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_68;
  }

LABEL_67:
  v4 = sub_22150C00C(a3, 6, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_8:
    if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_69;
  }

LABEL_68:
  v4 = sub_22150C00C(a3, 7, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_9:
    if ((v6 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_69:
  v4 = sub_22150C00C(a3, 8, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) != 0)
  {
LABEL_10:
    v4 = sub_22150C00C(a3, 9, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_11:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::RequiredFieldsByteSizeFallback(TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x10) != 0)
  {
    v4 = TSP::CFUUIDArchive::ByteSizeLong(*(this + 7));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    result += ((9 * (__clz(*(this + 17) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 0x100) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  result += ((9 * (__clz(*(this + 18) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x100) == 0)
  {
    return result;
  }

LABEL_9:
  result += ((9 * (__clz(*(this + 19) | 1) ^ 0x1F) + 73) >> 6) + 1;
  return result;
}

unint64_t TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::ByteSizeLong(TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *this)
{
  if ((~*(this + 4) & 0x1F0) != 0)
  {
    v6 = TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::CFUUIDArchive::ByteSizeLong(*(this + 7));
    v3.i32[0] = v2 | 1;
    v3.i32[1] = *(this + 16) | 1;
    v3.i64[1] = *(this + 68) | 0x100000001;
    v4.i64[0] = 0x1F0000001FLL;
    v4.i64[1] = 0x1F0000001FLL;
    v5.i64[0] = 0x4900000049;
    v5.i64[1] = 0x4900000049;
    v6 = v2 + vaddlvq_u32(vshrq_n_u32(vmlal_u16(v5, vmovn_s32(veorq_s8(vclzq_s32(v3), v4)), 0x9000900090009), 6uLL)) + ((9 * (__clz(*(this + 19) | 1) ^ 0x1F) + 73) >> 6) + 5;
  }

  v7 = *(this + 4);
  if ((v7 & 0xF) == 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    v12 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v6 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 2) == 0)
    {
LABEL_7:
      if ((v7 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_7;
  }

  v15 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  v17 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v17 = v16;
  }

  v6 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 4) == 0)
  {
LABEL_8:
    if ((v7 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_20:
  v18 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v6 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 8) != 0)
  {
LABEL_9:
    v8 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v6 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v6, this + 20);
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::MergeFrom(TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *a2)
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

        goto LABEL_19;
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

      goto LABEL_20;
    }

LABEL_19:
    *(v3 + 16) |= 4u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

LABEL_20:
    *(v3 + 16) |= 8u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

LABEL_21:
    *(v3 + 16) |= 0x10u;
    v7 = *(v3 + 56);
    if (!v7)
    {
      v8 = *(v3 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x223DA0300](v8);
      *(v3 + 56) = v7;
    }

    if (*(a2 + 7))
    {
      v9 = *(a2 + 7);
    }

    else
    {
      v9 = MEMORY[0x277D80A28];
    }

    this = TSP::CFUUIDArchive::MergeFrom(v7, v9);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(v3 + 64) = *(a2 + 16);
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
      *(v3 + 72) = *(a2 + 18);
      goto LABEL_13;
    }

LABEL_30:
    *(v3 + 68) = *(a2 + 17);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0x100) != 0)
  {
    v6 = *(a2 + 19);
    *(v3 + 16) |= 0x100u;
    *(v3 + 76) = v6;
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::CopyFrom(uint64_t *this, const TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::InternalSwap(TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *this, TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *a2)
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
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
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
  return result;
}

void *TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::ASTNodeArrayArchive_ASTColumnCoordinateArchive(void *result, uint64_t a2)
{
  *result = &unk_2834AE410;
  result[1] = a2;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

{
  *result = &unk_2834AE410;
  result[1] = a2;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::ASTNodeArrayArchive_ASTColumnCoordinateArchive(TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *this, const TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AE410;
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

void TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::~ASTNodeArrayArchive_ASTColumnCoordinateArchive(TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *this)
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

uint64_t *TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::default_instance(TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTColumnCoordinateArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ASTNodeArrayArchive_ASTColumnCoordinateArchive_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::Clear(TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *this)
{
  if ((*(this + 16) & 3) != 0)
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

google::protobuf::internal *TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v21) & 1) == 0)
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
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v18;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 8)
        {
          v15 = (v7 + 1);
          v16 = *v7;
          if ((v16 & 0x8000000000000000) != 0)
          {
            v16 = (*v15 << 7) + v16 - 128;
            if (*v15 < 0)
            {
              v15 = google::protobuf::internal::VarintParseSlow64(v7, v16);
            }

            else
            {
              v15 = (v7 + 2);
            }
          }

          v5 |= 1u;
          v21 = v15;
          *(a1 + 24) = -(v16 & 1) ^ (v16 >> 1);
          if (!v15)
          {
            goto LABEL_37;
          }

          goto LABEL_34;
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

        v21 = google::protobuf::internal::UnknownFieldParse();
        if (!v21)
        {
LABEL_37:
          v21 = 0;
          goto LABEL_2;
        }

        goto LABEL_34;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v13 = (v7 + 1);
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_24:
        v21 = v13;
        *(a1 + 28) = v12 != 0;
        goto LABEL_34;
      }

      v19 = google::protobuf::internal::VarintParseSlow64(v7, v12);
      v21 = v19;
      *(a1 + 28) = v20 != 0;
      if (!v19)
      {
        goto LABEL_37;
      }

LABEL_34:
      if (sub_221567030(a3, &v21))
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

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    v7 = (2 * v6) ^ (v6 >> 31);
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v5 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v12 = v8 >> 7;
        ++a2;
        v13 = v8 >> 14;
        v8 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
      if ((v5 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
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

  v9 = *(this + 28);
  *a2 = 16;
  a2[1] = v9;
  a2 += 2;
LABEL_13:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::ByteSizeLong(TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = ((9 * (__clz((2 * *(this + 6)) ^ (*(this + 6) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 + (v1 & 2);
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  *(this + 5) = v3;
  return v2 + (v1 & 2);
}

uint64_t TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::MergeFrom(TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *a2)
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
      *(v3 + 24) = *(a2 + 6);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 28) = *(a2 + 28);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::CopyFrom(TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::CopyFrom(TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *this, const TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::InternalSwap(TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *this, TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive *a2)
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

void *TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::ASTNodeArrayArchive_ASTRowCoordinateArchive(void *result, uint64_t a2)
{
  *result = &unk_2834AE4C0;
  result[1] = a2;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

{
  *result = &unk_2834AE4C0;
  result[1] = a2;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::ASTNodeArrayArchive_ASTRowCoordinateArchive(TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *this, const TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AE4C0;
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

void TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::~ASTNodeArrayArchive_ASTRowCoordinateArchive(TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *this)
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

uint64_t *TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::default_instance(TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTRowCoordinateArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ASTNodeArrayArchive_ASTRowCoordinateArchive_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::Clear(TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *this)
{
  if ((*(this + 16) & 3) != 0)
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