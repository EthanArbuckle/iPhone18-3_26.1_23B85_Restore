uint64_t TSCK::RearrangeIdOperationArgs::RequiredFieldsByteSizeFallback(TSCK::RearrangeIdOperationArgs *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCK::IdOperationArgs::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
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
LABEL_9:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 9);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
  }

  return result;
}

uint64_t TSCK::RearrangeIdOperationArgs::ByteSizeLong(TSP::UUIDPath ***this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v10 = TSCK::RearrangeIdOperationArgs::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCK::IdOperationArgs::ByteSizeLong(this[3]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = 10;
    v5 = *(this + 8);
    v6 = *(this + 9);
    v7 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    if (v5 >= 0)
    {
      v4 = v7;
    }

    v8 = 10;
    v9 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    if (v6 >= 0)
    {
      v8 = v9;
    }

    v10 = v2 + v3 + v4 + v8 + 3;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v10, this + 20);
  }

  else
  {
    *(this + 5) = v10;
    return v10;
  }
}

uint64_t TSCK::RearrangeIdOperationArgs::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::RearrangeIdOperationArgs::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::RearrangeIdOperationArgs::MergeFrom(uint64_t this, const TSCK::RearrangeIdOperationArgs *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCK::IdOperationArgs>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCK::_IdOperationArgs_default_instance_;
      }

      this = TSCK::IdOperationArgs::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 36) = *(a2 + 9);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSCK::RearrangeIdOperationArgs::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::RearrangeIdOperationArgs::Clear(result);

    return TSCK::RearrangeIdOperationArgs::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::RearrangeIdOperationArgs::CopyFrom(uint64_t *this, const TSCK::RearrangeIdOperationArgs *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::RearrangeIdOperationArgs::Clear(this);

    return TSCK::RearrangeIdOperationArgs::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::RearrangeIdOperationArgs::IsInitialized(TSCK::RearrangeIdOperationArgs *this)
{
  if (~*(this + 4) & 7) == 0 && (v1 = *(this + 3), (*(v1 + 16)))
  {
    return TSP::UUIDPath::IsInitialized(*(v1 + 24));
  }

  else
  {
    return 0;
  }
}

__n128 TSCK::RearrangeIdOperationArgs::InternalSwap(TSCK::RearrangeIdOperationArgs *this, TSCK::RearrangeIdOperationArgs *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
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

uint64_t TSCK::RearrangeIdOperationArgs::GetMetadata(TSCK::RearrangeIdOperationArgs *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[28];
  v2 = off_2812F9CC0[29];
  return result;
}

TSCK::IdPlacementOperationArgs *TSCK::IdPlacementOperationArgs::IdPlacementOperationArgs(TSCK::IdPlacementOperationArgs *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856FE68;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_IdPlacementOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_28856FE68;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_IdPlacementOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCK::IdPlacementOperationArgs *TSCK::IdPlacementOperationArgs::IdPlacementOperationArgs(TSCK::IdPlacementOperationArgs *this, const TSCK::IdPlacementOperationArgs *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28856FE68;
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
  *(this + 4) = *(a2 + 4);
  return this;
}

void TSCK::IdPlacementOperationArgs::~IdPlacementOperationArgs(TSCK::IdPlacementOperationArgs *this)
{
  if (this != &TSCK::_IdPlacementOperationArgs_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCK::IdOperationArgs::~IdOperationArgs(v2);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::IdPlacementOperationArgs::~IdPlacementOperationArgs(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::IdPlacementOperationArgs::default_instance(TSCK::IdPlacementOperationArgs *this)
{
  if (atomic_load_explicit(scc_info_IdPlacementOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_IdPlacementOperationArgs_default_instance_;
}

uint64_t *TSCK::IdPlacementOperationArgs::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSCK::IdOperationArgs::Clear(this[3]);
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 32) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return this;
}

google::protobuf::internal *TSCK::IdPlacementOperationArgs::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v30) & 1) == 0)
  {
    while (1)
    {
      v8 = (v30 + 1);
      v9 = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v10 - 128));
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_45;
      }

      v8 = TagFallback;
      v9 = v25;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 != 24)
        {
          goto LABEL_13;
        }

        v6 |= 4u;
        v19 = (v8 + 1);
        LODWORD(v18) = *v8;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_29;
        }

        v20 = *v19;
        v18 = (v18 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v8 + 2);
LABEL_29:
          v30 = v19;
          *(a1 + 36) = v18;
          goto LABEL_36;
        }

        v28 = google::protobuf::internal::VarintParseSlow64(v8, v18);
        v30 = v28;
        *(a1 + 36) = v29;
        if (!v28)
        {
LABEL_45:
          v30 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v11 != 2)
        {
          if (v11 == 1 && v9 == 10)
          {
            *(a1 + 16) |= 1u;
            v21 = *(a1 + 24);
            if (!v21)
            {
              v22 = *(a1 + 8);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v21 = google::protobuf::Arena::CreateMaybeMessage<TSCK::IdOperationArgs>(v22);
              *(a1 + 24) = v21;
              v8 = v30;
            }

            v14 = sub_276635DC0(a3, v21, v8);
          }

          else
          {
LABEL_13:
            if (v9)
            {
              v13 = (v9 & 7) == 4;
            }

            else
            {
              v13 = 1;
            }

            if (v13)
            {
              *(a3 + 80) = v9 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_27662D0DC((a1 + 8));
            }

            v14 = google::protobuf::internal::UnknownFieldParse();
          }

          v30 = v14;
          if (!v14)
          {
            goto LABEL_45;
          }

          goto LABEL_36;
        }

        if (v9 != 16)
        {
          goto LABEL_13;
        }

        v6 |= 2u;
        v16 = (v8 + 1);
        LODWORD(v15) = *v8;
        if ((v15 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        v17 = *v16;
        v15 = (v15 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v8 + 2);
LABEL_24:
          v30 = v16;
          *(a1 + 32) = v15;
          goto LABEL_36;
        }

        v26 = google::protobuf::internal::VarintParseSlow64(v8, v15);
        v30 = v26;
        *(a1 + 32) = v27;
        if (!v26)
        {
          goto LABEL_45;
        }
      }

LABEL_36:
      v23 = *(a3 + 92);
      if (sub_27662CC00(a3, &v30))
      {
        goto LABEL_2;
      }
    }

    v8 = (v30 + 2);
LABEL_6:
    v30 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v30;
}

unsigned __int8 *TSCK::IdPlacementOperationArgs::_InternalSerialize(TSCK::IdPlacementOperationArgs *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v11 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v11 | 0x80;
          v14 = v11 >> 7;
          ++v9;
          v15 = v11 >> 14;
          v11 >>= 7;
        }

        while (v15);
        *(v9 - 1) = v14;
      }

      else
      {
        a2[2] = v11;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSCK::IdOperationArgs::_InternalSerialize(v7, v9, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_4;
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

  v16 = *(this + 8);
  *a2 = 16;
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
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      a2[2] = v17;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    a2[1] = v16;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 9);
  *a2 = 24;
  if (v6 > 0x7F)
  {
    a2[1] = v6 | 0x80;
    v10 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v12 = v10 >> 7;
        ++a2;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
  }

LABEL_34:
  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v20 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::IdPlacementOperationArgs::RequiredFieldsByteSizeFallback(TSCK::IdPlacementOperationArgs *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCK::IdOperationArgs::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
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
LABEL_9:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 9);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
  }

  return result;
}

uint64_t TSCK::IdPlacementOperationArgs::ByteSizeLong(TSP::UUIDPath ***this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v10 = TSCK::IdPlacementOperationArgs::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCK::IdOperationArgs::ByteSizeLong(this[3]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = 10;
    v5 = *(this + 8);
    v6 = *(this + 9);
    v7 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    if (v5 >= 0)
    {
      v4 = v7;
    }

    v8 = 10;
    v9 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    if (v6 >= 0)
    {
      v8 = v9;
    }

    v10 = v2 + v3 + v4 + v8 + 3;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v10, this + 20);
  }

  else
  {
    *(this + 5) = v10;
    return v10;
  }
}

uint64_t TSCK::IdPlacementOperationArgs::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::IdPlacementOperationArgs::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::IdPlacementOperationArgs::MergeFrom(uint64_t this, const TSCK::IdPlacementOperationArgs *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCK::IdOperationArgs>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCK::_IdOperationArgs_default_instance_;
      }

      this = TSCK::IdOperationArgs::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 36) = *(a2 + 9);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSCK::IdPlacementOperationArgs::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::IdPlacementOperationArgs::Clear(result);

    return TSCK::IdPlacementOperationArgs::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::IdPlacementOperationArgs::CopyFrom(uint64_t *this, const TSCK::IdPlacementOperationArgs *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::IdPlacementOperationArgs::Clear(this);

    return TSCK::IdPlacementOperationArgs::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::IdPlacementOperationArgs::IsInitialized(TSCK::IdPlacementOperationArgs *this)
{
  if (~*(this + 4) & 7) == 0 && (v1 = *(this + 3), (*(v1 + 16)))
  {
    return TSP::UUIDPath::IsInitialized(*(v1 + 24));
  }

  else
  {
    return 0;
  }
}

__n128 TSCK::IdPlacementOperationArgs::InternalSwap(TSCK::IdPlacementOperationArgs *this, TSCK::IdPlacementOperationArgs *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
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

uint64_t TSCK::IdPlacementOperationArgs::GetMetadata(TSCK::IdPlacementOperationArgs *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[30];
  v2 = off_2812F9CC0[31];
  return result;
}

TSK::CommandArchive *TSCK::ActivityCommitCommandArchive::clear_super(TSCK::ActivityCommitCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSCK::ActivityCommitCommandArchive::clear_activity(TSCK::ActivityCommitCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSCK::ActivityCommitCommandArchive::clear_author(TSCK::ActivityCommitCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSCK::ActivityCommitCommandArchive *TSCK::ActivityCommitCommandArchive::ActivityCommitCommandArchive(TSCK::ActivityCommitCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856FF18;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityCommitCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 1;
  return this;
}

TSCK::ActivityCommitCommandArchive *TSCK::ActivityCommitCommandArchive::ActivityCommitCommandArchive(TSCK::ActivityCommitCommandArchive *this, const TSCK::ActivityCommitCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28856FF18;
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
  *(this + 48) = *(a2 + 48);
  return this;
}

void TSCK::ActivityCommitCommandArchive::~ActivityCommitCommandArchive(TSCK::ActivityCommitCommandArchive *this)
{
  if (this != &TSCK::_ActivityCommitCommandArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277C98FA0]();
      MEMORY[0x277C999C0](v2, 0x10A1C40C24530F0);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C999C0]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::ActivityCommitCommandArchive::~ActivityCommitCommandArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::ActivityCommitCommandArchive::default_instance(TSCK::ActivityCommitCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ActivityCommitCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityCommitCommandArchive_default_instance_;
}

uint64_t *TSCK::ActivityCommitCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      this = TSK::CommandArchive::Clear(this[3]);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
LABEL_6:
          *(v1 + 48) = 1;
          goto LABEL_7;
        }

LABEL_5:
        this = TSP::Reference::Clear(*(v1 + 40));
        goto LABEL_6;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    this = TSP::Reference::Clear(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return this;
}

google::protobuf::internal *TSCK::ActivityCommitCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v31 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v31) & 1) == 0)
  {
    while (1)
    {
      v8 = (v31 + 1);
      v9 = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v10 - 128));
      v31 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_53;
      }

      v8 = TagFallback;
      v9 = v28;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v9 == 10)
          {
            *(a1 + 16) |= 1u;
            v19 = *(a1 + 24);
            if (!v19)
            {
              v20 = *(a1 + 8);
              if (v20)
              {
                v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
              }

              v21 = MEMORY[0x277C99420](v20);
              LODWORD(v19) = v21;
              *(a1 + 24) = v21;
              v8 = v31;
            }

            v22 = sub_276635B50(a3, v19, v8);
            goto LABEL_45;
          }
        }

        else if (v11 == 2 && v9 == 18)
        {
          *(a1 + 16) |= 2u;
          v13 = *(a1 + 32);
          if (!v13)
          {
            v14 = *(a1 + 8);
            if (v14)
            {
              v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = MEMORY[0x277C994F0](v14);
            LODWORD(v13) = v15;
            *(a1 + 32) = v15;
            goto LABEL_36;
          }

          goto LABEL_37;
        }

        goto LABEL_38;
      }

      if (v11 == 3)
      {
        if (v9 == 26)
        {
          *(a1 + 16) |= 4u;
          v13 = *(a1 + 40);
          if (!v13)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = MEMORY[0x277C994F0](v23);
            LODWORD(v13) = v24;
            *(a1 + 40) = v24;
LABEL_36:
            v8 = v31;
          }

LABEL_37:
          v22 = sub_2766358E0(a3, v13, v8);
LABEL_45:
          v31 = v22;
          if (!v22)
          {
            goto LABEL_53;
          }

          goto LABEL_46;
        }

LABEL_38:
        if (v9)
        {
          v25 = (v9 & 7) == 4;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          *(a3 + 80) = v9 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27662D0DC((a1 + 8));
        }

        v22 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_45;
      }

      if (v11 != 4 || v9 != 32)
      {
        goto LABEL_38;
      }

      v6 |= 8u;
      v17 = (v8 + 1);
      v16 = *v8;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = (v8 + 2);
LABEL_24:
        v31 = v17;
        *(a1 + 48) = v16 != 0;
        goto LABEL_46;
      }

      v29 = google::protobuf::internal::VarintParseSlow64(v8, v16);
      v31 = v29;
      *(a1 + 48) = v30 != 0;
      if (!v29)
      {
LABEL_53:
        v31 = 0;
        goto LABEL_2;
      }

LABEL_46:
      v26 = *(a3 + 92);
      if (sub_27662CC00(a3, &v31))
      {
        goto LABEL_2;
      }
    }

    v8 = (v31 + 2);
LABEL_6:
    v31 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v31;
}

unsigned __int8 *TSCK::ActivityCommitCommandArchive::_InternalSerialize(TSCK::ActivityCommitCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
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

  a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

LABEL_26:
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

  a2 = TSP::Reference::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(this + 48);
    *a2 = 32;
    a2[1] = v24;
    a2 += 2;
  }

