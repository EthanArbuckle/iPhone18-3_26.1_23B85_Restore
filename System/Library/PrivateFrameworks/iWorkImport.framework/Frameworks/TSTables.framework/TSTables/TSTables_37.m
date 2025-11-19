uint64_t *TST::CellRange::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellRange::Clear(this);

    return TST::CellRange::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CellRange::CopyFrom(uint64_t *this, const TST::CellRange *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellRange::Clear(this);

    return TST::CellRange::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::CellRange::IsInitialized(TST::CellRange *this)
{
  if ((~*(this + 4) & 3) == 0 && (*(*(this + 3) + 16) & 2) != 0)
  {
    return *(*(this + 4) + 16) & 1;
  }

  else
  {
    return 0;
  }
}

__n128 TST::CellRange::InternalSwap(TST::CellRange *this, TST::CellRange *a2)
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

uint64_t *TST::ExpandedCellRange::clear_origin(TST::ExpandedCellRange *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::ExpandedCellRange *TST::ExpandedCellRange::ExpandedCellRange(TST::ExpandedCellRange *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B24D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ExpandedCellRange_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834B24D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ExpandedCellRange_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TST::ExpandedCellRange *TST::ExpandedCellRange::ExpandedCellRange(TST::ExpandedCellRange *this, const TST::ExpandedCellRange *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B24D8;
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

void TST::ExpandedCellRange::~ExpandedCellRange(TST::ExpandedCellRange *this)
{
  if (this != TST::_ExpandedCellRange_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      sub_2214DFCF8((v3 + 8));
      MEMORY[0x223DA1450](v3, 0x1081C404FE48876);
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::ExpandedCellRange::~ExpandedCellRange(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::ExpandedCellRange::default_instance(TST::ExpandedCellRange *this)
{
  if (atomic_load_explicit(scc_info_ExpandedCellRange_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_ExpandedCellRange_default_instance_;
}

uint64_t *TST::ExpandedCellRange::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSCE::CellCoordinateArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TST::ExpandedTableSize::Clear(*(v1 + 32));
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

google::protobuf::internal *TST::ExpandedCellRange::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  while ((sub_221567030(a3, &v18) & 1) == 0)
  {
    v5 = (v18 + 1);
    v6 = *v18;
    if ((*v18 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v18 + 2);
LABEL_6:
      v18 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v7 - 128));
    v18 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v16;
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpandedTableSize>(v12);
        *(a1 + 32) = v11;
        v5 = v18;
      }

      v10 = sub_2217019D8(a3, v11, v5);
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
          return v18;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v13 = *(a1 + 24);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v14);
        *(a1 + 24) = v13;
        v5 = v18;
      }

      v10 = sub_2216F806C(a3, v13, v5);
    }

LABEL_30:
    v18 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v18;
}

unsigned __int8 *TST::ExpandedCellRange::_InternalSerialize(TST::ExpandedCellRange *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v6, v8, a3);
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

    a2 = TST::ExpandedTableSize::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::ExpandedCellRange::RequiredFieldsByteSizeFallback(TST::ExpandedCellRange *this)
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

  v4 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TST::ExpandedTableSize::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::ExpandedCellRange::ByteSizeLong(TSCE::CellCoordinateArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TST::ExpandedCellRange::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::CellCoordinateArchive::ByteSizeLong(this[3]);
    v3 = TST::ExpandedTableSize::ByteSizeLong(this[4]);
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

uint64_t TST::ExpandedCellRange::MergeFrom(TST::ExpandedCellRange *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ExpandedCellRange::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ExpandedCellRange::MergeFrom(uint64_t this, const TST::ExpandedCellRange *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCE::_CellCoordinateArchive_default_instance_;
      }

      this = TSCE::CellCoordinateArchive::MergeFrom(v6, v8);
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpandedTableSize>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TST::_ExpandedTableSize_default_instance_;
      }

      return TST::ExpandedTableSize::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TST::ExpandedCellRange::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ExpandedCellRange::Clear(this);

    return TST::ExpandedCellRange::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::ExpandedCellRange::CopyFrom(uint64_t *this, const TST::ExpandedCellRange *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ExpandedCellRange::Clear(this);

    return TST::ExpandedCellRange::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TST::ExpandedCellRange::InternalSwap(TST::ExpandedCellRange *this, TST::ExpandedCellRange *a2)
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

TST::TableSelection *TST::TableSelection::TableSelection(TST::TableSelection *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B2588;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TableSelection_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2834B2588;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TableSelection_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TST::TableSelection *TST::TableSelection::TableSelection(TST::TableSelection *this, const TST::TableSelection *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B2588;
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
  *(this + 5) = *(a2 + 5);
  return this;
}

void TST::TableSelection::~TableSelection(TST::TableSelection *this)
{
  if (this != &TST::_TableSelection_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::CellRange::~CellRange(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TST::CellRange::~CellRange(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::TableSelection::~TableSelection(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::TableSelection::default_instance(TST::TableSelection *this)
{
  if (atomic_load_explicit(scc_info_TableSelection_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableSelection_default_instance_;
}

uint64_t *TST::TableSelection::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TST::CellRange::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TST::CellRange::Clear(*(v1 + 32));
    }
  }

  if ((v2 & 0xC) != 0)
  {
    *(v1 + 40) = 0;
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

google::protobuf::internal *TST::TableSelection::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_57;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_39;
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

            v12 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v17);
            *(a1 + 24) = v12;
LABEL_32:
            v7 = v27;
          }
        }

        else
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_39;
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

            v12 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v13);
            *(a1 + 32) = v12;
            goto LABEL_32;
          }
        }

        v18 = sub_221701AA8(a3, v12, v7);
        goto LABEL_46;
      }

      if (v10 != 3)
      {
        if (v10 == 4 && v8 == 32)
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
            v27 = google::protobuf::internal::VarintParseSlow64(v7, v14);
            if (!v27)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v15 = (v7 + 2);
LABEL_24:
            v27 = v15;
          }

          if (v14 > 7)
          {
            sub_2216FF1F8();
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 44) = v14;
          }

          goto LABEL_47;
        }

LABEL_39:
        if (v8)
        {
          v22 = (v8 & 7) == 4;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
LABEL_46:
        v27 = v18;
        if (!v18)
        {
          goto LABEL_57;
        }

        goto LABEL_47;
      }

      if (v8 != 24)
      {
        goto LABEL_39;
      }

      v5 |= 4u;
      v20 = (v7 + 1);
      v19 = *v7;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_38;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = (v7 + 2);
LABEL_38:
        v27 = v20;
        *(a1 + 40) = v19 != 0;
        goto LABEL_47;
      }

      v25 = google::protobuf::internal::VarintParseSlow64(v7, v19);
      v27 = v25;
      *(a1 + 40) = v26 != 0;
      if (!v25)
      {
LABEL_57:
        v27 = 0;
        goto LABEL_2;
      }

LABEL_47:
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

unsigned __int8 *TST::TableSelection::_InternalSerialize(TST::TableSelection *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::CellRange::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
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

  a2 = TST::CellRange::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 40);
  *a2 = 24;
  a2[1] = v18;
  a2 += 2;
  if ((v5 & 8) != 0)
  {
LABEL_29:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v19 = *(this + 11);
    *a2 = 32;
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

LABEL_38:
  v23 = *(this + 1);
  if ((v23 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v23 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TableSelection::RequiredFieldsByteSizeFallback(TST::TableSelection *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TST::CellRange::ByteSizeLong(*(this + 3));
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
    v5 = TST::CellRange::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  result = v3 + ((v2 >> 1) & 2);
  if ((v2 & 8) != 0)
  {
    v7 = *(this + 11);
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v7 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 11;
    }

    result += v9;
  }

  return result;
}

uint64_t TST::TableSelection::ByteSizeLong(TST::CellID ***this)
{
  if ((~*(this + 4) & 0xF) != 0)
  {
    v9 = TST::TableSelection::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TST::CellRange::ByteSizeLong(this[3]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = TST::CellRange::ByteSizeLong(this[4]);
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = *(this + 11);
    v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 10;
    }

    v9 = v2 + v4 + v3 + v5 + v8 + 5;
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

uint64_t TST::TableSelection::MergeFrom(TST::TableSelection *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TableSelection::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TableSelection::MergeFrom(uint64_t this, const TST::TableSelection *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TST::_CellRange_default_instance_;
      }

      this = TST::CellRange::MergeFrom(v6, v8);
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

      v9 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = TST::_CellRange_default_instance_;
    }

    this = TST::CellRange::MergeFrom(v9, v11);
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
      *(v3 + 44) = *(a2 + 11);
      goto LABEL_9;
    }

LABEL_27:
    *(v3 + 40) = *(a2 + 40);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TST::TableSelection::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableSelection::Clear(this);

    return TST::TableSelection::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TableSelection::CopyFrom(uint64_t *this, const TST::TableSelection *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableSelection::Clear(this);

    return TST::TableSelection::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::TableSelection::IsInitialized(TST::TableSelection *this)
{
  if ((~*(this + 4) & 0xF) == 0 && (v1 = *(this + 3), (~*(v1 + 16) & 3) == 0) && (*(*(v1 + 24) + 16) & 2) != 0 && (*(*(v1 + 32) + 16) & 1) != 0 && (v2 = *(this + 4), (~*(v2 + 16) & 3) == 0) && (*(*(v2 + 24) + 16) & 2) != 0)
  {
    return *(*(v2 + 32) + 16) & 1;
  }

  else
  {
    return 0;
  }
}

__n128 TST::TableSelection::InternalSwap(TST::TableSelection *this, TST::TableSelection *a2)
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

TST::TileRowInfo *TST::TileRowInfo::TileRowInfo(TST::TileRowInfo *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B2638;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TileRowInfo_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 7) = 0;
  *(this + 61) = 0;
  return this;
}

TST::TileRowInfo *TST::TileRowInfo::TileRowInfo(TST::TileRowInfo *this, const TST::TileRowInfo *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B2638;
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
  }

  v7 = *(a2 + 7);
  *(this + 61) = *(a2 + 61);
  *(this + 7) = v7;
  return this;
}

void TST::TileRowInfo::~TileRowInfo(TST::TileRowInfo *this)
{
  sub_2215D6180(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::TileRowInfo::~TileRowInfo(this);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_2215D6180(uint64_t result)
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

  v4 = v1[4];
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x223DA1450](v4, 0x1012C40EC159624);
  }

  v5 = v1[5];
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x223DA1450](v5, 0x1012C40EC159624);
  }

  v6 = v1[6];
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    JUMPOUT(0x223DA1450);
  }

  return result;
}

void *TST::TileRowInfo::default_instance(TST::TileRowInfo *this)
{
  if (atomic_load_explicit(scc_info_TileRowInfo_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TileRowInfo_default_instance_;
}

uint64_t *TST::TileRowInfo::Clear(TST::TileRowInfo *this)
{
  v1 = *(this + 4);
  if ((v1 & 0xF) != 0)
  {
    if ((v1 & 1) == 0)
    {
      if ((v1 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v3 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
        if ((v1 & 4) != 0)
        {
          goto LABEL_15;
        }
      }

LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_22;
      }

LABEL_19:
      v5 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
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

      goto LABEL_22;
    }

    v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_11;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    v4 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v1 & 8) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v1 & 8) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_19;
  }

LABEL_22:
  if ((v1 & 0xF0) != 0)
  {
    *(this + 61) = 0;
    *(this + 7) = 0;
  }

  v7 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v7)
  {
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TST::TileRowInfo::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v36 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v36) & 1) == 0)
  {
    while (1)
    {
      v7 = (v36 + 1);
      v8 = *v36;
      if ((*v36 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v36, (v9 - 128));
      v36 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_71;
      }

      v7 = TagFallback;
      v8 = v19;
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
LABEL_51:
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v26 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_52:
              v36 = v26;
              if (!v26)
              {
                goto LABEL_71;
              }

              goto LABEL_53;
            }

LABEL_55:
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

            v26 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_52;
          }

          if (v10 != 8 || v8 != 64)
          {
            goto LABEL_55;
          }

          v5 |= 0x80u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_34:
            v36 = v16;
            *(a1 + 68) = v15 != 0;
            goto LABEL_53;
          }

          v34 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v36 = v34;
          *(a1 + 68) = v35 != 0;
          if (!v34)
          {
LABEL_71:
            v36 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 5)
          {
            if (v10 == 6 && v8 == 50)
            {
              *(a1 + 16) |= 4u;
              goto LABEL_51;
            }

            goto LABEL_55;
          }

          if (v8 != 40)
          {
            goto LABEL_55;
          }

          v5 |= 0x40u;
          v23 = (v7 + 1);
          LODWORD(v24) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          v25 = *v23;
          v24 = (v24 + (v25 << 7) - 128);
          if ((v25 & 0x80000000) == 0)
          {
            v23 = (v7 + 2);
LABEL_46:
            v36 = v23;
            *(a1 + 64) = v24;
            goto LABEL_53;
          }

          v30 = google::protobuf::internal::VarintParseSlow32(v7, v24);
          v36 = v30;
          *(a1 + 64) = v31;
          if (!v30)
          {
            goto LABEL_71;
          }
        }
      }

      else
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 == 26)
            {
              *(a1 + 16) |= 1u;
              goto LABEL_51;
            }
          }

          else if (v10 == 4 && v8 == 34)
          {
            *(a1 + 16) |= 2u;
            goto LABEL_51;
          }

          goto LABEL_55;
        }

        if (v10 == 1)
        {
          if (v8 != 8)
          {
            goto LABEL_55;
          }

          v5 |= 0x10u;
          v20 = (v7 + 1);
          LODWORD(v21) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_41;
          }

          v22 = *v20;
          v21 = (v21 + (v22 << 7) - 128);
          if ((v22 & 0x80000000) == 0)
          {
            v20 = (v7 + 2);
LABEL_41:
            v36 = v20;
            *(a1 + 56) = v21;
            goto LABEL_53;
          }

          v28 = google::protobuf::internal::VarintParseSlow32(v7, v21);
          v36 = v28;
          *(a1 + 56) = v29;
          if (!v28)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v10 != 2 || v8 != 16)
          {
            goto LABEL_55;
          }

          v5 |= 0x20u;
          v12 = (v7 + 1);
          LODWORD(v13) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

          v14 = *v12;
          v13 = (v13 + (v14 << 7) - 128);
          if ((v14 & 0x80000000) == 0)
          {
            v12 = (v7 + 2);
LABEL_18:
            v36 = v12;
            *(a1 + 60) = v13;
            goto LABEL_53;
          }

          v32 = google::protobuf::internal::VarintParseSlow32(v7, v13);
          v36 = v32;
          *(a1 + 60) = v33;
          if (!v32)
          {
            goto LABEL_71;
          }
        }
      }

