unsigned __int8 *TSCK::ActivityNotificationItemArchive::_InternalSerialize(TSCK::ActivityNotificationItemArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 16);
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

  v8 = *(this + 6);
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

  a2 = TSP::UUID::_InternalSerialize(v8, v10, a3);
LABEL_24:
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
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(this + 7);
    *a2 = 34;
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

    a2 = TSP::Date::_InternalSerialize(v24, v26, a3);
  }

  v30 = *(this + 1);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v30 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityNotificationItemArchive::RequiredFieldsByteSizeFallback(TSCK::ActivityNotificationItemArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 6));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 4) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 4) == 0)
    {
      return result;
    }
  }

  v5 = *(this + 16);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
  return result;
}

uint64_t TSCK::ActivityNotificationItemArchive::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    v7 = TSCK::ActivityNotificationItemArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[6]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = *(this + 16);
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 10;
    }

    v7 = v2 + v3 + v6 + 2;
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
      v14 = TSP::Reference::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if ((this[2] & 2) != 0)
  {
    v15 = TSP::Date::ByteSizeLong(this[7]);
    v9 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSCK::ActivityNotificationItemArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityNotificationItemArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityNotificationItemArchive::MergeFrom(uint64_t this, const TSCK::ActivityNotificationItemArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27662D428(v3 + 24, v8, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v9 = *(v3 + 32) + v5;
    *(v3 + 32) = v9;
    v10 = *(v3 + 40);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 4);
  if ((v11 & 7) != 0)
  {
    if (v11)
    {
      *(v3 + 16) |= 1u;
      v12 = *(v3 + 48);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C994B0](v13);
        *(v3 + 48) = v12;
      }

      if (*(a2 + 6))
      {
        v14 = *(a2 + 6);
      }

      else
      {
        v14 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v12, v14);
      if ((v11 & 2) == 0)
      {
LABEL_9:
        if ((v11 & 4) == 0)
        {
LABEL_11:
          *(v3 + 16) |= v11;
          return this;
        }

LABEL_10:
        *(v3 + 64) = *(a2 + 16);
        goto LABEL_11;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 16) |= 2u;
    v15 = *(v3 + 56);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277C994A0](v16);
      *(v3 + 56) = v15;
    }

    if (*(a2 + 7))
    {
      v17 = *(a2 + 7);
    }

    else
    {
      v17 = MEMORY[0x277D809C0];
    }

    this = TSP::Date::MergeFrom(v15, v17);
    if ((v11 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSCK::ActivityNotificationItemArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityNotificationItemArchive::Clear(result);

    return TSCK::ActivityNotificationItemArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityNotificationItemArchive::CopyFrom(uint64_t *this, const TSCK::ActivityNotificationItemArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityNotificationItemArchive::Clear(this);

    return TSCK::ActivityNotificationItemArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityNotificationItemArchive::IsInitialized(TSCK::ActivityNotificationItemArchive *this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 4);
  if (v6)
  {
    result = TSP::UUID::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Date::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCK::ActivityNotificationItemArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2765F8BC4(&this->n128_i64[1], &a2->n128_i64[1]);
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
  return result;
}

uint64_t TSCK::ActivityNotificationItemArchive::GetMetadata(TSCK::ActivityNotificationItemArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[100];
  v2 = off_2812F9CC0[101];
  return result;
}

TSP::UUID *TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::clear_unique_identifier(TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts *TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts(TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts *this, google::protobuf::Arena *a2)
{
  *this = &unk_288571728;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288571728;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts *TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts(TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts *this, const TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288571728;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::~ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts(TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts *this)
{
  if (this != &TSCK::_ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::~ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::default_instance(TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts *this)
{
  if (atomic_load_explicit(scc_info_ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts_default_instance_;
}

uint64_t *TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::Clear(uint64_t *this)
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

    return sub_27662D2EC(v2);
  }

  return this;
}

google::protobuf::internal *TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v25) & 1) == 0)
  {
    while (1)
    {
      v8 = (v25 + 1);
      v9 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v10 - 128));
      v25 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v8 = TagFallback;
      v9 = v22;
LABEL_7:
      if (v9 >> 3 != 2)
      {
        if (v9 >> 3 == 1 && v9 == 10)
        {
          *(a1 + 16) |= 1u;
          v17 = *(a1 + 24);
          if (!v17)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = MEMORY[0x277C994B0](v18);
            LODWORD(v17) = v19;
            *(a1 + 24) = v19;
            v8 = v25;
          }

          v13 = sub_2766359B0(a3, v17, v8);
        }

        else
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27662D0DC((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        v25 = v13;
        if (!v13)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v9 != 16)
      {
        goto LABEL_12;
      }

      v6 |= 2u;
      v14 = (v8 + 1);
      LODWORD(v15) = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      v16 = *v14;
      v15 = (v15 + (v16 << 7) - 128);
      if ((v16 & 0x80000000) == 0)
      {
        v14 = (v8 + 2);
LABEL_23:
        v25 = v14;
        *(a1 + 32) = v15;
        goto LABEL_30;
      }

      v23 = google::protobuf::internal::VarintParseSlow32(v8, v15);
      v25 = v23;
      *(a1 + 32) = v24;
      if (!v23)
      {
LABEL_37:
        v25 = 0;
        goto LABEL_2;
      }

LABEL_30:
      v20 = *(a3 + 92);
      if (sub_27662CC00(a3, &v25))
      {
        goto LABEL_2;
      }
    }

    v8 = (v25 + 2);
LABEL_6:
    v25 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v25;
}

unsigned __int8 *TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::_InternalSerialize(TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::RequiredFieldsByteSizeFallback(TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts *this)
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

uint64_t TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::RequiredFieldsByteSizeFallback(this);
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

uint64_t TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::MergeFrom(uint64_t this, const TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C994B0](v7);
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

uint64_t *TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::Clear(result);

    return TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::CopyFrom(uint64_t *this, const TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::Clear(this);

    return TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::IsInitialized(TSP::UUID **this)
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

uint64_t *TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::InternalSwap(TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts *this, TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts *a2)
{
  result = sub_2765F8BC4(this + 1, a2 + 1);
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

uint64_t TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::GetMetadata(TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[102];
  v2 = off_2812F9CC0[103];
  return result;
}

uint64_t TSCK::ActivityNotificationParticipantCacheArchive::clear_notification_items(uint64_t this)
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

TSP::Date *TSCK::ActivityNotificationParticipantCacheArchive::clear_last_edit_notification_item_sent_date(TSCK::ActivityNotificationParticipantCacheArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Date *TSCK::ActivityNotificationParticipantCacheArchive::clear_last_comment_notification_item_sent_date(TSCK::ActivityNotificationParticipantCacheArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSCK::ActivityNotificationParticipantCacheArchive *TSCK::ActivityNotificationParticipantCacheArchive::ActivityNotificationParticipantCacheArchive(TSCK::ActivityNotificationParticipantCacheArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885717D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_ActivityNotificationParticipantCacheArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = v3;
  return this;
}

void sub_276623AF8(_Unwind_Exception *a1)
{
  sub_27662E5C4(v2);
  sub_27662D3A4(v1);
  _Unwind_Resume(a1);
}

TSCK::ActivityNotificationParticipantCacheArchive *TSCK::ActivityNotificationParticipantCacheArchive::ActivityNotificationParticipantCacheArchive(TSCK::ActivityNotificationParticipantCacheArchive *this, const TSCK::ActivityNotificationParticipantCacheArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885717D8;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27662D428(this + 24, v8, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v9 = *(this + 8) + v5;
    *(this + 8) = v9;
    v10 = *(this + 5);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v11 = *(a2 + 14);
  if (v11)
  {
    v12 = *(a2 + 8);
    v13 = *(a2 + 14);
    v14 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_27662E648(this + 48, v14, (v12 + 8), v11, **(this + 8) - *(this + 14));
    v15 = *(this + 14) + v11;
    *(this + 14) = v15;
    v16 = *(this + 8);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 1);
  if (v17)
  {
    sub_27662D2A0(v4, (v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 9) = MEMORY[0x277D80A90];
  v18 = *(a2 + 4);
  if (v18)
  {
    v19 = *(a2 + 9);
    if (*v4)
    {
      v21 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v18 = *(a2 + 4);
  }

  if ((v18 & 2) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v18 & 4) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  return this;
}

void sub_276623D18(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v3, 0x1081C404FE48876);
  sub_27662E5C4(v2);
  sub_27662D3A4((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCK::ActivityNotificationParticipantCacheArchive::~ActivityNotificationParticipantCacheArchive(TSCK::ActivityNotificationParticipantCacheArchive *this)
{
  v2 = *(this + 9);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C999C0](v2, 0x1012C40EC159624);
  }

  if (this != &TSCK::_ActivityNotificationParticipantCacheArchive_default_instance_)
  {
    v3 = *(this + 10);
    if (v3)
    {
      TSP::Date::~Date(v3);
      MEMORY[0x277C999C0]();
    }

    v4 = *(this + 11);
    if (v4)
    {
      TSP::Date::~Date(v4);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
  sub_27662E5C4(this + 6);
  sub_27662D3A4(this + 3);
}

{
  TSCK::ActivityNotificationParticipantCacheArchive::~ActivityNotificationParticipantCacheArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::ActivityNotificationParticipantCacheArchive::default_instance(TSCK::ActivityNotificationParticipantCacheArchive *this)
{
  if (atomic_load_explicit(scc_info_ActivityNotificationParticipantCacheArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityNotificationParticipantCacheArchive_default_instance_;
}

uint64_t *TSCK::ActivityNotificationParticipantCacheArchive::Clear(uint64_t *this)
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
      this = TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 7) == 0)
  {
    goto LABEL_14;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

  v11 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
    if ((v8 & 2) != 0)
    {
      goto LABEL_22;
    }

LABEL_12:
    if ((v8 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *v11 = 0;
  *(v11 + 23) = 0;
  if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_22:
  this = TSP::Date::Clear(*(v1 + 80));
  if ((v8 & 4) != 0)
  {
LABEL_13:
    this = TSP::Date::Clear(*(v1 + 88));
  }

LABEL_14:
  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_27662D2EC(v9);
  }

  return this;
}

google::protobuf::internal *TSCK::ActivityNotificationParticipantCacheArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v43 = a2;
  v5 = *(a3 + 92);
  while (1)
  {
    if (sub_27662CC00(a3, &v43))
    {
      return v43;
    }

    v6 = (v43 + 1);
    v7 = *v43;
    if ((*v43 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v43 + 2);
LABEL_6:
      v43 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v43, (v8 - 128));
    v43 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v40;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      break;
    }

    if (v9 == 3)
    {
      if (v7 != 26)
      {
        goto LABEL_60;
      }

      v17 = (v6 - 1);
      while (2)
      {
        v18 = (v17 + 1);
        v43 = (v17 + 1);
        v19 = *(a1 + 64);
        if (!v19)
        {
          v20 = *(a1 + 60);
          goto LABEL_32;
        }

        v25 = *(a1 + 56);
        v21 = *v19;
        if (v25 >= *v19)
        {
          if (v21 == *(a1 + 60))
          {
LABEL_32:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v19 = *(a1 + 64);
            v21 = *v19;
          }

          *v19 = v21 + 1;
          v22 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts>(*(a1 + 48));
          v23 = *(a1 + 56);
          v24 = *(a1 + 64) + 8 * v23;
          *(a1 + 56) = v23 + 1;
          *(v24 + 8) = v22;
          v18 = v43;
        }

        else
        {
          *(a1 + 56) = v25 + 1;
          v22 = *&v19[2 * v25 + 2];
        }

        v17 = sub_276636E00(a3, v22, v18);
        v43 = v17;
        if (!v17)
        {
          return 0;
        }

        if (*a3 <= v17 || *v17 != 26)
        {
          goto LABEL_68;
        }

        continue;
      }
    }

    if (v9 != 4)
    {
      if (v9 == 5 && v7 == 42)
      {
        *(a1 + 16) |= 4u;
        v10 = *(a1 + 88);
        if (!v10)
        {
          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277C994A0](v11);
          LODWORD(v10) = v12;
          *(a1 + 88) = v12;
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      goto LABEL_60;
    }

    if (v7 != 34)
    {
      goto LABEL_60;
    }

    *(a1 + 16) |= 1u;
    v26 = *(a1 + 8);
    if (v26)
    {
      v41 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Mutable();
    v16 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_67:
    v43 = v16;
    if (!v16)
    {
      return 0;
    }

LABEL_68:
    v38 = *(a3 + 92);
  }

  if (v9 == 1)
  {
    if (v7 != 10)
    {
      goto LABEL_60;
    }

    v27 = v6 - 1;
    while (1)
    {
      v28 = (v27 + 1);
      v43 = (v27 + 1);
      v29 = *(a1 + 40);
      if (!v29)
      {
        break;
      }

      v36 = *(a1 + 32);
      v31 = *v29;
      if (v36 < *v29)
      {
        *(a1 + 32) = v36 + 1;
        v33 = *&v29[2 * v36 + 2];
        goto LABEL_54;
      }

      if (v31 == *(a1 + 36))
      {
        goto LABEL_50;
      }

LABEL_51:
      *v29 = v31 + 1;
      v32 = MEMORY[0x277C994F0](*(a1 + 24));
      LODWORD(v33) = v32;
      v34 = *(a1 + 32);
      v35 = *(a1 + 40) + 8 * v34;
      *(a1 + 32) = v34 + 1;
      *(v35 + 8) = v32;
      v28 = v43;
LABEL_54:
      v27 = sub_2766358E0(a3, v33, v28);
      v43 = v27;
      if (!v27)
      {
        return 0;
      }

      if (*a3 <= v27 || *v27 != 10)
      {
        goto LABEL_68;
      }
    }

    v30 = *(a1 + 36);
LABEL_50:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
    v29 = *(a1 + 40);
    v31 = *v29;
    goto LABEL_51;
  }

  if (v9 == 2 && v7 == 18)
  {
    *(a1 + 16) |= 2u;
    v10 = *(a1 + 80);
    if (!v10)
    {
      v14 = *(a1 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277C994A0](v14);
      LODWORD(v10) = v15;
      *(a1 + 80) = v15;
LABEL_26:
      v6 = v43;
    }

LABEL_27:
    v16 = sub_276636030(a3, v10, v6);
    goto LABEL_67;
  }

LABEL_60:
  if (v7)
  {
    v37 = (v7 & 7) == 4;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27662D0DC((a1 + 8));
    }

    v16 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_67;
  }

  *(a3 + 80) = v7 - 1;
  return v43;
}

unsigned __int8 *TSCK::ActivityNotificationParticipantCacheArchive::_InternalSerialize(TSCK::ActivityNotificationParticipantCacheArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 8);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 5) + 8 * i + 8);
      *a2 = 10;
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
    }
  }

  v14 = *(this + 4);
  if ((v14 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 10);
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

    a2 = TSP::Date::_InternalSerialize(v15, v17, a3);
  }

  v21 = *(this + 14);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v23 = *(*(this + 8) + 8 * j + 8);
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

      a2 = TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::_InternalSerialize(v23, v25, a3);
    }
  }

  if (v14)
  {
    a2 = sub_2765FB858(a3, 4, (*(this + 9) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v14 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v29 = *(this + 11);
    *a2 = 42;
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

    a2 = TSP::Date::_InternalSerialize(v29, v31, a3);
  }

  v35 = *(this + 1);
  if ((v35 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v35 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityNotificationParticipantCacheArchive::ByteSizeLong(TSCK::ActivityNotificationParticipantCacheArchive *this)
{
  if (*(this + 16))
  {
    v3 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
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
      v12 = TSP::Reference::ByteSizeLong(v11);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(this + 14);
  v14 = v7 + v13;
  v15 = *(this + 8);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = 8 * v13;
    do
    {
      v18 = *v16++;
      v19 = TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::ByteSizeLong(v18);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  v20 = *(this + 4);
  if ((v20 & 6) != 0)
  {
    if ((v20 & 2) != 0)
    {
      v21 = TSP::Date::ByteSizeLong(*(this + 10));
      v14 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v20 & 4) != 0)
    {
      v22 = TSP::Date::ByteSizeLong(*(this + 11));
      v14 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

uint64_t TSCK::ActivityNotificationParticipantCacheArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityNotificationParticipantCacheArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityNotificationParticipantCacheArchive::MergeFrom(uint64_t this, const TSCK::ActivityNotificationParticipantCacheArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27662D428(v3 + 24, v8, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v9 = *(v3 + 32) + v5;
    *(v3 + 32) = v9;
    v10 = *(v3 + 40);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 14);
  if (v11)
  {
    v12 = *(a2 + 8);
    v13 = *(a2 + 14);
    v14 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    this = sub_27662E648(v3 + 48, v14, (v12 + 8), v11, **(v3 + 64) - *(v3 + 56));
    v15 = *(v3 + 56) + v11;
    *(v3 + 56) = v15;
    v16 = *(v3 + 64);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 4);
  if ((v17 & 7) != 0)
  {
    if (v17)
    {
      v18 = *(a2 + 9);
      *(v3 + 16) |= 1u;
      v19 = *(v3 + 8);
      if (v19)
      {
        v27 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    v20 = MEMORY[0x277D809C0];
    if ((v17 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v21 = *(v3 + 80);
      if (!v21)
      {
        v22 = *(v3 + 8);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = MEMORY[0x277C994A0](v22);
        *(v3 + 80) = v21;
      }

      if (*(a2 + 10))
      {
        v23 = *(a2 + 10);
      }

      else
      {
        v23 = v20;
      }

      this = TSP::Date::MergeFrom(v21, v23);
    }

    if ((v17 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v24 = *(v3 + 88);
      if (!v24)
      {
        v25 = *(v3 + 8);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v24 = MEMORY[0x277C994A0](v25);
        *(v3 + 88) = v24;
      }

      if (*(a2 + 11))
      {
        v26 = *(a2 + 11);
      }

      else
      {
        v26 = v20;
      }

      return TSP::Date::MergeFrom(v24, v26);
    }
  }

  return this;
}

uint64_t *TSCK::ActivityNotificationParticipantCacheArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityNotificationParticipantCacheArchive::Clear(result);

    return TSCK::ActivityNotificationParticipantCacheArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityNotificationParticipantCacheArchive::CopyFrom(uint64_t *this, const TSCK::ActivityNotificationParticipantCacheArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityNotificationParticipantCacheArchive::Clear(this);

    return TSCK::ActivityNotificationParticipantCacheArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityNotificationParticipantCacheArchive::IsInitialized(TSCK::ActivityNotificationParticipantCacheArchive *this)
{
  if ((*(this + 16) & 1) == 0)
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

  result = sub_2766214D8(this + 48);
  if (result)
  {
    v6 = *(this + 4);
    if ((v6 & 2) != 0)
    {
      result = TSP::Date::IsInitialized(*(this + 10));
      if (!result)
      {
        return result;
      }

      v6 = *(this + 4);
    }

    if ((v6 & 4) == 0)
    {
      return 1;
    }

    result = TSP::Date::IsInitialized(*(this + 11));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCK::ActivityNotificationParticipantCacheArchive::InternalSwap(TSCK::ActivityNotificationParticipantCacheArchive *this, TSCK::ActivityNotificationParticipantCacheArchive *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
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
  v11 = *(this + 11);
  result = *(a2 + 5);
  *(this + 5) = result;
  *(a2 + 10) = v10;
  *(a2 + 11) = v11;
  return result;
}

uint64_t TSCK::ActivityNotificationParticipantCacheArchive::GetMetadata(TSCK::ActivityNotificationParticipantCacheArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[104];
  v2 = off_2812F9CC0[105];
  return result;
}

uint64_t TSCK::ActivityNotificationQueueArchive::clear_unprocessed_notification_items(uint64_t this)
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

uint64_t TSCK::ActivityNotificationQueueArchive::clear_pending_participant_caches(uint64_t this)
{
  v1 = *(this + 48);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 56) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 48) = 0;
  }

  return this;
}

uint64_t TSCK::ActivityNotificationQueueArchive::clear_sent_participant_caches(uint64_t this)
{
  v1 = *(this + 72);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 80) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 72) = 0;
  }

  return this;
}

TSCK::ActivityNotificationQueueArchive *TSCK::ActivityNotificationQueueArchive::ActivityNotificationQueueArchive(TSCK::ActivityNotificationQueueArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288571888;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 5) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = a2;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  if (atomic_load_explicit(scc_info_ActivityNotificationQueueArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_276624E4C(_Unwind_Exception *a1)
{
  sub_27662D3A4(v3);
  sub_27662D3A4(v2);
  sub_27662D3A4(v1);
  _Unwind_Resume(a1);
}

TSCK::ActivityNotificationQueueArchive *TSCK::ActivityNotificationQueueArchive::ActivityNotificationQueueArchive(TSCK::ActivityNotificationQueueArchive *this, const TSCK::ActivityNotificationQueueArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_288571888;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = *(a2 + 6);
    v9 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_27662D428(v5, v9, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v10 = *(this + 6) + v6;
    *(this + 6) = v10;
    v11 = *(this + 4);
    if (*v11 < v10)
    {
      *v11 = v10;
    }
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v12 = *(a2 + 12);
  if (v12)
  {
    v13 = *(a2 + 7);
    v14 = *(a2 + 12);
    v15 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 40));
    sub_27662D428(this + 40, v15, (v13 + 8), v12, **(this + 7) - *(this + 12));
    v16 = *(this + 12) + v12;
    *(this + 12) = v16;
    v17 = *(this + 7);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  v18 = *(a2 + 18);
  if (v18)
  {
    v19 = *(a2 + 10);
    v20 = *(a2 + 18);
    v21 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 64));
    sub_27662D428(this + 64, v21, (v19 + 8), v18, **(this + 10) - *(this + 18));
    v22 = *(this + 18) + v18;
    *(this + 18) = v22;
    v23 = *(this + 10);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  *(this + 22) = 0;
  v24 = *(a2 + 1);
  if (v24)
  {
    sub_27662D2A0(v4, (v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_276625038(_Unwind_Exception *a1)
{
  sub_27662D3A4(v3);
  sub_27662D3A4(v2);
  sub_27662D3A4(v1);
  _Unwind_Resume(a1);
}

void TSCK::ActivityNotificationQueueArchive::~ActivityNotificationQueueArchive(TSCK::ActivityNotificationQueueArchive *this)
{
  sub_2765F8538(this + 1);
  sub_27662D3A4(this + 8);
  sub_27662D3A4(this + 5);
  sub_27662D3A4(this + 2);
}

{
  TSCK::ActivityNotificationQueueArchive::~ActivityNotificationQueueArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::ActivityNotificationQueueArchive::default_instance(TSCK::ActivityNotificationQueueArchive *this)
{
  if (atomic_load_explicit(scc_info_ActivityNotificationQueueArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityNotificationQueueArchive_default_instance_;
}

uint64_t *TSCK::ActivityNotificationQueueArchive::Clear(uint64_t *this)
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

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v8 = *(v1 + 72);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 80) + 8);
    do
    {
      v10 = *v9++;
      this = TSP::Reference::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 72) = 0;
  }

  v12 = *(v1 + 8);
  v11 = (v1 + 8);
  if (v12)
  {

    return sub_27662D2EC(v11);
  }

  return this;
}

google::protobuf::internal *TSCK::ActivityNotificationQueueArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v46 = a2;
  v5 = *(a3 + 92);
  if ((sub_27662CC00(a3, &v46) & 1) == 0)
  {
    while (1)
    {
      v7 = (v46 + 1);
      v8 = *v46;
      if ((*v46 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v46, (v9 - 128));
      v46 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v7 = TagFallback;
      v8 = v45;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_13;
        }

        v24 = v7 - 1;
        while (2)
        {
          v25 = (v24 + 1);
          v46 = (v24 + 1);
          v26 = *(a1 + 80);
          if (!v26)
          {
            v27 = *(a1 + 76);
            goto LABEL_40;
          }

          v33 = *(a1 + 72);
          v28 = *v26;
          if (v33 >= *v26)
          {
            if (v28 == *(a1 + 76))
            {
LABEL_40:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 64));
              v26 = *(a1 + 80);
              v28 = *v26;
            }

            *v26 = v28 + 1;
            v29 = MEMORY[0x277C994F0](*(a1 + 64));
            LODWORD(v30) = v29;
            v31 = *(a1 + 72);
            v32 = *(a1 + 80) + 8 * v31;
            *(a1 + 72) = v31 + 1;
            *(v32 + 8) = v29;
            v25 = v46;
          }

          else
          {
            *(a1 + 72) = v33 + 1;
            v30 = *&v26[2 * v33 + 2];
          }

          v24 = sub_2766358E0(a3, v30, v25);
          v46 = v24;
          if (!v24)
          {
            return 0;
          }

          if (*a3 <= v24 || *v24 != 42)
          {
            goto LABEL_20;
          }

          continue;
        }
      }

      if (v10 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        v14 = v7 - 1;
        while (2)
        {
          v15 = (v14 + 1);
          v46 = (v14 + 1);
          v16 = *(a1 + 56);
          if (!v16)
          {
            v17 = *(a1 + 52);
            goto LABEL_26;
          }

          v23 = *(a1 + 48);
          v18 = *v16;
          if (v23 >= *v16)
          {
            if (v18 == *(a1 + 52))
            {
LABEL_26:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
              v16 = *(a1 + 56);
              v18 = *v16;
            }

            *v16 = v18 + 1;
            v19 = MEMORY[0x277C994F0](*(a1 + 40));
            LODWORD(v20) = v19;
            v21 = *(a1 + 48);
            v22 = *(a1 + 56) + 8 * v21;
            *(a1 + 48) = v21 + 1;
            *(v22 + 8) = v19;
            v15 = v46;
          }

          else
          {
            *(a1 + 48) = v23 + 1;
            v20 = *&v16[2 * v23 + 2];
          }

          v14 = sub_2766358E0(a3, v20, v15);
          v46 = v14;
          if (!v14)
          {
            return 0;
          }

          if (*a3 <= v14 || *v14 != 26)
          {
            goto LABEL_20;
          }

          continue;
        }
      }

      if (v10 == 1 && v8 == 10)
      {
        v34 = v7 - 1;
        while (1)
        {
          v35 = (v34 + 1);
          v46 = (v34 + 1);
          v36 = *(a1 + 32);
          if (!v36)
          {
            break;
          }

          v43 = *(a1 + 24);
          v38 = *v36;
          if (v43 < *v36)
          {
            *(a1 + 24) = v43 + 1;
            v40 = *&v36[2 * v43 + 2];
            goto LABEL_57;
          }

          if (v38 == *(a1 + 28))
          {
            goto LABEL_53;
          }

LABEL_54:
          *v36 = v38 + 1;
          v39 = MEMORY[0x277C994F0](*(a1 + 16));
          LODWORD(v40) = v39;
          v41 = *(a1 + 24);
          v42 = *(a1 + 32) + 8 * v41;
          *(a1 + 24) = v41 + 1;
          *(v42 + 8) = v39;
          v35 = v46;
LABEL_57:
          v34 = sub_2766358E0(a3, v40, v35);
          v46 = v34;
          if (!v34)
          {
            return 0;
          }

          if (*a3 <= v34 || *v34 != 10)
          {
            goto LABEL_20;
          }
        }

        v37 = *(a1 + 28);
LABEL_53:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
        v36 = *(a1 + 32);
        v38 = *v36;
        goto LABEL_54;
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
        return v46;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27662D0DC((a1 + 8));
      }

      v46 = google::protobuf::internal::UnknownFieldParse();
      if (!v46)
      {
        return 0;
      }

LABEL_20:
      v13 = *(a3 + 92);
      if (sub_27662CC00(a3, &v46))
      {
        return v46;
      }
    }

    v7 = (v46 + 2);
LABEL_6:
    v46 = v7;
    goto LABEL_7;
  }

  return v46;
}

unsigned __int8 *TSCK::ActivityNotificationQueueArchive::_InternalSerialize(TSCK::ActivityNotificationQueueArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
      *a2 = 26;
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

      a2 = TSP::Reference::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(this + 18);
  if (v21)
  {
    for (k = 0; k != v21; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v23 = *(*(this + 10) + 8 * k + 8);
      *a2 = 42;
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

      a2 = TSP::Reference::_InternalSerialize(v23, v25, a3);
    }
  }

  v29 = *(this + 1);
  if ((v29 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v29 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityNotificationQueueArchive::ByteSizeLong(TSCK::ActivityNotificationQueueArchive *this)
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
      v14 = TSP::Reference::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 18);
  v16 = v9 + v15;
  v17 = *(this + 10);
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
      v21 = TSP::Reference::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v16, this + 88);
  }

  else
  {
    *(this + 22) = v16;
    return v16;
  }
}

uint64_t TSCK::ActivityNotificationQueueArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityNotificationQueueArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityNotificationQueueArchive::MergeFrom(uint64_t this, const TSCK::ActivityNotificationQueueArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = *(a2 + 6);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_27662D428(v3 + 16, v8, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v9 = *(v3 + 24) + v5;
    *(v3 + 24) = v9;
    v10 = *(v3 + 32);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(a2 + 7);
    v13 = *(a2 + 12);
    v14 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 40));
    this = sub_27662D428(v3 + 40, v14, (v12 + 8), v11, **(v3 + 56) - *(v3 + 48));
    v15 = *(v3 + 48) + v11;
    *(v3 + 48) = v15;
    v16 = *(v3 + 56);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 18);
  if (v17)
  {
    v18 = *(a2 + 10);
    v19 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 64));
    this = sub_27662D428(v3 + 64, v19, (v18 + 8), v17, **(v3 + 80) - *(v3 + 72));
    v20 = *(v3 + 72) + v17;
    *(v3 + 72) = v20;
    v21 = *(v3 + 80);
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  return this;
}

uint64_t *TSCK::ActivityNotificationQueueArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityNotificationQueueArchive::Clear(result);

    return TSCK::ActivityNotificationQueueArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityNotificationQueueArchive::CopyFrom(uint64_t *this, const TSCK::ActivityNotificationQueueArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityNotificationQueueArchive::Clear(this);

    return TSCK::ActivityNotificationQueueArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCK::ActivityNotificationQueueArchive::IsInitialized(TSCK::ActivityNotificationQueueArchive *this)
{
  v2 = *(this + 6);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(this + 12);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = TSP::Reference::IsInitialized(*(*(this + 7) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(this + 18);
  do
  {
    v8 = v10 < 1;
    if (v10 < 1)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = TSP::Reference::IsInitialized(*(*(this + 10) + 8 * v10));
    v10 = v11;
  }

  while ((v12 & 1) != 0);
  return v8;
}

__n128 TSCK::ActivityNotificationQueueArchive::InternalSwap(TSCK::ActivityNotificationQueueArchive *this, TSCK::ActivityNotificationQueueArchive *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  v7 = *(this + 7);
  *(this + 3) = *(a2 + 3);
  *(a2 + 6) = v6;
  *(a2 + 7) = v7;
  v8 = *(this + 9);
  v9 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v8;
  *(a2 + 10) = v9;
  return result;
}

uint64_t TSCK::ActivityNotificationQueueArchive::GetMetadata(TSCK::ActivityNotificationQueueArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[106];
  v2 = off_2812F9CC0[107];
  return result;
}

TSP::Date *TSCK::ActivityStreamTransformationStateArchive::clear_last_activity_coalesced_date(TSCK::ActivityStreamTransformationStateArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::ActivityStreamTransformationStateArchive *TSCK::ActivityStreamTransformationStateArchive::ActivityStreamTransformationStateArchive(TSCK::ActivityStreamTransformationStateArchive *this, google::protobuf::Arena *a2)
{
  *(this + 4) = a2;
  *this = &unk_288571938;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (atomic_load_explicit(scc_info_ActivityStreamTransformationStateArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 80) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  return this;
}

void sub_276625E24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    sub_276637140(v2);
  }

  _Unwind_Resume(exception_object);
}

TSCK::ActivityStreamTransformationStateArchive *TSCK::ActivityStreamTransformationStateArchive::ActivityStreamTransformationStateArchive(TSCK::ActivityStreamTransformationStateArchive *this, const TSCK::ActivityStreamTransformationStateArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288571938;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  v5 = *(a2 + 6);
  if (v5)
  {
    sub_27662CDBC(this + 6, v5);
    v6 = *(this + 4);
    *(this + 6) += *(a2 + 6);
    memcpy(v6, *(a2 + 4), 8 * *(a2 + 6));
  }

  v7 = *(a2 + 1);
  if (v7)
  {
    sub_27662D2A0(v4, (v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  v8 = *(a2 + 56);
  *(this + 65) = *(a2 + 65);
  *(this + 56) = v8;
  return this;
}

void sub_276625F44(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v2, 0x1081C404FE48876);
  if (*(v1 + 28) >= 1)
  {
    v4 = *(v1 + 32);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  _Unwind_Resume(a1);
}

void TSCK::ActivityStreamTransformationStateArchive::~ActivityStreamTransformationStateArchive(TSCK::ActivityStreamTransformationStateArchive *this)
{
  if (this != &TSCK::_ActivityStreamTransformationStateArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::Date::~Date(v2);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
  if (*(this + 7) >= 1)
  {
    v3 = *(this + 4);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }
}

{
  TSCK::ActivityStreamTransformationStateArchive::~ActivityStreamTransformationStateArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::ActivityStreamTransformationStateArchive::default_instance(TSCK::ActivityStreamTransformationStateArchive *this)
{
  if (atomic_load_explicit(scc_info_ActivityStreamTransformationStateArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityStreamTransformationStateArchive_default_instance_;
}

google::protobuf::internal *TSCK::ActivityStreamTransformationStateArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v44 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v44) & 1) == 0)
  {
    while (1)
    {
      v8 = (v44 + 1);
      v9 = *v44;
      if ((*v44 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v44, (v10 - 128));
      v44 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_84;
      }

      v8 = TagFallback;
      v9 = v24;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 > 4)
      {
        if (v9 >> 3 > 6)
        {
          if (v11 == 7)
          {
            if (v9 == 57)
            {
              v6 |= 0x20u;
              *(a1 + 72) = *v8;
              v44 = (v8 + 8);
              goto LABEL_80;
            }

LABEL_72:
            if (v9)
            {
              v42 = (v9 & 7) == 4;
            }

            else
            {
              v42 = 1;
            }

            if (v42)
            {
              *(a3 + 80) = v9 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_27662D0DC((a1 + 8));
            }

            v16 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_79;
          }

          if (v11 != 8 || v9 != 64)
          {
            goto LABEL_72;
          }

          v6 |= 0x40u;
          v21 = (v8 + 1);
          v20 = *v8;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if ((v22 & 0x80000000) == 0)
          {
            v21 = (v8 + 2);
LABEL_39:
            v44 = v21;
            *(a1 + 80) = v20 != 0;
            goto LABEL_80;
          }

          v40 = google::protobuf::internal::VarintParseSlow64(v8, v20);
          v44 = v40;
          *(a1 + 80) = v41 != 0;
          if (!v40)
          {
            goto LABEL_84;
          }
        }

        else
        {
          if (v11 != 5)
          {
            if (v11 != 6)
            {
              goto LABEL_72;
            }

            if (v9 != 50)
            {
              if (v9 == 49)
              {
                v45 = *v8;
                sub_27662CD58((a1 + 24), &v45);
                v44 = (v44 + 8);
                goto LABEL_80;
              }

              goto LABEL_72;
            }

            v16 = MEMORY[0x277C99690](a1 + 24, v8, a3);
LABEL_79:
            v44 = v16;
            if (!v16)
            {
LABEL_84:
              v44 = 0;
              goto LABEL_2;
            }

            goto LABEL_80;
          }

          if (v9 != 40)
          {
            goto LABEL_72;
          }

          v6 |= 0x10u;
          v29 = (v8 + 1);
          LODWORD(v28) = *v8;
          if ((v28 & 0x80) == 0)
          {
            goto LABEL_51;
          }

          v30 = *v29;
          v28 = (v28 + (v30 << 7) - 128);
          if ((v30 & 0x80000000) == 0)
          {
            v29 = (v8 + 2);
LABEL_51:
            v44 = v29;
            *(a1 + 68) = v28;
            goto LABEL_80;
          }

          v36 = google::protobuf::internal::VarintParseSlow64(v8, v28);
          v44 = v36;
          *(a1 + 68) = v37;
          if (!v36)
          {
            goto LABEL_84;
          }
        }
      }

      else
      {
        if (v9 >> 3 > 2)
        {
          if (v11 != 3)
          {
            if (v11 == 4 && v9 == 32)
            {
              v18 = (v8 + 1);
              v17 = *v8;
              if ((v17 & 0x8000000000000000) == 0)
              {
                goto LABEL_30;
              }

              v19 = *v18;
              v17 = (v19 << 7) + v17 - 128;
              if (v19 < 0)
              {
                v44 = google::protobuf::internal::VarintParseSlow64(v8, v17);
                if (!v44)
                {
                  goto LABEL_84;
                }
              }

              else
              {
                v18 = (v8 + 2);
LABEL_30:
                v44 = v18;
              }

              if (v17 > 1)
              {
                sub_276637240((a1 + 8));
              }

              else
              {
                *(a1 + 16) |= 8u;
                *(a1 + 64) = v17;
              }

              goto LABEL_80;
            }

            goto LABEL_72;
          }

          if (v9 != 26)
          {
            goto LABEL_72;
          }

          *(a1 + 16) |= 1u;
          v31 = *(a1 + 48);
          if (!v31)
          {
            v32 = *(a1 + 8);
            if (v32)
            {
              v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
            }

            v33 = MEMORY[0x277C994A0](v32);
            LODWORD(v31) = v33;
            *(a1 + 48) = v33;
            v8 = v44;
          }

          v16 = sub_276636030(a3, v31, v8);
          goto LABEL_79;
        }

        if (v11 == 1)
        {
          if (v9 != 8)
          {
            goto LABEL_72;
          }

          v6 |= 2u;
          v26 = (v8 + 1);
          LODWORD(v25) = *v8;
          if ((v25 & 0x80) == 0)
          {
            goto LABEL_46;
          }

          v27 = *v26;
          v25 = (v25 + (v27 << 7) - 128);
          if ((v27 & 0x80000000) == 0)
          {
            v26 = (v8 + 2);
LABEL_46:
            v44 = v26;
            *(a1 + 56) = v25;
            goto LABEL_80;
          }

          v34 = google::protobuf::internal::VarintParseSlow64(v8, v25);
          v44 = v34;
          *(a1 + 56) = v35;
          if (!v34)
          {
            goto LABEL_84;
          }
        }

        else
        {
          if (v11 != 2 || v9 != 16)
          {
            goto LABEL_72;
          }

          v6 |= 4u;
          v14 = (v8 + 1);
          LODWORD(v13) = *v8;
          if ((v13 & 0x80) == 0)
          {
            goto LABEL_18;
          }

          v15 = *v14;
          v13 = (v13 + (v15 << 7) - 128);
          if ((v15 & 0x80000000) == 0)
          {
            v14 = (v8 + 2);
LABEL_18:
            v44 = v14;
            *(a1 + 60) = v13;
            goto LABEL_80;
          }

          v38 = google::protobuf::internal::VarintParseSlow64(v8, v13);
          v44 = v38;
          *(a1 + 60) = v39;
          if (!v38)
          {
            goto LABEL_84;
          }
        }
      }

LABEL_80:
      v43 = *(a3 + 92);
      if (sub_27662CC00(a3, &v44))
      {
        goto LABEL_2;
      }
    }

    v8 = (v44 + 2);
LABEL_6:
    v44 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v44;
}

unsigned __int8 *TSCK::ActivityStreamTransformationStateArchive::_InternalSerialize(TSCK::ActivityStreamTransformationStateArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_26:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(this + 15);
    *v4 = 16;
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
        if (v6)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v4[2] = v16;
        v4 += 3;
        if (v6)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v4[1] = v15;
      v4 += 2;
      if (v6)
      {
        goto LABEL_37;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_47;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 14);
  *v4 = 8;
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v10 | 0x80;
        v13 = v10 >> 7;
        ++v4;
        v14 = v10 >> 14;
        v10 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
      if ((v6 & 4) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v4[2] = v10;
      v4 += 3;
      if ((v6 & 4) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    v4[1] = v8;
    v4 += 2;
    if ((v6 & 4) != 0)
    {
      goto LABEL_26;
    }
  }

LABEL_3:
  if ((v6 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_37:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 6);
  *v4 = 26;
  v20 = *(v19 + 5);
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

  v4 = TSP::Date::_InternalSerialize(v19, v21, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_6;
  }

LABEL_47:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 16);
  *v4 = 32;
  if (v25 > 0x7F)
  {
    v4[1] = v25 | 0x80;
    v26 = v25 >> 7;
    if (v25 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v26 | 0x80;
        v27 = v26 >> 7;
        ++v4;
        v28 = v26 >> 14;
        v26 >>= 7;
      }

      while (v28);
      *(v4 - 1) = v27;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v4[2] = v26;
      v4 += 3;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    v4[1] = v25;
    v4 += 2;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_58;
    }
  }

LABEL_6:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 17);
  *v4 = 40;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++v4;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
    }

    else
    {
      v4[2] = v9;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_58:
  if (*(this + 6) >= 1)
  {
    v4 = sub_27660EAE0(a3, 6, this + 24, v4);
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v29 = *(this + 9);
    *v4 = 57;
    *(v4 + 1) = v29;
    v4 += 9;
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v30 = *(this + 80);
    *v4 = 64;
    v4[1] = v30;
    v4 += 2;
  }

  v31 = *(this + 1);
  if ((v31 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v31 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSCK::ActivityStreamTransformationStateArchive::ByteSizeLong(TSCK::ActivityStreamTransformationStateArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
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

  v5 = *(this + 6);
  v6 = 8 * v5;
  if (v5)
  {
    LODWORD(v5) = 8 * v5;
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v7;
  }

  *(this + 10) = v5;
  v8 = v3 + v6;
  if (v2)
  {
    v9 = TSP::Date::ByteSizeLong(*(this + 6));
    v8 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v2 & 0x7C) != 0)
  {
    if ((v2 & 4) != 0)
    {
      v10 = *(this + 15);
      if (v10 < 0)
      {
        v11 = 11;
      }

      else
      {
        v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v8 += v11;
      if ((v2 & 8) == 0)
      {
LABEL_16:
        if ((v2 & 0x10) == 0)
        {
LABEL_30:
          v16 = v8 + 9;
          if ((v2 & 0x20) == 0)
          {
            v16 = v8;
          }

          v8 = v16 + ((v2 >> 5) & 2);
          goto LABEL_33;
        }

LABEL_26:
        v14 = *(this + 17);
        if (v14 < 0)
        {
          v15 = 11;
        }

        else
        {
          v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
        }

        v8 += v15;
        goto LABEL_30;
      }
    }

    else if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

    v12 = *(this + 16);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v8 += v13;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

LABEL_33:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v8, this + 20);
  }

  else
  {
    *(this + 5) = v8;
    return v8;
  }
}

uint64_t TSCK::ActivityStreamTransformationStateArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityStreamTransformationStateArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *TSCK::ActivityStreamTransformationStateArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityStreamTransformationStateArchive::Clear(result);

    return TSCK::ActivityStreamTransformationStateArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityStreamTransformationStateArchive::CopyFrom(uint64_t *this, const TSCK::ActivityStreamTransformationStateArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityStreamTransformationStateArchive::Clear(this);

    return TSCK::ActivityStreamTransformationStateArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCK::ActivityStreamTransformationStateArchive::InternalSwap(TSCK::ActivityStreamTransformationStateArchive *this, TSCK::ActivityStreamTransformationStateArchive *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v7 = *(this + 6);
  v8 = *(this + 7);
  *(this + 3) = *(a2 + 3);
  *(a2 + 6) = v7;
  *(a2 + 7) = v8;
  v9 = *(this + 8);
  v10 = *(this + 9);
  result = *(a2 + 4);
  *(this + 4) = result;
  *(a2 + 8) = v9;
  *(a2 + 9) = v10;
  LOBYTE(v9) = *(this + 80);
  *(this + 80) = *(a2 + 80);
  *(a2 + 80) = v9;
  return result;
}

uint64_t TSCK::ActivityStreamTransformationStateArchive::GetMetadata(TSCK::ActivityStreamTransformationStateArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[108];
  v2 = off_2812F9CC0[109];
  return result;
}

void *TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::ActivityStreamActivityCounterArchive_ActionTypeCounter(void *result, uint64_t a2)
{
  *result = &unk_2885719E8;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_2885719E8;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::ActivityStreamActivityCounterArchive_ActionTypeCounter(TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *this, const TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885719E8;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27662D2A0(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::~ActivityStreamActivityCounterArchive_ActionTypeCounter(TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *this)
{
  sub_2765F8538(this + 1);
}

{
  sub_2765F8538(this + 1);
}

{
  sub_2765F8538(this + 1);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::default_instance(TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *this)
{
  if (atomic_load_explicit(scc_info_ActivityStreamActivityCounterArchive_ActionTypeCounter_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityStreamActivityCounterArchive_ActionTypeCounter_default_instance_;
}

uint64_t *TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::Clear(TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *this)
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
    return sub_27662D2EC(result);
  }

  return result;
}

google::protobuf::internal *TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v26) & 1) == 0)
  {
    while (1)
    {
      v8 = (v26 + 1);
      v9 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v10 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_38;
      }

      v8 = TagFallback;
      v9 = v21;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_12;
        }

        v6 |= 2u;
        v13 = (v8 + 1);
        LODWORD(v14) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        v15 = *v13;
        v14 = (v14 + (v15 << 7) - 128);
        if ((v15 & 0x80000000) == 0)
        {
          v13 = (v8 + 2);
LABEL_24:
          v26 = v13;
          *(a1 + 28) = v14;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow32(v8, v14);
        v26 = v22;
        *(a1 + 28) = v23;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v9 >> 3 != 1 || v9 != 8)
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27662D0DC((a1 + 8));
          }

          v26 = google::protobuf::internal::UnknownFieldParse();
          if (!v26)
          {
LABEL_38:
            v26 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v6 |= 1u;
        v17 = (v8 + 1);
        LODWORD(v16) = *v8;
        if ((v16 & 0x80) == 0)
        {
          goto LABEL_28;
        }

        v18 = *v17;
        v16 = (v16 + (v18 << 7) - 128);
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v8 + 2);
LABEL_28:
          v26 = v17;
          *(a1 + 24) = v16;
          goto LABEL_29;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v8, v16);
        v26 = v24;
        *(a1 + 24) = v25;
        if (!v24)
        {
          goto LABEL_38;
        }
      }

LABEL_29:
      v19 = *(a3 + 92);
      if (sub_27662CC00(a3, &v26))
      {
        goto LABEL_2;
      }
    }

    v8 = (v26 + 2);
LABEL_6:
    v26 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v26;
}

unsigned __int8 *TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::_InternalSerialize(TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::ByteSizeLong(TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_9;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v3 = *(this + 6);
  if ((v3 & 0x80000000) == 0)
  {
    v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v2 = 11;
  if ((v1 & 2) != 0)
  {
LABEL_8:
    v2 += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::MergeFrom(uint64_t this, const TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::CopyFrom(TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::Clear(result);

    return TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::MergeFrom(v4, a2);
  }

  return result;
}

TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::CopyFrom(TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *this, const TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::Clear(this);

    return TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::InternalSwap(TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *this, TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *a2)
{
  result = sub_2765F8BC4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::GetMetadata(TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[110];
  v2 = off_2812F9CC0[111];
  return result;
}

void *TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::ActivityStreamActivityCounterArchive_CursorTypeCounter(void *result, uint64_t a2)
{
  *result = &unk_288571A98;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_288571A98;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::ActivityStreamActivityCounterArchive_CursorTypeCounter(TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *this, const TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288571A98;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27662D2A0(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::~ActivityStreamActivityCounterArchive_CursorTypeCounter(TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *this)
{
  sub_2765F8538(this + 1);
}

{
  sub_2765F8538(this + 1);
}

{
  sub_2765F8538(this + 1);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::default_instance(TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *this)
{
  if (atomic_load_explicit(scc_info_ActivityStreamActivityCounterArchive_CursorTypeCounter_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityStreamActivityCounterArchive_CursorTypeCounter_default_instance_;
}

uint64_t *TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::Clear(TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *this)
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
    return sub_27662D2EC(result);
  }

  return result;
}

google::protobuf::internal *TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v26) & 1) == 0)
  {
    while (1)
    {
      v8 = (v26 + 1);
      v9 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v10 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_38;
      }

      v8 = TagFallback;
      v9 = v21;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_12;
        }

        v6 |= 2u;
        v13 = (v8 + 1);
        LODWORD(v14) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        v15 = *v13;
        v14 = (v14 + (v15 << 7) - 128);
        if ((v15 & 0x80000000) == 0)
        {
          v13 = (v8 + 2);
LABEL_24:
          v26 = v13;
          *(a1 + 28) = v14;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow32(v8, v14);
        v26 = v22;
        *(a1 + 28) = v23;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v9 >> 3 != 1 || v9 != 8)
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27662D0DC((a1 + 8));
          }

          v26 = google::protobuf::internal::UnknownFieldParse();
          if (!v26)
          {
LABEL_38:
            v26 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v6 |= 1u;
        v17 = (v8 + 1);
        LODWORD(v16) = *v8;
        if ((v16 & 0x80) == 0)
        {
          goto LABEL_28;
        }

        v18 = *v17;
        v16 = (v16 + (v18 << 7) - 128);
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v8 + 2);
LABEL_28:
          v26 = v17;
          *(a1 + 24) = v16;
          goto LABEL_29;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v8, v16);
        v26 = v24;
        *(a1 + 24) = v25;
        if (!v24)
        {
          goto LABEL_38;
        }
      }

LABEL_29:
      v19 = *(a3 + 92);
      if (sub_27662CC00(a3, &v26))
      {
        goto LABEL_2;
      }
    }

    v8 = (v26 + 2);
LABEL_6:
    v26 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v26;
}

unsigned __int8 *TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::_InternalSerialize(TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::ByteSizeLong(TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_9;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v3 = *(this + 6);
  if ((v3 & 0x80000000) == 0)
  {
    v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v2 = 11;
  if ((v1 & 2) != 0)
  {
LABEL_8:
    v2 += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::MergeFrom(uint64_t this, const TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::CopyFrom(TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::Clear(result);

    return TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::MergeFrom(v4, a2);
  }

  return result;
}

TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::CopyFrom(TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *this, const TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::Clear(this);

    return TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::InternalSwap(TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *this, TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *a2)
{
  result = sub_2765F8BC4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::GetMetadata(TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[112];
  v2 = off_2812F9CC0[113];
  return result;
}

TSCK::ActivityStreamActivityCounterArchive *TSCK::ActivityStreamActivityCounterArchive::ActivityStreamActivityCounterArchive(TSCK::ActivityStreamActivityCounterArchive *this, google::protobuf::Arena *a2)
{
  *(this + 2) = a2;
  *this = &unk_288571B48;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  if (atomic_load_explicit(scc_info_ActivityStreamActivityCounterArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_276627D14(_Unwind_Exception *a1)
{
  sub_27662E708(v2);
  sub_27662E708(v1);
  _Unwind_Resume(a1);
}

TSCK::ActivityStreamActivityCounterArchive *TSCK::ActivityStreamActivityCounterArchive::ActivityStreamActivityCounterArchive(TSCK::ActivityStreamActivityCounterArchive *this, const TSCK::ActivityStreamActivityCounterArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_288571B48;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = *(a2 + 6);
    v9 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_27662E7A0(v5, v9, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v10 = *(this + 6) + v6;
    *(this + 6) = v10;
    v11 = *(this + 4);
    if (*v11 < v10)
    {
      *v11 = v10;
    }
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v12 = *(a2 + 12);
  if (v12)
  {
    v13 = *(a2 + 7);
    v14 = *(a2 + 12);
    v15 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 40));
    sub_27662E860(this + 40, v15, (v13 + 8), v12, **(this + 7) - *(this + 12));
    v16 = *(this + 12) + v12;
    *(this + 12) = v16;
    v17 = *(this + 7);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  *(this + 16) = 0;
  v18 = *(a2 + 1);
  if (v18)
  {
    sub_27662D2A0(v4, (v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_276627E8C(_Unwind_Exception *a1)
{
  sub_27662E708(v2);
  sub_27662E708(v1);
  _Unwind_Resume(a1);
}

void TSCK::ActivityStreamActivityCounterArchive::~ActivityStreamActivityCounterArchive(TSCK::ActivityStreamActivityCounterArchive *this)
{
  sub_2765F8538(this + 1);
  sub_27662E708(this + 5);
  sub_27662E708(this + 2);
}

{
  TSCK::ActivityStreamActivityCounterArchive::~ActivityStreamActivityCounterArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::ActivityStreamActivityCounterArchive::default_instance(TSCK::ActivityStreamActivityCounterArchive *this)
{
  if (atomic_load_explicit(scc_info_ActivityStreamActivityCounterArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityStreamActivityCounterArchive_default_instance_;
}

google::protobuf::internal *TSCK::ActivityStreamActivityCounterArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = *(a3 + 92);
  if ((sub_27662CC00(a3, &v33) & 1) == 0)
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
        return 0;
      }

      v7 = TagFallback;
      v8 = v32;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_12;
        }

        v13 = (v7 - 1);
        while (2)
        {
          v14 = (v13 + 1);
          v33 = (v13 + 1);
          v15 = *(a1 + 56);
          if (!v15)
          {
            v16 = *(a1 + 52);
            goto LABEL_25;
          }

          v21 = *(a1 + 48);
          v17 = *v15;
          if (v21 >= *v15)
          {
            if (v17 == *(a1 + 52))
            {
LABEL_25:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
              v15 = *(a1 + 56);
              v17 = *v15;
            }

            *v15 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter>(*(a1 + 40));
            v19 = *(a1 + 48);
            v20 = *(a1 + 56) + 8 * v19;
            *(a1 + 48) = v19 + 1;
            *(v20 + 8) = v18;
            v14 = v33;
          }

          else
          {
            *(a1 + 48) = v21 + 1;
            v18 = *&v15[2 * v21 + 2];
          }

          v13 = sub_276636FA0(a3, v18, v14);
          v33 = v13;
          if (!v13)
          {
            return 0;
          }

          if (*a3 <= v13 || *v13 != 18)
          {
            goto LABEL_19;
          }

          continue;
        }
      }

      if (v8 >> 3 == 1 && v8 == 10)
      {
        v22 = (v7 - 1);
        while (1)
        {
          v23 = (v22 + 1);
          v33 = (v22 + 1);
          v24 = *(a1 + 32);
          if (!v24)
          {
            break;
          }

          v30 = *(a1 + 24);
          v26 = *v24;
          if (v30 < *v24)
          {
            *(a1 + 24) = v30 + 1;
            v27 = *&v24[2 * v30 + 2];
            goto LABEL_42;
          }

          if (v26 == *(a1 + 28))
          {
            goto LABEL_38;
          }

LABEL_39:
          *v24 = v26 + 1;
          v27 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter>(*(a1 + 16));
          v28 = *(a1 + 24);
          v29 = *(a1 + 32) + 8 * v28;
          *(a1 + 24) = v28 + 1;
          *(v29 + 8) = v27;
          v23 = v33;
LABEL_42:
          v22 = sub_276636ED0(a3, v27, v23);
          v33 = v22;
          if (!v22)
          {
            return 0;
          }

          if (*a3 <= v22 || *v22 != 10)
          {
            goto LABEL_19;
          }
        }

        v25 = *(a1 + 28);
LABEL_38:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
        v24 = *(a1 + 32);
        v26 = *v24;
        goto LABEL_39;
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
        return v33;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27662D0DC((a1 + 8));
      }

      v33 = google::protobuf::internal::UnknownFieldParse();
      if (!v33)
      {
        return 0;
      }

LABEL_19:
      v12 = *(a3 + 92);
      if (sub_27662CC00(a3, &v33))
      {
        return v33;
      }
    }

    v7 = (v33 + 2);
LABEL_6:
    v33 = v7;
    goto LABEL_7;
  }

  return v33;
}

unsigned __int8 *TSCK::ActivityStreamActivityCounterArchive::_InternalSerialize(TSCK::ActivityStreamActivityCounterArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::_InternalSerialize(v7, v9, a3);
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

      a2 = TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityStreamActivityCounterArchive::ByteSizeLong(TSCK::ActivityStreamActivityCounterArchive *this)
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
      v7 = TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::ByteSizeLong(v6);
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
      v14 = TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::ByteSizeLong(v13);
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

uint64_t TSCK::ActivityStreamActivityCounterArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityStreamActivityCounterArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *TSCK::ActivityStreamActivityCounterArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityStreamActivityCounterArchive::Clear(result);

    return TSCK::ActivityStreamActivityCounterArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityStreamActivityCounterArchive::CopyFrom(uint64_t *this, const TSCK::ActivityStreamActivityCounterArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityStreamActivityCounterArchive::Clear(this);

    return TSCK::ActivityStreamActivityCounterArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCK::ActivityStreamActivityCounterArchive::InternalSwap(TSCK::ActivityStreamActivityCounterArchive *this, TSCK::ActivityStreamActivityCounterArchive *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
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

uint64_t TSCK::ActivityStreamActivityCounterArchive::GetMetadata(TSCK::ActivityStreamActivityCounterArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[114];
  v2 = off_2812F9CC0[115];
  return result;
}

TSP::Date *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::clear_date_to_audit(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType *this, google::protobuf::Arena *a2)
{
  *this = &unk_288571BF8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288571BF8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType *this, const TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288571BF8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::~ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType *this)
{
  if (this != &TSCK::_ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Date::~Date(v2);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::~ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::default_instance(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType *this)
{
  if (atomic_load_explicit(scc_info_ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType_default_instance_;
}

uint64_t *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Date::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27662D2EC(v2);
  }

  return this;
}

google::protobuf::internal *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v25) & 1) == 0)
  {
    while (1)
    {
      v8 = (v25 + 1);
      v9 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v10 - 128));
      v25 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v8 = TagFallback;
      v9 = v22;
LABEL_7:
      if (v9 >> 3 != 2)
      {
        if (v9 >> 3 == 1 && v9 == 10)
        {
          *(a1 + 16) |= 1u;
          v17 = *(a1 + 24);
          if (!v17)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = MEMORY[0x277C994A0](v18);
            LODWORD(v17) = v19;
            *(a1 + 24) = v19;
            v8 = v25;
          }

          v13 = sub_276636030(a3, v17, v8);
        }

        else
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27662D0DC((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        v25 = v13;
        if (!v13)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v9 != 16)
      {
        goto LABEL_12;
      }

      v6 |= 2u;
      v15 = (v8 + 1);
      LODWORD(v14) = *v8;
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      v16 = *v15;
      v14 = (v14 + (v16 << 7) - 128);
      if ((v16 & 0x80000000) == 0)
      {
        v15 = (v8 + 2);
LABEL_23:
        v25 = v15;
        *(a1 + 32) = v14;
        goto LABEL_30;
      }

      v23 = google::protobuf::internal::VarintParseSlow64(v8, v14);
      v25 = v23;
      *(a1 + 32) = v24;
      if (!v23)
      {
LABEL_37:
        v25 = 0;
        goto LABEL_2;
      }

LABEL_30:
      v20 = *(a3 + 92);
      if (sub_27662CC00(a3, &v25))
      {
        goto LABEL_2;
      }
    }

    v8 = (v25 + 2);
LABEL_6:
    v25 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v25;
}

unsigned __int8 *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::_InternalSerialize(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Date::_InternalSerialize(v6, v8, a3);
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

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::RequiredFieldsByteSizeFallback(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::Date::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      return result;
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
  return result;
}

uint64_t TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::ByteSizeLong(TSP::Date **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v7 = TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Date::ByteSizeLong(this[3]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = *(this + 8);
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 10;
    }

    v7 = v2 + v3 + v6 + 2;
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

uint64_t TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::MergeFrom(uint64_t this, const TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C994A0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809C0];
      }

      this = TSP::Date::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::Clear(result);

    return TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::CopyFrom(uint64_t *this, const TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::Clear(this);

    return TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::IsInitialized(TSP::Date **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::Date::IsInitialized(this[3]);
  }
}

uint64_t *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::InternalSwap(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType *this, TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType *a2)
{
  result = sub_2765F8BC4(this + 1, a2 + 1);
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

uint64_t TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::GetMetadata(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[116];
  v2 = off_2812F9CC0[117];
  return result;
}

uint64_t TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::clear_current_author_identifiers(uint64_t this)
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

TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::ActivityStreamRemovedAuthorAuditorPendingStateArchive(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive *this, google::protobuf::Arena *a2)
{
  *(this + 2) = a2;
  *this = &unk_288571CA8;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  if (atomic_load_explicit(scc_info_ActivityStreamRemovedAuthorAuditorPendingStateArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_276629250(_Unwind_Exception *a1)
{
  sub_27662E920(v2);
  sub_27662E180(v1);
  _Unwind_Resume(a1);
}

TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::ActivityStreamRemovedAuthorAuditorPendingStateArchive(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive *this, const TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_288571CA8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = *(a2 + 6);
    v9 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_27662E504(v5, v9, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v10 = *(this + 6) + v6;
    *(this + 6) = v10;
    v11 = *(this + 4);
    if (*v11 < v10)
    {
      *v11 = v10;
    }
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v12 = *(a2 + 12);
  if (v12)
  {
    v13 = *(a2 + 7);
    v14 = *(a2 + 12);
    v15 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 40));
    sub_27662E9A4(this + 40, v15, (v13 + 8), v12, **(this + 7) - *(this + 12));
    v16 = *(this + 12) + v12;
    *(this + 12) = v16;
    v17 = *(this + 7);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  *(this + 16) = 0;
  v18 = *(a2 + 1);
  if (v18)
  {
    sub_27662D2A0(v4, (v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_2766293C8(_Unwind_Exception *a1)
{
  sub_27662E920(v2);
  sub_27662E180(v1);
  _Unwind_Resume(a1);
}

void TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::~ActivityStreamRemovedAuthorAuditorPendingStateArchive(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive *this)
{
  sub_2765F8538(this + 1);
  sub_27662E920(this + 5);
  sub_27662E180(this + 2);
}

{
  TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::~ActivityStreamRemovedAuthorAuditorPendingStateArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::default_instance(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive *this)
{
  if (atomic_load_explicit(scc_info_ActivityStreamRemovedAuthorAuditorPendingStateArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityStreamRemovedAuthorAuditorPendingStateArchive_default_instance_;
}

uint64_t *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::Clear(uint64_t *this)
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

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      this = TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_27662D2EC(v8);
  }

  return this;
}

google::protobuf::internal *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v34 = a2;
  v5 = *(a3 + 92);
  if ((sub_27662CC00(a3, &v34) & 1) == 0)
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
        return 0;
      }

      v7 = TagFallback;
      v8 = v33;
LABEL_7:
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_12;
        }

        v13 = (v7 - 1);
        while (2)
        {
          v14 = (v13 + 1);
          v34 = (v13 + 1);
          v15 = *(a1 + 56);
          if (!v15)
          {
            v16 = *(a1 + 52);
            goto LABEL_25;
          }

          v21 = *(a1 + 48);
          v17 = *v15;
          if (v21 >= *v15)
          {
            if (v17 == *(a1 + 52))
            {
LABEL_25:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
              v15 = *(a1 + 56);
              v17 = *v15;
            }

            *v15 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType>(*(a1 + 40));
            v19 = *(a1 + 48);
            v20 = *(a1 + 56) + 8 * v19;
            *(a1 + 48) = v19 + 1;
            *(v20 + 8) = v18;
            v14 = v34;
          }

          else
          {
            *(a1 + 48) = v21 + 1;
            v18 = *&v15[2 * v21 + 2];
          }

          v13 = sub_276637070(a3, v18, v14);
          v34 = v13;
          if (!v13)
          {
            return 0;
          }

          if (*a3 <= v13 || *v13 != 26)
          {
            goto LABEL_19;
          }

          continue;
        }
      }

      if (v8 >> 3 == 1 && v8 == 10)
      {
        v22 = v7 - 1;
        while (1)
        {
          v23 = (v22 + 1);
          v34 = (v22 + 1);
          v24 = *(a1 + 32);
          if (!v24)
          {
            break;
          }

          v31 = *(a1 + 24);
          v26 = *v24;
          if (v31 < *v24)
          {
            *(a1 + 24) = v31 + 1;
            v28 = *&v24[2 * v31 + 2];
            goto LABEL_42;
          }

          if (v26 == *(a1 + 28))
          {
            goto LABEL_38;
          }

LABEL_39:
          *v24 = v26 + 1;
          v27 = MEMORY[0x277C994B0](*(a1 + 16));
          LODWORD(v28) = v27;
          v29 = *(a1 + 24);
          v30 = *(a1 + 32) + 8 * v29;
          *(a1 + 24) = v29 + 1;
          *(v30 + 8) = v27;
          v23 = v34;
LABEL_42:
          v22 = sub_2766359B0(a3, v28, v23);
          v34 = v22;
          if (!v22)
          {
            return 0;
          }

          if (*a3 <= v22 || *v22 != 10)
          {
            goto LABEL_19;
          }
        }

        v25 = *(a1 + 28);
LABEL_38:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
        v24 = *(a1 + 32);
        v26 = *v24;
        goto LABEL_39;
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
        return v34;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27662D0DC((a1 + 8));
      }

      v34 = google::protobuf::internal::UnknownFieldParse();
      if (!v34)
      {
        return 0;
      }

LABEL_19:
      v12 = *(a3 + 92);
      if (sub_27662CC00(a3, &v34))
      {
        return v34;
      }
    }

    v7 = (v34 + 2);
LABEL_6:
    v34 = v7;
    goto LABEL_7;
  }

  return v34;
}

unsigned __int8 *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::_InternalSerialize(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
      *a2 = 26;
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

      a2 = TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::ByteSizeLong(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive *this)
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
      v14 = TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::ByteSizeLong(v13);
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

uint64_t TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::MergeFrom(uint64_t this, const TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = *(a2 + 6);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_27662E504(v3 + 16, v8, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v9 = *(v3 + 24) + v5;
    *(v3 + 24) = v9;
    v10 = *(v3 + 32);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(a2 + 7);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 40));
    this = sub_27662E9A4(v3 + 40, v13, (v12 + 8), v11, **(v3 + 56) - *(v3 + 48));
    v14 = *(v3 + 48) + v11;
    *(v3 + 48) = v14;
    v15 = *(v3 + 56);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  return this;
}

uint64_t *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::Clear(result);

    return TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::CopyFrom(uint64_t *this, const TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::Clear(this);

    return TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::IsInitialized(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive *this)
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

  return sub_276629DA0(this + 40);
}

BOOL sub_276629DA0(uint64_t a1)
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

  while ((TSP::Date::IsInitialized(*(v4 + 24)) & 1) != 0);
  return v3 < 1;
}

__n128 TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::InternalSwap(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive *this, TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
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

uint64_t TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::GetMetadata(TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[118];
  v2 = off_2812F9CC0[119];
  return result;
}

void *sub_276629E98(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27662EB04(a1);
}

void *sub_276629F64(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27662EC04(a1);
}

TSCK::CollaborationCommandHistory_ItemList *sub_27662A030(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27662ED04(a1, 1);
  TSCK::CollaborationCommandHistory_ItemList::CollaborationCommandHistory_ItemList(v2, a1);
  return v2;
}

void *sub_27662A0BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27662ED90(a1);
}

TSCK::CollaborationCommandHistoryItem *sub_27662A18C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27662EE94(a1, 1);
  TSCK::CollaborationCommandHistoryItem::CollaborationCommandHistoryItem(v2, a1);
  return v2;
}

TSCK::CollaborationCommandHistoryCoalescingGroup *sub_27662A218(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27662EF20(a1, 1);
  TSCK::CollaborationCommandHistoryCoalescingGroup::CollaborationCommandHistoryCoalescingGroup(v2, a1);
  return v2;
}

void *sub_27662A2A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27662EFAC(a1);
}

void *sub_27662A370(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27662F0AC(a1);
}

void *sub_27662A43C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27662F1AC(a1);
}

uint64_t sub_27662A508(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27662F2AC(a1);
}

TSCK::SetActivityAuthorShareParticipantIDCommandArchive *sub_27662A5DC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27662F3B4(a1, 1);
  TSCK::SetActivityAuthorShareParticipantIDCommandArchive::SetActivityAuthorShareParticipantIDCommandArchive(v2, a1);
  return v2;
}

void *sub_27662A668(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27662F440(a1);
}

uint64_t sub_27662A734(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27662F540(a1);
}

uint64_t sub_27662A804(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27662F644(a1);
}

void *sub_27662A8D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27662F748(a1);
}

void *sub_27662A9A0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27662F848(a1);
}

TSCK::ActivityCommitCommandArchive *sub_27662AA6C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27662F948(a1, 1);
  TSCK::ActivityCommitCommandArchive::ActivityCommitCommandArchive(v2, a1);
  return v2;
}

void *sub_27662AAF8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27662F9D4(a1);
}

TSCK::CreateLocalStorageSnapshotCommandArchive *sub_27662ABC4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27662FAD4(a1, 1);
  TSCK::CreateLocalStorageSnapshotCommandArchive::CreateLocalStorageSnapshotCommandArchive(v2, a1);
  return v2;
}

void *sub_27662AC50(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27662FB60(a1);
}

void *sub_27662AD1C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27662FC60(a1);
}

TSCK::CollaborationAppliedCommandDocumentRevisionMapping *sub_27662ADEC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27662FD64(a1, 1);
  TSCK::CollaborationAppliedCommandDocumentRevisionMapping::CollaborationAppliedCommandDocumentRevisionMapping(v2, a1);
  return v2;
}

TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry *sub_27662AE78(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27662FDF0(a1, 1);
  TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::CollaborationDocumentSessionState_AcknowledgementObserverEntry(v2, a1);
  return v2;
}

TSCK::CollaborationDocumentSessionState *sub_27662AF04(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27662FE7C(a1, 1);
  TSCK::CollaborationDocumentSessionState::CollaborationDocumentSessionState(v2, a1);
  return v2;
}

void *sub_27662AF90(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27662FF08(a1);
}

TSCK::OperationStorageEntryArraySegment *sub_27662B05C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276630008(a1, 1);
  TSCK::OperationStorageEntryArraySegment::OperationStorageEntryArraySegment(v2, a1);
  return v2;
}

TSCK::OperationStorage *sub_27662B0E8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276630094(a1, 1);
  TSCK::OperationStorage::OperationStorage(v2, a1);
  return v2;
}

void *sub_27662B174(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276630120(a1);
}

void *sub_27662B240(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276630220(a1);
}

TSCK::CommandAssetChunkArchive *sub_27662B30C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276630320(a1, 1);
  TSCK::CommandAssetChunkArchive::CommandAssetChunkArchive(v2, a1);
  return v2;
}

TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *sub_27662B398(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2766303AC(a1, 1);
  TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::AssetUploadStatusCommandArchive_AssetUploadStatusInfo(v2, a1);
  return v2;
}

TSCK::AssetUploadStatusCommandArchive *sub_27662B424(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276630438(a1, 1);
  TSCK::AssetUploadStatusCommandArchive::AssetUploadStatusCommandArchive(v2, a1);
  return v2;
}

TSCK::AssetUnmaterializedOnServerCommandArchive *sub_27662B4B0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2766304C4(a1, 1);
  TSCK::AssetUnmaterializedOnServerCommandArchive::AssetUnmaterializedOnServerCommandArchive(v2, a1);
  return v2;
}

TSCK::CollaboratorCursorArchive *sub_27662B53C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276630550(a1, 1);
  TSCK::CollaboratorCursorArchive::CollaboratorCursorArchive(v2, a1);
  return v2;
}

uint64_t sub_27662B5C8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2766305DC(a1);
}

void *sub_27662B6A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2766306EC(a1);
}

void *sub_27662B770(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2766307EC(a1);
}

TSCK::ActivityArchive *sub_27662B83C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2766308EC(a1, 1);
  TSCK::ActivityArchive::ActivityArchive(v2, a1);
  return v2;
}

TSCK::ActivityAuthorArchive *sub_27662B8C8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276630978(a1, 1);
  TSCK::ActivityAuthorArchive::ActivityAuthorArchive(v2, a1);
  return v2;
}

TSCK::CommandActivityBehaviorArchive *sub_27662B954(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276630A04(a1, 1);
  TSCK::CommandActivityBehaviorArchive::CommandActivityBehaviorArchive(v2, a1);
  return v2;
}

TSCK::ActivityCursorCollectionArchive *sub_27662B9E0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276630A90(a1, 1);
  TSCK::ActivityCursorCollectionArchive::ActivityCursorCollectionArchive(v2, a1);
  return v2;
}

void *sub_27662BA6C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276630B1C(a1);
}

uint64_t sub_27662BB38(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276630C1C(a1, 1);
  *v2 = &unk_2885710F8;
  *(v2 + 8) = a1;
  google::protobuf::internal::ExtensionSet::ExtensionSet((v2 + 16), a1);
  *(v2 + 40) = 0;
  return v2;
}

TSCK::CommentActivityNavigationInfoArchive *sub_27662BC00(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276630CA8(a1, 1);
  TSCK::CommentActivityNavigationInfoArchive::CommentActivityNavigationInfoArchive(v2, a1);
  return v2;
}

TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache *sub_27662BC8C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276630D34(a1, 1);
  TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::ActivityAuthorCacheArchive_ShareParticipantIDCache(v2, a1);
  return v2;
}

TSCK::ActivityAuthorCacheArchive_PublicIDCache *sub_27662BD18(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276630DC0(a1, 1);
  TSCK::ActivityAuthorCacheArchive_PublicIDCache::ActivityAuthorCacheArchive_PublicIDCache(v2, a1);
  return v2;
}

void *sub_27662BDA4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276630E4C(a1);
}

void *sub_27662BE70(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276630F4C(a1);
}

TSCK::ActivityAuthorCacheArchive *sub_27662BF3C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27663104C(a1, 1);
  TSCK::ActivityAuthorCacheArchive::ActivityAuthorCacheArchive(v2, a1);
  return v2;
}

void *sub_27662BFC8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2766310D8(a1);
}

TSCK::ActivityNotificationItemArchive *sub_27662C094(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2766311D8(a1, 1);
  TSCK::ActivityNotificationItemArchive::ActivityNotificationItemArchive(v2, a1);
  return v2;
}

uint64_t sub_27662C120(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276631264(a1);
}

TSCK::ActivityNotificationParticipantCacheArchive *sub_27662C1F0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276631368(a1, 1);
  TSCK::ActivityNotificationParticipantCacheArchive::ActivityNotificationParticipantCacheArchive(v2, a1);
  return v2;
}

TSCK::ActivityNotificationQueueArchive *sub_27662C27C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2766313F4(a1, 1);
  TSCK::ActivityNotificationQueueArchive::ActivityNotificationQueueArchive(v2, a1);
  return v2;
}

TSCK::ActivityStreamTransformationStateArchive *sub_27662C308(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276631480(a1, 1);
  TSCK::ActivityStreamTransformationStateArchive::ActivityStreamTransformationStateArchive(v2, a1);
  return v2;
}

void *sub_27662C394(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27663150C(a1, 1);
  *result = &unk_2885719E8;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_27662C404(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2766315B4(a1, 1);
  *result = &unk_288571A98;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCK::ActivityStreamActivityCounterArchive *sub_27662C474(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27663165C(a1, 1);
  TSCK::ActivityStreamActivityCounterArchive::ActivityStreamActivityCounterArchive(v2, a1);
  return v2;
}

uint64_t sub_27662C500(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2766316E8(a1);
}

TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive *sub_27662C5D0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2766317EC(a1, 1);
  TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::ActivityStreamRemovedAuthorAuditorPendingStateArchive(v2, a1);
  return v2;
}

uint64_t sub_27662CC00(uint64_t a1, uint64_t *a2)
{
  if (*a2 >= *a1)
  {
    v5 = *a2 - *(a1 + 8);
    if (*(a1 + 28) == v5)
    {
      if (v5 >= 1 && !*(a1 + 16))
      {
        *a2 = 0;
      }

      v2 = 1;
    }

    else
    {
      *a2 = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a1);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void *sub_27662CC78(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27662CCBC(a1, 0);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_27662CCBC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27663727C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_27662CD44);
}

void sub_27662CD44(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_27662CD58(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    sub_27662CDBC(a1, v3 + 1);
    *(*(a1 + 1) + 8 * v3) = v4;
  }

  else
  {
    *(*(a1 + 1) + 8 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
}

void sub_27662CDBC(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 8);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  if (v4)
  {
    sub_27662CEC0(v4);
  }

  else
  {
    v8 = operator new(8 * v6 + 8);
  }

  *v8 = v4;
  v9 = v8 + 1;
  a1[1] = v6;
  *(a1 + 1) = v9;
  v10 = *a1;
  if (v10 >= 1)
  {
    memcpy(v9, v5 + 1, 8 * v10);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void sub_27662CEC0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_2766372B8(a1);
  }

  JUMPOUT(0x277C99500);
}

void sub_27662CF14(unsigned int *a1, int *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    sub_27662CF78(a1, v3 + 1);
    *(*(a1 + 1) + 4 * v3) = v4;
  }

  else
  {
    *(*(a1 + 1) + 4 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
}

void sub_27662CF78(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 8);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  if (v4)
  {
    sub_27662CEC0(v4);
  }

  else
  {
    v8 = operator new(4 * v6 + 8);
  }

  *v8 = v4;
  v9 = v8 + 1;
  a1[1] = v6;
  *(a1 + 1) = v9;
  v10 = *a1;
  if (v10 >= 1)
  {
    memcpy(v9, v5 + 1, 4 * v10);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

uint64_t sub_27662D07C(unsigned __int8 *a1, _DWORD *a2)
{
  v3 = *a1;
  if (*a1 < 0)
  {
    v5 = (v3 + (a1[1] << 7) - 128);
    if (a1[1] < 0)
    {
      result = google::protobuf::internal::VarintParseSlow32(a1, v5);
      *a2 = v6;
    }

    else
    {
      *a2 = v5;
      return (a1 + 2);
    }
  }

  else
  {
    *a2 = v3;
    return (a1 + 1);
  }

  return result;
}

uint64_t *sub_27662D0DC(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_27662D124(v2);
  *a1 = v3 | 1;
  *v3 = v2;
  return v3 + 1;
}

double sub_27662D124(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = sub_27662D168(a1, 0);
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

uint64_t sub_27662D168(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2766372F4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27662D1F0);
}

void sub_27662D1F0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (v3 != v4)
  {
    google::protobuf::UnknownFieldSet::ClearFallback(v5);
    v3 = *v5;
  }

  if (v3)
  {
    *(a1 + 16) = v3;

    operator delete(v3);
  }
}

uint64_t sub_27662D254(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = *(result + 16) + 8;
    do
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_27662D2A0(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = sub_27662D0DC(a1);
  }

  return MEMORY[0x2821EAB30](v3, a2);
}

uint64_t *sub_27662D2EC(uint64_t *a1)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_27662D0DC(a1);
  }

  if (*result != result[1])
  {

    return google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t *sub_27662D33C(uint64_t *a1, uint64_t *a2)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_27662D0DC(a1);
  }

  v4 = *result;
  *result = *a2;
  *a2 = v4;
  v5 = result[1];
  result[1] = a2[1];
  a2[1] = v5;
  v6 = result[2];
  result[2] = a2[2];
  a2[2] = v6;
  return result;
}

void sub_27662D3A4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSP::Reference::~Reference(*v3);
          MEMORY[0x277C999C0]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_27662D428(uint64_t result, TSP::Reference **a2, TSP::Reference **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27662D4D8(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C994F0](v18);
      result = sub_27662D4D8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_27662D4E8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x277C99070]();
          MEMORY[0x277C999C0](v5, 0x1081C408D4C693ALL);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_27662D56C(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27662D61C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C99450](v18);
      result = sub_27662D61C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_27662D62C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          MEMORY[0x277C999C0](v5, 0x1012C40EC159624);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_27662D6C8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::~CollaborationDocumentSessionState_AcknowledgementObserverEntry(*v3);
          MEMORY[0x277C999C0]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_27662D74C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSCK::CollaborationAppliedCommandDocumentRevisionMapping::~CollaborationAppliedCommandDocumentRevisionMapping(*v3);
          MEMORY[0x277C999C0]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

std::string *sub_27662D7D0(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = std::string::operator=(v15, v13);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_27662CC78(v18);
      result = std::string::operator=(v22, v21);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_27662D87C(uint64_t result, TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry **a2, TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27662D92C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry>(v18);
      result = sub_27662D92C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_27662D93C(uint64_t result, TSCK::CollaborationAppliedCommandDocumentRevisionMapping **a2, TSCK::CollaborationAppliedCommandDocumentRevisionMapping **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27662D9EC(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaborationAppliedCommandDocumentRevisionMapping>(v18);
      result = sub_27662D9EC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_27662D9FC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x277C99030]();
          MEMORY[0x277C999C0](v5, 0x10A1C40A7520D6ALL);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_27662DA80(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27662DB30(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C99440](v18);
      result = sub_27662DB30(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

_BYTE *sub_27662DB40(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
{
  v4 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *a4 = v4 | 0x82;
    v6 = v4 >> 7;
    if (v4 >> 14)
    {
      v5 = a4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      a4[1] = v6;
      v5 = a4 + 2;
    }
  }

  else
  {
    *a4 = v4 | 2;
    v5 = a4 + 1;
  }

  if (a3 >= 0x80)
  {
    do
    {
      *v5++ = a3 | 0x80;
      v9 = a3 >> 7;
      v11 = a3 >> 14;
      a3 >>= 7;
    }

    while (v11);
  }

  else
  {
    LOBYTE(v9) = a3;
  }

  *v5 = v9;
  return v5 + 1;
}

void sub_27662DBD4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::~AssetUploadStatusCommandArchive_AssetUploadStatusInfo(*v3);
          MEMORY[0x277C999C0]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_27662DC58(uint64_t result, TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo **a2, TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27662DD08(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo>(v18);
      result = sub_27662DD08(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

unsigned __int8 *sub_27662DD18(google::protobuf::io::EpsCopyOutputStream *this, int a2, int *a3, unsigned int a4, unsigned __int8 *a5, uint64_t (*a6)(void))
{
  if (*this <= a5)
  {
    a5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a5);
  }

  v11 = sub_27662DB40(this, a2, a4, a5);
  v12 = *(a3 + 1);
  v13 = &v12[*a3];
  do
  {
    if (*this <= v11)
    {
      v11 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v11);
    }

    v14 = *v12++;
    v15 = a6(v14);
    if (v15 > 0x7F)
    {
      *v11 = v15 | 0x80;
      v16 = v15 >> 7;
      if (v15 >> 14)
      {
        v11 += 2;
        do
        {
          *(v11 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v11;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v11 - 1) = v17;
      }

      else
      {
        v11[1] = v16;
        v11 += 2;
      }
    }

    else
    {
      *v11++ = v15;
    }
  }

  while (v12 < v13);
  return v11;
}

void sub_27662DE2C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSCK::CollaboratorCursorArchive::~CollaboratorCursorArchive(*v3);
          MEMORY[0x277C999C0]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_27662DEB0(uint64_t result, TSCK::CollaboratorCursorArchive **a2, TSCK::CollaboratorCursorArchive **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27662DF60(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaboratorCursorArchive>(v18);
      result = sub_27662DF60(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_27662DF70(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::~ActivityAuthorCacheArchive_ShareParticipantIDCache(*v3);
          MEMORY[0x277C999C0]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_27662DFF4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSCK::ActivityAuthorCacheArchive_PublicIDCache::~ActivityAuthorCacheArchive_PublicIDCache(*v3);
          MEMORY[0x277C999C0]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_27662E078(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSCK::ActivityAuthorCacheArchive_IndexCache::~ActivityAuthorCacheArchive_IndexCache(*v3);
          MEMORY[0x277C999C0]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_27662E0FC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSCK::ActivityAuthorCacheArchive_FirstJoinCache::~ActivityAuthorCacheArchive_FirstJoinCache(*v3);
          MEMORY[0x277C999C0]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_27662E180(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSP::UUID::~UUID(*v3);
          MEMORY[0x277C999C0]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_27662E204(uint64_t result, TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache **a2, TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27662E2B4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache>(v18);
      result = sub_27662E2B4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_27662E2C4(uint64_t result, TSCK::ActivityAuthorCacheArchive_PublicIDCache **a2, TSCK::ActivityAuthorCacheArchive_PublicIDCache **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27662E374(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityAuthorCacheArchive_PublicIDCache>(v18);
      result = sub_27662E374(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_27662E384(uint64_t result, TSCK::ActivityAuthorCacheArchive_IndexCache **a2, TSCK::ActivityAuthorCacheArchive_IndexCache **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27662E434(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityAuthorCacheArchive_IndexCache>(v18);
      result = sub_27662E434(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_27662E444(uint64_t result, TSCK::ActivityAuthorCacheArchive_FirstJoinCache **a2, TSCK::ActivityAuthorCacheArchive_FirstJoinCache **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27662E4F4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      Join = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityAuthorCacheArchive_FirstJoinCache>(v18);
      result = sub_27662E4F4(v21, Join);
      *v20++ = Join;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_27662E504(uint64_t result, TSP::UUID **a2, TSP::UUID **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27662E5B4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C994B0](v18);
      result = sub_27662E5B4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_27662E5C4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::~ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts(*v3);
          MEMORY[0x277C999C0]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_27662E648(uint64_t result, TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts **a2, TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27662E6F8(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts>(v18);
      result = sub_27662E6F8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_27662E708(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          sub_2765F8538((v5 + 8));
          MEMORY[0x277C999C0](v5, 0x1081C404FE48876);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_27662E7A0(uint64_t result, TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter **a2, TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27662E850(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter>(v18);
      result = sub_27662E850(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_27662E860(uint64_t result, TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter **a2, TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27662E910(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter>(v18);
      result = sub_27662E910(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_27662E920(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::~ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType(*v3);
          MEMORY[0x277C999C0]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_27662E9A4(uint64_t result, TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType **a2, TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_27662EA54(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType>(v18);
      result = sub_27662EA54(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_27662EA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (atomic_load_explicit(scc_info_ActivityNavigationInfoArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  if (atomic_load_explicit(scc_info_CommentActivityNavigationInfoArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](&TSCK::_ActivityNavigationInfoArchive_default_instance_, a1, a2, 0, a3, &TSCK::_CommentActivityNavigationInfoArchive_default_instance_);
}

void *sub_27662EB04(uint64_t a1)
{
  v2 = sub_27662EB78(a1, 1);
  *v2 = &unk_28856F418;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryArray_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27662EB78(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637324(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCK::CollaborationCommandHistoryArray::~CollaborationCommandHistoryArray);
}

void *sub_27662EC04(uint64_t a1)
{
  v2 = sub_27662EC78(a1, 1);
  *v2 = &unk_28856F4C8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryArraySegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27662EC78(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637354(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCK::CollaborationCommandHistoryArraySegment::~CollaborationCommandHistoryArraySegment);
}

uint64_t sub_27662ED04(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637384(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCK::CollaborationCommandHistory_ItemList::~CollaborationCommandHistory_ItemList);
}

void *sub_27662ED90(uint64_t a1)
{
  v2 = sub_27662EE08(a1, 1);
  *v2 = &unk_28856F628;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistory_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_27662EE08(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2766373B4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCK::CollaborationCommandHistory::~CollaborationCommandHistory);
}

uint64_t sub_27662EE94(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2766373E4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCK::CollaborationCommandHistoryItem::~CollaborationCommandHistoryItem);
}

uint64_t sub_27662EF20(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637420(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCK::CollaborationCommandHistoryCoalescingGroup::~CollaborationCommandHistoryCoalescingGroup);
}

void *sub_27662EFAC(uint64_t a1)
{
  v2 = sub_27662F020(a1, 1);
  *v2 = &unk_28856F838;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryCoalescingGroupNode_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27662F020(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637450(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCK::CollaborationCommandHistoryCoalescingGroupNode::~CollaborationCommandHistoryCoalescingGroupNode);
}

void *sub_27662F0AC(uint64_t a1)
{
  v2 = sub_27662F120(a1, 1);
  *v2 = &unk_28856F8E8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}