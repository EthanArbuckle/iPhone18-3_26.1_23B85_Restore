google::protobuf::internal *TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::ByteSizeLong(TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *this)
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

uint64_t TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::MergeFrom(TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *a2)
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

TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::CopyFrom(TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::CopyFrom(TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *this, const TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::InternalSwap(TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *this, TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive *a2)
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

uint64_t TSCE::ASTNodeArrayArchive_ASTUidList::clear_uid(uint64_t this)
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

TSCE::ASTNodeArrayArchive_ASTUidList *TSCE::ASTNodeArrayArchive_ASTUidList::ASTNodeArrayArchive_ASTUidList(TSCE::ASTNodeArrayArchive_ASTUidList *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AE570;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTUidList_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::ASTNodeArrayArchive_ASTUidList *TSCE::ASTNodeArrayArchive_ASTUidList::ASTNodeArrayArchive_ASTUidList(TSCE::ASTNodeArrayArchive_ASTUidList *this, const TSCE::ASTNodeArrayArchive_ASTUidList *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AE570;
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

void TSCE::ASTNodeArrayArchive_ASTUidList::~ASTNodeArrayArchive_ASTUidList(TSCE::ASTNodeArrayArchive_ASTUidList *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567974(this + 2);
}

{
  TSCE::ASTNodeArrayArchive_ASTUidList::~ASTNodeArrayArchive_ASTUidList(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::ASTNodeArrayArchive_ASTUidList::default_instance(TSCE::ASTNodeArrayArchive_ASTUidList *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTUidList_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ASTNodeArrayArchive_ASTUidList_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTUidList::Clear(uint64_t *this)
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

google::protobuf::internal *TSCE::ASTNodeArrayArchive_ASTUidList::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTUidList::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTUidList *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSCE::ASTNodeArrayArchive_ASTUidList::ByteSizeLong(TSCE::ASTNodeArrayArchive_ASTUidList *this)
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

uint64_t TSCE::ASTNodeArrayArchive_ASTUidList::MergeFrom(TSCE::ASTNodeArrayArchive_ASTUidList *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTUidList::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTUidList::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTUidList *a2)
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

uint64_t *TSCE::ASTNodeArrayArchive_ASTUidList::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTUidList::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTUidList::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTUidList::CopyFrom(uint64_t *this, const TSCE::ASTNodeArrayArchive_ASTUidList *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTUidList::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTUidList::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::ASTNodeArrayArchive_ASTUidList::IsInitialized(TSCE::ASTNodeArrayArchive_ASTUidList *this)
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

__n128 TSCE::ASTNodeArrayArchive_ASTUidList::InternalSwap(TSCE::ASTNodeArrayArchive_ASTUidList *this, TSCE::ASTNodeArrayArchive_ASTUidList *a2)
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

TSCE::ASTNodeArrayArchive_ASTUidTract *TSCE::ASTNodeArrayArchive_ASTUidTract::ASTNodeArrayArchive_ASTUidTract(TSCE::ASTNodeArrayArchive_ASTUidTract *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AE620;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTUidTract_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 1;
  return this;
}

TSCE::ASTNodeArrayArchive_ASTUidTract *TSCE::ASTNodeArrayArchive_ASTUidTract::ASTNodeArrayArchive_ASTUidTract(TSCE::ASTNodeArrayArchive_ASTUidTract *this, const TSCE::ASTNodeArrayArchive_ASTUidTract *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AE620;
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
  v7 = *(a2 + 5);
  *(this + 48) = *(a2 + 48);
  *(this + 5) = v7;
  return this;
}

void TSCE::ASTNodeArrayArchive_ASTUidTract::~ASTNodeArrayArchive_ASTUidTract(TSCE::ASTNodeArrayArchive_ASTUidTract *this)
{
  if (this != &TSCE::_ASTNodeArrayArchive_ASTUidTract_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::ASTNodeArrayArchive_ASTUidList::~ASTNodeArrayArchive_ASTUidList(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSCE::ASTNodeArrayArchive_ASTUidList::~ASTNodeArrayArchive_ASTUidList(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::ASTNodeArrayArchive_ASTUidTract::~ASTNodeArrayArchive_ASTUidTract(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::ASTNodeArrayArchive_ASTUidTract::default_instance(TSCE::ASTNodeArrayArchive_ASTUidTract *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTUidTract_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ASTNodeArrayArchive_ASTUidTract_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTUidTract::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSCE::ASTNodeArrayArchive_ASTUidList::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSCE::ASTNodeArrayArchive_ASTUidList::Clear(*(v1 + 32));
    }
  }

  if ((v2 & 0x1C) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
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

google::protobuf::internal *TSCE::ASTNodeArrayArchive_ASTUidTract::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v32) & 1) == 0)
  {
    while (1)
    {
      v7 = (v32 + 1);
      v8 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v9 - 128));
      v32 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_65;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_45;
          }

          *(a1 + 16) |= 1u;
          v15 = *(a1 + 24);
          if (!v15)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidList>(v23);
            *(a1 + 24) = v15;
LABEL_43:
            v7 = v32;
          }
        }

        else
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_45;
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

            v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidList>(v16);
            *(a1 + 32) = v15;
            goto LABEL_43;
          }
        }

        v24 = sub_2216FC23C(a3, v15, v7);
        goto LABEL_52;
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_45;
        }

        v5 |= 4u;
        v18 = (v7 + 1);
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_30:
          v32 = v18;
          *(a1 + 40) = v17 != 0;
          goto LABEL_53;
        }

        v28 = google::protobuf::internal::VarintParseSlow64(v7, v17);
        v32 = v28;
        *(a1 + 40) = v29 != 0;
        if (!v28)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (v10 == 4)
        {
          if (v8 == 32)
          {
            v21 = (v7 + 1);
            v20 = *v7;
            if ((v20 & 0x8000000000000000) == 0)
            {
              goto LABEL_35;
            }

            v22 = *v21;
            v20 = (v22 << 7) + v20 - 128;
            if (v22 < 0)
            {
              v32 = google::protobuf::internal::VarintParseSlow64(v7, v20);
              if (!v32)
              {
                goto LABEL_65;
              }
            }

            else
            {
              v21 = (v7 + 2);
LABEL_35:
              v32 = v21;
            }

            if (v20 > 9)
            {
              sub_2216FF1F8();
            }

            else
            {
              *(a1 + 16) |= 8u;
              *(a1 + 44) = v20;
            }

            goto LABEL_53;
          }

LABEL_45:
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

          v24 = google::protobuf::internal::UnknownFieldParse();
LABEL_52:
          v32 = v24;
          if (!v24)
          {
            goto LABEL_65;
          }

          goto LABEL_53;
        }

        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_45;
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
          v32 = v12;
          *(a1 + 48) = v11 != 0;
          goto LABEL_53;
        }

        v30 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v32 = v30;
        *(a1 + 48) = v31 != 0;
        if (!v30)
        {
LABEL_65:
          v32 = 0;
          goto LABEL_2;
        }
      }

LABEL_53:
      if (sub_221567030(a3, &v32))
      {
        goto LABEL_2;
      }
    }

    v7 = (v32 + 2);
LABEL_6:
    v32 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTUidTract::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTUidTract *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    v10 = *(v9 + 10);
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

    a2 = TSCE::ASTNodeArrayArchive_ASTUidList::_InternalSerialize(v9, v11, a3);
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

  v15 = *(this + 4);
  *a2 = 18;
  v16 = *(v15 + 10);
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

  a2 = TSCE::ASTNodeArrayArchive_ASTUidList::_InternalSerialize(v15, v17, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_31:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 40);
  *a2 = 24;
  a2[1] = v21;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

LABEL_34:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 11);
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
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      a2[2] = v23;
      a2 += 3;
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    a2[1] = v22;
    a2 += 2;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_6:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 48);
  *a2 = 40;
  a2[1] = v6;
  a2 += 2;
LABEL_9:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ASTNodeArrayArchive_ASTUidTract::RequiredFieldsByteSizeFallback(TSCE::ASTNodeArrayArchive_ASTUidTract *this)
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

  v4 = TSCE::ASTNodeArrayArchive_ASTUidList::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSCE::ASTNodeArrayArchive_ASTUidList::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSCE::ASTNodeArrayArchive_ASTUidTract::ByteSizeLong(TSCE::ASTNodeArrayArchive_ASTUidList **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSCE::ASTNodeArrayArchive_ASTUidTract::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::ASTNodeArrayArchive_ASTUidList::ByteSizeLong(this[3]);
    v3 = TSCE::ASTNodeArrayArchive_ASTUidList::ByteSizeLong(this[4]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v5 = *(this + 4);
  if ((v5 & 0x1C) != 0)
  {
    v6 = v4 + ((v5 >> 1) & 2);
    if ((v5 & 8) != 0)
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

      v6 += v9;
    }

    v4 = v6 + ((v5 >> 3) & 2);
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

uint64_t TSCE::ASTNodeArrayArchive_ASTUidTract::MergeFrom(TSCE::ASTNodeArrayArchive_ASTUidTract *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTUidTract::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTUidTract::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTUidTract *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidList>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCE::_ASTNodeArrayArchive_ASTUidList_default_instance_;
      }

      this = TSCE::ASTNodeArrayArchive_ASTUidList::MergeFrom(v6, v8);
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

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidList>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSCE::_ASTNodeArrayArchive_ASTUidList_default_instance_;
    }

    this = TSCE::ASTNodeArrayArchive_ASTUidList::MergeFrom(v9, v11);
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
    *(v3 + 40) = *(a2 + 40);
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
      *(v3 + 48) = *(a2 + 48);
      goto LABEL_10;
    }

LABEL_29:
    *(v3 + 44) = *(a2 + 11);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTUidTract::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTUidTract::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTUidTract::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTUidTract::CopyFrom(uint64_t *this, const TSCE::ASTNodeArrayArchive_ASTUidTract *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTUidTract::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTUidTract::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::ASTNodeArrayArchive_ASTUidTract::IsInitialized(TSCE::ASTNodeArrayArchive_ASTUidTract *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *(v2 + 24);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(v2 + 32) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  v8 = *(this + 4);
  v9 = *(v8 + 24);
  do
  {
    v6 = v9 < 1;
    if (v9 < 1)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = TSP::UUID::IsInitialized(*(*(v8 + 32) + 8 * v9));
    v9 = v10;
  }

  while ((v11 & 1) != 0);
  return v6;
}

__n128 TSCE::ASTNodeArrayArchive_ASTUidTract::InternalSwap(TSCE::ASTNodeArrayArchive_ASTUidTract *this, TSCE::ASTNodeArrayArchive_ASTUidTract *a2)
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
  LOBYTE(v8) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v8;
  return result;
}