LABEL_53:
      if (sub_221567030(a3, &v36))
      {
        goto LABEL_2;
      }
    }

    v7 = (v36 + 2);
LABEL_6:
    v36 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

unsigned __int8 *TST::TileRowInfo::_InternalSerialize(TST::TileRowInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x10) == 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v11 = *(this + 15);
    *v4 = 16;
    if (v11 > 0x7F)
    {
      v4[1] = v11 | 0x80;
      v12 = v11 >> 7;
      if (v11 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v12 | 0x80;
          v13 = v12 >> 7;
          ++v4;
          v14 = v12 >> 14;
          v12 >>= 7;
        }

        while (v14);
        *(v4 - 1) = v13;
        if (v6)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v4[2] = v12;
        v4 += 3;
        if (v6)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v4[1] = v11;
      v4 += 2;
      if (v6)
      {
        goto LABEL_32;
      }
    }

LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 14);
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
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v4[2] = v8;
      v4 += 3;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_3:
  if ((v6 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_32:
  v4 = sub_22150C00C(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

LABEL_34:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(this + 16);
    *v4 = 40;
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
        if ((v6 & 4) != 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v4[2] = v16;
        v4 += 3;
        if ((v6 & 4) != 0)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v4[1] = v15;
      v4 += 2;
      if ((v6 & 4) != 0)
      {
        goto LABEL_45;
      }
    }

LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_33:
  v4 = sub_22150C00C(a3, 4, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_34;
  }

LABEL_6:
  if ((v6 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_45:
  v4 = sub_22150C00C(a3, 6, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

LABEL_46:
  v4 = sub_22150C00C(a3, 7, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_50;
  }

LABEL_47:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 68);
  *v4 = 64;
  v4[1] = v19;
  v4 += 2;
LABEL_50:
  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TileRowInfo::RequiredFieldsByteSizeFallback(TST::TileRowInfo *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
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
    v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v1 & 0x10) != 0)
  {
    v2 += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 0x20) == 0)
    {
      return v2;
    }

    goto LABEL_12;
  }

  if ((v1 & 0x20) != 0)
  {
LABEL_12:
    v2 += ((9 * (__clz(*(this + 15) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

unint64_t TST::TileRowInfo::ByteSizeLong(TST::TileRowInfo *this)
{
  v2 = *(this + 4);
  if ((~v2 & 0x33) != 0)
  {
    v12 = TST::TileRowInfo::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v9.i32[0] = v5 | 1;
    v9.i32[1] = *(this + 14) | 1;
    v9.i32[2] = v8 | 1;
    v9.i32[3] = *(this + 15) | 1;
    v10.i64[0] = 0x1F0000001FLL;
    v10.i64[1] = 0x1F0000001FLL;
    v11.i64[0] = 0x4900000049;
    v11.i64[1] = 0x4900000049;
    v12 = v8 + vaddlvq_u32(vshrq_n_u32(vmlal_u16(v11, vmovn_s32(veorq_s8(vclzq_s32(v9), v10)), 0x9000900090009), 6uLL)) + v5 + 4;
  }

  if ((v2 & 0xC) != 0)
  {
    if ((v2 & 4) != 0)
    {
      v13 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v12 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 8) != 0)
    {
      v16 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      v17 = *(v16 + 23);
      v18 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v18 = v17;
      }

      v12 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if ((v2 & 0xC0) != 0)
  {
    if ((v2 & 0x40) != 0)
    {
      v12 += ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v12 += (v2 >> 6) & 2;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v12, this + 20);
  }

  else
  {
    *(this + 5) = v12;
    return v12;
  }
}

uint64_t TST::TileRowInfo::MergeFrom(TST::TileRowInfo *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TileRowInfo::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TileRowInfo::MergeFrom(uint64_t this, const TST::TileRowInfo *a2)
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

        goto LABEL_17;
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

      goto LABEL_18;
    }

LABEL_17:
    *(v3 + 16) |= 4u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }

LABEL_18:
    *(v3 + 16) |= 8u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    *(v3 + 56) = *(a2 + 14);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

LABEL_20:
    *(v3 + 60) = *(a2 + 15);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_12:
      *(v3 + 68) = *(a2 + 68);
      goto LABEL_13;
    }

LABEL_21:
    *(v3 + 64) = *(a2 + 16);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return this;
}

TST::TileRowInfo *TST::TileRowInfo::CopyFrom(TST::TileRowInfo *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TileRowInfo::Clear(this);

    return TST::TileRowInfo::MergeFrom(v4, a2);
  }

  return this;
}

TST::TileRowInfo *TST::TileRowInfo::CopyFrom(TST::TileRowInfo *this, const TST::TileRowInfo *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TileRowInfo::Clear(this);

    return TST::TileRowInfo::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TileRowInfo::InternalSwap(TST::TileRowInfo *this, TST::TileRowInfo *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  LODWORD(v10) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  LOBYTE(v10) = *(this + 68);
  *(this + 68) = *(a2 + 68);
  *(a2 + 68) = v10;
  return result;
}

TST::Tile *TST::Tile::Tile(TST::Tile *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B26E8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_Tile_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 62) = 0;
  return this;
}

TST::Tile *TST::Tile::Tile(TST::Tile *this, const TST::Tile *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B26E8;
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
    sub_22167D7C0(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  v11 = *(a2 + 3);
  *(this + 62) = *(a2 + 62);
  *(this + 3) = v11;
  return this;
}

void TST::Tile::~Tile(TST::Tile *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167D73C(this + 3);
}

{
  TST::Tile::~Tile(this);

  JUMPOUT(0x223DA1450);
}

void *TST::Tile::default_instance(TST::Tile *this)
{
  if (atomic_load_explicit(scc_info_Tile_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_Tile_default_instance_;
}

uint64_t *TST::Tile::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::TileRowInfo::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 0x7F) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 62) = 0;
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

google::protobuf::internal *TST::Tile::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v58 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v58) & 1) == 0)
  {
    while (1)
    {
      v7 = (v58 + 1);
      v8 = *v58;
      if ((*v58 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v58, (v9 - 128));
      v58 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_95;
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
            if (v8 != 56)
            {
              goto LABEL_71;
            }

            v5 |= 0x20u;
            v41 = (v7 + 1);
            v40 = *v7;
            if ((v40 & 0x8000000000000000) == 0)
            {
              goto LABEL_70;
            }

            v42 = *v41;
            v40 = (v42 << 7) + v40 - 128;
            if ((v42 & 0x80000000) == 0)
            {
              v41 = (v7 + 2);
LABEL_70:
              v58 = v41;
              *(a1 + 68) = v40 != 0;
              goto LABEL_78;
            }

            v48 = google::protobuf::internal::VarintParseSlow64(v7, v40);
            v58 = v48;
            *(a1 + 68) = v49 != 0;
            if (!v48)
            {
              goto LABEL_95;
            }
          }

          else
          {
            if (v10 != 8 || v8 != 64)
            {
              goto LABEL_71;
            }

            v5 |= 0x40u;
            v22 = (v7 + 1);
            v21 = *v7;
            if ((v21 & 0x8000000000000000) == 0)
            {
              goto LABEL_40;
            }

            v23 = *v22;
            v21 = (v23 << 7) + v21 - 128;
            if ((v23 & 0x80000000) == 0)
            {
              v22 = (v7 + 2);
LABEL_40:
              v58 = v22;
              *(a1 + 69) = v21 != 0;
              goto LABEL_78;
            }

            v56 = google::protobuf::internal::VarintParseSlow64(v7, v21);
            v58 = v56;
            *(a1 + 69) = v57 != 0;
            if (!v56)
            {
              goto LABEL_95;
            }
          }
        }

        else
        {
          if (v10 == 5)
          {
            if (v8 != 42)
            {
LABEL_71:
              if (v8)
              {
                v43 = (v8 & 7) == 4;
              }

              else
              {
                v43 = 1;
              }

              if (v43)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_221567188((a1 + 8));
              }

              v58 = google::protobuf::internal::UnknownFieldParse();
              if (!v58)
              {
LABEL_95:
                v58 = 0;
                goto LABEL_2;
              }

              goto LABEL_78;
            }

            v29 = (v7 - 1);
            while (2)
            {
              v30 = (v29 + 1);
              v58 = (v29 + 1);
              v31 = *(a1 + 40);
              if (!v31)
              {
LABEL_51:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                v31 = *(a1 + 40);
                v32 = *v31;
                goto LABEL_52;
              }

              v36 = *(a1 + 32);
              v32 = *v31;
              if (v36 >= *v31)
              {
                if (v32 == *(a1 + 36))
                {
                  goto LABEL_51;
                }

LABEL_52:
                *v31 = v32 + 1;
                v33 = google::protobuf::Arena::CreateMaybeMessage<TST::TileRowInfo>(*(a1 + 24));
                v34 = *(a1 + 32);
                v35 = *(a1 + 40) + 8 * v34;
                *(a1 + 32) = v34 + 1;
                *(v35 + 8) = v33;
                v30 = v58;
              }

              else
              {
                *(a1 + 32) = v36 + 1;
                v33 = *&v31[2 * v36 + 2];
              }

              v29 = sub_221701B78(a3, v33, v30);
              v58 = v29;
              if (!v29)
              {
                goto LABEL_95;
              }

              if (*a3 <= v29 || *v29 != 42)
              {
                goto LABEL_78;
              }

              continue;
            }
          }

          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_71;
          }

          v5 |= 0x10u;
          v15 = (v7 + 1);
          LODWORD(v16) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_26;
          }

          v17 = *v15;
          v16 = (v16 + (v17 << 7) - 128);
          if ((v17 & 0x80000000) == 0)
          {
            v15 = (v7 + 2);
LABEL_26:
            v58 = v15;
            *(a1 + 64) = v16;
            goto LABEL_78;
          }

          v52 = google::protobuf::internal::VarintParseSlow32(v7, v16);
          v58 = v52;
          *(a1 + 64) = v53;
          if (!v52)
          {
            goto LABEL_95;
          }
        }
      }

      else if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 24)
          {
            goto LABEL_71;
          }

          v5 |= 4u;
          v37 = (v7 + 1);
          LODWORD(v38) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          v39 = *v37;
          v38 = (v38 + (v39 << 7) - 128);
          if ((v39 & 0x80000000) == 0)
          {
            v37 = (v7 + 2);
LABEL_65:
            v58 = v37;
            *(a1 + 56) = v38;
            goto LABEL_78;
          }

          v46 = google::protobuf::internal::VarintParseSlow32(v7, v38);
          v58 = v46;
          *(a1 + 56) = v47;
          if (!v46)
          {
            goto LABEL_95;
          }
        }

        else
        {
          if (v10 != 4 || v8 != 32)
          {
            goto LABEL_71;
          }

          v5 |= 8u;
          v18 = (v7 + 1);
          LODWORD(v19) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

          v20 = *v18;
          v19 = (v19 + (v20 << 7) - 128);
          if ((v20 & 0x80000000) == 0)
          {
            v18 = (v7 + 2);
LABEL_33:
            v58 = v18;
            *(a1 + 60) = v19;
            goto LABEL_78;
          }

          v54 = google::protobuf::internal::VarintParseSlow32(v7, v19);
          v58 = v54;
          *(a1 + 60) = v55;
          if (!v54)
          {
            goto LABEL_95;
          }
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_71;
        }

        v5 |= 1u;
        v26 = (v7 + 1);
        LODWORD(v27) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v28 = *v26;
        v27 = (v27 + (v28 << 7) - 128);
        if ((v28 & 0x80000000) == 0)
        {
          v26 = (v7 + 2);
LABEL_47:
          v58 = v26;
          *(a1 + 48) = v27;
          goto LABEL_78;
        }

        v44 = google::protobuf::internal::VarintParseSlow32(v7, v27);
        v58 = v44;
        *(a1 + 48) = v45;
        if (!v44)
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_71;
        }

        v5 |= 2u;
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_18:
          v58 = v12;
          *(a1 + 52) = v13;
          goto LABEL_78;
        }

        v50 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v58 = v50;
        *(a1 + 52) = v51;
        if (!v50)
        {
          goto LABEL_95;
        }
      }

