uint64_t TSCE::CellErrorsArchive::ByteSizeLong(TSCE::CellErrorsArchive *this)
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
      v7 = TSCE::CellErrorsArchive_ErrorForCell::ByteSizeLong(v6);
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
      v14 = TSCE::CellErrorsArchive_EnhancedErrorForCell::ByteSizeLong(v13);
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

uint64_t TSCE::CellErrorsArchive::MergeFrom(TSCE::CellErrorsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellErrorsArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellErrorsArchive::MergeFrom(uint64_t this, const TSCE::CellErrorsArchive *a2)
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
    this = sub_221569BDC(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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
    this = sub_221569C9C(v3 + 40, v12, (v11 + 8), v10, **(v3 + 56) - *(v3 + 48));
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

uint64_t *TSCE::CellErrorsArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellErrorsArchive::Clear(this);

    return TSCE::CellErrorsArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellErrorsArchive::CopyFrom(uint64_t *this, const TSCE::CellErrorsArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellErrorsArchive::Clear(this);

    return TSCE::CellErrorsArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::CellErrorsArchive::IsInitialized(TSCE::CellErrorsArchive *this)
{
  if (!sub_221510E0C(this + 16))
  {
    return 0;
  }

  v2 = *(this + 12);
  v3 = *(this + 7);
  do
  {
    v4 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v5 = v2 - 1;
    IsInitialized = TSCE::CellErrorsArchive_EnhancedErrorForCell::IsInitialized(*(v3 + 8 * v2));
    v2 = v5;
  }

  while (IsInitialized);
  return v4;
}

uint64_t sub_221510E0C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; ; i -= 8)
  {
    v4 = *(*i + 16);
    if ((~v4 & 5) != 0 || (v4 & 2) != 0 && (~*(*(*i + 32) + 16) & 3) != 0)
    {
      break;
    }

    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

__n128 TSCE::CellErrorsArchive::InternalSwap(TSCE::CellErrorsArchive *this, TSCE::CellErrorsArchive *a2)
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

TSCE::CellSpillSizesArchive_SpillForCell *TSCE::CellSpillSizesArchive_SpillForCell::CellSpillSizesArchive_SpillForCell(TSCE::CellSpillSizesArchive_SpillForCell *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ACC00;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellSpillSizesArchive_SpillForCell_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834ACC00;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellSpillSizesArchive_SpillForCell_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCE::CellSpillSizesArchive_SpillForCell *TSCE::CellSpillSizesArchive_SpillForCell::CellSpillSizesArchive_SpillForCell(TSCE::CellSpillSizesArchive_SpillForCell *this, const TSCE::CellSpillSizesArchive_SpillForCell *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ACC00;
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

void TSCE::CellSpillSizesArchive_SpillForCell::~CellSpillSizesArchive_SpillForCell(TSCE::CellSpillSizesArchive_SpillForCell *this)
{
  if (this != TSCE::_CellSpillSizesArchive_SpillForCell_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_2214DFCF8((v2 + 8));
      MEMORY[0x223DA1450](v2, 0x1081C40B7564605);
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
  TSCE::CellSpillSizesArchive_SpillForCell::~CellSpillSizesArchive_SpillForCell(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::CellSpillSizesArchive_SpillForCell::default_instance(TSCE::CellSpillSizesArchive_SpillForCell *this)
{
  if (atomic_load_explicit(scc_info_CellSpillSizesArchive_SpillForCell_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_CellSpillSizesArchive_SpillForCell_default_instance_;
}

uint64_t *TSCE::CellSpillSizesArchive_SpillForCell::Clear(uint64_t *this)
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
      this = TSCE::ColumnRowSize::Clear(*(v1 + 32));
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

google::protobuf::internal *TSCE::CellSpillSizesArchive_SpillForCell::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ColumnRowSize>(v12);
        *(a1 + 32) = v11;
        v5 = v18;
      }

      v10 = sub_2216F86EC(a3, v11, v5);
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

unsigned __int8 *TSCE::CellSpillSizesArchive_SpillForCell::_InternalSerialize(TSCE::CellSpillSizesArchive_SpillForCell *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::ColumnRowSize::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CellSpillSizesArchive_SpillForCell::RequiredFieldsByteSizeFallback(TSCE::CellSpillSizesArchive_SpillForCell *this)
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
    v5 = TSCE::ColumnRowSize::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSCE::CellSpillSizesArchive_SpillForCell::ByteSizeLong(TSCE::CellCoordinateArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSCE::CellSpillSizesArchive_SpillForCell::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::CellCoordinateArchive::ByteSizeLong(this[3]);
    v3 = TSCE::ColumnRowSize::ByteSizeLong(this[4]);
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

uint64_t TSCE::CellSpillSizesArchive_SpillForCell::MergeFrom(TSCE::CellSpillSizesArchive_SpillForCell *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellSpillSizesArchive_SpillForCell::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellSpillSizesArchive_SpillForCell::MergeFrom(uint64_t this, const TSCE::CellSpillSizesArchive_SpillForCell *a2)
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ColumnRowSize>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSCE::_ColumnRowSize_default_instance_;
      }

      return TSCE::ColumnRowSize::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSCE::CellSpillSizesArchive_SpillForCell::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellSpillSizesArchive_SpillForCell::Clear(this);

    return TSCE::CellSpillSizesArchive_SpillForCell::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellSpillSizesArchive_SpillForCell::CopyFrom(uint64_t *this, const TSCE::CellSpillSizesArchive_SpillForCell *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellSpillSizesArchive_SpillForCell::Clear(this);

    return TSCE::CellSpillSizesArchive_SpillForCell::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::CellSpillSizesArchive_SpillForCell::InternalSwap(TSCE::CellSpillSizesArchive_SpillForCell *this, TSCE::CellSpillSizesArchive_SpillForCell *a2)
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

TSCE::CellSpillSizesArchive *TSCE::CellSpillSizesArchive::CellSpillSizesArchive(TSCE::CellSpillSizesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ACCB0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_CellSpillSizesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::CellSpillSizesArchive *TSCE::CellSpillSizesArchive::CellSpillSizesArchive(TSCE::CellSpillSizesArchive *this, const TSCE::CellSpillSizesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834ACCB0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_221569DE0(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::CellSpillSizesArchive::~CellSpillSizesArchive(TSCE::CellSpillSizesArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221569D5C(this + 2);
}

{
  TSCE::CellSpillSizesArchive::~CellSpillSizesArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::CellSpillSizesArchive::default_instance(TSCE::CellSpillSizesArchive *this)
{
  if (atomic_load_explicit(scc_info_CellSpillSizesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CellSpillSizesArchive_default_instance_;
}

uint64_t *TSCE::CellSpillSizesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellSpillSizesArchive_SpillForCell::Clear(v4);
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

google::protobuf::internal *TSCE::CellSpillSizesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellSpillSizesArchive_SpillForCell>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216FA28C(a3, v13, v10);
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

unsigned __int8 *TSCE::CellSpillSizesArchive::_InternalSerialize(TSCE::CellSpillSizesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::CellSpillSizesArchive_SpillForCell::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CellSpillSizesArchive::ByteSizeLong(TSCE::CellSpillSizesArchive *this)
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
      v7 = TSCE::CellSpillSizesArchive_SpillForCell::ByteSizeLong(v6);
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

uint64_t TSCE::CellSpillSizesArchive::MergeFrom(TSCE::CellSpillSizesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellSpillSizesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellSpillSizesArchive::MergeFrom(uint64_t this, const TSCE::CellSpillSizesArchive *a2)
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
    this = sub_221569DE0(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::CellSpillSizesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellSpillSizesArchive::Clear(this);

    return TSCE::CellSpillSizesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellSpillSizesArchive::CopyFrom(uint64_t *this, const TSCE::CellSpillSizesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellSpillSizesArchive::Clear(this);

    return TSCE::CellSpillSizesArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::CellSpillSizesArchive::IsInitialized(TSCE::CellSpillSizesArchive *this)
{
  v1 = *(this + 6);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(this + 4) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

__n128 TSCE::CellSpillSizesArchive::InternalSwap(TSCE::CellSpillSizesArchive *this, TSCE::CellSpillSizesArchive *a2)
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

TSP::UUID *TSCE::UuidReferencesArchive_TableRef::clear_owner_uuid(TSCE::UuidReferencesArchive_TableRef *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::UuidReferencesArchive_TableRef *TSCE::UuidReferencesArchive_TableRef::UuidReferencesArchive_TableRef(TSCE::UuidReferencesArchive_TableRef *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ACD60;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UuidReferencesArchive_TableRef_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834ACD60;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UuidReferencesArchive_TableRef_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCE::UuidReferencesArchive_TableRef *TSCE::UuidReferencesArchive_TableRef::UuidReferencesArchive_TableRef(TSCE::UuidReferencesArchive_TableRef *this, const TSCE::UuidReferencesArchive_TableRef *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ACD60;
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

void TSCE::UuidReferencesArchive_TableRef::~UuidReferencesArchive_TableRef(TSCE::UuidReferencesArchive_TableRef *this)
{
  if (this != TSCE::_UuidReferencesArchive_TableRef_default_instance_)
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
      TSCE::CellCoordSetArchive::~CellCoordSetArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::UuidReferencesArchive_TableRef::~UuidReferencesArchive_TableRef(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::UuidReferencesArchive_TableRef::default_instance(TSCE::UuidReferencesArchive_TableRef *this)
{
  if (atomic_load_explicit(scc_info_UuidReferencesArchive_TableRef_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_UuidReferencesArchive_TableRef_default_instance_;
}

uint64_t *TSCE::UuidReferencesArchive_TableRef::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::UUID::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSCE::CellCoordSetArchive::Clear(*(v1 + 32));
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

google::protobuf::internal *TSCE::UuidReferencesArchive_TableRef::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v12);
        *(a1 + 32) = v11;
        v5 = v19;
      }

      v10 = sub_2216F854C(a3, v11, v5);
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
      v13 = *(a1 + 24);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x223DA0360](v14);
        LODWORD(v13) = v15;
        *(a1 + 24) = v15;
        v5 = v19;
      }

      v10 = sub_2216F813C(a3, v13, v5);
    }

LABEL_30:
    v19 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v19;
}

unsigned __int8 *TSCE::UuidReferencesArchive_TableRef::_InternalSerialize(TSCE::UuidReferencesArchive_TableRef *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    *a2 = 18;
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

    a2 = TSCE::CellCoordSetArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::UuidReferencesArchive_TableRef::ByteSizeLong(TSCE::UuidReferencesArchive_TableRef *this)
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
    v5 = TSCE::CellCoordSetArchive::ByteSizeLong(*(this + 4));
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

uint64_t TSCE::UuidReferencesArchive_TableRef::MergeFrom(TSCE::UuidReferencesArchive_TableRef *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::UuidReferencesArchive_TableRef::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::UuidReferencesArchive_TableRef::MergeFrom(uint64_t this, const TSCE::UuidReferencesArchive_TableRef *a2)
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSCE::_CellCoordSetArchive_default_instance_;
      }

      return TSCE::CellCoordSetArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSCE::UuidReferencesArchive_TableRef::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UuidReferencesArchive_TableRef::Clear(this);

    return TSCE::UuidReferencesArchive_TableRef::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::UuidReferencesArchive_TableRef::CopyFrom(uint64_t *this, const TSCE::UuidReferencesArchive_TableRef *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UuidReferencesArchive_TableRef::Clear(this);

    return TSCE::UuidReferencesArchive_TableRef::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::UuidReferencesArchive_TableRef::IsInitialized(TSCE::UuidReferencesArchive_TableRef *this)
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

    result = sub_2214E5E48(*(this + 4) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCE::UuidReferencesArchive_TableRef::InternalSwap(TSCE::UuidReferencesArchive_TableRef *this, TSCE::UuidReferencesArchive_TableRef *a2)
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

TSP::UUID *TSCE::UuidReferencesArchive_UuidRef::clear_uuid(TSCE::UuidReferencesArchive_UuidRef *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::UuidReferencesArchive_UuidRef *TSCE::UuidReferencesArchive_UuidRef::UuidReferencesArchive_UuidRef(TSCE::UuidReferencesArchive_UuidRef *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ACE10;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UuidReferencesArchive_UuidRef_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834ACE10;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UuidReferencesArchive_UuidRef_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCE::UuidReferencesArchive_UuidRef *TSCE::UuidReferencesArchive_UuidRef::UuidReferencesArchive_UuidRef(TSCE::UuidReferencesArchive_UuidRef *this, const TSCE::UuidReferencesArchive_UuidRef *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ACE10;
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

void TSCE::UuidReferencesArchive_UuidRef::~UuidReferencesArchive_UuidRef(TSCE::UuidReferencesArchive_UuidRef *this)
{
  if (this != TSCE::_UuidReferencesArchive_UuidRef_default_instance_)
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
      TSCE::CellCoordSetArchive::~CellCoordSetArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::UuidReferencesArchive_UuidRef::~UuidReferencesArchive_UuidRef(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::UuidReferencesArchive_UuidRef::default_instance(TSCE::UuidReferencesArchive_UuidRef *this)
{
  if (atomic_load_explicit(scc_info_UuidReferencesArchive_UuidRef_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_UuidReferencesArchive_UuidRef_default_instance_;
}

uint64_t *TSCE::UuidReferencesArchive_UuidRef::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::UUID::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSCE::CellCoordSetArchive::Clear(*(v1 + 32));
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

google::protobuf::internal *TSCE::UuidReferencesArchive_UuidRef::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v12);
        *(a1 + 32) = v11;
        v5 = v19;
      }

      v10 = sub_2216F854C(a3, v11, v5);
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
      v13 = *(a1 + 24);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x223DA0360](v14);
        LODWORD(v13) = v15;
        *(a1 + 24) = v15;
        v5 = v19;
      }

      v10 = sub_2216F813C(a3, v13, v5);
    }

LABEL_30:
    v19 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v19;
}

unsigned __int8 *TSCE::UuidReferencesArchive_UuidRef::_InternalSerialize(TSCE::UuidReferencesArchive_UuidRef *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    *a2 = 18;
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

    a2 = TSCE::CellCoordSetArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::UuidReferencesArchive_UuidRef::ByteSizeLong(TSCE::UuidReferencesArchive_UuidRef *this)
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
    v5 = TSCE::CellCoordSetArchive::ByteSizeLong(*(this + 4));
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

uint64_t TSCE::UuidReferencesArchive_UuidRef::MergeFrom(TSCE::UuidReferencesArchive_UuidRef *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::UuidReferencesArchive_UuidRef::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::UuidReferencesArchive_UuidRef::MergeFrom(uint64_t this, const TSCE::UuidReferencesArchive_UuidRef *a2)
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSCE::_CellCoordSetArchive_default_instance_;
      }

      return TSCE::CellCoordSetArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSCE::UuidReferencesArchive_UuidRef::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UuidReferencesArchive_UuidRef::Clear(this);

    return TSCE::UuidReferencesArchive_UuidRef::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::UuidReferencesArchive_UuidRef::CopyFrom(uint64_t *this, const TSCE::UuidReferencesArchive_UuidRef *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UuidReferencesArchive_UuidRef::Clear(this);

    return TSCE::UuidReferencesArchive_UuidRef::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::UuidReferencesArchive_UuidRef::IsInitialized(TSCE::UuidReferencesArchive_UuidRef *this)
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

    result = sub_2214E5E48(*(this + 4) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCE::UuidReferencesArchive_UuidRef::InternalSwap(TSCE::UuidReferencesArchive_UuidRef *this, TSCE::UuidReferencesArchive_UuidRef *a2)
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

TSP::UUID *TSCE::UuidReferencesArchive_TableWithUuidRef::clear_owner_uuid(TSCE::UuidReferencesArchive_TableWithUuidRef *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::UuidReferencesArchive_TableWithUuidRef *TSCE::UuidReferencesArchive_TableWithUuidRef::UuidReferencesArchive_TableWithUuidRef(TSCE::UuidReferencesArchive_TableWithUuidRef *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ACEC0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_UuidReferencesArchive_TableWithUuidRef_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCE::UuidReferencesArchive_TableWithUuidRef *TSCE::UuidReferencesArchive_TableWithUuidRef::UuidReferencesArchive_TableWithUuidRef(TSCE::UuidReferencesArchive_TableWithUuidRef *this, const TSCE::UuidReferencesArchive_TableWithUuidRef *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ACEC0;
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
    sub_221569F24(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void sub_221513A78(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C40825B58B5);
  sub_221569EA0((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::UuidReferencesArchive_TableWithUuidRef::~UuidReferencesArchive_TableWithUuidRef(TSCE::UuidReferencesArchive_TableWithUuidRef *this)
{
  if (this != &TSCE::_UuidReferencesArchive_TableWithUuidRef_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_221569EA0(this + 3);
}

{
  TSCE::UuidReferencesArchive_TableWithUuidRef::~UuidReferencesArchive_TableWithUuidRef(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::UuidReferencesArchive_TableWithUuidRef::default_instance(TSCE::UuidReferencesArchive_TableWithUuidRef *this)
{
  if (atomic_load_explicit(scc_info_UuidReferencesArchive_TableWithUuidRef_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_UuidReferencesArchive_TableWithUuidRef_default_instance_;
}

uint64_t *TSCE::UuidReferencesArchive_TableWithUuidRef::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::UuidReferencesArchive_UuidRef::Clear(v4);
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

google::protobuf::internal *TSCE::UuidReferencesArchive_TableWithUuidRef::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferencesArchive_UuidRef>(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v25;
LABEL_26:
        v11 = sub_2216FA35C(a3, v15, v12);
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

unsigned __int8 *TSCE::UuidReferencesArchive_TableWithUuidRef::_InternalSerialize(TSCE::UuidReferencesArchive_TableWithUuidRef *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::UuidReferencesArchive_UuidRef::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::UuidReferencesArchive_TableWithUuidRef::ByteSizeLong(TSP::UUID **this)
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
      v10 = TSCE::UuidReferencesArchive_UuidRef::ByteSizeLong(v9);
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

uint64_t TSCE::UuidReferencesArchive_TableWithUuidRef::MergeFrom(TSCE::UuidReferencesArchive_TableWithUuidRef *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::UuidReferencesArchive_TableWithUuidRef::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::UuidReferencesArchive_TableWithUuidRef::MergeFrom(uint64_t this, const TSCE::UuidReferencesArchive_TableWithUuidRef *a2)
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
    this = sub_221569F24(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

uint64_t *TSCE::UuidReferencesArchive_TableWithUuidRef::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UuidReferencesArchive_TableWithUuidRef::Clear(this);

    return TSCE::UuidReferencesArchive_TableWithUuidRef::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::UuidReferencesArchive_TableWithUuidRef::CopyFrom(uint64_t *this, const TSCE::UuidReferencesArchive_TableWithUuidRef *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UuidReferencesArchive_TableWithUuidRef::Clear(this);

    return TSCE::UuidReferencesArchive_TableWithUuidRef::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::UuidReferencesArchive_TableWithUuidRef::IsInitialized(TSCE::UuidReferencesArchive_TableWithUuidRef *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSCE::UuidReferencesArchive_UuidRef::IsInitialized(*(*(this + 5) + 8 * v3));
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

__n128 TSCE::UuidReferencesArchive_TableWithUuidRef::InternalSwap(__n128 *this, __n128 *a2)
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

TSCE::UuidReferencesArchive *TSCE::UuidReferencesArchive::UuidReferencesArchive(TSCE::UuidReferencesArchive *this, google::protobuf::Arena *a2)
{
  *(this + 2) = a2;
  *this = &unk_2834ACF70;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  if (atomic_load_explicit(scc_info_UuidReferencesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_2215144EC(_Unwind_Exception *a1)
{
  sub_22156A068(v2);
  sub_221569FE4(v1);
  _Unwind_Resume(a1);
}

TSCE::UuidReferencesArchive *TSCE::UuidReferencesArchive::UuidReferencesArchive(TSCE::UuidReferencesArchive *this, const TSCE::UuidReferencesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834ACF70;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22156A0EC(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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
    sub_22156A1AC(this + 40, v13, (v12 + 8), v11, **(this + 7) - *(this + 12));
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

void sub_221514664(_Unwind_Exception *a1)
{
  sub_22156A068(v2);
  sub_221569FE4(v1);
  _Unwind_Resume(a1);
}

void TSCE::UuidReferencesArchive::~UuidReferencesArchive(TSCE::UuidReferencesArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22156A068(this + 5);
  sub_221569FE4(this + 2);
}

{
  TSCE::UuidReferencesArchive::~UuidReferencesArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::UuidReferencesArchive::default_instance(TSCE::UuidReferencesArchive *this)
{
  if (atomic_load_explicit(scc_info_UuidReferencesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_UuidReferencesArchive_default_instance_;
}

uint64_t *TSCE::UuidReferencesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::UuidReferencesArchive_TableRef::Clear(v4);
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
      this = TSCE::UuidReferencesArchive_TableWithUuidRef::Clear(v7);
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

google::protobuf::internal *TSCE::UuidReferencesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
            v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferencesArchive_TableWithUuidRef>(*(a1 + 40));
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

          v11 = sub_2216FA4FC(a3, v15, v12);
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
          v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferencesArchive_TableRef>(*(a1 + 16));
          v24 = *(a1 + 24);
          v25 = *(a1 + 32) + 8 * v24;
          *(a1 + 24) = v24 + 1;
          *(v25 + 8) = v23;
          v20 = v29;
LABEL_40:
          v19 = sub_2216FA42C(a3, v23, v20);
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

unsigned __int8 *TSCE::UuidReferencesArchive::_InternalSerialize(TSCE::UuidReferencesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::UuidReferencesArchive_TableRef::_InternalSerialize(v7, v9, a3);
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

      a2 = TSCE::UuidReferencesArchive_TableWithUuidRef::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::UuidReferencesArchive::ByteSizeLong(TSCE::UuidReferencesArchive *this)
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
      v7 = TSCE::UuidReferencesArchive_TableRef::ByteSizeLong(v6);
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
      v14 = TSCE::UuidReferencesArchive_TableWithUuidRef::ByteSizeLong(v13);
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

uint64_t TSCE::UuidReferencesArchive::MergeFrom(TSCE::UuidReferencesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::UuidReferencesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::UuidReferencesArchive::MergeFrom(uint64_t this, const TSCE::UuidReferencesArchive *a2)
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
    this = sub_22156A0EC(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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
    this = sub_22156A1AC(v3 + 40, v12, (v11 + 8), v10, **(v3 + 56) - *(v3 + 48));
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

uint64_t *TSCE::UuidReferencesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UuidReferencesArchive::Clear(this);

    return TSCE::UuidReferencesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::UuidReferencesArchive::CopyFrom(uint64_t *this, const TSCE::UuidReferencesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UuidReferencesArchive::Clear(this);

    return TSCE::UuidReferencesArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::UuidReferencesArchive::IsInitialized(TSCE::UuidReferencesArchive *this)
{
  v2 = *(this + 6);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSCE::UuidReferencesArchive_TableRef::IsInitialized(*(*(this + 4) + 8 * v2));
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
    v8 = TSCE::UuidReferencesArchive_TableWithUuidRef::IsInitialized(*(*(this + 7) + 8 * v6));
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  return v5;
}

__n128 TSCE::UuidReferencesArchive::InternalSwap(TSCE::UuidReferencesArchive *this, TSCE::UuidReferencesArchive *a2)
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

TSP::UUID *TSCE::FormulaOwnerDependenciesArchive::clear_formula_owner_uid(TSCE::FormulaOwnerDependenciesArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSCE::FormulaOwnerDependenciesArchive::clear_formula_owner(TSCE::FormulaOwnerDependenciesArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSP::UUID *TSCE::FormulaOwnerDependenciesArchive::clear_base_owner_uid(TSCE::FormulaOwnerDependenciesArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSCE::FormulaOwnerDependenciesArchive *TSCE::FormulaOwnerDependenciesArchive::FormulaOwnerDependenciesArchive(TSCE::FormulaOwnerDependenciesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AD020;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaOwnerDependenciesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 17) = 0;
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
  *this = &unk_2834AD020;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaOwnerDependenciesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 17) = 0;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSCE::FormulaOwnerDependenciesArchive *TSCE::FormulaOwnerDependenciesArchive::FormulaOwnerDependenciesArchive(TSCE::FormulaOwnerDependenciesArchive *this, const TSCE::FormulaOwnerDependenciesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AD020;
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
  *(this + 17) = *(a2 + 17);
  return this;
}

void TSCE::FormulaOwnerDependenciesArchive::~FormulaOwnerDependenciesArchive(TSCE::FormulaOwnerDependenciesArchive *this)
{
  sub_22151571C(this);
  sub_2214DFCF8(this + 1);
}

{
  TSCE::FormulaOwnerDependenciesArchive::~FormulaOwnerDependenciesArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_22151571C(uint64_t *result)
{
  if (result != TSCE::_FormulaOwnerDependenciesArchive_default_instance_)
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
      TSCE::CellDependenciesExpandedArchive::~CellDependenciesExpandedArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSCE::RangeDependenciesArchive::~RangeDependenciesArchive(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSCE::VolatileDependenciesExpandedArchive::~VolatileDependenciesExpandedArchive(v5);
      MEMORY[0x223DA1450]();
    }

    v6 = v1[7];
    if (v6)
    {
      TSCE::SpanningDependenciesExpandedArchive::~SpanningDependenciesExpandedArchive(v6);
      MEMORY[0x223DA1450]();
    }

    v7 = v1[8];
    if (v7)
    {
      TSCE::SpanningDependenciesExpandedArchive::~SpanningDependenciesExpandedArchive(v7);
      MEMORY[0x223DA1450]();
    }

    v8 = v1[9];
    if (v8)
    {
      TSCE::WholeOwnerDependenciesExpandedArchive::~WholeOwnerDependenciesExpandedArchive(v8);
      MEMORY[0x223DA1450]();
    }

    v9 = v1[10];
    if (v9)
    {
      TSCE::CellErrorsArchive::~CellErrorsArchive(v9);
      MEMORY[0x223DA1450]();
    }

    v10 = v1[11];
    if (v10)
    {
      TSP::Reference::~Reference(v10);
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
      TSCE::CellDependenciesTiledArchive::~CellDependenciesTiledArchive(v12);
      MEMORY[0x223DA1450]();
    }

    v13 = v1[14];
    if (v13)
    {
      TSCE::UuidReferencesArchive::~UuidReferencesArchive(v13);
      MEMORY[0x223DA1450]();
    }

    v14 = v1[15];
    if (v14)
    {
      TSCE::RangeDependenciesTiledArchive::~RangeDependenciesTiledArchive(v14);
      MEMORY[0x223DA1450]();
    }

    result = v1[16];
    if (result)
    {
      TSCE::CellSpillSizesArchive::~CellSpillSizesArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TSCE::FormulaOwnerDependenciesArchive::default_instance(TSCE::FormulaOwnerDependenciesArchive *this)
{
  if (atomic_load_explicit(scc_info_FormulaOwnerDependenciesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_FormulaOwnerDependenciesArchive_default_instance_;
}

uint64_t *TSCE::FormulaOwnerDependenciesArchive::Clear(uint64_t *this)
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

      goto LABEL_27;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSCE::CellDependenciesExpandedArchive::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = TSCE::RangeDependenciesArchive::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = TSCE::VolatileDependenciesExpandedArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_30:
    this = TSCE::SpanningDependenciesExpandedArchive::Clear(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_29:
  this = TSCE::SpanningDependenciesExpandedArchive::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_31:
  this = TSCE::WholeOwnerDependenciesExpandedArchive::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSCE::CellErrorsArchive::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x3F00) == 0)
  {
    goto LABEL_19;
  }

  if ((v2 & 0x100) != 0)
  {
    this = TSP::Reference::Clear(*(v1 + 88));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_35;
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

    goto LABEL_36;
  }

LABEL_35:
  this = TSCE::CellDependenciesTiledArchive::Clear(*(v1 + 104));
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = TSCE::UuidReferencesArchive::Clear(*(v1 + 112));
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  this = TSCE::RangeDependenciesTiledArchive::Clear(*(v1 + 120));
  if ((v2 & 0x2000) != 0)
  {
LABEL_18:
    this = TSCE::CellSpillSizesArchive::Clear(*(v1 + 128));
  }

LABEL_19:
  if ((v2 & 0xC000) != 0)
  {
    *(v1 + 136) = 0;
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

google::protobuf::internal *TSCE::FormulaOwnerDependenciesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v53 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v53) & 1) == 0)
  {
    while (1)
    {
      v7 = (v53 + 1);
      v8 = *v53;
      if (*v53 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v53, (v9 - 128));
          v53 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_119;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v53 + 2);
      }

      v53 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_104;
          }

          *(a1 + 16) |= 1u;
          v10 = *(a1 + 24);
          if (v10)
          {
            goto LABEL_27;
          }

          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x223DA0360](v11);
          LODWORD(v10) = v12;
          *(a1 + 24) = v12;
          goto LABEL_26;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_104;
          }

          v5 |= 0x4000u;
          v35 = (v7 + 1);
          LODWORD(v36) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_72;
          }

          v37 = *v35;
          v36 = (v36 + (v37 << 7) - 128);
          if (v37 < 0)
          {
            v51 = google::protobuf::internal::VarintParseSlow32(v7, v36);
            v53 = v51;
            *(a1 + 136) = v52;
            if (!v51)
            {
              goto LABEL_119;
            }
          }

          else
          {
            v35 = (v7 + 2);
LABEL_72:
            v53 = v35;
            *(a1 + 136) = v36;
          }

          goto LABEL_112;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_104;
          }

          v5 |= 0x8000u;
          v26 = (v7 + 1);
          LODWORD(v27) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          v28 = *v26;
          v27 = (v27 + (v28 << 7) - 128);
          if (v28 < 0)
          {
            v49 = google::protobuf::internal::VarintParseSlow32(v7, v27);
            v53 = v49;
            *(a1 + 140) = v50;
            if (!v49)
            {
              goto LABEL_119;
            }
          }

          else
          {
            v26 = (v7 + 2);
LABEL_50:
            v53 = v26;
            *(a1 + 140) = v27;
          }

          goto LABEL_112;
        case 4u:
          if (v8 != 34)
          {
            goto LABEL_104;
          }

          *(a1 + 16) |= 2u;
          v31 = *(a1 + 32);
          if (!v31)
          {
            v32 = *(a1 + 8);
            if (v32)
            {
              v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
            }

            v31 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellDependenciesExpandedArchive>(v32);
            *(a1 + 32) = v31;
            v7 = v53;
          }

          v17 = sub_2216FA5CC(a3, v31, v7);
          goto LABEL_111;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_104;
          }

          *(a1 + 16) |= 4u;
          v20 = *(a1 + 40);
          if (!v20)
          {
            v21 = *(a1 + 8);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeDependenciesArchive>(v21);
            *(a1 + 40) = v20;
            v7 = v53;
          }

          v17 = sub_2216FA69C(a3, v20, v7);
          goto LABEL_111;
        case 6u:
          if (v8 != 50)
          {
            goto LABEL_104;
          }

          *(a1 + 16) |= 8u;
          v38 = *(a1 + 48);
          if (!v38)
          {
            v39 = *(a1 + 8);
            if (v39)
            {
              v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
            }

            v38 = google::protobuf::Arena::CreateMaybeMessage<TSCE::VolatileDependenciesExpandedArchive>(v39);
            *(a1 + 48) = v38;
            v7 = v53;
          }

          v17 = sub_2216FA76C(a3, v38, v7);
          goto LABEL_111;
        case 7u:
          if (v8 != 58)
          {
            goto LABEL_104;
          }

          *(a1 + 16) |= 0x10u;
          v33 = *(a1 + 56);
          if (v33)
          {
            goto LABEL_91;
          }

          v42 = *(a1 + 8);
          if (v42)
          {
            v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive>(v42);
          *(a1 + 56) = v33;
          goto LABEL_90;
        case 8u:
          if (v8 != 66)
          {
            goto LABEL_104;
          }

          *(a1 + 16) |= 0x20u;
          v33 = *(a1 + 64);
          if (v33)
          {
            goto LABEL_91;
          }

          v34 = *(a1 + 8);
          if (v34)
          {
            v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive>(v34);
          *(a1 + 64) = v33;
LABEL_90:
          v7 = v53;
LABEL_91:
          v17 = sub_2216FA83C(a3, v33, v7);
          goto LABEL_111;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_104;
          }

          *(a1 + 16) |= 0x40u;
          v46 = *(a1 + 72);
          if (!v46)
          {
            v47 = *(a1 + 8);
            if (v47)
            {
              v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
            }

            v46 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WholeOwnerDependenciesExpandedArchive>(v47);
            *(a1 + 72) = v46;
            v7 = v53;
          }

          v17 = sub_2216FA90C(a3, v46, v7);
          goto LABEL_111;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_104;
          }

          *(a1 + 16) |= 0x80u;
          v24 = *(a1 + 80);
          if (!v24)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellErrorsArchive>(v25);
            *(a1 + 80) = v24;
            v7 = v53;
          }

          v17 = sub_2216FA9DC(a3, v24, v7);
          goto LABEL_111;
        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_104;
          }

          *(a1 + 16) |= 0x100u;
          v43 = *(a1 + 88);
          if (!v43)
          {
            v44 = *(a1 + 8);
            if (v44)
            {
              v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
            }

            v45 = MEMORY[0x223DA0390](v44);
            LODWORD(v43) = v45;
            *(a1 + 88) = v45;
            v7 = v53;
          }

          v17 = sub_22170B7F8(a3, v43, v7);
          goto LABEL_111;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_104;
          }

          *(a1 + 16) |= 0x200u;
          v10 = *(a1 + 96);
          if (!v10)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = MEMORY[0x223DA0360](v18);
            LODWORD(v10) = v19;
            *(a1 + 96) = v19;
LABEL_26:
            v7 = v53;
          }

LABEL_27:
          v17 = sub_2216F813C(a3, v10, v7);
          goto LABEL_111;
        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_104;
          }

          *(a1 + 16) |= 0x400u;
          v22 = *(a1 + 104);
          if (!v22)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellDependenciesTiledArchive>(v23);
            *(a1 + 104) = v22;
            v7 = v53;
          }

          v17 = sub_2216FAAAC(a3, v22, v7);
          goto LABEL_111;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_104;
          }

          *(a1 + 16) |= 0x800u;
          v40 = *(a1 + 112);
          if (!v40)
          {
            v41 = *(a1 + 8);
            if (v41)
            {
              v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
            }

            v40 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferencesArchive>(v41);
            *(a1 + 112) = v40;
            v7 = v53;
          }

          v17 = sub_2216FAB7C(a3, v40, v7);
          goto LABEL_111;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_104;
          }

          *(a1 + 16) |= 0x1000u;
          v15 = *(a1 + 120);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeDependenciesTiledArchive>(v16);
            *(a1 + 120) = v15;
            v7 = v53;
          }

          v17 = sub_2216FAC4C(a3, v15, v7);
          goto LABEL_111;
        case 0x10u:
          if (v8 != 130)
          {
            goto LABEL_104;
          }

          *(a1 + 16) |= 0x2000u;
          v29 = *(a1 + 128);
          if (!v29)
          {
            v30 = *(a1 + 8);
            if (v30)
            {
              v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
            }

            v29 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellSpillSizesArchive>(v30);
            *(a1 + 128) = v29;
            v7 = v53;
          }

          v17 = sub_2216FAD1C(a3, v29, v7);
          goto LABEL_111;
        default:
LABEL_104:
          if (v8)
          {
            v48 = (v8 & 7) == 4;
          }

          else
          {
            v48 = 1;
          }

          if (v48)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v17 = google::protobuf::internal::UnknownFieldParse();
LABEL_111:
          v53 = v17;
          if (!v17)
          {
LABEL_119:
            v53 = 0;
            goto LABEL_2;
          }

LABEL_112:
          if (sub_221567030(a3, &v53))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v53;
}

unsigned __int8 *TSCE::FormulaOwnerDependenciesArchive::_InternalSerialize(TSCE::FormulaOwnerDependenciesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    if ((v5 & 0x4000) == 0)
    {
LABEL_3:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

LABEL_39:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(this + 35);
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
          if ((v5 & 2) != 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
          a2[2] = v17;
          a2 += 3;
          if ((v5 & 2) != 0)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        a2[1] = v16;
        a2 += 2;
        if ((v5 & 2) != 0)
        {
          goto LABEL_50;
        }
      }

LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_60;
    }
  }

  else if ((v5 & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 34);
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
      if ((v5 & 0x8000) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      a2[2] = v13;
      a2 += 3;
      if ((v5 & 0x8000) != 0)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    a2[1] = v12;
    a2 += 2;
    if ((v5 & 0x8000) != 0)
    {
      goto LABEL_39;
    }
  }

LABEL_4:
  if ((v5 & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_50:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 4);
  *a2 = 34;
  v21 = *(v20 + 10);
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

  a2 = TSCE::CellDependenciesExpandedArchive::_InternalSerialize(v20, v22, a3);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_70;
  }

LABEL_60:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 5);
  *a2 = 42;
  v27 = *(v26 + 10);
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

  a2 = TSCE::RangeDependenciesArchive::_InternalSerialize(v26, v28, a3);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_80;
  }

LABEL_70:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v32 = *(this + 6);
  *a2 = 50;
  v33 = *(v32 + 5);
  if (v33 > 0x7F)
  {
    a2[1] = v33 | 0x80;
    v35 = v33 >> 7;
    if (v33 >> 14)
    {
      v34 = a2 + 3;
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
      a2[2] = v35;
      v34 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v33;
    v34 = a2 + 2;
  }

  a2 = TSCE::VolatileDependenciesExpandedArchive::_InternalSerialize(v32, v34, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_90;
  }

LABEL_80:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v38 = *(this + 7);
  *a2 = 58;
  v39 = *(v38 + 5);
  if (v39 > 0x7F)
  {
    a2[1] = v39 | 0x80;
    v41 = v39 >> 7;
    if (v39 >> 14)
    {
      v40 = a2 + 3;
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
      a2[2] = v41;
      v40 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v39;
    v40 = a2 + 2;
  }

  a2 = TSCE::SpanningDependenciesExpandedArchive::_InternalSerialize(v38, v40, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_100;
  }

LABEL_90:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v44 = *(this + 8);
  *a2 = 66;
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

  a2 = TSCE::SpanningDependenciesExpandedArchive::_InternalSerialize(v44, v46, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_110;
  }

LABEL_100:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v50 = *(this + 9);
  *a2 = 74;
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

  a2 = TSCE::WholeOwnerDependenciesExpandedArchive::_InternalSerialize(v50, v52, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_120;
  }

LABEL_110:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v56 = *(this + 10);
  *a2 = 82;
  v57 = *(v56 + 16);
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

  a2 = TSCE::CellErrorsArchive::_InternalSerialize(v56, v58, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_130;
  }

LABEL_120:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v62 = *(this + 11);
  *a2 = 90;
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
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_140;
  }

LABEL_130:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v68 = *(this + 12);
  *a2 = 98;
  v69 = *(v68 + 5);
  if (v69 > 0x7F)
  {
    a2[1] = v69 | 0x80;
    v71 = v69 >> 7;
    if (v69 >> 14)
    {
      v70 = a2 + 3;
      do
      {
        *(v70 - 1) = v71 | 0x80;
        v72 = v71 >> 7;
        ++v70;
        v73 = v71 >> 14;
        v71 >>= 7;
      }

      while (v73);
      *(v70 - 1) = v72;
    }

    else
    {
      a2[2] = v71;
      v70 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v69;
    v70 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v68, v70, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_150;
  }

LABEL_140:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v74 = *(this + 13);
  *a2 = 106;
  v75 = *(v74 + 10);
  if (v75 > 0x7F)
  {
    a2[1] = v75 | 0x80;
    v77 = v75 >> 7;
    if (v75 >> 14)
    {
      v76 = a2 + 3;
      do
      {
        *(v76 - 1) = v77 | 0x80;
        v78 = v77 >> 7;
        ++v76;
        v79 = v77 >> 14;
        v77 >>= 7;
      }

      while (v79);
      *(v76 - 1) = v78;
    }

    else
    {
      a2[2] = v77;
      v76 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v75;
    v76 = a2 + 2;
  }

  a2 = TSCE::CellDependenciesTiledArchive::_InternalSerialize(v74, v76, a3);
  if ((v5 & 0x800) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_160;
  }

LABEL_150:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v80 = *(this + 14);
  *a2 = 114;
  v81 = *(v80 + 16);
  if (v81 > 0x7F)
  {
    a2[1] = v81 | 0x80;
    v83 = v81 >> 7;
    if (v81 >> 14)
    {
      v82 = a2 + 3;
      do
      {
        *(v82 - 1) = v83 | 0x80;
        v84 = v83 >> 7;
        ++v82;
        v85 = v83 >> 14;
        v83 >>= 7;
      }

      while (v85);
      *(v82 - 1) = v84;
    }

    else
    {
      a2[2] = v83;
      v82 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v81;
    v82 = a2 + 2;
  }

  a2 = TSCE::UuidReferencesArchive::_InternalSerialize(v80, v82, a3);
  if ((v5 & 0x1000) == 0)
  {
LABEL_16:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_170;
  }

LABEL_160:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v86 = *(this + 15);
  *a2 = 122;
  v87 = *(v86 + 10);
  if (v87 > 0x7F)
  {
    a2[1] = v87 | 0x80;
    v89 = v87 >> 7;
    if (v87 >> 14)
    {
      v88 = a2 + 3;
      do
      {
        *(v88 - 1) = v89 | 0x80;
        v90 = v89 >> 7;
        ++v88;
        v91 = v89 >> 14;
        v89 >>= 7;
      }

      while (v91);
      *(v88 - 1) = v90;
    }

    else
    {
      a2[2] = v89;
      v88 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v87;
    v88 = a2 + 2;
  }

  a2 = TSCE::RangeDependenciesTiledArchive::_InternalSerialize(v86, v88, a3);
  if ((v5 & 0x2000) != 0)
  {
LABEL_170:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v92 = *(this + 16);
    *a2 = 386;
    v93 = *(v92 + 10);
    if (v93 > 0x7F)
    {
      a2[2] = v93 | 0x80;
      v95 = v93 >> 7;
      if (v93 >> 14)
      {
        v94 = a2 + 4;
        do
        {
          *(v94 - 1) = v95 | 0x80;
          v96 = v95 >> 7;
          ++v94;
          v97 = v95 >> 14;
          v95 >>= 7;
        }

        while (v97);
        *(v94 - 1) = v96;
      }

      else
      {
        a2[3] = v95;
        v94 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v93;
      v94 = a2 + 3;
    }

    a2 = TSCE::CellSpillSizesArchive::_InternalSerialize(v92, v94, a3);
  }

LABEL_180:
  v98 = *(this + 1);
  if ((v98 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v98 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::FormulaOwnerDependenciesArchive::RequiredFieldsByteSizeFallback(TSCE::FormulaOwnerDependenciesArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 0x4000) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 34) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::FormulaOwnerDependenciesArchive::ByteSizeLong(TSCE::FormulaOwnerDependenciesArchive *this)
{
  if ((~*(this + 4) & 0x4001) != 0)
  {
    v3 = TSCE::FormulaOwnerDependenciesArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(*(this + 3));
    v3 = v2 + ((9 * (__clz(*(this + 34) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v4 = *(this + 4);
  if ((v4 & 0xFE) == 0)
  {
    goto LABEL_13;
  }

  if ((v4 & 2) != 0)
  {
    v8 = TSCE::CellDependenciesExpandedArchive::ByteSizeLong(*(this + 4));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_7;
  }

  v9 = TSCE::RangeDependenciesArchive::ByteSizeLong(*(this + 5));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = TSCE::VolatileDependenciesExpandedArchive::ByteSizeLong(*(this + 6));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_29:
    v12 = TSCE::SpanningDependenciesExpandedArchive::ByteSizeLong(*(this + 8));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_28:
  v11 = TSCE::SpanningDependenciesExpandedArchive::ByteSizeLong(*(this + 7));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_30:
  v13 = TSCE::WholeOwnerDependenciesExpandedArchive::ByteSizeLong(*(this + 9));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = TSCE::CellErrorsArchive::ByteSizeLong(*(this + 10));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  if ((v4 & 0x3F00) == 0)
  {
    goto LABEL_21;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = TSP::Reference::ByteSizeLong(*(this + 11));
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = TSP::UUID::ByteSizeLong(*(this + 12));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = TSCE::CellDependenciesTiledArchive::ByteSizeLong(*(this + 13));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = TSCE::UuidReferencesArchive::ByteSizeLong(*(this + 14));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_36:
  v18 = TSCE::RangeDependenciesTiledArchive::ByteSizeLong(*(this + 15));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x2000) != 0)
  {
LABEL_20:
    v6 = TSCE::CellSpillSizesArchive::ByteSizeLong(*(this + 16));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_21:
  if ((v4 & 0x8000) != 0)
  {
    v3 += ((9 * (__clz(*(this + 35) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSCE::FormulaOwnerDependenciesArchive::MergeFrom(TSCE::FormulaOwnerDependenciesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::FormulaOwnerDependenciesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::FormulaOwnerDependenciesArchive::MergeFrom(uint64_t this, const TSCE::FormulaOwnerDependenciesArchive *a2)
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
    goto LABEL_78;
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

      goto LABEL_25;
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

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellDependenciesExpandedArchive>(v10);
    *(v3 + 32) = v9;
  }

  if (*(a2 + 4))
  {
    v11 = *(a2 + 4);
  }

  else
  {
    v11 = &TSCE::_CellDependenciesExpandedArchive_default_instance_;
  }

  this = TSCE::CellDependenciesExpandedArchive::MergeFrom(v9, v11);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

LABEL_25:
  *(v3 + 16) |= 4u;
  v12 = *(v3 + 40);
  if (!v12)
  {
    v13 = *(v3 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeDependenciesArchive>(v13);
    *(v3 + 40) = v12;
  }

  if (*(a2 + 5))
  {
    v14 = *(a2 + 5);
  }

  else
  {
    v14 = &TSCE::_RangeDependenciesArchive_default_instance_;
  }

  this = TSCE::RangeDependenciesArchive::MergeFrom(v12, v14);
  if ((v5 & 8) != 0)
  {
LABEL_33:
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::VolatileDependenciesExpandedArchive>(v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = &TSCE::_VolatileDependenciesExpandedArchive_default_instance_;
    }

    this = TSCE::VolatileDependenciesExpandedArchive::MergeFrom(v15, v17);
  }

LABEL_41:
  if ((v5 & 0x10) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_43;
    }

LABEL_54:
    *(v3 + 16) |= 0x20u;
    v21 = *(v3 + 64);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive>(v22);
      *(v3 + 64) = v21;
    }

    if (*(a2 + 8))
    {
      v23 = *(a2 + 8);
    }

    else
    {
      v23 = &TSCE::_SpanningDependenciesExpandedArchive_default_instance_;
    }

    this = TSCE::SpanningDependenciesExpandedArchive::MergeFrom(v21, v23);
    if ((v5 & 0x40) == 0)
    {
LABEL_44:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_70;
    }

    goto LABEL_62;
  }

  *(v3 + 16) |= 0x10u;
  v18 = *(v3 + 56);
  if (!v18)
  {
    v19 = *(v3 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive>(v19);
    *(v3 + 56) = v18;
  }

  if (*(a2 + 7))
  {
    v20 = *(a2 + 7);
  }

  else
  {
    v20 = &TSCE::_SpanningDependenciesExpandedArchive_default_instance_;
  }

  this = TSCE::SpanningDependenciesExpandedArchive::MergeFrom(v18, v20);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_43:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_44;
  }

LABEL_62:
  *(v3 + 16) |= 0x40u;
  v24 = *(v3 + 72);
  if (!v24)
  {
    v25 = *(v3 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WholeOwnerDependenciesExpandedArchive>(v25);
    *(v3 + 72) = v24;
  }

  if (*(a2 + 9))
  {
    v26 = *(a2 + 9);
  }

  else
  {
    v26 = TSCE::_WholeOwnerDependenciesExpandedArchive_default_instance_;
  }

  this = TSCE::WholeOwnerDependenciesExpandedArchive::MergeFrom(v24, v26);
  if ((v5 & 0x80) != 0)
  {
LABEL_70:
    *(v3 + 16) |= 0x80u;
    v27 = *(v3 + 80);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellErrorsArchive>(v28);
      *(v3 + 80) = v27;
    }

    if (*(a2 + 10))
    {
      v29 = *(a2 + 10);
    }

    else
    {
      v29 = &TSCE::_CellErrorsArchive_default_instance_;
    }

    this = TSCE::CellErrorsArchive::MergeFrom(v27, v29);
  }

LABEL_78:
  if ((v5 & 0xFF00) == 0)
  {
    return this;
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

      v30 = MEMORY[0x223DA0390](v31);
      *(v3 + 88) = v30;
    }

    if (*(a2 + 11))
    {
      v32 = *(a2 + 11);
    }

    else
    {
      v32 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v30, v32);
    if ((v5 & 0x200) == 0)
    {
LABEL_81:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_106;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_81;
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

    v33 = MEMORY[0x223DA0360](v34);
    *(v3 + 96) = v33;
  }

  if (*(a2 + 12))
  {
    v35 = *(a2 + 12);
  }

  else
  {
    v35 = MEMORY[0x277D809E0];
  }

  this = TSP::UUID::MergeFrom(v33, v35);
  if ((v5 & 0x400) == 0)
  {
LABEL_82:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_114;
  }

LABEL_106:
  *(v3 + 16) |= 0x400u;
  v36 = *(v3 + 104);
  if (!v36)
  {
    v37 = *(v3 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellDependenciesTiledArchive>(v37);
    *(v3 + 104) = v36;
  }

  if (*(a2 + 13))
  {
    v38 = *(a2 + 13);
  }

  else
  {
    v38 = &TSCE::_CellDependenciesTiledArchive_default_instance_;
  }

  this = TSCE::CellDependenciesTiledArchive::MergeFrom(v36, v38);
  if ((v5 & 0x800) == 0)
  {
LABEL_83:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_122;
  }

LABEL_114:
  *(v3 + 16) |= 0x800u;
  v39 = *(v3 + 112);
  if (!v39)
  {
    v40 = *(v3 + 8);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferencesArchive>(v40);
    *(v3 + 112) = v39;
  }

  if (*(a2 + 14))
  {
    v41 = *(a2 + 14);
  }

  else
  {
    v41 = &TSCE::_UuidReferencesArchive_default_instance_;
  }

  this = TSCE::UuidReferencesArchive::MergeFrom(v39, v41);
  if ((v5 & 0x1000) == 0)
  {
LABEL_84:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_130;
  }

LABEL_122:
  *(v3 + 16) |= 0x1000u;
  v42 = *(v3 + 120);
  if (!v42)
  {
    v43 = *(v3 + 8);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeDependenciesTiledArchive>(v43);
    *(v3 + 120) = v42;
  }

  if (*(a2 + 15))
  {
    v44 = *(a2 + 15);
  }

  else
  {
    v44 = &TSCE::_RangeDependenciesTiledArchive_default_instance_;
  }

  this = TSCE::RangeDependenciesTiledArchive::MergeFrom(v42, v44);
  if ((v5 & 0x2000) == 0)
  {
LABEL_85:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_86;
    }

LABEL_138:
    *(v3 + 136) = *(a2 + 34);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_130:
  *(v3 + 16) |= 0x2000u;
  v45 = *(v3 + 128);
  if (!v45)
  {
    v46 = *(v3 + 8);
    if (v46)
    {
      v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
    }

    v45 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellSpillSizesArchive>(v46);
    *(v3 + 128) = v45;
  }

  if (*(a2 + 16))
  {
    v47 = *(a2 + 16);
  }

  else
  {
    v47 = &TSCE::_CellSpillSizesArchive_default_instance_;
  }

  this = TSCE::CellSpillSizesArchive::MergeFrom(v45, v47);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_138;
  }

LABEL_86:
  if ((v5 & 0x8000) != 0)
  {
LABEL_87:
    *(v3 + 140) = *(a2 + 35);
  }

LABEL_88:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t *TSCE::FormulaOwnerDependenciesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormulaOwnerDependenciesArchive::Clear(this);

    return TSCE::FormulaOwnerDependenciesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::FormulaOwnerDependenciesArchive::CopyFrom(uint64_t *this, const TSCE::FormulaOwnerDependenciesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormulaOwnerDependenciesArchive::Clear(this);

    return TSCE::FormulaOwnerDependenciesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::FormulaOwnerDependenciesArchive::IsInitialized(TSCE::FormulaOwnerDependenciesArchive *this)
{
  if ((~*(this + 4) & 0x4001) != 0)
  {
    return 0;
  }

  result = TSP::UUID::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      v9 = *(this + 4);
      v10 = *(v9 + 24);
      v11 = *(v9 + 32);
      while (v10 >= 1)
      {
        v12 = *(v11 + 8 * v10--);
        if ((~*(v12 + 16) & 6) != 0)
        {
          return 0;
        }
      }
    }

    if ((v3 & 4) != 0)
    {
      v13 = *(this + 5);
      v14 = *(v13 + 24);
      v15 = *(v13 + 32);
      while (v14 >= 1)
      {
        v16 = v14 - 1;
        IsInitialized = TSCE::RangeBackDependencyArchive::IsInitialized(*(v15 + 8 * v14));
        v14 = v16;
        if (!IsInitialized)
        {
          return 0;
        }
      }
    }

    if ((v3 & 8) != 0)
    {
      result = TSCE::VolatileDependenciesExpandedArchive::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10) != 0)
    {
      result = TSCE::SpanningDependenciesExpandedArchive::IsInitialized(*(this + 7));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20) != 0)
    {
      result = TSCE::SpanningDependenciesExpandedArchive::IsInitialized(*(this + 8));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x40) != 0)
    {
      v4 = *(this + 9);
      if (*(v4 + 16))
      {
        result = sub_2214E71E0(*(v4 + 24) + 16);
        if (!result)
        {
          return result;
        }

        v3 = *(this + 4);
      }
    }

    if ((v3 & 0x80) != 0)
    {
      result = TSCE::CellErrorsArchive::IsInitialized(*(this + 10));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x100) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 11));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x200) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 12));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x400) != 0)
    {
      v5 = *(this + 13);
      v6 = *(v5 + 24);
      while (v6 >= 1)
      {
        v7 = v6 - 1;
        v8 = TSP::Reference::IsInitialized(*(*(v5 + 32) + 8 * v6));
        result = 0;
        v6 = v7;
        if ((v8 & 1) == 0)
        {
          return result;
        }
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x800) != 0)
    {
      result = TSCE::UuidReferencesArchive::IsInitialized(*(this + 14));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x1000) != 0)
    {
      v18 = *(this + 15);
      v19 = *(v18 + 24);
      while (v19 >= 1)
      {
        v20 = v19 - 1;
        v21 = TSP::Reference::IsInitialized(*(*(v18 + 32) + 8 * v19));
        result = 0;
        v19 = v20;
        if ((v21 & 1) == 0)
        {
          return result;
        }
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x2000) != 0)
    {
      v22 = *(this + 16);
      v23 = *(v22 + 24);
      v24 = *(v22 + 32);
      do
      {
        result = v23 < 1;
        if (v23 < 1)
        {
          break;
        }

        v25 = *(v24 + 8 * v23--);
      }

      while ((~*(v25 + 16) & 3) == 0);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCE::FormulaOwnerDependenciesArchive::InternalSwap(TSCE::FormulaOwnerDependenciesArchive *this, TSCE::FormulaOwnerDependenciesArchive *a2)
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
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v11;
  *(a2 + 10) = v12;
  v13 = *(this + 11);
  v14 = *(this + 12);
  *(this + 88) = *(a2 + 88);
  *(a2 + 11) = v13;
  *(a2 + 12) = v14;
  v15 = *(this + 13);
  v16 = *(this + 14);
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v15;
  *(a2 + 14) = v16;
  v17 = *(this + 15);
  v18 = *(this + 16);
  result = *(a2 + 120);
  *(this + 120) = result;
  *(a2 + 15) = v17;
  *(a2 + 16) = v18;
  v20 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v20;
  return result;
}

TSP::CFUUIDArchive *TSCE::FormulaOwnerInfoArchive::clear_formula_owner_id(TSCE::FormulaOwnerInfoArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::CFUUIDArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSCE::FormulaOwnerInfoArchive::clear_formula_owner(TSCE::FormulaOwnerInfoArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSCE::FormulaOwnerInfoArchive *TSCE::FormulaOwnerInfoArchive::FormulaOwnerInfoArchive(TSCE::FormulaOwnerInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AD0D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaOwnerInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 11) = 0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834AD0D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaOwnerInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 11) = 0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSCE::FormulaOwnerInfoArchive *TSCE::FormulaOwnerInfoArchive::FormulaOwnerInfoArchive(TSCE::FormulaOwnerInfoArchive *this, const TSCE::FormulaOwnerInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AD0D0;
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
  return this;
}

void TSCE::FormulaOwnerInfoArchive::~FormulaOwnerInfoArchive(TSCE::FormulaOwnerInfoArchive *this)
{
  sub_221517D3C(this);
  sub_2214DFCF8(this + 1);
}

{
  TSCE::FormulaOwnerInfoArchive::~FormulaOwnerInfoArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_221517D3C(uint64_t *result)
{
  if (result != TSCE::_FormulaOwnerInfoArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x223D9FBD0]();
      MEMORY[0x223DA1450](v2, 0x1081C401753DA55);
    }

    v3 = v1[4];
    if (v3)
    {
      TSCE::CellDependenciesArchive::~CellDependenciesArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSCE::RangeDependenciesArchive::~RangeDependenciesArchive(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSCE::VolatileDependenciesArchive::~VolatileDependenciesArchive(v5);
      MEMORY[0x223DA1450]();
    }

    v6 = v1[7];
    if (v6)
    {
      TSCE::SpanningDependenciesArchive::~SpanningDependenciesArchive(v6);
      MEMORY[0x223DA1450]();
    }

    v7 = v1[8];
    if (v7)
    {
      TSCE::SpanningDependenciesArchive::~SpanningDependenciesArchive(v7);
      MEMORY[0x223DA1450]();
    }

    v8 = v1[9];
    if (v8)
    {
      TSP::Reference::~Reference(v8);
      MEMORY[0x223DA1450]();
    }

    v9 = v1[10];
    if (v9)
    {
      TSCE::WholeOwnerDependenciesArchive::~WholeOwnerDependenciesArchive(v9);
      MEMORY[0x223DA1450]();
    }

    result = v1[11];
    if (result)
    {
      TSCE::CellErrorsArchive::~CellErrorsArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TSCE::FormulaOwnerInfoArchive::default_instance(TSCE::FormulaOwnerInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_FormulaOwnerInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_FormulaOwnerInfoArchive_default_instance_;
}

uint64_t *TSCE::FormulaOwnerInfoArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    this = TSP::CFUUIDArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSCE::CellDependenciesArchive::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = TSCE::RangeDependenciesArchive::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = TSCE::VolatileDependenciesArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    this = TSCE::SpanningDependenciesArchive::Clear(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = TSCE::SpanningDependenciesArchive::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_23:
  this = TSP::Reference::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSCE::WholeOwnerDependenciesArchive::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    this = TSCE::CellErrorsArchive::Clear(*(v1 + 88));
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

google::protobuf::internal *TSCE::FormulaOwnerInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v34 = a2;
  while ((sub_221567030(a3, &v34) & 1) == 0)
  {
    v5 = (v34 + 1);
    v6 = *v34;
    if ((*v34 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v34 + 2);
LABEL_6:
      v34 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v34, (v7 - 128));
    v34 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v20;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 4)
    {
      if (v6 >> 3 > 2)
      {
        if (v8 == 3)
        {
          if (v6 != 26)
          {
            goto LABEL_78;
          }

          *(a1 + 16) |= 4u;
          v24 = *(a1 + 40);
          if (!v24)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeDependenciesArchive>(v25);
            *(a1 + 40) = v24;
            v5 = v34;
          }

          v11 = sub_2216FA69C(a3, v24, v5);
        }

        else
        {
          if (v8 != 4 || v6 != 34)
          {
            goto LABEL_78;
          }

          *(a1 + 16) |= 8u;
          v15 = *(a1 + 48);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::VolatileDependenciesArchive>(v16);
            *(a1 + 48) = v15;
            v5 = v34;
          }

          v11 = sub_2216FAEBC(a3, v15, v5);
        }
      }

      else if (v8 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_78;
        }

        *(a1 + 16) |= 1u;
        v21 = *(a1 + 24);
        if (!v21)
        {
          v22 = *(a1 + 8);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = MEMORY[0x223DA0300](v22);
          LODWORD(v21) = v23;
          *(a1 + 24) = v23;
          v5 = v34;
        }

        v11 = sub_2216F7F9C(a3, v21, v5);
      }

      else
      {
        if (v8 != 2 || v6 != 18)
        {
LABEL_78:
          if (v6)
          {
            v32 = (v6 & 7) == 4;
          }

          else
          {
            v32 = 1;
          }

          if (v32)
          {
            *(a3 + 80) = v6 - 1;
            return v34;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v11 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_85;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 32);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellDependenciesArchive>(v14);
          *(a1 + 32) = v13;
          v5 = v34;
        }

        v11 = sub_2216FADEC(a3, v13, v5);
      }
    }

    else
    {
      if (v6 >> 3 <= 6)
      {
        if (v8 == 5)
        {
          if (v6 != 42)
          {
            goto LABEL_78;
          }

          *(a1 + 16) |= 0x10u;
          v17 = *(a1 + 56);
          if (!v17)
          {
            v29 = *(a1 + 8);
            if (v29)
            {
              v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesArchive>(v29);
            *(a1 + 56) = v17;
LABEL_70:
            v5 = v34;
          }
        }

        else
        {
          if (v8 != 6 || v6 != 50)
          {
            goto LABEL_78;
          }

          *(a1 + 16) |= 0x20u;
          v17 = *(a1 + 64);
          if (!v17)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesArchive>(v18);
            *(a1 + 64) = v17;
            goto LABEL_70;
          }
        }

        v11 = sub_2216FAF8C(a3, v17, v5);
        goto LABEL_85;
      }

      if (v8 == 7)
      {
        if (v6 != 58)
        {
          goto LABEL_78;
        }

        *(a1 + 16) |= 0x40u;
        v26 = *(a1 + 72);
        if (!v26)
        {
          v27 = *(a1 + 8);
          if (v27)
          {
            v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
          }

          v28 = MEMORY[0x223DA0390](v27);
          LODWORD(v26) = v28;
          *(a1 + 72) = v28;
          v5 = v34;
        }

        v11 = sub_22170B7F8(a3, v26, v5);
      }

      else if (v8 == 8)
      {
        if (v6 != 66)
        {
          goto LABEL_78;
        }

        *(a1 + 16) |= 0x80u;
        v30 = *(a1 + 80);
        if (!v30)
        {
          v31 = *(a1 + 8);
          if (v31)
          {
            v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
          }

          v30 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WholeOwnerDependenciesArchive>(v31);
          *(a1 + 80) = v30;
          v5 = v34;
        }

        v11 = sub_2216FB05C(a3, v30, v5);
      }

      else
      {
        if (v8 != 9 || v6 != 74)
        {
          goto LABEL_78;
        }

        *(a1 + 16) |= 0x100u;
        v9 = *(a1 + 88);
        if (!v9)
        {
          v10 = *(a1 + 8);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellErrorsArchive>(v10);
          *(a1 + 88) = v9;
          v5 = v34;
        }

        v11 = sub_2216FA9DC(a3, v9, v5);
      }
    }

LABEL_85:
    v34 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v34;
}

unsigned __int8 *TSCE::FormulaOwnerInfoArchive::_InternalSerialize(TSCE::FormulaOwnerInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::CFUUIDArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
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

  a2 = TSCE::CellDependenciesArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_31:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 5);
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

  a2 = TSCE::RangeDependenciesArchive::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_41:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 6);
  *a2 = 34;
  v25 = *(v24 + 80);
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

  a2 = TSCE::VolatileDependenciesArchive::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_61;
  }

LABEL_51:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(this + 7);
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

  a2 = TSCE::SpanningDependenciesArchive::_InternalSerialize(v30, v32, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_71;
  }

LABEL_61:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v36 = *(this + 8);
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

  a2 = TSCE::SpanningDependenciesArchive::_InternalSerialize(v36, v38, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_81;
  }

LABEL_71:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v42 = *(this + 9);
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

  a2 = TSP::Reference::_InternalSerialize(v42, v44, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_91;
  }

LABEL_81:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v48 = *(this + 10);
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

  a2 = TSCE::WholeOwnerDependenciesArchive::_InternalSerialize(v48, v50, a3);
  if ((v5 & 0x100) != 0)
  {
LABEL_91:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v54 = *(this + 11);
    *a2 = 74;
    v55 = *(v54 + 16);
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

    a2 = TSCE::CellErrorsArchive::_InternalSerialize(v54, v56, a3);
  }

LABEL_101:
  v60 = *(this + 1);
  if ((v60 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v60 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::FormulaOwnerInfoArchive::ByteSizeLong(TSCE::FormulaOwnerInfoArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::CFUUIDArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xFE) == 0)
  {
    goto LABEL_13;
  }

  if ((v2 & 2) != 0)
  {
    v8 = TSCE::CellDependenciesArchive::ByteSizeLong(*(this + 4));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
LABEL_7:
      if ((v2 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_7;
  }

  v9 = TSCE::RangeDependenciesArchive::ByteSizeLong(*(this + 5));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_8:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = TSCE::VolatileDependenciesArchive::ByteSizeLong(*(this + 6));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = TSCE::SpanningDependenciesArchive::ByteSizeLong(*(this + 8));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
LABEL_11:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v11 = TSCE::SpanningDependenciesArchive::ByteSizeLong(*(this + 7));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = TSP::Reference::ByteSizeLong(*(this + 9));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_12:
    v5 = TSCE::WholeOwnerDependenciesArchive::ByteSizeLong(*(this + 10));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  if ((v2 & 0x100) != 0)
  {
    v6 = TSCE::CellErrorsArchive::ByteSizeLong(*(this + 11));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSCE::FormulaOwnerInfoArchive::MergeFrom(TSCE::FormulaOwnerInfoArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::FormulaOwnerInfoArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::FormulaOwnerInfoArchive::MergeFrom(uint64_t this, const TSCE::FormulaOwnerInfoArchive *a2)
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
    goto LABEL_45;
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

      v6 = MEMORY[0x223DA0300](v7);
      *(v3 + 24) = v6;
    }

    if (*(a2 + 3))
    {
      v8 = *(a2 + 3);
    }

    else
    {
      v8 = MEMORY[0x277D80A28];
    }

    this = TSP::CFUUIDArchive::MergeFrom(v6, v8);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
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

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellDependenciesArchive>(v10);
    *(v3 + 32) = v9;
  }

  if (*(a2 + 4))
  {
    v11 = *(a2 + 4);
  }

  else
  {
    v11 = &TSCE::_CellDependenciesArchive_default_instance_;
  }

  this = TSCE::CellDependenciesArchive::MergeFrom(v9, v11);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

LABEL_25:
  *(v3 + 16) |= 4u;
  v12 = *(v3 + 40);
  if (!v12)
  {
    v13 = *(v3 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeDependenciesArchive>(v13);
    *(v3 + 40) = v12;
  }

  if (*(a2 + 5))
  {
    v14 = *(a2 + 5);
  }

  else
  {
    v14 = &TSCE::_RangeDependenciesArchive_default_instance_;
  }

  this = TSCE::RangeDependenciesArchive::MergeFrom(v12, v14);
  if ((v5 & 8) != 0)
  {
LABEL_33:
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::VolatileDependenciesArchive>(v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = &TSCE::_VolatileDependenciesArchive_default_instance_;
    }

    this = TSCE::VolatileDependenciesArchive::MergeFrom(v15, v17);
  }

LABEL_41:
  if ((v5 & 0x10) != 0)
  {
    *(v3 + 16) |= 0x10u;
    v18 = *(v3 + 56);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesArchive>(v19);
      *(v3 + 56) = v18;
    }

    if (*(a2 + 7))
    {
      v20 = *(a2 + 7);
    }

    else
    {
      v20 = &TSCE::_SpanningDependenciesArchive_default_instance_;
    }

    this = TSCE::SpanningDependenciesArchive::MergeFrom(v18, v20);
    if ((v5 & 0x20) == 0)
    {
LABEL_43:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_63;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_43;
  }

  *(v3 + 16) |= 0x20u;
  v21 = *(v3 + 64);
  if (!v21)
  {
    v22 = *(v3 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesArchive>(v22);
    *(v3 + 64) = v21;
  }

  if (*(a2 + 8))
  {
    v23 = *(a2 + 8);
  }

  else
  {
    v23 = &TSCE::_SpanningDependenciesArchive_default_instance_;
  }

  this = TSCE::SpanningDependenciesArchive::MergeFrom(v21, v23);
  if ((v5 & 0x40) != 0)
  {
LABEL_63:
    *(v3 + 16) |= 0x40u;
    v24 = *(v3 + 72);
    if (!v24)
    {
      v25 = *(v3 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x223DA0390](v25);
      *(v3 + 72) = v24;
    }

    if (*(a2 + 9))
    {
      v26 = *(a2 + 9);
    }

    else
    {
      v26 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v24, v26);
    if ((v5 & 0x80) != 0)
    {
      goto LABEL_71;
    }

LABEL_45:
    if ((v5 & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_79;
  }

LABEL_44:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_45;
  }

LABEL_71:
  *(v3 + 16) |= 0x80u;
  v27 = *(v3 + 80);
  if (!v27)
  {
    v28 = *(v3 + 8);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WholeOwnerDependenciesArchive>(v28);
    *(v3 + 80) = v27;
  }

  if (*(a2 + 10))
  {
    v29 = *(a2 + 10);
  }

  else
  {
    v29 = &TSCE::_WholeOwnerDependenciesArchive_default_instance_;
  }

  this = TSCE::WholeOwnerDependenciesArchive::MergeFrom(v27, v29);
  if ((v5 & 0x100) != 0)
  {
LABEL_79:
    *(v3 + 16) |= 0x100u;
    v30 = *(v3 + 88);
    if (!v30)
    {
      v31 = *(v3 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellErrorsArchive>(v31);
      *(v3 + 88) = v30;
    }

    if (*(a2 + 11))
    {
      v32 = *(a2 + 11);
    }

    else
    {
      v32 = &TSCE::_CellErrorsArchive_default_instance_;
    }

    return TSCE::CellErrorsArchive::MergeFrom(v30, v32);
  }

  return this;
}

uint64_t *TSCE::FormulaOwnerInfoArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormulaOwnerInfoArchive::Clear(this);

    return TSCE::FormulaOwnerInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::FormulaOwnerInfoArchive::CopyFrom(uint64_t *this, const TSCE::FormulaOwnerInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormulaOwnerInfoArchive::Clear(this);

    return TSCE::FormulaOwnerInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::FormulaOwnerInfoArchive::IsInitialized(TSCE::FormulaOwnerInfoArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  if ((v1 & 2) != 0)
  {
    result = sub_2214F5E5C(*(this + 4) + 24);
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 4) != 0)
  {
    v4 = *(this + 5);
    v5 = *(v4 + 24);
    v6 = *(v4 + 32);
    while (v5 >= 1)
    {
      v7 = v5 - 1;
      IsInitialized = TSCE::RangeBackDependencyArchive::IsInitialized(*(v6 + 8 * v5));
      v5 = v7;
      if (!IsInitialized)
      {
        return 0;
      }
    }
  }

  if ((v1 & 8) != 0)
  {
    v9 = *(this + 6);
    v10 = *(v9 + 208);
    v11 = *(v9 + 216);
    while (v10 >= 1)
    {
      v12 = *(v11 + 8 * v10--);
      if ((~*(v12 + 16) & 7) != 0)
      {
        return 0;
      }
    }
  }

  if ((v1 & 0x10) != 0)
  {
    result = TSCE::SpanningDependenciesArchive::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x20) != 0)
  {
    result = TSCE::SpanningDependenciesArchive::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x40) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x80) != 0)
  {
    v13 = *(this + 10);
    v14 = *(v13 + 24);
    v15 = *(v13 + 32);
    while (v14 >= 1)
    {
      result = 0;
      v16 = *(v15 + 8 * v14--);
      if ((~*(v16 + 16) & 3) != 0)
      {
        return result;
      }
    }
  }

  if ((v1 & 0x100) == 0)
  {
    return 1;
  }

  result = TSCE::CellErrorsArchive::IsInitialized(*(this + 11));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCE::FormulaOwnerInfoArchive::InternalSwap(TSCE::FormulaOwnerInfoArchive *this, TSCE::FormulaOwnerInfoArchive *a2)
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
  v14 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v14;
  return result;
}

TSP::UUID *TSCE::SubFormulaOwnerIDArchive::clear_base_owner_uid(TSCE::SubFormulaOwnerIDArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::SubFormulaOwnerIDArchive *TSCE::SubFormulaOwnerIDArchive::SubFormulaOwnerIDArchive(TSCE::SubFormulaOwnerIDArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AD180;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SubFormulaOwnerIDArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834AD180;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SubFormulaOwnerIDArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSCE::SubFormulaOwnerIDArchive *TSCE::SubFormulaOwnerIDArchive::SubFormulaOwnerIDArchive(TSCE::SubFormulaOwnerIDArchive *this, const TSCE::SubFormulaOwnerIDArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AD180;
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

void TSCE::SubFormulaOwnerIDArchive::~SubFormulaOwnerIDArchive(TSCE::SubFormulaOwnerIDArchive *this)
{
  if (this != TSCE::_SubFormulaOwnerIDArchive_default_instance_)
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
  TSCE::SubFormulaOwnerIDArchive::~SubFormulaOwnerIDArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::SubFormulaOwnerIDArchive::default_instance(TSCE::SubFormulaOwnerIDArchive *this)
{
  if (atomic_load_explicit(scc_info_SubFormulaOwnerIDArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_SubFormulaOwnerIDArchive_default_instance_;
}

uint64_t *TSCE::SubFormulaOwnerIDArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::UUID::Clear(this[3]);
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

google::protobuf::internal *TSCE::SubFormulaOwnerIDArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

            v18 = MEMORY[0x223DA0360](v17);
            LODWORD(v16) = v18;
            *(a1 + 24) = v18;
            v7 = v23;
          }

          v12 = sub_2216F813C(a3, v16, v7);
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

unsigned __int8 *TSCE::SubFormulaOwnerIDArchive::_InternalSerialize(TSCE::SubFormulaOwnerIDArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSCE::SubFormulaOwnerIDArchive::RequiredFieldsByteSizeFallback(TSCE::SubFormulaOwnerIDArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
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

uint64_t TSCE::SubFormulaOwnerIDArchive::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSCE::SubFormulaOwnerIDArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[3]);
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

uint64_t TSCE::SubFormulaOwnerIDArchive::MergeFrom(TSCE::SubFormulaOwnerIDArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::SubFormulaOwnerIDArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::SubFormulaOwnerIDArchive::MergeFrom(uint64_t this, const TSCE::SubFormulaOwnerIDArchive *a2)
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
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSCE::SubFormulaOwnerIDArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SubFormulaOwnerIDArchive::Clear(this);

    return TSCE::SubFormulaOwnerIDArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::SubFormulaOwnerIDArchive::CopyFrom(uint64_t *this, const TSCE::SubFormulaOwnerIDArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SubFormulaOwnerIDArchive::Clear(this);

    return TSCE::SubFormulaOwnerIDArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::SubFormulaOwnerIDArchive::IsInitialized(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::UUID::IsInitialized(this[3]);
  }
}

uint64_t *TSCE::SubFormulaOwnerIDArchive::InternalSwap(TSCE::SubFormulaOwnerIDArchive *this, TSCE::SubFormulaOwnerIDArchive *a2)
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

TSP::CFUUIDArchive *TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::clear_owner_id(TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::CFUUIDArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry *TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::OwnerIDMapArchive_OwnerIDMapArchiveEntry(TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AD230;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_OwnerIDMapArchive_OwnerIDMapArchiveEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834AD230;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_OwnerIDMapArchive_OwnerIDMapArchiveEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry *TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::OwnerIDMapArchive_OwnerIDMapArchiveEntry(TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry *this, const TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AD230;
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

void TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::~OwnerIDMapArchive_OwnerIDMapArchiveEntry(TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry *this)
{
  if (this != TSCE::_OwnerIDMapArchive_OwnerIDMapArchiveEntry_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x223D9FBD0]();
    MEMORY[0x223DA1450](v2, 0x1081C401753DA55);
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::~OwnerIDMapArchive_OwnerIDMapArchiveEntry(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::default_instance(TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry *this)
{
  if (atomic_load_explicit(scc_info_OwnerIDMapArchive_OwnerIDMapArchiveEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_OwnerIDMapArchive_OwnerIDMapArchiveEntry_default_instance_;
}

uint64_t *TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::CFUUIDArchive::Clear(this[3]);
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

google::protobuf::internal *TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

            v15 = MEMORY[0x223DA0300](v14);
            LODWORD(v13) = v15;
            *(a1 + 24) = v15;
            v7 = v23;
          }

          v12 = sub_2216F7F9C(a3, v13, v7);
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

unsigned __int8 *TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::_InternalSerialize(TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  a2 = TSP::CFUUIDArchive::_InternalSerialize(v8, v10, a3);
LABEL_24:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::RequiredFieldsByteSizeFallback(TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::CFUUIDArchive::ByteSizeLong(*(this + 3));
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

uint64_t TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::ByteSizeLong(TSP::CFUUIDArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::CFUUIDArchive::ByteSizeLong(this[3]);
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

uint64_t TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::MergeFrom(TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::MergeFrom(uint64_t this, const TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry *a2)
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

        v6 = MEMORY[0x223DA0300](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80A28];
      }

      this = TSP::CFUUIDArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::Clear(this);

    return TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::CopyFrom(uint64_t *this, const TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::Clear(this);

    return TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::InternalSwap(TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry *this, TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry *a2)
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

TSCE::OwnerIDMapArchive *TSCE::OwnerIDMapArchive::OwnerIDMapArchive(TSCE::OwnerIDMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AD2E0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 14) = 0;
  if (atomic_load_explicit(scc_info_OwnerIDMapArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_22151A820(_Unwind_Exception *a1)
{
  if (*(v2 + 44) >= 1)
  {
    sub_2216FF128(v3);
  }

  sub_22156A26C(v1);
  _Unwind_Resume(a1);
}

TSCE::OwnerIDMapArchive *TSCE::OwnerIDMapArchive::OwnerIDMapArchive(TSCE::OwnerIDMapArchive *this, const TSCE::OwnerIDMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AD2E0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22156A2F0(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

  *(this + 14) = 0;
  v13 = *(a2 + 1);
  if (v13)
  {
    sub_22156734C(v4, (v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_22151A968(_Unwind_Exception *a1)
{
  if (*(v2 + 44) >= 1)
  {
    v4 = *(v2 + 48);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  sub_22156A26C(v1);
  _Unwind_Resume(a1);
}

void TSCE::OwnerIDMapArchive::~OwnerIDMapArchive(TSCE::OwnerIDMapArchive *this)
{
  sub_2214DFCF8(this + 1);
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

  sub_22156A26C(this + 2);
}

{
  TSCE::OwnerIDMapArchive::~OwnerIDMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::OwnerIDMapArchive::default_instance(TSCE::OwnerIDMapArchive *this)
{
  if (atomic_load_explicit(scc_info_OwnerIDMapArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_OwnerIDMapArchive_default_instance_;
}

uint64_t *TSCE::OwnerIDMapArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 32) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TSCE::OwnerIDMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  if (sub_221567030(a3, &v28))
  {
    return v28;
  }

  while (1)
  {
    v6 = (v28 + 1);
    v7 = *v28;
    if ((*v28 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v28 + 2);
LABEL_6:
      v28 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v8 - 128));
    v28 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v27;
LABEL_7:
    if (v7 >> 3 != 2)
    {
      if (v7 >> 3 != 1 || v7 != 10)
      {
        goto LABEL_12;
      }

      v18 = (v6 - 1);
      while (1)
      {
        v19 = (v18 + 1);
        v28 = (v18 + 1);
        v20 = *(a1 + 32);
        if (!v20)
        {
          goto LABEL_38;
        }

        v25 = *(a1 + 24);
        v21 = *v20;
        if (v25 < *v20)
        {
          *(a1 + 24) = v25 + 1;
          v22 = *&v20[2 * v25 + 2];
          goto LABEL_42;
        }

        if (v21 == *(a1 + 28))
        {
LABEL_38:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
          v20 = *(a1 + 32);
          v21 = *v20;
        }

        *v20 = v21 + 1;
        v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry>(*(a1 + 16));
        v23 = *(a1 + 24);
        v24 = *(a1 + 32) + 8 * v23;
        *(a1 + 24) = v23 + 1;
        *(v24 + 8) = v22;
        v19 = v28;
LABEL_42:
        v18 = sub_2216FB12C(a3, v22, v19);
        v28 = v18;
        if (!v18)
        {
          return 0;
        }

        if (*a3 <= v18 || *v18 != 10)
        {
          goto LABEL_34;
        }
      }
    }

    if (v7 == 16)
    {
      break;
    }

    if (v7 == 18)
    {
      v11 = google::protobuf::internal::PackedUInt32Parser();
      goto LABEL_19;
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
      return v28;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_19:
    v28 = v11;
    if (!v11)
    {
      return 0;
    }

LABEL_34:
    if (sub_221567030(a3, &v28))
    {
      return v28;
    }
  }

  v12 = v6 - 1;
  while (1)
  {
    v28 = (v12 + 1);
    v13 = v12[1];
    if (v12[1] < 0)
    {
      v14 = v13 + (v12[2] << 7);
      v13 = v14 - 128;
      if (v12[2] < 0)
      {
        v12 = google::protobuf::internal::VarintParseSlow32((v12 + 1), (v14 - 128));
        v13 = v15;
      }

      else
      {
        v12 += 3;
      }
    }

    else
    {
      v12 += 2;
    }

    v28 = v12;
    v16 = *(a1 + 40);
    if (v16 == *(a1 + 44))
    {
      v17 = v16 + 1;
      sub_2210BBC64((a1 + 40), v16 + 1);
      *(*(a1 + 48) + 4 * v16) = v13;
      v12 = v28;
    }

    else
    {
      *(*(a1 + 48) + 4 * v16) = v13;
      v17 = v16 + 1;
    }

    *(a1 + 40) = v17;
    if (!v12)
    {
      return 0;
    }

    if (*a3 <= v12 || *v12 != 16)
    {
      goto LABEL_34;
    }
  }
}

unsigned __int8 *TSCE::OwnerIDMapArchive::_InternalSerialize(TSCE::OwnerIDMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::_InternalSerialize(v7, v9, a3);
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

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::OwnerIDMapArchive::ByteSizeLong(TSCE::OwnerIDMapArchive *this)
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
      v7 = TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = google::protobuf::internal::WireFormatLite::UInt32Size() + v2 + *(this + 10);
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v8, this + 56);
  }

  else
  {
    *(this + 14) = v8;
    return v8;
  }
}

uint64_t *TSCE::OwnerIDMapArchive::MergeFrom(TSCE::OwnerIDMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::OwnerIDMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TSCE::OwnerIDMapArchive::MergeFrom(uint64_t *this, const TSCE::OwnerIDMapArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 2));
    this = sub_22156A2F0((v3 + 2), v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
    v8 = *(v3 + 6) + v5;
    *(v3 + 6) = v8;
    v9 = v3[4];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 10);
  if (v10)
  {
    v12 = *(v3 + 10);
    v11 = (v3 + 5);
    sub_2210BBC64(v11, v12 + v10);
    v13 = *(v11 + 1);
    *v11 += *(a2 + 10);
    v14 = (v13 + 4 * v12);
    v15 = *(a2 + 6);
    v16 = 4 * *(a2 + 10);

    return memcpy(v14, v15, v16);
  }

  return this;
}