uint64_t TSCE::ASTNodeArrayArchive_ASTStickyBits::ASTNodeArrayArchive_ASTStickyBits(uint64_t result, uint64_t a2)
{
  *result = &unk_2834AE6D0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  *result = &unk_2834AE6D0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

TSCE::ASTNodeArrayArchive_ASTStickyBits *TSCE::ASTNodeArrayArchive_ASTStickyBits::ASTNodeArrayArchive_ASTStickyBits(TSCE::ASTNodeArrayArchive_ASTStickyBits *this, const TSCE::ASTNodeArrayArchive_ASTStickyBits *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AE6D0;
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

void TSCE::ASTNodeArrayArchive_ASTStickyBits::~ASTNodeArrayArchive_ASTStickyBits(TSCE::ASTNodeArrayArchive_ASTStickyBits *this)
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

uint64_t *TSCE::ASTNodeArrayArchive_ASTStickyBits::default_instance(TSCE::ASTNodeArrayArchive_ASTStickyBits *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTStickyBits_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_ASTNodeArrayArchive_ASTStickyBits_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTStickyBits::Clear(TSCE::ASTNodeArrayArchive_ASTStickyBits *this)
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

google::protobuf::internal *TSCE::ASTNodeArrayArchive_ASTStickyBits::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTStickyBits::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTStickyBits *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSCE::ASTNodeArrayArchive_ASTStickyBits::ByteSizeLong(TSCE::ASTNodeArrayArchive_ASTStickyBits *this)
{
  if ((~*(this + 4) & 0xF) != 0)
  {
    v1 = 2 * (*(this + 4) & 1) + (*(this + 4) & 2) + ((*(this + 4) >> 1) & 2) + ((*(this + 4) >> 2) & 2u);
  }

  else
  {
    v1 = 8;
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v1, this + 20);
  }

  *(this + 5) = v1;
  return v1;
}

uint64_t TSCE::ASTNodeArrayArchive_ASTStickyBits::MergeFrom(TSCE::ASTNodeArrayArchive_ASTStickyBits *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTStickyBits::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTStickyBits::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTStickyBits *a2)
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

TSCE::ASTNodeArrayArchive_ASTStickyBits *TSCE::ASTNodeArrayArchive_ASTStickyBits::CopyFrom(TSCE::ASTNodeArrayArchive_ASTStickyBits *this, const Message *lpsrc)
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

    return TSCE::ASTNodeArrayArchive_ASTStickyBits::MergeFrom(v4, lpsrc);
  }

  return this;
}

const TSCE::ASTNodeArrayArchive_ASTStickyBits *TSCE::ASTNodeArrayArchive_ASTStickyBits::CopyFrom(const TSCE::ASTNodeArrayArchive_ASTStickyBits *this, const TSCE::ASTNodeArrayArchive_ASTStickyBits *a2)
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

    return TSCE::ASTNodeArrayArchive_ASTStickyBits::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTStickyBits::InternalSwap(TSCE::ASTNodeArrayArchive_ASTStickyBits *this, TSCE::ASTNodeArrayArchive_ASTStickyBits *a2)
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

TSCE::ASTNodeArrayArchive_ASTUidTractList *TSCE::ASTNodeArrayArchive_ASTUidTractList::ASTNodeArrayArchive_ASTUidTractList(TSCE::ASTNodeArrayArchive_ASTUidTractList *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AE780;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTUidTractList_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCE::ASTNodeArrayArchive_ASTUidTractList *TSCE::ASTNodeArrayArchive_ASTUidTractList::ASTNodeArrayArchive_ASTUidTractList(TSCE::ASTNodeArrayArchive_ASTUidTractList *this, const TSCE::ASTNodeArrayArchive_ASTUidTractList *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AE780;
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
    sub_22156B0DC(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void sub_22153315C(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C40E1DA5700);
  sub_22156B058((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::ASTNodeArrayArchive_ASTUidTractList::~ASTNodeArrayArchive_ASTUidTractList(TSCE::ASTNodeArrayArchive_ASTUidTractList *this)
{
  if (this != &TSCE::_ASTNodeArrayArchive_ASTUidTractList_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      sub_2214DFCF8((v2 + 8));
      MEMORY[0x223DA1450](v2, 0x1081C40E1DA5700);
    }
  }

  sub_2214DFCF8(this + 1);
  sub_22156B058(this + 3);
}

{
  TSCE::ASTNodeArrayArchive_ASTUidTractList::~ASTNodeArrayArchive_ASTUidTractList(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::ASTNodeArrayArchive_ASTUidTractList::default_instance(TSCE::ASTNodeArrayArchive_ASTUidTractList *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTUidTractList_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ASTNodeArrayArchive_ASTUidTractList_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTUidTractList::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::ASTNodeArrayArchive_ASTUidTract::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if (v1[2])
  {
    v5 = v1[6];
    v6 = *(v5 + 8);
    this = (v5 + 8);
    *(this + 4) = 0;
    *(this + 2) = 0;
    if (v6)
    {
      this = sub_221567398(this);
    }
  }

  v8 = *(v1 + 8);
  v7 = v1 + 1;
  *(v7 + 2) = 0;
  if (v8)
  {

    return sub_221567398(v7);
  }

  return this;
}

google::protobuf::internal *TSCE::ASTNodeArrayArchive_ASTUidTractList::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while (1)
  {
LABEL_2:
    if (sub_221567030(a3, &v24))
    {
      return v24;
    }

    v5 = (v24 + 1);
    v6 = *v24;
    if ((*v24 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v24 + 2);
LABEL_6:
      v24 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v7 - 128));
    v24 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v22;
LABEL_7:
    if (v6 >> 3 != 2)
    {
      if (v6 >> 3 != 1 || v6 != 10)
      {
        goto LABEL_12;
      }

      v13 = (v5 - 1);
      while (1)
      {
        v14 = (v13 + 1);
        v24 = (v13 + 1);
        v15 = *(a1 + 40);
        if (!v15)
        {
          goto LABEL_29;
        }

        v20 = *(a1 + 32);
        v16 = *v15;
        if (v20 < *v15)
        {
          *(a1 + 32) = v20 + 1;
          v17 = *&v15[2 * v20 + 2];
          goto LABEL_33;
        }

        if (v16 == *(a1 + 36))
        {
LABEL_29:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v15 = *(a1 + 40);
          v16 = *v15;
        }

        *v15 = v16 + 1;
        v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidTract>(*(a1 + 24));
        v18 = *(a1 + 32);
        v19 = *(a1 + 40) + 8 * v18;
        *(a1 + 32) = v18 + 1;
        *(v19 + 8) = v17;
        v14 = v24;
LABEL_33:
        v13 = sub_2216FC30C(a3, v17, v14);
        v24 = v13;
        if (!v13)
        {
          return 0;
        }

        if (*a3 <= v13 || *v13 != 10)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 == 18)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTStickyBits>(v12);
        *(a1 + 48) = v11;
        v5 = v24;
      }

      v10 = sub_2216FC3DC(a3, v11, v5);
      goto LABEL_25;
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
LABEL_25:
    v24 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v24;
}

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTUidTractList::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTUidTractList *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::ASTNodeArrayArchive_ASTUidTract::_InternalSerialize(v7, v9, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 6);
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

    a2 = TSCE::ASTNodeArrayArchive_ASTStickyBits::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ASTNodeArrayArchive_ASTUidTractList::ByteSizeLong(TSCE::ASTNodeArrayArchive_ASTStickyBits **this)
{
  if (this[2])
  {
    v3 = TSCE::ASTNodeArrayArchive_ASTStickyBits::ByteSizeLong(this[6]);
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
      v10 = TSCE::ASTNodeArrayArchive_ASTUidTract::ByteSizeLong(v9);
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

uint64_t TSCE::ASTNodeArrayArchive_ASTUidTractList::MergeFrom(TSCE::ASTNodeArrayArchive_ASTUidTractList *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTUidTractList::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTUidTractList::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTUidTractList *a2)
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
    this = sub_22156B0DC(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

      v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTStickyBits>(v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = TSCE::_ASTNodeArrayArchive_ASTStickyBits_default_instance_;
    }

    return TSCE::ASTNodeArrayArchive_ASTStickyBits::MergeFrom(v11, v13);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTUidTractList::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTUidTractList::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTUidTractList::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTUidTractList::CopyFrom(uint64_t *this, const TSCE::ASTNodeArrayArchive_ASTUidTractList *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTUidTractList::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTUidTractList::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::ASTNodeArrayArchive_ASTUidTractList::IsInitialized(TSCE::ASTNodeArrayArchive_ASTUidTractList *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSCE::ASTNodeArrayArchive_ASTUidTract::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if (!IsInitialized)
    {
      return 0;
    }
  }

  return (*(this + 16) & 1) == 0 || (~*(*(this + 6) + 16) & 0xF) == 0;
}

__n128 TSCE::ASTNodeArrayArchive_ASTUidTractList::InternalSwap(__n128 *this, __n128 *a2)
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

TSP::UUID *TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::clear_column_uid(TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUID *TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::clear_row_uid(TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::ASTNodeArrayArchive_ASTUidCoordinateArchive(TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AE830;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTUidCoordinateArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_2834AE830;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTUidCoordinateArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  return this;
}

TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::ASTNodeArrayArchive_ASTUidCoordinateArchive(TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *this, const TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AE830;
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
  *(this + 20) = *(a2 + 20);
  return this;
}

void TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::~ASTNodeArrayArchive_ASTUidCoordinateArchive(TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *this)
{
  if (this != &TSCE::_ASTNodeArrayArchive_ASTUidCoordinateArchive_default_instance_)
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
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::~ASTNodeArrayArchive_ASTUidCoordinateArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::default_instance(TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTUidCoordinateArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ASTNodeArrayArchive_ASTUidCoordinateArchive_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::Clear(uint64_t *this)
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
      this = TSP::UUID::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_54;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_37;
          }

          *(a1 + 16) |= 1u;
          v12 = *(a1 + 24);
          if (!v12)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = MEMORY[0x223DA0360](v18);
            LODWORD(v12) = v19;
            *(a1 + 24) = v19;
LABEL_30:
            v7 = v31;
          }
        }

        else
        {
          if (v10 != 2 || v8 != 18)
          {
LABEL_37:
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

            v20 = google::protobuf::internal::UnknownFieldParse();
LABEL_44:
            v31 = v20;
            if (!v20)
            {
              goto LABEL_54;
            }

            goto LABEL_45;
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
            goto LABEL_30;
          }
        }

        v20 = sub_2216F813C(a3, v12, v7);
        goto LABEL_44;
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_37;
        }

        v5 |= 4u;
        v22 = (v7 + 1);
        v21 = *v7;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if ((v23 & 0x80000000) == 0)
        {
          v22 = (v7 + 2);
LABEL_36:
          v31 = v22;
          *(a1 + 40) = v21 != 0;
          goto LABEL_45;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v7, v21);
        v31 = v29;
        *(a1 + 40) = v30 != 0;
        if (!v29)
        {
LABEL_54:
          v31 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_37;
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
          v31 = v16;
          *(a1 + 41) = v15 != 0;
          goto LABEL_45;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v31 = v27;
        *(a1 + 41) = v28 != 0;
        if (!v27)
        {
          goto LABEL_54;
        }
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

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  a2 = TSP::UUID::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_32;
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

    v19 = *(this + 41);
    *a2 = 32;
    a2[1] = v19;
    a2 += 2;
  }

LABEL_32:
  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::RequiredFieldsByteSizeFallback(TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3 + ((v2 >> 1) & 2) + ((v2 >> 2) & 2);
    }

    goto LABEL_5;
  }

  v4 = TSP::UUID::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = TSP::UUID::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  return v3 + ((v2 >> 1) & 2) + ((v2 >> 2) & 2);
}

uint64_t TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 0xF) != 0)
  {
    v4 = TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[3]);
    v3 = TSP::UUID::ByteSizeLong(this[4]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 6;
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

uint64_t TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::MergeFrom(TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *a2)
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

        goto LABEL_27;
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
LABEL_9:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_8:
      *(v3 + 41) = *(a2 + 41);
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

uint64_t *TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::CopyFrom(uint64_t *this, const TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::IsInitialized(TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *this)
{
  if ((~*(this + 4) & 0xF) != 0)
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

    result = TSP::UUID::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::InternalSwap(TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *this, TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive *a2)
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
  LOWORD(v5) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v5;
  return result;
}

uint64_t TSCE::ASTNodeArrayArchive_ASTCategoryLevels::ASTNodeArrayArchive_ASTCategoryLevels(uint64_t result, uint64_t a2)
{
  *result = &unk_2834AE8E0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

{
  *result = &unk_2834AE8E0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

TSCE::ASTNodeArrayArchive_ASTCategoryLevels *TSCE::ASTNodeArrayArchive_ASTCategoryLevels::ASTNodeArrayArchive_ASTCategoryLevels(TSCE::ASTNodeArrayArchive_ASTCategoryLevels *this, const TSCE::ASTNodeArrayArchive_ASTCategoryLevels *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AE8E0;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 3) = v6;
  return this;
}

void TSCE::ASTNodeArrayArchive_ASTCategoryLevels::~ASTNodeArrayArchive_ASTCategoryLevels(TSCE::ASTNodeArrayArchive_ASTCategoryLevels *this)
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

uint64_t *TSCE::ASTNodeArrayArchive_ASTCategoryLevels::default_instance(TSCE::ASTNodeArrayArchive_ASTCategoryLevels *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTCategoryLevels_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ASTNodeArrayArchive_ASTCategoryLevels_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTCategoryLevels::Clear(TSCE::ASTNodeArrayArchive_ASTCategoryLevels *this)
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
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TSCE::ASTNodeArrayArchive_ASTCategoryLevels::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v30) & 1) == 0)
  {
    while (1)
    {
      v7 = (v30 + 1);
      v8 = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v9 - 128));
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_46;
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
          v30 = v16;
          *(a1 + 32) = v17;
          goto LABEL_35;
        }

        v28 = google::protobuf::internal::VarintParseSlow32(v7, v17);
        v30 = v28;
        *(a1 + 32) = v29;
        if (!v28)
        {
          goto LABEL_46;
        }
      }

      else if (v10 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
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
          v30 = v13;
          *(a1 + 28) = v14;
          goto LABEL_35;
        }

        v24 = google::protobuf::internal::VarintParseSlow32(v7, v14);
        v30 = v24;
        *(a1 + 28) = v25;
        if (!v24)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v10 != 1 || v8 != 8)
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

          v30 = google::protobuf::internal::UnknownFieldParse();
          if (!v30)
          {
LABEL_46:
            v30 = 0;
            goto LABEL_2;
          }

          goto LABEL_35;
        }

        v5 |= 1u;
        v19 = (v7 + 1);
        LODWORD(v20) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        v21 = *v19;
        v20 = (v20 + (v21 << 7) - 128);
        if ((v21 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_34:
          v30 = v19;
          *(a1 + 24) = v20;
          goto LABEL_35;
        }

        v26 = google::protobuf::internal::VarintParseSlow32(v7, v20);
        v30 = v26;
        *(a1 + 24) = v27;
        if (!v26)
        {
          goto LABEL_46;
        }
      }

LABEL_35:
      if (sub_221567030(a3, &v30))
      {
        goto LABEL_2;
      }
    }

    v7 = (v30 + 2);