LABEL_78:
      if (sub_221567030(a3, &v58))
      {
        goto LABEL_2;
      }
    }

    v7 = (v58 + 2);
LABEL_6:
    v58 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v58;
}

unsigned __int8 *TST::Tile::_InternalSerialize(TST::Tile *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v14 = *(this + 13);
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

  v7 = *(this + 12);
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

  v18 = *(this + 14);
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

  v6 = *(this + 15);
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
  v22 = *(this + 8);
  if (v22)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v24 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TST::TileRowInfo::_InternalSerialize(v24, v26, a3);
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(this + 16);
    *a2 = 48;
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
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_74;
        }
      }

      else
      {
        a2[2] = v31;
        a2 += 3;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_74;
        }
      }
    }

    else
    {
      a2[1] = v30;
      a2 += 2;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_74;
      }
    }

LABEL_61:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_77;
  }

  if ((v5 & 0x20) == 0)
  {
    goto LABEL_61;
  }

LABEL_74:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v34 = *(this + 68);
  *a2 = 56;
  a2[1] = v34;
  a2 += 2;
  if ((v5 & 0x40) != 0)
  {
LABEL_77:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v35 = *(this + 69);
    *a2 = 64;
    a2[1] = v35;
    a2 += 2;
  }

LABEL_80:
  v36 = *(this + 1);
  if ((v36 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v36 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::Tile::RequiredFieldsByteSizeFallback(TST::Tile *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    result += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_10:
    result += ((9 * (__clz(*(this + 15) | 1) ^ 0x1F) + 73) >> 6) + 1;
    return result;
  }

  result += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t TST::Tile::ByteSizeLong(TST::Tile *this)
{
  v2 = *(this + 4);
  if ((~v2 & 0xF) != 0)
  {
    v5 = TST::Tile::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v3.i64[0] = 0x1F0000001FLL;
    v3.i64[1] = 0x1F0000001FLL;
    v4.i64[0] = 0x4900000049;
    v4.i64[1] = 0x4900000049;
    v5 = (vaddvq_s32(vshrq_n_u32(vmlal_u16(v4, vmovn_s32(veorq_s8(vclzq_s32((*(this + 3) | __PAIR128__(0x100000001, 0x100000001))), v3)), 0x9000900090009), 6uLL)) + 4);
  }

  v6 = *(this + 8);
  v7 = v5 + v6;
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
      v12 = TST::TileRowInfo::ByteSizeLong(v11);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
    v2 = *(this + 4);
  }

  if ((v2 & 0x70) != 0)
  {
    if ((v2 & 0x10) != 0)
    {
      v7 += ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v7 += ((v2 >> 5) & 2) + ((v2 >> 4) & 2);
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

uint64_t TST::Tile::MergeFrom(TST::Tile *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::Tile::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::Tile::MergeFrom(uint64_t this, const TST::Tile *a2)
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
    this = sub_22167D7C0(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 0x7F) != 0)
  {
    if (v10)
    {
      *(v3 + 48) = *(a2 + 12);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_19;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 52) = *(a2 + 13);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

LABEL_19:
    *(v3 + 56) = *(a2 + 14);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

LABEL_20:
    *(v3 + 60) = *(a2 + 15);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }

LABEL_21:
    *(v3 + 64) = *(a2 + 16);
    if ((v10 & 0x20) == 0)
    {
LABEL_13:
      if ((v10 & 0x40) == 0)
      {
LABEL_15:
        *(v3 + 16) |= v10;
        return this;
      }

LABEL_14:
      *(v3 + 69) = *(a2 + 69);
      goto LABEL_15;
    }

LABEL_22:
    *(v3 + 68) = *(a2 + 68);
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  return this;
}

uint64_t *TST::Tile::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::Tile::Clear(this);

    return TST::Tile::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::Tile::CopyFrom(uint64_t *this, const TST::Tile *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::Tile::Clear(this);

    return TST::Tile::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::Tile::IsInitialized(TST::Tile *this)
{
  if ((~*(this + 4) & 0xF) != 0)
  {
    return 0;
  }

  v1 = *(this + 8);
  v2 = *(this + 5);
  do
  {
    result = v1 < 1;
    if (v1 < 1)
    {
      break;
    }

    v4 = *(v2 + 8 * v1--);
  }

  while ((~*(v4 + 16) & 0x33) == 0);
  return result;
}

__n128 TST::Tile::InternalSwap(__n128 *this, __n128 *a2)
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
  LODWORD(v7) = this[4].n128_u32[0];
  this[4].n128_u32[0] = a2[4].n128_u32[0];
  a2[4].n128_u32[0] = v7;
  LOWORD(v7) = this[4].n128_u16[2];
  this[4].n128_u16[2] = a2[4].n128_u16[2];
  a2[4].n128_u16[2] = v7;
  return result;
}

TSP::Reference *TST::TileStorage_Tile::clear_tile(TST::TileStorage_Tile *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::TileStorage_Tile *TST::TileStorage_Tile::TileStorage_Tile(TST::TileStorage_Tile *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B2798;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TileStorage_Tile_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B2798;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TileStorage_Tile_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TST::TileStorage_Tile *TST::TileStorage_Tile::TileStorage_Tile(TST::TileStorage_Tile *this, const TST::TileStorage_Tile *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B2798;
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

void TST::TileStorage_Tile::~TileStorage_Tile(TST::TileStorage_Tile *this)
{
  if (this != &TST::_TileStorage_Tile_default_instance_)
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
  TST::TileStorage_Tile::~TileStorage_Tile(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::TileStorage_Tile::default_instance(TST::TileStorage_Tile *this)
{
  if (atomic_load_explicit(scc_info_TileStorage_Tile_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TileStorage_Tile_default_instance_;
}

uint64_t *TST::TileStorage_Tile::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Reference::Clear(this[3]);
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

google::protobuf::internal *TST::TileStorage_Tile::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
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

            v15 = MEMORY[0x223DA0390](v14);
            LODWORD(v13) = v15;
            *(a1 + 24) = v15;
            v7 = v23;
          }

          v12 = sub_22170B7F8(a3, v13, v7);
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
          goto LABEL_38;
        }

        goto LABEL_31;
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v16 = (v7 + 1);
      LODWORD(v17) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v18 = *v16;
      v17 = (v17 + (v18 << 7) - 128);
      if ((v18 & 0x80000000) == 0)
      {
        v16 = (v7 + 2);
LABEL_30:
        v23 = v16;
        *(a1 + 32) = v17;
        goto LABEL_31;
      }

      v21 = google::protobuf::internal::VarintParseSlow32(v7, v17);
      v23 = v21;
      *(a1 + 32) = v22;
      if (!v21)
      {
LABEL_38:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_31:
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

unsigned __int8 *TST::TileStorage_Tile::_InternalSerialize(TST::TileStorage_Tile *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 8);
    *a2 = 8;
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
  *a2 = 18;
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

  a2 = TSP::Reference::_InternalSerialize(v8, v10, a3);
LABEL_24:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TileStorage_Tile::RequiredFieldsByteSizeFallback(TST::TileStorage_Tile *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(this + 3));
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

uint64_t TST::TileStorage_Tile::ByteSizeLong(TSP::Reference **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TST::TileStorage_Tile::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(this[3]);
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

uint64_t TST::TileStorage_Tile::MergeFrom(TST::TileStorage_Tile *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TileStorage_Tile::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TileStorage_Tile::MergeFrom(uint64_t this, const TST::TileStorage_Tile *a2)
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
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TST::TileStorage_Tile::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TileStorage_Tile::Clear(this);

    return TST::TileStorage_Tile::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TileStorage_Tile::CopyFrom(uint64_t *this, const TST::TileStorage_Tile *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TileStorage_Tile::Clear(this);

    return TST::TileStorage_Tile::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::TileStorage_Tile::IsInitialized(TSP::Reference **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::Reference::IsInitialized(this[3]);
  }
}

uint64_t *TST::TileStorage_Tile::InternalSwap(TST::TileStorage_Tile *this, TST::TileStorage_Tile *a2)
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

TST::TileStorage *TST::TileStorage::TileStorage(TST::TileStorage *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B2848;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_TileStorage_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 52) = 0;
  *(this + 12) = 0;
  return this;
}

TST::TileStorage *TST::TileStorage::TileStorage(TST::TileStorage *this, const TST::TileStorage *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B2848;
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
    sub_22167D904(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  v11 = *(a2 + 12);
  *(this + 52) = *(a2 + 52);
  *(this + 12) = v11;
  return this;
}

void TST::TileStorage::~TileStorage(TST::TileStorage *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167D880(this + 3);
}

{
  TST::TileStorage::~TileStorage(this);

  JUMPOUT(0x223DA1450);
}

void *TST::TileStorage::default_instance(TST::TileStorage *this)
{
  if (atomic_load_explicit(scc_info_TileStorage_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TileStorage_default_instance_;
}

uint64_t *TST::TileStorage::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::TileStorage_Tile::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 52) = 0;
    *(v1 + 48) = 0;
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

google::protobuf::internal *TST::TileStorage::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v33) & 1) == 0)
  {
    while (1)
    {
      v7 = (v33 + 1);
      v8 = *v33;
      if ((*v33 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v9 - 128));
      v33 = TagFallback;
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
        if (v8 != 24)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v17 = (v7 + 1);
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_30:
          v33 = v17;
          *(a1 + 52) = v16 != 0;
          goto LABEL_31;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v7, v16);
        v33 = v31;
        *(a1 + 52) = v32 != 0;
        if (!v31)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 != 1 || v8 != 10)
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

            v33 = google::protobuf::internal::UnknownFieldParse();
            if (!v33)
            {
LABEL_52:
              v33 = 0;
              goto LABEL_2;
            }

            goto LABEL_31;
          }

          v19 = (v7 - 1);
          while (2)
          {
            v20 = (v19 + 1);
            v33 = (v19 + 1);
            v21 = *(a1 + 40);
            if (!v21)
            {
LABEL_35:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v21 = *(a1 + 40);
              v22 = *v21;
              goto LABEL_36;
            }

            v26 = *(a1 + 32);
            v22 = *v21;
            if (v26 >= *v21)
            {
              if (v22 == *(a1 + 36))
              {
                goto LABEL_35;
              }

LABEL_36:
              *v21 = v22 + 1;
              v23 = google::protobuf::Arena::CreateMaybeMessage<TST::TileStorage_Tile>(*(a1 + 24));
              v24 = *(a1 + 32);
              v25 = *(a1 + 40) + 8 * v24;
              *(a1 + 32) = v24 + 1;
              *(v25 + 8) = v23;
              v20 = v33;
            }

            else
            {
              *(a1 + 32) = v26 + 1;
              v23 = *&v21[2 * v26 + 2];
            }

            v19 = sub_221701C48(a3, v23, v20);
            v33 = v19;
            if (!v19)
            {
              goto LABEL_52;
            }

            if (*a3 <= v19 || *v19 != 10)
            {
              goto LABEL_31;
            }

            continue;
          }
        }

        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 1u;
        v13 = (v7 + 1);
        LODWORD(v14) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v15 = *v13;
        v14 = (v14 + (v15 << 7) - 128);
        if ((v15 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_25:
          v33 = v13;
          *(a1 + 48) = v14;
          goto LABEL_31;
        }

        v29 = google::protobuf::internal::VarintParseSlow32(v7, v14);
        v33 = v29;
        *(a1 + 48) = v30;
        if (!v29)
        {
          goto LABEL_52;
        }
      }

LABEL_31:
      if (sub_221567030(a3, &v33))
      {
        goto LABEL_2;
      }
    }

    v7 = (v33 + 2);
LABEL_6:
    v33 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

unsigned __int8 *TST::TileStorage::_InternalSerialize(TST::TileStorage *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TST::TileStorage_Tile::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 4);
  if (v13)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 12);
    *a2 = 16;
    if (v14 <= 0x7F)
    {
      a2[1] = v14;
      a2 += 2;
      if ((v13 & 2) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    a2[1] = v14 | 0x80;
    v15 = v14 >> 7;
    if (v14 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v15 | 0x80;
        v19 = v15 >> 7;
        ++a2;
        v20 = v15 >> 14;
        v15 >>= 7;
      }

      while (v20);
      *(a2 - 1) = v19;
      if ((v13 & 2) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    a2[2] = v15;
    a2 += 3;
  }

  if ((v13 & 2) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 52);
  *a2 = 24;
  a2[1] = v16;
  a2 += 2;
LABEL_25:
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TileStorage::ByteSizeLong(TST::TileStorage *this)
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
      v7 = TST::TileStorage_Tile::ByteSizeLong(v6);
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
      v2 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v8 & 2;
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

uint64_t TST::TileStorage::MergeFrom(TST::TileStorage *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TileStorage::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TileStorage::MergeFrom(uint64_t this, const TST::TileStorage *a2)
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
    this = sub_22167D904(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
      *(v3 + 48) = *(a2 + 12);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 52) = *(a2 + 52);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TST::TileStorage::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TileStorage::Clear(this);

    return TST::TileStorage::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TileStorage::CopyFrom(uint64_t *this, const TST::TileStorage *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TileStorage::Clear(this);

    return TST::TileStorage::MergeFrom(v4, a2);
  }

  return this;
}

BOOL sub_2215D9824(uint64_t a1)
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
    if ((~*(v4 + 16) & 3) != 0)
    {
      break;
    }

    --v2;
  }

  while ((TSP::Reference::IsInitialized(*(v4 + 24)) & 1) != 0);
  return v3 < 1;
}

__n128 TST::TileStorage::InternalSwap(__n128 *this, __n128 *a2)
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
  LOBYTE(v5) = this[3].n128_u8[4];
  this[3].n128_u8[4] = a2[3].n128_u8[4];
  a2[3].n128_u8[4] = v5;
  return result;
}

uint64_t *TST::PopUpMenuModel_CellValue::clear_BOOLean_value(TST::PopUpMenuModel_CellValue *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSCE::BooleanCellValueArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t *TST::PopUpMenuModel_CellValue::clear_date_value(TST::PopUpMenuModel_CellValue *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSCE::DateCellValueArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TST::PopUpMenuModel_CellValue::clear_number_value(TST::PopUpMenuModel_CellValue *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSCE::NumberCellValueArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t *TST::PopUpMenuModel_CellValue::clear_string_value(TST::PopUpMenuModel_CellValue *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSCE::StringCellValueArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TST::PopUpMenuModel_CellValue *TST::PopUpMenuModel_CellValue::PopUpMenuModel_CellValue(TST::PopUpMenuModel_CellValue *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B28F8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PopUpMenuModel_CellValue_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 14) = 1;
  return this;
}

TST::PopUpMenuModel_CellValue *TST::PopUpMenuModel_CellValue::PopUpMenuModel_CellValue(TST::PopUpMenuModel_CellValue *this, const TST::PopUpMenuModel_CellValue *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B28F8;
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
  *(this + 14) = *(a2 + 14);
  return this;
}

void TST::PopUpMenuModel_CellValue::~PopUpMenuModel_CellValue(TST::PopUpMenuModel_CellValue *this)
{
  sub_2215D9C70(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::PopUpMenuModel_CellValue::~PopUpMenuModel_CellValue(this);

  JUMPOUT(0x223DA1450);
}

void *sub_2215D9C70(void *result)
{
  if (result != &TST::_PopUpMenuModel_CellValue_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSCE::BooleanCellValueArchive::~BooleanCellValueArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSCE::DateCellValueArchive::~DateCellValueArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSCE::NumberCellValueArchive::~NumberCellValueArchive(v4);
      MEMORY[0x223DA1450]();
    }

    result = v1[6];
    if (result)
    {
      TSCE::StringCellValueArchive::~StringCellValueArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::PopUpMenuModel_CellValue::default_instance(TST::PopUpMenuModel_CellValue *this)
{
  if (atomic_load_explicit(scc_info_PopUpMenuModel_CellValue_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_PopUpMenuModel_CellValue_default_instance_;
}

uint64_t *TST::PopUpMenuModel_CellValue::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) != 0)
  {
    if (v2)
    {
      this = TSCE::BooleanCellValueArchive::Clear(this[3]);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    this = TSCE::DateCellValueArchive::Clear(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
LABEL_7:
        *(v1 + 56) = 1;
        goto LABEL_8;
      }

LABEL_6:
      this = TSCE::StringCellValueArchive::Clear(*(v1 + 48));
      goto LABEL_7;
    }

LABEL_14:
    this = TSCE::NumberCellValueArchive::Clear(*(v1 + 40));
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::PopUpMenuModel_CellValue::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  while ((sub_221567030(a3, &v26) & 1) == 0)
  {
    v5 = (v26 + 1);
    v6 = *v26;
    if (*v26 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v7 - 128));
        v26 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v24;
        goto LABEL_7;
      }

      v5 = (v26 + 2);
    }

    v26 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::DateCellValueArchive>(v16);
          *(a1 + 32) = v15;
          v5 = v26;
        }

        v11 = sub_2216FEDAC(a3, v15, v5);
      }

      else if (v8 == 4)
      {
        if (v6 != 34)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 4u;
        v17 = *(a1 + 40);
        if (!v17)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::NumberCellValueArchive>(v18);
          *(a1 + 40) = v17;
          v5 = v26;
        }

        v11 = sub_2216FEE7C(a3, v17, v5);
      }

      else
      {
        if (v8 != 5 || v6 != 42)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 8u;
        v9 = *(a1 + 48);
        if (!v9)
        {
          v10 = *(a1 + 8);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::StringCellValueArchive>(v10);
          *(a1 + 48) = v9;
          v5 = v26;
        }

        v11 = sub_2216FEF4C(a3, v9, v5);
      }

      goto LABEL_54;
    }

    if (v8 == 1)
    {
      if (v6 != 8)
      {
        goto LABEL_47;
      }

      v20 = (v5 + 1);
      v19 = *v5;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_44;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = (v5 + 2);
LABEL_44:
        v26 = v20;
        goto LABEL_45;
      }

      v26 = google::protobuf::internal::VarintParseSlow64(v5, v19);
      if (!v26)
      {
        return 0;
      }

LABEL_45:
      if ((v19 - 1) > 4)
      {
        sub_2217087CC();
      }

      else
      {
        *(a1 + 16) |= 0x10u;
        *(a1 + 56) = v19;
      }
    }

    else
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_47:
        if (v6)
        {
          v22 = (v6 & 7) == 4;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          *(a3 + 80) = v6 - 1;
          return v26;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v11 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_54;
      }

      *(a1 + 16) |= 1u;
      v13 = *(a1 + 24);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::BooleanCellValueArchive>(v14);
        *(a1 + 24) = v13;
        v5 = v26;
      }

      v11 = sub_2216FECDC(a3, v13, v5);
LABEL_54:
      v26 = v11;
      if (!v11)
      {
        return 0;
      }
    }
  }

  return v26;
}

