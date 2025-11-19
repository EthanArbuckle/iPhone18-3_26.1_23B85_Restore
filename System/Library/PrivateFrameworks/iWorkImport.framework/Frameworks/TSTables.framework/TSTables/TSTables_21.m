unsigned __int8 *TSCE::IndexSetArchive_IndexSetEntry::_InternalSerialize(TSCE::IndexSetArchive_IndexSetEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        goto LABEL_23;
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
        v10 = v7 >> 7;
        ++a2;
        v11 = v7 >> 14;
        v7 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 16;
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v9 = v8 >> 7;
    if (v8 >> 14)
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
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v8;
    a2 += 2;
  }

LABEL_23:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::IndexSetArchive_IndexSetEntry::ByteSizeLong(TSCE::IndexSetArchive_IndexSetEntry *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v3 = *(this + 6);
    if (v3 < 0)
    {
      v2 = 11;
      if ((v1 & 2) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v4 = *(this + 7);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v5;
LABEL_12:
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSCE::IndexSetArchive_IndexSetEntry::MergeFrom(TSCE::IndexSetArchive_IndexSetEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::IndexSetArchive_IndexSetEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::IndexSetArchive_IndexSetEntry::MergeFrom(uint64_t this, const TSCE::IndexSetArchive_IndexSetEntry *a2)
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

TSCE::IndexSetArchive_IndexSetEntry *TSCE::IndexSetArchive_IndexSetEntry::CopyFrom(TSCE::IndexSetArchive_IndexSetEntry *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::IndexSetArchive_IndexSetEntry::Clear(this);

    return TSCE::IndexSetArchive_IndexSetEntry::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::IndexSetArchive_IndexSetEntry *TSCE::IndexSetArchive_IndexSetEntry::CopyFrom(TSCE::IndexSetArchive_IndexSetEntry *this, const TSCE::IndexSetArchive_IndexSetEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::IndexSetArchive_IndexSetEntry::Clear(this);

    return TSCE::IndexSetArchive_IndexSetEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::IndexSetArchive_IndexSetEntry::InternalSwap(TSCE::IndexSetArchive_IndexSetEntry *this, TSCE::IndexSetArchive_IndexSetEntry *a2)
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

TSCE::IndexSetArchive *TSCE::IndexSetArchive::IndexSetArchive(TSCE::IndexSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AA6E0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_IndexSetArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::IndexSetArchive *TSCE::IndexSetArchive::IndexSetArchive(TSCE::IndexSetArchive *this, const TSCE::IndexSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AA6E0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_2215674E8(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::IndexSetArchive::~IndexSetArchive(TSCE::IndexSetArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567450(this + 2);
}

{
  TSCE::IndexSetArchive::~IndexSetArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::IndexSetArchive::default_instance(TSCE::IndexSetArchive *this)
{
  if (atomic_load_explicit(scc_info_IndexSetArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_IndexSetArchive_default_instance_;
}

uint64_t *TSCE::IndexSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::IndexSetArchive_IndexSetEntry::Clear(v4);
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

google::protobuf::internal *TSCE::IndexSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive_IndexSetEntry>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216F82DC(a3, v13, v10);
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

unsigned __int8 *TSCE::IndexSetArchive::_InternalSerialize(TSCE::IndexSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::IndexSetArchive_IndexSetEntry::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::IndexSetArchive::ByteSizeLong(TSCE::IndexSetArchive *this)
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
      v7 = TSCE::IndexSetArchive_IndexSetEntry::ByteSizeLong(v6);
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

uint64_t TSCE::IndexSetArchive::MergeFrom(TSCE::IndexSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::IndexSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::IndexSetArchive::MergeFrom(uint64_t this, const TSCE::IndexSetArchive *a2)
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
    this = sub_2215674E8(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::IndexSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::IndexSetArchive::Clear(this);

    return TSCE::IndexSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::IndexSetArchive::CopyFrom(uint64_t *this, const TSCE::IndexSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::IndexSetArchive::Clear(this);

    return TSCE::IndexSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::IndexSetArchive::IsInitialized(TSCE::IndexSetArchive *this)
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

  while ((*(v3 + 16) & 1) != 0);
  return v2 < 1;
}

__n128 TSCE::IndexSetArchive::InternalSwap(TSCE::IndexSetArchive *this, TSCE::IndexSetArchive *a2)
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

TSCE::CellCoordSetArchive_ColumnEntry *TSCE::CellCoordSetArchive_ColumnEntry::CellCoordSetArchive_ColumnEntry(TSCE::CellCoordSetArchive_ColumnEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AA790;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellCoordSetArchive_ColumnEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834AA790;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellCoordSetArchive_ColumnEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSCE::CellCoordSetArchive_ColumnEntry *TSCE::CellCoordSetArchive_ColumnEntry::CellCoordSetArchive_ColumnEntry(TSCE::CellCoordSetArchive_ColumnEntry *this, const TSCE::CellCoordSetArchive_ColumnEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AA790;
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

void TSCE::CellCoordSetArchive_ColumnEntry::~CellCoordSetArchive_ColumnEntry(TSCE::CellCoordSetArchive_ColumnEntry *this)
{
  if (this != &TSCE::_CellCoordSetArchive_ColumnEntry_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::IndexSetArchive::~IndexSetArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::CellCoordSetArchive_ColumnEntry::~CellCoordSetArchive_ColumnEntry(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::CellCoordSetArchive_ColumnEntry::default_instance(TSCE::CellCoordSetArchive_ColumnEntry *this)
{
  if (atomic_load_explicit(scc_info_CellCoordSetArchive_ColumnEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CellCoordSetArchive_ColumnEntry_default_instance_;
}

uint64_t *TSCE::CellCoordSetArchive_ColumnEntry::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSCE::IndexSetArchive::Clear(this[3]);
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

google::protobuf::internal *TSCE::CellCoordSetArchive_ColumnEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

            v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v14);
            *(a1 + 24) = v13;
            v7 = v22;
          }

          v12 = sub_2216F83AC(a3, v13, v7);
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

      if (v8 >> 3 != 1 || v8 != 8)
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

unsigned __int8 *TSCE::CellCoordSetArchive_ColumnEntry::_InternalSerialize(TSCE::CellCoordSetArchive_ColumnEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
  v9 = *(v8 + 10);
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

  a2 = TSCE::IndexSetArchive::_InternalSerialize(v8, v10, a3);
LABEL_24:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CellCoordSetArchive_ColumnEntry::RequiredFieldsByteSizeFallback(TSCE::CellCoordSetArchive_ColumnEntry *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCE::IndexSetArchive::ByteSizeLong(*(this + 3));
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

uint64_t TSCE::CellCoordSetArchive_ColumnEntry::ByteSizeLong(TSCE::IndexSetArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSCE::CellCoordSetArchive_ColumnEntry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::IndexSetArchive::ByteSizeLong(this[3]);
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

uint64_t TSCE::CellCoordSetArchive_ColumnEntry::MergeFrom(TSCE::CellCoordSetArchive_ColumnEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellCoordSetArchive_ColumnEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellCoordSetArchive_ColumnEntry::MergeFrom(uint64_t this, const TSCE::CellCoordSetArchive_ColumnEntry *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCE::_IndexSetArchive_default_instance_;
      }

      this = TSCE::IndexSetArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSCE::CellCoordSetArchive_ColumnEntry::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellCoordSetArchive_ColumnEntry::Clear(this);

    return TSCE::CellCoordSetArchive_ColumnEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellCoordSetArchive_ColumnEntry::CopyFrom(uint64_t *this, const TSCE::CellCoordSetArchive_ColumnEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellCoordSetArchive_ColumnEntry::Clear(this);

    return TSCE::CellCoordSetArchive_ColumnEntry::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::CellCoordSetArchive_ColumnEntry::IsInitialized(TSCE::CellCoordSetArchive_ColumnEntry *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  v1 = *(this + 3);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  do
  {
    result = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v5 = *(v3 + 8 * v2--);
  }

  while ((*(v5 + 16) & 1) != 0);
  return result;
}

uint64_t *TSCE::CellCoordSetArchive_ColumnEntry::InternalSwap(TSCE::CellCoordSetArchive_ColumnEntry *this, TSCE::CellCoordSetArchive_ColumnEntry *a2)
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

TSCE::CellCoordSetArchive *TSCE::CellCoordSetArchive::CellCoordSetArchive(TSCE::CellCoordSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AA840;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_CellCoordSetArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::CellCoordSetArchive *TSCE::CellCoordSetArchive::CellCoordSetArchive(TSCE::CellCoordSetArchive *this, const TSCE::CellCoordSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AA840;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22156762C(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::CellCoordSetArchive::~CellCoordSetArchive(TSCE::CellCoordSetArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_2215675A8(this + 2);
}

{
  TSCE::CellCoordSetArchive::~CellCoordSetArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::CellCoordSetArchive::default_instance(TSCE::CellCoordSetArchive *this)
{
  if (atomic_load_explicit(scc_info_CellCoordSetArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CellCoordSetArchive_default_instance_;
}

uint64_t *TSCE::CellCoordSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellCoordSetArchive_ColumnEntry::Clear(v4);
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

google::protobuf::internal *TSCE::CellCoordSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive_ColumnEntry>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216F847C(a3, v13, v10);
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

unsigned __int8 *TSCE::CellCoordSetArchive::_InternalSerialize(TSCE::CellCoordSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::CellCoordSetArchive_ColumnEntry::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CellCoordSetArchive::ByteSizeLong(TSCE::CellCoordSetArchive *this)
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
      v7 = TSCE::CellCoordSetArchive_ColumnEntry::ByteSizeLong(v6);
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

uint64_t TSCE::CellCoordSetArchive::MergeFrom(TSCE::CellCoordSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellCoordSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellCoordSetArchive::MergeFrom(uint64_t this, const TSCE::CellCoordSetArchive *a2)
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
    this = sub_22156762C(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::CellCoordSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellCoordSetArchive::Clear(this);

    return TSCE::CellCoordSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellCoordSetArchive::CopyFrom(uint64_t *this, const TSCE::CellCoordSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellCoordSetArchive::Clear(this);

    return TSCE::CellCoordSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL sub_2214E5E48(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = *(a1 + 16) + 8;
  do
  {
    v3 = *(v2 + 8 * (v1 - 1));
    result = (*(v3 + 16) & 3) == 3;
    if ((*(v3 + 16) & 3) != 3)
    {
      break;
    }

    v5 = *(v3 + 24);
    v6 = *(v5 + 24);
    v7 = *(v5 + 32);
    while (v6 >= 1)
    {
      v8 = *(v7 + 8 * v6--);
      if ((*(v8 + 16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  while (v1-- >= 2);
  return result;
}

__n128 TSCE::CellCoordSetArchive::InternalSwap(TSCE::CellCoordSetArchive *this, TSCE::CellCoordSetArchive *a2)
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

TSCE::InternalCellRefSetArchive_OwnerEntry *TSCE::InternalCellRefSetArchive_OwnerEntry::InternalCellRefSetArchive_OwnerEntry(TSCE::InternalCellRefSetArchive_OwnerEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AA8F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InternalCellRefSetArchive_OwnerEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834AA8F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InternalCellRefSetArchive_OwnerEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSCE::InternalCellRefSetArchive_OwnerEntry *TSCE::InternalCellRefSetArchive_OwnerEntry::InternalCellRefSetArchive_OwnerEntry(TSCE::InternalCellRefSetArchive_OwnerEntry *this, const TSCE::InternalCellRefSetArchive_OwnerEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AA8F0;
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

void TSCE::InternalCellRefSetArchive_OwnerEntry::~InternalCellRefSetArchive_OwnerEntry(TSCE::InternalCellRefSetArchive_OwnerEntry *this)
{
  if (this != TSCE::_InternalCellRefSetArchive_OwnerEntry_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::CellCoordSetArchive::~CellCoordSetArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::InternalCellRefSetArchive_OwnerEntry::~InternalCellRefSetArchive_OwnerEntry(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::InternalCellRefSetArchive_OwnerEntry::default_instance(TSCE::InternalCellRefSetArchive_OwnerEntry *this)
{
  if (atomic_load_explicit(scc_info_InternalCellRefSetArchive_OwnerEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_InternalCellRefSetArchive_OwnerEntry_default_instance_;
}

uint64_t *TSCE::InternalCellRefSetArchive_OwnerEntry::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSCE::CellCoordSetArchive::Clear(this[3]);
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

google::protobuf::internal *TSCE::InternalCellRefSetArchive_OwnerEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

            v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v14);
            *(a1 + 24) = v13;
            v7 = v22;
          }

          v12 = sub_2216F854C(a3, v13, v7);
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

      if (v8 >> 3 != 1 || v8 != 8)
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

unsigned __int8 *TSCE::InternalCellRefSetArchive_OwnerEntry::_InternalSerialize(TSCE::InternalCellRefSetArchive_OwnerEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
  v9 = *(v8 + 10);
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

  a2 = TSCE::CellCoordSetArchive::_InternalSerialize(v8, v10, a3);
LABEL_24:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::InternalCellRefSetArchive_OwnerEntry::RequiredFieldsByteSizeFallback(TSCE::InternalCellRefSetArchive_OwnerEntry *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCE::CellCoordSetArchive::ByteSizeLong(*(this + 3));
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

uint64_t TSCE::InternalCellRefSetArchive_OwnerEntry::ByteSizeLong(TSCE::CellCoordSetArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSCE::InternalCellRefSetArchive_OwnerEntry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::CellCoordSetArchive::ByteSizeLong(this[3]);
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

uint64_t TSCE::InternalCellRefSetArchive_OwnerEntry::MergeFrom(TSCE::InternalCellRefSetArchive_OwnerEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::InternalCellRefSetArchive_OwnerEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::InternalCellRefSetArchive_OwnerEntry::MergeFrom(uint64_t this, const TSCE::InternalCellRefSetArchive_OwnerEntry *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCE::_CellCoordSetArchive_default_instance_;
      }

      this = TSCE::CellCoordSetArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSCE::InternalCellRefSetArchive_OwnerEntry::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::InternalCellRefSetArchive_OwnerEntry::Clear(this);

    return TSCE::InternalCellRefSetArchive_OwnerEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::InternalCellRefSetArchive_OwnerEntry::CopyFrom(uint64_t *this, const TSCE::InternalCellRefSetArchive_OwnerEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::InternalCellRefSetArchive_OwnerEntry::Clear(this);

    return TSCE::InternalCellRefSetArchive_OwnerEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::InternalCellRefSetArchive_OwnerEntry::InternalSwap(TSCE::InternalCellRefSetArchive_OwnerEntry *this, TSCE::InternalCellRefSetArchive_OwnerEntry *a2)
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

TSCE::InternalCellRefSetArchive *TSCE::InternalCellRefSetArchive::InternalCellRefSetArchive(TSCE::InternalCellRefSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AA9A0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_InternalCellRefSetArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::InternalCellRefSetArchive *TSCE::InternalCellRefSetArchive::InternalCellRefSetArchive(TSCE::InternalCellRefSetArchive *this, const TSCE::InternalCellRefSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AA9A0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_221567770(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::InternalCellRefSetArchive::~InternalCellRefSetArchive(TSCE::InternalCellRefSetArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_2215676EC(this + 2);
}

{
  TSCE::InternalCellRefSetArchive::~InternalCellRefSetArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::InternalCellRefSetArchive::default_instance(TSCE::InternalCellRefSetArchive *this)
{
  if (atomic_load_explicit(scc_info_InternalCellRefSetArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_InternalCellRefSetArchive_default_instance_;
}

uint64_t *TSCE::InternalCellRefSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::InternalCellRefSetArchive_OwnerEntry::Clear(v4);
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

google::protobuf::internal *TSCE::InternalCellRefSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive_OwnerEntry>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216F861C(a3, v13, v10);
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

unsigned __int8 *TSCE::InternalCellRefSetArchive::_InternalSerialize(TSCE::InternalCellRefSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::InternalCellRefSetArchive_OwnerEntry::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::InternalCellRefSetArchive::ByteSizeLong(TSCE::InternalCellRefSetArchive *this)
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
      v7 = TSCE::InternalCellRefSetArchive_OwnerEntry::ByteSizeLong(v6);
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

uint64_t TSCE::InternalCellRefSetArchive::MergeFrom(TSCE::InternalCellRefSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::InternalCellRefSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::InternalCellRefSetArchive::MergeFrom(uint64_t this, const TSCE::InternalCellRefSetArchive *a2)
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
    this = sub_221567770(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::InternalCellRefSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::InternalCellRefSetArchive::Clear(this);

    return TSCE::InternalCellRefSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::InternalCellRefSetArchive::CopyFrom(uint64_t *this, const TSCE::InternalCellRefSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::InternalCellRefSetArchive::Clear(this);

    return TSCE::InternalCellRefSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL sub_2214E71E0(uint64_t a1)
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

  while (sub_2214E5E48(*(v4 + 24) + 16));
  return v3 < 1;
}

__n128 TSCE::InternalCellRefSetArchive::InternalSwap(TSCE::InternalCellRefSetArchive *this, TSCE::InternalCellRefSetArchive *a2)
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

double TSCE::ColumnRowSize::ColumnRowSize(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2834AAA50;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = xmmword_2217E2210;
  return result;
}

{
  *a1 = &unk_2834AAA50;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = xmmword_2217E2210;
  return result;
}

TSCE::ColumnRowSize *TSCE::ColumnRowSize::ColumnRowSize(TSCE::ColumnRowSize *this, const TSCE::ColumnRowSize *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AAA50;
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

void TSCE::ColumnRowSize::~ColumnRowSize(TSCE::ColumnRowSize *this)
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

uint64_t *TSCE::ColumnRowSize::default_instance(TSCE::ColumnRowSize *this)
{
  if (atomic_load_explicit(scc_info_ColumnRowSize_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ColumnRowSize_default_instance_;
}

uint64_t *TSCE::ColumnRowSize::Clear(TSCE::ColumnRowSize *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0x100000001;
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

google::protobuf::internal *TSCE::ColumnRowSize::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_12;
        }

        v5 |= 2u;
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
          v24 = v12;
          *(a1 + 28) = v13;
          goto LABEL_29;
        }

        v20 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v24 = v20;
        *(a1 + 28) = v21;
        if (!v20)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v8 >> 3 != 1 || v8 != 8)
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

          v24 = google::protobuf::internal::UnknownFieldParse();
          if (!v24)
          {
LABEL_38:
            v24 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v5 |= 1u;
        v15 = (v7 + 1);
        LODWORD(v16) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_28:
          v24 = v15;
          *(a1 + 24) = v16;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow32(v7, v16);
        v24 = v22;
        *(a1 + 24) = v23;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

LABEL_29:
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

unsigned __int8 *TSCE::ColumnRowSize::_InternalSerialize(TSCE::ColumnRowSize *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        goto LABEL_23;
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
        v10 = v7 >> 7;
        ++a2;
        v11 = v7 >> 14;
        v7 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 16;
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v9 = v8 >> 7;
    if (v8 >> 14)
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
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v8;
    a2 += 2;
  }

LABEL_23:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ColumnRowSize::ByteSizeLong(TSCE::ColumnRowSize *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_8;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSCE::ColumnRowSize::MergeFrom(TSCE::ColumnRowSize *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ColumnRowSize::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ColumnRowSize::MergeFrom(uint64_t this, const TSCE::ColumnRowSize *a2)
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

TSCE::ColumnRowSize *TSCE::ColumnRowSize::CopyFrom(TSCE::ColumnRowSize *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ColumnRowSize::Clear(this);

    return TSCE::ColumnRowSize::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::ColumnRowSize *TSCE::ColumnRowSize::CopyFrom(TSCE::ColumnRowSize *this, const TSCE::ColumnRowSize *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ColumnRowSize::Clear(this);

    return TSCE::ColumnRowSize::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ColumnRowSize::InternalSwap(TSCE::ColumnRowSize *this, TSCE::ColumnRowSize *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v7;
  return result;
}

TSCE::CellRectArchive *TSCE::CellRectArchive::CellRectArchive(TSCE::CellRectArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AAB00;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellRectArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834AAB00;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellRectArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCE::CellRectArchive *TSCE::CellRectArchive::CellRectArchive(TSCE::CellRectArchive *this, const TSCE::CellRectArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AAB00;
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

void TSCE::CellRectArchive::~CellRectArchive(TSCE::CellRectArchive *this)
{
  if (this != TSCE::_CellRectArchive_default_instance_)
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
  TSCE::CellRectArchive::~CellRectArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::CellRectArchive::default_instance(TSCE::CellRectArchive *this)
{
  if (atomic_load_explicit(scc_info_CellRectArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_CellRectArchive_default_instance_;
}

uint64_t *TSCE::CellRectArchive::Clear(uint64_t *this)
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

google::protobuf::internal *TSCE::CellRectArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *TSCE::CellRectArchive::_InternalSerialize(TSCE::CellRectArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSCE::CellRectArchive::RequiredFieldsByteSizeFallback(TSCE::CellRectArchive *this)
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

uint64_t TSCE::CellRectArchive::ByteSizeLong(TSCE::CellCoordinateArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSCE::CellRectArchive::RequiredFieldsByteSizeFallback(this);
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

uint64_t TSCE::CellRectArchive::MergeFrom(TSCE::CellRectArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellRectArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellRectArchive::MergeFrom(uint64_t this, const TSCE::CellRectArchive *a2)
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

uint64_t *TSCE::CellRectArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellRectArchive::Clear(this);

    return TSCE::CellRectArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellRectArchive::CopyFrom(uint64_t *this, const TSCE::CellRectArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellRectArchive::Clear(this);

    return TSCE::CellRectArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::CellRectArchive::InternalSwap(TSCE::CellRectArchive *this, TSCE::CellRectArchive *a2)
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

TSP::UUID *TSCE::CellRefSetArchive_OwnerEntry::clear_owner_uid(TSCE::CellRefSetArchive_OwnerEntry *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::CellRefSetArchive_OwnerEntry *TSCE::CellRefSetArchive_OwnerEntry::CellRefSetArchive_OwnerEntry(TSCE::CellRefSetArchive_OwnerEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AABB0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellRefSetArchive_OwnerEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834AABB0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellRefSetArchive_OwnerEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCE::CellRefSetArchive_OwnerEntry *TSCE::CellRefSetArchive_OwnerEntry::CellRefSetArchive_OwnerEntry(TSCE::CellRefSetArchive_OwnerEntry *this, const TSCE::CellRefSetArchive_OwnerEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AABB0;
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

void TSCE::CellRefSetArchive_OwnerEntry::~CellRefSetArchive_OwnerEntry(TSCE::CellRefSetArchive_OwnerEntry *this)
{
  if (this != TSCE::_CellRefSetArchive_OwnerEntry_default_instance_)
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
  TSCE::CellRefSetArchive_OwnerEntry::~CellRefSetArchive_OwnerEntry(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::CellRefSetArchive_OwnerEntry::default_instance(TSCE::CellRefSetArchive_OwnerEntry *this)
{
  if (atomic_load_explicit(scc_info_CellRefSetArchive_OwnerEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_CellRefSetArchive_OwnerEntry_default_instance_;
}

uint64_t *TSCE::CellRefSetArchive_OwnerEntry::Clear(uint64_t *this)
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

google::protobuf::internal *TSCE::CellRefSetArchive_OwnerEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *TSCE::CellRefSetArchive_OwnerEntry::_InternalSerialize(TSCE::CellRefSetArchive_OwnerEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSCE::CellRefSetArchive_OwnerEntry::RequiredFieldsByteSizeFallback(TSCE::CellRefSetArchive_OwnerEntry *this)
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

  v4 = TSP::UUID::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSCE::CellCoordSetArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSCE::CellRefSetArchive_OwnerEntry::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSCE::CellRefSetArchive_OwnerEntry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[3]);
    v3 = TSCE::CellCoordSetArchive::ByteSizeLong(this[4]);
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

uint64_t TSCE::CellRefSetArchive_OwnerEntry::MergeFrom(TSCE::CellRefSetArchive_OwnerEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellRefSetArchive_OwnerEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellRefSetArchive_OwnerEntry::MergeFrom(uint64_t this, const TSCE::CellRefSetArchive_OwnerEntry *a2)
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

uint64_t *TSCE::CellRefSetArchive_OwnerEntry::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellRefSetArchive_OwnerEntry::Clear(this);

    return TSCE::CellRefSetArchive_OwnerEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellRefSetArchive_OwnerEntry::CopyFrom(uint64_t *this, const TSCE::CellRefSetArchive_OwnerEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellRefSetArchive_OwnerEntry::Clear(this);

    return TSCE::CellRefSetArchive_OwnerEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::CellRefSetArchive_OwnerEntry::IsInitialized(TSCE::CellRefSetArchive_OwnerEntry *this)
{
  if ((~*(this + 4) & 3) != 0)
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

__n128 TSCE::CellRefSetArchive_OwnerEntry::InternalSwap(TSCE::CellRefSetArchive_OwnerEntry *this, TSCE::CellRefSetArchive_OwnerEntry *a2)
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

TSCE::CellRefSetArchive *TSCE::CellRefSetArchive::CellRefSetArchive(TSCE::CellRefSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AAC60;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_CellRefSetArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::CellRefSetArchive *TSCE::CellRefSetArchive::CellRefSetArchive(TSCE::CellRefSetArchive *this, const TSCE::CellRefSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AAC60;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_2215678B4(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::CellRefSetArchive::~CellRefSetArchive(TSCE::CellRefSetArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567830(this + 2);
}

{
  TSCE::CellRefSetArchive::~CellRefSetArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::CellRefSetArchive::default_instance(TSCE::CellRefSetArchive *this)
{
  if (atomic_load_explicit(scc_info_CellRefSetArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CellRefSetArchive_default_instance_;
}

uint64_t *TSCE::CellRefSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellRefSetArchive_OwnerEntry::Clear(v4);
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

google::protobuf::internal *TSCE::CellRefSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellRefSetArchive_OwnerEntry>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216F87BC(a3, v13, v10);
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

unsigned __int8 *TSCE::CellRefSetArchive::_InternalSerialize(TSCE::CellRefSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::CellRefSetArchive_OwnerEntry::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CellRefSetArchive::ByteSizeLong(TSCE::CellRefSetArchive *this)
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
      v7 = TSCE::CellRefSetArchive_OwnerEntry::ByteSizeLong(v6);
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

uint64_t TSCE::CellRefSetArchive::MergeFrom(TSCE::CellRefSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellRefSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellRefSetArchive::MergeFrom(uint64_t this, const TSCE::CellRefSetArchive *a2)
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
    this = sub_2215678B4(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::CellRefSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellRefSetArchive::Clear(this);

    return TSCE::CellRefSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellRefSetArchive::CopyFrom(uint64_t *this, const TSCE::CellRefSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellRefSetArchive::Clear(this);

    return TSCE::CellRefSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::CellRefSetArchive::IsInitialized(TSCE::CellRefSetArchive *this)
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
    IsInitialized = TSCE::CellRefSetArchive_OwnerEntry::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSCE::CellRefSetArchive::InternalSwap(TSCE::CellRefSetArchive *this, TSCE::CellRefSetArchive *a2)
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

TSP::UUID *TSCE::UidCoordSetArchive_ColumnEntry::clear_column(TSCE::UidCoordSetArchive_ColumnEntry *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSCE::UidCoordSetArchive_ColumnEntry::clear_row_set(uint64_t this)
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

TSCE::UidCoordSetArchive_ColumnEntry *TSCE::UidCoordSetArchive_ColumnEntry::UidCoordSetArchive_ColumnEntry(TSCE::UidCoordSetArchive_ColumnEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AAD10;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_UidCoordSetArchive_ColumnEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCE::UidCoordSetArchive_ColumnEntry *TSCE::UidCoordSetArchive_ColumnEntry::UidCoordSetArchive_ColumnEntry(TSCE::UidCoordSetArchive_ColumnEntry *this, const TSCE::UidCoordSetArchive_ColumnEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AAD10;
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
  return this;
}

void sub_2214E9CB0(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C40825B58B5);
  sub_221567974((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::UidCoordSetArchive_ColumnEntry::~UidCoordSetArchive_ColumnEntry(TSCE::UidCoordSetArchive_ColumnEntry *this)
{
  if (this != &TSCE::_UidCoordSetArchive_ColumnEntry_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_221567974(this + 3);
}

{
  TSCE::UidCoordSetArchive_ColumnEntry::~UidCoordSetArchive_ColumnEntry(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::UidCoordSetArchive_ColumnEntry::default_instance(TSCE::UidCoordSetArchive_ColumnEntry *this)
{
  if (atomic_load_explicit(scc_info_UidCoordSetArchive_ColumnEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_UidCoordSetArchive_ColumnEntry_default_instance_;
}

uint64_t *TSCE::UidCoordSetArchive_ColumnEntry::Clear(uint64_t *this)
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

google::protobuf::internal *TSCE::UidCoordSetArchive_ColumnEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  while (1)
  {
LABEL_2:
    if (sub_221567030(a3, &v26))
    {
      return v26;
    }

    v5 = (v26 + 1);
    v6 = *v26;
    if ((*v26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v26 + 2);
LABEL_6:
      v26 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v7 - 128));
    v26 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v24;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      v11 = v5 - 1;
      while (1)
      {
        v12 = (v11 + 1);
        v26 = (v11 + 1);
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
        v12 = v26;
LABEL_26:
        v11 = sub_2216F813C(a3, v16, v12);
        v26 = v11;
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
      v20 = *(a1 + 48);
      if (!v20)
      {
        v21 = *(a1 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = MEMORY[0x223DA0360](v21);
        LODWORD(v20) = v22;
        *(a1 + 48) = v22;
        v5 = v26;
      }

      v10 = sub_2216F813C(a3, v20, v5);
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
    v26 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v26;
}

unsigned __int8 *TSCE::UidCoordSetArchive_ColumnEntry::_InternalSerialize(TSCE::UidCoordSetArchive_ColumnEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSP::UUID::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::UidCoordSetArchive_ColumnEntry::ByteSizeLong(TSP::UUID **this)
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
      v10 = TSP::UUID::ByteSizeLong(v9);
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

uint64_t TSCE::UidCoordSetArchive_ColumnEntry::MergeFrom(TSCE::UidCoordSetArchive_ColumnEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::UidCoordSetArchive_ColumnEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::UidCoordSetArchive_ColumnEntry::MergeFrom(uint64_t this, const TSCE::UidCoordSetArchive_ColumnEntry *a2)
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

uint64_t *TSCE::UidCoordSetArchive_ColumnEntry::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UidCoordSetArchive_ColumnEntry::Clear(this);

    return TSCE::UidCoordSetArchive_ColumnEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::UidCoordSetArchive_ColumnEntry::CopyFrom(uint64_t *this, const TSCE::UidCoordSetArchive_ColumnEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UidCoordSetArchive_ColumnEntry::Clear(this);

    return TSCE::UidCoordSetArchive_ColumnEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::UidCoordSetArchive_ColumnEntry::IsInitialized(TSCE::UidCoordSetArchive_ColumnEntry *this)
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

__n128 TSCE::UidCoordSetArchive_ColumnEntry::InternalSwap(__n128 *this, __n128 *a2)
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

TSCE::UidCoordSetArchive *TSCE::UidCoordSetArchive::UidCoordSetArchive(TSCE::UidCoordSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AADC0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_UidCoordSetArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::UidCoordSetArchive *TSCE::UidCoordSetArchive::UidCoordSetArchive(TSCE::UidCoordSetArchive *this, const TSCE::UidCoordSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AADC0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_221567B3C(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::UidCoordSetArchive::~UidCoordSetArchive(TSCE::UidCoordSetArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567AB8(this + 2);
}

{
  TSCE::UidCoordSetArchive::~UidCoordSetArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::UidCoordSetArchive::default_instance(TSCE::UidCoordSetArchive *this)
{
  if (atomic_load_explicit(scc_info_UidCoordSetArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_UidCoordSetArchive_default_instance_;
}

uint64_t *TSCE::UidCoordSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::UidCoordSetArchive_ColumnEntry::Clear(v4);
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

google::protobuf::internal *TSCE::UidCoordSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidCoordSetArchive_ColumnEntry>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216F888C(a3, v13, v10);
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

unsigned __int8 *TSCE::UidCoordSetArchive::_InternalSerialize(TSCE::UidCoordSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::UidCoordSetArchive_ColumnEntry::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::UidCoordSetArchive::ByteSizeLong(TSCE::UidCoordSetArchive *this)
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
      v7 = TSCE::UidCoordSetArchive_ColumnEntry::ByteSizeLong(v6);
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

uint64_t TSCE::UidCoordSetArchive::MergeFrom(TSCE::UidCoordSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::UidCoordSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::UidCoordSetArchive::MergeFrom(uint64_t this, const TSCE::UidCoordSetArchive *a2)
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
    this = sub_221567B3C(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::UidCoordSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UidCoordSetArchive::Clear(this);

    return TSCE::UidCoordSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::UidCoordSetArchive::CopyFrom(uint64_t *this, const TSCE::UidCoordSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UidCoordSetArchive::Clear(this);

    return TSCE::UidCoordSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::UidCoordSetArchive::IsInitialized(TSCE::UidCoordSetArchive *this)
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
    IsInitialized = TSCE::UidCoordSetArchive_ColumnEntry::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSCE::UidCoordSetArchive::InternalSwap(TSCE::UidCoordSetArchive *this, TSCE::UidCoordSetArchive *a2)
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

TSP::UUID *TSCE::UidCellRefSetArchive_OwnerEntry::clear_owner_uid(TSCE::UidCellRefSetArchive_OwnerEntry *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::UidCellRefSetArchive_OwnerEntry *TSCE::UidCellRefSetArchive_OwnerEntry::UidCellRefSetArchive_OwnerEntry(TSCE::UidCellRefSetArchive_OwnerEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AAE70;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UidCellRefSetArchive_OwnerEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834AAE70;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UidCellRefSetArchive_OwnerEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCE::UidCellRefSetArchive_OwnerEntry *TSCE::UidCellRefSetArchive_OwnerEntry::UidCellRefSetArchive_OwnerEntry(TSCE::UidCellRefSetArchive_OwnerEntry *this, const TSCE::UidCellRefSetArchive_OwnerEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AAE70;
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

void TSCE::UidCellRefSetArchive_OwnerEntry::~UidCellRefSetArchive_OwnerEntry(TSCE::UidCellRefSetArchive_OwnerEntry *this)
{
  if (this != TSCE::_UidCellRefSetArchive_OwnerEntry_default_instance_)
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
      TSCE::UidCoordSetArchive::~UidCoordSetArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::UidCellRefSetArchive_OwnerEntry::~UidCellRefSetArchive_OwnerEntry(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::UidCellRefSetArchive_OwnerEntry::default_instance(TSCE::UidCellRefSetArchive_OwnerEntry *this)
{
  if (atomic_load_explicit(scc_info_UidCellRefSetArchive_OwnerEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_UidCellRefSetArchive_OwnerEntry_default_instance_;
}

uint64_t *TSCE::UidCellRefSetArchive_OwnerEntry::Clear(uint64_t *this)
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
      this = TSCE::UidCoordSetArchive::Clear(*(v1 + 32));
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

google::protobuf::internal *TSCE::UidCellRefSetArchive_OwnerEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidCoordSetArchive>(v12);
        *(a1 + 32) = v11;
        v5 = v19;
      }

      v10 = sub_2216F895C(a3, v11, v5);
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

unsigned __int8 *TSCE::UidCellRefSetArchive_OwnerEntry::_InternalSerialize(TSCE::UidCellRefSetArchive_OwnerEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::UidCoordSetArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::UidCellRefSetArchive_OwnerEntry::RequiredFieldsByteSizeFallback(TSCE::UidCellRefSetArchive_OwnerEntry *this)
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

  v4 = TSP::UUID::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSCE::UidCoordSetArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSCE::UidCellRefSetArchive_OwnerEntry::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSCE::UidCellRefSetArchive_OwnerEntry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[3]);
    v3 = TSCE::UidCoordSetArchive::ByteSizeLong(this[4]);
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

uint64_t TSCE::UidCellRefSetArchive_OwnerEntry::MergeFrom(TSCE::UidCellRefSetArchive_OwnerEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::UidCellRefSetArchive_OwnerEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::UidCellRefSetArchive_OwnerEntry::MergeFrom(uint64_t this, const TSCE::UidCellRefSetArchive_OwnerEntry *a2)
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidCoordSetArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSCE::_UidCoordSetArchive_default_instance_;
      }

      return TSCE::UidCoordSetArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSCE::UidCellRefSetArchive_OwnerEntry::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UidCellRefSetArchive_OwnerEntry::Clear(this);

    return TSCE::UidCellRefSetArchive_OwnerEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::UidCellRefSetArchive_OwnerEntry::CopyFrom(uint64_t *this, const TSCE::UidCellRefSetArchive_OwnerEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UidCellRefSetArchive_OwnerEntry::Clear(this);

    return TSCE::UidCellRefSetArchive_OwnerEntry::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::UidCellRefSetArchive_OwnerEntry::IsInitialized(TSCE::UidCellRefSetArchive_OwnerEntry *this)
{
  if ((~*(this + 4) & 3) != 0 || !TSP::UUID::IsInitialized(*(this + 3)))
  {
    return 0;
  }

  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  v4 = *(this + 4);
  v5 = *(v4 + 24);
  do
  {
    v2 = v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v6 = v5 - 1;
    IsInitialized = TSCE::UidCoordSetArchive_ColumnEntry::IsInitialized(*(*(v4 + 32) + 8 * v5));
    v5 = v6;
  }

  while ((IsInitialized & 1) != 0);
  return v2;
}

__n128 TSCE::UidCellRefSetArchive_OwnerEntry::InternalSwap(TSCE::UidCellRefSetArchive_OwnerEntry *this, TSCE::UidCellRefSetArchive_OwnerEntry *a2)
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

TSCE::UidCellRefSetArchive *TSCE::UidCellRefSetArchive::UidCellRefSetArchive(TSCE::UidCellRefSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AAF20;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_UidCellRefSetArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::UidCellRefSetArchive *TSCE::UidCellRefSetArchive::UidCellRefSetArchive(TSCE::UidCellRefSetArchive *this, const TSCE::UidCellRefSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AAF20;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_221567C80(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::UidCellRefSetArchive::~UidCellRefSetArchive(TSCE::UidCellRefSetArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567BFC(this + 2);
}

{
  TSCE::UidCellRefSetArchive::~UidCellRefSetArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::UidCellRefSetArchive::default_instance(TSCE::UidCellRefSetArchive *this)
{
  if (atomic_load_explicit(scc_info_UidCellRefSetArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_UidCellRefSetArchive_default_instance_;
}

uint64_t *TSCE::UidCellRefSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::UidCellRefSetArchive_OwnerEntry::Clear(v4);
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

google::protobuf::internal *TSCE::UidCellRefSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidCellRefSetArchive_OwnerEntry>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216F8A2C(a3, v13, v10);
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

unsigned __int8 *TSCE::UidCellRefSetArchive::_InternalSerialize(TSCE::UidCellRefSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::UidCellRefSetArchive_OwnerEntry::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::UidCellRefSetArchive::ByteSizeLong(TSCE::UidCellRefSetArchive *this)
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
      v7 = TSCE::UidCellRefSetArchive_OwnerEntry::ByteSizeLong(v6);
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

uint64_t TSCE::UidCellRefSetArchive::MergeFrom(TSCE::UidCellRefSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::UidCellRefSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::UidCellRefSetArchive::MergeFrom(uint64_t this, const TSCE::UidCellRefSetArchive *a2)
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
    this = sub_221567C80(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::UidCellRefSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UidCellRefSetArchive::Clear(this);

    return TSCE::UidCellRefSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::UidCellRefSetArchive::CopyFrom(uint64_t *this, const TSCE::UidCellRefSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UidCellRefSetArchive::Clear(this);

    return TSCE::UidCellRefSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::UidCellRefSetArchive::IsInitialized(TSCE::UidCellRefSetArchive *this)
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
    IsInitialized = TSCE::UidCellRefSetArchive_OwnerEntry::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while (IsInitialized);
  return v3 < 1;
}

__n128 TSCE::UidCellRefSetArchive::InternalSwap(TSCE::UidCellRefSetArchive *this, TSCE::UidCellRefSetArchive *a2)
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

TSCE::ReferencesToDirtyArchive *TSCE::ReferencesToDirtyArchive::ReferencesToDirtyArchive(TSCE::ReferencesToDirtyArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AAFD0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ReferencesToDirtyArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  return this;
}

TSCE::ReferencesToDirtyArchive *TSCE::ReferencesToDirtyArchive::ReferencesToDirtyArchive(TSCE::ReferencesToDirtyArchive *this, const TSCE::ReferencesToDirtyArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AAFD0;
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
    sub_221567DC4(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  v11 = *(a2 + 4);
  if (v11)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v11 & 4) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v11 & 8) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v11 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  return this;
}

void sub_2214EC734(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C40290C9B23);
  sub_221567D40((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::ReferencesToDirtyArchive::~ReferencesToDirtyArchive(TSCE::ReferencesToDirtyArchive *this)
{
  sub_2214EC7C0(this);
  sub_2214DFCF8(this + 1);
  sub_221567D40(this + 3);
}

{
  TSCE::ReferencesToDirtyArchive::~ReferencesToDirtyArchive(this);

  JUMPOUT(0x223DA1450);
}

void *sub_2214EC7C0(void *result)
{
  if (result != &TSCE::_ReferencesToDirtyArchive_default_instance_)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      TSCE::IndexSetArchive::~IndexSetArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[7];
    if (v3)
    {
      TSCE::InternalCellRefSetArchive::~InternalCellRefSetArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[8];
    if (v4)
    {
      TSCE::InternalCellRefSetArchive::~InternalCellRefSetArchive(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[9];
    if (v5)
    {
      TSCE::InternalCellRefSetArchive::~InternalCellRefSetArchive(v5);
      MEMORY[0x223DA1450]();
    }

    result = v1[10];
    if (result)
    {
      TSCE::InternalCellRefSetArchive::~InternalCellRefSetArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TSCE::ReferencesToDirtyArchive::default_instance(TSCE::ReferencesToDirtyArchive *this)
{
  if (atomic_load_explicit(scc_info_ReferencesToDirtyArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ReferencesToDirtyArchive_default_instance_;
}

uint64_t *TSCE::ReferencesToDirtyArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::InternalRangeReferenceArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0x1F) == 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    this = TSCE::IndexSetArchive::Clear(*(v1 + 48));
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

LABEL_18:
      this = TSCE::InternalCellRefSetArchive::Clear(*(v1 + 64));
      if ((v5 & 8) == 0)
      {
LABEL_10:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  this = TSCE::InternalCellRefSetArchive::Clear(*(v1 + 56));
  if ((v5 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v5 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_19:
  this = TSCE::InternalCellRefSetArchive::Clear(*(v1 + 72));
  if ((v5 & 0x10) != 0)
  {
LABEL_11:
    this = TSCE::InternalCellRefSetArchive::Clear(*(v1 + 80));
  }

LABEL_12:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_221567398(v6);
  }

  return this;
}

google::protobuf::internal *TSCE::ReferencesToDirtyArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  while (1)
  {
LABEL_2:
    if (sub_221567030(a3, &v30))
    {
      return v30;
    }

    v5 = (v30 + 1);
    v6 = *v30;
    if ((*v30 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v30 + 2);
LABEL_6:
      v30 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v7 - 128));
    v30 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v28;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 3)
    {
      break;
    }

    if (v8 == 1)
    {
      if (v6 == 10)
      {
        *(a1 + 16) |= 1u;
        v13 = *(a1 + 48);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v14);
          *(a1 + 48) = v13;
          v5 = v30;
        }

        v15 = sub_2216F83AC(a3, v13, v5);
        goto LABEL_58;
      }

      goto LABEL_60;
    }

    if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_60;
      }

      *(a1 + 16) |= 2u;
      v10 = *(a1 + 56);
      if (!v10)
      {
        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v24);
        *(a1 + 56) = v10;
        goto LABEL_56;
      }
    }

    else
    {
      if (v8 != 3 || v6 != 26)
      {
        goto LABEL_60;
      }

      *(a1 + 16) |= 4u;
      v10 = *(a1 + 64);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v11);
        *(a1 + 64) = v10;
LABEL_56:
        v5 = v30;
      }
    }

LABEL_57:
    v15 = sub_2216F8AFC(a3, v10, v5);
LABEL_58:
    v30 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  if (v8 != 4)
  {
    if (v8 == 6)
    {
      if (v6 != 50)
      {
        goto LABEL_60;
      }

      *(a1 + 16) |= 8u;
      v10 = *(a1 + 72);
      if (!v10)
      {
        v25 = *(a1 + 8);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v25);
        *(a1 + 72) = v10;
        goto LABEL_56;
      }
    }

    else
    {
      if (v8 != 7 || v6 != 58)
      {
        goto LABEL_60;
      }

      *(a1 + 16) |= 0x10u;
      v10 = *(a1 + 80);
      if (!v10)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v12);
        *(a1 + 80) = v10;
        goto LABEL_56;
      }
    }

    goto LABEL_57;
  }

  if (v6 == 34)
  {
    v16 = (v5 - 1);
    while (1)
    {
      v17 = (v16 + 1);
      v30 = (v16 + 1);
      v18 = *(a1 + 40);
      if (!v18)
      {
        goto LABEL_36;
      }

      v23 = *(a1 + 32);
      v19 = *v18;
      if (v23 < *v18)
      {
        *(a1 + 32) = v23 + 1;
        v20 = *&v18[2 * v23 + 2];
        goto LABEL_40;
      }

      if (v19 == *(a1 + 36))
      {
LABEL_36:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v18 = *(a1 + 40);
        v19 = *v18;
      }

      *v18 = v19 + 1;
      v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalRangeReferenceArchive>(*(a1 + 24));
      v21 = *(a1 + 32);
      v22 = *(a1 + 40) + 8 * v21;
      *(a1 + 32) = v21 + 1;
      *(v22 + 8) = v20;
      v17 = v30;
LABEL_40:
      v16 = sub_2216F8BCC(a3, v20, v17);
      v30 = v16;
      if (!v16)
      {
        return 0;
      }

      if (*a3 <= v16 || *v16 != 34)
      {
        goto LABEL_2;
      }
    }
  }

LABEL_60:
  if (v6)
  {
    v26 = (v6 & 7) == 4;
  }

  else
  {
    v26 = 1;
  }

  if (!v26)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v15 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_58;
  }

  *(a3 + 80) = v6 - 1;
  return v30;
}

unsigned __int8 *TSCE::ReferencesToDirtyArchive::_InternalSerialize(TSCE::ReferencesToDirtyArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::IndexSetArchive::_InternalSerialize(v6, v8, a3);
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

  v12 = *(this + 7);
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

  a2 = TSCE::InternalCellRefSetArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 8);
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

    a2 = TSCE::InternalCellRefSetArchive::_InternalSerialize(v18, v20, a3);
  }

LABEL_35:
  v24 = *(this + 8);
  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v26 = *(*(this + 5) + 8 * i + 8);
      *a2 = 34;
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

      a2 = TSCE::InternalRangeReferenceArchive::_InternalSerialize(v26, v28, a3);
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v32 = *(this + 9);
    *a2 = 50;
    v33 = *(v32 + 10);
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

    a2 = TSCE::InternalCellRefSetArchive::_InternalSerialize(v32, v34, a3);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v38 = *(this + 10);
    *a2 = 58;
    v39 = *(v38 + 10);
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

    a2 = TSCE::InternalCellRefSetArchive::_InternalSerialize(v38, v40, a3);
  }

  v44 = *(this + 1);
  if ((v44 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v44 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ReferencesToDirtyArchive::ByteSizeLong(TSCE::ReferencesToDirtyArchive *this)
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
      v7 = TSCE::InternalRangeReferenceArchive::ByteSizeLong(v6);
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
  if ((v8 & 0x1F) == 0)
  {
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = TSCE::IndexSetArchive::ByteSizeLong(*(this + 6));
    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_20:
      v13 = TSCE::InternalCellRefSetArchive::ByteSizeLong(*(this + 8));
      v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 8) == 0)
      {
LABEL_14:
        if ((v8 & 0x10) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v12 = TSCE::InternalCellRefSetArchive::ByteSizeLong(*(this + 7));
  v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  if ((v8 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_21:
  v14 = TSCE::InternalCellRefSetArchive::ByteSizeLong(*(this + 9));
  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) != 0)
  {
LABEL_15:
    v9 = TSCE::InternalCellRefSetArchive::ByteSizeLong(*(this + 10));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
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

uint64_t TSCE::ReferencesToDirtyArchive::MergeFrom(TSCE::ReferencesToDirtyArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ReferencesToDirtyArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ReferencesToDirtyArchive::MergeFrom(uint64_t this, const TSCE::ReferencesToDirtyArchive *a2)
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
    this = sub_221567DC4(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 0x1F) == 0)
  {
    return this;
  }

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

      v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v12);
      *(v3 + 48) = v11;
    }

    if (*(a2 + 6))
    {
      v13 = *(a2 + 6);
    }

    else
    {
      v13 = &TSCE::_IndexSetArchive_default_instance_;
    }

    this = TSCE::IndexSetArchive::MergeFrom(v11, v13);
  }

  if ((v10 & 2) == 0)
  {
    if ((v10 & 4) == 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    *(v3 + 16) |= 4u;
    v17 = *(v3 + 64);
    if (!v17)
    {
      v18 = *(v3 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v18);
      *(v3 + 64) = v17;
    }

    if (*(a2 + 8))
    {
      v19 = *(a2 + 8);
    }

    else
    {
      v19 = &TSCE::_InternalCellRefSetArchive_default_instance_;
    }

    this = TSCE::InternalCellRefSetArchive::MergeFrom(v17, v19);
    if ((v10 & 8) == 0)
    {
LABEL_19:
      if ((v10 & 0x10) == 0)
      {
        return this;
      }

      goto LABEL_45;
    }

    goto LABEL_37;
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

    v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v15);
    *(v3 + 56) = v14;
  }

  if (*(a2 + 7))
  {
    v16 = *(a2 + 7);
  }

  else
  {
    v16 = &TSCE::_InternalCellRefSetArchive_default_instance_;
  }

  this = TSCE::InternalCellRefSetArchive::MergeFrom(v14, v16);
  if ((v10 & 4) != 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((v10 & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_37:
  *(v3 + 16) |= 8u;
  v20 = *(v3 + 72);
  if (!v20)
  {
    v21 = *(v3 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v21);
    *(v3 + 72) = v20;
  }

  if (*(a2 + 9))
  {
    v22 = *(a2 + 9);
  }

  else
  {
    v22 = &TSCE::_InternalCellRefSetArchive_default_instance_;
  }

  this = TSCE::InternalCellRefSetArchive::MergeFrom(v20, v22);
  if ((v10 & 0x10) != 0)
  {
LABEL_45:
    *(v3 + 16) |= 0x10u;
    v23 = *(v3 + 80);
    if (!v23)
    {
      v24 = *(v3 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v24);
      *(v3 + 80) = v23;
    }

    if (*(a2 + 10))
    {
      v25 = *(a2 + 10);
    }

    else
    {
      v25 = &TSCE::_InternalCellRefSetArchive_default_instance_;
    }

    return TSCE::InternalCellRefSetArchive::MergeFrom(v23, v25);
  }

  return this;
}

uint64_t *TSCE::ReferencesToDirtyArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ReferencesToDirtyArchive::Clear(this);

    return TSCE::ReferencesToDirtyArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ReferencesToDirtyArchive::CopyFrom(uint64_t *this, const TSCE::ReferencesToDirtyArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ReferencesToDirtyArchive::Clear(this);

    return TSCE::ReferencesToDirtyArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::ReferencesToDirtyArchive::IsInitialized(TSCE::ReferencesToDirtyArchive *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = *(*(this + 5) + 8 * v2);
    if ((~*(v3 + 16) & 3) == 0)
    {
      --v2;
      if ((~*(*(v3 + 24) + 16) & 0xF) == 0)
      {
        continue;
      }
    }

    return 0;
  }

  v4 = *(this + 4);
  if (v4)
  {
    v6 = *(this + 6);
    v7 = *(v6 + 24);
    v8 = *(v6 + 32);
    while (v7 >= 1)
    {
      v9 = *(v8 + 8 * v7--);
      if ((*(v9 + 16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  if ((v4 & 2) != 0)
  {
    result = sub_2214E71E0(*(this + 7) + 16);
    if (!result)
    {
      return result;
    }

    v4 = *(this + 4);
  }

  if ((v4 & 4) != 0)
  {
    result = sub_2214E71E0(*(this + 8) + 16);
    if (!result)
    {
      return result;
    }

    v4 = *(this + 4);
  }

  if ((v4 & 8) != 0)
  {
    result = sub_2214E71E0(*(this + 9) + 16);
    if (!result)
    {
      return result;
    }

    v4 = *(this + 4);
  }

  if ((v4 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_2214E71E0(*(this + 10) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCE::ReferencesToDirtyArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  result = a2[4];
  this[4] = result;
  a2[4].n128_u64[0] = v9;
  a2[4].n128_u64[1] = v10;
  v12 = this[5].n128_u64[0];
  this[5].n128_u64[0] = a2[5].n128_u64[0];
  a2[5].n128_u64[0] = v12;
  return result;
}

void *TSCE::CoordMapperArchive_BaseToViewEntry::CoordMapperArchive_BaseToViewEntry(void *result, uint64_t a2)
{
  *result = &unk_2834AB080;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_2834AB080;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCE::CoordMapperArchive_BaseToViewEntry *TSCE::CoordMapperArchive_BaseToViewEntry::CoordMapperArchive_BaseToViewEntry(TSCE::CoordMapperArchive_BaseToViewEntry *this, const TSCE::CoordMapperArchive_BaseToViewEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AB080;
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

void TSCE::CoordMapperArchive_BaseToViewEntry::~CoordMapperArchive_BaseToViewEntry(TSCE::CoordMapperArchive_BaseToViewEntry *this)
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

uint64_t *TSCE::CoordMapperArchive_BaseToViewEntry::default_instance(TSCE::CoordMapperArchive_BaseToViewEntry *this)
{
  if (atomic_load_explicit(scc_info_CoordMapperArchive_BaseToViewEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CoordMapperArchive_BaseToViewEntry_default_instance_;
}

uint64_t *TSCE::CoordMapperArchive_BaseToViewEntry::Clear(TSCE::CoordMapperArchive_BaseToViewEntry *this)
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

google::protobuf::internal *TSCE::CoordMapperArchive_BaseToViewEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_12;
        }

        v5 |= 2u;
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
          v24 = v12;
          *(a1 + 28) = v13;
          goto LABEL_29;
        }

        v20 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v24 = v20;
        *(a1 + 28) = v21;
        if (!v20)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v8 >> 3 != 1 || v8 != 8)
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

          v24 = google::protobuf::internal::UnknownFieldParse();
          if (!v24)
          {
LABEL_38:
            v24 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v5 |= 1u;
        v15 = (v7 + 1);
        LODWORD(v16) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_28:
          v24 = v15;
          *(a1 + 24) = v16;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow32(v7, v16);
        v24 = v22;
        *(a1 + 24) = v23;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

LABEL_29:
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

unsigned __int8 *TSCE::CoordMapperArchive_BaseToViewEntry::_InternalSerialize(TSCE::CoordMapperArchive_BaseToViewEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        goto LABEL_23;
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
        v10 = v7 >> 7;
        ++a2;
        v11 = v7 >> 14;
        v7 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 16;
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v9 = v8 >> 7;
    if (v8 >> 14)
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
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v8;
    a2 += 2;
  }

LABEL_23:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CoordMapperArchive_BaseToViewEntry::RequiredFieldsByteSizeFallback(TSCE::CoordMapperArchive_BaseToViewEntry *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::CoordMapperArchive_BaseToViewEntry::ByteSizeLong(TSCE::CoordMapperArchive_BaseToViewEntry *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v2 = TSCE::CoordMapperArchive_BaseToViewEntry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 2;
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

uint64_t TSCE::CoordMapperArchive_BaseToViewEntry::MergeFrom(TSCE::CoordMapperArchive_BaseToViewEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CoordMapperArchive_BaseToViewEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CoordMapperArchive_BaseToViewEntry::MergeFrom(uint64_t this, const TSCE::CoordMapperArchive_BaseToViewEntry *a2)
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

TSCE::CoordMapperArchive_BaseToViewEntry *TSCE::CoordMapperArchive_BaseToViewEntry::CopyFrom(TSCE::CoordMapperArchive_BaseToViewEntry *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CoordMapperArchive_BaseToViewEntry::Clear(this);

    return TSCE::CoordMapperArchive_BaseToViewEntry::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::CoordMapperArchive_BaseToViewEntry *TSCE::CoordMapperArchive_BaseToViewEntry::CopyFrom(TSCE::CoordMapperArchive_BaseToViewEntry *this, const TSCE::CoordMapperArchive_BaseToViewEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CoordMapperArchive_BaseToViewEntry::Clear(this);

    return TSCE::CoordMapperArchive_BaseToViewEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CoordMapperArchive_BaseToViewEntry::InternalSwap(TSCE::CoordMapperArchive_BaseToViewEntry *this, TSCE::CoordMapperArchive_BaseToViewEntry *a2)
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

void *TSCE::CoordMapperArchive_SummaryToViewEntry::CoordMapperArchive_SummaryToViewEntry(void *result, uint64_t a2)
{
  *result = &unk_2834AB130;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_2834AB130;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCE::CoordMapperArchive_SummaryToViewEntry *TSCE::CoordMapperArchive_SummaryToViewEntry::CoordMapperArchive_SummaryToViewEntry(TSCE::CoordMapperArchive_SummaryToViewEntry *this, const TSCE::CoordMapperArchive_SummaryToViewEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AB130;
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

void TSCE::CoordMapperArchive_SummaryToViewEntry::~CoordMapperArchive_SummaryToViewEntry(TSCE::CoordMapperArchive_SummaryToViewEntry *this)
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

uint64_t *TSCE::CoordMapperArchive_SummaryToViewEntry::default_instance(TSCE::CoordMapperArchive_SummaryToViewEntry *this)
{
  if (atomic_load_explicit(scc_info_CoordMapperArchive_SummaryToViewEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CoordMapperArchive_SummaryToViewEntry_default_instance_;
}

uint64_t *TSCE::CoordMapperArchive_SummaryToViewEntry::Clear(TSCE::CoordMapperArchive_SummaryToViewEntry *this)
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

google::protobuf::internal *TSCE::CoordMapperArchive_SummaryToViewEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_12;
        }

        v5 |= 2u;
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
          v24 = v12;
          *(a1 + 28) = v13;
          goto LABEL_29;
        }

        v20 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v24 = v20;
        *(a1 + 28) = v21;
        if (!v20)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v8 >> 3 != 1 || v8 != 8)
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

          v24 = google::protobuf::internal::UnknownFieldParse();
          if (!v24)
          {
LABEL_38:
            v24 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v5 |= 1u;
        v15 = (v7 + 1);
        LODWORD(v16) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_28:
          v24 = v15;
          *(a1 + 24) = v16;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow32(v7, v16);
        v24 = v22;
        *(a1 + 24) = v23;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

LABEL_29:
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

unsigned __int8 *TSCE::CoordMapperArchive_SummaryToViewEntry::_InternalSerialize(TSCE::CoordMapperArchive_SummaryToViewEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        goto LABEL_23;
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
        v10 = v7 >> 7;
        ++a2;
        v11 = v7 >> 14;
        v7 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 16;
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v9 = v8 >> 7;
    if (v8 >> 14)
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
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v8;
    a2 += 2;
  }

LABEL_23:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CoordMapperArchive_SummaryToViewEntry::RequiredFieldsByteSizeFallback(TSCE::CoordMapperArchive_SummaryToViewEntry *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::CoordMapperArchive_SummaryToViewEntry::ByteSizeLong(TSCE::CoordMapperArchive_SummaryToViewEntry *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v2 = TSCE::CoordMapperArchive_SummaryToViewEntry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 2;
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

uint64_t TSCE::CoordMapperArchive_SummaryToViewEntry::MergeFrom(TSCE::CoordMapperArchive_SummaryToViewEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CoordMapperArchive_SummaryToViewEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CoordMapperArchive_SummaryToViewEntry::MergeFrom(uint64_t this, const TSCE::CoordMapperArchive_SummaryToViewEntry *a2)
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

TSCE::CoordMapperArchive_SummaryToViewEntry *TSCE::CoordMapperArchive_SummaryToViewEntry::CopyFrom(TSCE::CoordMapperArchive_SummaryToViewEntry *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CoordMapperArchive_SummaryToViewEntry::Clear(this);

    return TSCE::CoordMapperArchive_SummaryToViewEntry::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::CoordMapperArchive_SummaryToViewEntry *TSCE::CoordMapperArchive_SummaryToViewEntry::CopyFrom(TSCE::CoordMapperArchive_SummaryToViewEntry *this, const TSCE::CoordMapperArchive_SummaryToViewEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CoordMapperArchive_SummaryToViewEntry::Clear(this);

    return TSCE::CoordMapperArchive_SummaryToViewEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CoordMapperArchive_SummaryToViewEntry::InternalSwap(TSCE::CoordMapperArchive_SummaryToViewEntry *this, TSCE::CoordMapperArchive_SummaryToViewEntry *a2)
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

TSP::UUID *TSCE::CoordMapperArchive::clear_table_uid(TSCE::CoordMapperArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::CoordMapperArchive *TSCE::CoordMapperArchive::CoordMapperArchive(TSCE::CoordMapperArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AB1E0;
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
  if (atomic_load_explicit(scc_info_CoordMapperArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 136) = 0u;
  *(this + 120) = 0u;
  return this;
}

void sub_2214EEA74(_Unwind_Exception *a1)
{
  sub_221567450(v4);
  sub_221567450(v3);
  sub_221567450(v2);
  sub_221567450(v1);
  _Unwind_Resume(a1);
}

TSCE::CoordMapperArchive *TSCE::CoordMapperArchive::CoordMapperArchive(TSCE::CoordMapperArchive *this, const TSCE::CoordMapperArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AB1E0;
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
    sub_221567E84(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_221567E84(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_221567F44(this + 72, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
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
    sub_221567F44(this + 96, v22, (v21 + 8), v20, **(this + 14) - *(this + 26));
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
  return this;
}

void sub_2214EEDBC(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v5, 0x10A1C40290C9B23);
  sub_221567450(v4);
  sub_221567450(v3);
  sub_221567450(v2);
  sub_221567450((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::CoordMapperArchive::~CoordMapperArchive(TSCE::CoordMapperArchive *this)
{
  sub_2214EEEB8(this);
  sub_2214DFCF8(this + 1);
  sub_221567450(this + 12);
  sub_221567450(this + 9);
  sub_221567450(this + 6);
  sub_221567450(this + 3);
}

{
  TSCE::CoordMapperArchive::~CoordMapperArchive(this);

  JUMPOUT(0x223DA1450);
}

void *sub_2214EEEB8(void *result)
{
  if (result != &TSCE::_CoordMapperArchive_default_instance_)
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
      TSCE::IndexSetArchive::~IndexSetArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[17];
    if (v4)
    {
      TSCE::IndexSetArchive::~IndexSetArchive(v4);
      MEMORY[0x223DA1450]();
    }

    result = v1[18];
    if (result)
    {
      TSCE::IndexSetArchive::~IndexSetArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TSCE::CoordMapperArchive::default_instance(TSCE::CoordMapperArchive *this)
{
  if (atomic_load_explicit(scc_info_CoordMapperArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CoordMapperArchive_default_instance_;
}

uint64_t *TSCE::CoordMapperArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CoordMapperArchive_BaseToViewEntry::Clear(v4);
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
      this = TSCE::CoordMapperArchive_BaseToViewEntry::Clear(v7);
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
      this = TSCE::CoordMapperArchive_SummaryToViewEntry::Clear(v10);
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
      this = TSCE::CoordMapperArchive_SummaryToViewEntry::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 16);
  if ((v14 & 0xF) == 0)
  {
    goto LABEL_23;
  }

  if ((v14 & 1) == 0)
  {
    if ((v14 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_28:
    this = TSCE::IndexSetArchive::Clear(*(v1 + 128));
    if ((v14 & 4) == 0)
    {
LABEL_21:
      if ((v14 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_29;
  }

  this = TSP::UUID::Clear(*(v1 + 120));
  if ((v14 & 2) != 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  if ((v14 & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_29:
  this = TSCE::IndexSetArchive::Clear(*(v1 + 136));
  if ((v14 & 8) != 0)
  {
LABEL_22:
    this = TSCE::IndexSetArchive::Clear(*(v1 + 144));
  }

LABEL_23:
  v16 = *(v1 + 8);
  v15 = v1 + 8;
  *(v15 + 8) = 0;
  if (v16)
  {

    return sub_221567398(v15);
  }

  return this;
}

google::protobuf::internal *TSCE::CoordMapperArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v54 = a2;
  while (1)
  {
LABEL_2:
    if (sub_221567030(a3, &v54))
    {
      return v54;
    }

    v5 = (v54 + 1);
    v6 = *v54;
    if ((*v54 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v54 + 2);
LABEL_6:
      v54 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v54, (v7 - 128));
    v54 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v30;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 4)
    {
      if (v6 >> 3 <= 6)
      {
        if (v8 != 5)
        {
          if (v8 != 6 || v6 != 50)
          {
            goto LABEL_98;
          }

          v12 = (v5 - 1);
          while (1)
          {
            v13 = (v12 + 1);
            v54 = (v12 + 1);
            v14 = *(a1 + 64);
            if (!v14)
            {
              goto LABEL_25;
            }

            v19 = *(a1 + 56);
            v15 = *v14;
            if (v19 < *v14)
            {
              *(a1 + 56) = v19 + 1;
              v16 = *&v14[2 * v19 + 2];
              goto LABEL_29;
            }

            if (v15 == *(a1 + 60))
            {
LABEL_25:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v14 = *(a1 + 64);
              v15 = *v14;
            }

            *v14 = v15 + 1;
            v16 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive_BaseToViewEntry>(*(a1 + 48));
            v17 = *(a1 + 56);
            v18 = *(a1 + 64) + 8 * v17;
            *(a1 + 56) = v17 + 1;
            *(v18 + 8) = v16;
            v13 = v54;
LABEL_29:
            v12 = sub_2216F8C9C(a3, v16, v13);
            v54 = v12;
            if (!v12)
            {
              return 0;
            }

            if (*a3 <= v12 || *v12 != 50)
            {
              goto LABEL_2;
            }
          }
        }

        if (v6 != 42)
        {
          goto LABEL_98;
        }

        v35 = (v5 - 1);
        while (1)
        {
          v36 = (v35 + 1);
          v54 = (v35 + 1);
          v37 = *(a1 + 40);
          if (!v37)
          {
            goto LABEL_68;
          }

          v42 = *(a1 + 32);
          v38 = *v37;
          if (v42 < *v37)
          {
            *(a1 + 32) = v42 + 1;
            v39 = *&v37[2 * v42 + 2];
            goto LABEL_72;
          }

          if (v38 == *(a1 + 36))
          {
LABEL_68:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v37 = *(a1 + 40);
            v38 = *v37;
          }

          *v37 = v38 + 1;
          v39 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive_BaseToViewEntry>(*(a1 + 24));
          v40 = *(a1 + 32);
          v41 = *(a1 + 40) + 8 * v40;
          *(a1 + 32) = v40 + 1;
          *(v41 + 8) = v39;
          v36 = v54;
LABEL_72:
          v35 = sub_2216F8C9C(a3, v39, v36);
          v54 = v35;
          if (!v35)
          {
            return 0;
          }

          if (*a3 <= v35 || *v35 != 42)
          {
            goto LABEL_2;
          }
        }
      }

      if (v8 != 7)
      {
        if (v8 != 8 || v6 != 66)
        {
          goto LABEL_98;
        }

        v21 = (v5 - 1);
        while (1)
        {
          v22 = (v21 + 1);
          v54 = (v21 + 1);
          v23 = *(a1 + 112);
          if (!v23)
          {
            goto LABEL_47;
          }

          v28 = *(a1 + 104);
          v24 = *v23;
          if (v28 < *v23)
          {
            *(a1 + 104) = v28 + 1;
            v25 = *&v23[2 * v28 + 2];
            goto LABEL_51;
          }

          if (v24 == *(a1 + 108))
          {
LABEL_47:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
            v23 = *(a1 + 112);
            v24 = *v23;
          }

          *v23 = v24 + 1;
          v25 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive_SummaryToViewEntry>(*(a1 + 96));
          v26 = *(a1 + 104);
          v27 = *(a1 + 112) + 8 * v26;
          *(a1 + 104) = v26 + 1;
          *(v27 + 8) = v25;
          v22 = v54;
LABEL_51:
          v21 = sub_2216F8D6C(a3, v25, v22);
          v54 = v21;
          if (!v21)
          {
            return 0;
          }

          if (*a3 <= v21 || *v21 != 66)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 != 58)
      {
        goto LABEL_98;
      }

      v44 = (v5 - 1);
      while (1)
      {
        v45 = (v44 + 1);
        v54 = (v44 + 1);
        v46 = *(a1 + 88);
        if (!v46)
        {
          goto LABEL_88;
        }

        v51 = *(a1 + 80);
        v47 = *v46;
        if (v51 < *v46)
        {
          *(a1 + 80) = v51 + 1;
          v48 = *&v46[2 * v51 + 2];
          goto LABEL_92;
        }

        if (v47 == *(a1 + 84))
        {
LABEL_88:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
          v46 = *(a1 + 88);
          v47 = *v46;
        }

        *v46 = v47 + 1;
        v48 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive_SummaryToViewEntry>(*(a1 + 72));
        v49 = *(a1 + 80);
        v50 = *(a1 + 88) + 8 * v49;
        *(a1 + 80) = v49 + 1;
        *(v50 + 8) = v48;
        v45 = v54;
LABEL_92:
        v44 = sub_2216F8D6C(a3, v48, v45);
        v54 = v44;
        if (!v44)
        {
          return 0;
        }

        if (*a3 <= v44 || *v44 != 58)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 >> 3 <= 2)
    {
      break;
    }

    if (v8 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_98;
      }

      *(a1 + 16) |= 4u;
      v10 = *(a1 + 136);
      if (!v10)
      {
        v43 = *(a1 + 8);
        if (v43)
        {
          v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v43);
        *(a1 + 136) = v10;
        goto LABEL_83;
      }
    }

    else
    {
      if (v8 != 4 || v6 != 34)
      {
        goto LABEL_98;
      }

      *(a1 + 16) |= 8u;
      v10 = *(a1 + 144);
      if (!v10)
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v20);
        *(a1 + 144) = v10;
        goto LABEL_83;
      }
    }

LABEL_84:
    v34 = sub_2216F83AC(a3, v10, v5);
LABEL_105:
    v54 = v34;
    if (!v34)
    {
      return 0;
    }
  }

  if (v8 != 1)
  {
    if (v8 != 2 || v6 != 18)
    {
      goto LABEL_98;
    }

    *(a1 + 16) |= 2u;
    v10 = *(a1 + 128);
    if (!v10)
    {
      v11 = *(a1 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v11);
      *(a1 + 128) = v10;
LABEL_83:
      v5 = v54;
      goto LABEL_84;
    }

    goto LABEL_84;
  }

  if (v6 == 10)
  {
    *(a1 + 16) |= 1u;
    v31 = *(a1 + 120);
    if (!v31)
    {
      v32 = *(a1 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = MEMORY[0x223DA0360](v32);
      LODWORD(v31) = v33;
      *(a1 + 120) = v33;
      v5 = v54;
    }

    v34 = sub_2216F813C(a3, v31, v5);
    goto LABEL_105;
  }

LABEL_98:
  if (v6)
  {
    v52 = (v6 & 7) == 4;
  }

  else
  {
    v52 = 1;
  }

  if (!v52)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v34 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_105;
  }

  *(a3 + 80) = v6 - 1;
  return v54;
}

unsigned __int8 *TSCE::CoordMapperArchive::_InternalSerialize(TSCE::CoordMapperArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  v12 = *(this + 16);
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

  a2 = TSCE::IndexSetArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 17);
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

  a2 = TSCE::IndexSetArchive::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(this + 18);
    *a2 = 34;
    v25 = *(v24 + 10);
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

    a2 = TSCE::IndexSetArchive::_InternalSerialize(v24, v26, a3);
  }

LABEL_46:
  v30 = *(this + 8);
  if (v30)
  {
    for (i = 0; i != v30; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v32 = *(*(this + 5) + 8 * i + 8);
      *a2 = 42;
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

      a2 = TSCE::CoordMapperArchive_BaseToViewEntry::_InternalSerialize(v32, v34, a3);
    }
  }

  v38 = *(this + 14);
  if (v38)
  {
    for (j = 0; j != v38; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v40 = *(*(this + 8) + 8 * j + 8);
      *a2 = 50;
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

      a2 = TSCE::CoordMapperArchive_BaseToViewEntry::_InternalSerialize(v40, v42, a3);
    }
  }

  v46 = *(this + 20);
  if (v46)
  {
    for (k = 0; k != v46; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v48 = *(*(this + 11) + 8 * k + 8);
      *a2 = 58;
      v49 = *(v48 + 5);
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

      a2 = TSCE::CoordMapperArchive_SummaryToViewEntry::_InternalSerialize(v48, v50, a3);
    }
  }

  v54 = *(this + 26);
  if (v54)
  {
    for (m = 0; m != v54; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v56 = *(*(this + 14) + 8 * m + 8);
      *a2 = 66;
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

      a2 = TSCE::CoordMapperArchive_SummaryToViewEntry::_InternalSerialize(v56, v58, a3);
    }
  }

  v62 = *(this + 1);
  if ((v62 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v62 & 0xFFFFFFFFFFFFFFFELL) + 8);
}