LABEL_6:
    v30 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTCategoryLevels::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTCategoryLevels *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
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
          goto LABEL_24;
        }
      }

      else
      {
        a2[2] = v9;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      if ((v5 & 2) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_3:
    if ((v5 & 4) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_4;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_24:
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
      if ((v5 & 4) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      a2[2] = v15;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    a2[1] = v14;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_35;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 8);
  *a2 = 24;
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

LABEL_35:
  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ASTNodeArrayArchive_ASTCategoryLevels::RequiredFieldsByteSizeFallback(TSCE::ASTNodeArrayArchive_ASTCategoryLevels *this)
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

uint64_t TSCE::ASTNodeArrayArchive_ASTCategoryLevels::ByteSizeLong(TSCE::ASTNodeArrayArchive_ASTCategoryLevels *this)
{
  v2 = *(this + 4);
  if ((~v2 & 3) != 0)
  {
    v3 = TSCE::ASTNodeArrayArchive_ASTCategoryLevels::RequiredFieldsByteSizeFallback(this);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 4) != 0)
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

uint64_t TSCE::ASTNodeArrayArchive_ASTCategoryLevels::MergeFrom(TSCE::ASTNodeArrayArchive_ASTCategoryLevels *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTCategoryLevels::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTCategoryLevels::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTCategoryLevels *a2)
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

TSCE::ASTNodeArrayArchive_ASTCategoryLevels *TSCE::ASTNodeArrayArchive_ASTCategoryLevels::CopyFrom(TSCE::ASTNodeArrayArchive_ASTCategoryLevels *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTCategoryLevels::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTCategoryLevels::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::ASTNodeArrayArchive_ASTCategoryLevels *TSCE::ASTNodeArrayArchive_ASTCategoryLevels::CopyFrom(TSCE::ASTNodeArrayArchive_ASTCategoryLevels *this, const TSCE::ASTNodeArrayArchive_ASTCategoryLevels *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTCategoryLevels::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTCategoryLevels::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTCategoryLevels::InternalSwap(TSCE::ASTNodeArrayArchive_ASTCategoryLevels *this, TSCE::ASTNodeArrayArchive_ASTCategoryLevels *a2)
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

TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive *TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::ASTNodeArrayArchive_ASTCategoryReferenceArchive(TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AE990;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTCategoryReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834AE990;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTCategoryReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive *TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::ASTNodeArrayArchive_ASTCategoryReferenceArchive(TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive *this, const TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AE990;
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

void TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::~ASTNodeArrayArchive_ASTCategoryReferenceArchive(TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive *this)
{
  if (this != TSCE::_ASTNodeArrayArchive_ASTCategoryReferenceArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::CategoryReferenceArchive::~CategoryReferenceArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::~ASTNodeArrayArchive_ASTCategoryReferenceArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::default_instance(TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTCategoryReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_ASTNodeArrayArchive_ASTCategoryReferenceArchive_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSCE::CategoryReferenceArchive::Clear(this[3]);
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

google::protobuf::internal *TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CategoryReferenceArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_2216FC4AC(a3, v10, v5);
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

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::CategoryReferenceArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::ByteSizeLong(TSP::UUID ***this)
{
  if (this[2])
  {
    v3 = TSCE::CategoryReferenceArchive::ByteSizeLong(this[3]);
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

uint64_t TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::MergeFrom(TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CategoryReferenceArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = TSCE::_CategoryReferenceArchive_default_instance_;
    }

    return TSCE::CategoryReferenceArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::CopyFrom(uint64_t *this, const TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::IsInitialized(TSCE::CategoryReferenceArchive **this)
{
  if (this[2])
  {
    return TSCE::CategoryReferenceArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::InternalSwap(TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive *this, TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive *a2)
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

void *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive(void *result, uint64_t a2)
{
  *result = &unk_2834AEA40;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_2834AEA40;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *this, const TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AEA40;
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

void TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::~ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *this)
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

uint64_t *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::default_instance(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::Clear(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *this)
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

google::protobuf::internal *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        v13 = (v7 + 1);
        LODWORD(v12) = *v7;
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        v14 = *v13;
        v12 = (v12 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_24:
          v24 = v13;
          *(a1 + 28) = v12;
          goto LABEL_29;
        }

        v20 = google::protobuf::internal::VarintParseSlow64(v7, v12);
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
        v16 = (v7 + 1);
        LODWORD(v15) = *v7;
        if ((v15 & 0x80) == 0)
        {
          goto LABEL_28;
        }

        v17 = *v16;
        v15 = (v15 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_28:
          v24 = v16;
          *(a1 + 24) = v15;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow64(v7, v15);
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

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::ByteSizeLong(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *this)
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

uint64_t TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::MergeFrom(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *a2)
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

TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::CopyFrom(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::CopyFrom(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *this, const TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::InternalSwap(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *this, TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive *a2)
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

void *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive(void *result, uint64_t a2)
{
  *result = &unk_2834AEAF0;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_2834AEAF0;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *this, const TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AEAF0;
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

void TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::~ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *this)
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

uint64_t *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::default_instance(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::Clear(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *this)
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

google::protobuf::internal *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::ByteSizeLong(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_5:
    v2 += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::MergeFrom(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *a2)
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

TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::CopyFrom(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::CopyFrom(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *this, const TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::InternalSwap(TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *this, TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive *a2)
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

TSCE::ASTNodeArrayArchive_ASTColonTractArchive *TSCE::ASTNodeArrayArchive_ASTColonTractArchive::ASTNodeArrayArchive_ASTColonTractArchive(TSCE::ASTNodeArrayArchive_ASTColonTractArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AEBA0;
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
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTColonTractArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 120) = 1;
  return this;
}

void sub_221536BA8(_Unwind_Exception *a1)
{
  sub_221567450(v4);
  sub_221567450(v3);
  sub_221567450(v2);
  sub_221567450(v1);
  _Unwind_Resume(a1);
}

TSCE::ASTNodeArrayArchive_ASTColonTractArchive *TSCE::ASTNodeArrayArchive_ASTColonTractArchive::ASTNodeArrayArchive_ASTColonTractArchive(TSCE::ASTNodeArrayArchive_ASTColonTractArchive *this, const TSCE::ASTNodeArrayArchive_ASTColonTractArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AEBA0;
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
    sub_22156B19C(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_22156B19C(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_22156B25C(this + 72, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
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
    sub_22156B25C(this + 96, v22, (v21 + 8), v20, **(this + 14) - *(this + 26));
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

  *(this + 120) = *(a2 + 120);
  return this;
}

void sub_221536E18(_Unwind_Exception *a1)
{
  sub_221567450(v4);
  sub_221567450(v3);
  sub_221567450(v2);
  sub_221567450((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::ASTNodeArrayArchive_ASTColonTractArchive::~ASTNodeArrayArchive_ASTColonTractArchive(TSCE::ASTNodeArrayArchive_ASTColonTractArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567450(this + 12);
  sub_221567450(this + 9);
  sub_221567450(this + 6);
  sub_221567450(this + 3);
}

{
  TSCE::ASTNodeArrayArchive_ASTColonTractArchive::~ASTNodeArrayArchive_ASTColonTractArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::ASTNodeArrayArchive_ASTColonTractArchive::default_instance(TSCE::ASTNodeArrayArchive_ASTColonTractArchive *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTColonTractArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ASTNodeArrayArchive_ASTColonTractArchive_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTColonTractArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::Clear(v4);
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
      this = TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::Clear(v7);
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
      this = TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::Clear(v10);
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
      this = TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v15 = *(v1 + 8);
  v14 = v1 + 8;
  *(v14 + 112) = 1;
  *(v14 + 8) = 0;
  if (v15)
  {

    return sub_221567398(v14);
  }

  return this;
}

google::protobuf::internal *TSCE::ASTNodeArrayArchive_ASTColonTractArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v52 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v52) & 1) == 0)
  {
    while (1)
    {
      v7 = (v52 + 1);
      v8 = *v52;
      if ((*v52 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v52, (v9 - 128));
      v52 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_87;
      }

      v7 = TagFallback;
      v8 = v49;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 != 1)
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_73;
          }

          v15 = (v7 - 1);
          while (2)
          {
            v16 = (v15 + 1);
            v52 = (v15 + 1);
            v17 = *(a1 + 64);
            if (!v17)
            {
LABEL_24:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v17 = *(a1 + 64);
              v18 = *v17;
              goto LABEL_25;
            }

            v22 = *(a1 + 56);
            v18 = *v17;
            if (v22 >= *v17)
            {
              if (v18 == *(a1 + 60))
              {
                goto LABEL_24;
              }

LABEL_25:
              *v17 = v18 + 1;
              v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive>(*(a1 + 48));
              v20 = *(a1 + 56);
              v21 = *(a1 + 64) + 8 * v20;
              *(a1 + 56) = v20 + 1;
              *(v21 + 8) = v19;
              v16 = v52;
            }

            else
            {
              *(a1 + 56) = v22 + 1;
              v19 = *&v17[2 * v22 + 2];
            }

            v15 = sub_2216FC57C(a3, v19, v16);
            v52 = v15;
            if (!v15)
            {
              goto LABEL_87;
            }

            if (*a3 <= v15 || *v15 != 18)
            {
              goto LABEL_80;
            }

            continue;
          }
        }

        if (v8 != 10)
        {
          goto LABEL_73;
        }

        v39 = (v7 - 1);
        while (2)
        {
          v40 = (v39 + 1);
          v52 = (v39 + 1);
          v41 = *(a1 + 40);
          if (!v41)
          {
LABEL_63:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v41 = *(a1 + 40);
            v42 = *v41;
            goto LABEL_64;
          }

          v46 = *(a1 + 32);
          v42 = *v41;
          if (v46 >= *v41)
          {
            if (v42 == *(a1 + 36))
            {
              goto LABEL_63;
            }

LABEL_64:
            *v41 = v42 + 1;
            v43 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive>(*(a1 + 24));
            v44 = *(a1 + 32);
            v45 = *(a1 + 40) + 8 * v44;
            *(a1 + 32) = v44 + 1;
            *(v45 + 8) = v43;
            v40 = v52;
          }

          else
          {
            *(a1 + 32) = v46 + 1;
            v43 = *&v41[2 * v46 + 2];
          }

          v39 = sub_2216FC57C(a3, v43, v40);
          v52 = v39;
          if (!v39)
          {
            goto LABEL_87;
          }

          if (*a3 <= v39 || *v39 != 10)
          {
            goto LABEL_80;
          }

          continue;
        }
      }

      if (v10 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_73;
        }

        v23 = (v7 - 1);
        while (2)
        {
          v24 = (v23 + 1);
          v52 = (v23 + 1);
          v25 = *(a1 + 88);
          if (!v25)
          {
LABEL_37:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v25 = *(a1 + 88);
            v26 = *v25;
            goto LABEL_38;
          }

          v30 = *(a1 + 80);
          v26 = *v25;
          if (v30 >= *v25)
          {
            if (v26 == *(a1 + 84))
            {
              goto LABEL_37;
            }

LABEL_38:
            *v25 = v26 + 1;
            v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive>(*(a1 + 72));
            v28 = *(a1 + 80);
            v29 = *(a1 + 88) + 8 * v28;
            *(a1 + 80) = v28 + 1;
            *(v29 + 8) = v27;
            v24 = v52;
          }

          else
          {
            *(a1 + 80) = v30 + 1;
            v27 = *&v25[2 * v30 + 2];
          }

          v23 = sub_2216FC64C(a3, v27, v24);
          v52 = v23;
          if (!v23)
          {
            goto LABEL_87;
          }

          if (*a3 <= v23 || *v23 != 26)
          {
            goto LABEL_80;
          }

          continue;
        }
      }

      if (v10 == 4)
      {
        if (v8 == 34)
        {
          v31 = (v7 - 1);
          while (1)
          {
            v32 = (v31 + 1);
            v52 = (v31 + 1);
            v33 = *(a1 + 112);
            if (!v33)
            {
              goto LABEL_50;
            }

            v38 = *(a1 + 104);
            v34 = *v33;
            if (v38 < *v33)
            {
              *(a1 + 104) = v38 + 1;
              v35 = *&v33[2 * v38 + 2];
              goto LABEL_54;
            }

            if (v34 == *(a1 + 108))
            {
LABEL_50:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
              v33 = *(a1 + 112);
              v34 = *v33;
            }

            *v33 = v34 + 1;
            v35 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive>(*(a1 + 96));
            v36 = *(a1 + 104);
            v37 = *(a1 + 112) + 8 * v36;
            *(a1 + 104) = v36 + 1;
            *(v37 + 8) = v35;
            v32 = v52;
LABEL_54:
            v31 = sub_2216FC64C(a3, v35, v32);
            v52 = v31;
            if (!v31)
            {
              goto LABEL_87;
            }

            if (*a3 <= v31 || *v31 != 34)
            {
              goto LABEL_80;
            }
          }
        }

LABEL_73:
        if (v8)
        {
          v47 = (v8 & 7) == 4;
        }

        else
        {
          v47 = 1;
        }

        if (v47)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v52 = google::protobuf::internal::UnknownFieldParse();
        if (!v52)
        {
LABEL_87:
          v52 = 0;
          goto LABEL_2;
        }

        goto LABEL_80;
      }

      if (v10 != 5 || v8 != 40)
      {
        goto LABEL_73;
      }

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
        v52 = v12;
        *(a1 + 120) = v11 != 0;
        v5 = 1;
        goto LABEL_80;
      }

      v50 = google::protobuf::internal::VarintParseSlow64(v7, v11);
      v52 = v50;
      *(a1 + 120) = v51 != 0;
      v5 = 1;
      if (!v50)
      {
        goto LABEL_87;
      }

LABEL_80:
      if (sub_221567030(a3, &v52))
      {
        goto LABEL_2;
      }
    }

    v7 = (v52 + 2);
LABEL_6:
    v52 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v52;
}

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTColonTractArchive::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTColonTractArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 14);
  if (v13)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 8) + 8 * j + 8);
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

      a2 = TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(this + 20);
  if (v21)
  {
    for (k = 0; k != v21; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v23 = *(*(this + 11) + 8 * k + 8);
      *a2 = 26;
      v24 = *(v23 + 5);
      if (v24 > 0x7F)
      {
        a2[1] = v24 | 0x80;
        v26 = v24 >> 7;
        if (v24 >> 14)
        {
          v25 = a2 + 3;
          do
          {
            *(v25 - 1) = v26 | 0x80;
            v27 = v26 >> 7;
            ++v25;
            v28 = v26 >> 14;
            v26 >>= 7;
          }

          while (v28);
          *(v25 - 1) = v27;
        }

        else
        {
          a2[2] = v26;
          v25 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v24;
        v25 = a2 + 2;
      }

      a2 = TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::_InternalSerialize(v23, v25, a3);
    }
  }

  v29 = *(this + 26);
  if (v29)
  {
    for (m = 0; m != v29; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v31 = *(*(this + 14) + 8 * m + 8);
      *a2 = 34;
      v32 = *(v31 + 5);
      if (v32 > 0x7F)
      {
        a2[1] = v32 | 0x80;
        v34 = v32 >> 7;
        if (v32 >> 14)
        {
          v33 = a2 + 3;
          do
          {
            *(v33 - 1) = v34 | 0x80;
            v35 = v34 >> 7;
            ++v33;
            v36 = v34 >> 14;
            v34 >>= 7;
          }

          while (v36);
          *(v33 - 1) = v35;
        }

        else
        {
          a2[2] = v34;
          v33 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v32;
        v33 = a2 + 2;
      }

      a2 = TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::_InternalSerialize(v31, v33, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v37 = *(this + 120);
    *a2 = 40;
    a2[1] = v37;
    a2 += 2;
  }

  v38 = *(this + 1);
  if ((v38 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v38 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ASTNodeArrayArchive_ASTColonTractArchive::ByteSizeLong(TSCE::ASTNodeArrayArchive_ASTColonTractArchive *this)
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
      v7 = TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::ByteSizeLong(v6);
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
      v14 = TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::ByteSizeLong(v13);
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
      v21 = TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 26);
  v23 = v16 + v22;
  v24 = *(this + 14);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::ByteSizeLong(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = 2 * (*(this + 4) & 1);
  v30 = v23 + v29;
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v30, this + 20);
  }

  else
  {
    *(this + 5) = v30;
    return v23 + v29;
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTColonTractArchive::MergeFrom(TSCE::ASTNodeArrayArchive_ASTColonTractArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTColonTractArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTColonTractArchive::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTColonTractArchive *a2)
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
    this = sub_22156B19C(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_22156B19C(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    this = sub_22156B25C(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
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
    this = sub_22156B25C(v3 + 96, v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  if (*(a2 + 16))
  {
    v25 = *(a2 + 120);
    *(v3 + 16) |= 1u;
    *(v3 + 120) = v25;
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTColonTractArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTColonTractArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTColonTractArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTColonTractArchive::CopyFrom(uint64_t *this, const TSCE::ASTNodeArrayArchive_ASTColonTractArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTColonTractArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTColonTractArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::ASTNodeArrayArchive_ASTColonTractArchive::IsInitialized(TSCE::ASTNodeArrayArchive_ASTColonTractArchive *this)
{
  v1 = *(this + 8);
  while (v1 >= 1)
  {
    v2 = *(*(this + 5) + 8 * v1--);
    if ((*(v2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  v3 = *(this + 14);
  while (v3 >= 1)
  {
    v4 = *(*(this + 8) + 8 * v3--);
    if ((*(v4 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(this + 20);
  while (v5 >= 1)
  {
    v6 = *(*(this + 11) + 8 * v5--);
    if ((*(v6 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(this + 26);
  v9 = *(this + 14);
  do
  {
    result = v8 < 1;
    if (v8 < 1)
    {
      break;
    }

    v10 = *(v9 + 8 * v8--);
  }

  while ((*(v10 + 16) & 1) != 0);
  return result;
}

__n128 TSCE::ASTNodeArrayArchive_ASTColonTractArchive::InternalSwap(TSCE::ASTNodeArrayArchive_ASTColonTractArchive *this, TSCE::ASTNodeArrayArchive_ASTColonTractArchive *a2)
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
  result = *(a2 + 104);
  *(this + 104) = result;
  *(a2 + 13) = v11;
  *(a2 + 14) = v12;
  LOBYTE(v11) = *(this + 120);
  *(this + 120) = *(a2 + 120);
  *(a2 + 120) = v11;
  return result;
}

TSP::CFUUIDArchive *TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::clear_table_id(TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::CFUUIDArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive *TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive(TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AEC50;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 7) = 0;
  return this;
}

TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive *TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive(TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive *this, const TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834AEC50;
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
  return this;
}

void TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::~ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive(TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive *this)
{
  sub_221538158(this);
  sub_2214DFCF8(this + 1);
}

{
  TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::~ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_221538158(uint64_t result)
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

  if (v1 != &TSCE::_ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive_default_instance_)
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

void *TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::default_instance(TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::Clear(uint64_t *this)
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

LABEL_16:
    v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_20:
  v7 = this[5] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_24;
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

LABEL_24:
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
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_33;
        }

        *(a1 + 16) |= 2u;
      }

      else if (v8 == 4)
      {
        if (v6 != 34)
        {
          goto LABEL_33;
        }

        *(a1 + 16) |= 4u;
      }

      else
      {
        if (v8 != 5 || v6 != 42)
        {
          goto LABEL_33;
        }

        *(a1 + 16) |= 8u;
      }

LABEL_24:
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v10 = google::protobuf::internal::InlineGreedyStringParser();
      goto LABEL_25;
    }

    if (v8 != 1)
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_33:
        if (v6)
        {
          v14 = (v6 & 7) == 4;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          *(a3 + 80) = v6 - 1;
          return v18;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_25;
      }

      *(a1 + 16) |= 1u;
      goto LABEL_24;
    }

    if (v6 != 10)
    {
      goto LABEL_33;
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

      v13 = MEMORY[0x223DA0300](v12);
      LODWORD(v11) = v13;
      *(a1 + 56) = v13;
      v5 = v18;
    }

    v10 = sub_2216F7F9C(a3, v11, v5);
LABEL_25:
    v18 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v18;
}

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 7);
    *v4 = 10;
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

    v4 = TSP::CFUUIDArchive::_InternalSerialize(v9, v11, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_22150C00C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = sub_22150C00C(a3, 3, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_21:
  v4 = sub_22150C00C(a3, 4, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) != 0)
  {
LABEL_6:
    v4 = sub_22150C00C(a3, 5, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_7:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::ByteSizeLong(TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x10) != 0)
  {
    v4 = TSP::CFUUIDArchive::ByteSizeLong(*(this + 7));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xF) == 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    v9 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
LABEL_7:
      if ((v2 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_7;
  }

  v12 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
  v13 = *(v12 + 23);
  v14 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v14 = v13;
  }

  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 4) == 0)
  {
LABEL_8:
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_20:
  v15 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  v17 = *(v15 + 8);
  if ((v16 & 0x80u) == 0)
  {
    v17 = v16;
  }

  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_9:
    v5 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::MergeFrom(TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive *a2)
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
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

      goto LABEL_13;
    }

LABEL_12:
    *(v3 + 16) |= 4u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return this;
      }

LABEL_14:
      *(v3 + 16) |= 0x10u;
      v6 = *(v3 + 56);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x223DA0300](v7);
        *(v3 + 56) = v6;
      }

      if (*(a2 + 7))
      {
        v8 = *(a2 + 7);
      }

      else
      {
        v8 = MEMORY[0x277D80A28];
      }

      return TSP::CFUUIDArchive::MergeFrom(v6, v8);
    }

LABEL_13:
    *(v3 + 16) |= 8u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_14;
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::CopyFrom(uint64_t *this, const TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::InternalSwap(TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive *this, TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive *a2)
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
  return result;
}

TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::ASTNodeArrayArchive_ASTLambdaIdentsListArchive(TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AED00;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTLambdaIdentsListArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 6) = MEMORY[0x277D80A90];
  *(this + 7) = v3;
  *(this + 16) = 0;
  return this;
}

TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::ASTNodeArrayArchive_ASTLambdaIdentsListArchive(TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *this, const TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AED00;
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
    sub_22156B3B8(this + 1, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  *(this + 16) = *(a2 + 16);
  return this;
}

void TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::~ASTNodeArrayArchive_ASTLambdaIdentsListArchive(TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *this)
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
  sub_22156B31C(this + 3);
}

{
  TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::~ASTNodeArrayArchive_ASTLambdaIdentsListArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::default_instance(TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTLambdaIdentsListArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ASTNodeArrayArchive_ASTLambdaIdentsListArchive_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::Clear(TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *this)
{
  result = sub_221567300(this + 24);
  v3 = *(this + 4);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v3 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v4 = 0;
      *(v4 + 23) = 0;
    }

    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v5 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_11:
  v7 = *(this + 8);
  v6 = this + 8;
  *(v6 + 14) = 0;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_221567398(v6);
  }

  return result;
}

google::protobuf::internal *TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_53;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_38;
          }

          *(a1 + 16) |= 1u;
        }

        else
        {
          if (v10 != 4 || v8 != 34)
          {
            goto LABEL_38;
          }

          *(a1 + 16) |= 2u;
        }

        google::protobuf::internal::ArenaStringPtr::Mutable();
        v22 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_45:
        v28 = v22;
        if (!v22)
        {
          goto LABEL_53;
        }

        goto LABEL_46;
      }

      if (v10 == 1)
      {
        if (v8 == 10)
        {
          v15 = v7 - 1;
          while (1)
          {
            v28 = (v15 + 1);
            v16 = *(a1 + 40);
            if (!v16)
            {
              goto LABEL_29;
            }

            v17 = *(a1 + 32);
            v18 = *v16;
            if (v17 >= *v16)
            {
              break;
            }

            *(a1 + 32) = v17 + 1;
LABEL_31:
            v15 = google::protobuf::internal::InlineGreedyStringParser();
            v28 = v15;
            if (!v15)
            {
              goto LABEL_53;
            }

            if (*a3 <= v15 || *v15 != 10)
            {
              goto LABEL_46;
            }
          }

          if (v18 == *(a1 + 36))
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v16 = *(a1 + 40);
            v18 = *v16;
          }

          *v16 = v18 + 1;
          v19 = sub_2215670A8(*(a1 + 24));
          v20 = *(a1 + 32);
          v21 = *(a1 + 40) + 8 * v20;
          *(a1 + 32) = v20 + 1;
          *(v21 + 8) = v19;
          goto LABEL_31;
        }

LABEL_38:
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
          sub_221567188((a1 + 8));
        }

        v22 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_45;
      }

      if (v10 != 2 || v8 != 16)
      {
        goto LABEL_38;
      }

      v5 |= 4u;
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
        v28 = v12;
        *(a1 + 64) = v13;
        goto LABEL_46;
      }

      v26 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v28 = v26;
      *(a1 + 64) = v27;
      if (!v26)
      {
LABEL_53:
        v28 = 0;
        goto LABEL_2;
      }

LABEL_46:
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

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 8);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      a2 = sub_2215395F0(a3, 1, *(*(this + 5) + v7), a2);
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v8 = *(this + 4);
  if ((v8 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(this + 16);
    *a2 = 16;
    if (v11 > 0x7F)
    {
      a2[1] = v11 | 0x80;
      v12 = v11 >> 7;
      if (v11 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v12 | 0x80;
          v13 = v12 >> 7;
          ++a2;
          v14 = v12 >> 14;
          v12 >>= 7;
        }

        while (v14);
        *(a2 - 1) = v13;
        if (v8)
        {
          goto LABEL_21;
        }
      }

      else
      {
        a2[2] = v12;
        a2 += 3;
        if (v8)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      a2[1] = v11;
      a2 += 2;
      if (v8)
      {
        goto LABEL_21;
      }
    }

LABEL_6:
    if ((v8 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_21:
  a2 = sub_22150C00C(a3, 3, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v8 & 2) != 0)
  {
LABEL_7:
    a2 = sub_22150C00C(a3, 4, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_8:
  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2215395F0(uint64_t *a1, int a2, const void **a3, _BYTE *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = v7 + 1;
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return v14 + v4;
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return MEMORY[0x2821EAB40]();
}

uint64_t TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::ByteSizeLong(TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *this)
{
  v1 = *(this + 8);
  if (v1 < 1)
  {
    v3 = *(this + 8);
  }

  else
  {
    v2 = (*(this + 5) + 8);
    v3 = *(this + 8);
    do
    {
      v4 = *v2++;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      --v1;
    }

    while (v1);
  }

  v7 = *(this + 4);
  if ((v7 & 7) != 0)
  {
    if (v7)
    {
      v9 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v7 & 2) == 0)
      {
LABEL_11:
        if ((v7 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_11;
    }

    v12 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 4) != 0)
    {
LABEL_12:
      v3 += ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_13:
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::MergeFrom(TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::MergeFrom(uint64_t this, const TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *a2)
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
    this = sub_22156B3B8((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 7) != 0)
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
LABEL_11:
          *(v3 + 16) |= v10;
          return this;
        }

LABEL_10:
        *(v3 + 64) = *(a2 + 16);
        goto LABEL_11;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 16) |= 2u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v10 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::CopyFrom(TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::CopyFrom(TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *this, const TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::Clear(this);

    return TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  LODWORD(v9) = this[4].n128_u32[0];
  this[4].n128_u32[0] = a2[4].n128_u32[0];
  a2[4].n128_u32[0] = v9;
  return result;
}

TSCE::ASTNodeArrayArchive_ASTNodeArchive *TSCE::ASTNodeArrayArchive_ASTNodeArchive::ASTNodeArrayArchive_ASTNodeArchive(TSCE::ASTNodeArrayArchive_ASTNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AEDB0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 6) = 0;
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = MEMORY[0x277D80A90];
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 7) = v3;
  *(this + 8) = v3;
  *(this + 9) = v3;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 36) = 0x100000001;
  return this;
}

TSCE::ASTNodeArrayArchive_ASTNodeArchive *TSCE::ASTNodeArrayArchive_ASTNodeArchive::ASTNodeArrayArchive_ASTNodeArchive(TSCE::ASTNodeArrayArchive_ASTNodeArchive *this, const TSCE::ASTNodeArrayArchive_ASTNodeArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834AEDB0;
  *(this + 2) = *(a2 + 2);
  *(this + 6) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_22156734C(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

  *(this + 7) = v5;
  if ((v6 & 8) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v6 = *(a2 + 4);
  }

  *(this + 8) = v5;
  if ((v6 & 0x10) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v6 = *(a2 + 4);
  }

  *(this + 9) = v5;
  if ((v6 & 0x20) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v6 = *(a2 + 4);
  }

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
  if ((v6 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v6 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v6 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v6 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v6 & 0x4000) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v6 & 0x8000) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v6 & 0x10000) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  if ((v6 & 0x20000) != 0)
  {
    operator new();
  }

  *(this + 21) = 0;
  if ((v6 & 0x40000) != 0)
  {
    operator new();
  }

  *(this + 22) = 0;
  if ((v6 & 0x80000) != 0)
  {
    operator new();
  }

  *(this + 23) = 0;
  v7 = *(a2 + 12);
  v8 = *(a2 + 14);
  *(this + 13) = *(a2 + 13);
  *(this + 14) = v8;
  *(this + 12) = v7;
  v9 = *(a2 + 15);
  v10 = *(a2 + 16);
  v11 = *(a2 + 17);
  *(this + 36) = *(a2 + 36);
  *(this + 16) = v10;
  *(this + 17) = v11;
  *(this + 15) = v9;
  return this;
}

void TSCE::ASTNodeArrayArchive_ASTNodeArchive::~ASTNodeArrayArchive_ASTNodeArchive(TSCE::ASTNodeArrayArchive_ASTNodeArchive *this)
{
  sub_22153A254(this);
  sub_2214DFCF8(this + 1);
}

{
  TSCE::ASTNodeArrayArchive_ASTNodeArchive::~ASTNodeArrayArchive_ASTNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *sub_22153A254(TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *result)
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

    result = MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 5);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x223DA1450](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 6);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x223DA1450](v5, 0x1012C40EC159624);
  }

  v6 = *(v1 + 7);
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = MEMORY[0x223DA1450](v6, 0x1012C40EC159624);
  }

  v7 = *(v1 + 8);
  if (v7 != v3)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = MEMORY[0x223DA1450](v7, 0x1012C40EC159624);
  }

  v8 = *(v1 + 9);
  if (v8 != v3)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    result = MEMORY[0x223DA1450](v8, 0x1012C40EC159624);
  }

  if (v1 != &TSCE::_ASTNodeArrayArchive_ASTNodeArchive_default_instance_)
  {
    v9 = *(v1 + 10);
    if (v9)
    {
      TSCE::ASTNodeArrayArchive::~ASTNodeArrayArchive(v9);
      MEMORY[0x223DA1450]();
    }

    v10 = *(v1 + 11);
    if (v10)
    {
      sub_2214DFCF8((v10 + 8));
      MEMORY[0x223DA1450](v10, 0x1081C40825B58B5);
    }

    v11 = *(v1 + 12);
    if (v11)
    {
      TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::~ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive(v11);
      MEMORY[0x223DA1450]();
    }

    v12 = *(v1 + 13);
    if (v12)
    {
      sub_2214DFCF8((v12 + 8));
      MEMORY[0x223DA1450](v12, 0x1081C40E25C5AF7);
    }

    v13 = *(v1 + 14);
    if (v13)
    {
      sub_2214DFCF8((v13 + 8));
      MEMORY[0x223DA1450](v13, 0x1081C40E25C5AF7);
    }

    v14 = *(v1 + 15);
    if (v14)
    {
      TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::~ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive(v14);
      MEMORY[0x223DA1450]();
    }

    v15 = *(v1 + 16);
    if (v15)
    {
      TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::~ASTNodeArrayArchive_ASTUidCoordinateArchive(v15);
      MEMORY[0x223DA1450]();
    }

    v16 = *(v1 + 17);
    if (v16)
    {
      sub_2214DFCF8((v16 + 8));
      MEMORY[0x223DA1450](v16, 0x1081C40E1DA5700);
    }

    v17 = *(v1 + 18);
    if (v17)
    {
      TSCE::ASTNodeArrayArchive_ASTUidTractList::~ASTNodeArrayArchive_ASTUidTractList(v17);
      MEMORY[0x223DA1450]();
    }

    v18 = *(v1 + 19);
    if (v18)
    {
      TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::~ASTNodeArrayArchive_ASTCategoryReferenceArchive(v18);
      MEMORY[0x223DA1450]();
    }

    v19 = *(v1 + 20);
    if (v19)
    {
      TSCE::ASTNodeArrayArchive_ASTColonTractArchive::~ASTNodeArrayArchive_ASTColonTractArchive(v19);
      MEMORY[0x223DA1450]();
    }

    v20 = *(v1 + 21);
    if (v20)
    {
      sub_2214DFCF8((v20 + 8));
      MEMORY[0x223DA1450](v20, 0x1081C40E1DA5700);
    }

    v21 = *(v1 + 22);
    if (v21)
    {
      sub_2214DFCF8((v21 + 8));
      MEMORY[0x223DA1450](v21, 0x1081C40B7564605);
    }

    result = *(v1 + 23);
    if (result)
    {
      TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::~ASTNodeArrayArchive_ASTLambdaIdentsListArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TSCE::ASTNodeArrayArchive_ASTNodeArchive::default_instance(TSCE::ASTNodeArrayArchive_ASTNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ASTNodeArrayArchive_ASTNodeArchive_default_instance_;
}

uint64_t *TSCE::ASTNodeArrayArchive_ASTNodeArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    v3 = this[4] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_56;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_60:
    v12 = this[6] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_64;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_68:
    v14 = this[8] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 23) < 0)
    {
      **v14 = 0;
      *(v14 + 8) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_72;
      }
    }

    else
    {
      *v14 = 0;
      *(v14 + 23) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_72;
      }
    }

LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_76;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_56:
  v11 = this[5] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_60;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_64:
  v13 = this[7] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v13 + 23) < 0)
  {
    **v13 = 0;
    *(v13 + 8) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    *v13 = 0;
    *(v13 + 23) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_68;
    }
  }

LABEL_7:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_72:
  v15 = this[9] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v15 + 23) < 0)
  {
    **v15 = 0;
    *(v15 + 8) = 0;
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_76;
    }

LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *v15 = 0;
  *(v15 + 23) = 0;
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_76:
  this = TSCE::ASTNodeArrayArchive::Clear(this[10]);
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::Clear(v1[11]);
  }

LABEL_11:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_33;
  }

  if ((v2 & 0x100) != 0)
  {
    this = TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::Clear(v1[12]);
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this = TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::Clear(v1[13]);
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::Clear(v1[14]);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::Clear(v1[15]);
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

LABEL_27:
    v4 = v1[17];
    v5 = *(v4 + 8);
    this = (v4 + 8);
    *(this + 4) = 0;
    *(this + 2) = 0;
    if (v5)
    {
      this = sub_221567398(this);
    }

    goto LABEL_29;
  }

LABEL_26:
  this = TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::Clear(v1[16]);
  if ((v2 & 0x2000) != 0)
  {
    goto LABEL_27;
  }

LABEL_29:
  if ((v2 & 0x4000) != 0)
  {
    this = TSCE::ASTNodeArrayArchive_ASTUidTractList::Clear(v1[18]);
  }

  if ((v2 & 0x8000) != 0)
  {
    this = TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::Clear(v1[19]);
  }

LABEL_33:
  if ((v2 & 0xF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      this = TSCE::ASTNodeArrayArchive_ASTColonTractArchive::Clear(v1[20]);
    }

    if ((v2 & 0x20000) != 0)
    {
      v6 = v1[21];
      v7 = *(v6 + 8);
      this = (v6 + 8);
      *(this + 4) = 0;
      *(this + 2) = 0;
      if (v7)
      {
        this = sub_221567398(this);
      }
    }

    if ((v2 & 0x40000) != 0)
    {
      this = TSCE::ASTNodeArrayArchive_ASTCategoryLevels::Clear(v1[22]);
    }

    if ((v2 & 0x80000) != 0)
    {
      this = TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::Clear(v1[23]);
    }
  }

  if ((v2 & 0xF00000) != 0)
  {
    v1[24] = 0;
    v1[25] = 0;
    v1[26] = 0;
  }

  if (HIBYTE(v2))
  {
    v1[27] = 0;
    v1[28] = 0;
    *(v1 + 238) = 0;
    v1[29] = 0;
  }

  v8 = *(v1 + 5);
  if (v8)
  {
    *(v1 + 246) = 0;
    *(v1 + 254) = 0;
    *(v1 + 260) = 0;
  }

  if ((v8 & 0x1F00) != 0)
  {
    *(v1 + 71) = 0;
    *(v1 + 268) = 0u;
    v1[36] = 0x100000001;
  }

  v10 = *(v1 + 8);
  v9 = v1 + 1;
  v9[1] = 0;
  if (v10)
  {

    return sub_221567398(v9);
  }

  return this;
}

uint64_t *TSCE::ASTNodeArrayArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::ASTNodeArrayArchive_ASTNodeArchive::Clear(v4);
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

unsigned __int8 *TSCE::ASTNodeArrayArchive_ASTNodeArchive::_InternalSerialize(TSCE::ASTNodeArrayArchive_ASTNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if ((*(this + 21) & 8) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 72);
    *v4 = 8;
    if (v6 > 0x7F)
    {
      v4[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++v4;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(v4 - 1) = v8;
      }

      else
      {
        v4[2] = v7;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v6;
      v4 += 2;
    }
  }

  v10 = *(this + 4);
  if ((v10 & 0x100000) == 0)
  {
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

LABEL_31:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(this + 49);
    *v4 = 24;
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
        if ((v10 & 0x400000) != 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v4[2] = v16;
        v4 += 3;
        if ((v10 & 0x400000) != 0)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v4[1] = v15;
      v4 += 2;
      if ((v10 & 0x400000) != 0)
      {
        goto LABEL_42;
      }
    }

LABEL_14:
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(this + 48);
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
      if ((v10 & 0x200000) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v4[2] = v12;
      v4 += 3;
      if ((v10 & 0x200000) != 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v4[1] = v11;
    v4 += 2;
    if ((v10 & 0x200000) != 0)
    {
      goto LABEL_31;
    }
  }

LABEL_13:
  if ((v10 & 0x400000) == 0)
  {
    goto LABEL_14;
  }

LABEL_42:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 25);
  *v4 = 33;
  *(v4 + 1) = v19;
  v4 += 9;
  if ((v10 & 0x40000000) == 0)
  {
LABEL_15:
    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v20 = *(this + 244);
  *v4 = 40;
  v4[1] = v20;
  v4 += 2;
  if ((v10 & 1) == 0)
  {
LABEL_16:
    if ((v10 & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  v4 = sub_22150C00C(a3, 6, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v10 & 0x800000) == 0)
  {
LABEL_17:
    if ((v10 & 0x1000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 26);
  *v4 = 57;
  *(v4 + 1) = v21;
  v4 += 9;
  if ((v10 & 0x1000000) == 0)
  {
LABEL_18:
    if ((v10 & 0x2000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_55;
  }

LABEL_52:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v22 = *(this + 27);
  *v4 = 65;
  *(v4 + 1) = v22;
  v4 += 9;
  if ((v10 & 0x2000000) != 0)
  {
LABEL_55:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v23 = *(this + 56);
    *v4 = 72;
    if (v23 > 0x7F)
    {
      v4[1] = v23 | 0x80;
      v24 = v23 >> 7;
      if (v23 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v24 | 0x80;
          v25 = v24 >> 7;
          ++v4;
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
        *(v4 - 1) = v25;
      }

      else
      {
        v4[2] = v24;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v23;
      v4 += 2;
    }
  }

LABEL_64:
  if ((*(this + 20) & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v27 = *(this + 256);
    *v4 = 80;
    v4[1] = v27;
    v4 += 2;
  }

  v28 = *(this + 4);
  if ((v28 & 0x4000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v30 = *(this + 57);
    *v4 = 88;
    if (v30 > 0x7F)
    {
      v4[1] = v30 | 0x80;
      v31 = v30 >> 7;
      if (v30 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v31 | 0x80;
          v32 = v31 >> 7;
          ++v4;
          v33 = v31 >> 14;
          v31 >>= 7;
        }

        while (v33);
        *(v4 - 1) = v32;
        if ((v28 & 0x8000000) != 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v4[2] = v31;
        v4 += 3;
        if ((v28 & 0x8000000) != 0)
        {
          goto LABEL_91;
        }
      }
    }

    else
    {
      v4[1] = v30;
      v4 += 2;
      if ((v28 & 0x8000000) != 0)
      {
        goto LABEL_91;
      }
    }

LABEL_70:
    if ((v28 & 0x10000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_102:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v38 = *(this + 59);
    *v4 = 104;
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
        if ((v28 & 0x40) != 0)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v4[2] = v39;
        v4 += 3;
        if ((v28 & 0x40) != 0)
        {
          goto LABEL_113;
        }
      }
    }

    else
    {
      v4[1] = v38;
      v4 += 2;
      if ((v28 & 0x40) != 0)
      {
        goto LABEL_113;
      }
    }

LABEL_72:
    if ((v28 & 0x80) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_123;
  }

  if ((v28 & 0x8000000) == 0)
  {
    goto LABEL_70;
  }

LABEL_91:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v34 = *(this + 58);
  *v4 = 96;
  if (v34 > 0x7F)
  {
    v4[1] = v34 | 0x80;
    v35 = v34 >> 7;
    if (v34 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v35 | 0x80;
        v36 = v35 >> 7;
        ++v4;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
      *(v4 - 1) = v36;
      if ((v28 & 0x10000000) != 0)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v4[2] = v35;
      v4 += 3;
      if ((v28 & 0x10000000) != 0)
      {
        goto LABEL_102;
      }
    }
  }

  else
  {
    v4[1] = v34;
    v4 += 2;
    if ((v28 & 0x10000000) != 0)
    {
      goto LABEL_102;
    }
  }

LABEL_71:
  if ((v28 & 0x40) == 0)
  {
    goto LABEL_72;
  }

LABEL_113:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v42 = *(this + 10);
  *v4 = 114;
  v43 = *(v42 + 10);
  if (v43 > 0x7F)
  {
    v4[1] = v43 | 0x80;
    v45 = v43 >> 7;
    if (v43 >> 14)
    {
      v44 = v4 + 3;
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
      v4[2] = v45;
      v44 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v43;
    v44 = v4 + 2;
  }

  v4 = TSCE::ASTNodeArrayArchive::_InternalSerialize(v42, v44, a3);
  if ((v28 & 0x80) == 0)
  {
LABEL_73:
    if ((v28 & 0x100) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_133;
  }

LABEL_123:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v48 = *(this + 11);
  *v4 = 122;
  v49 = *(v48 + 5);
  if (v49 > 0x7F)
  {
    v4[1] = v49 | 0x80;
    v51 = v49 >> 7;
    if (v49 >> 14)
    {
      v50 = v4 + 3;
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
      v4[2] = v51;
      v50 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v49;
    v50 = v4 + 2;
  }

  v4 = TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::_InternalSerialize(v48, v50, a3);
  if ((v28 & 0x100) == 0)
  {
LABEL_74:
    if ((v28 & 2) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_143;
  }

LABEL_133:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v54 = *(this + 12);
  *v4 = 386;
  v55 = *(v54 + 5);
  if (v55 > 0x7F)
  {
    v4[2] = v55 | 0x80;
    v57 = v55 >> 7;
    if (v55 >> 14)
    {
      v56 = v4 + 4;
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
      v4[3] = v57;
      v56 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v55;
    v56 = v4 + 3;
  }

  v4 = TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::_InternalSerialize(v54, v56, a3);
  if ((v28 & 2) == 0)
  {
LABEL_75:
    if ((v28 & 0x20000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_144;
  }

LABEL_143:
  v4 = sub_22150C00C(a3, 17, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v28 & 0x20000000) == 0)
  {
LABEL_76:
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_77;
  }

LABEL_144:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v60 = *(this + 60);
  *v4 = 400;
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
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_155;
      }
    }

    else
    {
      v4[3] = v61;
      v4 += 4;
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_155;
      }
    }
  }

  else
  {
    v4[2] = v60;
    v4 += 3;
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_155;
    }
  }

LABEL_77:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 245);
  *v4 = 408;
  v4[2] = v29;
  v4 += 3;
LABEL_155:
  if (*(this + 20))
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v64 = *(this + 246);
    *v4 = 416;
    v4[2] = v64;
    v4 += 3;
  }

  if ((*(this + 16) & 4) != 0)
  {
    v4 = sub_22150C00C(a3, 21, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v65 = *(this + 5);
  if ((v65 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v67 = *(this + 62);
    *v4 = 432;
    if (v67 > 0x7F)
    {
      v4[2] = v67 | 0x80;
      v69 = v67 >> 7;
      if (v67 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v69 | 0x80;
          v72 = v69 >> 7;
          ++v4;
          v73 = v69 >> 14;
          v69 >>= 7;
        }

        while (v73);
        *(v4 - 1) = v72;
        if ((v65 & 8) != 0)
        {
          goto LABEL_184;
        }
      }

      else
      {
        v4[3] = v69;
        v4 += 4;
        if ((v65 & 8) != 0)
        {
          goto LABEL_184;
        }
      }
    }

    else
    {
      v4[2] = v67;
      v4 += 3;
      if ((v65 & 8) != 0)
      {
        goto LABEL_184;
      }
    }

LABEL_163:
    if ((v65 & 0x40) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_164;
  }

  if ((v65 & 8) == 0)
  {
    goto LABEL_163;
  }

LABEL_184:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v74 = *(this + 63);
  *v4 = 440;
  if (v74 > 0x7F)
  {
    v4[2] = v74 | 0x80;
    v75 = v74 >> 7;
    if (v74 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v75 | 0x80;
        v76 = v75 >> 7;
        ++v4;
        v77 = v75 >> 14;
        v75 >>= 7;
      }

      while (v77);
      *(v4 - 1) = v76;
      if ((v65 & 0x40) == 0)
      {
        goto LABEL_195;
      }
    }

    else
    {
      v4[3] = v75;
      v4 += 4;
      if ((v65 & 0x40) == 0)
      {
        goto LABEL_195;
      }
    }
  }

  else
  {
    v4[2] = v74;
    v4 += 3;
    if ((v65 & 0x40) == 0)
    {
      goto LABEL_195;
    }
  }

LABEL_164:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v66 = *(this + 65);
  *v4 = 448;
  if (v66 > 0x7F)
  {
    v4[2] = v66 | 0x80;
    v68 = v66 >> 7;
    if (v66 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v68 | 0x80;
        v70 = v68 >> 7;
        ++v4;
        v71 = v68 >> 14;
        v68 >>= 7;
      }

      while (v71);
      *(v4 - 1) = v70;
    }

    else
    {
      v4[3] = v68;
      v4 += 4;
    }
  }

  else
  {
    v4[2] = v66;
    v4 += 3;
  }

LABEL_195:
  v78 = *(this + 4);
  if ((v78 & 8) != 0)
  {
    v4 = sub_22150C00C(a3, 25, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v78 & 0x200) == 0)
    {
LABEL_197:
      if ((v78 & 0x400) == 0)
      {
        goto LABEL_198;
      }

      goto LABEL_211;
    }
  }

  else if ((v78 & 0x200) == 0)
  {
    goto LABEL_197;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v79 = *(this + 13);
  *v4 = 466;
  v80 = *(v79 + 5);
  if (v80 > 0x7F)
  {
    v4[2] = v80 | 0x80;
    v82 = v80 >> 7;
    if (v80 >> 14)
    {
      v81 = v4 + 4;
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
      v4[3] = v82;
      v81 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v80;
    v81 = v4 + 3;
  }

  v4 = TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::_InternalSerialize(v79, v81, a3);
  if ((v78 & 0x400) == 0)
  {
LABEL_198:
    if ((v78 & 0x800) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_221;
  }

LABEL_211:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v85 = *(this + 14);
  *v4 = 474;
  v86 = *(v85 + 5);
  if (v86 > 0x7F)
  {
    v4[2] = v86 | 0x80;
    v88 = v86 >> 7;
    if (v86 >> 14)
    {
      v87 = v4 + 4;
      do
      {
        *(v87 - 1) = v88 | 0x80;
        v89 = v88 >> 7;
        ++v87;
        v90 = v88 >> 14;
        v88 >>= 7;
      }

      while (v90);
      *(v87 - 1) = v89;
    }

    else
    {
      v4[3] = v88;
      v87 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v86;
    v87 = v4 + 3;
  }

  v4 = TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::_InternalSerialize(v85, v87, a3);
  if ((v78 & 0x800) != 0)
  {
LABEL_221:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v91 = *(this + 15);
    *v4 = 482;
    v92 = *(v91 + 5);
    if (v92 > 0x7F)
    {
      v4[2] = v92 | 0x80;
      v94 = v92 >> 7;
      if (v92 >> 14)
      {
        v93 = v4 + 4;
        do
        {
          *(v93 - 1) = v94 | 0x80;
          v95 = v94 >> 7;
          ++v93;
          v96 = v94 >> 14;
          v94 >>= 7;
        }

        while (v96);
        *(v93 - 1) = v95;
      }

      else
      {
        v4[3] = v94;
        v93 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v92;
      v93 = v4 + 3;
    }

    v4 = TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::_InternalSerialize(v91, v93, a3);
  }

LABEL_231:
  if ((*(this + 20) & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v97 = *(this + 247);
    *v4 = 488;
    v4[2] = v97;
    v4 += 3;
  }

  v98 = *(this + 4);
  if ((v98 & 0x1000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v102 = *(this + 16);
    *v4 = 498;
    v103 = *(v102 + 5);
    if (v103 > 0x7F)
    {
      v4[2] = v103 | 0x80;
      v106 = v103 >> 7;
      if (v103 >> 14)
      {
        v104 = v4 + 4;
        do
        {
          *(v104 - 1) = v106 | 0x80;
          v114 = v106 >> 7;
          ++v104;
          v115 = v106 >> 14;
          v106 >>= 7;
        }

        while (v115);
        *(v104 - 1) = v114;
      }

      else
      {
        v4[3] = v106;
        v104 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v103;
      v104 = v4 + 3;
    }

    v4 = TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::_InternalSerialize(v102, v104, a3);
    if ((v98 & 0x2000) == 0)
    {
LABEL_237:
      if ((v98 & 0x10) == 0)
      {
        goto LABEL_238;
      }

      goto LABEL_295;
    }
  }

  else if ((v98 & 0x2000) == 0)
  {
    goto LABEL_237;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v116 = *(this + 17);
  *v4 = 650;
  v117 = *(v116 + 5);
  if (v117 > 0x7F)
  {
    v4[2] = v117 | 0x80;
    v119 = v117 >> 7;
    if (v117 >> 14)
    {
      v118 = v4 + 4;
      do
      {
        *(v118 - 1) = v119 | 0x80;
        v126 = v119 >> 7;
        ++v118;
        v127 = v119 >> 14;
        v119 >>= 7;
      }

      while (v127);
      *(v118 - 1) = v126;
    }

    else
    {
      v4[3] = v119;
      v118 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v117;
    v118 = v4 + 3;
  }

  v4 = TSCE::ASTNodeArrayArchive_ASTStickyBits::_InternalSerialize(v116, v118, a3);
  if ((v98 & 0x10) == 0)
  {
LABEL_238:
    if ((v98 & 0x20) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_239;
  }

LABEL_295:
  v4 = sub_22150C00C(a3, 34, (*(this + 8) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v98 & 0x20) != 0)
  {
LABEL_239:
    v4 = sub_22150C00C(a3, 35, (*(this + 9) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_240:
  v99 = *(this + 5);
  if ((v99 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v100 = *(this + 257);
    *v4 = 672;
    v4[2] = v100;
    v4 += 3;
  }

  if ((v99 & 0x80) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v101 = *(this + 66);
    *v4 = 680;
    if (v101 > 0x7F)
    {
      v4[2] = v101 | 0x80;
      v105 = v101 >> 7;
      if (v101 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v105 | 0x80;
          v107 = v105 >> 7;
          ++v4;
          v108 = v105 >> 14;
          v105 >>= 7;
        }

        while (v108);
        *(v4 - 1) = v107;
      }

      else
      {
        v4[3] = v105;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v101;
      v4 += 3;
    }
  }

  v109 = *(this + 4);
  if ((v109 & 0x4000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v110 = *(this + 18);
    *v4 = 690;
    v111 = *(v110 + 5);
    if (v111 > 0x7F)
    {
      v4[2] = v111 | 0x80;
      v113 = v111 >> 7;
      if (v111 >> 14)
      {
        v112 = v4 + 4;
        do
        {
          *(v112 - 1) = v113 | 0x80;
          v120 = v113 >> 7;
          ++v112;
          v121 = v113 >> 14;
          v113 >>= 7;
        }

        while (v121);
        *(v112 - 1) = v120;
      }

      else
      {
        v4[3] = v113;
        v112 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v111;
      v112 = v4 + 3;
    }

    v4 = TSCE::ASTNodeArrayArchive_ASTUidTractList::_InternalSerialize(v110, v112, a3);
    if ((v109 & 0x8000) == 0)
    {
LABEL_262:
      if ((v109 & 0x10000) == 0)
      {
        goto LABEL_263;
      }

      goto LABEL_301;
    }
  }

  else if ((v109 & 0x8000) == 0)
  {
    goto LABEL_262;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v122 = *(this + 19);
  *v4 = 698;
  v123 = *(v122 + 5);
  if (v123 > 0x7F)
  {
    v4[2] = v123 | 0x80;
    v125 = v123 >> 7;
    if (v123 >> 14)
    {
      v124 = v4 + 4;
      do
      {
        *(v124 - 1) = v125 | 0x80;
        v128 = v125 >> 7;
        ++v124;
        v129 = v125 >> 14;
        v125 >>= 7;
      }

      while (v129);
      *(v124 - 1) = v128;
    }

    else
    {
      v4[3] = v125;
      v124 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v123;
    v124 = v4 + 3;
  }

  v4 = TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::_InternalSerialize(v122, v124, a3);
  if ((v109 & 0x10000) == 0)
  {
LABEL_263:
    if ((v109 & 0x20000) == 0)
    {
      goto LABEL_321;
    }

    goto LABEL_311;
  }

LABEL_301:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v130 = *(this + 20);
  *v4 = 706;
  v131 = *(v130 + 5);
  if (v131 > 0x7F)
  {
    v4[2] = v131 | 0x80;
    v133 = v131 >> 7;
    if (v131 >> 14)
    {
      v132 = v4 + 4;
      do
      {
        *(v132 - 1) = v133 | 0x80;
        v134 = v133 >> 7;
        ++v132;
        v135 = v133 >> 14;
        v133 >>= 7;
      }

      while (v135);
      *(v132 - 1) = v134;
    }

    else
    {
      v4[3] = v133;
      v132 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v131;
    v132 = v4 + 3;
  }

  v4 = TSCE::ASTNodeArrayArchive_ASTColonTractArchive::_InternalSerialize(v130, v132, a3);
  if ((v109 & 0x20000) != 0)
  {
LABEL_311:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v136 = *(this + 21);
    *v4 = 714;
    v137 = *(v136 + 5);
    if (v137 > 0x7F)
    {
      v4[2] = v137 | 0x80;
      v139 = v137 >> 7;
      if (v137 >> 14)
      {
        v138 = v4 + 4;
        do
        {
          *(v138 - 1) = v139 | 0x80;
          v140 = v139 >> 7;
          ++v138;
          v141 = v139 >> 14;
          v139 >>= 7;
        }

        while (v141);
        *(v138 - 1) = v140;
      }

      else
      {
        v4[3] = v139;
        v138 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v137;
      v138 = v4 + 3;
    }

    v4 = TSCE::ASTNodeArrayArchive_ASTStickyBits::_InternalSerialize(v136, v138, a3);
  }

LABEL_321:
  v142 = *(this + 5);
  if ((v142 & 0x200) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v143 = *(this + 34);
    *v4 = 720;
    if (v143 <= 0x7F)
    {
      v4[2] = v143;
      v4 += 3;
      if ((v142 & 0x400) == 0)
      {
        goto LABEL_343;
      }

      goto LABEL_330;
    }

    v4[2] = v143 | 0x80;
    v144 = v143 >> 7;
    if (v143 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v144 | 0x80;
        v147 = v144 >> 7;
        ++v4;
        v148 = v144 >> 14;
        v144 >>= 7;
      }

      while (v148);
      *(v4 - 1) = v147;
      if ((v142 & 0x400) == 0)
      {
        goto LABEL_343;
      }

      goto LABEL_330;
    }

    v4[3] = v144;
    v4 += 4;
  }

  if ((v142 & 0x400) == 0)
  {
    goto LABEL_343;
  }

LABEL_330:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v145 = *(this + 35);
  *v4 = 728;
  if (v145 > 0x7F)
  {
    v4[2] = v145 | 0x80;
    v146 = v145 >> 7;
    if (v145 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v146 | 0x80;
        v149 = v146 >> 7;
        ++v4;
        v150 = v146 >> 14;
        v146 >>= 7;
      }

      while (v150);
      *(v4 - 1) = v149;
    }

    else
    {
      v4[3] = v146;
      v4 += 4;
    }
  }

  else
  {
    v4[2] = v145;
    v4 += 3;
  }

LABEL_343:
  v151 = *(this + 4);
  if ((v151 & 0x40000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v152 = *(this + 22);
    *v4 = 738;
    v153 = *(v152 + 5);
    if (v153 > 0x7F)
    {
      v4[2] = v153 | 0x80;
      v155 = v153 >> 7;
      if (v153 >> 14)
      {
        v154 = v4 + 4;
        do
        {
          *(v154 - 1) = v155 | 0x80;
          v156 = v155 >> 7;
          ++v154;
          v157 = v155 >> 14;
          v155 >>= 7;
        }

        while (v157);
        *(v154 - 1) = v156;
      }

      else
      {
        v4[3] = v155;
        v154 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v153;
      v154 = v4 + 3;
    }

    v4 = TSCE::ASTNodeArrayArchive_ASTCategoryLevels::_InternalSerialize(v152, v154, a3);
  }

  if ((v151 & 0x80000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v158 = *(this + 23);
    *v4 = 746;
    v159 = *(v158 + 5);
    if (v159 > 0x7F)
    {
      v4[2] = v159 | 0x80;
      v161 = v159 >> 7;
      if (v159 >> 14)
      {
        v160 = v4 + 4;
        do
        {
          *(v160 - 1) = v161 | 0x80;
          v162 = v161 >> 7;
          ++v160;
          v163 = v161 >> 14;
          v161 >>= 7;
        }

        while (v163);
        *(v160 - 1) = v162;
      }

      else
      {
        v4[3] = v161;
        v160 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v159;
      v160 = v4 + 3;
    }

    v4 = TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::_InternalSerialize(v158, v160, a3);
  }

  v164 = *(this + 5);
  if ((v164 & 0x100) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v165 = *(this + 67);
    *v4 = 752;
    if (v165 <= 0x7F)
    {
      v4[2] = v165;
      v4 += 3;
      if ((v164 & 0x1000) == 0)
      {
        goto LABEL_387;
      }

      goto LABEL_374;
    }

    v4[2] = v165 | 0x80;
    v166 = v165 >> 7;
    if (v165 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v166 | 0x80;
        v169 = v166 >> 7;
        ++v4;
        v170 = v166 >> 14;
        v166 >>= 7;
      }

      while (v170);
      *(v4 - 1) = v169;
      if ((v164 & 0x1000) == 0)
      {
        goto LABEL_387;
      }

      goto LABEL_374;
    }

    v4[3] = v166;
    v4 += 4;
  }

  if ((v164 & 0x1000) == 0)
  {
    goto LABEL_387;
  }

LABEL_374:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v167 = *(this + 73);
  *v4 = 760;
  if (v167 > 0x7F)
  {
    v4[2] = v167 | 0x80;
    v168 = v167 >> 7;
    if (v167 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v168 | 0x80;
        v171 = v168 >> 7;
        ++v4;
        v172 = v168 >> 14;
        v168 >>= 7;
      }

      while (v172);
      *(v4 - 1) = v171;
    }

    else
    {
      v4[3] = v168;
      v4 += 4;
    }
  }

  else
  {
    v4[2] = v167;
    v4 += 3;
  }

LABEL_387:
  v173 = *(this + 1);
  if ((v173 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v173 & 0xFFFFFFFFFFFFFFFELL) + 8);
}