unsigned __int8 *TST::PopUpMenuModel_CellValue::_InternalSerialize(TST::PopUpMenuModel_CellValue *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 0x10) != 0)
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
        if (v5)
        {
          goto LABEL_18;
        }
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
        if (v5)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
      if (v5)
      {
        goto LABEL_18;
      }
    }

LABEL_3:
    if ((v5 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_18:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(this + 3);
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

  a2 = TSCE::BooleanCellValueArchive::_InternalSerialize(v10, v12, a3);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_28:
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

  a2 = TSCE::DateCellValueArchive::_InternalSerialize(v16, v18, a3);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 5);
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

  a2 = TSCE::NumberCellValueArchive::_InternalSerialize(v22, v24, a3);
  if ((v5 & 8) != 0)
  {
LABEL_48:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v28 = *(this + 6);
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

    a2 = TSCE::StringCellValueArchive::_InternalSerialize(v28, v30, a3);
  }

LABEL_58:
  v34 = *(this + 1);
  if ((v34 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v34 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::PopUpMenuModel_CellValue::ByteSizeLong(TST::PopUpMenuModel_CellValue *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(this + 14);
    if (v4 < 0)
    {
      v3 = 11;
    }

    else
    {
      v3 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xF) == 0)
  {
    goto LABEL_12;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v8 = TSCE::DateCellValueArchive::ByteSizeLong(*(this + 4));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
LABEL_10:
      if ((v2 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v7 = TSCE::BooleanCellValueArchive::ByteSizeLong(*(this + 3));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  if ((v2 & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  v9 = TSCE::NumberCellValueArchive::ByteSizeLong(*(this + 5));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_11:
    v5 = TSCE::StringCellValueArchive::ByteSizeLong(*(this + 6));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
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

uint64_t TST::PopUpMenuModel_CellValue::MergeFrom(TST::PopUpMenuModel_CellValue *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::PopUpMenuModel_CellValue::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::PopUpMenuModel_CellValue::MergeFrom(uint64_t this, const TST::PopUpMenuModel_CellValue *a2)
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
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::BooleanCellValueArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TSCE::_BooleanCellValueArchive_default_instance_;
      }

      this = TSCE::BooleanCellValueArchive::MergeFrom(v6, v8);
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

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::DateCellValueArchive>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = TSCE::_DateCellValueArchive_default_instance_;
    }

    this = TSCE::DateCellValueArchive::MergeFrom(v9, v11);
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

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::NumberCellValueArchive>(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = &TSCE::_NumberCellValueArchive_default_instance_;
    }

    this = TSCE::NumberCellValueArchive::MergeFrom(v12, v14);
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
      *(v3 + 56) = *(a2 + 14);
      goto LABEL_10;
    }

LABEL_36:
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::StringCellValueArchive>(v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = &TSCE::_StringCellValueArchive_default_instance_;
    }

    this = TSCE::StringCellValueArchive::MergeFrom(v15, v17);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

uint64_t *TST::PopUpMenuModel_CellValue::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PopUpMenuModel_CellValue::Clear(this);

    return TST::PopUpMenuModel_CellValue::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::PopUpMenuModel_CellValue::CopyFrom(uint64_t *this, const TST::PopUpMenuModel_CellValue *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PopUpMenuModel_CellValue::Clear(this);

    return TST::PopUpMenuModel_CellValue::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::PopUpMenuModel_CellValue::IsInitialized(TST::PopUpMenuModel_CellValue *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x10) == 0)
  {
    return 0;
  }

  if (v1)
  {
    result = TSCE::BooleanCellValueArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 2) != 0)
  {
    result = TSCE::DateCellValueArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 4) != 0)
  {
    result = TSCE::NumberCellValueArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 8) == 0)
  {
    return 1;
  }

  result = TSCE::StringCellValueArchive::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::PopUpMenuModel_CellValue::InternalSwap(TST::PopUpMenuModel_CellValue *this, TST::PopUpMenuModel_CellValue *a2)
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
  LODWORD(v7) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v7;
  return result;
}

uint64_t *TST::PopUpMenuModel::clear_tsce_item(uint64_t *this)
{
  v1 = *(this + 12);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (this[7] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellValueArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 48) = 0;
  }

  return this;
}

TST::PopUpMenuModel *TST::PopUpMenuModel::PopUpMenuModel(TST::PopUpMenuModel *this, google::protobuf::Arena *a2)
{
  *(this + 2) = a2;
  *this = &unk_2834B29A8;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  if (atomic_load_explicit(scc_info_PopUpMenuModel_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_2215DAB00(_Unwind_Exception *a1)
{
  sub_22167DA48(v2);
  sub_22167D9C4(v1);
  _Unwind_Resume(a1);
}

TST::PopUpMenuModel *TST::PopUpMenuModel::PopUpMenuModel(TST::PopUpMenuModel *this, const TST::PopUpMenuModel *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834B29A8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22167DACC(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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
  *(this + 7) = 0;
  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(a2 + 7);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 40));
    sub_22167DB8C(this + 40, v13, (v12 + 8), v11, **(this + 7) - *(this + 12));
    v14 = *(this + 12) + v11;
    *(this + 12) = v14;
    v15 = *(this + 7);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(this + 16) = 0;
  v16 = *(a2 + 1);
  if (v16)
  {
    sub_22156734C(v4, (v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_2215DAC78(_Unwind_Exception *a1)
{
  sub_22167DA48(v2);
  sub_22167D9C4(v1);
  _Unwind_Resume(a1);
}

void TST::PopUpMenuModel::~PopUpMenuModel(TST::PopUpMenuModel *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167DA48(this + 5);
  sub_22167D9C4(this + 2);
}

{
  TST::PopUpMenuModel::~PopUpMenuModel(this);

  JUMPOUT(0x223DA1450);
}

void *TST::PopUpMenuModel::default_instance(TST::PopUpMenuModel *this)
{
  if (atomic_load_explicit(scc_info_PopUpMenuModel_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_PopUpMenuModel_default_instance_;
}

uint64_t *TST::PopUpMenuModel::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TST::PopUpMenuModel_CellValue::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      this = TSCE::CellValueArchive::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_221567398(v8);
  }

  return this;
}

google::protobuf::internal *TST::PopUpMenuModel::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  if ((sub_221567030(a3, &v29) & 1) == 0)
  {
    while (1)
    {
      v6 = (v29 + 1);
      v7 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v8 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v28;
LABEL_7:
      if (v7 >> 3 == 2)
      {
        if (v7 != 18)
        {
          goto LABEL_12;
        }

        v11 = (v6 - 1);
        while (2)
        {
          v12 = (v11 + 1);
          v29 = (v11 + 1);
          v13 = *(a1 + 56);
          if (!v13)
          {
LABEL_24:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
            v13 = *(a1 + 56);
            v14 = *v13;
            goto LABEL_25;
          }

          v18 = *(a1 + 48);
          v14 = *v13;
          if (v18 >= *v13)
          {
            if (v14 == *(a1 + 52))
            {
              goto LABEL_24;
            }

LABEL_25:
            *v13 = v14 + 1;
            v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(*(a1 + 40));
            v16 = *(a1 + 48);
            v17 = *(a1 + 56) + 8 * v16;
            *(a1 + 48) = v16 + 1;
            *(v17 + 8) = v15;
            v12 = v29;
          }

          else
          {
            *(a1 + 48) = v18 + 1;
            v15 = *&v13[2 * v18 + 2];
          }

          v11 = sub_2216FB46C(a3, v15, v12);
          v29 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 18)
          {
            goto LABEL_19;
          }

          continue;
        }
      }

      if (v7 >> 3 == 1 && v7 == 10)
      {
        v19 = (v6 - 1);
        while (1)
        {
          v20 = (v19 + 1);
          v29 = (v19 + 1);
          v21 = *(a1 + 32);
          if (!v21)
          {
            goto LABEL_36;
          }

          v26 = *(a1 + 24);
          v22 = *v21;
          if (v26 < *v21)
          {
            *(a1 + 24) = v26 + 1;
            v23 = *&v21[2 * v26 + 2];
            goto LABEL_40;
          }

          if (v22 == *(a1 + 28))
          {
LABEL_36:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v21 = *(a1 + 32);
            v22 = *v21;
          }

          *v21 = v22 + 1;
          v23 = google::protobuf::Arena::CreateMaybeMessage<TST::PopUpMenuModel_CellValue>(*(a1 + 16));
          v24 = *(a1 + 24);
          v25 = *(a1 + 32) + 8 * v24;
          *(a1 + 24) = v24 + 1;
          *(v25 + 8) = v23;
          v20 = v29;
LABEL_40:
          v19 = sub_221701D18(a3, v23, v20);
          v29 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 10)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_12:
      if (v7)
      {
        v10 = (v7 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        *(a3 + 80) = v7 - 1;
        return v29;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v29 = google::protobuf::internal::UnknownFieldParse();
      if (!v29)
      {
        return 0;
      }

LABEL_19:
      if (sub_221567030(a3, &v29))
      {
        return v29;
      }
    }

    v6 = (v29 + 2);
LABEL_6:
    v29 = v6;
    goto LABEL_7;
  }

  return v29;
}

unsigned __int8 *TST::PopUpMenuModel::_InternalSerialize(TST::PopUpMenuModel *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TST::PopUpMenuModel_CellValue::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 12);
  if (v13)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 7) + 8 * j + 8);
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

      a2 = TSCE::CellValueArchive::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::PopUpMenuModel::ByteSizeLong(TST::PopUpMenuModel *this)
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
      v7 = TST::PopUpMenuModel_CellValue::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 12);
  v9 = v2 + v8;
  v10 = *(this + 7);
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
      v14 = TSCE::CellValueArchive::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v9, this + 64);
  }

  else
  {
    *(this + 16) = v9;
    return v9;
  }
}

uint64_t TST::PopUpMenuModel::MergeFrom(TST::PopUpMenuModel *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::PopUpMenuModel::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::PopUpMenuModel::MergeFrom(uint64_t this, const TST::PopUpMenuModel *a2)
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
    this = sub_22167DACC(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 12);
  if (v10)
  {
    v11 = *(a2 + 7);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 40));
    this = sub_22167DB8C(v3 + 40, v12, (v11 + 8), v10, **(v3 + 56) - *(v3 + 48));
    v13 = *(v3 + 48) + v10;
    *(v3 + 48) = v13;
    v14 = *(v3 + 56);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  return this;
}

uint64_t *TST::PopUpMenuModel::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PopUpMenuModel::Clear(this);

    return TST::PopUpMenuModel::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::PopUpMenuModel::CopyFrom(uint64_t *this, const TST::PopUpMenuModel *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PopUpMenuModel::Clear(this);

    return TST::PopUpMenuModel::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::PopUpMenuModel::IsInitialized(TST::PopUpMenuModel *this)
{
  v2 = *(this + 6);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TST::PopUpMenuModel_CellValue::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 12);
  do
  {
    v5 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = TSCE::CellValueArchive::IsInitialized(*(*(this + 7) + 8 * v6));
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  return v5;
}

__n128 TST::PopUpMenuModel::InternalSwap(TST::PopUpMenuModel *this, TST::PopUpMenuModel *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  v7 = *(this + 7);
  result = *(a2 + 3);
  *(this + 3) = result;
  *(a2 + 6) = v6;
  *(a2 + 7) = v7;
  return result;
}

TST::ImportWarningSetArchive_FormulaImportWarning *TST::ImportWarningSetArchive_FormulaImportWarning::ImportWarningSetArchive_FormulaImportWarning(TST::ImportWarningSetArchive_FormulaImportWarning *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B2A58;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImportWarningSetArchive_FormulaImportWarning_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = 0x100000000;
  return this;
}

TST::ImportWarningSetArchive_FormulaImportWarning *TST::ImportWarningSetArchive_FormulaImportWarning::ImportWarningSetArchive_FormulaImportWarning(TST::ImportWarningSetArchive_FormulaImportWarning *this, const TST::ImportWarningSetArchive_FormulaImportWarning *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B2A58;
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

  *(this + 5) = *(a2 + 5);
  return this;
}

void TST::ImportWarningSetArchive_FormulaImportWarning::~ImportWarningSetArchive_FormulaImportWarning(TST::ImportWarningSetArchive_FormulaImportWarning *this)
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
  TST::ImportWarningSetArchive_FormulaImportWarning::~ImportWarningSetArchive_FormulaImportWarning(this);

  JUMPOUT(0x223DA1450);
}

void *TST::ImportWarningSetArchive_FormulaImportWarning::default_instance(TST::ImportWarningSetArchive_FormulaImportWarning *this)
{
  if (atomic_load_explicit(scc_info_ImportWarningSetArchive_FormulaImportWarning_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ImportWarningSetArchive_FormulaImportWarning_default_instance_;
}

uint64_t *TST::ImportWarningSetArchive_FormulaImportWarning::Clear(TST::ImportWarningSetArchive_FormulaImportWarning *this)
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
  if ((v1 & 0xC) != 0)
  {
    *(this + 5) = 0x100000000;
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

google::protobuf::internal *TST::ImportWarningSetArchive_FormulaImportWarning::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v24) & 1) == 0)
  {
    while (1)
    {
      v7 = (v24 + 1);
      v8 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v9 - 128));
      v24 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_50;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 8)
          {
            v16 = (v7 + 1);
            v15 = *v7;
            if ((v15 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

            v17 = *v16;
            v15 = (v17 << 7) + v15 - 128;
            if (v17 < 0)
            {
              v24 = google::protobuf::internal::VarintParseSlow64(v7, v15);
              if (!v24)
              {
LABEL_50:
                v24 = 0;
                goto LABEL_2;
              }
            }

            else
            {
              v16 = (v7 + 2);
LABEL_26:
              v24 = v16;
            }

            if ((v15 - 1) > 0xE)
            {
              sub_2217087CC();
            }

            else
            {
              *(a1 + 16) |= 8u;
              *(a1 + 44) = v15;
            }

            goto LABEL_40;
          }
        }

        else if (v10 == 2 && v8 == 18)
        {
          *(a1 + 16) |= 1u;
          goto LABEL_31;
        }

        goto LABEL_32;
      }

      if (v10 == 3)
      {
        if (v8 == 26)
        {
          *(a1 + 16) |= 2u;
LABEL_31:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v18 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_39:
          v24 = v18;
          if (!v18)
          {
            goto LABEL_50;
          }

          goto LABEL_40;
        }

LABEL_32:
        if (v8)
        {
          v19 = (v8 & 7) == 4;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_39;
      }

      if (v10 != 4 || v8 != 32)
      {
        goto LABEL_32;
      }

      v5 |= 4u;
      v13 = (v7 + 1);
      LODWORD(v12) = *v7;
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      v14 = *v13;
      v12 = (v12 + (v14 << 7) - 128);
      if ((v14 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_21:
        v24 = v13;
        *(a1 + 40) = v12;
        goto LABEL_40;
      }

      v22 = google::protobuf::internal::VarintParseSlow64(v7, v12);
      v24 = v22;
      *(a1 + 40) = v23;
      if (!v22)
      {
        goto LABEL_50;
      }

LABEL_40:
      if (sub_221567030(a3, &v24))
      {
        goto LABEL_2;
      }
    }

    v7 = (v24 + 2);
LABEL_6:
    v24 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v24;
}

