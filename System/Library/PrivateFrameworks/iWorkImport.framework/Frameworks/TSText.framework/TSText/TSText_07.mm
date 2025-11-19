unsigned __int8 *TSWP::StringAttributeTable_StringAttribute::_InternalSerialize(TSWP::StringAttributeTable_StringAttribute *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) == 0)
  {
LABEL_9:
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 8);
  *v4 = 8;
  if (v7 <= 0x7F)
  {
    v4[1] = v7;
    v4 += 2;
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v4 = sub_276E5154C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
    goto LABEL_11;
  }

  v4[1] = v7 | 0x80;
  v8 = v7 >> 7;
  if (!(v7 >> 14))
  {
    v4[2] = v8;
    v4 += 3;
    goto LABEL_9;
  }

  v4 += 3;
  do
  {
    *(v4 - 1) = v8 | 0x80;
    v11 = v8 >> 7;
    ++v4;
    v12 = v8 >> 14;
    v8 >>= 7;
  }

  while (v12);
  *(v4 - 1) = v11;
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_11:
  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276E5154C(uint64_t *a1, int a2, const void **a3, _BYTE *a4)
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

  return MEMORY[0x2821EAB50]();
}

uint64_t TSWP::StringAttributeTable_StringAttribute::ByteSizeLong(TSWP::StringAttributeTable_StringAttribute *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) != 0)
  {
    v2 = ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_8:
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSWP::StringAttributeTable_StringAttribute::MergeFrom(TSWP::StringAttributeTable_StringAttribute *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::StringAttributeTable_StringAttribute::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::StringAttributeTable_StringAttribute::MergeFrom(uint64_t this, const TSWP::StringAttributeTable_StringAttribute *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

TSWP::StringAttributeTable_StringAttribute *TSWP::StringAttributeTable_StringAttribute::CopyFrom(TSWP::StringAttributeTable_StringAttribute *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::StringAttributeTable_StringAttribute::Clear(this);

    return TSWP::StringAttributeTable_StringAttribute::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::StringAttributeTable_StringAttribute *TSWP::StringAttributeTable_StringAttribute::CopyFrom(TSWP::StringAttributeTable_StringAttribute *this, const TSWP::StringAttributeTable_StringAttribute *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::StringAttributeTable_StringAttribute::Clear(this);

    return TSWP::StringAttributeTable_StringAttribute::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::StringAttributeTable_StringAttribute::InternalSwap(TSWP::StringAttributeTable_StringAttribute *this, TSWP::StringAttributeTable_StringAttribute *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
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

TSWP::StringAttributeTable *TSWP::StringAttributeTable::StringAttributeTable(TSWP::StringAttributeTable *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885FFFA0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_StringAttributeTable_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSWP::StringAttributeTable *TSWP::StringAttributeTable::StringAttributeTable(TSWP::StringAttributeTable *this, const TSWP::StringAttributeTable *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2885FFFA0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_276EA5068(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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
    sub_276EA4CDC(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSWP::StringAttributeTable::~StringAttributeTable(TSWP::StringAttributeTable *this)
{
  sub_276E4E808(this + 1);
  sub_276EA4FE4(this + 2);
}

{
  TSWP::StringAttributeTable::~StringAttributeTable(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::StringAttributeTable::default_instance(TSWP::StringAttributeTable *this)
{
  if (atomic_load_explicit(scc_info_StringAttributeTable_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_StringAttributeTable_default_instance_;
}

uint64_t *TSWP::StringAttributeTable::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::StringAttributeTable_StringAttribute::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_276EA4D28(v5);
  }

  return this;
}

google::protobuf::internal *TSWP::StringAttributeTable::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_276EA4A1C(a3, &v20) & 1) == 0)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSWP::StringAttributeTable_StringAttribute>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_276F4FB88(a3, v13, v10);
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
        sub_276EA4A94((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_276EA4A1C(a3, &v20))
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

unsigned __int8 *TSWP::StringAttributeTable::_InternalSerialize(TSWP::StringAttributeTable *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSWP::StringAttributeTable_StringAttribute::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::StringAttributeTable::ByteSizeLong(TSWP::StringAttributeTable *this)
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
      v7 = TSWP::StringAttributeTable_StringAttribute::ByteSizeLong(v6);
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

uint64_t TSWP::StringAttributeTable::MergeFrom(TSWP::StringAttributeTable *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::StringAttributeTable::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::StringAttributeTable::MergeFrom(uint64_t this, const TSWP::StringAttributeTable *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_276EA5068(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSWP::StringAttributeTable::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::StringAttributeTable::Clear(this);

    return TSWP::StringAttributeTable::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::StringAttributeTable::CopyFrom(uint64_t *this, const TSWP::StringAttributeTable *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::StringAttributeTable::Clear(this);

    return TSWP::StringAttributeTable::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWP::StringAttributeTable::IsInitialized(TSWP::StringAttributeTable *this)
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

  while ((*(v3 + 16) & 2) != 0);
  return v2 < 1;
}

__n128 TSWP::StringAttributeTable::InternalSwap(TSWP::StringAttributeTable *this, TSWP::StringAttributeTable *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t TSWP::ParaDataAttributeTable_ParaDataAttribute::ParaDataAttributeTable_ParaDataAttribute(uint64_t result, uint64_t a2)
{
  *result = &unk_288600050;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

{
  *result = &unk_288600050;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

TSWP::ParaDataAttributeTable_ParaDataAttribute *TSWP::ParaDataAttributeTable_ParaDataAttribute::ParaDataAttributeTable_ParaDataAttribute(TSWP::ParaDataAttributeTable_ParaDataAttribute *this, const TSWP::ParaDataAttributeTable_ParaDataAttribute *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288600050;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 3) = v6;
  return this;
}

void TSWP::ParaDataAttributeTable_ParaDataAttribute::~ParaDataAttributeTable_ParaDataAttribute(TSWP::ParaDataAttributeTable_ParaDataAttribute *this)
{
  sub_276E4E808(this + 1);
}

{
  sub_276E4E808(this + 1);
}

{
  sub_276E4E808(this + 1);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::ParaDataAttributeTable_ParaDataAttribute::default_instance(TSWP::ParaDataAttributeTable_ParaDataAttribute *this)
{
  if (atomic_load_explicit(scc_info_ParaDataAttributeTable_ParaDataAttribute_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ParaDataAttributeTable_ParaDataAttribute_default_instance_;
}

uint64_t *TSWP::ParaDataAttributeTable_ParaDataAttribute::Clear(TSWP::ParaDataAttributeTable_ParaDataAttribute *this)
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
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::ParaDataAttributeTable_ParaDataAttribute::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v30) & 1) == 0)
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
            sub_276EA4A94((a1 + 8));
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
      if (sub_276EA4A1C(a3, &v30))
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

unsigned __int8 *TSWP::ParaDataAttributeTable_ParaDataAttribute::_InternalSerialize(TSWP::ParaDataAttributeTable_ParaDataAttribute *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSWP::ParaDataAttributeTable_ParaDataAttribute::RequiredFieldsByteSizeFallback(TSWP::ParaDataAttributeTable_ParaDataAttribute *this)
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
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSWP::ParaDataAttributeTable_ParaDataAttribute::ByteSizeLong(TSWP::ParaDataAttributeTable_ParaDataAttribute *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v3 = TSWP::ParaDataAttributeTable_ParaDataAttribute::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = vshr_n_u32(vmla_s32(0x4900000049, veor_s8(vclz_s32((*(this + 28) | 0x100000001)), 0x1F0000001FLL), 0x900000009), 6uLL);
    v3 = v2.i32[0] + ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + v2.i32[1] + 3;
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

uint64_t TSWP::ParaDataAttributeTable_ParaDataAttribute::MergeFrom(TSWP::ParaDataAttributeTable_ParaDataAttribute *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ParaDataAttributeTable_ParaDataAttribute::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ParaDataAttributeTable_ParaDataAttribute::MergeFrom(uint64_t this, const TSWP::ParaDataAttributeTable_ParaDataAttribute *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

TSWP::ParaDataAttributeTable_ParaDataAttribute *TSWP::ParaDataAttributeTable_ParaDataAttribute::CopyFrom(TSWP::ParaDataAttributeTable_ParaDataAttribute *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ParaDataAttributeTable_ParaDataAttribute::Clear(this);

    return TSWP::ParaDataAttributeTable_ParaDataAttribute::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::ParaDataAttributeTable_ParaDataAttribute *TSWP::ParaDataAttributeTable_ParaDataAttribute::CopyFrom(TSWP::ParaDataAttributeTable_ParaDataAttribute *this, const TSWP::ParaDataAttributeTable_ParaDataAttribute *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ParaDataAttributeTable_ParaDataAttribute::Clear(this);

    return TSWP::ParaDataAttributeTable_ParaDataAttribute::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ParaDataAttributeTable_ParaDataAttribute::InternalSwap(TSWP::ParaDataAttributeTable_ParaDataAttribute *this, TSWP::ParaDataAttributeTable_ParaDataAttribute *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
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

TSWP::ParaDataAttributeTable *TSWP::ParaDataAttributeTable::ParaDataAttributeTable(TSWP::ParaDataAttributeTable *this, google::protobuf::Arena *a2)
{
  *this = &unk_288600100;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_ParaDataAttributeTable_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSWP::ParaDataAttributeTable *TSWP::ParaDataAttributeTable::ParaDataAttributeTable(TSWP::ParaDataAttributeTable *this, const TSWP::ParaDataAttributeTable *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_288600100;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_276EA51C0(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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
    sub_276EA4CDC(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSWP::ParaDataAttributeTable::~ParaDataAttributeTable(TSWP::ParaDataAttributeTable *this)
{
  sub_276E4E808(this + 1);
  sub_276EA5128(this + 2);
}

{
  TSWP::ParaDataAttributeTable::~ParaDataAttributeTable(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::ParaDataAttributeTable::default_instance(TSWP::ParaDataAttributeTable *this)
{
  if (atomic_load_explicit(scc_info_ParaDataAttributeTable_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ParaDataAttributeTable_default_instance_;
}

uint64_t *TSWP::ParaDataAttributeTable::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::ParaDataAttributeTable_ParaDataAttribute::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_276EA4D28(v5);
  }

  return this;
}

google::protobuf::internal *TSWP::ParaDataAttributeTable::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_276EA4A1C(a3, &v20) & 1) == 0)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParaDataAttributeTable_ParaDataAttribute>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_276F4FC58(a3, v13, v10);
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
        sub_276EA4A94((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_276EA4A1C(a3, &v20))
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

unsigned __int8 *TSWP::ParaDataAttributeTable::_InternalSerialize(TSWP::ParaDataAttributeTable *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSWP::ParaDataAttributeTable_ParaDataAttribute::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ParaDataAttributeTable::ByteSizeLong(TSWP::ParaDataAttributeTable *this)
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
      v7 = TSWP::ParaDataAttributeTable_ParaDataAttribute::ByteSizeLong(v6);
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

uint64_t TSWP::ParaDataAttributeTable::MergeFrom(TSWP::ParaDataAttributeTable *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ParaDataAttributeTable::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ParaDataAttributeTable::MergeFrom(uint64_t this, const TSWP::ParaDataAttributeTable *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_276EA51C0(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSWP::ParaDataAttributeTable::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ParaDataAttributeTable::Clear(this);

    return TSWP::ParaDataAttributeTable::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ParaDataAttributeTable::CopyFrom(uint64_t *this, const TSWP::ParaDataAttributeTable *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ParaDataAttributeTable::Clear(this);

    return TSWP::ParaDataAttributeTable::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWP::ParaDataAttributeTable::IsInitialized(TSWP::ParaDataAttributeTable *this)
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

  while ((~*(v3 + 16) & 7) == 0);
  return v2 < 1;
}

__n128 TSWP::ParaDataAttributeTable::InternalSwap(TSWP::ParaDataAttributeTable *this, TSWP::ParaDataAttributeTable *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

TSP::Range *TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::clear_range(TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Range::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::clear_field(TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::OverlappingFieldAttributeTable_OverlappingFieldAttribute(TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886001B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_OverlappingFieldAttributeTable_OverlappingFieldAttribute_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2886001B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_OverlappingFieldAttributeTable_OverlappingFieldAttribute_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::OverlappingFieldAttributeTable_OverlappingFieldAttribute(TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *this, const TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886001B0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::~OverlappingFieldAttributeTable_OverlappingFieldAttribute(TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *this)
{
  if (this != &TSWP::_OverlappingFieldAttributeTable_OverlappingFieldAttribute_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Range::~Range(v2);
      MEMORY[0x277CA3D00]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::~OverlappingFieldAttributeTable_OverlappingFieldAttribute(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::default_instance(TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *this)
{
  if (atomic_load_explicit(scc_info_OverlappingFieldAttributeTable_OverlappingFieldAttribute_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_OverlappingFieldAttributeTable_OverlappingFieldAttribute_default_instance_;
}

uint64_t *TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::Range::Clear(this[3]);
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

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  while ((sub_276EA4A1C(a3, &v20) & 1) == 0)
  {
    v5 = (v20 + 1);
    v6 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v20 + 2);
LABEL_6:
      v20 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
    v20 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v18;
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

        v13 = MEMORY[0x277CA3250](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v20;
      }

      v10 = sub_276F4F9E8(a3, v11, v5);
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
          return v20;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277CA3230](v15);
        LODWORD(v14) = v16;
        *(a1 + 24) = v16;
        v5 = v20;
      }

      v10 = sub_276F4F918(a3, v14, v5);
    }

LABEL_30:
    v20 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v20;
}

unsigned __int8 *TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::_InternalSerialize(TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Range::_InternalSerialize(v6, v8, a3);
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

uint64_t TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::RequiredFieldsByteSizeFallback(TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *this)
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

  v4 = TSP::Range::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::ByteSizeLong(TSP::Range **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Range::ByteSizeLong(this[3]);
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

uint64_t TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::MergeFrom(TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::MergeFrom(uint64_t this, const TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277CA3230](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809F8];
      }

      this = TSP::Range::MergeFrom(v6, v8);
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

        v9 = MEMORY[0x277CA3250](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::Clear(this);

    return TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::CopyFrom(uint64_t *this, const TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::Clear(this);

    return TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::IsInitialized(TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  result = TSP::Range::IsInitialized(*(this + 3));
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

__n128 TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::InternalSwap(TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *this, TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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

TSWP::OverlappingFieldAttributeTable *TSWP::OverlappingFieldAttributeTable::OverlappingFieldAttributeTable(TSWP::OverlappingFieldAttributeTable *this, google::protobuf::Arena *a2)
{
  *this = &unk_288600260;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_OverlappingFieldAttributeTable_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSWP::OverlappingFieldAttributeTable *TSWP::OverlappingFieldAttributeTable::OverlappingFieldAttributeTable(TSWP::OverlappingFieldAttributeTable *this, const TSWP::OverlappingFieldAttributeTable *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_288600260;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_276EA5304(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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
    sub_276EA4CDC(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSWP::OverlappingFieldAttributeTable::~OverlappingFieldAttributeTable(TSWP::OverlappingFieldAttributeTable *this)
{
  sub_276E4E808(this + 1);
  sub_276EA5280(this + 2);
}

{
  TSWP::OverlappingFieldAttributeTable::~OverlappingFieldAttributeTable(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::OverlappingFieldAttributeTable::default_instance(TSWP::OverlappingFieldAttributeTable *this)
{
  if (atomic_load_explicit(scc_info_OverlappingFieldAttributeTable_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_OverlappingFieldAttributeTable_default_instance_;
}

uint64_t *TSWP::OverlappingFieldAttributeTable::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_276EA4D28(v5);
  }

  return this;
}

google::protobuf::internal *TSWP::OverlappingFieldAttributeTable::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_276EA4A1C(a3, &v20) & 1) == 0)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_276F4FD28(a3, v13, v10);
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
        sub_276EA4A94((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_276EA4A1C(a3, &v20))
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

unsigned __int8 *TSWP::OverlappingFieldAttributeTable::_InternalSerialize(TSWP::OverlappingFieldAttributeTable *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::OverlappingFieldAttributeTable::ByteSizeLong(TSWP::OverlappingFieldAttributeTable *this)
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
      v7 = TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::ByteSizeLong(v6);
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

uint64_t TSWP::OverlappingFieldAttributeTable::MergeFrom(TSWP::OverlappingFieldAttributeTable *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::OverlappingFieldAttributeTable::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::OverlappingFieldAttributeTable::MergeFrom(uint64_t this, const TSWP::OverlappingFieldAttributeTable *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_276EA5304(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSWP::OverlappingFieldAttributeTable::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::OverlappingFieldAttributeTable::Clear(this);

    return TSWP::OverlappingFieldAttributeTable::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::OverlappingFieldAttributeTable::CopyFrom(uint64_t *this, const TSWP::OverlappingFieldAttributeTable *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::OverlappingFieldAttributeTable::Clear(this);

    return TSWP::OverlappingFieldAttributeTable::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWP::OverlappingFieldAttributeTable::IsInitialized(TSWP::OverlappingFieldAttributeTable *this)
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
    IsInitialized = TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSWP::OverlappingFieldAttributeTable::InternalSwap(TSWP::OverlappingFieldAttributeTable *this, TSWP::OverlappingFieldAttributeTable *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

TSP::Reference *TSWP::StorageArchive::clear_style_sheet(TSWP::StorageArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWP::StorageArchive *TSWP::StorageArchive::StorageArchive(TSWP::StorageArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288600310;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_StorageArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 218) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 3) = 0u;
  *(this + 59) = 3;
  return this;
}

TSWP::StorageArchive *TSWP::StorageArchive::StorageArchive(TSWP::StorageArchive *this, const TSWP::StorageArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288600310;
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
    sub_276EA5460(this + 1, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_276EA4CDC(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  if ((v11 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v11 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v11 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v11 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v11 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v11 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v11 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v11 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v11 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v11 & 0x4000) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  if ((v11 & 0x8000) != 0)
  {
    operator new();
  }

  *(this + 21) = 0;
  if ((v11 & 0x10000) != 0)
  {
    operator new();
  }

  *(this + 22) = 0;
  if ((v11 & 0x20000) != 0)
  {
    operator new();
  }

  *(this + 23) = 0;
  if ((v11 & 0x40000) != 0)
  {
    operator new();
  }

  *(this + 24) = 0;
  if ((v11 & 0x80000) != 0)
  {
    operator new();
  }

  *(this + 25) = 0;
  if ((v11 & 0x100000) != 0)
  {
    operator new();
  }

  *(this + 26) = 0;
  if ((v11 & 0x200000) != 0)
  {
    operator new();
  }

  *(this + 27) = 0;
  if ((v11 & 0x400000) != 0)
  {
    operator new();
  }

  *(this + 28) = 0;
  *(this + 29) = *(a2 + 29);
  return this;
}

void sub_276E551FC(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v2, 0x10A1C40290C9B23);
  sub_276EA53C4((v1 + 24));
  _Unwind_Resume(a1);
}

void TSWP::StorageArchive::~StorageArchive(TSWP::StorageArchive *this)
{
  sub_276E552E4(this);
  sub_276E4E808(this + 1);
  sub_276EA53C4(this + 3);
}

{
  TSWP::StorageArchive::~StorageArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *sub_276E552E4(void *result)
{
  if (result != &TSWP::_StorageArchive_default_instance_)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277CA3D00]();
    }

    v3 = v1[7];
    if (v3)
    {
      TSWP::ObjectAttributeTable::~ObjectAttributeTable(v3);
      MEMORY[0x277CA3D00]();
    }

    v4 = v1[8];
    if (v4)
    {
      TSWP::ParaDataAttributeTable::~ParaDataAttributeTable(v4);
      MEMORY[0x277CA3D00]();
    }

    v5 = v1[9];
    if (v5)
    {
      TSWP::ObjectAttributeTable::~ObjectAttributeTable(v5);
      MEMORY[0x277CA3D00]();
    }

    v6 = v1[10];
    if (v6)
    {
      TSWP::ObjectAttributeTable::~ObjectAttributeTable(v6);
      MEMORY[0x277CA3D00]();
    }

    v7 = v1[11];
    if (v7)
    {
      TSWP::ObjectAttributeTable::~ObjectAttributeTable(v7);
      MEMORY[0x277CA3D00]();
    }

    v8 = v1[12];
    if (v8)
    {
      TSWP::ObjectAttributeTable::~ObjectAttributeTable(v8);
      MEMORY[0x277CA3D00]();
    }

    v9 = v1[13];
    if (v9)
    {
      TSWP::ObjectAttributeTable::~ObjectAttributeTable(v9);
      MEMORY[0x277CA3D00]();
    }

    v10 = v1[14];
    if (v10)
    {
      TSWP::ParaDataAttributeTable::~ParaDataAttributeTable(v10);
      MEMORY[0x277CA3D00]();
    }

    v11 = v1[15];
    if (v11)
    {
      TSWP::ObjectAttributeTable::~ObjectAttributeTable(v11);
      MEMORY[0x277CA3D00]();
    }

    v12 = v1[16];
    if (v12)
    {
      TSWP::ObjectAttributeTable::~ObjectAttributeTable(v12);
      MEMORY[0x277CA3D00]();
    }

    v13 = v1[17];
    if (v13)
    {
      TSWP::ObjectAttributeTable::~ObjectAttributeTable(v13);
      MEMORY[0x277CA3D00]();
    }

    v14 = v1[18];
    if (v14)
    {
      TSWP::ObjectAttributeTable::~ObjectAttributeTable(v14);
      MEMORY[0x277CA3D00]();
    }

    v15 = v1[19];
    if (v15)
    {
      TSWP::StringAttributeTable::~StringAttributeTable(v15);
      MEMORY[0x277CA3D00]();
    }

    v16 = v1[20];
    if (v16)
    {
      TSWP::StringAttributeTable::~StringAttributeTable(v16);
      MEMORY[0x277CA3D00]();
    }

    v17 = v1[21];
    if (v17)
    {
      TSWP::ObjectAttributeTable::~ObjectAttributeTable(v17);
      MEMORY[0x277CA3D00]();
    }

    v18 = v1[22];
    if (v18)
    {
      TSWP::ObjectAttributeTable::~ObjectAttributeTable(v18);
      MEMORY[0x277CA3D00]();
    }

    v19 = v1[23];
    if (v19)
    {
      TSWP::ObjectAttributeTable::~ObjectAttributeTable(v19);
      MEMORY[0x277CA3D00]();
    }

    v20 = v1[24];
    if (v20)
    {
      TSWP::ParaDataAttributeTable::~ParaDataAttributeTable(v20);
      MEMORY[0x277CA3D00]();
    }

    v21 = v1[25];
    if (v21)
    {
      TSWP::OverlappingFieldAttributeTable::~OverlappingFieldAttributeTable(v21);
      MEMORY[0x277CA3D00]();
    }

    v22 = v1[26];
    if (v22)
    {
      TSWP::OverlappingFieldAttributeTable::~OverlappingFieldAttributeTable(v22);
      MEMORY[0x277CA3D00]();
    }

    v23 = v1[27];
    if (v23)
    {
      TSWP::ObjectAttributeTable::~ObjectAttributeTable(v23);
      MEMORY[0x277CA3D00]();
    }

    result = v1[28];
    if (result)
    {
      TSWP::ObjectAttributeTable::~ObjectAttributeTable(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::StorageArchive::default_instance(TSWP::StorageArchive *this)
{
  if (atomic_load_explicit(scc_info_StorageArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_StorageArchive_default_instance_;
}

uint64_t *TSWP::StorageArchive::Clear(TSWP::StorageArchive *this)
{
  result = sub_276EA4C0C(this + 24);
  v3 = *(this + 4);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    result = TSP::Reference::Clear(*(this + 6));
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_38;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = TSWP::ObjectAttributeTable::Clear(*(this + 7));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = TSWP::ParaDataAttributeTable::Clear(*(this + 8));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = TSWP::ObjectAttributeTable::Clear(*(this + 9));
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_41:
    result = TSWP::ObjectAttributeTable::Clear(*(this + 11));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_40:
  result = TSWP::ObjectAttributeTable::Clear(*(this + 10));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_41;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_42:
  result = TSWP::ObjectAttributeTable::Clear(*(this + 12));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = TSWP::ObjectAttributeTable::Clear(*(this + 13));
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    result = TSWP::ParaDataAttributeTable::Clear(*(this + 14));
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_46;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSWP::ObjectAttributeTable::Clear(*(this + 15));
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = TSWP::ObjectAttributeTable::Clear(*(this + 16));
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = TSWP::ObjectAttributeTable::Clear(*(this + 17));
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = TSWP::ObjectAttributeTable::Clear(*(this + 18));
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = TSWP::StringAttributeTable::Clear(*(this + 19));
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_50:
  result = TSWP::StringAttributeTable::Clear(*(this + 20));
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    result = TSWP::ObjectAttributeTable::Clear(*(this + 21));
  }

LABEL_21:
  if ((v3 & 0x7F0000) == 0)
  {
    goto LABEL_30;
  }

  if ((v3 & 0x10000) != 0)
  {
    result = TSWP::ObjectAttributeTable::Clear(*(this + 22));
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_54;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = TSWP::ObjectAttributeTable::Clear(*(this + 23));
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = TSWP::ParaDataAttributeTable::Clear(*(this + 24));
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = TSWP::OverlappingFieldAttributeTable::Clear(*(this + 25));
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = TSWP::OverlappingFieldAttributeTable::Clear(*(this + 26));
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_57:
  result = TSWP::ObjectAttributeTable::Clear(*(this + 27));
  if ((v3 & 0x400000) != 0)
  {
LABEL_29:
    result = TSWP::ObjectAttributeTable::Clear(*(this + 28));
  }

LABEL_30:
  *(this + 232) = 0;
  if ((v3 & 0x3000000) != 0)
  {
    *(this + 233) = 0;
    *(this + 59) = 3;
  }

  v5 = *(this + 8);
  v4 = this + 8;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_276EA4D28(v4);
  }

  return result;
}

google::protobuf::internal *TSWP::StorageArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v63 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v63) & 1) == 0)
  {
    while (2)
    {
      v7 = (v63 + 1);
      v8 = *v63;
      if (*v63 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v63, (v9 - 128));
          v63 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_181;
          }

          v7 = TagFallback;
          v8 = v14;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 8)
              {
                goto LABEL_167;
              }

              v11 = (v7 + 1);
              v10 = *v7;
              if ((v10 & 0x8000000000000000) == 0)
              {
                goto LABEL_12;
              }

              v12 = *v11;
              v10 = (v12 << 7) + v10 - 128;
              if (v12 < 0)
              {
                v63 = google::protobuf::internal::VarintParseSlow64(v7, v10);
                if (!v63)
                {
                  goto LABEL_181;
                }
              }

              else
              {
                v11 = (v7 + 2);
LABEL_12:
                v63 = v11;
              }

              if (v10 > 8)
              {
                sub_276F53EA8();
              }

              else
              {
                *(a1 + 16) |= 0x2000000u;
                *(a1 + 236) = v10;
              }

              goto LABEL_165;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 1u;
              v39 = *(a1 + 48);
              if (!v39)
              {
                v40 = *(a1 + 8);
                if (v40)
                {
                  v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
                }

                v41 = MEMORY[0x277CA3250](v40);
                LODWORD(v39) = v41;
                *(a1 + 48) = v41;
                v7 = v63;
              }

              v36 = sub_276F4F9E8(a3, v39, v7);
              goto LABEL_164;
            case 3u:
              if (v8 != 26)
              {
                goto LABEL_167;
              }

              v28 = v7 - 1;
              break;
            case 4u:
              if (v8 != 32)
              {
                goto LABEL_167;
              }

              v5 |= 0x800000u;
              v47 = (v7 + 1);
              v46 = *v7;
              if ((v46 & 0x8000000000000000) == 0)
              {
                goto LABEL_124;
              }

              v48 = *v47;
              v46 = (v48 << 7) + v46 - 128;
              if (v48 < 0)
              {
                v59 = google::protobuf::internal::VarintParseSlow64(v7, v46);
                v63 = v59;
                *(a1 + 232) = v60 != 0;
                if (!v59)
                {
                  goto LABEL_181;
                }
              }

              else
              {
                v47 = (v7 + 2);
LABEL_124:
                v63 = v47;
                *(a1 + 232) = v46 != 0;
              }

              goto LABEL_165;
            case 5u:
              if (v8 != 42)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 2u;
              v17 = *(a1 + 56);
              if (v17)
              {
                goto LABEL_163;
              }

              v49 = *(a1 + 8);
              if (v49)
              {
                v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v49);
              *(a1 + 56) = v17;
              goto LABEL_162;
            case 6u:
              if (v8 != 50)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 4u;
              v24 = *(a1 + 64);
              if (v24)
              {
                goto LABEL_81;
              }

              v35 = *(a1 + 8);
              if (v35)
              {
                v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
              }

              v24 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParaDataAttributeTable>(v35);
              *(a1 + 64) = v24;
              goto LABEL_80;
            case 7u:
              if (v8 != 58)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 8u;
              v17 = *(a1 + 72);
              if (v17)
              {
                goto LABEL_163;
              }

              v42 = *(a1 + 8);
              if (v42)
              {
                v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v42);
              *(a1 + 72) = v17;
              goto LABEL_162;
            case 8u:
              if (v8 != 66)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x10u;
              v17 = *(a1 + 80);
              if (v17)
              {
                goto LABEL_163;
              }

              v43 = *(a1 + 8);
              if (v43)
              {
                v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v43);
              *(a1 + 80) = v17;
              goto LABEL_162;
            case 9u:
              if (v8 != 74)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x20u;
              v17 = *(a1 + 88);
              if (v17)
              {
                goto LABEL_163;
              }

              v53 = *(a1 + 8);
              if (v53)
              {
                v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v53);
              *(a1 + 88) = v17;
              goto LABEL_162;
            case 0xAu:
              if (v8 != 80)
              {
                goto LABEL_167;
              }

              v5 |= 0x1000000u;
              v51 = (v7 + 1);
              v50 = *v7;
              if ((v50 & 0x8000000000000000) == 0)
              {
                goto LABEL_134;
              }

              v52 = *v51;
              v50 = (v52 << 7) + v50 - 128;
              if (v52 < 0)
              {
                v61 = google::protobuf::internal::VarintParseSlow64(v7, v50);
                v63 = v61;
                *(a1 + 233) = v62 != 0;
                if (!v61)
                {
                  goto LABEL_181;
                }
              }

              else
              {
                v51 = (v7 + 2);
LABEL_134:
                v63 = v51;
                *(a1 + 233) = v50 != 0;
              }

              goto LABEL_165;
            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x40u;
              v17 = *(a1 + 96);
              if (v17)
              {
                goto LABEL_163;
              }

              v23 = *(a1 + 8);
              if (v23)
              {
                v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v23);
              *(a1 + 96) = v17;
              goto LABEL_162;
            case 0xCu:
              if (v8 != 98)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x80u;
              v17 = *(a1 + 104);
              if (v17)
              {
                goto LABEL_163;
              }

              v37 = *(a1 + 8);
              if (v37)
              {
                v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v37);
              *(a1 + 104) = v17;
              goto LABEL_162;
            case 0xEu:
              if (v8 != 114)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x100u;
              v24 = *(a1 + 112);
              if (v24)
              {
                goto LABEL_81;
              }

              v26 = *(a1 + 8);
              if (v26)
              {
                v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
              }

              v24 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParaDataAttributeTable>(v26);
              *(a1 + 112) = v24;
              goto LABEL_80;
            case 0xFu:
              if (v8 != 122)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x200u;
              v17 = *(a1 + 120);
              if (v17)
              {
                goto LABEL_163;
              }

              v19 = *(a1 + 8);
              if (v19)
              {
                v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v19);
              *(a1 + 120) = v17;
              goto LABEL_162;
            case 0x10u:
              if (v8 != 130)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x400u;
              v17 = *(a1 + 128);
              if (v17)
              {
                goto LABEL_163;
              }

              v44 = *(a1 + 8);
              if (v44)
              {
                v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v44);
              *(a1 + 128) = v17;
              goto LABEL_162;
            case 0x11u:
              if (v8 != 138)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x800u;
              v17 = *(a1 + 136);
              if (v17)
              {
                goto LABEL_163;
              }

              v45 = *(a1 + 8);
              if (v45)
              {
                v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v45);
              *(a1 + 136) = v17;
              goto LABEL_162;
            case 0x12u:
              if (v8 != 146)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x1000u;
              v17 = *(a1 + 144);
              if (v17)
              {
                goto LABEL_163;
              }

              v55 = *(a1 + 8);
              if (v55)
              {
                v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v55);
              *(a1 + 144) = v17;
              goto LABEL_162;
            case 0x13u:
              if (v8 != 154)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x2000u;
              v15 = *(a1 + 152);
              if (v15)
              {
                goto LABEL_146;
              }

              v54 = *(a1 + 8);
              if (v54)
              {
                v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = google::protobuf::Arena::CreateMaybeMessage<TSWP::StringAttributeTable>(v54);
              *(a1 + 152) = v15;
              goto LABEL_145;
            case 0x14u:
              if (v8 != 162)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x4000u;
              v15 = *(a1 + 160);
              if (v15)
              {
                goto LABEL_146;
              }

              v16 = *(a1 + 8);
              if (v16)
              {
                v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = google::protobuf::Arena::CreateMaybeMessage<TSWP::StringAttributeTable>(v16);
              *(a1 + 160) = v15;
LABEL_145:
              v7 = v63;
LABEL_146:
              v36 = sub_276F4FF98(a3, v15, v7);
              goto LABEL_164;
            case 0x15u:
              if (v8 != 170)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x8000u;
              v17 = *(a1 + 168);
              if (v17)
              {
                goto LABEL_163;
              }

              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v27);
              *(a1 + 168) = v17;
              goto LABEL_162;
            case 0x16u:
              if (v8 != 178)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x10000u;
              v17 = *(a1 + 176);
              if (v17)
              {
                goto LABEL_163;
              }

              v56 = *(a1 + 8);
              if (v56)
              {
                v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v56);
              *(a1 + 176) = v17;
              goto LABEL_162;
            case 0x17u:
              if (v8 != 186)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x20000u;
              v17 = *(a1 + 184);
              if (v17)
              {
                goto LABEL_163;
              }

              v18 = *(a1 + 8);
              if (v18)
              {
                v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v18);
              *(a1 + 184) = v17;
              goto LABEL_162;
            case 0x18u:
              if (v8 != 194)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x40000u;
              v24 = *(a1 + 192);
              if (v24)
              {
                goto LABEL_81;
              }

              v25 = *(a1 + 8);
              if (v25)
              {
                v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
              }

              v24 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParaDataAttributeTable>(v25);
              *(a1 + 192) = v24;
LABEL_80:
              v7 = v63;
LABEL_81:
              v36 = sub_276F4FEC8(a3, v24, v7);
              goto LABEL_164;
            case 0x19u:
              if (v8 != 202)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x80000u;
              v21 = *(a1 + 200);
              if (v21)
              {
                goto LABEL_93;
              }

              v22 = *(a1 + 8);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v21 = google::protobuf::Arena::CreateMaybeMessage<TSWP::OverlappingFieldAttributeTable>(v22);
              *(a1 + 200) = v21;
              goto LABEL_92;
            case 0x1Au:
              if (v8 != 210)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x100000u;
              v21 = *(a1 + 208);
              if (v21)
              {
                goto LABEL_93;
              }

              v38 = *(a1 + 8);
              if (v38)
              {
                v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
              }

              v21 = google::protobuf::Arena::CreateMaybeMessage<TSWP::OverlappingFieldAttributeTable>(v38);
              *(a1 + 208) = v21;
LABEL_92:
              v7 = v63;
LABEL_93:
              v36 = sub_276F50068(a3, v21, v7);
              goto LABEL_164;
            case 0x1Bu:
              if (v8 != 218)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x200000u;
              v17 = *(a1 + 216);
              if (v17)
              {
                goto LABEL_163;
              }

              v20 = *(a1 + 8);
              if (v20)
              {
                v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v20);
              *(a1 + 216) = v17;
              goto LABEL_162;
            case 0x1Cu:
              if (v8 != 226)
              {
                goto LABEL_167;
              }

              *(a1 + 16) |= 0x400000u;
              v17 = *(a1 + 224);
              if (v17)
              {
                goto LABEL_163;
              }

              v57 = *(a1 + 8);
              if (v57)
              {
                v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v57);
              *(a1 + 224) = v17;
LABEL_162:
              v7 = v63;
LABEL_163:
              v36 = sub_276F4FDF8(a3, v17, v7);
              goto LABEL_164;
            default:
LABEL_167:
              if (v8)
              {
                v58 = (v8 & 7) == 4;
              }

              else
              {
                v58 = 1;
              }

              if (v58)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_276EA4A94((a1 + 8));
              }

              v36 = google::protobuf::internal::UnknownFieldParse();
LABEL_164:
              v63 = v36;
              if (!v36)
              {
LABEL_181:
                v63 = 0;
                goto LABEL_2;
              }

LABEL_165:
              if (sub_276EA4A1C(a3, &v63))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v63 = (v28 + 1);
            v29 = *(a1 + 40);
            if (!v29)
            {
              goto LABEL_69;
            }

            v30 = *(a1 + 32);
            v31 = *v29;
            if (v30 >= *v29)
            {
              break;
            }

            *(a1 + 32) = v30 + 1;
LABEL_71:
            v28 = google::protobuf::internal::InlineGreedyStringParser();
            v63 = v28;
            if (!v28)
            {
              goto LABEL_181;
            }

            if (*a3 <= v28 || *v28 != 26)
            {
              goto LABEL_165;
            }
          }

          if (v31 == *(a1 + 36))
          {
LABEL_69:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v29 = *(a1 + 40);
            v31 = *v29;
          }

          *v29 = v31 + 1;
          v32 = sub_276D34D8C(*(a1 + 24));
          v33 = *(a1 + 32);
          v34 = *(a1 + 40) + 8 * v33;
          *(a1 + 32) = v33 + 1;
          *(v34 + 8) = v32;
          goto LABEL_71;
        }

        v7 = (v63 + 2);
      }

      break;
    }

    v63 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v63;
}

unsigned __int8 *TSWP::StorageArchive::_InternalSerialize(TSWP::StorageArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x2000000) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 59);
    *v4 = 8;
    if (v7 <= 0x7F)
    {
      v4[1] = v7;
      v4 += 2;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    v4[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v8 | 0x80;
        v13 = v8 >> 7;
        ++v4;
        v14 = v8 >> 14;
        v8 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    v4[2] = v8;
    v4 += 3;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v9 = *(this + 6);
  *v4 = 18;
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
        v15 = v12 >> 7;
        ++v11;
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
      *(v11 - 1) = v15;
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

  v4 = TSP::Reference::_InternalSerialize(v9, v11, a3);
LABEL_24:
  v17 = *(this + 8);
  if (v17 >= 1)
  {
    v18 = 8;
    do
    {
      v4 = sub_276E57174(a3, 3, *(*(this + 5) + v18), v4);
      v18 += 8;
      --v17;
    }

    while (v17);
  }

  if ((v6 & 0x800000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v19 = *(this + 232);
    *v4 = 32;
    v4[1] = v19;
    v4 += 2;
    if ((v6 & 2) == 0)
    {
LABEL_29:
      if ((v6 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_65;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_29;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v20 = *(this + 7);
  *v4 = 42;
  v21 = *(v20 + 10);
  if (v21 > 0x7F)
  {
    v4[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = v4 + 3;
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
      v4[2] = v23;
      v22 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v21;
    v22 = v4 + 2;
  }

  v4 = TSWP::ObjectAttributeTable::_InternalSerialize(v20, v22, a3);
  if ((v6 & 4) == 0)
  {
LABEL_30:
    if ((v6 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_65:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(this + 8);
  *v4 = 50;
  v27 = *(v26 + 10);
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

  v4 = TSWP::ParaDataAttributeTable::_InternalSerialize(v26, v28, a3);
  if ((v6 & 8) == 0)
  {
LABEL_31:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_85;
  }

LABEL_75:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v32 = *(this + 9);
  *v4 = 58;
  v33 = *(v32 + 10);
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

  v4 = TSWP::ObjectAttributeTable::_InternalSerialize(v32, v34, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_32:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_95;
  }

LABEL_85:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v38 = *(this + 10);
  *v4 = 66;
  v39 = *(v38 + 10);
  if (v39 > 0x7F)
  {
    v4[1] = v39 | 0x80;
    v41 = v39 >> 7;
    if (v39 >> 14)
    {
      v40 = v4 + 3;
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
      v4[2] = v41;
      v40 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v39;
    v40 = v4 + 2;
  }

  v4 = TSWP::ObjectAttributeTable::_InternalSerialize(v38, v40, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_33:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_105;
  }

LABEL_95:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v44 = *(this + 11);
  *v4 = 74;
  v45 = *(v44 + 10);
  if (v45 > 0x7F)
  {
    v4[1] = v45 | 0x80;
    v47 = v45 >> 7;
    if (v45 >> 14)
    {
      v46 = v4 + 3;
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
      v4[2] = v47;
      v46 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v45;
    v46 = v4 + 2;
  }

  v4 = TSWP::ObjectAttributeTable::_InternalSerialize(v44, v46, a3);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_34:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_108;
  }

LABEL_105:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v50 = *(this + 233);
  *v4 = 80;
  v4[1] = v50;
  v4 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_35:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_118;
  }

LABEL_108:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v51 = *(this + 12);
  *v4 = 90;
  v52 = *(v51 + 10);
  if (v52 > 0x7F)
  {
    v4[1] = v52 | 0x80;
    v54 = v52 >> 7;
    if (v52 >> 14)
    {
      v53 = v4 + 3;
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
      v4[2] = v54;
      v53 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v52;
    v53 = v4 + 2;
  }

  v4 = TSWP::ObjectAttributeTable::_InternalSerialize(v51, v53, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_36:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_128;
  }

LABEL_118:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v57 = *(this + 13);
  *v4 = 98;
  v58 = *(v57 + 10);
  if (v58 > 0x7F)
  {
    v4[1] = v58 | 0x80;
    v60 = v58 >> 7;
    if (v58 >> 14)
    {
      v59 = v4 + 3;
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
      v4[2] = v60;
      v59 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v58;
    v59 = v4 + 2;
  }

  v4 = TSWP::ObjectAttributeTable::_InternalSerialize(v57, v59, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_37:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_138;
  }

LABEL_128:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v63 = *(this + 14);
  *v4 = 114;
  v64 = *(v63 + 10);
  if (v64 > 0x7F)
  {
    v4[1] = v64 | 0x80;
    v66 = v64 >> 7;
    if (v64 >> 14)
    {
      v65 = v4 + 3;
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
      v4[2] = v66;
      v65 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v64;
    v65 = v4 + 2;
  }

  v4 = TSWP::ParaDataAttributeTable::_InternalSerialize(v63, v65, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_38:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_148;
  }

LABEL_138:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v69 = *(this + 15);
  *v4 = 122;
  v70 = *(v69 + 10);
  if (v70 > 0x7F)
  {
    v4[1] = v70 | 0x80;
    v72 = v70 >> 7;
    if (v70 >> 14)
    {
      v71 = v4 + 3;
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
      v4[2] = v72;
      v71 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v70;
    v71 = v4 + 2;
  }

  v4 = TSWP::ObjectAttributeTable::_InternalSerialize(v69, v71, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_39:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_158;
  }

LABEL_148:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v75 = *(this + 16);
  *v4 = 386;
  v76 = *(v75 + 10);
  if (v76 > 0x7F)
  {
    v4[2] = v76 | 0x80;
    v78 = v76 >> 7;
    if (v76 >> 14)
    {
      v77 = v4 + 4;
      do
      {
        *(v77 - 1) = v78 | 0x80;
        v79 = v78 >> 7;
        ++v77;
        v80 = v78 >> 14;
        v78 >>= 7;
      }

      while (v80);
      *(v77 - 1) = v79;
    }

    else
    {
      v4[3] = v78;
      v77 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v76;
    v77 = v4 + 3;
  }

  v4 = TSWP::ObjectAttributeTable::_InternalSerialize(v75, v77, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_40:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_168;
  }

LABEL_158:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v81 = *(this + 17);
  *v4 = 394;
  v82 = *(v81 + 10);
  if (v82 > 0x7F)
  {
    v4[2] = v82 | 0x80;
    v84 = v82 >> 7;
    if (v82 >> 14)
    {
      v83 = v4 + 4;
      do
      {
        *(v83 - 1) = v84 | 0x80;
        v85 = v84 >> 7;
        ++v83;
        v86 = v84 >> 14;
        v84 >>= 7;
      }

      while (v86);
      *(v83 - 1) = v85;
    }

    else
    {
      v4[3] = v84;
      v83 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v82;
    v83 = v4 + 3;
  }

  v4 = TSWP::ObjectAttributeTable::_InternalSerialize(v81, v83, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_41:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_178;
  }

LABEL_168:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v87 = *(this + 18);
  *v4 = 402;
  v88 = *(v87 + 10);
  if (v88 > 0x7F)
  {
    v4[2] = v88 | 0x80;
    v90 = v88 >> 7;
    if (v88 >> 14)
    {
      v89 = v4 + 4;
      do
      {
        *(v89 - 1) = v90 | 0x80;
        v91 = v90 >> 7;
        ++v89;
        v92 = v90 >> 14;
        v90 >>= 7;
      }

      while (v92);
      *(v89 - 1) = v91;
    }

    else
    {
      v4[3] = v90;
      v89 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v88;
    v89 = v4 + 3;
  }

  v4 = TSWP::ObjectAttributeTable::_InternalSerialize(v87, v89, a3);
  if ((v6 & 0x2000) == 0)
  {
LABEL_42:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_188;
  }

LABEL_178:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v93 = *(this + 19);
  *v4 = 410;
  v94 = *(v93 + 10);
  if (v94 > 0x7F)
  {
    v4[2] = v94 | 0x80;
    v96 = v94 >> 7;
    if (v94 >> 14)
    {
      v95 = v4 + 4;
      do
      {
        *(v95 - 1) = v96 | 0x80;
        v97 = v96 >> 7;
        ++v95;
        v98 = v96 >> 14;
        v96 >>= 7;
      }

      while (v98);
      *(v95 - 1) = v97;
    }

    else
    {
      v4[3] = v96;
      v95 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v94;
    v95 = v4 + 3;
  }

  v4 = TSWP::StringAttributeTable::_InternalSerialize(v93, v95, a3);
  if ((v6 & 0x4000) == 0)
  {
LABEL_43:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_198;
  }

LABEL_188:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v99 = *(this + 20);
  *v4 = 418;
  v100 = *(v99 + 10);
  if (v100 > 0x7F)
  {
    v4[2] = v100 | 0x80;
    v102 = v100 >> 7;
    if (v100 >> 14)
    {
      v101 = v4 + 4;
      do
      {
        *(v101 - 1) = v102 | 0x80;
        v103 = v102 >> 7;
        ++v101;
        v104 = v102 >> 14;
        v102 >>= 7;
      }

      while (v104);
      *(v101 - 1) = v103;
    }

    else
    {
      v4[3] = v102;
      v101 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v100;
    v101 = v4 + 3;
  }

  v4 = TSWP::StringAttributeTable::_InternalSerialize(v99, v101, a3);
  if ((v6 & 0x8000) == 0)
  {
LABEL_44:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_208;
  }

LABEL_198:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v105 = *(this + 21);
  *v4 = 426;
  v106 = *(v105 + 10);
  if (v106 > 0x7F)
  {
    v4[2] = v106 | 0x80;
    v108 = v106 >> 7;
    if (v106 >> 14)
    {
      v107 = v4 + 4;
      do
      {
        *(v107 - 1) = v108 | 0x80;
        v109 = v108 >> 7;
        ++v107;
        v110 = v108 >> 14;
        v108 >>= 7;
      }

      while (v110);
      *(v107 - 1) = v109;
    }

    else
    {
      v4[3] = v108;
      v107 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v106;
    v107 = v4 + 3;
  }

  v4 = TSWP::ObjectAttributeTable::_InternalSerialize(v105, v107, a3);
  if ((v6 & 0x10000) == 0)
  {
LABEL_45:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_218;
  }

LABEL_208:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v111 = *(this + 22);
  *v4 = 434;
  v112 = *(v111 + 10);
  if (v112 > 0x7F)
  {
    v4[2] = v112 | 0x80;
    v114 = v112 >> 7;
    if (v112 >> 14)
    {
      v113 = v4 + 4;
      do
      {
        *(v113 - 1) = v114 | 0x80;
        v115 = v114 >> 7;
        ++v113;
        v116 = v114 >> 14;
        v114 >>= 7;
      }

      while (v116);
      *(v113 - 1) = v115;
    }

    else
    {
      v4[3] = v114;
      v113 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v112;
    v113 = v4 + 3;
  }

  v4 = TSWP::ObjectAttributeTable::_InternalSerialize(v111, v113, a3);
  if ((v6 & 0x20000) == 0)
  {
LABEL_46:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_228;
  }

LABEL_218:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v117 = *(this + 23);
  *v4 = 442;
  v118 = *(v117 + 10);
  if (v118 > 0x7F)
  {
    v4[2] = v118 | 0x80;
    v120 = v118 >> 7;
    if (v118 >> 14)
    {
      v119 = v4 + 4;
      do
      {
        *(v119 - 1) = v120 | 0x80;
        v121 = v120 >> 7;
        ++v119;
        v122 = v120 >> 14;
        v120 >>= 7;
      }

      while (v122);
      *(v119 - 1) = v121;
    }

    else
    {
      v4[3] = v120;
      v119 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v118;
    v119 = v4 + 3;
  }

  v4 = TSWP::ObjectAttributeTable::_InternalSerialize(v117, v119, a3);
  if ((v6 & 0x40000) == 0)
  {
LABEL_47:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_238;
  }

LABEL_228:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v123 = *(this + 24);
  *v4 = 450;
  v124 = *(v123 + 10);
  if (v124 > 0x7F)
  {
    v4[2] = v124 | 0x80;
    v126 = v124 >> 7;
    if (v124 >> 14)
    {
      v125 = v4 + 4;
      do
      {
        *(v125 - 1) = v126 | 0x80;
        v127 = v126 >> 7;
        ++v125;
        v128 = v126 >> 14;
        v126 >>= 7;
      }

      while (v128);
      *(v125 - 1) = v127;
    }

    else
    {
      v4[3] = v126;
      v125 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v124;
    v125 = v4 + 3;
  }

  v4 = TSWP::ParaDataAttributeTable::_InternalSerialize(v123, v125, a3);
  if ((v6 & 0x80000) == 0)
  {
LABEL_48:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_248;
  }

LABEL_238:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v129 = *(this + 25);
  *v4 = 458;
  v130 = *(v129 + 10);
  if (v130 > 0x7F)
  {
    v4[2] = v130 | 0x80;
    v132 = v130 >> 7;
    if (v130 >> 14)
    {
      v131 = v4 + 4;
      do
      {
        *(v131 - 1) = v132 | 0x80;
        v133 = v132 >> 7;
        ++v131;
        v134 = v132 >> 14;
        v132 >>= 7;
      }

      while (v134);
      *(v131 - 1) = v133;
    }

    else
    {
      v4[3] = v132;
      v131 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v130;
    v131 = v4 + 3;
  }

  v4 = TSWP::OverlappingFieldAttributeTable::_InternalSerialize(v129, v131, a3);
  if ((v6 & 0x100000) == 0)
  {
LABEL_49:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_258;
  }

LABEL_248:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v135 = *(this + 26);
  *v4 = 466;
  v136 = *(v135 + 10);
  if (v136 > 0x7F)
  {
    v4[2] = v136 | 0x80;
    v138 = v136 >> 7;
    if (v136 >> 14)
    {
      v137 = v4 + 4;
      do
      {
        *(v137 - 1) = v138 | 0x80;
        v139 = v138 >> 7;
        ++v137;
        v140 = v138 >> 14;
        v138 >>= 7;
      }

      while (v140);
      *(v137 - 1) = v139;
    }

    else
    {
      v4[3] = v138;
      v137 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v136;
    v137 = v4 + 3;
  }

  v4 = TSWP::OverlappingFieldAttributeTable::_InternalSerialize(v135, v137, a3);
  if ((v6 & 0x200000) == 0)
  {
LABEL_50:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_278;
    }

    goto LABEL_268;
  }

LABEL_258:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v141 = *(this + 27);
  *v4 = 474;
  v142 = *(v141 + 10);
  if (v142 > 0x7F)
  {
    v4[2] = v142 | 0x80;
    v144 = v142 >> 7;
    if (v142 >> 14)
    {
      v143 = v4 + 4;
      do
      {
        *(v143 - 1) = v144 | 0x80;
        v145 = v144 >> 7;
        ++v143;
        v146 = v144 >> 14;
        v144 >>= 7;
      }

      while (v146);
      *(v143 - 1) = v145;
    }

    else
    {
      v4[3] = v144;
      v143 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v142;
    v143 = v4 + 3;
  }

  v4 = TSWP::ObjectAttributeTable::_InternalSerialize(v141, v143, a3);
  if ((v6 & 0x400000) != 0)
  {
LABEL_268:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v147 = *(this + 28);
    *v4 = 482;
    v148 = *(v147 + 10);
    if (v148 > 0x7F)
    {
      v4[2] = v148 | 0x80;
      v150 = v148 >> 7;
      if (v148 >> 14)
      {
        v149 = v4 + 4;
        do
        {
          *(v149 - 1) = v150 | 0x80;
          v151 = v150 >> 7;
          ++v149;
          v152 = v150 >> 14;
          v150 >>= 7;
        }

        while (v152);
        *(v149 - 1) = v151;
      }

      else
      {
        v4[3] = v150;
        v149 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v148;
      v149 = v4 + 3;
    }

    v4 = TSWP::ObjectAttributeTable::_InternalSerialize(v147, v149, a3);
  }

LABEL_278:
  v153 = *(this + 1);
  if ((v153 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v153 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276E57174(uint64_t *a1, int a2, const void **a3, _BYTE *a4)
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

uint64_t TSWP::StorageArchive::ByteSizeLong(TSWP::StorageArchive *this)
{
  v2 = *(this + 8);
  if (v2 < 1)
  {
    v4 = *(this + 8);
  }

  else
  {
    v3 = (*(this + 5) + 8);
    v4 = *(this + 8);
    do
    {
      v5 = *v3++;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      --v2;
    }

    while (v2);
  }

  v8 = *(this + 4);
  if (!*(this + 4))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    v16 = TSP::Reference::ByteSizeLong(*(this + 6));
    v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_11:
      if ((v8 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_48;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_11;
  }

  v17 = TSWP::ObjectAttributeTable::ByteSizeLong(*(this + 7));
  v4 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_12:
    if ((v8 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  v18 = TSWP::ParaDataAttributeTable::ByteSizeLong(*(this + 8));
  v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_13:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  v19 = TSWP::ObjectAttributeTable::ByteSizeLong(*(this + 9));
  v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
LABEL_14:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_51:
    v21 = TSWP::ObjectAttributeTable::ByteSizeLong(*(this + 11));
    v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x40) == 0)
    {
LABEL_16:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_50:
  v20 = TSWP::ObjectAttributeTable::ByteSizeLong(*(this + 10));
  v4 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_51;
  }

LABEL_15:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_52:
  v22 = TSWP::ObjectAttributeTable::ByteSizeLong(*(this + 12));
  v4 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x80) != 0)
  {
LABEL_17:
    v9 = TSWP::ObjectAttributeTable::ByteSizeLong(*(this + 13));
    v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_18:
  if ((v8 & 0xFF00) == 0)
  {
    goto LABEL_28;
  }

  if ((v8 & 0x100) != 0)
  {
    v23 = TSWP::ParaDataAttributeTable::ByteSizeLong(*(this + 14));
    v4 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x200) == 0)
    {
LABEL_21:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_56;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  v24 = TSWP::ObjectAttributeTable::ByteSizeLong(*(this + 15));
  v4 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x400) == 0)
  {
LABEL_22:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_57;
  }

LABEL_56:
  v25 = TSWP::ObjectAttributeTable::ByteSizeLong(*(this + 16));
  v4 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x800) == 0)
  {
LABEL_23:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_58;
  }

LABEL_57:
  v26 = TSWP::ObjectAttributeTable::ByteSizeLong(*(this + 17));
  v4 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x1000) == 0)
  {
LABEL_24:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_59;
  }

LABEL_58:
  v27 = TSWP::ObjectAttributeTable::ByteSizeLong(*(this + 18));
  v4 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x2000) == 0)
  {
LABEL_25:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_60;
  }

LABEL_59:
  v28 = TSWP::StringAttributeTable::ByteSizeLong(*(this + 19));
  v4 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x4000) == 0)
  {
LABEL_26:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_60:
  v29 = TSWP::StringAttributeTable::ByteSizeLong(*(this + 20));
  v4 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x8000) != 0)
  {
LABEL_27:
    v10 = TSWP::ObjectAttributeTable::ByteSizeLong(*(this + 21));
    v4 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_28:
  if ((v8 & 0xFF0000) != 0)
  {
    if ((v8 & 0x10000) != 0)
    {
      v30 = TSWP::ObjectAttributeTable::ByteSizeLong(*(this + 22));
      v4 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v8 & 0x20000) == 0)
      {
LABEL_31:
        if ((v8 & 0x40000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_64;
      }
    }

    else if ((v8 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    v31 = TSWP::ObjectAttributeTable::ByteSizeLong(*(this + 23));
    v4 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v8 & 0x40000) == 0)
    {
LABEL_32:
      if ((v8 & 0x80000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_65;
    }

LABEL_64:
    v32 = TSWP::ParaDataAttributeTable::ByteSizeLong(*(this + 24));
    v4 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v8 & 0x80000) == 0)
    {
LABEL_33:
      if ((v8 & 0x100000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_66;
    }

LABEL_65:
    v33 = TSWP::OverlappingFieldAttributeTable::ByteSizeLong(*(this + 25));
    v4 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v8 & 0x100000) == 0)
    {
LABEL_34:
      if ((v8 & 0x200000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_67;
    }

LABEL_66:
    v34 = TSWP::OverlappingFieldAttributeTable::ByteSizeLong(*(this + 26));
    v4 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v8 & 0x200000) == 0)
    {
LABEL_35:
      if ((v8 & 0x400000) == 0)
      {
LABEL_37:
        v4 += (v8 >> 22) & 2;
        goto LABEL_38;
      }

LABEL_36:
      v11 = TSWP::ObjectAttributeTable::ByteSizeLong(*(this + 28));
      v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
      goto LABEL_37;
    }

LABEL_67:
    v35 = TSWP::ObjectAttributeTable::ByteSizeLong(*(this + 27));
    v4 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_38:
  if ((v8 & 0x3000000) != 0)
  {
    v4 += (v8 >> 23) & 2;
    if ((v8 & 0x2000000) != 0)
    {
      v12 = *(this + 59);
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v12 >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 11;
      }

      v4 += v14;
    }
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

uint64_t TSWP::StorageArchive::MergeFrom(TSWP::StorageArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::StorageArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::StorageArchive::MergeFrom(uint64_t this, const TSWP::StorageArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_276EA5460((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if (!v10)
  {
    goto LABEL_80;
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

      v11 = MEMORY[0x277CA3250](v12);
      *(v3 + 48) = v11;
    }

    if (*(a2 + 6))
    {
      v13 = *(a2 + 6);
    }

    else
    {
      v13 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v11, v13);
  }

  if ((v10 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v14 = *(v3 + 56);
    if (!v14)
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v15);
      *(v3 + 56) = v14;
    }

    if (*(a2 + 7))
    {
      v16 = *(a2 + 7);
    }

    else
    {
      v16 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    this = TSWP::ObjectAttributeTable::MergeFrom(v14, v16);
    if ((v10 & 4) == 0)
    {
LABEL_18:
      if ((v10 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_40;
    }
  }

  else if ((v10 & 4) == 0)
  {
    goto LABEL_18;
  }

  *(v3 + 16) |= 4u;
  v17 = *(v3 + 64);
  if (!v17)
  {
    v18 = *(v3 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParaDataAttributeTable>(v18);
    *(v3 + 64) = v17;
  }

  if (*(a2 + 8))
  {
    v19 = *(a2 + 8);
  }

  else
  {
    v19 = &TSWP::_ParaDataAttributeTable_default_instance_;
  }

  this = TSWP::ParaDataAttributeTable::MergeFrom(v17, v19);
  if ((v10 & 8) == 0)
  {
LABEL_19:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_40:
  *(v3 + 16) |= 8u;
  v20 = *(v3 + 72);
  if (!v20)
  {
    v21 = *(v3 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v21);
    *(v3 + 72) = v20;
  }

  if (*(a2 + 9))
  {
    v22 = *(a2 + 9);
  }

  else
  {
    v22 = &TSWP::_ObjectAttributeTable_default_instance_;
  }

  this = TSWP::ObjectAttributeTable::MergeFrom(v20, v22);
  if ((v10 & 0x10) == 0)
  {
LABEL_20:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_21;
    }

LABEL_56:
    *(v3 + 16) |= 0x20u;
    v26 = *(v3 + 88);
    if (!v26)
    {
      v27 = *(v3 + 8);
      if (v27)
      {
        v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v27);
      *(v3 + 88) = v26;
    }

    if (*(a2 + 11))
    {
      v28 = *(a2 + 11);
    }

    else
    {
      v28 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    this = TSWP::ObjectAttributeTable::MergeFrom(v26, v28);
    if ((v10 & 0x40) == 0)
    {
LABEL_22:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_72;
    }

    goto LABEL_64;
  }

LABEL_48:
  *(v3 + 16) |= 0x10u;
  v23 = *(v3 + 80);
  if (!v23)
  {
    v24 = *(v3 + 8);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v23 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v24);
    *(v3 + 80) = v23;
  }

  if (*(a2 + 10))
  {
    v25 = *(a2 + 10);
  }

  else
  {
    v25 = &TSWP::_ObjectAttributeTable_default_instance_;
  }

  this = TSWP::ObjectAttributeTable::MergeFrom(v23, v25);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_56;
  }

LABEL_21:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_64:
  *(v3 + 16) |= 0x40u;
  v29 = *(v3 + 96);
  if (!v29)
  {
    v30 = *(v3 + 8);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    v29 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v30);
    *(v3 + 96) = v29;
  }

  if (*(a2 + 12))
  {
    v31 = *(a2 + 12);
  }

  else
  {
    v31 = &TSWP::_ObjectAttributeTable_default_instance_;
  }

  this = TSWP::ObjectAttributeTable::MergeFrom(v29, v31);
  if ((v10 & 0x80) != 0)
  {
LABEL_72:
    *(v3 + 16) |= 0x80u;
    v32 = *(v3 + 104);
    if (!v32)
    {
      v33 = *(v3 + 8);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v33);
      *(v3 + 104) = v32;
    }

    if (*(a2 + 13))
    {
      v34 = *(a2 + 13);
    }

    else
    {
      v34 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    this = TSWP::ObjectAttributeTable::MergeFrom(v32, v34);
  }

LABEL_80:
  if ((v10 & 0xFF00) == 0)
  {
    goto LABEL_155;
  }

  if ((v10 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v35 = *(v3 + 112);
    if (!v35)
    {
      v36 = *(v3 + 8);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParaDataAttributeTable>(v36);
      *(v3 + 112) = v35;
    }

    if (*(a2 + 14))
    {
      v37 = *(a2 + 14);
    }

    else
    {
      v37 = &TSWP::_ParaDataAttributeTable_default_instance_;
    }

    this = TSWP::ParaDataAttributeTable::MergeFrom(v35, v37);
    if ((v10 & 0x200) == 0)
    {
LABEL_83:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_103;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_83;
  }

  *(v3 + 16) |= 0x200u;
  v38 = *(v3 + 120);
  if (!v38)
  {
    v39 = *(v3 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v39);
    *(v3 + 120) = v38;
  }

  if (*(a2 + 15))
  {
    v40 = *(a2 + 15);
  }

  else
  {
    v40 = &TSWP::_ObjectAttributeTable_default_instance_;
  }

  this = TSWP::ObjectAttributeTable::MergeFrom(v38, v40);
  if ((v10 & 0x400) == 0)
  {
LABEL_84:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_111;
  }

LABEL_103:
  *(v3 + 16) |= 0x400u;
  v41 = *(v3 + 128);
  if (!v41)
  {
    v42 = *(v3 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v42);
    *(v3 + 128) = v41;
  }

  if (*(a2 + 16))
  {
    v43 = *(a2 + 16);
  }

  else
  {
    v43 = &TSWP::_ObjectAttributeTable_default_instance_;
  }

  this = TSWP::ObjectAttributeTable::MergeFrom(v41, v43);
  if ((v10 & 0x800) == 0)
  {
LABEL_85:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_119;
  }

LABEL_111:
  *(v3 + 16) |= 0x800u;
  v44 = *(v3 + 136);
  if (!v44)
  {
    v45 = *(v3 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v45);
    *(v3 + 136) = v44;
  }

  if (*(a2 + 17))
  {
    v46 = *(a2 + 17);
  }

  else
  {
    v46 = &TSWP::_ObjectAttributeTable_default_instance_;
  }

  this = TSWP::ObjectAttributeTable::MergeFrom(v44, v46);
  if ((v10 & 0x1000) != 0)
  {
LABEL_119:
    *(v3 + 16) |= 0x1000u;
    v47 = *(v3 + 144);
    if (!v47)
    {
      v48 = *(v3 + 8);
      if (v48)
      {
        v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
      }

      v47 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v48);
      *(v3 + 144) = v47;
    }

    if (*(a2 + 18))
    {
      v49 = *(a2 + 18);
    }

    else
    {
      v49 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    this = TSWP::ObjectAttributeTable::MergeFrom(v47, v49);
  }

LABEL_127:
  if ((v10 & 0x2000) != 0)
  {
    *(v3 + 16) |= 0x2000u;
    v50 = *(v3 + 152);
    if (!v50)
    {
      v51 = *(v3 + 8);
      if (v51)
      {
        v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
      }

      v50 = google::protobuf::Arena::CreateMaybeMessage<TSWP::StringAttributeTable>(v51);
      *(v3 + 152) = v50;
    }

    if (*(a2 + 19))
    {
      v52 = *(a2 + 19);
    }

    else
    {
      v52 = &TSWP::_StringAttributeTable_default_instance_;
    }

    this = TSWP::StringAttributeTable::MergeFrom(v50, v52);
    if ((v10 & 0x4000) == 0)
    {
LABEL_129:
      if ((v10 & 0x8000) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_147;
    }
  }

  else if ((v10 & 0x4000) == 0)
  {
    goto LABEL_129;
  }

  *(v3 + 16) |= 0x4000u;
  v53 = *(v3 + 160);
  if (!v53)
  {
    v54 = *(v3 + 8);
    if (v54)
    {
      v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
    }

    v53 = google::protobuf::Arena::CreateMaybeMessage<TSWP::StringAttributeTable>(v54);
    *(v3 + 160) = v53;
  }

  if (*(a2 + 20))
  {
    v55 = *(a2 + 20);
  }

  else
  {
    v55 = &TSWP::_StringAttributeTable_default_instance_;
  }

  this = TSWP::StringAttributeTable::MergeFrom(v53, v55);
  if ((v10 & 0x8000) != 0)
  {
LABEL_147:
    *(v3 + 16) |= 0x8000u;
    v56 = *(v3 + 168);
    if (!v56)
    {
      v57 = *(v3 + 8);
      if (v57)
      {
        v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
      }

      v56 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v57);
      *(v3 + 168) = v56;
    }

    if (*(a2 + 21))
    {
      v58 = *(a2 + 21);
    }

    else
    {
      v58 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    this = TSWP::ObjectAttributeTable::MergeFrom(v56, v58);
  }

LABEL_155:
  if ((v10 & 0xFF0000) == 0)
  {
    goto LABEL_191;
  }

  if ((v10 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v59 = *(v3 + 176);
    if (!v59)
    {
      v60 = *(v3 + 8);
      if (v60)
      {
        v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
      }

      v59 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v60);
      *(v3 + 176) = v59;
    }

    if (*(a2 + 22))
    {
      v61 = *(a2 + 22);
    }

    else
    {
      v61 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    this = TSWP::ObjectAttributeTable::MergeFrom(v59, v61);
    if ((v10 & 0x20000) == 0)
    {
LABEL_158:
      if ((v10 & 0x40000) == 0)
      {
        goto LABEL_184;
      }

      goto LABEL_176;
    }
  }

  else if ((v10 & 0x20000) == 0)
  {
    goto LABEL_158;
  }

  *(v3 + 16) |= 0x20000u;
  v62 = *(v3 + 184);
  if (!v62)
  {
    v63 = *(v3 + 8);
    if (v63)
    {
      v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
    }

    v62 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v63);
    *(v3 + 184) = v62;
  }

  if (*(a2 + 23))
  {
    v64 = *(a2 + 23);
  }

  else
  {
    v64 = &TSWP::_ObjectAttributeTable_default_instance_;
  }

  this = TSWP::ObjectAttributeTable::MergeFrom(v62, v64);
  if ((v10 & 0x40000) != 0)
  {
LABEL_176:
    *(v3 + 16) |= 0x40000u;
    v65 = *(v3 + 192);
    if (!v65)
    {
      v66 = *(v3 + 8);
      if (v66)
      {
        v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
      }

      v65 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParaDataAttributeTable>(v66);
      *(v3 + 192) = v65;
    }

    if (*(a2 + 24))
    {
      v67 = *(a2 + 24);
    }

    else
    {
      v67 = &TSWP::_ParaDataAttributeTable_default_instance_;
    }

    this = TSWP::ParaDataAttributeTable::MergeFrom(v65, v67);
  }

LABEL_184:
  if ((v10 & 0x80000) != 0)
  {
    *(v3 + 16) |= 0x80000u;
    v68 = *(v3 + 200);
    if (!v68)
    {
      v69 = *(v3 + 8);
      if (v69)
      {
        v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
      }

      v68 = google::protobuf::Arena::CreateMaybeMessage<TSWP::OverlappingFieldAttributeTable>(v69);
      *(v3 + 200) = v68;
    }

    if (*(a2 + 25))
    {
      v70 = *(a2 + 25);
    }

    else
    {
      v70 = &TSWP::_OverlappingFieldAttributeTable_default_instance_;
    }

    this = TSWP::OverlappingFieldAttributeTable::MergeFrom(v68, v70);
    if ((v10 & 0x100000) == 0)
    {
LABEL_186:
      if ((v10 & 0x200000) == 0)
      {
        goto LABEL_187;
      }

      goto LABEL_214;
    }
  }

  else if ((v10 & 0x100000) == 0)
  {
    goto LABEL_186;
  }

  *(v3 + 16) |= 0x100000u;
  v71 = *(v3 + 208);
  if (!v71)
  {
    v72 = *(v3 + 8);
    if (v72)
    {
      v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
    }

    v71 = google::protobuf::Arena::CreateMaybeMessage<TSWP::OverlappingFieldAttributeTable>(v72);
    *(v3 + 208) = v71;
  }

  if (*(a2 + 26))
  {
    v73 = *(a2 + 26);
  }

  else
  {
    v73 = &TSWP::_OverlappingFieldAttributeTable_default_instance_;
  }

  this = TSWP::OverlappingFieldAttributeTable::MergeFrom(v71, v73);
  if ((v10 & 0x200000) == 0)
  {
LABEL_187:
    if ((v10 & 0x400000) == 0)
    {
      goto LABEL_188;
    }

LABEL_222:
    *(v3 + 16) |= 0x400000u;
    v77 = *(v3 + 224);
    if (!v77)
    {
      v78 = *(v3 + 8);
      if (v78)
      {
        v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
      }

      v77 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v78);
      *(v3 + 224) = v77;
    }

    if (*(a2 + 28))
    {
      v79 = *(a2 + 28);
    }

    else
    {
      v79 = &TSWP::_ObjectAttributeTable_default_instance_;
    }

    this = TSWP::ObjectAttributeTable::MergeFrom(v77, v79);
    if ((v10 & 0x800000) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_189;
  }

LABEL_214:
  *(v3 + 16) |= 0x200000u;
  v74 = *(v3 + 216);
  if (!v74)
  {
    v75 = *(v3 + 8);
    if (v75)
    {
      v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
    }

    v74 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable>(v75);
    *(v3 + 216) = v74;
  }

  if (*(a2 + 27))
  {
    v76 = *(a2 + 27);
  }

  else
  {
    v76 = &TSWP::_ObjectAttributeTable_default_instance_;
  }

  this = TSWP::ObjectAttributeTable::MergeFrom(v74, v76);
  if ((v10 & 0x400000) != 0)
  {
    goto LABEL_222;
  }

LABEL_188:
  if ((v10 & 0x800000) != 0)
  {
LABEL_189:
    *(v3 + 232) = *(a2 + 232);
  }

LABEL_190:
  *(v3 + 16) |= v10;
LABEL_191:
  if ((v10 & 0x3000000) != 0)
  {
    if ((v10 & 0x1000000) != 0)
    {
      *(v3 + 233) = *(a2 + 233);
    }

    if ((v10 & 0x2000000) != 0)
    {
      *(v3 + 236) = *(a2 + 59);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

TSWP::StorageArchive *TSWP::StorageArchive::CopyFrom(TSWP::StorageArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::StorageArchive::Clear(this);

    return TSWP::StorageArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::StorageArchive *TSWP::StorageArchive::CopyFrom(TSWP::StorageArchive *this, const TSWP::StorageArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::StorageArchive::Clear(this);

    return TSWP::StorageArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::StorageArchive::IsInitialized(TSWP::StorageArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_276E50F14(*(this + 7) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    v8 = *(this + 8);
    v9 = *(v8 + 24);
    v10 = *(v8 + 32);
    while (v9 >= 1)
    {
      v11 = *(v10 + 8 * v9--);
      if ((~*(v11 + 16) & 7) != 0)
      {
        return 0;
      }
    }
  }

  if ((v2 & 8) != 0)
  {
    result = sub_276E50F14(*(this + 9) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_276E50F14(*(this + 10) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20) != 0)
  {
    result = sub_276E50F14(*(this + 11) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x40) != 0)
  {
    result = sub_276E50F14(*(this + 12) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x80) != 0)
  {
    result = sub_276E50F14(*(this + 13) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x100) != 0)
  {
    v12 = *(this + 14);
    v13 = *(v12 + 24);
    v14 = *(v12 + 32);
    while (v13 >= 1)
    {
      result = 0;
      v15 = *(v14 + 8 * v13--);
      if ((~*(v15 + 16) & 7) != 0)
      {
        return result;
      }
    }
  }

  if ((v2 & 0x200) != 0)
  {
    result = sub_276E50F14(*(this + 15) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x400) != 0)
  {
    result = sub_276E50F14(*(this + 16) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x800) != 0)
  {
    result = sub_276E50F14(*(this + 17) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x1000) != 0)
  {
    result = sub_276E50F14(*(this + 18) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x2000) != 0)
  {
    v16 = *(this + 19);
    v17 = *(v16 + 24);
    v18 = *(v16 + 32);
    while (v17 >= 1)
    {
      result = 0;
      v19 = *(v18 + 8 * v17--);
      if ((*(v19 + 16) & 2) == 0)
      {
        return result;
      }
    }
  }

  if ((v2 & 0x4000) != 0)
  {
    v20 = *(this + 20);
    v21 = *(v20 + 24);
    v22 = *(v20 + 32);
    while (v21 >= 1)
    {
      result = 0;
      v23 = *(v22 + 8 * v21--);
      if ((*(v23 + 16) & 2) == 0)
      {
        return result;
      }
    }
  }

  if ((v2 & 0x8000) != 0)
  {
    result = sub_276E50F14(*(this + 21) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10000) != 0)
  {
    result = sub_276E50F14(*(this + 22) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20000) != 0)
  {
    result = sub_276E50F14(*(this + 23) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x40000) != 0)
  {
    v24 = *(this + 24);
    v25 = *(v24 + 24);
    v26 = *(v24 + 32);
    while (v25 >= 1)
    {
      result = 0;
      v27 = *(v26 + 8 * v25--);
      if ((~*(v27 + 16) & 7) != 0)
      {
        return result;
      }
    }
  }

  if ((v2 & 0x80000) != 0)
  {
    v4 = *(this + 25);
    v5 = *(v4 + 24);
    while (v5 >= 1)
    {
      v6 = v5 - 1;
      IsInitialized = TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::IsInitialized(*(*(v4 + 32) + 8 * v5));
      result = 0;
      v5 = v6;
      if ((IsInitialized & 1) == 0)
      {
        return result;
      }
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x100000) != 0)
  {
    v28 = *(this + 26);
    v29 = *(v28 + 24);
    while (v29 >= 1)
    {
      v30 = v29 - 1;
      v31 = TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::IsInitialized(*(*(v28 + 32) + 8 * v29));
      result = 0;
      v29 = v30;
      if ((v31 & 1) == 0)
      {
        return result;
      }
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x200000) != 0)
  {
    result = sub_276E50F14(*(this + 27) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x400000) == 0)
  {
    return 1;
  }

  result = sub_276E50F14(*(this + 28) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

void TSWP::StorageArchive::InternalSwap(TSWP::StorageArchive *this, TSWP::StorageArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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
  sub_276EA550C(this + 8, a2 + 64);
  v9 = *(this + 59);
  *(this + 59) = *(a2 + 59);
  *(a2 + 59) = v9;
}

TSP::Reference *TSWP::HighlightArchive::clear_commentstorage(TSWP::HighlightArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSWP::HighlightArchive *TSWP::HighlightArchive::HighlightArchive(TSWP::HighlightArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886003C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_HighlightArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  return this;
}

TSWP::HighlightArchive *TSWP::HighlightArchive::HighlightArchive(TSWP::HighlightArchive *this, const TSWP::HighlightArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2886003C0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  return this;
}

void TSWP::HighlightArchive::~HighlightArchive(TSWP::HighlightArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  if (this != &TSWP::_HighlightArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::HighlightArchive::~HighlightArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::HighlightArchive::default_instance(TSWP::HighlightArchive *this)
{
  if (atomic_load_explicit(scc_info_HighlightArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_HighlightArchive_default_instance_;
}

uint64_t *TSWP::HighlightArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      this = TSP::Reference::Clear(this[4]);
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_276EA4D28(v4);
  }

  return this;
}

google::protobuf::internal *TSWP::HighlightArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while ((sub_276EA4A1C(a3, &v17) & 1) == 0)
  {
    v5 = (v17 + 1);
    v6 = *v17;
    if ((*v17 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v17 + 2);
LABEL_6:
      v17 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v7 - 128));
    v17 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v15;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v10 = google::protobuf::internal::InlineGreedyStringParser();
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
          return v17;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_26;
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

        v13 = MEMORY[0x277CA3250](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v17;
      }

      v10 = sub_276F4F9E8(a3, v11, v5);
    }

LABEL_26:
    v17 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v17;
}

unsigned __int8 *TSWP::HighlightArchive::_InternalSerialize(TSWP::HighlightArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_276E5154C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::HighlightArchive::ByteSizeLong(TSWP::HighlightArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = TSP::Reference::ByteSizeLong(*(this + 4));
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

uint64_t TSWP::HighlightArchive::MergeFrom(TSWP::HighlightArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::HighlightArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::HighlightArchive::MergeFrom(uint64_t this, const TSWP::HighlightArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v6 = *(v3 + 32);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277CA3250](v7);
        *(v3 + 32) = v6;
      }

      if (*(a2 + 4))
      {
        v8 = *(a2 + 4);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v6, v8);
    }
  }

  return this;
}

uint64_t *TSWP::HighlightArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::HighlightArchive::Clear(this);

    return TSWP::HighlightArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::HighlightArchive::CopyFrom(uint64_t *this, const TSWP::HighlightArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::HighlightArchive::Clear(this);

    return TSWP::HighlightArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::HighlightArchive::IsInitialized(TSWP::HighlightArchive *this)
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

  return result;
}

uint64_t *TSWP::HighlightArchive::InternalSwap(TSWP::HighlightArchive *this, TSWP::HighlightArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  return result;
}

TSP::Reference *TSWP::PencilAnnotationArchive::clear_pencil_annotation_storage(TSWP::PencilAnnotationArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSWP::PencilAnnotationArchive *TSWP::PencilAnnotationArchive::PencilAnnotationArchive(TSWP::PencilAnnotationArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288600470;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PencilAnnotationArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  return this;
}

TSWP::PencilAnnotationArchive *TSWP::PencilAnnotationArchive::PencilAnnotationArchive(TSWP::PencilAnnotationArchive *this, const TSWP::PencilAnnotationArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288600470;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  return this;
}

void TSWP::PencilAnnotationArchive::~PencilAnnotationArchive(TSWP::PencilAnnotationArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  if (this != &TSWP::_PencilAnnotationArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::PencilAnnotationArchive::~PencilAnnotationArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::PencilAnnotationArchive::default_instance(TSWP::PencilAnnotationArchive *this)
{
  if (atomic_load_explicit(scc_info_PencilAnnotationArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_PencilAnnotationArchive_default_instance_;
}

uint64_t *TSWP::PencilAnnotationArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      this = TSP::Reference::Clear(this[4]);
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_276EA4D28(v4);
  }

  return this;
}

google::protobuf::internal *TSWP::PencilAnnotationArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while ((sub_276EA4A1C(a3, &v17) & 1) == 0)
  {
    v5 = (v17 + 1);
    v6 = *v17;
    if ((*v17 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v17 + 2);
LABEL_6:
      v17 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v7 - 128));
    v17 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v15;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v10 = google::protobuf::internal::InlineGreedyStringParser();
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
          return v17;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_26;
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

        v13 = MEMORY[0x277CA3250](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v17;
      }

      v10 = sub_276F4F9E8(a3, v11, v5);
    }

LABEL_26:
    v17 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v17;
}

unsigned __int8 *TSWP::PencilAnnotationArchive::_InternalSerialize(TSWP::PencilAnnotationArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_276E5154C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::PencilAnnotationArchive::ByteSizeLong(TSWP::PencilAnnotationArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = TSP::Reference::ByteSizeLong(*(this + 4));
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

uint64_t TSWP::PencilAnnotationArchive::MergeFrom(TSWP::PencilAnnotationArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::PencilAnnotationArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::PencilAnnotationArchive::MergeFrom(uint64_t this, const TSWP::PencilAnnotationArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v6 = *(v3 + 32);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277CA3250](v7);
        *(v3 + 32) = v6;
      }

      if (*(a2 + 4))
      {
        v8 = *(a2 + 4);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v6, v8);
    }
  }

  return this;
}

uint64_t *TSWP::PencilAnnotationArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::PencilAnnotationArchive::Clear(this);

    return TSWP::PencilAnnotationArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::PencilAnnotationArchive::CopyFrom(uint64_t *this, const TSWP::PencilAnnotationArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::PencilAnnotationArchive::Clear(this);

    return TSWP::PencilAnnotationArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::PencilAnnotationArchive::IsInitialized(TSWP::PencilAnnotationArchive *this)
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

  return result;
}

uint64_t *TSWP::PencilAnnotationArchive::InternalSwap(TSWP::PencilAnnotationArchive *this, TSWP::PencilAnnotationArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  return result;
}

void *TSWP::FontFeatureArchive::FontFeatureArchive(void *result, uint64_t a2)
{
  *result = &unk_288600520;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_288600520;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSWP::FontFeatureArchive *TSWP::FontFeatureArchive::FontFeatureArchive(TSWP::FontFeatureArchive *this, const TSWP::FontFeatureArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288600520;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSWP::FontFeatureArchive::~FontFeatureArchive(TSWP::FontFeatureArchive *this)
{
  sub_276E4E808(this + 1);
}

{
  sub_276E4E808(this + 1);
}

{
  sub_276E4E808(this + 1);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::FontFeatureArchive::default_instance(TSWP::FontFeatureArchive *this)
{
  if (atomic_load_explicit(scc_info_FontFeatureArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_FontFeatureArchive_default_instance_;
}

uint64_t *TSWP::FontFeatureArchive::Clear(TSWP::FontFeatureArchive *this)
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
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::FontFeatureArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v24) & 1) == 0)
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
            sub_276EA4A94((a1 + 8));
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
      if (sub_276EA4A1C(a3, &v24))
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

unsigned __int8 *TSWP::FontFeatureArchive::_InternalSerialize(TSWP::FontFeatureArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSWP::FontFeatureArchive::RequiredFieldsByteSizeFallback(TSWP::FontFeatureArchive *this)
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

uint64_t TSWP::FontFeatureArchive::ByteSizeLong(TSWP::FontFeatureArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v2 = TSWP::FontFeatureArchive::RequiredFieldsByteSizeFallback(this);
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

uint64_t TSWP::FontFeatureArchive::MergeFrom(TSWP::FontFeatureArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::FontFeatureArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::FontFeatureArchive::MergeFrom(uint64_t this, const TSWP::FontFeatureArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

TSWP::FontFeatureArchive *TSWP::FontFeatureArchive::CopyFrom(TSWP::FontFeatureArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::FontFeatureArchive::Clear(this);

    return TSWP::FontFeatureArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::FontFeatureArchive *TSWP::FontFeatureArchive::CopyFrom(TSWP::FontFeatureArchive *this, const TSWP::FontFeatureArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::FontFeatureArchive::Clear(this);

    return TSWP::FontFeatureArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::FontFeatureArchive::InternalSwap(TSWP::FontFeatureArchive *this, TSWP::FontFeatureArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSP::Color *TSWP::CharacterStylePropertiesArchive::clear_font_color(TSWP::CharacterStylePropertiesArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::Color *TSWP::CharacterStylePropertiesArchive::clear_outline_color(TSWP::CharacterStylePropertiesArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSD::ShadowArchive *TSWP::CharacterStylePropertiesArchive::clear_shadow(TSWP::CharacterStylePropertiesArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSD::ShadowArchive::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::Color *TSWP::CharacterStylePropertiesArchive::clear_strikethru_color(TSWP::CharacterStylePropertiesArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSP::Color *TSWP::CharacterStylePropertiesArchive::clear_background_color(TSWP::CharacterStylePropertiesArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSP::Color *TSWP::CharacterStylePropertiesArchive::clear_underline_color(TSWP::CharacterStylePropertiesArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSD::StrokeArchive *TSWP::CharacterStylePropertiesArchive::clear_tsd_stroke(TSWP::CharacterStylePropertiesArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSD::StrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

TSD::FillArchive *TSWP::CharacterStylePropertiesArchive::clear_tsd_fill(TSWP::CharacterStylePropertiesArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSD::FillArchive::Clear(result);
  }

  *(this + 4) &= ~0x800u;
  return result;
}

TSWP::CharacterStylePropertiesArchive *TSWP::CharacterStylePropertiesArchive::CharacterStylePropertiesArchive(TSWP::CharacterStylePropertiesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886005D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 4) = a2;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (atomic_load_explicit(scc_info_CharacterStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 7) = MEMORY[0x277D80A90];
  *(this + 8) = v3;
  *(this + 9) = v3;
  *(this + 10) = v3;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 213) = 0;
  *(this + 56) = -1;
  return this;
}

TSWP::CharacterStylePropertiesArchive *TSWP::CharacterStylePropertiesArchive::CharacterStylePropertiesArchive(TSWP::CharacterStylePropertiesArchive *this, const TSWP::CharacterStylePropertiesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886005D0;
  *(this + 2) = *(a2 + 2);
  *(this + 6) = 0;
  *(this + 4) = 0;
  v5 = this + 32;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v6 = *(a2 + 10);
  if (v6)
  {
    v7 = *(a2 + 6);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 32));
    sub_276EA5674(v5, v8, (v7 + 8), v6, **(this + 6) - *(this + 10));
    v9 = *(this + 10) + v6;
    *(this + 10) = v9;
    v10 = *(this + 6);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_276EA4CDC(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v12 = MEMORY[0x277D80A90];
  *(this + 7) = MEMORY[0x277D80A90];
  v13 = *(a2 + 4);
  if (v13)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v13 = *(a2 + 4);
  }

  *(this + 8) = v12;
  if ((v13 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v13 = *(a2 + 4);
  }

  *(this + 9) = v12;
  if ((v13 & 4) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v13 = *(a2 + 4);
  }

  *(this + 10) = v12;
  if ((v13 & 8) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v13 = *(a2 + 4);
  }

  if ((v13 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v13 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v13 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v13 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v13 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v13 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v13 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v13 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  *(this + 152) = *(a2 + 152);
  v14 = *(a2 + 168);
  v15 = *(a2 + 184);
  v16 = *(a2 + 200);
  *(this + 212) = *(a2 + 212);
  *(this + 200) = v16;
  *(this + 184) = v15;
  *(this + 168) = v14;
  return this;
}

void sub_276E5A8AC(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v2, 0x10A1C4042C41316);
  sub_276EA55DC(v1);
  _Unwind_Resume(a1);
}

void TSWP::CharacterStylePropertiesArchive::~CharacterStylePropertiesArchive(TSWP::CharacterStylePropertiesArchive *this)
{
  sub_276E5A970(this);
  sub_276E4E808(this + 1);
  sub_276EA55DC(this + 4);
}

{
  TSWP::CharacterStylePropertiesArchive::~CharacterStylePropertiesArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t sub_276E5A970(uint64_t result)
{
  v1 = result;
  v2 = *(result + 56);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 64);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277CA3D00](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 72);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277CA3D00](v5, 0x1012C40EC159624);
  }

  v6 = *(v1 + 80);
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = MEMORY[0x277CA3D00](v6, 0x1012C40EC159624);
  }

  if (v1 != &TSWP::_CharacterStylePropertiesArchive_default_instance_)
  {
    v7 = *(v1 + 88);
    if (v7)
    {
      TSP::Color::~Color(v7);
      MEMORY[0x277CA3D00]();
    }

    v8 = *(v1 + 96);
    if (v8)
    {
      TSP::Color::~Color(v8);
      MEMORY[0x277CA3D00]();
    }

    if (*(v1 + 104))
    {
      v9 = MEMORY[0x277CA2680]();
      MEMORY[0x277CA3D00](v9, 0x10A1C40C8B7F858);
    }

    v10 = *(v1 + 112);
    if (v10)
    {
      TSP::Color::~Color(v10);
      MEMORY[0x277CA3D00]();
    }

    v11 = *(v1 + 120);
    if (v11)
    {
      TSP::Color::~Color(v11);
      MEMORY[0x277CA3D00]();
    }

    v12 = *(v1 + 128);
    if (v12)
    {
      TSP::Color::~Color(v12);
      MEMORY[0x277CA3D00]();
    }

    if (*(v1 + 136))
    {
      v13 = MEMORY[0x277CA26D0]();
      MEMORY[0x277CA3D00](v13, 0x10A1C4078DB9C03);
    }

    result = *(v1 + 144);
    if (result)
    {
      MEMORY[0x277CA25D0]();

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::CharacterStylePropertiesArchive::default_instance(TSWP::CharacterStylePropertiesArchive *this)
{
  if (atomic_load_explicit(scc_info_CharacterStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_CharacterStylePropertiesArchive_default_instance_;
}

uint64_t *TSWP::CharacterStylePropertiesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 10);
  if (v2 >= 1)
  {
    v3 = (this[6] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::FontFeatureArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 40) = 0;
  }

  v5 = *(v1 + 16);
  if (!v5)
  {
    goto LABEL_15;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_43:
    v10 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v10 + 23) < 0)
    {
      **v10 = 0;
      *(v10 + 8) = 0;
      if ((v5 & 4) != 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *v10 = 0;
      *(v10 + 23) = 0;
      if ((v5 & 4) != 0)
      {
        goto LABEL_47;
      }
    }

LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_51:
    v12 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_55;
      }
    }

LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_56:
    this = TSP::Color::Clear(*(v1 + 96));
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_57;
  }

  v9 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_43;
    }
  }

LABEL_8:
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_47:
  v11 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
    if ((v5 & 8) != 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    *v11 = 0;
    *(v11 + 23) = 0;
    if ((v5 & 8) != 0)
    {
      goto LABEL_51;
    }
  }

LABEL_10:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_55:
  this = TSP::Color::Clear(*(v1 + 88));
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_56;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_57:
  this = TSD::ShadowArchive::Clear(*(v1 + 104));
  if ((v5 & 0x80) != 0)
  {
LABEL_14:
    this = TSP::Color::Clear(*(v1 + 112));
  }

LABEL_15:
  if ((v5 & 0xF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v5 & 0x100) != 0)
  {
    this = TSP::Color::Clear(*(v1 + 120));
    if ((v5 & 0x200) == 0)
    {
LABEL_18:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_40;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  this = TSP::Color::Clear(*(v1 + 128));
  if ((v5 & 0x400) == 0)
  {
LABEL_19:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_40:
  this = TSD::StrokeArchive::Clear(*(v1 + 136));
  if ((v5 & 0x800) != 0)
  {
LABEL_20:
    this = TSD::FillArchive::Clear(*(v1 + 144));
  }

LABEL_21:
  if ((v5 & 0xF000) != 0)
  {
    *(v1 + 155) = 0;
    *(v1 + 152) = 0;
  }

  if ((v5 & 0xFF0000) != 0)
  {
    *(v1 + 167) = 0;
    *(v1 + 159) = 0;
    *(v1 + 180) = 0;
    *(v1 + 175) = 0;
  }

  if (HIBYTE(v5))
  {
    *(v1 + 196) = 0;
    *(v1 + 188) = 0;
    *(v1 + 204) = 0;
  }

  v6 = *(v1 + 20);
  if (v6)
  {
    *(v1 + 212) = 0;
    *(v1 + 205) = 0;
  }

  if ((v6 & 0x3F00) != 0)
  {
    *(v1 + 220) = 0;
    *(v1 + 216) = 0;
    *(v1 + 224) = -1;
  }

  v8 = *(v1 + 8);
  v7 = (v1 + 8);
  v7[1] = 0;
  if (v8)
  {

    return sub_276EA4D28(v7);
  }

  return this;
}

unsigned __int8 *TSWP::CharacterStylePropertiesArchive::_InternalSerialize(TSWP::CharacterStylePropertiesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x2000) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 156);
    *v4 = 8;
    v4[1] = v7;
    v4 += 2;
    if ((v6 & 0x4000) == 0)
    {
LABEL_3:
      if ((v6 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v6 & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v8 = *(this + 157);
  *v4 = 16;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 0x1000) == 0)
  {
LABEL_4:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v9 = *(this + 38);
  *v4 = 29;
  *(v4 + 1) = v9;
  v4 += 5;
  if ((v6 & 0x8000) == 0)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v10 = *(this + 158);
  *v4 = 32;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 1) == 0)
  {
LABEL_6:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  v4 = sub_276E5154C(a3, 5, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10000) == 0)
  {
LABEL_7:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_42:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(this + 159);
  *v4 = 48;
  v4[1] = v11;
  v4 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_8:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v12 = *(this + 11);
  *v4 = 58;
  v13 = *(v12 + 5);
  if (v13 > 0x7F)
  {
    v4[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = v4 + 3;
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
      v4[2] = v15;
      v14 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v13;
    v14 = v4 + 2;
  }

  v4 = TSP::Color::_InternalSerialize(v12, v14, a3);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_9:
    if ((v6 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_55:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v18 = *(this + 188);
  *v4 = 64;
  v4[1] = v18;
  v4 += 2;
  if ((v6 & 2) == 0)
  {
LABEL_10:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  v4 = sub_276E5154C(a3, 9, (*(this + 8) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20000) == 0)
  {
LABEL_11:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

LABEL_70:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v23 = *(this + 41);
    *v4 = 88;
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
        if ((v6 & 0x80000) != 0)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v4[2] = v24;
        v4 += 3;
        if ((v6 & 0x80000) != 0)
        {
          goto LABEL_81;
        }
      }
    }

    else
    {
      v4[1] = v23;
      v4 += 2;
      if ((v6 & 0x80000) != 0)
      {
        goto LABEL_81;
      }
    }

LABEL_13:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

LABEL_92:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v31 = *(this + 43);
    *v4 = 104;
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
        if ((v6 & 0x200000) != 0)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v4[2] = v32;
        v4 += 3;
        if ((v6 & 0x200000) != 0)
        {
          goto LABEL_103;
        }
      }
    }

    else
    {
      v4[1] = v31;
      v4 += 2;
      if ((v6 & 0x200000) != 0)
      {
        goto LABEL_103;
      }
    }

LABEL_15:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_106;
  }

LABEL_59:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 40);
  *v4 = 80;
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
      if ((v6 & 0x40000) != 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v4[2] = v20;
      v4 += 3;
      if ((v6 & 0x40000) != 0)
      {
        goto LABEL_70;
      }
    }
  }

  else
  {
    v4[1] = v19;
    v4 += 2;
    if ((v6 & 0x40000) != 0)
    {
      goto LABEL_70;
    }
  }

LABEL_12:
  if ((v6 & 0x80000) == 0)
  {
    goto LABEL_13;
  }

LABEL_81:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(this + 42);
  *v4 = 96;
  if (v27 > 0x7F)
  {
    v4[1] = v27 | 0x80;
    v28 = v27 >> 7;
    if (v27 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v28 | 0x80;
        v29 = v28 >> 7;
        ++v4;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
      *(v4 - 1) = v29;
      if ((v6 & 0x100000) != 0)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v4[2] = v28;
      v4 += 3;
      if ((v6 & 0x100000) != 0)
      {
        goto LABEL_92;
      }
    }
  }

  else
  {
    v4[1] = v27;
    v4 += 2;
    if ((v6 & 0x100000) != 0)
    {
      goto LABEL_92;
    }
  }

LABEL_14:
  if ((v6 & 0x200000) == 0)
  {
    goto LABEL_15;
  }

LABEL_103:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(this + 44);
  *v4 = 117;
  *(v4 + 1) = v35;
  v4 += 5;
  if ((v6 & 0x400000) == 0)
  {
LABEL_16:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_17;
    }

LABEL_109:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v37 = *(this + 46);
    *v4 = 384;
    if (v37 > 0x7F)
    {
      v4[2] = v37 | 0x80;
      v38 = v37 >> 7;
      if (v37 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v38 | 0x80;
          v39 = v38 >> 7;
          ++v4;
          v40 = v38 >> 14;
          v38 >>= 7;
        }

        while (v40);
        *(v4 - 1) = v39;
        if ((v6 & 0x2000000) != 0)
        {
          goto LABEL_120;
        }
      }

      else
      {
        v4[3] = v38;
        v4 += 4;
        if ((v6 & 0x2000000) != 0)
        {
          goto LABEL_120;
        }
      }
    }

    else
    {
      v4[2] = v37;
      v4 += 3;
      if ((v6 & 0x2000000) != 0)
      {
        goto LABEL_120;
      }
    }

LABEL_18:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_123;
  }

LABEL_106:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v36 = *(this + 45);
  *v4 = 125;
  *(v4 + 1) = v36;
  v4 += 5;
  if ((v6 & 0x800000) != 0)
  {
    goto LABEL_109;
  }

LABEL_17:
  if ((v6 & 0x2000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_120:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v41 = *(this + 189);
  *v4 = 392;
  v4[2] = v41;
  v4 += 3;
  if ((v6 & 0x20) == 0)
  {
LABEL_19:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_133;
  }

LABEL_123:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v42 = *(this + 12);
  *v4 = 402;
  v43 = *(v42 + 5);
  if (v43 > 0x7F)
  {
    v4[2] = v43 | 0x80;
    v45 = v43 >> 7;
    if (v43 >> 14)
    {
      v44 = v4 + 4;
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
      v4[3] = v45;
      v44 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v43;
    v44 = v4 + 3;
  }

  v4 = TSP::Color::_InternalSerialize(v42, v44, a3);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_20:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_136;
  }

LABEL_133:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v48 = *(this + 48);
  *v4 = 413;
  *(v4 + 2) = v48;
  v4 += 6;
  if ((v6 & 0x4000000) == 0)
  {
LABEL_21:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_139;
  }

LABEL_136:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v49 = *(this + 190);
  *v4 = 416;
  v4[2] = v49;
  v4 += 3;
  if ((v6 & 0x40) == 0)
  {
LABEL_22:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_149;
  }

LABEL_139:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v50 = *(this + 13);
  *v4 = 426;
  v51 = *(v50 + 5);
  if (v51 > 0x7F)
  {
    v4[2] = v51 | 0x80;
    v53 = v51 >> 7;
    if (v51 >> 14)
    {
      v52 = v4 + 4;
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
      v4[3] = v53;
      v52 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v51;
    v52 = v4 + 3;
  }

  v4 = TSD::ShadowArchive::_InternalSerialize(v50, v52, a3);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_23:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_152;
  }

LABEL_149:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v56 = *(this + 191);
  *v4 = 432;
  v4[2] = v56;
  v4 += 3;
  if ((v6 & 0x80) == 0)
  {
LABEL_24:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_162;
  }

LABEL_152:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v57 = *(this + 14);
  *v4 = 442;
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

  v4 = TSP::Color::_InternalSerialize(v57, v59, a3);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_25:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_165;
  }

LABEL_162:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v63 = *(this + 49);
  *v4 = 453;
  *(v4 + 2) = v63;
  v4 += 6;
  if ((v6 & 0x80000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_168;
  }

LABEL_165:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v64 = *(this + 204);
  *v4 = 456;
  v4[2] = v64;
  v4 += 3;
  if ((v6 & 0x100) == 0)
  {
LABEL_27:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_178;
  }

LABEL_168:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v65 = *(this + 15);
  *v4 = 466;
  v66 = *(v65 + 5);
  if (v66 > 0x7F)
  {
    v4[2] = v66 | 0x80;
    v68 = v66 >> 7;
    if (v66 >> 14)
    {
      v67 = v4 + 4;
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
      v4[3] = v68;
      v67 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v66;
    v67 = v4 + 3;
  }

  v4 = TSP::Color::_InternalSerialize(v65, v67, a3);
  if ((v6 & 0x40000000) != 0)
  {
LABEL_178:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v71 = *(this + 50);
    *v4 = 477;
    *(v4 + 2) = v71;
    v4 += 6;
  }

LABEL_181:
  if (*(this + 20))
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v72 = *(this + 205);
    *v4 = 480;
    v4[2] = v72;
    v4 += 3;
  }

  if ((*(this + 17) & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v73 = *(this + 16);
    *v4 = 490;
    v74 = *(v73 + 5);
    if (v74 > 0x7F)
    {
      v4[2] = v74 | 0x80;
      v76 = v74 >> 7;
      if (v74 >> 14)
      {
        v75 = v4 + 4;
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
        v4[3] = v76;
        v75 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v74;
      v75 = v4 + 3;
    }

    v4 = TSP::Color::_InternalSerialize(v73, v75, a3);
  }

  v79 = *(this + 5);
  if ((v79 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v80 = *(this + 52);
    *v4 = 501;
    *(v4 + 2) = v80;
    v4 += 6;
    if ((v79 & 2) == 0)
    {
LABEL_198:
      if ((v79 & 4) == 0)
      {
        goto LABEL_199;
      }

      goto LABEL_207;
    }
  }

  else if ((v79 & 2) == 0)
  {
    goto LABEL_198;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v81 = *(this + 206);
  *v4 = 504;
  v4[2] = v81;
  v4 += 3;
  if ((v79 & 4) == 0)
  {
LABEL_199:
    if ((v79 & 0x10) == 0)
    {
      goto LABEL_213;
    }

    goto LABEL_210;
  }

LABEL_207:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v82 = *(this + 207);
  *v4 = 640;
  v4[2] = v82;
  v4 += 3;
  if ((v79 & 0x10) != 0)
  {
LABEL_210:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v83 = *(this + 212);
    *v4 = 648;
    v4[2] = v83;
    v4 += 3;
  }

LABEL_213:
  v84 = *(this + 10);
  if (v84)
  {
    for (i = 0; i != v84; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v86 = *(*(this + 6) + 8 * i + 8);
      *v4 = 658;
      v87 = *(v86 + 5);
      if (v87 > 0x7F)
      {
        v4[2] = v87 | 0x80;
        v89 = v87 >> 7;
        if (v87 >> 14)
        {
          v88 = v4 + 4;
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
          v4[3] = v89;
          v88 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v87;
        v88 = v4 + 3;
      }

      v4 = TSWP::FontFeatureArchive::_InternalSerialize(v86, v88, a3);
    }
  }

  if ((v79 & 0x2000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v92 = *(this + 56);
    *v4 = 664;
    if (v92 <= 0x7F)
    {
      v4[2] = v92;
      v4 += 3;
      if ((v79 & 0x20) == 0)
      {
        goto LABEL_237;
      }

      goto LABEL_234;
    }

    v4[2] = v92 | 0x80;
    v93 = v92 >> 7;
    if (v92 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v93 | 0x80;
        v105 = v93 >> 7;
        ++v4;
        v106 = v93 >> 14;
        v93 >>= 7;
      }

      while (v106);
      *(v4 - 1) = v105;
      if ((v79 & 0x20) == 0)
      {
        goto LABEL_237;
      }

      goto LABEL_234;
    }

    v4[3] = v93;
    v4 += 4;
  }

  if ((v79 & 0x20) == 0)
  {
    goto LABEL_237;
  }

LABEL_234:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v94 = *(this + 213);
  *v4 = 672;
  v4[2] = v94;
  v4 += 3;
LABEL_237:
  if ((*(this + 16) & 4) != 0)
  {
    v4 = sub_276E5154C(a3, 37, (*(this + 9) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  if ((*(this + 20) & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v95 = *(this + 214);
    *v4 = 688;
    v4[2] = v95;
    v4 += 3;
  }

  if ((*(this + 16) & 8) != 0)
  {
    v4 = sub_276E5154C(a3, 39, (*(this + 10) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v96 = *(this + 5);
  if ((v96 & 0x80) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v97 = *(this + 215);
    *v4 = 704;
    v4[2] = v97;
    v4 += 3;
    if ((v96 & 0x100) == 0)
    {
LABEL_247:
      if ((v96 & 0x200) == 0)
      {
        goto LABEL_248;
      }

      goto LABEL_256;
    }
  }

  else if ((v96 & 0x100) == 0)
  {
    goto LABEL_247;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v98 = *(this + 216);
  *v4 = 712;
  v4[2] = v98;
  v4 += 3;
  if ((v96 & 0x200) == 0)
  {
LABEL_248:
    if ((v96 & 0x400) == 0)
    {
      goto LABEL_262;
    }

    goto LABEL_259;
  }

LABEL_256:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v99 = *(this + 217);
  *v4 = 720;
  v4[2] = v99;
  v4 += 3;
  if ((v96 & 0x400) != 0)
  {
LABEL_259:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v100 = *(this + 218);
    *v4 = 728;
    v4[2] = v100;
    v4 += 3;
  }

LABEL_262:
  if ((*(this + 17) & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v101 = *(this + 17);
    *v4 = 738;
    v102 = *(v101 + 5);
    if (v102 > 0x7F)
    {
      v4[2] = v102 | 0x80;
      v104 = v102 >> 7;
      if (v102 >> 14)
      {
        v103 = v4 + 4;
        do
        {
          *(v103 - 1) = v104 | 0x80;
          v107 = v104 >> 7;
          ++v103;
          v108 = v104 >> 14;
          v104 >>= 7;
        }

        while (v108);
        *(v103 - 1) = v107;
      }

      else
      {
        v4[3] = v104;
        v103 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v102;
      v103 = v4 + 3;
    }

    v4 = TSD::StrokeArchive::_InternalSerialize(v101, v103, a3);
  }

  if ((*(this + 21) & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v109 = *(this + 219);
    *v4 = 744;
    v4[2] = v109;
    v4 += 3;
  }

  if ((*(this + 17) & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v110 = *(this + 18);
    *v4 = 754;
    v111 = *(v110 + 11);
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
          v114 = v113 >> 7;
          ++v112;
          v115 = v113 >> 14;
          v113 >>= 7;
        }

        while (v115);
        *(v112 - 1) = v114;
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

    v4 = TSD::FillArchive::_InternalSerialize(v110, v112, a3);
  }

  if ((*(this + 21) & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v116 = *(this + 220);
    *v4 = 760;
    v4[2] = v116;
    v4 += 3;
  }

  v117 = *(this + 1);
  if ((v117 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v117 & 0xFFFFFFFFFFFFFFFELL) + 8);
}