LABEL_39:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v25 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityCommitCommandArchive::ByteSizeLong(TSCK::ActivityCommitCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = TSP::Reference::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v6 = TSP::Reference::ByteSizeLong(*(this + 5));
      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += (v2 >> 2) & 2;
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

uint64_t TSCK::ActivityCommitCommandArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityCommitCommandArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityCommitCommandArchive::MergeFrom(uint64_t this, const TSCK::ActivityCommitCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C99420](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v6, v8);
    }

    v9 = MEMORY[0x277D80A18];
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

        v10 = MEMORY[0x277C994F0](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 4))
      {
        v12 = *(a2 + 4);
      }

      else
      {
        v12 = v9;
      }

      this = TSP::Reference::MergeFrom(v10, v12);
      if ((v5 & 4) == 0)
      {
LABEL_15:
        if ((v5 & 8) == 0)
        {
LABEL_17:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_16:
        *(v3 + 48) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C994F0](v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 5))
    {
      v15 = *(a2 + 5);
    }

    else
    {
      v15 = v9;
    }

    this = TSP::Reference::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  return this;
}

uint64_t *TSCK::ActivityCommitCommandArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityCommitCommandArchive::Clear(result);

    return TSCK::ActivityCommitCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityCommitCommandArchive::CopyFrom(uint64_t *this, const TSCK::ActivityCommitCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityCommitCommandArchive::Clear(this);

    return TSCK::ActivityCommitCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityCommitCommandArchive::IsInitialized(TSCK::ActivityCommitCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 4));
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

    result = TSP::Reference::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCK::ActivityCommitCommandArchive::InternalSwap(TSCK::ActivityCommitCommandArchive *this, TSCK::ActivityCommitCommandArchive *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
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

uint64_t TSCK::ActivityCommitCommandArchive::GetMetadata(TSCK::ActivityCommitCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[32];
  v2 = off_2812F9CC0[33];
  return result;
}

TSK::CommandArchive *TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::clear_super(TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive *TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::ExecuteTestBetweenRollbackAndReapplyCommandArchive(TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28856FFC8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ExecuteTestBetweenRollbackAndReapplyCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28856FFC8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ExecuteTestBetweenRollbackAndReapplyCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive *TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::ExecuteTestBetweenRollbackAndReapplyCommandArchive(TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive *this, const TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28856FFC8;
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
  return this;
}

void TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::~ExecuteTestBetweenRollbackAndReapplyCommandArchive(TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive *this)
{
  if (this != &TSCK::_ExecuteTestBetweenRollbackAndReapplyCommandArchive_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C98FA0]();
    MEMORY[0x277C999C0](v2, 0x10A1C40C24530F0);
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::~ExecuteTestBetweenRollbackAndReapplyCommandArchive(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::default_instance(TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ExecuteTestBetweenRollbackAndReapplyCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ExecuteTestBetweenRollbackAndReapplyCommandArchive_default_instance_;
}

uint64_t *TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSK::CommandArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27662D2EC(v2);
  }

  return this;
}

google::protobuf::internal *TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  v5 = *(a3 + 92);
  while ((sub_27662CC00(a3, &v18) & 1) == 0)
  {
    v6 = (v18 + 1);
    v7 = *v18;
    if (*v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v8 - 128));
        v18 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v16;
        goto LABEL_7;
      }

      v6 = (v18 + 2);
    }

    v18 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C99420](v12);
        LODWORD(v11) = v13;
        *(a1 + 24) = v13;
        v6 = v18;
      }

      v10 = sub_276635B50(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v18;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27662D0DC((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v18 = v10;
    if (!v10)
    {
      return 0;
    }

    v14 = *(a3 + 92);
  }

  return v18;
}

unsigned __int8 *TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::_InternalSerialize(TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSK::CommandArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if (this[2])
  {
    v3 = TSK::CommandArchive::ByteSizeLong(this[3]);
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

uint64_t TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::MergeFrom(uint64_t this, const TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = MEMORY[0x277C99420](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80718];
    }

    return TSK::CommandArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::Clear(result);

    return TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::CopyFrom(uint64_t *this, const TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::Clear(this);

    return TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::IsInitialized(TSK::CommandArchive **this)
{
  if (this[2])
  {
    return TSK::CommandArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::InternalSwap(TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive *this, TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive *a2)
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

uint64_t TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::GetMetadata(TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[34];
  v2 = off_2812F9CC0[35];
  return result;
}

TSK::CommandArchive *TSCK::CreateLocalStorageSnapshotCommandArchive::clear_super(TSCK::CreateLocalStorageSnapshotCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCK::CreateLocalStorageSnapshotCommandArchive *TSCK::CreateLocalStorageSnapshotCommandArchive::CreateLocalStorageSnapshotCommandArchive(TSCK::CreateLocalStorageSnapshotCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570078;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CreateLocalStorageSnapshotCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  return this;
}

TSCK::CreateLocalStorageSnapshotCommandArchive *TSCK::CreateLocalStorageSnapshotCommandArchive::CreateLocalStorageSnapshotCommandArchive(TSCK::CreateLocalStorageSnapshotCommandArchive *this, const TSCK::CreateLocalStorageSnapshotCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570078;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(this + 1, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v5)
  {
    v7 = *(a2 + 3);
    if (*v4)
    {
      v9 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v5 = *(a2 + 4);
  }

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TSCK::CreateLocalStorageSnapshotCommandArchive::~CreateLocalStorageSnapshotCommandArchive(TSCK::CreateLocalStorageSnapshotCommandArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C999C0](v2, 0x1012C40EC159624);
  }

  if (this != &TSCK::_CreateLocalStorageSnapshotCommandArchive_default_instance_ && *(this + 4))
  {
    v3 = MEMORY[0x277C98FA0]();
    MEMORY[0x277C999C0](v3, 0x10A1C40C24530F0);
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::CreateLocalStorageSnapshotCommandArchive::~CreateLocalStorageSnapshotCommandArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::CreateLocalStorageSnapshotCommandArchive::default_instance(TSCK::CreateLocalStorageSnapshotCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_CreateLocalStorageSnapshotCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_CreateLocalStorageSnapshotCommandArchive_default_instance_;
}

uint64_t *TSCK::CreateLocalStorageSnapshotCommandArchive::Clear(uint64_t *this)
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
      this = TSK::CommandArchive::Clear(this[4]);
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_27662D2EC(v4);
  }

  return this;
}

google::protobuf::internal *TSCK::CreateLocalStorageSnapshotCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  v5 = *(a3 + 92);
  while ((sub_27662CC00(a3, &v21) & 1) == 0)
  {
    v6 = (v21 + 1);
    v7 = *v21;
    if ((*v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v21 + 2);
LABEL_6:
      v21 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v8 - 128));
    v21 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v18;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
        v12 = *(a1 + 8);
        if (v12)
        {
          v19 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        google::protobuf::internal::ArenaStringPtr::Mutable();
        v11 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 2u;
      v13 = *(a1 + 32);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C99420](v14);
        LODWORD(v13) = v15;
        *(a1 + 32) = v15;
        v6 = v21;
      }

      v11 = sub_276635B50(a3, v13, v6);
      goto LABEL_28;
    }

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
      return v21;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27662D0DC((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_28:
    v21 = v11;
    if (!v11)
    {
      return 0;
    }

    v16 = *(a3 + 92);
  }

  return v21;
}

unsigned __int8 *TSCK::CreateLocalStorageSnapshotCommandArchive::_InternalSerialize(TSCK::CreateLocalStorageSnapshotCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v4 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_2765FB858(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSCK::CreateLocalStorageSnapshotCommandArchive::ByteSizeLong(TSCK::CreateLocalStorageSnapshotCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 4));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_8:
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

uint64_t TSCK::CreateLocalStorageSnapshotCommandArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::CreateLocalStorageSnapshotCommandArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::CreateLocalStorageSnapshotCommandArchive::MergeFrom(uint64_t this, const TSCK::CreateLocalStorageSnapshotCommandArchive *a2)
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
      v6 = *(a2 + 3);
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 8);
      if (v7)
      {
        v11 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v8 = *(v3 + 32);
      if (!v8)
      {
        v9 = *(v3 + 8);
        if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        }

        v8 = MEMORY[0x277C99420](v9);
        *(v3 + 32) = v8;
      }

      if (*(a2 + 4))
      {
        v10 = *(a2 + 4);
      }

      else
      {
        v10 = MEMORY[0x277D80718];
      }

      return TSK::CommandArchive::MergeFrom(v8, v10);
    }
  }

  return this;
}

uint64_t *TSCK::CreateLocalStorageSnapshotCommandArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::CreateLocalStorageSnapshotCommandArchive::Clear(result);

    return TSCK::CreateLocalStorageSnapshotCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::CreateLocalStorageSnapshotCommandArchive::CopyFrom(uint64_t *this, const TSCK::CreateLocalStorageSnapshotCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::CreateLocalStorageSnapshotCommandArchive::Clear(this);

    return TSCK::CreateLocalStorageSnapshotCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::CreateLocalStorageSnapshotCommandArchive::IsInitialized(TSK::CommandArchive **this)
{
  if ((this[2] & 2) != 0)
  {
    return TSK::CommandArchive::IsInitialized(this[4]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSCK::CreateLocalStorageSnapshotCommandArchive::InternalSwap(TSCK::CreateLocalStorageSnapshotCommandArchive *this, TSCK::CreateLocalStorageSnapshotCommandArchive *a2)
{
  result = sub_2765F8BC4(this + 1, a2 + 1);
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

uint64_t TSCK::CreateLocalStorageSnapshotCommandArchive::GetMetadata(TSCK::CreateLocalStorageSnapshotCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[36];
  v2 = off_2812F9CC0[37];
  return result;
}

TSK::CommandArchive *TSCK::BlockDiffsAtCurrentRevisionCommand::clear_super(TSCK::BlockDiffsAtCurrentRevisionCommand *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::BlockDiffsAtCurrentRevisionCommand *TSCK::BlockDiffsAtCurrentRevisionCommand::BlockDiffsAtCurrentRevisionCommand(TSCK::BlockDiffsAtCurrentRevisionCommand *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570128;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_BlockDiffsAtCurrentRevisionCommand_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288570128;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_BlockDiffsAtCurrentRevisionCommand_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCK::BlockDiffsAtCurrentRevisionCommand *TSCK::BlockDiffsAtCurrentRevisionCommand::BlockDiffsAtCurrentRevisionCommand(TSCK::BlockDiffsAtCurrentRevisionCommand *this, const TSCK::BlockDiffsAtCurrentRevisionCommand *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570128;
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
  return this;
}

void TSCK::BlockDiffsAtCurrentRevisionCommand::~BlockDiffsAtCurrentRevisionCommand(TSCK::BlockDiffsAtCurrentRevisionCommand *this)
{
  if (this != &TSCK::_BlockDiffsAtCurrentRevisionCommand_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C98FA0]();
    MEMORY[0x277C999C0](v2, 0x10A1C40C24530F0);
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::BlockDiffsAtCurrentRevisionCommand::~BlockDiffsAtCurrentRevisionCommand(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::BlockDiffsAtCurrentRevisionCommand::default_instance(TSCK::BlockDiffsAtCurrentRevisionCommand *this)
{
  if (atomic_load_explicit(scc_info_BlockDiffsAtCurrentRevisionCommand_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_BlockDiffsAtCurrentRevisionCommand_default_instance_;
}

uint64_t *TSCK::BlockDiffsAtCurrentRevisionCommand::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSK::CommandArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27662D2EC(v2);
  }

  return this;
}

google::protobuf::internal *TSCK::BlockDiffsAtCurrentRevisionCommand::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  v5 = *(a3 + 92);
  while ((sub_27662CC00(a3, &v18) & 1) == 0)
  {
    v6 = (v18 + 1);
    v7 = *v18;
    if (*v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v8 - 128));
        v18 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v16;
        goto LABEL_7;
      }

      v6 = (v18 + 2);
    }

    v18 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C99420](v12);
        LODWORD(v11) = v13;
        *(a1 + 24) = v13;
        v6 = v18;
      }

      v10 = sub_276635B50(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v18;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27662D0DC((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v18 = v10;
    if (!v10)
    {
      return 0;
    }

    v14 = *(a3 + 92);
  }

  return v18;
}

unsigned __int8 *TSCK::BlockDiffsAtCurrentRevisionCommand::_InternalSerialize(TSCK::BlockDiffsAtCurrentRevisionCommand *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSK::CommandArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::BlockDiffsAtCurrentRevisionCommand::ByteSizeLong(TSK::CommandArchive **this)
{
  if (this[2])
  {
    v3 = TSK::CommandArchive::ByteSizeLong(this[3]);
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

uint64_t TSCK::BlockDiffsAtCurrentRevisionCommand::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::BlockDiffsAtCurrentRevisionCommand::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::BlockDiffsAtCurrentRevisionCommand::MergeFrom(uint64_t this, const TSCK::BlockDiffsAtCurrentRevisionCommand *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = MEMORY[0x277C99420](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80718];
    }

    return TSK::CommandArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSCK::BlockDiffsAtCurrentRevisionCommand::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::BlockDiffsAtCurrentRevisionCommand::Clear(result);

    return TSCK::BlockDiffsAtCurrentRevisionCommand::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::BlockDiffsAtCurrentRevisionCommand::CopyFrom(uint64_t *this, const TSCK::BlockDiffsAtCurrentRevisionCommand *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::BlockDiffsAtCurrentRevisionCommand::Clear(this);

    return TSCK::BlockDiffsAtCurrentRevisionCommand::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::BlockDiffsAtCurrentRevisionCommand::IsInitialized(TSK::CommandArchive **this)
{
  if (this[2])
  {
    return TSK::CommandArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSCK::BlockDiffsAtCurrentRevisionCommand::InternalSwap(TSCK::BlockDiffsAtCurrentRevisionCommand *this, TSCK::BlockDiffsAtCurrentRevisionCommand *a2)
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

uint64_t TSCK::BlockDiffsAtCurrentRevisionCommand::GetMetadata(TSCK::BlockDiffsAtCurrentRevisionCommand *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[38];
  v2 = off_2812F9CC0[39];
  return result;
}

TSK::OperationTransformer *TSCK::TransformerEntry::clear_transformer(TSCK::TransformerEntry *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::OperationTransformer::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::TransformerEntry *TSCK::TransformerEntry::TransformerEntry(TSCK::TransformerEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885701D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TransformerEntry_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2885701D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TransformerEntry_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSCK::TransformerEntry *TSCK::TransformerEntry::TransformerEntry(TSCK::TransformerEntry *this, const TSCK::TransformerEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885701D8;
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
  *(this + 2) = *(a2 + 2);
  return this;
}

void TSCK::TransformerEntry::~TransformerEntry(TSCK::TransformerEntry *this)
{
  if (this != &TSCK::_TransformerEntry_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C98FF0]();
    MEMORY[0x277C999C0](v2, 0x10A1C401A12C281);
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::TransformerEntry::~TransformerEntry(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::TransformerEntry::default_instance(TSCK::TransformerEntry *this)
{
  if (atomic_load_explicit(scc_info_TransformerEntry_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_TransformerEntry_default_instance_;
}

uint64_t *TSCK::TransformerEntry::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSK::OperationTransformer::Clear(this[3]);
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return this;
}

google::protobuf::internal *TSCK::TransformerEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_41;
      }

      v8 = TagFallback;
      v9 = v23;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 != 26)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 1u;
        v15 = *(a1 + 24);
        if (!v15)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x277C99430](v16);
          LODWORD(v15) = v17;
          *(a1 + 24) = v17;
          v8 = v26;
        }

        v14 = sub_276635E90(a3, v15, v8);
LABEL_28:
        v26 = v14;
        if (!v14)
        {
          goto LABEL_41;
        }

        goto LABEL_34;
      }

      if (v11 == 2)
      {
        if (v9 == 17)
        {
          v6 |= 4u;
          *(a1 + 40) = *v8;
          v26 = (v8 + 8);
          goto LABEL_34;
        }

LABEL_13:
        if (v9)
        {
          v13 = (v9 & 7) == 4;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          *(a3 + 80) = v9 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27662D0DC((a1 + 8));
        }

        v14 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_28;
      }

      if (v11 != 1 || v9 != 8)
      {
        goto LABEL_13;
      }

      v6 |= 2u;
      v19 = (v8 + 1);
      v18 = *v8;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }

      v20 = *v19;
      v18 = (v20 << 7) + v18 - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = (v8 + 2);
LABEL_33:
        v26 = v19;
        *(a1 + 32) = v18;
        goto LABEL_34;
      }

      v24 = google::protobuf::internal::VarintParseSlow64(v8, v18);
      v26 = v24;
      *(a1 + 32) = v25;
      if (!v24)
      {
LABEL_41:
        v26 = 0;
        goto LABEL_2;
      }

LABEL_34:
      v21 = *(a3 + 92);
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

unsigned __int8 *TSCK::TransformerEntry::_InternalSerialize(TSCK::TransformerEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 4);
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
    if ((v5 & 1) == 0)
    {
      goto LABEL_29;
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

  v10 = *(this + 5);
  *a2 = 17;
  *(a2 + 1) = v10;
  a2 += 9;
  if (v5)
  {
LABEL_19:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(this + 3);
    *a2 = 26;
    v12 = *(v11 + 5);
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v14 = v12 >> 7;
      if (v12 >> 14)
      {
        v13 = a2 + 3;
        do
        {
          *(v13 - 1) = v14 | 0x80;
          v15 = v14 >> 7;
          ++v13;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
        *(v13 - 1) = v15;
      }

      else
      {
        a2[2] = v14;
        v13 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v12;
      v13 = a2 + 2;
    }

    a2 = TSK::OperationTransformer::_InternalSerialize(v11, v13, a3);
  }

LABEL_29:
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::TransformerEntry::RequiredFieldsByteSizeFallback(TSCK::TransformerEntry *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSK::OperationTransformer::ByteSizeLong(*(this + 3));
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
    v3 += ((9 * (__clz(*(this + 4) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    return v3 + 9;
  }

  else
  {
    return v3;
  }
}

unint64_t TSCK::TransformerEntry::ByteSizeLong(TSK::OperationTransformer **this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v3 = TSCK::TransformerEntry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSK::OperationTransformer::ByteSizeLong(this[3]);
    v3 = v2 + ((9 * (__clz(this[4] | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 11;
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

uint64_t TSCK::TransformerEntry::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::TransformerEntry::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::TransformerEntry::MergeFrom(uint64_t this, const TSCK::TransformerEntry *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C99430](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80748];
      }

      this = TSK::OperationTransformer::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 40) = *(a2 + 5);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 4);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSCK::TransformerEntry::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::TransformerEntry::Clear(result);

    return TSCK::TransformerEntry::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::TransformerEntry::CopyFrom(uint64_t *this, const TSCK::TransformerEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::TransformerEntry::Clear(this);

    return TSCK::TransformerEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::TransformerEntry::IsInitialized(TSCK::TransformerEntry *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x2821EA5E0](*(this + 3));
  }
}

__n128 TSCK::TransformerEntry::InternalSwap(TSCK::TransformerEntry *this, TSCK::TransformerEntry *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
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

uint64_t TSCK::TransformerEntry::GetMetadata(TSCK::TransformerEntry *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[40];
  v2 = off_2812F9CC0[41];
  return result;
}

TSP::Reference *TSCK::CollaborationAppliedCommandDocumentRevisionMapping::clear_command(TSCK::CollaborationAppliedCommandDocumentRevisionMapping *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUID *TSCK::CollaborationAppliedCommandDocumentRevisionMapping::clear_document_revision_identifier(TSCK::CollaborationAppliedCommandDocumentRevisionMapping *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t TSCK::CollaborationAppliedCommandDocumentRevisionMapping::clear_remaining_command_operations(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSK::Operation::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSP::Date *TSCK::CollaborationAppliedCommandDocumentRevisionMapping::clear_timestamp(TSCK::CollaborationAppliedCommandDocumentRevisionMapping *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSCK::CollaborationAppliedCommandDocumentRevisionMapping *TSCK::CollaborationAppliedCommandDocumentRevisionMapping::CollaborationAppliedCommandDocumentRevisionMapping(TSCK::CollaborationAppliedCommandDocumentRevisionMapping *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570288;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CollaborationAppliedCommandDocumentRevisionMapping_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 18) = 0;
  *(this + 8) = 0;
  return this;
}

TSCK::CollaborationAppliedCommandDocumentRevisionMapping *TSCK::CollaborationAppliedCommandDocumentRevisionMapping::CollaborationAppliedCommandDocumentRevisionMapping(TSCK::CollaborationAppliedCommandDocumentRevisionMapping *this, const TSCK::CollaborationAppliedCommandDocumentRevisionMapping *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570288;
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
    sub_27662D56C(this + 24, v8, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v9 = *(this + 8) + v5;
    *(this + 8) = v9;
    v10 = *(this + 5);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_27662D2A0(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v12 = *(a2 + 4);
  if (v12)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v12 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v12 & 4) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  *(this + 18) = *(a2 + 18);
  return this;
}

void sub_276607118(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v2, 0x1081C404FE48876);
  sub_27662D4E8((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCK::CollaborationAppliedCommandDocumentRevisionMapping::~CollaborationAppliedCommandDocumentRevisionMapping(TSCK::CollaborationAppliedCommandDocumentRevisionMapping *this)
{
  if (this != &TSCK::_CollaborationAppliedCommandDocumentRevisionMapping_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C999C0]();
    }

    v3 = *(this + 7);
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x277C999C0]();
    }

    v4 = *(this + 8);
    if (v4)
    {
      TSP::Date::~Date(v4);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
  sub_27662D4E8(this + 3);
}

{
  TSCK::CollaborationAppliedCommandDocumentRevisionMapping::~CollaborationAppliedCommandDocumentRevisionMapping(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::CollaborationAppliedCommandDocumentRevisionMapping::default_instance(TSCK::CollaborationAppliedCommandDocumentRevisionMapping *this)
{
  if (atomic_load_explicit(scc_info_CollaborationAppliedCommandDocumentRevisionMapping_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_CollaborationAppliedCommandDocumentRevisionMapping_default_instance_;
}

uint64_t *TSCK::CollaborationAppliedCommandDocumentRevisionMapping::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSK::Operation::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      this = TSP::Reference::Clear(*(v1 + 48));
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    this = TSP::UUID::Clear(*(v1 + 56));
    if ((v5 & 4) != 0)
    {
LABEL_9:
      this = TSP::Date::Clear(*(v1 + 64));
    }
  }

LABEL_10:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 64) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_27662D2EC(v6);
  }

  return this;
}

google::protobuf::internal *TSCK::CollaborationAppliedCommandDocumentRevisionMapping::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v42 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v42) & 1) == 0)
  {
    while (1)
    {
      v8 = (v42 + 1);
      v9 = *v42;
      if ((*v42 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v42, (v10 - 128));
      v42 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_68;
      }

      v8 = TagFallback;
      v9 = v39;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v9 != 10)
          {
            goto LABEL_53;
          }

          *(a1 + 16) |= 1u;
          v33 = *(a1 + 48);
          if (!v33)
          {
            v34 = *(a1 + 8);
            if (v34)
            {
              v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
            }

            v35 = MEMORY[0x277C994F0](v34);
            LODWORD(v33) = v35;
            *(a1 + 48) = v35;
            v8 = v42;
          }

          v15 = sub_2766358E0(a3, v33, v8);
        }

        else
        {
          if (v11 != 2 || v9 != 18)
          {
            goto LABEL_53;
          }

          *(a1 + 16) |= 2u;
          v17 = *(a1 + 56);
          if (!v17)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = MEMORY[0x277C994B0](v18);
            LODWORD(v17) = v19;
            *(a1 + 56) = v19;
            v8 = v42;
          }

          v15 = sub_2766359B0(a3, v17, v8);
        }

LABEL_60:
        v42 = v15;
        if (!v15)
        {
          goto LABEL_68;
        }

        goto LABEL_61;
      }

      if (v11 != 3)
      {
        if (v11 != 4)
        {
          if (v11 == 5 && v9 == 42)
          {
            *(a1 + 16) |= 4u;
            v12 = *(a1 + 64);
            if (!v12)
            {
              v13 = *(a1 + 8);
              if (v13)
              {
                v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
              }

              v14 = MEMORY[0x277C994A0](v13);
              LODWORD(v12) = v14;
              *(a1 + 64) = v14;
              v8 = v42;
            }

            v15 = sub_276636030(a3, v12, v8);
            goto LABEL_60;
          }

LABEL_53:
          if (v9)
          {
            v36 = (v9 & 7) == 4;
          }

          else
          {
            v36 = 1;
          }

          if (v36)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27662D0DC((a1 + 8));
          }

          v15 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_60;
        }

        if (v9 != 34)
        {
          goto LABEL_53;
        }

        v23 = v8 - 1;
        while (2)
        {
          v24 = (v23 + 1);
          v42 = (v23 + 1);
          v25 = *(a1 + 40);
          if (!v25)
          {
            v26 = *(a1 + 36);
            goto LABEL_37;
          }

          v32 = *(a1 + 32);
          v27 = *v25;
          if (v32 >= *v25)
          {
            if (v27 == *(a1 + 36))
            {
LABEL_37:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v25 = *(a1 + 40);
              v27 = *v25;
            }

            *v25 = v27 + 1;
            v28 = MEMORY[0x277C99450](*(a1 + 24));
            LODWORD(v29) = v28;
            v30 = *(a1 + 32);
            v31 = *(a1 + 40) + 8 * v30;
            *(a1 + 32) = v30 + 1;
            *(v31 + 8) = v28;
            v24 = v42;
          }

          else
          {
            *(a1 + 32) = v32 + 1;
            v29 = *&v25[2 * v32 + 2];
          }

          v23 = sub_276635F60(a3, v29, v24);
          v42 = v23;
          if (!v23)
          {
            goto LABEL_68;
          }

          if (*a3 <= v23 || *v23 != 34)
          {
            goto LABEL_61;
          }

          continue;
        }
      }

      if (v9 != 24)
      {
        goto LABEL_53;
      }

      v6 |= 8u;
      v21 = (v8 + 1);
      LODWORD(v20) = *v8;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_32;
      }

      v22 = *v21;
      v20 = (v20 + (v22 << 7) - 128);
      if ((v22 & 0x80000000) == 0)
      {
        v21 = (v8 + 2);
LABEL_32:
        v42 = v21;
        *(a1 + 72) = v20;
        goto LABEL_61;
      }

      v40 = google::protobuf::internal::VarintParseSlow64(v8, v20);
      v42 = v40;
      *(a1 + 72) = v41;
      if (!v40)
      {
LABEL_68:
        v42 = 0;
        goto LABEL_2;
      }

LABEL_61:
      v37 = *(a3 + 92);
      if (sub_27662CC00(a3, &v42))
      {
        goto LABEL_2;
      }
    }

    v8 = (v42 + 2);
LABEL_6:
    v42 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v42;
}

unsigned __int8 *TSCK::CollaborationAppliedCommandDocumentRevisionMapping::_InternalSerialize(TSCK::CollaborationAppliedCommandDocumentRevisionMapping *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_34;
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
  if ((v5 & 8) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 18);
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
      }

      else
      {
        a2[2] = v19;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v18;
      a2 += 2;
    }
  }

LABEL_34:
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

      a2 = TSK::Operation::_InternalSerialize(v24, v26, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(this + 8);
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

    a2 = TSP::Date::_InternalSerialize(v30, v32, a3);
  }

  v36 = *(this + 1);
  if ((v36 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v36 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::CollaborationAppliedCommandDocumentRevisionMapping::ByteSizeLong(TSCK::CollaborationAppliedCommandDocumentRevisionMapping *this)
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
      v7 = TSK::Operation::ByteSizeLong(v6);
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
  if ((v8 & 0xF) != 0)
  {
    if (v8)
    {
      v9 = TSP::Reference::ByteSizeLong(*(this + 6));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v10 = TSP::UUID::ByteSizeLong(*(this + 7));
    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_22;
      }

LABEL_18:
      v12 = *(this + 18);
      if (v12 < 0)
      {
        v13 = 11;
      }

      else
      {
        v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v13;
      goto LABEL_22;
    }

LABEL_17:
    v11 = TSP::Date::ByteSizeLong(*(this + 8));
    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

LABEL_22:
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

uint64_t TSCK::CollaborationAppliedCommandDocumentRevisionMapping::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::CollaborationAppliedCommandDocumentRevisionMapping::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::CollaborationAppliedCommandDocumentRevisionMapping::MergeFrom(uint64_t this, const TSCK::CollaborationAppliedCommandDocumentRevisionMapping *a2)
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
    this = sub_27662D56C(v3 + 24, v8, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v9 = *(v3 + 32) + v5;
    *(v3 + 32) = v9;
    v10 = *(v3 + 40);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 4);
  if ((v11 & 0xF) != 0)
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

        v12 = MEMORY[0x277C994F0](v13);
        *(v3 + 48) = v12;
      }

      if (*(a2 + 6))
      {
        v14 = *(a2 + 6);
      }

      else
      {
        v14 = MEMORY[0x277D80A18];
      }

      this = TSP::Reference::MergeFrom(v12, v14);
      if ((v11 & 2) == 0)
      {
LABEL_9:
        if ((v11 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_30;
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

      v15 = MEMORY[0x277C994B0](v16);
      *(v3 + 56) = v15;
    }

    if (*(a2 + 7))
    {
      v17 = *(a2 + 7);
    }

    else
    {
      v17 = MEMORY[0x277D809E0];
    }

    this = TSP::UUID::MergeFrom(v15, v17);
    if ((v11 & 4) == 0)
    {
LABEL_10:
      if ((v11 & 8) == 0)
      {
LABEL_12:
        *(v3 + 16) |= v11;
        return this;
      }

LABEL_11:
      *(v3 + 72) = *(a2 + 18);
      goto LABEL_12;
    }

LABEL_30:
    *(v3 + 16) |= 4u;
    v18 = *(v3 + 64);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = MEMORY[0x277C994A0](v19);
      *(v3 + 64) = v18;
    }

    if (*(a2 + 8))
    {
      v20 = *(a2 + 8);
    }

    else
    {
      v20 = MEMORY[0x277D809C0];
    }

    this = TSP::Date::MergeFrom(v18, v20);
    if ((v11 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return this;
}

uint64_t *TSCK::CollaborationAppliedCommandDocumentRevisionMapping::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::CollaborationAppliedCommandDocumentRevisionMapping::Clear(result);

    return TSCK::CollaborationAppliedCommandDocumentRevisionMapping::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::CollaborationAppliedCommandDocumentRevisionMapping::CopyFrom(uint64_t *this, const TSCK::CollaborationAppliedCommandDocumentRevisionMapping *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::CollaborationAppliedCommandDocumentRevisionMapping::Clear(this);

    return TSCK::CollaborationAppliedCommandDocumentRevisionMapping::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::CollaborationAppliedCommandDocumentRevisionMapping::IsInitialized(TSCK::CollaborationAppliedCommandDocumentRevisionMapping *this)
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
    result = TSP::UUID::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = TSP::Date::IsInitialized(*(this + 8));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCK::CollaborationAppliedCommandDocumentRevisionMapping::InternalSwap(__n128 *this, __n128 *a2)
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
  v10 = this[4].n128_u64[0];
  this[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[4].n128_u64[0] = v10;
  LODWORD(v10) = this[4].n128_u32[2];
  this[4].n128_u32[2] = a2[4].n128_u32[2];
  a2[4].n128_u32[2] = v10;
  return result;
}

uint64_t TSCK::CollaborationAppliedCommandDocumentRevisionMapping::GetMetadata(TSCK::CollaborationAppliedCommandDocumentRevisionMapping *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[42];
  v2 = off_2812F9CC0[43];
  return result;
}

TSP::UUID *TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::clear_command_identifier(TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::clear_acknowledgement_observers(uint64_t this)
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

TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry *TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::CollaborationDocumentSessionState_AcknowledgementObserverEntry(TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570338;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CollaborationDocumentSessionState_AcknowledgementObserverEntry_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry *TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::CollaborationDocumentSessionState_AcknowledgementObserverEntry(TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry *this, const TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570338;
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

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_27662D2A0(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_276608224(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v2, 0x1081C40825B58B5);
  sub_27662D3A4((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::~CollaborationDocumentSessionState_AcknowledgementObserverEntry(TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry *this)
{
  if (this != &TSCK::_CollaborationDocumentSessionState_AcknowledgementObserverEntry_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
  sub_27662D3A4(this + 3);
}

{
  TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::~CollaborationDocumentSessionState_AcknowledgementObserverEntry(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::default_instance(TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry *this)
{
  if (atomic_load_explicit(scc_info_CollaborationDocumentSessionState_AcknowledgementObserverEntry_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_CollaborationDocumentSessionState_AcknowledgementObserverEntry_default_instance_;
}

uint64_t *TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::Clear(uint64_t *this)
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

  if (*(v1 + 16))
  {
    this = TSP::UUID::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_27662D2EC(v5);
  }

  return this;
}

google::protobuf::internal *TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v5 = *(a3 + 92);
  while (1)
  {
    if (sub_27662CC00(a3, &v29))
    {
      return v29;
    }

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
      v6 = (v29 + 2);
LABEL_6:
      v29 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v8 - 128));
    v29 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v27;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v22 = *(a1 + 48);
    if (!v22)
    {
      v23 = *(a1 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x277C994B0](v23);
      LODWORD(v22) = v24;
      *(a1 + 48) = v24;
      v6 = v29;
    }

    v11 = sub_2766359B0(a3, v22, v6);
LABEL_38:
    v29 = v11;
    if (!v11)
    {
      return 0;
    }

LABEL_39:
    v25 = *(a3 + 92);
  }

  if (v7 == 18)
  {
    v12 = v6 - 1;
    while (1)
    {
      v13 = (v12 + 1);
      v29 = (v12 + 1);
      v14 = *(a1 + 40);
      if (!v14)
      {
        break;
      }

      v21 = *(a1 + 32);
      v16 = *v14;
      if (v21 < *v14)
      {
        *(a1 + 32) = v21 + 1;
        v18 = *&v14[2 * v21 + 2];
        goto LABEL_27;
      }

      if (v16 == *(a1 + 36))
      {
        goto LABEL_23;
      }

LABEL_24:
      *v14 = v16 + 1;
      v17 = MEMORY[0x277C994F0](*(a1 + 24));
      LODWORD(v18) = v17;
      v19 = *(a1 + 32);
      v20 = *(a1 + 40) + 8 * v19;
      *(a1 + 32) = v19 + 1;
      *(v20 + 8) = v17;
      v13 = v29;
LABEL_27:
      v12 = sub_2766358E0(a3, v18, v13);
      v29 = v12;
      if (!v12)
      {
        return 0;
      }

      if (*a3 <= v12 || *v12 != 18)
      {
        goto LABEL_39;
      }
    }

    v15 = *(a1 + 36);
LABEL_23:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
    v14 = *(a1 + 40);
    v16 = *v14;
    goto LABEL_24;
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

  if (!v10)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27662D0DC((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_38;
  }

  *(a3 + 80) = v7 - 1;
  return v29;
}

unsigned __int8 *TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::_InternalSerialize(TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::ByteSizeLong(TSP::UUID **this)
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
      v10 = TSP::Reference::ByteSizeLong(v9);
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

uint64_t TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::MergeFrom(uint64_t this, const TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry *a2)
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

  if (*(a2 + 16))
  {
    v11 = *(a2 + 6);
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
      v11 = *(a2 + 6);
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = MEMORY[0x277D809E0];
    }

    return TSP::UUID::MergeFrom(v12, v14);
  }

  return this;
}

uint64_t *TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::Clear(result);

    return TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::CopyFrom(uint64_t *this, const TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::Clear(this);

    return TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::IsInitialized(TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry *this)
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

__n128 TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2765F8BC4(&this->n128_i64[1], &a2->n128_i64[1]);
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

uint64_t TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::GetMetadata(TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[44];
  v2 = off_2812F9CC0[45];
  return result;
}

uint64_t TSCK::CollaborationDocumentSessionState::clear_rsvp_command_queue_items(uint64_t this)
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

uint64_t TSCK::CollaborationDocumentSessionState::clear_collaborator_cursor_transformer_entries(uint64_t this)
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

uint64_t TSCK::CollaborationDocumentSessionState::clear_acknowledged_commands_pending_resume_process_diffs(uint64_t this)
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

uint64_t TSCK::CollaborationDocumentSessionState::clear_unprocessed_commands_pending_resume_process_diffs(uint64_t this)
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

uint64_t TSCK::CollaborationDocumentSessionState::clear_transformer_from_unprocessed_command_operations_entries(uint64_t this)
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

TSP::UUID *TSCK::CollaborationDocumentSessionState::clear_mailbox_request_document_revision_identifier(TSCK::CollaborationDocumentSessionState *this)
{
  result = *(this + 30);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUID *TSCK::CollaborationDocumentSessionState::clear_last_command_send_marker_identifier(TSCK::CollaborationDocumentSessionState *this)
{
  result = *(this + 31);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t TSCK::CollaborationDocumentSessionState::clear_skipped_acknowledged_commands_pending_resume_process_diffs(uint64_t this)
{
  v1 = *(this + 200);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 208) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 200) = 0;
  }

  return this;
}

TSP::UUID *TSCK::CollaborationDocumentSessionState::clear_last_too_old_command_identifier(TSCK::CollaborationDocumentSessionState *this)
{
  result = *(this + 32);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSCK::CollaborationDocumentSessionState::clear_unprocessed_operation_entries_pending_resume_process_diffs(TSCK::CollaborationDocumentSessionState *this)
{
  result = *(this + 33);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Reference *TSCK::CollaborationDocumentSessionState::clear_send_pending_command_queue(TSCK::CollaborationDocumentSessionState *this)
{
  result = *(this + 34);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::UUID *TSCK::CollaborationDocumentSessionState::clear_last_enqueued_document_load_command_identifier(TSCK::CollaborationDocumentSessionState *this)
{
  result = *(this + 35);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSCK::CollaborationDocumentSessionState *TSCK::CollaborationDocumentSessionState::CollaborationDocumentSessionState(TSCK::CollaborationDocumentSessionState *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885703E8;
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
  *(this + 12) = a2;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = a2;
  *(this + 27) = a2;
  *(this + 18) = a2;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = a2;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = a2;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  if (atomic_load_explicit(scc_info_CollaborationDocumentSessionState_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 15) = 0u;
  return this;
}

void sub_276609070(_Unwind_Exception *a1)
{
  sub_27662D74C(v8);
  sub_27662D3A4(v9);
  sub_27662D3A4(v7);
  sub_27662D6C8(v6);
  sub_27662D3A4(v5);
  sub_27662D3A4(v4);
  sub_27662D3A4(v3);
  sub_27662D3A4(v2);
  sub_27662D62C(v1);
  _Unwind_Resume(a1);
}

TSCK::CollaborationDocumentSessionState *TSCK::CollaborationDocumentSessionState::CollaborationDocumentSessionState(TSCK::CollaborationDocumentSessionState *this, const TSCK::CollaborationDocumentSessionState *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885703E8;
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
    sub_27662D7D0(this + 1, v8, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_27662D428(this + 48, v14, (v12 + 8), v11, **(this + 8) - *(this + 14));
    v15 = *(this + 14) + v11;
    *(this + 14) = v15;
    v16 = *(this + 8);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v17 = *(a2 + 20);
  if (v17)
  {
    v18 = *(a2 + 11);
    v19 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    sub_27662D428(this + 72, v19, (v18 + 8), v17, **(this + 11) - *(this + 20));
    v20 = *(this + 20) + v17;
    *(this + 20) = v20;
    v21 = *(this + 11);
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v22 = *(a2 + 26);
  if (v22)
  {
    v23 = *(a2 + 14);
    v24 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96));
    sub_27662D428(this + 96, v24, (v23 + 8), v22, **(this + 14) - *(this + 26));
    v25 = *(this + 26) + v22;
    *(this + 26) = v25;
    v26 = *(this + 14);
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  v27 = *(a2 + 32);
  if (v27)
  {
    v28 = *(a2 + 17);
    v29 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 120));
    sub_27662D428(this + 120, v29, (v28 + 8), v27, **(this + 17) - *(this + 32));
    v30 = *(this + 32) + v27;
    *(this + 32) = v30;
    v31 = *(this + 17);
    if (*v31 < v30)
    {
      *v31 = v30;
    }
  }

  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  v32 = *(a2 + 38);
  if (v32)
  {
    v33 = *(a2 + 20);
    v34 = *(a2 + 38);
    v35 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 144));
    sub_27662D87C(this + 144, v35, (v33 + 8), v32, **(this + 20) - *(this + 38));
    v36 = *(this + 38) + v32;
    *(this + 38) = v36;
    v37 = *(this + 20);
    if (*v37 < v36)
    {
      *v37 = v36;
    }
  }

  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  v38 = *(a2 + 44);
  if (v38)
  {
    v39 = *(a2 + 23);
    v40 = *(a2 + 44);
    v41 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 168));
    sub_27662D428(this + 168, v41, (v39 + 8), v38, **(this + 23) - *(this + 44));
    v42 = *(this + 44) + v38;
    *(this + 44) = v42;
    v43 = *(this + 23);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  v44 = *(a2 + 50);
  if (v44)
  {
    v45 = *(a2 + 26);
    v46 = *(a2 + 50);
    v47 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 192));
    sub_27662D428(this + 192, v47, (v45 + 8), v44, **(this + 26) - *(this + 50));
    v48 = *(this + 50) + v44;
    *(this + 50) = v48;
    v49 = *(this + 26);
    if (*v49 < v48)
    {
      *v49 = v48;
    }
  }

  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  v50 = *(a2 + 56);
  if (v50)
  {
    v51 = *(a2 + 29);
    v52 = *(a2 + 56);
    v53 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 216));
    sub_27662D93C(this + 216, v53, (v51 + 8), v50, **(this + 29) - *(this + 56));
    v54 = *(this + 56) + v50;
    *(this + 56) = v54;
    v55 = *(this + 29);
    if (*v55 < v54)
    {
      *v55 = v54;
    }
  }

  v56 = *(a2 + 1);
  if (v56)
  {
    sub_27662D2A0(v4, (v56 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v57 = *(a2 + 4);
  if (v57)
  {
    operator new();
  }

  *(this + 30) = 0;
  if ((v57 & 2) != 0)
  {
    operator new();
  }

  *(this + 31) = 0;
  if ((v57 & 4) != 0)
  {
    operator new();
  }

  *(this + 32) = 0;
  if ((v57 & 8) != 0)
  {
    operator new();
  }

  *(this + 33) = 0;
  if ((v57 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 34) = 0;
  if ((v57 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 35) = 0;
  v58 = *(a2 + 19);
  *(this + 18) = *(a2 + 18);
  *(this + 19) = v58;
  return this;
}

void sub_276609694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12)
{
  MEMORY[0x277C999C0](v13, 0x1081C40825B58B5);
  sub_27662D74C(v17);
  sub_27662D3A4(v18);
  sub_27662D3A4(v16);
  sub_27662D6C8(v15);
  sub_27662D3A4(v14);
  sub_27662D3A4(a10);
  sub_27662D3A4(a11);
  sub_27662D3A4(a12);
  sub_27662D62C((v12 + 24));
  _Unwind_Resume(a1);
}

void TSCK::CollaborationDocumentSessionState::~CollaborationDocumentSessionState(TSCK::CollaborationDocumentSessionState *this)
{
  sub_276609830(this);
  sub_2765F8538(this + 1);
  sub_27662D74C(this + 27);
  sub_27662D3A4(this + 24);
  sub_27662D3A4(this + 21);
  sub_27662D6C8(this + 18);
  sub_27662D3A4(this + 15);
  sub_27662D3A4(this + 12);
  sub_27662D3A4(this + 9);
  sub_27662D3A4(this + 6);
  sub_27662D62C(this + 3);
}

{
  TSCK::CollaborationDocumentSessionState::~CollaborationDocumentSessionState(this);

  JUMPOUT(0x277C999C0);
}

void *sub_276609830(void *result)
{
  if (result != &TSCK::_CollaborationDocumentSessionState_default_instance_)
  {
    v1 = result;
    v2 = result[30];
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C999C0]();
    }

    v3 = v1[31];
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x277C999C0]();
    }

    v4 = v1[32];
    if (v4)
    {
      TSP::UUID::~UUID(v4);
      MEMORY[0x277C999C0]();
    }

    v5 = v1[33];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277C999C0]();
    }

    v6 = v1[34];
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277C999C0]();
    }

    result = v1[35];
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x277C999C0);
    }
  }

  return result;
}

void *TSCK::CollaborationDocumentSessionState::default_instance(TSCK::CollaborationDocumentSessionState *this)
{
  if (atomic_load_explicit(scc_info_CollaborationDocumentSessionState_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_CollaborationDocumentSessionState_default_instance_;
}

uint64_t *TSCK::CollaborationDocumentSessionState::Clear(TSCK::CollaborationDocumentSessionState *this)
{
  result = sub_27662D254(this + 24);
  v3 = *(this + 14);
  if (v3 >= 1)
  {
    v4 = (*(this + 8) + 8);
    do
    {
      v5 = *v4++;
      result = TSP::Reference::Clear(v5);
      --v3;
    }

    while (v3);
    *(this + 14) = 0;
  }

  v6 = *(this + 20);
  if (v6 >= 1)
  {
    v7 = (*(this + 11) + 8);
    do
    {
      v8 = *v7++;
      result = TSP::Reference::Clear(v8);
      --v6;
    }

    while (v6);
    *(this + 20) = 0;
  }

  v9 = *(this + 26);
  if (v9 >= 1)
  {
    v10 = (*(this + 14) + 8);
    do
    {
      v11 = *v10++;
      result = TSP::Reference::Clear(v11);
      --v9;
    }

    while (v9);
    *(this + 26) = 0;
  }

  v12 = *(this + 32);
  if (v12 >= 1)
  {
    v13 = (*(this + 17) + 8);
    do
    {
      v14 = *v13++;
      result = TSP::Reference::Clear(v14);
      --v12;
    }

    while (v12);
    *(this + 32) = 0;
  }

  v15 = *(this + 38);
  if (v15 >= 1)
  {
    v16 = (*(this + 20) + 8);
    do
    {
      v17 = *v16++;
      result = TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::Clear(v17);
      --v15;
    }

    while (v15);
    *(this + 38) = 0;
  }

  v18 = *(this + 44);
  if (v18 >= 1)
  {
    v19 = (*(this + 23) + 8);
    do
    {
      v20 = *v19++;
      result = TSP::Reference::Clear(v20);
      --v18;
    }

    while (v18);
    *(this + 44) = 0;
  }

  v21 = *(this + 50);
  if (v21 >= 1)
  {
    v22 = (*(this + 26) + 8);
    do
    {
      v23 = *v22++;
      result = TSP::Reference::Clear(v23);
      --v21;
    }

    while (v21);
    *(this + 50) = 0;
  }

  v24 = *(this + 56);
  if (v24 >= 1)
  {
    v25 = (*(this + 29) + 8);
    do
    {
      v26 = *v25++;
      result = TSCK::CollaborationAppliedCommandDocumentRevisionMapping::Clear(v26);
      --v24;
    }

    while (v24);
    *(this + 56) = 0;
  }

  v27 = *(this + 4);
  if ((v27 & 0x3F) == 0)
  {
    goto LABEL_41;
  }

  if (v27)
  {
    result = TSP::UUID::Clear(*(this + 30));
    if ((v27 & 2) == 0)
    {
LABEL_36:
      if ((v27 & 4) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_51;
    }
  }

  else if ((v27 & 2) == 0)
  {
    goto LABEL_36;
  }

  result = TSP::UUID::Clear(*(this + 31));
  if ((v27 & 4) == 0)
  {
LABEL_37:
    if ((v27 & 8) == 0)
    {
      goto LABEL_38;
    }

LABEL_52:
    result = TSP::Reference::Clear(*(this + 33));
    if ((v27 & 0x10) == 0)
    {
LABEL_39:
      if ((v27 & 0x20) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    goto LABEL_53;
  }

LABEL_51:
  result = TSP::UUID::Clear(*(this + 32));
  if ((v27 & 8) != 0)
  {
    goto LABEL_52;
  }

LABEL_38:
  if ((v27 & 0x10) == 0)
  {
    goto LABEL_39;
  }

LABEL_53:
  result = TSP::Reference::Clear(*(this + 34));
  if ((v27 & 0x20) != 0)
  {
LABEL_40:
    result = TSP::UUID::Clear(*(this + 35));
  }

LABEL_41:
  if ((v27 & 0xC0) != 0)
  {
    *(this + 292) = 0;
    *(this + 72) = 0;
  }

  if ((v27 & 0x700) != 0)
  {
    *(this + 37) = 0;
    *(this + 38) = 0;
    *(this + 39) = 0;
  }

  v29 = *(this + 8);
  v28 = this + 8;
  *(v28 + 2) = 0;
  if (v29)
  {

    return sub_27662D2EC(v28);
  }

  return result;
}

google::protobuf::internal *TSCK::CollaborationDocumentSessionState::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v142 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v142) & 1) == 0)
  {
    while (2)
    {
      v8 = (v142 + 1);
      v9 = *v142;
      if (*v142 < 0)
      {
        v10 = v9 + (*v8 << 7);
        v9 = v10 - 128;
        if (*v8 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v142, (v10 - 128));
          v142 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_213;
          }

          v8 = TagFallback;
          v9 = v21;
LABEL_7:
          switch(v9 >> 3)
          {
            case 1u:
              if (v9 != 10)
              {
                goto LABEL_197;
              }

              v11 = v8 - 1;
              while (1)
              {
                v142 = (v11 + 1);
                v12 = *(a1 + 40);
                if (!v12)
                {
                  break;
                }

                v13 = *(a1 + 32);
                v14 = *v12;
                if (v13 >= *v12)
                {
                  if (v14 == *(a1 + 36))
                  {
LABEL_15:
                    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                    v12 = *(a1 + 40);
                    v14 = *v12;
                  }

                  *v12 = v14 + 1;
                  v17 = sub_27662CC78(*(a1 + 24));
                  v18 = *(a1 + 32);
                  v19 = *(a1 + 40) + 8 * v18;
                  *(a1 + 32) = v18 + 1;
                  *(v19 + 8) = v17;
                  goto LABEL_17;
                }

                *(a1 + 32) = v13 + 1;
                v15 = *&v12[2 * v13 + 2];
LABEL_17:
                v11 = google::protobuf::internal::InlineGreedyStringParser();
                v142 = v11;
                if (!v11)
                {
                  goto LABEL_213;
                }

                if (*a3 <= v11 || *v11 != 10)
                {
                  goto LABEL_190;
                }
              }

              v16 = *(a1 + 36);
              goto LABEL_15;
            case 3u:
              if (v9 != 26)
              {
                goto LABEL_197;
              }

              v71 = v8 - 1;
              while (1)
              {
                v72 = (v71 + 1);
                v142 = (v71 + 1);
                v73 = *(a1 + 64);
                if (!v73)
                {
                  break;
                }

                v80 = *(a1 + 56);
                v75 = *v73;
                if (v80 < *v73)
                {
                  *(a1 + 56) = v80 + 1;
                  v77 = *&v73[2 * v80 + 2];
                  goto LABEL_107;
                }

                if (v75 == *(a1 + 60))
                {
                  goto LABEL_103;
                }

LABEL_104:
                *v73 = v75 + 1;
                v76 = MEMORY[0x277C994F0](*(a1 + 48));
                LODWORD(v77) = v76;
                v78 = *(a1 + 56);
                v79 = *(a1 + 64) + 8 * v78;
                *(a1 + 56) = v78 + 1;
                *(v79 + 8) = v76;
                v72 = v142;
LABEL_107:
                v71 = sub_2766358E0(a3, v77, v72);
                v142 = v71;
                if (!v71)
                {
                  goto LABEL_213;
                }

                if (*a3 <= v71 || *v71 != 26)
                {
                  goto LABEL_190;
                }
              }

              v74 = *(a1 + 60);
LABEL_103:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v73 = *(a1 + 64);
              v75 = *v73;
              goto LABEL_104;
            case 4u:
              if (v9 != 34)
              {
                goto LABEL_197;
              }

              v50 = v8 - 1;
              while (1)
              {
                v51 = (v50 + 1);
                v142 = (v50 + 1);
                v52 = *(a1 + 88);
                if (!v52)
                {
                  break;
                }

                v59 = *(a1 + 80);
                v54 = *v52;
                if (v59 < *v52)
                {
                  *(a1 + 80) = v59 + 1;
                  v56 = *&v52[2 * v59 + 2];
                  goto LABEL_74;
                }

                if (v54 == *(a1 + 84))
                {
                  goto LABEL_70;
                }

LABEL_71:
                *v52 = v54 + 1;
                v55 = MEMORY[0x277C994F0](*(a1 + 72));
                LODWORD(v56) = v55;
                v57 = *(a1 + 80);
                v58 = *(a1 + 88) + 8 * v57;
                *(a1 + 80) = v57 + 1;
                *(v58 + 8) = v55;
                v51 = v142;
LABEL_74:
                v50 = sub_2766358E0(a3, v56, v51);
                v142 = v50;
                if (!v50)
                {
                  goto LABEL_213;
                }

                if (*a3 <= v50 || *v50 != 34)
                {
                  goto LABEL_190;
                }
              }

              v53 = *(a1 + 84);
LABEL_70:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
              v52 = *(a1 + 88);
              v54 = *v52;
              goto LABEL_71;
            case 5u:
              if (v9 != 42)
              {
                goto LABEL_197;
              }

              v100 = v8 - 1;
              while (1)
              {
                v101 = (v100 + 1);
                v142 = (v100 + 1);
                v102 = *(a1 + 112);
                if (!v102)
                {
                  break;
                }

                v109 = *(a1 + 104);
                v104 = *v102;
                if (v109 < *v102)
                {
                  *(a1 + 104) = v109 + 1;
                  v106 = *&v102[2 * v109 + 2];
                  goto LABEL_152;
                }

                if (v104 == *(a1 + 108))
                {
                  goto LABEL_148;
                }

LABEL_149:
                *v102 = v104 + 1;
                v105 = MEMORY[0x277C994F0](*(a1 + 96));
                LODWORD(v106) = v105;
                v107 = *(a1 + 104);
                v108 = *(a1 + 112) + 8 * v107;
                *(a1 + 104) = v107 + 1;
                *(v108 + 8) = v105;
                v101 = v142;
LABEL_152:
                v100 = sub_2766358E0(a3, v106, v101);
                v142 = v100;
                if (!v100)
                {
                  goto LABEL_213;
                }

                if (*a3 <= v100 || *v100 != 42)
                {
                  goto LABEL_190;
                }
              }

              v103 = *(a1 + 108);
LABEL_148:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
              v102 = *(a1 + 112);
              v104 = *v102;
              goto LABEL_149;
            case 6u:
              if (v9 != 50)
              {
                goto LABEL_197;
              }

              v110 = v8 - 1;
              while (1)
              {
                v111 = (v110 + 1);
                v142 = (v110 + 1);
                v112 = *(a1 + 136);
                if (!v112)
                {
                  break;
                }

                v119 = *(a1 + 128);
                v114 = *v112;
                if (v119 < *v112)
                {
                  *(a1 + 128) = v119 + 1;
                  v116 = *&v112[2 * v119 + 2];
                  goto LABEL_166;
                }

                if (v114 == *(a1 + 132))
                {
                  goto LABEL_162;
                }

LABEL_163:
                *v112 = v114 + 1;
                v115 = MEMORY[0x277C994F0](*(a1 + 120));
                LODWORD(v116) = v115;
                v117 = *(a1 + 128);
                v118 = *(a1 + 136) + 8 * v117;
                *(a1 + 128) = v117 + 1;
                *(v118 + 8) = v115;
                v111 = v142;
LABEL_166:
                v110 = sub_2766358E0(a3, v116, v111);
                v142 = v110;
                if (!v110)
                {
                  goto LABEL_213;
                }

                if (*a3 <= v110 || *v110 != 50)
                {
                  goto LABEL_190;
                }
              }

              v113 = *(a1 + 132);
LABEL_162:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
              v112 = *(a1 + 136);
              v114 = *v112;
              goto LABEL_163;
            case 7u:
              if (v9 != 58)
              {
                goto LABEL_197;
              }

              v60 = (v8 - 1);
              while (1)
              {
                v61 = (v60 + 1);
                v142 = (v60 + 1);
                v62 = *(a1 + 160);
                if (!v62)
                {
                  break;
                }

                v68 = *(a1 + 152);
                v64 = *v62;
                if (v68 < *v62)
                {
                  *(a1 + 152) = v68 + 1;
                  v65 = *&v62[2 * v68 + 2];
                  goto LABEL_88;
                }

                if (v64 == *(a1 + 156))
                {
                  goto LABEL_84;
                }

LABEL_85:
                *v62 = v64 + 1;
                v65 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry>(*(a1 + 144));
                v66 = *(a1 + 152);
                v67 = *(a1 + 160) + 8 * v66;
                *(a1 + 152) = v66 + 1;
                *(v67 + 8) = v65;
                v61 = v142;
LABEL_88:
                v60 = sub_276636100(a3, v65, v61);
                v142 = v60;
                if (!v60)
                {
                  goto LABEL_213;
                }

                if (*a3 <= v60 || *v60 != 58)
                {
                  goto LABEL_190;
                }
              }

              v63 = *(a1 + 156);
LABEL_84:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144));
              v62 = *(a1 + 160);
              v64 = *v62;
              goto LABEL_85;
            case 8u:
              if (v9 != 66)
              {
                goto LABEL_197;
              }

              v81 = v8 - 1;
              while (1)
              {
                v82 = (v81 + 1);
                v142 = (v81 + 1);
                v83 = *(a1 + 184);
                if (!v83)
                {
                  break;
                }

                v90 = *(a1 + 176);
                v85 = *v83;
                if (v90 < *v83)
                {
                  *(a1 + 176) = v90 + 1;
                  v87 = *&v83[2 * v90 + 2];
                  goto LABEL_121;
                }

                if (v85 == *(a1 + 180))
                {
                  goto LABEL_117;
                }

LABEL_118:
                *v83 = v85 + 1;
                v86 = MEMORY[0x277C994F0](*(a1 + 168));
                LODWORD(v87) = v86;
                v88 = *(a1 + 176);
                v89 = *(a1 + 184) + 8 * v88;
                *(a1 + 176) = v88 + 1;
                *(v89 + 8) = v86;
                v82 = v142;
LABEL_121:
                v81 = sub_2766358E0(a3, v87, v82);
                v142 = v81;
                if (!v81)
                {
                  goto LABEL_213;
                }

                if (*a3 <= v81 || *v81 != 66)
                {
                  goto LABEL_190;
                }
              }

              v84 = *(a1 + 180);
LABEL_117:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 168));
              v83 = *(a1 + 184);
              v85 = *v83;
              goto LABEL_118;
            case 0xAu:
              if (v9 != 80)
              {
                goto LABEL_197;
              }

              v6 |= 0x40u;
              v92 = (v8 + 1);
              LODWORD(v91) = *v8;
              if ((v91 & 0x80) == 0)
              {
                goto LABEL_131;
              }

              v93 = *v92;
              v91 = (v91 + (v93 << 7) - 128);
              if (v93 < 0)
              {
                v136 = google::protobuf::internal::VarintParseSlow64(v8, v91);
                v142 = v136;
                *(a1 + 288) = v137;
                if (!v136)
                {
                  goto LABEL_213;
                }
              }

              else
              {
                v92 = (v8 + 2);
LABEL_131:
                v142 = v92;
                *(a1 + 288) = v91;
              }

              goto LABEL_190;
            case 0xBu:
              if (v9 != 90)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 1u;
              v31 = *(a1 + 240);
              if (v31)
              {
                goto LABEL_188;
              }

              v123 = *(a1 + 8);
              if (v123)
              {
                v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
              }

              v124 = MEMORY[0x277C994B0](v123);
              LODWORD(v31) = v124;
              *(a1 + 240) = v124;
              goto LABEL_187;
            case 0xCu:
              if (v9 != 96)
              {
                goto LABEL_197;
              }

              v6 |= 0x80u;
              v121 = (v8 + 1);
              v120 = *v8;
              if ((v120 & 0x8000000000000000) == 0)
              {
                goto LABEL_176;
              }

              v122 = *v121;
              v120 = (v122 << 7) + v120 - 128;
              if (v122 < 0)
              {
                v138 = google::protobuf::internal::VarintParseSlow64(v8, v120);
                v142 = v138;
                *(a1 + 292) = v139 != 0;
                if (!v138)
                {
                  goto LABEL_213;
                }
              }

              else
              {
                v121 = (v8 + 2);
LABEL_176:
                v142 = v121;
                *(a1 + 292) = v120 != 0;
              }

              goto LABEL_190;
            case 0xDu:
              if (v9 != 104)
              {
                goto LABEL_197;
              }

              v6 |= 0x200u;
              v35 = (v8 + 1);
              LODWORD(v34) = *v8;
              if ((v34 & 0x80) == 0)
              {
                goto LABEL_46;
              }

              v36 = *v35;
              v34 = (v34 + (v36 << 7) - 128);
              if (v36 < 0)
              {
                v132 = google::protobuf::internal::VarintParseSlow64(v8, v34);
                v142 = v132;
                *(a1 + 304) = v133;
                if (!v132)
                {
                  goto LABEL_213;
                }
              }

              else
              {
                v35 = (v8 + 2);
LABEL_46:
                v142 = v35;
                *(a1 + 304) = v34;
              }

              goto LABEL_190;
            case 0xEu:
              if (v9 != 114)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 2u;
              v31 = *(a1 + 248);
              if (v31)
              {
                goto LABEL_188;
              }

              v69 = *(a1 + 8);
              if (v69)
              {
                v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
              }

              v70 = MEMORY[0x277C994B0](v69);
              LODWORD(v31) = v70;
              *(a1 + 248) = v70;
              goto LABEL_187;
            case 0xFu:
              if (v9 != 122)
              {
                goto LABEL_197;
              }

              v37 = v8 - 1;
              while (1)
              {
                v38 = (v37 + 1);
                v142 = (v37 + 1);
                v39 = *(a1 + 208);
                if (!v39)
                {
                  break;
                }

                v46 = *(a1 + 200);
                v41 = *v39;
                if (v46 < *v39)
                {
                  *(a1 + 200) = v46 + 1;
                  v43 = *&v39[2 * v46 + 2];
                  goto LABEL_55;
                }

                if (v41 == *(a1 + 204))
                {
                  goto LABEL_51;
                }

LABEL_52:
                *v39 = v41 + 1;
                v42 = MEMORY[0x277C994F0](*(a1 + 192));
                LODWORD(v43) = v42;
                v44 = *(a1 + 200);
                v45 = *(a1 + 208) + 8 * v44;
                *(a1 + 200) = v44 + 1;
                *(v45 + 8) = v42;
                v38 = v142;
LABEL_55:
                v37 = sub_2766358E0(a3, v43, v38);
                v142 = v37;
                if (!v37)
                {
                  goto LABEL_213;
                }

                if (*a3 <= v37 || *v37 != 122)
                {
                  goto LABEL_190;
                }
              }

              v40 = *(a1 + 204);
LABEL_51:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 192));
              v39 = *(a1 + 208);
              v41 = *v39;
              goto LABEL_52;
            case 0x10u:
              if (v9 != 130)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 4u;
              v31 = *(a1 + 256);
              if (v31)
              {
                goto LABEL_188;
              }

              v32 = *(a1 + 8);
              if (v32)
              {
                v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
              }

              v33 = MEMORY[0x277C994B0](v32);
              LODWORD(v31) = v33;
              *(a1 + 256) = v33;
              goto LABEL_187;
            case 0x11u:
              if (v9 != 138)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 8u;
              v94 = *(a1 + 264);
              if (v94)
              {
                goto LABEL_143;
              }

              v95 = *(a1 + 8);
              if (v95)
              {
                v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
              }

              v96 = MEMORY[0x277C994F0](v95);
              LODWORD(v94) = v96;
              *(a1 + 264) = v96;
              goto LABEL_142;
            case 0x12u:
              if (v9 != 146)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 0x10u;
              v94 = *(a1 + 272);
              if (v94)
              {
                goto LABEL_143;
              }

              v97 = *(a1 + 8);
              if (v97)
              {
                v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
              }

              v98 = MEMORY[0x277C994F0](v97);
              LODWORD(v94) = v98;
              *(a1 + 272) = v98;
LABEL_142:
              v8 = v142;
LABEL_143:
              v99 = sub_2766358E0(a3, v94, v8);
              goto LABEL_189;
            case 0x13u:
              if (v9 != 152)
              {
                goto LABEL_197;
              }

              v6 |= 0x100u;
              v129 = (v8 + 1);
              v128 = *v8;
              if ((v128 & 0x8000000000000000) == 0)
              {
                goto LABEL_196;
              }

              v130 = *v129;
              v128 = (v130 << 7) + v128 - 128;
              if (v130 < 0)
              {
                v140 = google::protobuf::internal::VarintParseSlow64(v8, v128);
                v142 = v140;
                *(a1 + 296) = v141;
                if (!v140)
                {
                  goto LABEL_213;
                }
              }

              else
              {
                v129 = (v8 + 2);
LABEL_196:
                v142 = v129;
                *(a1 + 296) = v128;
              }

              goto LABEL_190;
            case 0x14u:
              if (v9 != 162)
              {
                goto LABEL_197;
              }

              *(a1 + 16) |= 0x20u;
              v31 = *(a1 + 280);
              if (v31)
              {
                goto LABEL_188;
              }

              v125 = *(a1 + 8);
              if (v125)
              {
                v125 = *(v125 & 0xFFFFFFFFFFFFFFFELL);
              }

              v126 = MEMORY[0x277C994B0](v125);
              LODWORD(v31) = v126;
              *(a1 + 280) = v126;
LABEL_187:
              v8 = v142;
LABEL_188:
              v99 = sub_2766359B0(a3, v31, v8);
              goto LABEL_189;
            case 0x15u:
              if (v9 != 170)
              {
                goto LABEL_197;
              }

              v22 = (v8 - 2);
              break;
            case 0x16u:
              if (v9 != 176)
              {
                goto LABEL_197;
              }

              v6 |= 0x400u;
              v48 = (v8 + 1);
              v47 = *v8;
              if ((v47 & 0x8000000000000000) == 0)
              {
                goto LABEL_65;
              }

              v49 = *v48;
              v47 = (v49 << 7) + v47 - 128;
              if (v49 < 0)
              {
                v134 = google::protobuf::internal::VarintParseSlow64(v8, v47);
                v142 = v134;
                *(a1 + 312) = v135;
                if (!v134)
                {
                  goto LABEL_213;
                }
              }

              else
              {
                v48 = (v8 + 2);
LABEL_65:
                v142 = v48;
                *(a1 + 312) = v47;
              }

              goto LABEL_190;
            default:
LABEL_197:
              if (v9)
              {
                v131 = (v9 & 7) == 4;
              }

              else
              {
                v131 = 1;
              }

              if (v131)
              {
                *(a3 + 80) = v9 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_27662D0DC((a1 + 8));
              }

              v99 = google::protobuf::internal::UnknownFieldParse();
LABEL_189:
              v142 = v99;
              if (!v99)
              {
LABEL_213:
                v142 = 0;
                goto LABEL_2;
              }

LABEL_190:
              v127 = *(a3 + 92);
              if (sub_27662CC00(a3, &v142))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v23 = (v22 + 2);
            v142 = (v22 + 2);
            v24 = *(a1 + 232);
            if (!v24)
            {
              break;
            }

            v30 = *(a1 + 224);
            v26 = *v24;
            if (v30 < *v24)
            {
              *(a1 + 224) = v30 + 1;
              v27 = *&v24[2 * v30 + 2];
              goto LABEL_31;
            }

            if (v26 == *(a1 + 228))
            {
              goto LABEL_27;
            }

LABEL_28:
            *v24 = v26 + 1;
            v27 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaborationAppliedCommandDocumentRevisionMapping>(*(a1 + 216));
            v28 = *(a1 + 224);
            v29 = *(a1 + 232) + 8 * v28;
            *(a1 + 224) = v28 + 1;
            *(v29 + 8) = v27;
            v23 = v142;
LABEL_31:
            v22 = sub_2766361D0(a3, v27, v23);
            v142 = v22;
            if (!v22)
            {
              goto LABEL_213;
            }

            if (*a3 <= v22 || *v22 != 426)
            {
              goto LABEL_190;
            }
          }

          v25 = *(a1 + 228);
LABEL_27:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 216));
          v24 = *(a1 + 232);
          v26 = *v24;
          goto LABEL_28;
        }

        v8 = (v142 + 2);
      }

      break;
    }

    v142 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v142;
}

unsigned __int8 *TSCK::CollaborationDocumentSessionState::_InternalSerialize(TSCK::CollaborationDocumentSessionState *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 8);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      a2 = sub_27660B498(a3, 1, *(*(this + 5) + v7), a2);
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v8 = *(this + 14);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v10 = *(*(this + 8) + 8 * i + 8);
      *a2 = 26;
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

      a2 = TSP::Reference::_InternalSerialize(v10, v12, a3);
    }
  }

  v16 = *(this + 20);
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v18 = *(*(this + 11) + 8 * j + 8);
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

      a2 = TSP::Reference::_InternalSerialize(v18, v20, a3);
    }
  }

  v24 = *(this + 26);
  if (v24)
  {
    for (k = 0; k != v24; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v26 = *(*(this + 14) + 8 * k + 8);
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

      a2 = TSP::Reference::_InternalSerialize(v26, v28, a3);
    }
  }

  v32 = *(this + 32);
  if (v32)
  {
    for (m = 0; m != v32; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v34 = *(*(this + 17) + 8 * m + 8);
      *a2 = 50;
      v35 = *(v34 + 5);
      if (v35 > 0x7F)
      {
        a2[1] = v35 | 0x80;
        v37 = v35 >> 7;
        if (v35 >> 14)
        {
          v36 = a2 + 3;
          do
          {
            *(v36 - 1) = v37 | 0x80;
            v38 = v37 >> 7;
            ++v36;
            v39 = v37 >> 14;
            v37 >>= 7;
          }

          while (v39);
          *(v36 - 1) = v38;
        }

        else
        {
          a2[2] = v37;
          v36 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v35;
        v36 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v34, v36, a3);
    }
  }

  v40 = *(this + 38);
  if (v40)
  {
    for (n = 0; n != v40; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v42 = *(*(this + 20) + 8 * n + 8);
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

      a2 = TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::_InternalSerialize(v42, v44, a3);
    }
  }

  v48 = *(this + 44);
  if (v48)
  {
    for (ii = 0; ii != v48; ++ii)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v50 = *(*(this + 23) + 8 * ii + 8);
      *a2 = 66;
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

      a2 = TSP::Reference::_InternalSerialize(v50, v52, a3);
    }
  }

  v56 = *(this + 4);
  if ((v56 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v60 = *(this + 72);
    *a2 = 80;
    if (v60 > 0x7F)
    {
      a2[1] = v60 | 0x80;
      v62 = v60 >> 7;
      if (v60 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v62 | 0x80;
          v81 = v62 >> 7;
          ++a2;
          v82 = v62 >> 14;
          v62 >>= 7;
        }

        while (v82);
        *(a2 - 1) = v81;
        if (v56)
        {
          goto LABEL_131;
        }
      }

      else
      {
        a2[2] = v62;
        a2 += 3;
        if (v56)
        {
          goto LABEL_131;
        }
      }
    }

    else
    {
      a2[1] = v60;
      a2 += 2;
      if (v56)
      {
        goto LABEL_131;
      }
    }

LABEL_78:
    if ((v56 & 0x80) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_174;
  }

  if ((v56 & 1) == 0)
  {
    goto LABEL_78;
  }

LABEL_131:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v83 = *(this + 30);
  *a2 = 90;
  v84 = *(v83 + 5);
  if (v84 > 0x7F)
  {
    a2[1] = v84 | 0x80;
    v86 = v84 >> 7;
    if (v84 >> 14)
    {
      v85 = a2 + 3;
      do
      {
        *(v85 - 1) = v86 | 0x80;
        v105 = v86 >> 7;
        ++v85;
        v106 = v86 >> 14;
        v86 >>= 7;
      }

      while (v106);
      *(v85 - 1) = v105;
    }

    else
    {
      a2[2] = v86;
      v85 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v84;
    v85 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v83, v85, a3);
  if ((v56 & 0x80) == 0)
  {
LABEL_79:
    if ((v56 & 0x200) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_177;
  }

LABEL_174:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v107 = *(this + 292);
  *a2 = 96;
  a2[1] = v107;
  a2 += 2;
  if ((v56 & 0x200) == 0)
  {
LABEL_80:
    if ((v56 & 2) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_81;
  }

LABEL_177:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v108 = *(this + 76);
  *a2 = 104;
  if (v108 > 0x7F)
  {
    a2[1] = v108 | 0x80;
    v109 = v108 >> 7;
    if (v108 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v109 | 0x80;
        v120 = v109 >> 7;
        ++a2;
        v121 = v109 >> 14;
        v109 >>= 7;
      }

      while (v121);
      *(a2 - 1) = v120;
      if ((v56 & 2) == 0)
      {
        goto LABEL_99;
      }
    }

    else
    {
      a2[2] = v109;
      a2 += 3;
      if ((v56 & 2) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  else
  {
    a2[1] = v108;
    a2 += 2;
    if ((v56 & 2) == 0)
    {
      goto LABEL_99;
    }
  }

LABEL_81:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v57 = *(this + 31);
  *a2 = 114;
  v58 = *(v57 + 5);
  if (v58 > 0x7F)
  {
    a2[1] = v58 | 0x80;
    v61 = v58 >> 7;
    if (v58 >> 14)
    {
      v59 = a2 + 3;
      do
      {
        *(v59 - 1) = v61 | 0x80;
        v63 = v61 >> 7;
        ++v59;
        v64 = v61 >> 14;
        v61 >>= 7;
      }

      while (v64);
      *(v59 - 1) = v63;
    }

    else
    {
      a2[2] = v61;
      v59 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v58;
    v59 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v57, v59, a3);
LABEL_99:
  v65 = *(this + 50);
  if (v65)
  {
    for (jj = 0; jj != v65; ++jj)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v67 = *(*(this + 26) + 8 * jj + 8);
      *a2 = 122;
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

      a2 = TSP::Reference::_InternalSerialize(v67, v69, a3);
    }
  }

  if ((v56 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v76 = *(this + 32);
    *a2 = 386;
    v77 = *(v76 + 5);
    if (v77 > 0x7F)
    {
      a2[2] = v77 | 0x80;
      v80 = v77 >> 7;
      if (v77 >> 14)
      {
        v78 = a2 + 4;
        do
        {
          *(v78 - 1) = v80 | 0x80;
          v99 = v80 >> 7;
          ++v78;
          v100 = v80 >> 14;
          v80 >>= 7;
        }

        while (v100);
        *(v78 - 1) = v99;
      }

      else
      {
        a2[3] = v80;
        v78 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v77;
      v78 = a2 + 3;
    }

    a2 = TSP::UUID::_InternalSerialize(v76, v78, a3);
    if ((v56 & 8) == 0)
    {
LABEL_113:
      if ((v56 & 0x10) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_194;
    }
  }

  else if ((v56 & 8) == 0)
  {
    goto LABEL_113;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v101 = *(this + 33);
  *a2 = 394;
  v102 = *(v101 + 5);
  if (v102 > 0x7F)
  {
    a2[2] = v102 | 0x80;
    v104 = v102 >> 7;
    if (v102 >> 14)
    {
      v103 = a2 + 4;
      do
      {
        *(v103 - 1) = v104 | 0x80;
        v114 = v104 >> 7;
        ++v103;
        v115 = v104 >> 14;
        v104 >>= 7;
      }

      while (v115);
      *(v103 - 1) = v114;
    }

    else
    {
      a2[3] = v104;
      v103 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v102;
    v103 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v101, v103, a3);
  if ((v56 & 0x10) == 0)
  {
LABEL_114:
    if ((v56 & 0x100) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_208;
  }

LABEL_194:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v116 = *(this + 34);
  *a2 = 402;
  v117 = *(v116 + 5);
  if (v117 > 0x7F)
  {
    a2[2] = v117 | 0x80;
    v119 = v117 >> 7;
    if (v117 >> 14)
    {
      v118 = a2 + 4;
      do
      {
        *(v118 - 1) = v119 | 0x80;
        v122 = v119 >> 7;
        ++v118;
        v123 = v119 >> 14;
        v119 >>= 7;
      }

      while (v123);
      *(v118 - 1) = v122;
    }

    else
    {
      a2[3] = v119;
      v118 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v117;
    v118 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v116, v118, a3);
  if ((v56 & 0x100) == 0)
  {
LABEL_115:
    if ((v56 & 0x20) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_116;
  }

LABEL_208:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v124 = *(this + 37);
  *a2 = 408;
  if (v124 > 0x7F)
  {
    a2[2] = v124 | 0x80;
    v125 = v124 >> 7;
    if (v124 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v125 | 0x80;
        v126 = v125 >> 7;
        ++a2;
        v127 = v125 >> 14;
        v125 >>= 7;
      }

      while (v127);
      *(a2 - 1) = v126;
      if ((v56 & 0x20) == 0)
      {
        goto LABEL_141;
      }
    }

    else
    {
      a2[3] = v125;
      a2 += 4;
      if ((v56 & 0x20) == 0)
      {
        goto LABEL_141;
      }
    }
  }

  else
  {
    a2[2] = v124;
    a2 += 3;
    if ((v56 & 0x20) == 0)
    {
      goto LABEL_141;
    }
  }

LABEL_116:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v73 = *(this + 35);
  *a2 = 418;
  v74 = *(v73 + 5);
  if (v74 > 0x7F)
  {
    a2[2] = v74 | 0x80;
    v79 = v74 >> 7;
    if (v74 >> 14)
    {
      v75 = a2 + 4;
      do
      {
        *(v75 - 1) = v79 | 0x80;
        v87 = v79 >> 7;
        ++v75;
        v88 = v79 >> 14;
        v79 >>= 7;
      }

      while (v88);
      *(v75 - 1) = v87;
    }

    else
    {
      a2[3] = v79;
      v75 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v74;
    v75 = a2 + 3;
  }

  a2 = TSP::UUID::_InternalSerialize(v73, v75, a3);
LABEL_141:
  v89 = *(this + 56);
  if (v89)
  {
    for (kk = 0; kk != v89; ++kk)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v91 = *(*(this + 29) + 8 * kk + 8);
      *a2 = 426;
      v92 = *(v91 + 5);
      if (v92 > 0x7F)
      {
        a2[2] = v92 | 0x80;
        v94 = v92 >> 7;
        if (v92 >> 14)
        {
          v93 = a2 + 4;
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
          a2[3] = v94;
          v93 = a2 + 4;
        }
      }

      else
      {
        a2[2] = v92;
        v93 = a2 + 3;
      }

      a2 = TSCK::CollaborationAppliedCommandDocumentRevisionMapping::_InternalSerialize(v91, v93, a3);
    }
  }

  if ((v56 & 0x400) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v97 = *(this + 39);
    *a2 = 432;
    if (v97 > 0x7F)
    {
      a2[2] = v97 | 0x80;
      v98 = v97 >> 7;
      if (v97 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v98 | 0x80;
          v110 = v98 >> 7;
          ++a2;
          v111 = v98 >> 14;
          v98 >>= 7;
        }

        while (v111);
        *(a2 - 1) = v110;
      }

      else
      {
        a2[3] = v98;
        a2 += 4;
      }
    }

    else
    {
      a2[2] = v97;
      a2 += 3;
    }
  }

  v112 = *(this + 1);
  if ((v112 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v112 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_27660B498(uint64_t *a1, int a2, const void **a3, _BYTE *a4)
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

uint64_t TSCK::CollaborationDocumentSessionState::ByteSizeLong(TSCK::CollaborationDocumentSessionState *this)
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

  v8 = *(this + 14);
  v9 = v4 + v8;
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
      v14 = TSP::Reference::ByteSizeLong(v13);
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
      v21 = TSP::Reference::ByteSizeLong(v20);
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
      v28 = TSP::Reference::ByteSizeLong(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(this + 32);
  v30 = v23 + v29;
  v31 = *(this + 17);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = TSP::Reference::ByteSizeLong(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(this + 38);
  v37 = v30 + v36;
  v38 = *(this + 20);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  if (v36)
  {
    v40 = 8 * v36;
    do
    {
      v41 = *v39++;
      v42 = TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::ByteSizeLong(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(this + 44);
  v44 = v37 + v43;
  v45 = *(this + 23);
  if (v45)
  {
    v46 = (v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  if (v43)
  {
    v47 = 8 * v43;
    do
    {
      v48 = *v46++;
      v49 = TSP::Reference::ByteSizeLong(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(this + 50);
  v51 = v44 + v50;
  v52 = *(this + 26);
  if (v52)
  {
    v53 = (v52 + 8);
  }

  else
  {
    v53 = 0;
  }

  if (v50)
  {
    v54 = 8 * v50;
    do
    {
      v55 = *v53++;
      v56 = TSP::Reference::ByteSizeLong(v55);
      v51 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6);
      v54 -= 8;
    }

    while (v54);
  }

  v57 = *(this + 56);
  v58 = v51 + 2 * v57;
  v59 = *(this + 29);
  if (v59)
  {
    v60 = (v59 + 8);
  }

  else
  {
    v60 = 0;
  }

  if (v57)
  {
    v61 = 8 * v57;
    do
    {
      v62 = *v60++;
      v63 = TSCK::CollaborationAppliedCommandDocumentRevisionMapping::ByteSizeLong(v62);
      v58 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6);
      v61 -= 8;
    }

    while (v61);
  }

  v64 = *(this + 4);
  if (*(this + 4))
  {
    if (v64)
    {
      v69 = TSP::UUID::ByteSizeLong(*(this + 30));
      v58 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v64 & 2) == 0)
      {
LABEL_59:
        if ((v64 & 4) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_78;
      }
    }

    else if ((v64 & 2) == 0)
    {
      goto LABEL_59;
    }

    v70 = TSP::UUID::ByteSizeLong(*(this + 31));
    v58 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v64 & 4) == 0)
    {
LABEL_60:
      if ((v64 & 8) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_79;
    }

LABEL_78:
    v71 = TSP::UUID::ByteSizeLong(*(this + 32));
    v58 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v64 & 8) == 0)
    {
LABEL_61:
      if ((v64 & 0x10) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_80;
    }

LABEL_79:
    v72 = TSP::Reference::ByteSizeLong(*(this + 33));
    v58 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v64 & 0x10) == 0)
    {
LABEL_62:
      if ((v64 & 0x20) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_81;
    }

LABEL_80:
    v73 = TSP::Reference::ByteSizeLong(*(this + 34));
    v58 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v64 & 0x20) == 0)
    {
LABEL_63:
      if ((v64 & 0x40) != 0)
      {
LABEL_64:
        v65 = *(this + 72);
        v66 = ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if (v65 >= 0)
        {
          v67 = v66;
        }

        else
        {
          v67 = 11;
        }

        v58 += v67;
      }

LABEL_68:
      v58 += (v64 >> 6) & 2;
      goto LABEL_69;
    }

LABEL_81:
    v74 = TSP::UUID::ByteSizeLong(*(this + 35));
    v58 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v64 & 0x40) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_69:
  if ((v64 & 0x700) == 0)
  {
    goto LABEL_74;
  }

  if ((v64 & 0x100) != 0)
  {
    v58 += ((9 * (__clz(*(this + 37) | 1) ^ 0x3F) + 73) >> 6) + 2;
    if ((v64 & 0x200) == 0)
    {
LABEL_72:
      if ((v64 & 0x400) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_73;
    }
  }

  else if ((v64 & 0x200) == 0)
  {
    goto LABEL_72;
  }

  v75 = *(this + 76);
  v76 = ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v75 >= 0)
  {
    v77 = v76;
  }

  else
  {
    v77 = 11;
  }

  v58 += v77;
  if ((v64 & 0x400) == 0)
  {
    goto LABEL_74;
  }

LABEL_73:
  v58 += ((9 * (__clz(*(this + 39) | 1) ^ 0x3F) + 73) >> 6) + 2;
LABEL_74:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v58, this + 20);
  }

  else
  {
    *(this + 5) = v58;
    return v58;
  }
}

uint64_t TSCK::CollaborationDocumentSessionState::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::CollaborationDocumentSessionState::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::CollaborationDocumentSessionState::MergeFrom(uint64_t this, const TSCK::CollaborationDocumentSessionState *a2)
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
    this = sub_27662D7D0((v3 + 24), v8, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_27662D428(v3 + 48, v14, (v12 + 8), v11, **(v3 + 64) - *(v3 + 56));
    v15 = *(v3 + 56) + v11;
    *(v3 + 56) = v15;
    v16 = *(v3 + 64);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 20);
  if (v17)
  {
    v18 = *(a2 + 11);
    v19 = *(a2 + 20);
    v20 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    this = sub_27662D428(v3 + 72, v20, (v18 + 8), v17, **(v3 + 88) - *(v3 + 80));
    v21 = *(v3 + 80) + v17;
    *(v3 + 80) = v21;
    v22 = *(v3 + 88);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 26);
  if (v23)
  {
    v24 = *(a2 + 14);
    v25 = *(a2 + 26);
    v26 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 96));
    this = sub_27662D428(v3 + 96, v26, (v24 + 8), v23, **(v3 + 112) - *(v3 + 104));
    v27 = *(v3 + 104) + v23;
    *(v3 + 104) = v27;
    v28 = *(v3 + 112);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 32);
  if (v29)
  {
    v30 = *(a2 + 17);
    v31 = *(a2 + 32);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 120));
    this = sub_27662D428(v3 + 120, v32, (v30 + 8), v29, **(v3 + 136) - *(v3 + 128));
    v33 = *(v3 + 128) + v29;
    *(v3 + 128) = v33;
    v34 = *(v3 + 136);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 38);
  if (v35)
  {
    v36 = *(a2 + 20);
    v37 = *(a2 + 38);
    v38 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 144));
    this = sub_27662D87C(v3 + 144, v38, (v36 + 8), v35, **(v3 + 160) - *(v3 + 152));
    v39 = *(v3 + 152) + v35;
    *(v3 + 152) = v39;
    v40 = *(v3 + 160);
    if (*v40 < v39)
    {
      *v40 = v39;
    }
  }

  v41 = *(a2 + 44);
  if (v41)
  {
    v42 = *(a2 + 23);
    v43 = *(a2 + 44);
    v44 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 168));
    this = sub_27662D428(v3 + 168, v44, (v42 + 8), v41, **(v3 + 184) - *(v3 + 176));
    v45 = *(v3 + 176) + v41;
    *(v3 + 176) = v45;
    v46 = *(v3 + 184);
    if (*v46 < v45)
    {
      *v46 = v45;
    }
  }

  v47 = *(a2 + 50);
  if (v47)
  {
    v48 = *(a2 + 26);
    v49 = *(a2 + 50);
    v50 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 192));
    this = sub_27662D428(v3 + 192, v50, (v48 + 8), v47, **(v3 + 208) - *(v3 + 200));
    v51 = *(v3 + 200) + v47;
    *(v3 + 200) = v51;
    v52 = *(v3 + 208);
    if (*v52 < v51)
    {
      *v52 = v51;
    }
  }

  v53 = *(a2 + 56);
  if (v53)
  {
    v54 = *(a2 + 29);
    v55 = *(a2 + 56);
    v56 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 216));
    this = sub_27662D93C(v3 + 216, v56, (v54 + 8), v53, **(v3 + 232) - *(v3 + 224));
    v57 = *(v3 + 224) + v53;
    *(v3 + 224) = v57;
    v58 = *(v3 + 232);
    if (*v58 < v57)
    {
      *v58 = v57;
    }
  }

  v59 = *(a2 + 4);
  if (v59)
  {
    v60 = MEMORY[0x277D809E0];
    if (v59)
    {
      *(v3 + 16) |= 1u;
      v61 = *(v3 + 240);
      if (!v61)
      {
        v62 = *(v3 + 8);
        if (v62)
        {
          v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
        }

        v61 = MEMORY[0x277C994B0](v62);
        *(v3 + 240) = v61;
      }

      if (*(a2 + 30))
      {
        v63 = *(a2 + 30);
      }

      else
      {
        v63 = v60;
      }

      this = TSP::UUID::MergeFrom(v61, v63);
      if ((v59 & 2) == 0)
      {
LABEL_33:
        if ((v59 & 4) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_51;
      }
    }

    else if ((v59 & 2) == 0)
    {
      goto LABEL_33;
    }

    *(v3 + 16) |= 2u;
    v64 = *(v3 + 248);
    if (!v64)
    {
      v65 = *(v3 + 8);
      if (v65)
      {
        v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
      }

      v64 = MEMORY[0x277C994B0](v65);
      *(v3 + 248) = v64;
    }

    if (*(a2 + 31))
    {
      v66 = *(a2 + 31);
    }

    else
    {
      v66 = v60;
    }

    this = TSP::UUID::MergeFrom(v64, v66);
    if ((v59 & 4) == 0)
    {
LABEL_59:
      v70 = MEMORY[0x277D80A18];
      if ((v59 & 8) != 0)
      {
        *(v3 + 16) |= 8u;
        v71 = *(v3 + 264);
        if (!v71)
        {
          v72 = *(v3 + 8);
          if (v72)
          {
            v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
          }

          v71 = MEMORY[0x277C994F0](v72);
          *(v3 + 264) = v71;
        }

        if (*(a2 + 33))
        {
          v73 = *(a2 + 33);
        }

        else
        {
          v73 = v70;
        }

        this = TSP::Reference::MergeFrom(v71, v73);
        if ((v59 & 0x10) == 0)
        {
LABEL_61:
          if ((v59 & 0x20) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_89;
        }
      }

      else if ((v59 & 0x10) == 0)
      {
        goto LABEL_61;
      }

      *(v3 + 16) |= 0x10u;
      v74 = *(v3 + 272);
      if (!v74)
      {
        v75 = *(v3 + 8);
        if (v75)
        {
          v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
        }

        v74 = MEMORY[0x277C994F0](v75);
        *(v3 + 272) = v74;
      }

      if (*(a2 + 34))
      {
        v76 = *(a2 + 34);
      }

      else
      {
        v76 = v70;
      }

      this = TSP::Reference::MergeFrom(v74, v76);
      if ((v59 & 0x20) == 0)
      {
LABEL_62:
        if ((v59 & 0x40) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_97;
      }

LABEL_89:
      *(v3 + 16) |= 0x20u;
      v77 = *(v3 + 280);
      if (!v77)
      {
        v78 = *(v3 + 8);
        if (v78)
        {
          v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
        }

        v77 = MEMORY[0x277C994B0](v78);
        *(v3 + 280) = v77;
      }

      if (*(a2 + 35))
      {
        v79 = *(a2 + 35);
      }

      else
      {
        v79 = v60;
      }

      this = TSP::UUID::MergeFrom(v77, v79);
      if ((v59 & 0x40) == 0)
      {
LABEL_63:
        if ((v59 & 0x80) == 0)
        {
LABEL_65:
          *(v3 + 16) |= v59;
          goto LABEL_66;
        }

LABEL_64:
        *(v3 + 292) = *(a2 + 292);
        goto LABEL_65;
      }

LABEL_97:
      *(v3 + 288) = *(a2 + 72);
      if ((v59 & 0x80) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

LABEL_51:
    *(v3 + 16) |= 4u;
    v67 = *(v3 + 256);
    if (!v67)
    {
      v68 = *(v3 + 8);
      if (v68)
      {
        v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
      }

      v67 = MEMORY[0x277C994B0](v68);
      *(v3 + 256) = v67;
    }

    if (*(a2 + 32))
    {
      v69 = *(a2 + 32);
    }

    else
    {
      v69 = v60;
    }

    this = TSP::UUID::MergeFrom(v67, v69);
    goto LABEL_59;
  }

LABEL_66:
  if ((v59 & 0x700) == 0)
  {
    return this;
  }

  if ((v59 & 0x100) == 0)
  {
    if ((v59 & 0x200) == 0)
    {
      goto LABEL_69;
    }

LABEL_100:
    *(v3 + 304) = *(a2 + 76);
    if ((v59 & 0x400) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  *(v3 + 296) = *(a2 + 37);
  if ((v59 & 0x200) != 0)
  {
    goto LABEL_100;
  }

LABEL_69:
  if ((v59 & 0x400) != 0)
  {
LABEL_70:
    *(v3 + 312) = *(a2 + 39);
  }

LABEL_71:
  *(v3 + 16) |= v59;
  return this;
}

TSCK::CollaborationDocumentSessionState *TSCK::CollaborationDocumentSessionState::CopyFrom(TSCK::CollaborationDocumentSessionState *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::CollaborationDocumentSessionState::Clear(result);

    return TSCK::CollaborationDocumentSessionState::MergeFrom(v4, a2);
  }

  return result;
}

TSCK::CollaborationDocumentSessionState *TSCK::CollaborationDocumentSessionState::CopyFrom(TSCK::CollaborationDocumentSessionState *this, const TSCK::CollaborationDocumentSessionState *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::CollaborationDocumentSessionState::Clear(this);

    return TSCK::CollaborationDocumentSessionState::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::CollaborationDocumentSessionState::IsInitialized(TSCK::CollaborationDocumentSessionState *this)
{
  v2 = *(this + 14);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 8) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(this + 20);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = TSP::Reference::IsInitialized(*(*(this + 11) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(this + 26);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = TSP::Reference::IsInitialized(*(*(this + 14) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(this + 32);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = TSP::Reference::IsInitialized(*(*(this + 17) + 8 * v11));
    v11 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *(this + 38);
  while (v14 >= 1)
  {
    v15 = v14 - 1;
    v16 = TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::IsInitialized(*(*(this + 20) + 8 * v14));
    v14 = v15;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *(this + 44);
  while (v18 >= 1)
  {
    v19 = v18 - 1;
    v20 = TSP::Reference::IsInitialized(*(*(this + 23) + 8 * v18));
    result = 0;
    v18 = v19;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  v21 = *(this + 50);
  while (v21 >= 1)
  {
    v22 = v21 - 1;
    v23 = TSP::Reference::IsInitialized(*(*(this + 26) + 8 * v21));
    result = 0;
    v21 = v22;
    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  v24 = *(this + 56);
  while (v24 >= 1)
  {
    v25 = v24 - 1;
    v26 = TSCK::CollaborationAppliedCommandDocumentRevisionMapping::IsInitialized(*(*(this + 29) + 8 * v24));
    result = 0;
    v24 = v25;
    if ((v26 & 1) == 0)
    {
      return result;
    }
  }

  v27 = *(this + 4);
  if (v27)
  {
    result = TSP::UUID::IsInitialized(*(this + 30));
    if (!result)
    {
      return result;
    }

    v27 = *(this + 4);
  }

  if ((v27 & 2) != 0)
  {
    result = TSP::UUID::IsInitialized(*(this + 31));
    if (!result)
    {
      return result;
    }

    v27 = *(this + 4);
  }

  if ((v27 & 4) != 0)
  {
    result = TSP::UUID::IsInitialized(*(this + 32));
    if (!result)
    {
      return result;
    }

    v27 = *(this + 4);
  }

  if ((v27 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 33));
    if (!result)
    {
      return result;
    }

    v27 = *(this + 4);
  }

  if ((v27 & 0x10) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 34));
    if (!result)
    {
      return result;
    }

    v27 = *(this + 4);
  }

  if ((v27 & 0x20) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 35));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCK::CollaborationDocumentSessionState::InternalSwap(TSCK::CollaborationDocumentSessionState *this, TSCK::CollaborationDocumentSessionState *a2)
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
  v19 = *(this + 25);
  v20 = *(this + 26);
  *(this + 200) = *(a2 + 200);
  *(a2 + 25) = v19;
  *(a2 + 26) = v20;
  v21 = *(this + 28);
  v22 = *(this + 29);
  *(this + 14) = *(a2 + 14);
  *(a2 + 28) = v21;
  *(a2 + 29) = v22;
  v23 = *(this + 30);
  v24 = *(this + 31);
  *(this + 15) = *(a2 + 15);
  *(a2 + 30) = v23;
  *(a2 + 31) = v24;
  v25 = *(this + 32);
  v26 = *(this + 33);
  *(this + 16) = *(a2 + 16);
  *(a2 + 32) = v25;
  *(a2 + 33) = v26;
  v27 = *(this + 34);
  v28 = *(this + 35);
  *(this + 17) = *(a2 + 17);
  *(a2 + 34) = v27;
  *(a2 + 35) = v28;
  v29 = *(this + 36);
  v30 = *(this + 37);
  *(this + 18) = *(a2 + 18);
  *(a2 + 36) = v29;
  *(a2 + 37) = v30;
  v31 = *(this + 38);
  v32 = *(this + 39);
  result = *(a2 + 19);
  *(this + 19) = result;
  *(a2 + 38) = v31;
  *(a2 + 39) = v32;
  return result;
}

uint64_t TSCK::CollaborationDocumentSessionState::GetMetadata(TSCK::CollaborationDocumentSessionState *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[46];
  v2 = off_2812F9CC0[47];
  return result;
}

TSP::LargeArray *TSCK::OperationStorageEntryArray::clear_large_array(TSCK::OperationStorageEntryArray *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::LargeArray::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::OperationStorageEntryArray *TSCK::OperationStorageEntryArray::OperationStorageEntryArray(TSCK::OperationStorageEntryArray *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570498;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_OperationStorageEntryArray_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288570498;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_OperationStorageEntryArray_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCK::OperationStorageEntryArray *TSCK::OperationStorageEntryArray::OperationStorageEntryArray(TSCK::OperationStorageEntryArray *this, const TSCK::OperationStorageEntryArray *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570498;
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
  return this;
}

void TSCK::OperationStorageEntryArray::~OperationStorageEntryArray(TSCK::OperationStorageEntryArray *this)
{
  if (this != &TSCK::_OperationStorageEntryArray_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C990C0]();
    MEMORY[0x277C999C0](v2, 0x10A1C40B3F725BALL);
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::OperationStorageEntryArray::~OperationStorageEntryArray(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::OperationStorageEntryArray::default_instance(TSCK::OperationStorageEntryArray *this)
{
  if (atomic_load_explicit(scc_info_OperationStorageEntryArray_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_OperationStorageEntryArray_default_instance_;
}

uint64_t *TSCK::OperationStorageEntryArray::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::LargeArray::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27662D2EC(v2);
  }

  return this;
}

google::protobuf::internal *TSCK::OperationStorageEntryArray::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  v5 = *(a3 + 92);
  while ((sub_27662CC00(a3, &v18) & 1) == 0)
  {
    v6 = (v18 + 1);
    v7 = *v18;
    if (*v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v8 - 128));
        v18 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v16;
        goto LABEL_7;
      }

      v6 = (v18 + 2);
    }

    v18 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C99460](v12);
        LODWORD(v11) = v13;
        *(a1 + 24) = v13;
        v6 = v18;
      }

      v10 = sub_276635740(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v18;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27662D0DC((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v18 = v10;
    if (!v10)
    {
      return 0;
    }

    v14 = *(a3 + 92);
  }

  return v18;
}

unsigned __int8 *TSCK::OperationStorageEntryArray::_InternalSerialize(TSCK::OperationStorageEntryArray *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::LargeArray::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::OperationStorageEntryArray::ByteSizeLong(TSP::LargeArray **this)
{
  if (this[2])
  {
    v3 = TSP::LargeArray::ByteSizeLong(this[3]);
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

uint64_t TSCK::OperationStorageEntryArray::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::OperationStorageEntryArray::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::OperationStorageEntryArray::MergeFrom(uint64_t this, const TSCK::OperationStorageEntryArray *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 16) |= 1u;
    if (!*(v3 + 24))
    {
      v6 = *(v3 + 8);
      if (v6)
      {
        v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 24) = MEMORY[0x277C99460](v6);
      v7 = *(a2 + 3);
    }

    return MEMORY[0x2821EA748]();
  }

  return this;
}

uint64_t *TSCK::OperationStorageEntryArray::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::OperationStorageEntryArray::Clear(result);

    return TSCK::OperationStorageEntryArray::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::OperationStorageEntryArray::CopyFrom(uint64_t *this, const TSCK::OperationStorageEntryArray *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::OperationStorageEntryArray::Clear(this);

    return TSCK::OperationStorageEntryArray::MergeFrom(v4, a2);
  }

  return this;
}