unsigned __int8 *TST::ImportWarningSetArchive_FormulaImportWarning::_InternalSerialize(TST::ImportWarningSetArchive_FormulaImportWarning *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 11);
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
        if (v6)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
        if (v6)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
      if (v6)
      {
        goto LABEL_17;
      }
    }

LABEL_3:
    if ((v6 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_17:
  v4 = sub_22150C00C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4 = sub_22150C00C(a3, 3, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_28;
  }

LABEL_19:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(this + 10);
  *v4 = 32;
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v12 = v11 >> 7;
    if (v11 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v12 | 0x80;
        v13 = v12 >> 7;
        ++v4;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
    }

    else
    {
      v4[2] = v12;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v11;
    v4 += 2;
  }

LABEL_28:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::ImportWarningSetArchive_FormulaImportWarning::ByteSizeLong(TST::ImportWarningSetArchive_FormulaImportWarning *this)
{
  v1 = *(this + 4);
  if ((v1 & 8) != 0)
  {
    v3 = *(this + 11);
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

  if ((v1 & 7) == 0)
  {
    goto LABEL_21;
  }

  if (v1)
  {
    v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
LABEL_9:
      if ((v1 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_17;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_9;
  }

  v7 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  v9 = *(v7 + 8);
  if ((v8 & 0x80u) == 0)
  {
    v9 = v8;
  }

  v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 4) != 0)
  {
LABEL_17:
    v10 = *(this + 10);
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

LABEL_21:
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TST::ImportWarningSetArchive_FormulaImportWarning::MergeFrom(TST::ImportWarningSetArchive_FormulaImportWarning *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ImportWarningSetArchive_FormulaImportWarning::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ImportWarningSetArchive_FormulaImportWarning::MergeFrom(uint64_t this, const TST::ImportWarningSetArchive_FormulaImportWarning *a2)
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
      v3[4] |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
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

    v3[4] |= 2u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
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
      v3[11] = *(a2 + 11);
      goto LABEL_9;
    }

LABEL_13:
    v3[10] = *(a2 + 10);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

TST::ImportWarningSetArchive_FormulaImportWarning *TST::ImportWarningSetArchive_FormulaImportWarning::CopyFrom(TST::ImportWarningSetArchive_FormulaImportWarning *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ImportWarningSetArchive_FormulaImportWarning::Clear(this);

    return TST::ImportWarningSetArchive_FormulaImportWarning::MergeFrom(v4, a2);
  }

  return this;
}

TST::ImportWarningSetArchive_FormulaImportWarning *TST::ImportWarningSetArchive_FormulaImportWarning::CopyFrom(TST::ImportWarningSetArchive_FormulaImportWarning *this, const TST::ImportWarningSetArchive_FormulaImportWarning *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ImportWarningSetArchive_FormulaImportWarning::Clear(this);

    return TST::ImportWarningSetArchive_FormulaImportWarning::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::ImportWarningSetArchive_FormulaImportWarning::InternalSwap(TST::ImportWarningSetArchive_FormulaImportWarning *this, TST::ImportWarningSetArchive_FormulaImportWarning *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  LODWORD(v7) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  LODWORD(v7) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v7;
  return result;
}

uint64_t *TST::ImportWarningSetArchive::clear_sorted_warnings(uint64_t *this)
{
  v1 = *(this + 8);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::WarningArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TST::ImportWarningSetArchive *TST::ImportWarningSetArchive::ImportWarningSetArchive(TST::ImportWarningSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B2B08;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ImportWarningSetArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = v3;
  *(this + 71) = 0;
  return this;
}

TST::ImportWarningSetArchive *TST::ImportWarningSetArchive::ImportWarningSetArchive(TST::ImportWarningSetArchive *this, const TST::ImportWarningSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B2B08;
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
    sub_221569A14(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  v11 = *(a2 + 4);
  if (v11)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v11 = *(a2 + 4);
  }

  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  v12 = *(a2 + 8);
  *(this + 71) = *(a2 + 71);
  *(this + 8) = v12;
  return this;
}

void sub_2215DC4F0(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C405159FCF5);
  sub_221569990((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::ImportWarningSetArchive::~ImportWarningSetArchive(TST::ImportWarningSetArchive *this)
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

  if (this != &TST::_ImportWarningSetArchive_default_instance_)
  {
    v3 = *(this + 7);
    if (v3)
    {
      TST::ImportWarningSetArchive_FormulaImportWarning::~ImportWarningSetArchive_FormulaImportWarning(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_221569990(this + 3);
}

{
  TST::ImportWarningSetArchive::~ImportWarningSetArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::ImportWarningSetArchive::default_instance(TST::ImportWarningSetArchive *this)
{
  if (atomic_load_explicit(scc_info_ImportWarningSetArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ImportWarningSetArchive_default_instance_;
}

uint64_t *TST::ImportWarningSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::WarningArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v6 + 23) & 0x80000000) == 0)
    {
      *v6 = 0;
      *(v6 + 23) = 0;
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v5 & 2) != 0)
    {
LABEL_10:
      this = TST::ImportWarningSetArchive_FormulaImportWarning::Clear(*(v1 + 56));
    }
  }

LABEL_11:
  if ((v5 & 0xFC) != 0)
  {
    *(v1 + 68) = 0;
    *(v1 + 64) = 0;
  }

  if ((v5 & 0xFF00) != 0)
  {
    *(v1 + 70) = 0;
  }

  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 70) = 0;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_221567398(v7);
  }

  return this;
}

google::protobuf::internal *TST::ImportWarningSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v99 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v99) & 1) == 0)
  {
    while (2)
    {
      v7 = (v99 + 1);
      v8 = *v99;
      if (*v99 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v99, (v9 - 128));
          v99 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_147;
          }

          v7 = TagFallback;
          v8 = v14;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_106;
              }

              *(a1 + 16) |= 2u;
              v10 = *(a1 + 56);
              if (!v10)
              {
                v11 = *(a1 + 8);
                if (v11)
                {
                  v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
                }

                v10 = google::protobuf::Arena::CreateMaybeMessage<TST::ImportWarningSetArchive_FormulaImportWarning>(v11);
                *(a1 + 56) = v10;
                v7 = v99;
              }

              v12 = sub_221701DE8(a3, v10, v7);
              goto LABEL_113;
            case 2u:
              if (v8 != 16)
              {
                goto LABEL_106;
              }

              v5 |= 4u;
              v43 = (v7 + 1);
              v42 = *v7;
              if ((v42 & 0x8000000000000000) == 0)
              {
                goto LABEL_67;
              }

              v44 = *v43;
              v42 = (v44 << 7) + v42 - 128;
              if (v44 < 0)
              {
                v87 = google::protobuf::internal::VarintParseSlow64(v7, v42);
                v99 = v87;
                *(a1 + 64) = v88 != 0;
                if (!v87)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v43 = (v7 + 2);
LABEL_67:
                v99 = v43;
                *(a1 + 64) = v42 != 0;
              }

              goto LABEL_114;
            case 3u:
              if (v8 != 24)
              {
                goto LABEL_106;
              }

              v5 |= 8u;
              v31 = (v7 + 1);
              v30 = *v7;
              if ((v30 & 0x8000000000000000) == 0)
              {
                goto LABEL_47;
              }

              v32 = *v31;
              v30 = (v32 << 7) + v30 - 128;
              if (v32 < 0)
              {
                v79 = google::protobuf::internal::VarintParseSlow64(v7, v30);
                v99 = v79;
                *(a1 + 65) = v80 != 0;
                if (!v79)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v31 = (v7 + 2);
LABEL_47:
                v99 = v31;
                *(a1 + 65) = v30 != 0;
              }

              goto LABEL_114;
            case 4u:
              if (v8 != 32)
              {
                goto LABEL_106;
              }

              v5 |= 0x10u;
              v37 = (v7 + 1);
              v36 = *v7;
              if ((v36 & 0x8000000000000000) == 0)
              {
                goto LABEL_57;
              }

              v38 = *v37;
              v36 = (v38 << 7) + v36 - 128;
              if (v38 < 0)
              {
                v83 = google::protobuf::internal::VarintParseSlow64(v7, v36);
                v99 = v83;
                *(a1 + 66) = v84 != 0;
                if (!v83)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v37 = (v7 + 2);
LABEL_57:
                v99 = v37;
                *(a1 + 66) = v36 != 0;
              }

              goto LABEL_114;
            case 5u:
              if (v8 != 40)
              {
                goto LABEL_106;
              }

              v5 |= 0x20u;
              v22 = (v7 + 1);
              v21 = *v7;
              if ((v21 & 0x8000000000000000) == 0)
              {
                goto LABEL_32;
              }

              v23 = *v22;
              v21 = (v23 << 7) + v21 - 128;
              if (v23 < 0)
              {
                v73 = google::protobuf::internal::VarintParseSlow64(v7, v21);
                v99 = v73;
                *(a1 + 67) = v74 != 0;
                if (!v73)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v22 = (v7 + 2);
LABEL_32:
                v99 = v22;
                *(a1 + 67) = v21 != 0;
              }

              goto LABEL_114;
            case 6u:
              if (v8 != 48)
              {
                goto LABEL_106;
              }

              v5 |= 0x40u;
              v54 = (v7 + 1);
              v53 = *v7;
              if ((v53 & 0x8000000000000000) == 0)
              {
                goto LABEL_85;
              }

              v55 = *v54;
              v53 = (v55 << 7) + v53 - 128;
              if (v55 < 0)
              {
                v89 = google::protobuf::internal::VarintParseSlow64(v7, v53);
                v99 = v89;
                *(a1 + 68) = v90 != 0;
                if (!v89)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v54 = (v7 + 2);
LABEL_85:
                v99 = v54;
                *(a1 + 68) = v53 != 0;
              }

              goto LABEL_114;
            case 7u:
              if (v8 != 56)
              {
                goto LABEL_106;
              }

              v5 |= 0x80u;
              v60 = (v7 + 1);
              v59 = *v7;
              if ((v59 & 0x8000000000000000) == 0)
              {
                goto LABEL_95;
              }

              v61 = *v60;
              v59 = (v61 << 7) + v59 - 128;
              if (v61 < 0)
              {
                v93 = google::protobuf::internal::VarintParseSlow64(v7, v59);
                v99 = v93;
                *(a1 + 69) = v94 != 0;
                if (!v93)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v60 = (v7 + 2);
LABEL_95:
                v99 = v60;
                *(a1 + 69) = v59 != 0;
              }

              goto LABEL_114;
            case 8u:
              if (v8 != 64)
              {
                goto LABEL_106;
              }

              v5 |= 0x100u;
              v40 = (v7 + 1);
              v39 = *v7;
              if ((v39 & 0x8000000000000000) == 0)
              {
                goto LABEL_62;
              }

              v41 = *v40;
              v39 = (v41 << 7) + v39 - 128;
              if (v41 < 0)
              {
                v85 = google::protobuf::internal::VarintParseSlow64(v7, v39);
                v99 = v85;
                *(a1 + 70) = v86 != 0;
                if (!v85)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v40 = (v7 + 2);
LABEL_62:
                v99 = v40;
                *(a1 + 70) = v39 != 0;
              }

              goto LABEL_114;
            case 9u:
              if (v8 != 72)
              {
                goto LABEL_106;
              }

              v5 |= 0x200u;
              v66 = (v7 + 1);
              v65 = *v7;
              if ((v65 & 0x8000000000000000) == 0)
              {
                goto LABEL_105;
              }

              v67 = *v66;
              v65 = (v67 << 7) + v65 - 128;
              if (v67 < 0)
              {
                v97 = google::protobuf::internal::VarintParseSlow64(v7, v65);
                v99 = v97;
                *(a1 + 71) = v98 != 0;
                if (!v97)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v66 = (v7 + 2);
LABEL_105:
                v99 = v66;
                *(a1 + 71) = v65 != 0;
              }

              goto LABEL_114;
            case 0xAu:
              if (v8 != 80)
              {
                goto LABEL_106;
              }

              v5 |= 0x400u;
              v28 = (v7 + 1);
              v27 = *v7;
              if ((v27 & 0x8000000000000000) == 0)
              {
                goto LABEL_42;
              }

              v29 = *v28;
              v27 = (v29 << 7) + v27 - 128;
              if (v29 < 0)
              {
                v77 = google::protobuf::internal::VarintParseSlow64(v7, v27);
                v99 = v77;
                *(a1 + 72) = v78 != 0;
                if (!v77)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v28 = (v7 + 2);
LABEL_42:
                v99 = v28;
                *(a1 + 72) = v27 != 0;
              }

              goto LABEL_114;
            case 0xBu:
              if (v8 != 88)
              {
                goto LABEL_106;
              }

              v5 |= 0x800u;
              v63 = (v7 + 1);
              v62 = *v7;
              if ((v62 & 0x8000000000000000) == 0)
              {
                goto LABEL_100;
              }

              v64 = *v63;
              v62 = (v64 << 7) + v62 - 128;
              if (v64 < 0)
              {
                v95 = google::protobuf::internal::VarintParseSlow64(v7, v62);
                v99 = v95;
                *(a1 + 73) = v96 != 0;
                if (!v95)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v63 = (v7 + 2);
LABEL_100:
                v99 = v63;
                *(a1 + 73) = v62 != 0;
              }

              goto LABEL_114;
            case 0xCu:
              if (v8 != 96)
              {
                goto LABEL_106;
              }

              v5 |= 0x1000u;
              v19 = (v7 + 1);
              v18 = *v7;
              if ((v18 & 0x8000000000000000) == 0)
              {
                goto LABEL_27;
              }

              v20 = *v19;
              v18 = (v20 << 7) + v18 - 128;
              if (v20 < 0)
              {
                v71 = google::protobuf::internal::VarintParseSlow64(v7, v18);
                v99 = v71;
                *(a1 + 74) = v72 != 0;
                if (!v71)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v19 = (v7 + 2);
LABEL_27:
                v99 = v19;
                *(a1 + 74) = v18 != 0;
              }

              goto LABEL_114;
            case 0xDu:
              if (v8 != 104)
              {
                goto LABEL_106;
              }

              v5 |= 0x2000u;
              v25 = (v7 + 1);
              v24 = *v7;
              if ((v24 & 0x8000000000000000) == 0)
              {
                goto LABEL_37;
              }

              v26 = *v25;
              v24 = (v26 << 7) + v24 - 128;
              if (v26 < 0)
              {
                v75 = google::protobuf::internal::VarintParseSlow64(v7, v24);
                v99 = v75;
                *(a1 + 75) = v76 != 0;
                if (!v75)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v25 = (v7 + 2);
LABEL_37:
                v99 = v25;
                *(a1 + 75) = v24 != 0;
              }

              goto LABEL_114;
            case 0xEu:
              if (v8 != 112)
              {
                goto LABEL_106;
              }

              v5 |= 0x4000u;
              v57 = (v7 + 1);
              v56 = *v7;
              if ((v56 & 0x8000000000000000) == 0)
              {
                goto LABEL_90;
              }

              v58 = *v57;
              v56 = (v58 << 7) + v56 - 128;
              if (v58 < 0)
              {
                v91 = google::protobuf::internal::VarintParseSlow64(v7, v56);
                v99 = v91;
                *(a1 + 76) = v92 != 0;
                if (!v91)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v57 = (v7 + 2);
LABEL_90:
                v99 = v57;
                *(a1 + 76) = v56 != 0;
              }

              goto LABEL_114;
            case 0xFu:
              if (v8 != 122)
              {
                goto LABEL_106;
              }

              *(a1 + 16) |= 1u;
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v12 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_113;
            case 0x10u:
              if (v8 != 128)
              {
                goto LABEL_106;
              }

              v5 |= 0x8000u;
              v34 = (v7 + 1);
              v33 = *v7;
              if ((v33 & 0x8000000000000000) == 0)
              {
                goto LABEL_52;
              }

              v35 = *v34;
              v33 = (v35 << 7) + v33 - 128;
              if (v35 < 0)
              {
                v81 = google::protobuf::internal::VarintParseSlow64(v7, v33);
                v99 = v81;
                *(a1 + 77) = v82 != 0;
                if (!v81)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v34 = (v7 + 2);
LABEL_52:
                v99 = v34;
                *(a1 + 77) = v33 != 0;
              }

              goto LABEL_114;
            case 0x11u:
              if (v8 != 136)
              {
                goto LABEL_106;
              }

              v5 |= 0x10000u;
              v16 = (v7 + 1);
              v15 = *v7;
              if ((v15 & 0x8000000000000000) == 0)
              {
                goto LABEL_20;
              }

              v17 = *v16;
              v15 = (v17 << 7) + v15 - 128;
              if (v17 < 0)
              {
                v69 = google::protobuf::internal::VarintParseSlow64(v7, v15);
                v99 = v69;
                *(a1 + 78) = v70 != 0;
                if (!v69)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                v16 = (v7 + 2);
LABEL_20:
                v99 = v16;
                *(a1 + 78) = v15 != 0;
              }

              goto LABEL_114;
            case 0x12u:
              if (v8 != 146)
              {
                goto LABEL_106;
              }

              v45 = (v7 - 2);
              break;
            default:
LABEL_106:
              if (v8)
              {
                v68 = (v8 & 7) == 4;
              }

              else
              {
                v68 = 1;
              }

              if (v68)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_221567188((a1 + 8));
              }

              v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_113:
              v99 = v12;
              if (!v12)
              {
LABEL_147:
                v99 = 0;
                goto LABEL_2;
              }

LABEL_114:
              if (sub_221567030(a3, &v99))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v46 = (v45 + 2);
            v99 = (v45 + 2);
            v47 = *(a1 + 40);
            if (!v47)
            {
              goto LABEL_71;
            }

            v52 = *(a1 + 32);
            v48 = *v47;
            if (v52 < *v47)
            {
              *(a1 + 32) = v52 + 1;
              v49 = *&v47[2 * v52 + 2];
              goto LABEL_75;
            }

            if (v48 == *(a1 + 36))
            {
LABEL_71:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v47 = *(a1 + 40);
              v48 = *v47;
            }

            *v47 = v48 + 1;
            v49 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WarningArchive>(*(a1 + 24));
            v50 = *(a1 + 32);
            v51 = *(a1 + 40) + 8 * v50;
            *(a1 + 32) = v50 + 1;
            *(v51 + 8) = v49;
            v46 = v99;
LABEL_75:
            v45 = sub_2216FA01C(a3, v49, v46);
            v99 = v45;
            if (!v45)
            {
              goto LABEL_147;
            }

            if (*a3 <= v45 || *v45 != 402)
            {
              goto LABEL_114;
            }
          }
        }

        v7 = (v99 + 2);
      }

      break;
    }

    v99 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v99;
}

unsigned __int8 *TST::ImportWarningSetArchive::_InternalSerialize(TST::ImportWarningSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 7);
    *v4 = 10;
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

    v4 = TST::ImportWarningSetArchive_FormulaImportWarning::_InternalSerialize(v7, v9, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
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

  v13 = *(this + 64);
  *v4 = 16;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_32:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(this + 65);
  *v4 = 24;
  v4[1] = v14;
  v4 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(this + 66);
  *v4 = 32;
  v4[1] = v15;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v16 = *(this + 67);
  *v4 = 40;
  v4[1] = v16;
  v4 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(this + 68);
  *v4 = 48;
  v4[1] = v17;
  v4 += 2;
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v18 = *(this + 69);
  *v4 = 56;
  v4[1] = v18;
  v4 += 2;
  if ((v6 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_47:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 70);
  *v4 = 64;
  v4[1] = v19;
  v4 += 2;
  if ((v6 & 0x200) == 0)
  {
LABEL_10:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_53;
  }

LABEL_50:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v20 = *(this + 71);
  *v4 = 72;
  v4[1] = v20;
  v4 += 2;
  if ((v6 & 0x400) == 0)
  {
LABEL_11:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_53:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 72);
  *v4 = 80;
  v4[1] = v21;
  v4 += 2;
  if ((v6 & 0x800) == 0)
  {
LABEL_12:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_59;
  }

LABEL_56:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v22 = *(this + 73);
  *v4 = 88;
  v4[1] = v22;
  v4 += 2;
  if ((v6 & 0x1000) == 0)
  {
LABEL_13:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_62;
  }

LABEL_59:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 74);
  *v4 = 96;
  v4[1] = v23;
  v4 += 2;
  if ((v6 & 0x2000) == 0)
  {
LABEL_14:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_65;
  }

LABEL_62:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v24 = *(this + 75);
  *v4 = 104;
  v4[1] = v24;
  v4 += 2;
  if ((v6 & 0x4000) == 0)
  {
LABEL_15:
    if ((v6 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_68;
  }

LABEL_65:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 76);
  *v4 = 112;
  v4[1] = v25;
  v4 += 2;
  if ((v6 & 1) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_69;
  }

LABEL_68:
  v4 = sub_22150C00C(a3, 15, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_72;
  }

LABEL_69:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(this + 77);
  *v4 = 384;
  v4[2] = v26;
  v4 += 3;
  if ((v6 & 0x10000) != 0)
  {
LABEL_72:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v27 = *(this + 78);
    *v4 = 392;
    v4[2] = v27;
    v4 += 3;
  }

LABEL_75:
  v28 = *(this + 8);
  if (v28)
  {
    for (i = 0; i != v28; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v30 = *(*(this + 5) + 8 * i + 8);
      *v4 = 402;
      v31 = *(v30 + 5);
      if (v31 > 0x7F)
      {
        v4[2] = v31 | 0x80;
        v33 = v31 >> 7;
        if (v31 >> 14)
        {
          v32 = v4 + 4;
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
          v4[3] = v33;
          v32 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v31;
        v32 = v4 + 3;
      }

      v4 = TSCE::WarningArchive::_InternalSerialize(v30, v32, a3);
    }
  }

  v36 = *(this + 1);
  if ((v36 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v36 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::ImportWarningSetArchive::ByteSizeLong(TST::ImportWarningSetArchive *this)
{
  v2 = *(this + 8);
  v3 = 2 * v2;
  v4 = *(this + 5);
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
      v8 = TSCE::WarningArchive::ByteSizeLong(v7);
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      v6 -= 8;
    }

    while (v6);
  }

  v9 = *(this + 4);
  v10 = vdupq_n_s32(v9);
  if (v9)
  {
    if (v9)
    {
      v11 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v9 & 2) != 0)
    {
      v21 = v10;
      v14 = TST::ImportWarningSetArchive_FormulaImportWarning::ByteSizeLong(*(this + 7));
      v10 = v21;
      v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v15.i64[0] = 0x200000002;
    v15.i64[1] = 0x200000002;
    v3 += vaddvq_s32(vandq_s8(vshlq_u32(v10, xmmword_2217F5630), v15)) + ((v9 >> 5) & 2) + ((v9 >> 6) & 2);
  }

  if ((v9 & 0xFF00) != 0)
  {
    v16.i64[0] = 0x200000002;
    v16.i64[1] = 0x200000002;
    v17 = (v9 >> 13) & 2;
    v18 = vaddvq_s32(vandq_s8(vshlq_u32(v10, xmmword_2217F5640), v16));
    if ((v9 & 0x8000) != 0)
    {
      v3 += v18 + ((v9 >> 11) & 2) + ((v9 >> 12) & 2) + v17 + 3;
    }

    else
    {
      v3 += v18 + ((v9 >> 11) & 2) + ((v9 >> 12) & 2) + v17;
    }
  }

  if ((v9 & 0x10000) != 0)
  {
    v19 = v3 + 3;
  }

  else
  {
    v19 = v3;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v19, this + 20);
  }

  else
  {
    *(this + 5) = v19;
    return v19;
  }
}

uint64_t TST::ImportWarningSetArchive::MergeFrom(TST::ImportWarningSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ImportWarningSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ImportWarningSetArchive::MergeFrom(uint64_t this, const TST::ImportWarningSetArchive *a2)
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
    this = sub_221569A14(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
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
    v12 = *(v3 + 56);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TST::ImportWarningSetArchive_FormulaImportWarning>(v13);
      *(v3 + 56) = v12;
    }

    if (*(a2 + 7))
    {
      v14 = *(a2 + 7);
    }

    else
    {
      v14 = &TST::_ImportWarningSetArchive_FormulaImportWarning_default_instance_;
    }

    this = TST::ImportWarningSetArchive_FormulaImportWarning::MergeFrom(v12, v14);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(v3 + 64) = *(a2 + 64);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(v3 + 65) = *(a2 + 65);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(v3 + 66) = *(a2 + 66);
    if ((v10 & 0x20) == 0)
    {
LABEL_13:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(v3 + 67) = *(a2 + 67);
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
      *(v3 + 69) = *(a2 + 69);
      goto LABEL_16;
    }

LABEL_44:
    *(v3 + 68) = *(a2 + 68);
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if ((v10 & 0xFF00) == 0)
  {
    goto LABEL_28;
  }

  if ((v10 & 0x100) != 0)
  {
    *(v3 + 70) = *(a2 + 70);
    if ((v10 & 0x200) == 0)
    {
LABEL_20:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_48;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  *(v3 + 71) = *(a2 + 71);
  if ((v10 & 0x400) == 0)
  {
LABEL_21:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v3 + 72) = *(a2 + 72);
  if ((v10 & 0x800) == 0)
  {
LABEL_22:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v3 + 73) = *(a2 + 73);
  if ((v10 & 0x1000) == 0)
  {
LABEL_23:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v3 + 74) = *(a2 + 74);
  if ((v10 & 0x2000) == 0)
  {
LABEL_24:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

LABEL_52:
    *(v3 + 76) = *(a2 + 76);
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_51:
  *(v3 + 75) = *(a2 + 75);
  if ((v10 & 0x4000) != 0)
  {
    goto LABEL_52;
  }

LABEL_25:
  if ((v10 & 0x8000) != 0)
  {
LABEL_26:
    *(v3 + 77) = *(a2 + 77);
  }

LABEL_27:
  *(v3 + 16) |= v10;
LABEL_28:
  if ((v10 & 0x10000) != 0)
  {
    v11 = *(a2 + 78);
    *(v3 + 16) |= 0x10000u;
    *(v3 + 78) = v11;
  }

  return this;
}

uint64_t *TST::ImportWarningSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ImportWarningSetArchive::Clear(this);

    return TST::ImportWarningSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::ImportWarningSetArchive::CopyFrom(uint64_t *this, const TST::ImportWarningSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ImportWarningSetArchive::Clear(this);

    return TST::ImportWarningSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::ImportWarningSetArchive::IsInitialized(TST::ImportWarningSetArchive *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSCE::WarningArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if (!IsInitialized)
    {
      return 0;
    }
  }

  return (*(this + 16) & 2) == 0 || (*(*(this + 7) + 16) & 8) != 0;
}

__n128 TST::ImportWarningSetArchive::InternalSwap(TST::ImportWarningSetArchive *this, TST::ImportWarningSetArchive *a2)
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
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 7);
  v9 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v8;
  *(a2 + 8) = v9;
  LODWORD(v8) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v8;
  LOWORD(v8) = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v8;
  LOBYTE(v8) = *(this + 78);
  *(this + 78) = *(a2 + 78);
  *(a2 + 78) = v8;
  return result;
}

uint64_t *TST::CellRefImportWarningSetPairArchive::clear_cell_ref(TST::CellRefImportWarningSetPairArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSCE::CellReferenceArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::CellRefImportWarningSetPairArchive *TST::CellRefImportWarningSetPairArchive::CellRefImportWarningSetPairArchive(TST::CellRefImportWarningSetPairArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B2BB8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellRefImportWarningSetPairArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834B2BB8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellRefImportWarningSetPairArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TST::CellRefImportWarningSetPairArchive *TST::CellRefImportWarningSetPairArchive::CellRefImportWarningSetPairArchive(TST::CellRefImportWarningSetPairArchive *this, const TST::CellRefImportWarningSetPairArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B2BB8;
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

void TST::CellRefImportWarningSetPairArchive::~CellRefImportWarningSetPairArchive(TST::CellRefImportWarningSetPairArchive *this)
{
  if (this != TST::_CellRefImportWarningSetPairArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::CellReferenceArchive::~CellReferenceArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TST::ImportWarningSetArchive::~ImportWarningSetArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::CellRefImportWarningSetPairArchive::~CellRefImportWarningSetPairArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::CellRefImportWarningSetPairArchive::default_instance(TST::CellRefImportWarningSetPairArchive *this)
{
  if (atomic_load_explicit(scc_info_CellRefImportWarningSetPairArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_CellRefImportWarningSetPairArchive_default_instance_;
}

uint64_t *TST::CellRefImportWarningSetPairArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSCE::CellReferenceArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TST::ImportWarningSetArchive::Clear(*(v1 + 32));
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

google::protobuf::internal *TST::CellRefImportWarningSetPairArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  while ((sub_221567030(a3, &v18) & 1) == 0)
  {
    v5 = (v18 + 1);
    v6 = *v18;
    if ((*v18 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v18 + 2);
LABEL_6:
      v18 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v7 - 128));
    v18 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v16;
LABEL_7:
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TST::ImportWarningSetArchive>(v12);
        *(a1 + 32) = v11;
        v5 = v18;
      }

      v10 = sub_221701EB8(a3, v11, v5);
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
          return v18;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v13 = *(a1 + 24);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v14);
        *(a1 + 24) = v13;
        v5 = v18;
      }

      v10 = sub_2216F8E3C(a3, v13, v5);
    }

LABEL_30:
    v18 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v18;
}

unsigned __int8 *TST::CellRefImportWarningSetPairArchive::_InternalSerialize(TST::CellRefImportWarningSetPairArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::CellReferenceArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 4);
    *a2 = 26;
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

    a2 = TST::ImportWarningSetArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::CellRefImportWarningSetPairArchive::ByteSizeLong(TST::CellRefImportWarningSetPairArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCE::CellReferenceArchive::ByteSizeLong(*(this + 3));
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
    v5 = TST::ImportWarningSetArchive::ByteSizeLong(*(this + 4));
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

uint64_t TST::CellRefImportWarningSetPairArchive::MergeFrom(TST::CellRefImportWarningSetPairArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellRefImportWarningSetPairArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellRefImportWarningSetPairArchive::MergeFrom(uint64_t this, const TST::CellRefImportWarningSetPairArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TSCE::_CellReferenceArchive_default_instance_;
      }

      this = TSCE::CellReferenceArchive::MergeFrom(v6, v8);
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TST::ImportWarningSetArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TST::_ImportWarningSetArchive_default_instance_;
      }

      return TST::ImportWarningSetArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TST::CellRefImportWarningSetPairArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellRefImportWarningSetPairArchive::Clear(this);

    return TST::CellRefImportWarningSetPairArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CellRefImportWarningSetPairArchive::CopyFrom(uint64_t *this, const TST::CellRefImportWarningSetPairArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellRefImportWarningSetPairArchive::Clear(this);

    return TST::CellRefImportWarningSetPairArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::CellRefImportWarningSetPairArchive::IsInitialized(TST::CellRefImportWarningSetPairArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSCE::CellReferenceArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TST::ImportWarningSetArchive::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::CellRefImportWarningSetPairArchive::InternalSwap(TST::CellRefImportWarningSetPairArchive *this, TST::CellRefImportWarningSetPairArchive *a2)
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

TST::ImportWarningSetByCellRefArchive *TST::ImportWarningSetByCellRefArchive::ImportWarningSetByCellRefArchive(TST::ImportWarningSetByCellRefArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B2C68;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_ImportWarningSetByCellRefArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TST::ImportWarningSetByCellRefArchive *TST::ImportWarningSetByCellRefArchive::ImportWarningSetByCellRefArchive(TST::ImportWarningSetByCellRefArchive *this, const TST::ImportWarningSetByCellRefArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834B2C68;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22167DCD0(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TST::ImportWarningSetByCellRefArchive::~ImportWarningSetByCellRefArchive(TST::ImportWarningSetByCellRefArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167DC4C(this + 2);
}

{
  TST::ImportWarningSetByCellRefArchive::~ImportWarningSetByCellRefArchive(this);

  JUMPOUT(0x223DA1450);
}