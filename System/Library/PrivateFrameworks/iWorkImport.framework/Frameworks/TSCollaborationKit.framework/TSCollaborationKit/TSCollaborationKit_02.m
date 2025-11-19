uint64_t TSCK::OperationStorageEntryArray::IsInitialized(TSCK::OperationStorageEntryArray *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::LargeArray::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSCK::OperationStorageEntryArray::InternalSwap(TSCK::OperationStorageEntryArray *this, TSCK::OperationStorageEntryArray *a2)
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

uint64_t TSCK::OperationStorageEntryArray::GetMetadata(TSCK::OperationStorageEntryArray *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[48];
  v2 = off_2812F9CC0[49];
  return result;
}

TSP::LargeArraySegment *TSCK::OperationStorageEntryArraySegment::clear_large_array_segment(TSCK::OperationStorageEntryArraySegment *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::LargeArraySegment::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSCK::OperationStorageEntryArraySegment::clear_elements(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSK::OperationStorageEntry::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSCK::OperationStorageEntryArraySegment *TSCK::OperationStorageEntryArraySegment::OperationStorageEntryArraySegment(TSCK::OperationStorageEntryArraySegment *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570548;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_OperationStorageEntryArraySegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  return this;
}

TSCK::OperationStorageEntryArraySegment *TSCK::OperationStorageEntryArraySegment::OperationStorageEntryArraySegment(TSCK::OperationStorageEntryArraySegment *this, const TSCK::OperationStorageEntryArraySegment *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570548;
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
    sub_27662DA80(this + 24, v8, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  *(this + 56) = *(a2 + 56);
  return this;
}

void sub_27660D03C(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v2, 0x1081C4010071FB2);
  sub_27662D9FC((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCK::OperationStorageEntryArraySegment::~OperationStorageEntryArraySegment(TSCK::OperationStorageEntryArraySegment *this)
{
  if (this != &TSCK::_OperationStorageEntryArraySegment_default_instance_ && *(this + 6))
  {
    v2 = MEMORY[0x277C99160]();
    MEMORY[0x277C999C0](v2, 0x1081C4010071FB2);
  }

  sub_2765F8538(this + 1);
  sub_27662D9FC(this + 3);
}

{
  TSCK::OperationStorageEntryArraySegment::~OperationStorageEntryArraySegment(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::OperationStorageEntryArraySegment::default_instance(TSCK::OperationStorageEntryArraySegment *this)
{
  if (atomic_load_explicit(scc_info_OperationStorageEntryArraySegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_OperationStorageEntryArraySegment_default_instance_;
}

uint64_t *TSCK::OperationStorageEntryArraySegment::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSK::OperationStorageEntry::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    this = TSP::LargeArraySegment::Clear(*(v1 + 48));
  }

  if ((v5 & 0xE) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_27662D2EC(v6);
  }

  return this;
}

google::protobuf::internal *TSCK::OperationStorageEntryArraySegment::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v41 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v41) & 1) == 0)
  {
    while (1)
    {
      v8 = (v41 + 1);
      v9 = *v41;
      if ((*v41 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v41, (v10 - 128));
      v41 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_65;
      }

      v8 = TagFallback;
      v9 = v36;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v9 != 10)
          {
            goto LABEL_48;
          }

          *(a1 + 16) |= 1u;
          v29 = *(a1 + 48);
          if (!v29)
          {
            v30 = *(a1 + 8);
            if (v30)
            {
              v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
            }

            v31 = MEMORY[0x277C99480](v30);
            LODWORD(v29) = v31;
            *(a1 + 48) = v31;
            v8 = v41;
          }

          v32 = sub_2766362A0(a3, v29, v8);
LABEL_55:
          v41 = v32;
          if (!v32)
          {
            goto LABEL_65;
          }

          goto LABEL_56;
        }

        if (v11 != 2 || v9 != 18)
        {
LABEL_48:
          if (v9)
          {
            v33 = (v9 & 7) == 4;
          }

          else
          {
            v33 = 1;
          }

          if (v33)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27662D0DC((a1 + 8));
          }

          v32 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_55;
        }

        v13 = v8 - 1;
        while (2)
        {
          v14 = (v13 + 1);
          v41 = (v13 + 1);
          v15 = *(a1 + 40);
          if (!v15)
          {
            v16 = *(a1 + 36);
            goto LABEL_22;
          }

          v22 = *(a1 + 32);
          v17 = *v15;
          if (v22 >= *v15)
          {
            if (v17 == *(a1 + 36))
            {
LABEL_22:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v15 = *(a1 + 40);
              v17 = *v15;
            }

            *v15 = v17 + 1;
            v18 = MEMORY[0x277C99440](*(a1 + 24));
            LODWORD(v19) = v18;
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v18;
            v14 = v41;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v15[2 * v22 + 2];
          }

          v13 = sub_276636370(a3, v19, v14);
          v41 = v13;
          if (!v13)
          {
            goto LABEL_65;
          }

          if (*a3 <= v13 || *v13 != 18)
          {
            goto LABEL_56;
          }

          continue;
        }
      }

      if (v11 == 3)
      {
        if (v9 != 24)
        {
          goto LABEL_48;
        }

        v6 |= 2u;
        v24 = (v8 + 1);
        LODWORD(v23) = *v8;
        if ((v23 & 0x80) == 0)
        {
          goto LABEL_36;
        }

        v25 = *v24;
        v23 = (v23 + (v25 << 7) - 128);
        if ((v25 & 0x80000000) == 0)
        {
          v24 = (v8 + 2);
LABEL_36:
          v41 = v24;
          *(a1 + 56) = v23;
          goto LABEL_56;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v8, v23);
        v41 = v37;
        *(a1 + 56) = v38;
        if (!v37)
        {
          goto LABEL_65;
        }
      }

      else if (v11 == 4)
      {
        if (v9 != 32)
        {
          goto LABEL_48;
        }

        v6 |= 4u;
        v27 = (v8 + 1);
        LODWORD(v26) = *v8;
        if ((v26 & 0x80) == 0)
        {
          goto LABEL_41;
        }

        v28 = *v27;
        v26 = (v26 + (v28 << 7) - 128);
        if ((v28 & 0x80000000) == 0)
        {
          v27 = (v8 + 2);
LABEL_41:
          v41 = v27;
          *(a1 + 60) = v26;
          goto LABEL_56;
        }

        v39 = google::protobuf::internal::VarintParseSlow64(v8, v26);
        v41 = v39;
        *(a1 + 60) = v40;
        if (!v39)
        {
LABEL_65:
          v41 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v11 != 5 || v9 != 41)
        {
          goto LABEL_48;
        }

        v6 |= 8u;
        *(a1 + 64) = *v8;
        v41 = (v8 + 8);
      }

LABEL_56:
      v34 = *(a3 + 92);
      if (sub_27662CC00(a3, &v41))
      {
        goto LABEL_2;
      }
    }

    v8 = (v41 + 2);
LABEL_6:
    v41 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v41;
}

unsigned __int8 *TSCK::OperationStorageEntryArraySegment::_InternalSerialize(TSCK::OperationStorageEntryArraySegment *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::LargeArraySegment::_InternalSerialize(v6, v8, a3);
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

      a2 = TSK::OperationStorageEntry::_InternalSerialize(v14, v16, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v23 = *(this + 14);
    *a2 = 24;
    if (v23 > 0x7F)
    {
      a2[1] = v23 | 0x80;
      v24 = v23 >> 7;
      if (v23 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v24 | 0x80;
          v25 = v24 >> 7;
          ++a2;
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
        *(a2 - 1) = v25;
        if ((v5 & 4) != 0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        a2[2] = v24;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      a2[1] = v23;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_43;
      }
    }

LABEL_26:
    if ((v5 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_26;
  }

LABEL_43:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(this + 15);
  *a2 = 32;
  if (v27 > 0x7F)
  {
    a2[1] = v27 | 0x80;
    v28 = v27 >> 7;
    if (v27 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v28 | 0x80;
        v29 = v28 >> 7;
        ++a2;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
      *(a2 - 1) = v29;
      if ((v5 & 8) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      a2[2] = v28;
      a2 += 3;
      if ((v5 & 8) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    a2[1] = v27;
    a2 += 2;
    if ((v5 & 8) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 8);
  *a2 = 41;
  *(a2 + 1) = v20;
  a2 += 9;
LABEL_30:
  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::OperationStorageEntryArraySegment::ByteSizeLong(TSCK::OperationStorageEntryArraySegment *this)
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
      v7 = TSK::OperationStorageEntry::ByteSizeLong(v6);
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
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_25;
  }

  if (v8)
  {
    v9 = TSP::LargeArraySegment::ByteSizeLong(*(this + 6));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v10 = *(this + 14);
  if (v10 < 0)
  {
    v11 = 11;
  }

  else
  {
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v11;
  if ((v8 & 4) != 0)
  {
LABEL_19:
    v12 = *(this + 15);
    if (v12 < 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v13;
  }

LABEL_23:
  if ((v8 & 8) != 0)
  {
    v2 += 9;
  }

LABEL_25:
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

uint64_t TSCK::OperationStorageEntryArraySegment::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::OperationStorageEntryArraySegment::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::OperationStorageEntryArraySegment::MergeFrom(uint64_t this, const TSCK::OperationStorageEntryArraySegment *a2)
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
    this = sub_27662DA80(v3 + 24, v8, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

        v12 = MEMORY[0x277C99480](v13);
        *(v3 + 48) = v12;
      }

      if (*(a2 + 6))
      {
        v14 = *(a2 + 6);
      }

      else
      {
        v14 = MEMORY[0x277D80A58];
      }

      this = TSP::LargeArraySegment::MergeFrom(v12, v14);
      if ((v11 & 2) == 0)
      {
LABEL_9:
        if ((v11 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_23;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 56) = *(a2 + 14);
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
      *(v3 + 64) = *(a2 + 8);
      goto LABEL_12;
    }

LABEL_23:
    *(v3 + 60) = *(a2 + 15);
    if ((v11 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return this;
}

uint64_t *TSCK::OperationStorageEntryArraySegment::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::OperationStorageEntryArraySegment::Clear(result);

    return TSCK::OperationStorageEntryArraySegment::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::OperationStorageEntryArraySegment::CopyFrom(uint64_t *this, const TSCK::OperationStorageEntryArraySegment *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::OperationStorageEntryArraySegment::Clear(this);

    return TSCK::OperationStorageEntryArraySegment::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCK::OperationStorageEntryArraySegment::InternalSwap(__n128 *this, __n128 *a2)
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
  return result;
}

uint64_t TSCK::OperationStorageEntryArraySegment::GetMetadata(TSCK::OperationStorageEntryArraySegment *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[50];
  v2 = off_2812F9CC0[51];
  return result;
}

TSP::Reference *TSCK::OperationStorage::clear_entries(TSCK::OperationStorage *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::IndexSet *TSCK::OperationStorage::clear_days_with_an_entry(TSCK::OperationStorage *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::IndexSet::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCK::OperationStorage *TSCK::OperationStorage::OperationStorage(TSCK::OperationStorage *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885705F8;
  *(this + 1) = a2;
  *(this + 4) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = a2;
  *(this + 9) = 0;
  *(this + 10) = a2;
  if (atomic_load_explicit(scc_info_OperationStorage_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  return this;
}

void sub_27660DE14(_Unwind_Exception *a1)
{
  if (v1[19] >= 1)
  {
    sub_276637140(v4);
  }

  sub_276637154(v1 + 13, v3, v1 + 7, v2);
  _Unwind_Resume(a1);
}

TSCK::OperationStorage *TSCK::OperationStorage::OperationStorage(TSCK::OperationStorage *this, const TSCK::OperationStorage *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885705F8;
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

  *(this + 6) = 0;
  *(this + 7) = 0;
  v7 = *(a2 + 12);
  if (v7)
  {
    sub_27662CDBC(this + 12, v7);
    v8 = *(this + 7);
    *(this + 12) += *(a2 + 12);
    memcpy(v8, *(a2 + 7), 8 * *(a2 + 12));
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  v9 = *(a2 + 18);
  if (v9)
  {
    sub_27662CDBC(this + 18, v9);
    v10 = *(this + 10);
    *(this + 18) += *(a2 + 18);
    memcpy(v10, *(a2 + 10), 8 * *(a2 + 18));
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

  *(this + 12) = 0;
  if ((v12 & 2) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  v13 = *(a2 + 7);
  *(this + 32) = *(a2 + 32);
  *(this + 7) = v13;
  return this;
}

void sub_27660DFF0(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v2, 0x10A1C40290C9B23);
  if (*(v1 + 76) >= 1)
  {
    v4 = *(v1 + 80);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(v1 + 52) >= 1)
  {
    v7 = *(v1 + 56);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(v1 + 28) >= 1)
  {
    v10 = *(v1 + 32);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  _Unwind_Resume(a1);
}

void TSCK::OperationStorage::~OperationStorage(TSCK::OperationStorage *this)
{
  if (this != &TSCK::_OperationStorage_default_instance_)
  {
    v2 = *(this + 12);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C999C0]();
    }

    if (*(this + 13))
    {
      v3 = MEMORY[0x277C99300]();
      MEMORY[0x277C999C0](v3, 0x10A1C40290C9B23);
    }
  }

  sub_2765F8538(this + 1);
  if (*(this + 19) >= 1)
  {
    v4 = *(this + 10);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 13) >= 1)
  {
    v7 = *(this + 7);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(this + 7) >= 1)
  {
    v10 = *(this + 4);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }
}

{
  TSCK::OperationStorage::~OperationStorage(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::OperationStorage::default_instance(TSCK::OperationStorage *this)
{
  if (atomic_load_explicit(scc_info_OperationStorage_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_OperationStorage_default_instance_;
}

uint64_t *TSCK::OperationStorage::Clear(uint64_t *this)
{
  v1 = this;
  *(this + 6) = 0;
  *(this + 12) = 0;
  *(this + 18) = 0;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::Reference::Clear(this[12]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::IndexSet::Clear(*(v1 + 104));
    }
  }

  if ((v2 & 0x3C) != 0)
  {
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
    *(v1 + 128) = 0;
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

google::protobuf::internal *TSCK::OperationStorage::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v46 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v46) & 1) == 0)
  {
    while (1)
    {
      v8 = (v46 + 1);
      v9 = *v46;
      if ((*v46 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v46, (v10 - 128));
      v46 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_89;
      }

      v8 = TagFallback;
      v9 = v22;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 4)
      {
        if (v9 >> 3 > 2)
        {
          if (v11 != 3)
          {
            if (v11 == 4)
            {
              if (v9 == 34)
              {
                v20 = a1 + 24;
                goto LABEL_62;
              }

              if (v9 == 33)
              {
                v47 = *v8;
                v43 = (a1 + 24);
LABEL_77:
                sub_27662CD58(v43, &v47);
                v46 = (v46 + 8);
                goto LABEL_86;
              }
            }

            goto LABEL_78;
          }

          if (v9 != 24)
          {
            goto LABEL_78;
          }

          v6 |= 8u;
          v27 = (v8 + 1);
          LODWORD(v26) = *v8;
          if ((v26 & 0x80) == 0)
          {
            goto LABEL_49;
          }

          v28 = *v27;
          v26 = (v26 + (v28 << 7) - 128);
          if ((v28 & 0x80000000) == 0)
          {
            v27 = (v8 + 2);
LABEL_49:
            v46 = v27;
            *(a1 + 120) = v26;
            goto LABEL_86;
          }

          v37 = google::protobuf::internal::VarintParseSlow64(v8, v26);
          v46 = v37;
          *(a1 + 120) = v38;
          if (!v37)
          {
            goto LABEL_89;
          }
        }

        else
        {
          if (v11 == 1)
          {
            if (v9 != 10)
            {
              goto LABEL_78;
            }

            *(a1 + 16) |= 1u;
            v23 = *(a1 + 96);
            if (!v23)
            {
              v24 = *(a1 + 8);
              if (v24)
              {
                v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
              }

              v25 = MEMORY[0x277C994F0](v24);
              LODWORD(v23) = v25;
              *(a1 + 96) = v25;
              v8 = v46;
            }

            v15 = sub_2766358E0(a3, v23, v8);
            goto LABEL_85;
          }

          if (v11 != 2 || v9 != 16)
          {
            goto LABEL_78;
          }

          v6 |= 4u;
          v18 = (v8 + 1);
          v17 = *v8;
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }

          v19 = *v18;
          v17 = (v19 << 7) + v17 - 128;
          if ((v19 & 0x80000000) == 0)
          {
            v18 = (v8 + 2);
LABEL_28:
            v46 = v18;
            *(a1 + 112) = v17;
            goto LABEL_86;
          }

          v35 = google::protobuf::internal::VarintParseSlow64(v8, v17);
          v46 = v35;
          *(a1 + 112) = v36;
          if (!v35)
          {
            goto LABEL_89;
          }
        }
      }

      else if (v9 >> 3 <= 6)
      {
        if (v11 != 5)
        {
          if (v11 == 6)
          {
            if (v9 == 50)
            {
              v20 = a1 + 48;
              goto LABEL_62;
            }

            if (v9 == 49)
            {
              v47 = *v8;
              v43 = (a1 + 48);
              goto LABEL_77;
            }
          }

LABEL_78:
          if (v9)
          {
            v44 = (v9 & 7) == 4;
          }

          else
          {
            v44 = 1;
          }

          if (v44)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27662D0DC((a1 + 8));
          }

          v15 = google::protobuf::internal::UnknownFieldParse();
LABEL_85:
          v46 = v15;
          if (!v15)
          {
LABEL_89:
            v46 = 0;
            goto LABEL_2;
          }

          goto LABEL_86;
        }

        if (v9 != 40)
        {
          goto LABEL_78;
        }

        v6 |= 0x10u;
        v33 = (v8 + 1);
        LODWORD(v32) = *v8;
        if ((v32 & 0x80) == 0)
        {
          goto LABEL_59;
        }

        v34 = *v33;
        v32 = (v32 + (v34 << 7) - 128);
        if ((v34 & 0x80000000) == 0)
        {
          v33 = (v8 + 2);
LABEL_59:
          v46 = v33;
          *(a1 + 124) = v32;
          goto LABEL_86;
        }

        v41 = google::protobuf::internal::VarintParseSlow64(v8, v32);
        v46 = v41;
        *(a1 + 124) = v42;
        if (!v41)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v11 != 7)
        {
          if (v11 == 8)
          {
            if (v9 != 66)
            {
              if (v9 == 65)
              {
                v47 = *v8;
                v43 = (a1 + 72);
                goto LABEL_77;
              }

              goto LABEL_78;
            }

            v20 = a1 + 72;
LABEL_62:
            v15 = MEMORY[0x277C99690](v20, v8, a3);
          }

          else
          {
            if (v11 != 9 || v9 != 74)
            {
              goto LABEL_78;
            }

            *(a1 + 16) |= 2u;
            v12 = *(a1 + 104);
            if (!v12)
            {
              v13 = *(a1 + 8);
              if (v13)
              {
                v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
              }

              v14 = MEMORY[0x277C994D0](v13);
              LODWORD(v12) = v14;
              *(a1 + 104) = v14;
              v8 = v46;
            }

            v15 = sub_276636440(a3, v12, v8);
          }

          goto LABEL_85;
        }

        if (v9 != 56)
        {
          goto LABEL_78;
        }

        v6 |= 0x20u;
        v30 = (v8 + 1);
        LODWORD(v29) = *v8;
        if ((v29 & 0x80) == 0)
        {
          goto LABEL_54;
        }

        v31 = *v30;
        v29 = (v29 + (v31 << 7) - 128);
        if ((v31 & 0x80000000) == 0)
        {
          v30 = (v8 + 2);
LABEL_54:
          v46 = v30;
          *(a1 + 128) = v29;
          goto LABEL_86;
        }

        v39 = google::protobuf::internal::VarintParseSlow64(v8, v29);
        v46 = v39;
        *(a1 + 128) = v40;
        if (!v39)
        {
          goto LABEL_89;
        }
      }

LABEL_86:
      v45 = *(a3 + 92);
      if (sub_27662CC00(a3, &v46))
      {
        goto LABEL_2;
      }
    }

    v8 = (v46 + 2);
LABEL_6:
    v46 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v46;
}

unsigned __int8 *TSCK::OperationStorage::_InternalSerialize(TSCK::OperationStorage *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 12);
    *v4 = 10;
    v9 = *(v8 + 5);
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v12 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = v4 + 3;
        do
        {
          *(v10 - 1) = v12 | 0x80;
          v15 = v12 >> 7;
          ++v10;
          v16 = v12 >> 14;
          v12 >>= 7;
        }

        while (v16);
        *(v10 - 1) = v15;
      }

      else
      {
        v4[2] = v12;
        v10 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v9;
      v10 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v8, v10, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_4;
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

  v17 = *(this + 14);
  *v4 = 16;
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
      if ((v6 & 8) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v4[2] = v18;
      v4 += 3;
      if ((v6 & 8) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v4[1] = v17;
    v4 += 2;
    if ((v6 & 8) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_4:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 30);
  *v4 = 24;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v11 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v11 | 0x80;
        v13 = v11 >> 7;
        ++v4;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
    }

    else
    {
      v4[2] = v11;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_34:
  if (*(this + 6) >= 1)
  {
    v4 = sub_27660EAE0(a3, 4, this + 24, v4);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v21 = *(this + 31);
    *v4 = 40;
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
      }

      else
      {
        v4[2] = v22;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v21;
      v4 += 2;
    }
  }

  if (*(this + 12) >= 1)
  {
    v4 = sub_27660EAE0(a3, 6, this + 48, v4);
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(this + 32);
    *v4 = 56;
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
      }

      else
      {
        v4[2] = v26;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v25;
      v4 += 2;
    }
  }

  if (*(this + 18) >= 1)
  {
    v4 = sub_27660EAE0(a3, 8, this + 72, v4);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v29 = *(this + 13);
    *v4 = 74;
    v30 = *(v29 + 10);
    if (v30 > 0x7F)
    {
      v4[1] = v30 | 0x80;
      v32 = v30 >> 7;
      if (v30 >> 14)
      {
        v31 = v4 + 3;
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
        v4[2] = v32;
        v31 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v30;
      v31 = v4 + 2;
    }

    v4 = TSP::IndexSet::_InternalSerialize(v29, v31, a3);
  }

  v35 = *(this + 1);
  if ((v35 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v35 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

_BYTE *sub_27660EAE0(google::protobuf::io::EpsCopyOutputStream *this, int a2, uint64_t a3, unsigned __int8 *a4)
{
  if (*this <= a4)
  {
    a4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a4);
  }

  v7 = 8 * *a3;
  v8 = sub_27662DB40(this, a2, v7, a4);
  v9 = v8;
  v10 = *(a3 + 8);
  if (*this - v8 < v7)
  {

    return MEMORY[0x2821EAB38](this, v10, v7, v8);
  }

  else
  {
    memcpy(v8, v10, v7);
    return &v9[v7];
  }
}

uint64_t TSCK::OperationStorage::RequiredFieldsByteSizeFallback(TSCK::OperationStorage *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(this + 12));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 14) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  return result;
}

unint64_t TSCK::OperationStorage::ByteSizeLong(TSP::Reference **this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    v3 = TSCK::OperationStorage::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(this[12]);
    v3 = v2 + ((9 * (__clz(this[14] | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v4 = *(this + 6);
  v5 = 8 * v4;
  if (v4)
  {
    LODWORD(v4) = 8 * v4;
    if ((v5 & 0x80000000) != 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v6;
  }

  *(this + 10) = v4;
  v7 = v3 + v5;
  v8 = *(this + 12);
  v9 = 8 * v8;
  if (v8)
  {
    LODWORD(v8) = 8 * v8;
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v7 += v10;
  }

  *(this + 16) = v8;
  v11 = v7 + v9;
  v12 = *(this + 18);
  v13 = 8 * v12;
  if (v12)
  {
    LODWORD(v12) = 8 * v12;
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v11 += v14;
  }

  *(this + 22) = v12;
  v15 = v11 + v13;
  v16 = *(this + 4);
  if ((v16 & 2) != 0)
  {
    v17 = TSP::IndexSet::ByteSizeLong(this[13]);
    v15 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v16 & 0x38) == 0)
  {
    goto LABEL_29;
  }

  if ((v16 & 8) == 0)
  {
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_24;
    }

LABEL_35:
    v25 = *(this + 31);
    v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v25 >= 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 11;
    }

    v15 += v27;
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v22 = *(this + 30);
  v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 11;
  }

  v15 += v24;
  if ((v16 & 0x10) != 0)
  {
    goto LABEL_35;
  }

LABEL_24:
  if ((v16 & 0x20) != 0)
  {
LABEL_25:
    v18 = *(this + 32);
    v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v18 >= 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 11;
    }

    v15 += v20;
  }

LABEL_29:
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v15, this + 20);
  }

  else
  {
    *(this + 5) = v15;
    return v15;
  }
}

uint64_t TSCK::OperationStorage::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::OperationStorage::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::OperationStorage::MergeFrom(uint64_t this, const TSCK::OperationStorage *a2)
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
    v6 = *(v3 + 24);
    sub_27662CDBC((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 6);
    this = memcpy((v7 + 8 * v6), *(a2 + 4), 8 * *(a2 + 6));
  }

  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = *(v3 + 48);
    sub_27662CDBC((v3 + 48), v9 + v8);
    v10 = *(v3 + 56);
    *(v3 + 48) += *(a2 + 12);
    this = memcpy((v10 + 8 * v9), *(a2 + 7), 8 * *(a2 + 12));
  }

  v11 = *(a2 + 18);
  if (v11)
  {
    v12 = *(v3 + 72);
    sub_27662CDBC((v3 + 72), v12 + v11);
    v13 = *(v3 + 80);
    *(v3 + 72) += *(a2 + 18);
    this = memcpy((v13 + 8 * v12), *(a2 + 10), 8 * *(a2 + 18));
  }

  v14 = *(a2 + 4);
  if ((v14 & 0x3F) != 0)
  {
    if (v14)
    {
      *(v3 + 16) |= 1u;
      v15 = *(v3 + 96);
      if (!v15)
      {
        v16 = *(v3 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C994F0](v16);
        *(v3 + 96) = v15;
      }

      if (*(a2 + 12))
      {
        v17 = *(a2 + 12);
      }

      else
      {
        v17 = MEMORY[0x277D80A18];
      }

      this = TSP::Reference::MergeFrom(v15, v17);
      if ((v14 & 2) == 0)
      {
LABEL_12:
        if ((v14 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_35;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(v3 + 16) |= 2u;
    v18 = *(v3 + 104);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = MEMORY[0x277C994D0](v19);
      *(v3 + 104) = v18;
    }

    if (*(a2 + 13))
    {
      v20 = *(a2 + 13);
    }

    else
    {
      v20 = MEMORY[0x277D80A08];
    }

    this = TSP::IndexSet::MergeFrom(v18, v20);
    if ((v14 & 4) == 0)
    {
LABEL_13:
      if ((v14 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_36;
    }

LABEL_35:
    *(v3 + 112) = *(a2 + 14);
    if ((v14 & 8) == 0)
    {
LABEL_14:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_37;
    }

LABEL_36:
    *(v3 + 120) = *(a2 + 30);
    if ((v14 & 0x10) == 0)
    {
LABEL_15:
      if ((v14 & 0x20) == 0)
      {
LABEL_17:
        *(v3 + 16) |= v14;
        return this;
      }

LABEL_16:
      *(v3 + 128) = *(a2 + 32);
      goto LABEL_17;
    }

LABEL_37:
    *(v3 + 124) = *(a2 + 31);
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  return this;
}

uint64_t *TSCK::OperationStorage::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::OperationStorage::Clear(result);

    return TSCK::OperationStorage::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::OperationStorage::CopyFrom(uint64_t *this, const TSCK::OperationStorage *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::OperationStorage::Clear(this);

    return TSCK::OperationStorage::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::OperationStorage::IsInitialized(TSCK::OperationStorage *this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    return 0;
  }

  result = TSP::Reference::IsInitialized(*(this + 12));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::IndexSet::IsInitialized(*(this + 13));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCK::OperationStorage::InternalSwap(TSCK::OperationStorage *this, TSCK::OperationStorage *a2)
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
  v9 = *(this + 9);
  v10 = *(this + 10);
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  v11 = *(this + 12);
  v12 = *(this + 13);
  *(this + 6) = *(a2 + 6);
  *(a2 + 12) = v11;
  *(a2 + 13) = v12;
  v13 = *(this + 14);
  v14 = *(this + 15);
  result = *(a2 + 7);
  *(this + 7) = result;
  *(a2 + 14) = v13;
  *(a2 + 15) = v14;
  LODWORD(v13) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v13;
  return result;
}

uint64_t TSCK::OperationStorage::GetMetadata(TSCK::OperationStorage *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[52];
  v2 = off_2812F9CC0[53];
  return result;
}

TSP::LargeObjectArray *TSCK::OutgoingCommandQueue::clear_large_object_array(TSCK::OutgoingCommandQueue *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::LargeObjectArray::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::OutgoingCommandQueue *TSCK::OutgoingCommandQueue::OutgoingCommandQueue(TSCK::OutgoingCommandQueue *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885706A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_OutgoingCommandQueue_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885706A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_OutgoingCommandQueue_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCK::OutgoingCommandQueue *TSCK::OutgoingCommandQueue::OutgoingCommandQueue(TSCK::OutgoingCommandQueue *this, const TSCK::OutgoingCommandQueue *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885706A8;
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

void TSCK::OutgoingCommandQueue::~OutgoingCommandQueue(TSCK::OutgoingCommandQueue *this)
{
  if (this != &TSCK::_OutgoingCommandQueue_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C99110]();
    MEMORY[0x277C999C0](v2, 0x10A1C40D4912B22);
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::OutgoingCommandQueue::~OutgoingCommandQueue(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::OutgoingCommandQueue::default_instance(TSCK::OutgoingCommandQueue *this)
{
  if (atomic_load_explicit(scc_info_OutgoingCommandQueue_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_OutgoingCommandQueue_default_instance_;
}

uint64_t *TSCK::OutgoingCommandQueue::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::LargeObjectArray::Clear(this[3]);
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

google::protobuf::internal *TSCK::OutgoingCommandQueue::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v13 = MEMORY[0x277C99470](v12);
        LODWORD(v11) = v13;
        *(a1 + 24) = v13;
        v6 = v18;
      }

      v10 = sub_276636510(a3, v11, v6);
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

unsigned __int8 *TSCK::OutgoingCommandQueue::_InternalSerialize(TSCK::OutgoingCommandQueue *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::LargeObjectArray::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::OutgoingCommandQueue::ByteSizeLong(TSP::LargeObjectArray **this)
{
  if (this[2])
  {
    v3 = TSP::LargeObjectArray::ByteSizeLong(this[3]);
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

uint64_t TSCK::OutgoingCommandQueue::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::OutgoingCommandQueue::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::OutgoingCommandQueue::MergeFrom(uint64_t this, const TSCK::OutgoingCommandQueue *a2)
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

      *(v3 + 24) = MEMORY[0x277C99470](v6);
      v7 = *(a2 + 3);
    }

    return MEMORY[0x2821EA828]();
  }

  return this;
}

uint64_t *TSCK::OutgoingCommandQueue::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::OutgoingCommandQueue::Clear(result);

    return TSCK::OutgoingCommandQueue::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::OutgoingCommandQueue::CopyFrom(uint64_t *this, const TSCK::OutgoingCommandQueue *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::OutgoingCommandQueue::Clear(this);

    return TSCK::OutgoingCommandQueue::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::OutgoingCommandQueue::IsInitialized(TSCK::OutgoingCommandQueue *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::LargeObjectArray::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSCK::OutgoingCommandQueue::InternalSwap(TSCK::OutgoingCommandQueue *this, TSCK::OutgoingCommandQueue *a2)
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

uint64_t TSCK::OutgoingCommandQueue::GetMetadata(TSCK::OutgoingCommandQueue *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[54];
  v2 = off_2812F9CC0[55];
  return result;
}

TSP::LargeObjectArraySegment *TSCK::OutgoingCommandQueueSegment::clear_large_object_array_segment(TSCK::OutgoingCommandQueueSegment *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::LargeObjectArraySegment::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::OutgoingCommandQueueSegment *TSCK::OutgoingCommandQueueSegment::OutgoingCommandQueueSegment(TSCK::OutgoingCommandQueueSegment *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570758;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_OutgoingCommandQueueSegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288570758;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_OutgoingCommandQueueSegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCK::OutgoingCommandQueueSegment *TSCK::OutgoingCommandQueueSegment::OutgoingCommandQueueSegment(TSCK::OutgoingCommandQueueSegment *this, const TSCK::OutgoingCommandQueueSegment *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570758;
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

void TSCK::OutgoingCommandQueueSegment::~OutgoingCommandQueueSegment(TSCK::OutgoingCommandQueueSegment *this)
{
  if (this != &TSCK::_OutgoingCommandQueueSegment_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C991B0]();
    MEMORY[0x277C999C0](v2, 0x10A1C40D196C376);
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::OutgoingCommandQueueSegment::~OutgoingCommandQueueSegment(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::OutgoingCommandQueueSegment::default_instance(TSCK::OutgoingCommandQueueSegment *this)
{
  if (atomic_load_explicit(scc_info_OutgoingCommandQueueSegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_OutgoingCommandQueueSegment_default_instance_;
}

uint64_t *TSCK::OutgoingCommandQueueSegment::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::LargeObjectArraySegment::Clear(this[3]);
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

google::protobuf::internal *TSCK::OutgoingCommandQueueSegment::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v13 = MEMORY[0x277C99490](v12);
        LODWORD(v11) = v13;
        *(a1 + 24) = v13;
        v6 = v18;
      }

      v10 = sub_276635810(a3, v11, v6);
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

unsigned __int8 *TSCK::OutgoingCommandQueueSegment::_InternalSerialize(TSCK::OutgoingCommandQueueSegment *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::LargeObjectArraySegment::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::OutgoingCommandQueueSegment::ByteSizeLong(TSP::LargeObjectArraySegment **this)
{
  if (this[2])
  {
    v3 = TSP::LargeObjectArraySegment::ByteSizeLong(this[3]);
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

uint64_t TSCK::OutgoingCommandQueueSegment::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::OutgoingCommandQueueSegment::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::OutgoingCommandQueueSegment::MergeFrom(uint64_t this, const TSCK::OutgoingCommandQueueSegment *a2)
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

      *(v3 + 24) = MEMORY[0x277C99490](v6);
      v7 = *(a2 + 3);
    }

    return MEMORY[0x2821EA8F0]();
  }

  return this;
}

uint64_t *TSCK::OutgoingCommandQueueSegment::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::OutgoingCommandQueueSegment::Clear(result);

    return TSCK::OutgoingCommandQueueSegment::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::OutgoingCommandQueueSegment::CopyFrom(uint64_t *this, const TSCK::OutgoingCommandQueueSegment *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::OutgoingCommandQueueSegment::Clear(this);

    return TSCK::OutgoingCommandQueueSegment::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::OutgoingCommandQueueSegment::IsInitialized(TSCK::OutgoingCommandQueueSegment *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::LargeObjectArraySegment::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSCK::OutgoingCommandQueueSegment::InternalSwap(TSCK::OutgoingCommandQueueSegment *this, TSCK::OutgoingCommandQueueSegment *a2)
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

uint64_t TSCK::OutgoingCommandQueueSegment::GetMetadata(TSCK::OutgoingCommandQueueSegment *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[56];
  v2 = off_2812F9CC0[57];
  return result;
}

TSK::CommandArchive *TSCK::CommandAssetChunkArchive::clear_super(TSCK::CommandAssetChunkArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSCK::CommandAssetChunkArchive *TSCK::CommandAssetChunkArchive::CommandAssetChunkArchive(TSCK::CommandAssetChunkArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570808;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CommandAssetChunkArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return this;
}

TSCK::CommandAssetChunkArchive *TSCK::CommandAssetChunkArchive::CommandAssetChunkArchive(TSCK::CommandAssetChunkArchive *this, const TSCK::CommandAssetChunkArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570808;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(this + 1, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  v7 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  if (v5)
  {
    v8 = *(a2 + 3);
    if (*v4)
    {
      v12 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v5 = *(a2 + 4);
  }

  *(this + 4) = v7;
  if ((v5 & 2) != 0)
  {
    v9 = *(a2 + 4);
    if (*v4)
    {
      v13 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v5 = *(a2 + 4);
  }

  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  v10 = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 3) = v10;
  return this;
}

void TSCK::CommandAssetChunkArchive::~CommandAssetChunkArchive(TSCK::CommandAssetChunkArchive *this)
{
  v2 = *(this + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C999C0](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x277C999C0](v4, 0x1012C40EC159624);
  }

  if (this != &TSCK::_CommandAssetChunkArchive_default_instance_ && *(this + 5))
  {
    v5 = MEMORY[0x277C98FA0]();
    MEMORY[0x277C999C0](v5, 0x10A1C40C24530F0);
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::CommandAssetChunkArchive::~CommandAssetChunkArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::CommandAssetChunkArchive::default_instance(TSCK::CommandAssetChunkArchive *this)
{
  if (atomic_load_explicit(scc_info_CommandAssetChunkArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_CommandAssetChunkArchive_default_instance_;
}

uint64_t *TSCK::CommandAssetChunkArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    this = TSK::CommandArchive::Clear(this[5]);
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((v2 & 0x38) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
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

google::protobuf::internal *TSCK::CommandAssetChunkArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v40 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v40) & 1) == 0)
  {
    while (1)
    {
      v8 = (v40 + 1);
      v9 = *v40;
      if ((*v40 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v40, (v10 - 128));
      v40 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_65;
      }

      v8 = TagFallback;
      v9 = v31;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 3)
      {
        if (v11 != 1)
        {
          if (v11 == 2)
          {
            if (v9 != 18)
            {
              goto LABEL_46;
            }

            *(a1 + 16) |= 1u;
            v24 = *(a1 + 8);
            if (v24)
            {
              v39 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }
          }

          else
          {
            if (v11 != 3 || v9 != 26)
            {
LABEL_46:
              if (v9)
              {
                v28 = (v9 & 7) == 4;
              }

              else
              {
                v28 = 1;
              }

              if (v28)
              {
                *(a3 + 80) = v9 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_27662D0DC((a1 + 8));
              }

              v20 = google::protobuf::internal::UnknownFieldParse();
              goto LABEL_53;
            }

            *(a1 + 16) |= 2u;
            v13 = *(a1 + 8);
            if (v13)
            {
              v38 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }
          }

          google::protobuf::internal::ArenaStringPtr::Mutable();
          v20 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_53;
        }

        if (v9 != 10)
        {
          goto LABEL_46;
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

          v19 = MEMORY[0x277C99420](v18);
          LODWORD(v17) = v19;
          *(a1 + 40) = v19;
          v8 = v40;
        }

        v20 = sub_276635B50(a3, v17, v8);
LABEL_53:
        v40 = v20;
        if (!v20)
        {
          goto LABEL_65;
        }

        goto LABEL_54;
      }

      if (v11 == 4)
      {
        if (v9 != 32)
        {
          goto LABEL_46;
        }

        v6 |= 8u;
        v22 = (v8 + 1);
        v21 = *v8;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if ((v23 & 0x80000000) == 0)
        {
          v22 = (v8 + 2);
LABEL_36:
          v40 = v22;
          *(a1 + 48) = v21;
          goto LABEL_54;
        }

        v32 = google::protobuf::internal::VarintParseSlow64(v8, v21);
        v40 = v32;
        *(a1 + 48) = v33;
        if (!v32)
        {
          goto LABEL_65;
        }
      }

      else if (v11 == 5)
      {
        if (v9 != 40)
        {
          goto LABEL_46;
        }

        v6 |= 0x10u;
        v26 = (v8 + 1);
        v25 = *v8;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_45;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if ((v27 & 0x80000000) == 0)
        {
          v26 = (v8 + 2);
LABEL_45:
          v40 = v26;
          *(a1 + 56) = v25;
          goto LABEL_54;
        }

        v36 = google::protobuf::internal::VarintParseSlow64(v8, v25);
        v40 = v36;
        *(a1 + 56) = v37;
        if (!v36)
        {
LABEL_65:
          v40 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v11 != 6 || v9 != 48)
        {
          goto LABEL_46;
        }

        v6 |= 0x20u;
        v15 = (v8 + 1);
        v14 = *v8;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if ((v16 & 0x80000000) == 0)
        {
          v15 = (v8 + 2);
LABEL_25:
          v40 = v15;
          *(a1 + 64) = v14;
          goto LABEL_54;
        }

        v34 = google::protobuf::internal::VarintParseSlow64(v8, v14);
        v40 = v34;
        *(a1 + 64) = v35;
        if (!v34)
        {
          goto LABEL_65;
        }
      }

LABEL_54:
      v29 = *(a3 + 92);
      if (sub_27662CC00(a3, &v40))
      {
        goto LABEL_2;
      }
    }

    v8 = (v40 + 2);
LABEL_6:
    v40 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v40;
}

unsigned __int8 *TSCK::CommandAssetChunkArchive::_InternalSerialize(TSCK::CommandAssetChunkArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 5);
    *v4 = 10;
    v9 = *(v8 + 5);
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v12 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = v4 + 3;
        do
        {
          *(v10 - 1) = v12 | 0x80;
          v15 = v12 >> 7;
          ++v10;
          v16 = v12 >> 14;
          v12 >>= 7;
        }

        while (v16);
        *(v10 - 1) = v15;
      }

      else
      {
        v4[2] = v12;
        v10 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v9;
      v10 = v4 + 2;
    }

    v4 = TSK::CommandArchive::_InternalSerialize(v8, v10, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_2765FB858(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_28:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v17 = *(this + 6);
    *v4 = 32;
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
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v4[2] = v18;
        v4 += 3;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v4[1] = v17;
      v4 += 2;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_7;
  }

LABEL_27:
  v4 = sub_2765FB858(a3, 3, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) != 0)
  {
    goto LABEL_28;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_39:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 7);
  *v4 = 40;
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
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v4[2] = v22;
      v4 += 3;
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_50;
      }
    }
  }

  else
  {
    v4[1] = v21;
    v4 += 2;
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_50;
    }
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 8);
  *v4 = 48;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v11 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v11 | 0x80;
        v13 = v11 >> 7;
        ++v4;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
    }

    else
    {
      v4[2] = v11;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_50:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v25 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSCK::CommandAssetChunkArchive::RequiredFieldsByteSizeFallback(TSCK::CommandAssetChunkArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 4) != 0)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 5));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 8) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 6) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    result += ((9 * (__clz(*(this + 7) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v2 & 0x20) == 0)
    {
      return result;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    return result;
  }

  result += ((9 * (__clz(*(this + 8) | 1) ^ 0x3F) + 73) >> 6) + 1;
  return result;
}

unint64_t TSCK::CommandAssetChunkArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if ((~*(this + 4) & 0x3C) != 0)
  {
    v3 = TSCK::CommandAssetChunkArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(this[5]);
    v3 = v2 + ((9 * (__clz(this[6] | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(this[7] | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(this[8] | 1) ^ 0x3F) + 73) >> 6) + 4;
  }

  v4 = *(this + 4);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v4 & 2) != 0)
    {
      v8 = this[4] & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

uint64_t TSCK::CommandAssetChunkArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::CommandAssetChunkArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::CommandAssetChunkArchive::MergeFrom(uint64_t this, const TSCK::CommandAssetChunkArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x3F) != 0)
  {
    if (v5)
    {
      v6 = *(a2 + 3);
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 8);
      if (v7)
      {
        v13 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

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

    v8 = *(a2 + 4);
    *(v3 + 16) |= 2u;
    v9 = *(v3 + 8);
    if (v9)
    {
      v14 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_19:
    *(v3 + 16) |= 4u;
    v10 = *(v3 + 40);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C99420](v11);
      *(v3 + 40) = v10;
    }

    if (*(a2 + 5))
    {
      v12 = *(a2 + 5);
    }

    else
    {
      v12 = MEMORY[0x277D80718];
    }

    this = TSK::CommandArchive::MergeFrom(v10, v12);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(v3 + 48) = *(a2 + 6);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
LABEL_11:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_10:
      *(v3 + 64) = *(a2 + 8);
      goto LABEL_11;
    }

LABEL_28:
    *(v3 + 56) = *(a2 + 7);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSCK::CommandAssetChunkArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::CommandAssetChunkArchive::Clear(result);

    return TSCK::CommandAssetChunkArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::CommandAssetChunkArchive::CopyFrom(uint64_t *this, const TSCK::CommandAssetChunkArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::CommandAssetChunkArchive::Clear(this);

    return TSCK::CommandAssetChunkArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::CommandAssetChunkArchive::IsInitialized(TSK::CommandArchive **this)
{
  if ((~*(this + 4) & 0x3C) != 0)
  {
    return 0;
  }

  else
  {
    return TSK::CommandArchive::IsInitialized(this[5]);
  }
}

__n128 TSCK::CommandAssetChunkArchive::InternalSwap(TSCK::CommandAssetChunkArchive *this, TSCK::CommandAssetChunkArchive *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
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

uint64_t TSCK::CommandAssetChunkArchive::GetMetadata(TSCK::CommandAssetChunkArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[58];
  v2 = off_2812F9CC0[59];
  return result;
}

TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::AssetUploadStatusCommandArchive_AssetUploadStatusInfo(TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885708B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_AssetUploadStatusCommandArchive_AssetUploadStatusInfo_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 8) = 0;
  return this;
}

TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::AssetUploadStatusCommandArchive_AssetUploadStatusInfo(TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *this, const TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885708B8;
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
  }

  *(this + 8) = *(a2 + 8);
  return this;
}

void TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::~AssetUploadStatusCommandArchive_AssetUploadStatusInfo(TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *this)
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

  sub_2765F8538(this + 1);
}

{
  TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::~AssetUploadStatusCommandArchive_AssetUploadStatusInfo(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::default_instance(TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *this)
{
  if (atomic_load_explicit(scc_info_AssetUploadStatusCommandArchive_AssetUploadStatusInfo_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_AssetUploadStatusCommandArchive_AssetUploadStatusInfo_default_instance_;
}

uint64_t *TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::Clear(TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *this)
{
  if (*(this + 16))
  {
    v1 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  v3 = *(this + 8);
  result = (this + 8);
  *(result + 6) = 0;
  *(result + 2) = 0;
  if (v3)
  {
    return sub_27662D2EC(result);
  }

  return result;
}

google::protobuf::internal *TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = *(a3 + 92);
  while ((sub_27662CC00(a3, &v23) & 1) == 0)
  {
    v6 = (v23 + 1);
    v7 = *v23;
    if ((*v23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v23 + 2);
LABEL_6:
      v23 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v8 - 128));
    v23 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v19;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 16)
      {
        v12 = (v6 + 1);
        v13 = *v6;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v14 = *v12;
        v15 = (v14 << 7) + v13;
        v13 = (v15 - 128);
        if (v14 < 0)
        {
          v23 = google::protobuf::internal::VarintParseSlow64(v6, (v15 - 128));
          if (!v23)
          {
            return 0;
          }

          v13 = v20;
        }

        else
        {
          v12 = (v6 + 2);
LABEL_23:
          v23 = v12;
        }

        if (TSP::DataUploadStatus_IsValid(v13))
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v13;
        }

        else
        {
          sub_2766371C8((a1 + 8));
        }

        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v16 = *(a1 + 8);
      if (v16)
      {
        v21 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Mutable();
      v11 = google::protobuf::internal::InlineGreedyStringParser();
      goto LABEL_29;
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
      return v23;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27662D0DC((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_29:
    v23 = v11;
    if (!v11)
    {
      return 0;
    }

LABEL_30:
    v17 = *(a3 + 92);
  }

  return v23;
}

unsigned __int8 *TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::_InternalSerialize(TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2765FB858(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 8);
    *v4 = 16;
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
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
    }
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::ByteSizeLong(TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_13;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
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
LABEL_9:
    v6 = *(this + 8);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v7;
  }

LABEL_13:
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::MergeFrom(uint64_t this, const TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *a2)
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
        v8 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

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

TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::CopyFrom(TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::Clear(result);

    return TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::MergeFrom(v4, a2);
  }

  return result;
}

TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::CopyFrom(TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *this, const TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::Clear(this);

    return TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::InternalSwap(TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *this, TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *a2)
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

uint64_t TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::GetMetadata(TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[60];
  v2 = off_2812F9CC0[61];
  return result;
}

TSK::CommandArchive *TSCK::AssetUploadStatusCommandArchive::clear_super(TSCK::AssetUploadStatusCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::AssetUploadStatusCommandArchive *TSCK::AssetUploadStatusCommandArchive::AssetUploadStatusCommandArchive(TSCK::AssetUploadStatusCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570968;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_AssetUploadStatusCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCK::AssetUploadStatusCommandArchive *TSCK::AssetUploadStatusCommandArchive::AssetUploadStatusCommandArchive(TSCK::AssetUploadStatusCommandArchive *this, const TSCK::AssetUploadStatusCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570968;
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
    sub_27662DC58(this + 24, v8, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void sub_276611EB0(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v2, 0x10A1C40C24530F0);
  sub_27662DBD4((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCK::AssetUploadStatusCommandArchive::~AssetUploadStatusCommandArchive(TSCK::AssetUploadStatusCommandArchive *this)
{
  if (this != &TSCK::_AssetUploadStatusCommandArchive_default_instance_ && *(this + 6))
  {
    v2 = MEMORY[0x277C98FA0]();
    MEMORY[0x277C999C0](v2, 0x10A1C40C24530F0);
  }

  sub_2765F8538(this + 1);
  sub_27662DBD4(this + 3);
}

{
  TSCK::AssetUploadStatusCommandArchive::~AssetUploadStatusCommandArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::AssetUploadStatusCommandArchive::default_instance(TSCK::AssetUploadStatusCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_AssetUploadStatusCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_AssetUploadStatusCommandArchive_default_instance_;
}

uint64_t *TSCK::AssetUploadStatusCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSK::CommandArchive::Clear(*(v1 + 48));
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

google::protobuf::internal *TSCK::AssetUploadStatusCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = *(a3 + 92);
  while (1)
  {
    if (sub_27662CC00(a3, &v28))
    {
      return v28;
    }

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
    v7 = v26;
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
    v21 = *(a1 + 48);
    if (!v21)
    {
      v22 = *(a1 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x277C99420](v22);
      LODWORD(v21) = v23;
      *(a1 + 48) = v23;
      v6 = v28;
    }

    v11 = sub_276635B50(a3, v21, v6);
LABEL_38:
    v28 = v11;
    if (!v11)
    {
      return 0;
    }

LABEL_39:
    v24 = *(a3 + 92);
  }

  if (v7 == 18)
  {
    v12 = (v6 - 1);
    while (1)
    {
      v13 = (v12 + 1);
      v28 = (v12 + 1);
      v14 = *(a1 + 40);
      if (!v14)
      {
        break;
      }

      v20 = *(a1 + 32);
      v16 = *v14;
      if (v20 < *v14)
      {
        *(a1 + 32) = v20 + 1;
        v17 = *&v14[2 * v20 + 2];
        goto LABEL_27;
      }

      if (v16 == *(a1 + 36))
      {
        goto LABEL_23;
      }

LABEL_24:
      *v14 = v16 + 1;
      v17 = google::protobuf::Arena::CreateMaybeMessage<TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo>(*(a1 + 24));
      v18 = *(a1 + 32);
      v19 = *(a1 + 40) + 8 * v18;
      *(a1 + 32) = v18 + 1;
      *(v19 + 8) = v17;
      v13 = v28;
LABEL_27:
      v12 = sub_2766365E0(a3, v17, v13);
      v28 = v12;
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
  return v28;
}

unsigned __int8 *TSCK::AssetUploadStatusCommandArchive::_InternalSerialize(TSCK::AssetUploadStatusCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSK::CommandArchive::_InternalSerialize(v5, v7, a3);
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

      a2 = TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::AssetUploadStatusCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if (this[2])
  {
    v3 = TSK::CommandArchive::ByteSizeLong(this[6]);
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
      v10 = TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::ByteSizeLong(v9);
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

uint64_t TSCK::AssetUploadStatusCommandArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::AssetUploadStatusCommandArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::AssetUploadStatusCommandArchive::MergeFrom(uint64_t this, const TSCK::AssetUploadStatusCommandArchive *a2)
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
    this = sub_27662DC58(v3 + 24, v8, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

      v12 = MEMORY[0x277C99420](v13);
      *(v3 + 48) = v12;
      v11 = *(a2 + 6);
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = MEMORY[0x277D80718];
    }

    return TSK::CommandArchive::MergeFrom(v12, v14);
  }

  return this;
}

uint64_t *TSCK::AssetUploadStatusCommandArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::AssetUploadStatusCommandArchive::Clear(result);

    return TSCK::AssetUploadStatusCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::AssetUploadStatusCommandArchive::CopyFrom(uint64_t *this, const TSCK::AssetUploadStatusCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::AssetUploadStatusCommandArchive::Clear(this);

    return TSCK::AssetUploadStatusCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::AssetUploadStatusCommandArchive::IsInitialized(TSK::CommandArchive **this)
{
  if (this[2])
  {
    return TSK::CommandArchive::IsInitialized(this[6]);
  }

  else
  {
    return 0;
  }
}

__n128 TSCK::AssetUploadStatusCommandArchive::InternalSwap(__n128 *this, __n128 *a2)
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

uint64_t TSCK::AssetUploadStatusCommandArchive::GetMetadata(TSCK::AssetUploadStatusCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[62];
  v2 = off_2812F9CC0[63];
  return result;
}

TSK::CommandArchive *TSCK::AssetUnmaterializedOnServerCommandArchive::clear_super(TSCK::AssetUnmaterializedOnServerCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::AssetUnmaterializedOnServerCommandArchive *TSCK::AssetUnmaterializedOnServerCommandArchive::AssetUnmaterializedOnServerCommandArchive(TSCK::AssetUnmaterializedOnServerCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570A18;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_AssetUnmaterializedOnServerCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCK::AssetUnmaterializedOnServerCommandArchive *TSCK::AssetUnmaterializedOnServerCommandArchive::AssetUnmaterializedOnServerCommandArchive(TSCK::AssetUnmaterializedOnServerCommandArchive *this, const TSCK::AssetUnmaterializedOnServerCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570A18;
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

void sub_276612A2C(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v2, 0x10A1C40C24530F0);
  sub_27662D62C((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCK::AssetUnmaterializedOnServerCommandArchive::~AssetUnmaterializedOnServerCommandArchive(TSCK::AssetUnmaterializedOnServerCommandArchive *this)
{
  if (this != &TSCK::_AssetUnmaterializedOnServerCommandArchive_default_instance_ && *(this + 6))
  {
    v2 = MEMORY[0x277C98FA0]();
    MEMORY[0x277C999C0](v2, 0x10A1C40C24530F0);
  }

  sub_2765F8538(this + 1);
  sub_27662D62C(this + 3);
}

{
  TSCK::AssetUnmaterializedOnServerCommandArchive::~AssetUnmaterializedOnServerCommandArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::AssetUnmaterializedOnServerCommandArchive::default_instance(TSCK::AssetUnmaterializedOnServerCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_AssetUnmaterializedOnServerCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_AssetUnmaterializedOnServerCommandArchive_default_instance_;
}

uint64_t *TSCK::AssetUnmaterializedOnServerCommandArchive::Clear(TSK::CommandArchive **this)
{
  result = sub_27662D254((this + 3));
  if (this[2])
  {
    result = TSK::CommandArchive::Clear(this[6]);
  }

  v4 = *(this + 8);
  v3 = (this + 1);
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return result;
}

google::protobuf::internal *TSCK::AssetUnmaterializedOnServerCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = *(a3 + 92);
  while (1)
  {
    if (sub_27662CC00(a3, &v28))
    {
      return v28;
    }

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
    v7 = v26;
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
    v21 = *(a1 + 48);
    if (!v21)
    {
      v22 = *(a1 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x277C99420](v22);
      LODWORD(v21) = v23;
      *(a1 + 48) = v23;
      v6 = v28;
    }

    v11 = sub_276635B50(a3, v21, v6);
LABEL_37:
    v28 = v11;
    if (!v11)
    {
      return 0;
    }

LABEL_38:
    v24 = *(a3 + 92);
  }

  if (v7 == 18)
  {
    v12 = v6 - 1;
    while (1)
    {
      v28 = (v12 + 1);
      v13 = *(a1 + 40);
      if (!v13)
      {
        break;
      }

      v14 = *(a1 + 32);
      v15 = *v13;
      if (v14 >= *v13)
      {
        if (v15 == *(a1 + 36))
        {
LABEL_26:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v13 = *(a1 + 40);
          v15 = *v13;
        }

        *v13 = v15 + 1;
        v18 = sub_27662CC78(*(a1 + 24));
        v19 = *(a1 + 32);
        v20 = *(a1 + 40) + 8 * v19;
        *(a1 + 32) = v19 + 1;
        *(v20 + 8) = v18;
        goto LABEL_28;
      }

      *(a1 + 32) = v14 + 1;
      v16 = *&v13[2 * v14 + 2];
LABEL_28:
      v12 = google::protobuf::internal::InlineGreedyStringParser();
      v28 = v12;
      if (!v12)
      {
        return 0;
      }

      if (*a3 <= v12 || *v12 != 18)
      {
        goto LABEL_38;
      }
    }

    v17 = *(a1 + 36);
    goto LABEL_26;
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
    goto LABEL_37;
  }

  *(a3 + 80) = v7 - 1;
  return v28;
}

unsigned __int8 *TSCK::AssetUnmaterializedOnServerCommandArchive::_InternalSerialize(TSCK::AssetUnmaterializedOnServerCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *v4 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      v4[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = v4 + 3;
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
        v4[2] = v9;
        v8 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v7;
      v8 = v4 + 2;
    }

    v4 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(this + 8);
  if (v12 >= 1)
  {
    v13 = 8;
    do
    {
      v4 = sub_27660B498(a3, 2, *(*(this + 5) + v13), v4);
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSCK::AssetUnmaterializedOnServerCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if (this[2])
  {
    v3 = TSK::CommandArchive::ByteSizeLong(this[6]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  if (v4 >= 1)
  {
    v6 = (this[5] + 8);
    do
    {
      v7 = *v6++;
      v8 = *(v7 + 23);
      v9 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v9 = v8;
      }

      v5 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      --v4;
    }

    while (v4);
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

uint64_t TSCK::AssetUnmaterializedOnServerCommandArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::AssetUnmaterializedOnServerCommandArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::AssetUnmaterializedOnServerCommandArchive::MergeFrom(uint64_t this, const TSCK::AssetUnmaterializedOnServerCommandArchive *a2)
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

      v12 = MEMORY[0x277C99420](v13);
      *(v3 + 48) = v12;
      v11 = *(a2 + 6);
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = MEMORY[0x277D80718];
    }

    return TSK::CommandArchive::MergeFrom(v12, v14);
  }

  return this;
}

TSK::CommandArchive **TSCK::AssetUnmaterializedOnServerCommandArchive::CopyFrom(TSK::CommandArchive **result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::AssetUnmaterializedOnServerCommandArchive::Clear(result);

    return TSCK::AssetUnmaterializedOnServerCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

TSK::CommandArchive **TSCK::AssetUnmaterializedOnServerCommandArchive::CopyFrom(TSK::CommandArchive **this, TSK::CommandArchive **a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::AssetUnmaterializedOnServerCommandArchive::Clear(this);

    return TSCK::AssetUnmaterializedOnServerCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::AssetUnmaterializedOnServerCommandArchive::IsInitialized(TSK::CommandArchive **this)
{
  if (this[2])
  {
    return TSK::CommandArchive::IsInitialized(this[6]);
  }

  else
  {
    return 0;
  }
}

__n128 TSCK::AssetUnmaterializedOnServerCommandArchive::InternalSwap(__n128 *this, __n128 *a2)
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

uint64_t TSCK::AssetUnmaterializedOnServerCommandArchive::GetMetadata(TSCK::AssetUnmaterializedOnServerCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[64];
  v2 = off_2812F9CC0[65];
  return result;
}

TSP::UUIDPath *TSCK::CollaboratorCursorArchive::clear_id_path(TSCK::CollaboratorCursorArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 10) &= ~1u;
  return result;
}

TSCK::CollaboratorCursorArchive *TSCK::CollaboratorCursorArchive::CollaboratorCursorArchive(TSCK::CollaboratorCursorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570AC8;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((this + 16), a2);
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CollaboratorCursorArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCK::CollaboratorCursorArchive *TSCK::CollaboratorCursorArchive::CollaboratorCursorArchive(TSCK::CollaboratorCursorArchive *this, const TSCK::CollaboratorCursorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *this = &unk_288570AC8;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 11) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27662D2A0(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  if (*(a2 + 40))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_276613488(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v2, 0x10A1C40290C9B23);
  MEMORY[0x277C99590](v1);
  _Unwind_Resume(a1);
}

void TSCK::CollaboratorCursorArchive::~CollaboratorCursorArchive(TSCK::CollaboratorCursorArchive *this)
{
  if (this != &TSCK::_CollaboratorCursorArchive_default_instance_ && *(this + 6))
  {
    v2 = MEMORY[0x277C99350]();
    MEMORY[0x277C999C0](v2, 0x10A1C40290C9B23);
  }

  sub_2765F8538(this + 1);
  MEMORY[0x277C99590](this + 16);
}

{
  TSCK::CollaboratorCursorArchive::~CollaboratorCursorArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::CollaboratorCursorArchive::default_instance(TSCK::CollaboratorCursorArchive *this)
{
  if (atomic_load_explicit(scc_info_CollaboratorCursorArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_CollaboratorCursorArchive_default_instance_;
}

uint64_t *TSCK::CollaboratorCursorArchive::Clear(TSP::UUIDPath **this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 2));
  if (this[5])
  {
    result = TSP::UUIDPath::Clear(this[6]);
  }

  v4 = *(this + 8);
  v3 = (this + 1);
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return result;
}

google::protobuf::internal *TSCK::CollaboratorCursorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  v5 = *(a3 + 92);
  if ((sub_27662CC00(a3, &v16) & 1) == 0)
  {
    while (1)
    {
      v6 = (v16 + 1);
      LODWORD(v7) = *v16;
      if ((*v16 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = (v7 + (*v6 << 7) - 128);
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v16, v7);
      v16 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
LABEL_6:
      if (v7 == 10)
      {
        *(a1 + 40) |= 1u;
        v10 = *(a1 + 48);
        if (!v10)
        {
          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277C994E0](v11);
          LODWORD(v10) = v12;
          *(a1 + 48) = v12;
          v6 = v16;
        }

        v9 = sub_276635CF0(a3, v10, v6);
      }

      else
      {
        if (v7)
        {
          v8 = (v7 & 7) == 4;
        }

        else
        {
          v8 = 1;
        }

        if (v8)
        {
          *(a3 + 80) = v7 - 1;
          return v16;
        }

        if ((v7 - 800) >> 5 > 0xE0)
        {
          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27662D0DC((a1 + 8));
          }

          v9 = google::protobuf::internal::UnknownFieldParse();
        }

        else
        {
          v9 = google::protobuf::internal::ExtensionSet::ParseField();
        }
      }

      v16 = v9;
      if (!v9)
      {
        return 0;
      }

      v13 = *(a3 + 92);
      if (sub_27662CC00(a3, &v16))
      {
        return v16;
      }
    }

    v6 = (v16 + 2);
LABEL_5:
    v16 = v6;
    goto LABEL_6;
  }

  return v16;
}

uint64_t TSCK::CollaboratorCursorArchive::_InternalSerialize(TSCK::CollaboratorCursorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (*(this + 40))
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *v4 = 10;
    v7 = *(v6 + 10);
    if (v7 > 0x7F)
    {
      v4[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = v4 + 3;
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
        v4[2] = v9;
        v8 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v7;
      v8 = v4 + 2;
    }

    v4 = TSP::UUIDPath::_InternalSerialize(v6, v8, a3);
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 100, 1000, v4, a3);
  v13 = *(this + 1);
  if (v13)
  {

    return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, result, a3);
  }

  return result;
}

uint64_t TSCK::CollaboratorCursorArchive::ByteSizeLong(TSP::UUIDPath **this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 2));
  if (this[5])
  {
    v3 = TSP::UUIDPath::ByteSizeLong(this[6]);
    v2 += v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v2, this + 44);
  }

  else
  {
    *(this + 11) = v2;
    return v2;
  }
}

uint64_t TSCK::CollaboratorCursorArchive::MergeFrom(TSCK::CollaboratorCursorArchive *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::CollaboratorCursorArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::CollaboratorCursorArchive::MergeFrom(TSCK::CollaboratorCursorArchive *this, const TSCK::CollaboratorCursorArchive *a2)
{
  result = google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    result = sub_27662D2A0(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 40))
  {
    v6 = *(a2 + 6);
    *(this + 10) |= 1u;
    if (!*(this + 6))
    {
      v7 = *(this + 1);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(this + 6) = MEMORY[0x277C994E0](v7);
      v8 = *(a2 + 6);
    }

    return MEMORY[0x2821EAAC8]();
  }

  return result;
}

TSP::UUIDPath **TSCK::CollaboratorCursorArchive::CopyFrom(TSP::UUIDPath **result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::CollaboratorCursorArchive::Clear(result);

    return TSCK::CollaboratorCursorArchive::MergeFrom(v4, a2);
  }

  return result;
}

TSP::UUIDPath **TSCK::CollaboratorCursorArchive::CopyFrom(TSP::UUIDPath **this, TSP::UUIDPath **a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::CollaboratorCursorArchive::Clear(this);

    return TSCK::CollaboratorCursorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::CollaboratorCursorArchive::IsInitialized(TSCK::CollaboratorCursorArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {
    if ((*(this + 40) & 1) == 0)
    {
      return 1;
    }

    result = TSP::UUIDPath::IsInitialized(*(this + 6));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t *TSCK::CollaboratorCursorArchive::InternalSwap(TSCK::CollaboratorCursorArchive *this, TSCK::CollaboratorCursorArchive *a2)
{
  google::protobuf::internal::ExtensionSet::Swap();
  result = sub_2765F8BC4(this + 1, a2 + 1);
  v5 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  return result;
}

uint64_t TSCK::CollaboratorCursorArchive::GetMetadata(TSCK::CollaboratorCursorArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[66];
  v2 = off_2812F9CC0[67];
  return result;
}

TSP::Reference *TSCK::ActivityStreamArchive::clear_acknowledged_activity_array(TSCK::ActivityStreamArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSCK::ActivityStreamArchive::clear_unacknowledged_local_activity_array(TSCK::ActivityStreamArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSCK::ActivityStreamArchive::clear_author_cache(TSCK::ActivityStreamArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSCK::ActivityStreamArchive::clear_unacknowledged_remote_activity_array(TSCK::ActivityStreamArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSCK::ActivityStreamArchive *TSCK::ActivityStreamArchive::ActivityStreamArchive(TSCK::ActivityStreamArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570B78;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityStreamArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 72) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288570B78;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityStreamArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 72) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSCK::ActivityStreamArchive *TSCK::ActivityStreamArchive::ActivityStreamArchive(TSCK::ActivityStreamArchive *this, const TSCK::ActivityStreamArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570B78;
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
  *(this + 72) = *(a2 + 72);
  return this;
}

void TSCK::ActivityStreamArchive::~ActivityStreamArchive(TSCK::ActivityStreamArchive *this)
{
  sub_27661402C(this);
  sub_2765F8538(this + 1);
}

{
  TSCK::ActivityStreamArchive::~ActivityStreamArchive(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *sub_27661402C(uint64_t *result)
{
  if (result != &TSCK::_ActivityStreamArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C999C0]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C999C0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C999C0]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277C999C0]();
    }

    v6 = v1[7];
    if (v6)
    {
      TSCK::ActivityStreamTransformationStateArchive::~ActivityStreamTransformationStateArchive(v6);
      MEMORY[0x277C999C0]();
    }

    result = v1[8];
    if (result)
    {
      TSCK::ActivityStreamActivityCounterArchive::~ActivityStreamActivityCounterArchive(result);

      JUMPOUT(0x277C999C0);
    }
  }

  return result;
}

uint64_t *TSCK::ActivityStreamArchive::default_instance(TSCK::ActivityStreamArchive *this)
{
  if (atomic_load_explicit(scc_info_ActivityStreamArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityStreamArchive_default_instance_;
}

uint64_t *TSCK::ActivityStreamArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    this = TSP::Reference::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSP::Reference::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    this = TSP::Reference::Clear(*(v1 + 48));
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = TSP::Reference::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_17:
  this = TSCK::ActivityStreamTransformationStateArchive::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    this = TSCK::ActivityStreamActivityCounterArchive::Clear(*(v1 + 64));
  }

LABEL_9:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 64) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return this;
}

uint64_t *TSCK::ActivityStreamTransformationStateArchive::Clear(uint64_t *this)
{
  v1 = this;
  *(this + 6) = 0;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSP::Date::Clear(this[6]);
  }

  if ((v2 & 0x7E) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
    *(v1 + 80) = 0;
    *(v1 + 72) = 0;
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

uint64_t *TSCK::ActivityStreamActivityCounterArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::Clear(v4);
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
      this = TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::Clear(v7);
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

google::protobuf::internal *TSCK::ActivityStreamArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v36 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v36) & 1) == 0)
  {
    while (1)
    {
      v8 = (v36 + 1);
      v9 = *v36;
      if ((*v36 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v36, (v10 - 128));
      v36 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_73;
      }

      v8 = TagFallback;
      v9 = v23;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 4)
      {
        if (v11 == 1)
        {
          if (v9 != 10)
          {
            goto LABEL_63;
          }

          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (v16)
          {
            goto LABEL_59;
          }

          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = MEMORY[0x277C994F0](v24);
          LODWORD(v16) = v25;
          *(a1 + 24) = v25;
        }

        else if (v11 == 2)
        {
          if (v9 != 18)
          {
            goto LABEL_63;
          }

          *(a1 + 16) |= 2u;
          v16 = *(a1 + 32);
          if (v16)
          {
            goto LABEL_59;
          }

          v30 = *(a1 + 8);
          if (v30)
          {
            v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
          }

          v31 = MEMORY[0x277C994F0](v30);
          LODWORD(v16) = v31;
          *(a1 + 32) = v31;
        }

        else
        {
          if (v11 != 3 || v9 != 26)
          {
            goto LABEL_63;
          }

          *(a1 + 16) |= 4u;
          v16 = *(a1 + 40);
          if (v16)
          {
            goto LABEL_59;
          }

          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x277C994F0](v17);
          LODWORD(v16) = v18;
          *(a1 + 40) = v18;
        }

LABEL_58:
        v8 = v36;
        goto LABEL_59;
      }

      if (v9 >> 3 > 0xE)
      {
        if (v11 == 15)
        {
          if (v9 == 122)
          {
            *(a1 + 16) |= 0x10u;
            v28 = *(a1 + 56);
            if (!v28)
            {
              v29 = *(a1 + 8);
              if (v29)
              {
                v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
              }

              v28 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityStreamTransformationStateArchive>(v29);
              *(a1 + 56) = v28;
              v8 = v36;
            }

            v21 = sub_2766366B0(a3, v28, v8);
            goto LABEL_60;
          }
        }

        else if (v11 == 16 && v9 == 130)
        {
          *(a1 + 16) |= 0x20u;
          v19 = *(a1 + 64);
          if (!v19)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityStreamActivityCounterArchive>(v20);
            *(a1 + 64) = v19;
            v8 = v36;
          }

          v21 = sub_276636780(a3, v19, v8);
          goto LABEL_60;
        }

        goto LABEL_63;
      }

      if (v11 == 5)
      {
        if (v9 == 42)
        {
          *(a1 + 16) |= 8u;
          v16 = *(a1 + 48);
          if (!v16)
          {
            v26 = *(a1 + 8);
            if (v26)
            {
              v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
            }

            v27 = MEMORY[0x277C994F0](v26);
            LODWORD(v16) = v27;
            *(a1 + 48) = v27;
            goto LABEL_58;
          }

LABEL_59:
          v21 = sub_2766358E0(a3, v16, v8);
LABEL_60:
          v36 = v21;
          if (!v21)
          {
            goto LABEL_73;
          }

          goto LABEL_61;
        }

LABEL_63:
        if (v9)
        {
          v33 = (v9 & 7) == 4;
        }

        else
        {
          v33 = 1;
        }

        if (v33)
        {
          *(a3 + 80) = v9 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27662D0DC((a1 + 8));
        }

        v21 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_60;
      }

      if (v11 != 6 || v9 != 48)
      {
        goto LABEL_63;
      }

      v6 |= 0x40u;
      v13 = (v8 + 1);
      v12 = *v8;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = (v8 + 2);
LABEL_15:
        v36 = v13;
        *(a1 + 72) = v12 != 0;
        goto LABEL_61;
      }

      v34 = google::protobuf::internal::VarintParseSlow64(v8, v12);
      v36 = v34;
      *(a1 + 72) = v35 != 0;
      if (!v34)
      {
LABEL_73:
        v36 = 0;
        goto LABEL_2;
      }

LABEL_61:
      v32 = *(a3 + 92);
      if (sub_27662CC00(a3, &v36))
      {
        goto LABEL_2;
      }
    }

    v8 = (v36 + 2);
LABEL_6:
    v36 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v36;
}

unsigned __int8 *TSCK::ActivityStreamArchive::_InternalSerialize(TSCK::ActivityStreamArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        goto LABEL_4;
      }

      goto LABEL_29;
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
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_29:
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
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_39:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 6);
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

  a2 = TSP::Reference::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_49:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(this + 72);
  *a2 = 48;
  a2[1] = v30;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_62;
  }

LABEL_52:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v31 = *(this + 7);
  *a2 = 122;
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

  a2 = TSCK::ActivityStreamTransformationStateArchive::_InternalSerialize(v31, v33, a3);
  if ((v5 & 0x20) != 0)
  {
LABEL_62:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v37 = *(this + 8);
    *a2 = 386;
    v38 = *(v37 + 16);
    if (v38 > 0x7F)
    {
      a2[2] = v38 | 0x80;
      v40 = v38 >> 7;
      if (v38 >> 14)
      {
        v39 = a2 + 4;
        do
        {
          *(v39 - 1) = v40 | 0x80;
          v41 = v40 >> 7;
          ++v39;
          v42 = v40 >> 14;
          v40 >>= 7;
        }

        while (v42);
        *(v39 - 1) = v41;
      }

      else
      {
        a2[3] = v40;
        v39 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v38;
      v39 = a2 + 3;
    }

    a2 = TSCK::ActivityStreamActivityCounterArchive::_InternalSerialize(v37, v39, a3);
  }

LABEL_72:
  v43 = *(this + 1);
  if ((v43 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v43 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityStreamArchive::ByteSizeLong(TSP::Reference **this)
{
  v2 = *(this + 4);
  if ((v2 & 0x7F) == 0)
  {
    v4 = 0;
    goto LABEL_14;
  }

  if (v2)
  {
    v5 = TSP::Reference::ByteSizeLong(this[3]);
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSP::Reference::ByteSizeLong(this[4]);
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v9 = TSP::Reference::ByteSizeLong(this[5]);
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

LABEL_18:
      v11 = TSCK::ActivityStreamTransformationStateArchive::ByteSizeLong(this[7]);
      v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v10 = TSP::Reference::ByteSizeLong(this[6]);
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if ((v2 & 0x20) != 0)
  {
LABEL_12:
    v7 = TSCK::ActivityStreamActivityCounterArchive::ByteSizeLong(this[8]);
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_13:
  v4 = v3 + ((v2 >> 5) & 2);
LABEL_14:
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

uint64_t TSCK::ActivityStreamArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityStreamArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityStreamArchive::MergeFrom(uint64_t this, const TSCK::ActivityStreamArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x7F) != 0)
  {
    v6 = MEMORY[0x277D80A18];
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

        v7 = MEMORY[0x277C994F0](v8);
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

      this = TSP::Reference::MergeFrom(v7, v9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_30;
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

      v10 = MEMORY[0x277C994F0](v11);
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

    this = TSP::Reference::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_38;
    }

LABEL_30:
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
      v15 = v6;
    }

    this = TSP::Reference::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C994F0](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = v6;
    }

    this = TSP::Reference::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_54;
    }

LABEL_46:
    *(v3 + 16) |= 0x10u;
    v19 = *(v3 + 56);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityStreamTransformationStateArchive>(v20);
      *(v3 + 56) = v19;
    }

    if (*(a2 + 7))
    {
      v21 = *(a2 + 7);
    }

    else
    {
      v21 = &TSCK::_ActivityStreamTransformationStateArchive_default_instance_;
    }

    this = TSCK::ActivityStreamTransformationStateArchive::MergeFrom(v19, v21);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
LABEL_12:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_11:
      *(v3 + 72) = *(a2 + 72);
      goto LABEL_12;
    }

LABEL_54:
    *(v3 + 16) |= 0x20u;
    v22 = *(v3 + 64);
    if (!v22)
    {
      v23 = *(v3 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityStreamActivityCounterArchive>(v23);
      *(v3 + 64) = v22;
    }

    if (*(a2 + 8))
    {
      v24 = *(a2 + 8);
    }

    else
    {
      v24 = &TSCK::_ActivityStreamActivityCounterArchive_default_instance_;
    }

    this = TSCK::ActivityStreamActivityCounterArchive::MergeFrom(v22, v24);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return this;
}

uint64_t TSCK::ActivityStreamTransformationStateArchive::MergeFrom(uint64_t this, const TSCK::ActivityStreamTransformationStateArchive *a2)
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
    v6 = *(v3 + 24);
    sub_27662CDBC((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 6);
    this = memcpy((v7 + 8 * v6), *(a2 + 4), 8 * *(a2 + 6));
  }

  v8 = *(a2 + 4);
  if ((v8 & 0x7F) != 0)
  {
    if (v8)
    {
      *(v3 + 16) |= 1u;
      v9 = *(v3 + 48);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = MEMORY[0x277C994A0](v10);
        *(v3 + 48) = v9;
      }

      if (*(a2 + 6))
      {
        v11 = *(a2 + 6);
      }

      else
      {
        v11 = MEMORY[0x277D809C0];
      }

      this = TSP::Date::MergeFrom(v9, v11);
      if ((v8 & 2) == 0)
      {
LABEL_8:
        if ((v8 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_25;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_8;
    }

    *(v3 + 56) = *(a2 + 14);
    if ((v8 & 4) == 0)
    {
LABEL_9:
      if ((v8 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(v3 + 60) = *(a2 + 15);
    if ((v8 & 8) == 0)
    {
LABEL_10:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(v3 + 64) = *(a2 + 16);
    if ((v8 & 0x10) == 0)
    {
LABEL_11:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(v3 + 68) = *(a2 + 17);
    if ((v8 & 0x20) == 0)
    {
LABEL_12:
      if ((v8 & 0x40) == 0)
      {
LABEL_14:
        *(v3 + 16) |= v8;
        return this;
      }

LABEL_13:
      *(v3 + 80) = *(a2 + 80);
      goto LABEL_14;
    }

LABEL_28:
    *(v3 + 72) = *(a2 + 9);
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return this;
}

uint64_t TSCK::ActivityStreamActivityCounterArchive::MergeFrom(uint64_t this, const TSCK::ActivityStreamActivityCounterArchive *a2)
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
    this = sub_27662E7A0(v3 + 16, v8, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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
    this = sub_27662E860(v3 + 40, v13, (v12 + 8), v11, **(v3 + 56) - *(v3 + 48));
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

uint64_t *TSCK::ActivityStreamArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityStreamArchive::Clear(result);

    return TSCK::ActivityStreamArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityStreamArchive::CopyFrom(uint64_t *this, const TSCK::ActivityStreamArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityStreamArchive::Clear(this);

    return TSCK::ActivityStreamArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityStreamArchive::IsInitialized(TSCK::ActivityStreamArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  result = 1;
  if ((v2 & 0x10) != 0)
  {
    v4 = *(this + 7);
    v5 = *(v4 + 16);
    if ((v5 & 2) == 0 || (v5 & 1) != 0 && (TSP::Date::IsInitialized(*(v4 + 48)) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t TSCK::ActivityStreamTransformationStateArchive::IsInitialized(TSCK::ActivityStreamTransformationStateArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = TSP::Date::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCK::ActivityStreamArchive::InternalSwap(TSCK::ActivityStreamArchive *this, TSCK::ActivityStreamArchive *a2)
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
  LOBYTE(v9) = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 72) = v9;
  return result;
}

uint64_t TSCK::ActivityStreamArchive::GetMetadata(TSCK::ActivityStreamArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[68];
  v2 = off_2812F9CC0[69];
  return result;
}

TSP::LargeObjectArray *TSCK::ActivityStreamActivityArray::clear_large_array(TSCK::ActivityStreamActivityArray *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::LargeObjectArray::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::ActivityStreamActivityArray *TSCK::ActivityStreamActivityArray::ActivityStreamActivityArray(TSCK::ActivityStreamActivityArray *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570C28;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityStreamActivityArray_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288570C28;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityStreamActivityArray_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCK::ActivityStreamActivityArray *TSCK::ActivityStreamActivityArray::ActivityStreamActivityArray(TSCK::ActivityStreamActivityArray *this, const TSCK::ActivityStreamActivityArray *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570C28;
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

void TSCK::ActivityStreamActivityArray::~ActivityStreamActivityArray(TSCK::ActivityStreamActivityArray *this)
{
  if (this != &TSCK::_ActivityStreamActivityArray_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C99110]();
    MEMORY[0x277C999C0](v2, 0x10A1C40D4912B22);
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::ActivityStreamActivityArray::~ActivityStreamActivityArray(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::ActivityStreamActivityArray::default_instance(TSCK::ActivityStreamActivityArray *this)
{
  if (atomic_load_explicit(scc_info_ActivityStreamActivityArray_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityStreamActivityArray_default_instance_;
}

uint64_t *TSCK::ActivityStreamActivityArray::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::LargeObjectArray::Clear(this[3]);
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

google::protobuf::internal *TSCK::ActivityStreamActivityArray::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v13 = MEMORY[0x277C99470](v12);
        LODWORD(v11) = v13;
        *(a1 + 24) = v13;
        v6 = v18;
      }

      v10 = sub_276636510(a3, v11, v6);
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

unsigned __int8 *TSCK::ActivityStreamActivityArray::_InternalSerialize(TSCK::ActivityStreamActivityArray *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::LargeObjectArray::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityStreamActivityArray::ByteSizeLong(TSP::LargeObjectArray **this)
{
  if (this[2])
  {
    v3 = TSP::LargeObjectArray::ByteSizeLong(this[3]);
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

uint64_t TSCK::ActivityStreamActivityArray::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityStreamActivityArray::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityStreamActivityArray::MergeFrom(uint64_t this, const TSCK::ActivityStreamActivityArray *a2)
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

      *(v3 + 24) = MEMORY[0x277C99470](v6);
      v7 = *(a2 + 3);
    }

    return MEMORY[0x2821EA828]();
  }

  return this;
}

uint64_t *TSCK::ActivityStreamActivityArray::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityStreamActivityArray::Clear(result);

    return TSCK::ActivityStreamActivityArray::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityStreamActivityArray::CopyFrom(uint64_t *this, const TSCK::ActivityStreamActivityArray *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityStreamActivityArray::Clear(this);

    return TSCK::ActivityStreamActivityArray::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityStreamActivityArray::IsInitialized(TSCK::ActivityStreamActivityArray *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::LargeObjectArray::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSCK::ActivityStreamActivityArray::InternalSwap(TSCK::ActivityStreamActivityArray *this, TSCK::ActivityStreamActivityArray *a2)
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

uint64_t TSCK::ActivityStreamActivityArray::GetMetadata(TSCK::ActivityStreamActivityArray *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[70];
  v2 = off_2812F9CC0[71];
  return result;
}

TSP::LargeObjectArraySegment *TSCK::ActivityStreamActivityArraySegment::clear_large_array_segment(TSCK::ActivityStreamActivityArraySegment *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::LargeObjectArraySegment::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::ActivityStreamActivityArraySegment *TSCK::ActivityStreamActivityArraySegment::ActivityStreamActivityArraySegment(TSCK::ActivityStreamActivityArraySegment *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570CD8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityStreamActivityArraySegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288570CD8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityStreamActivityArraySegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCK::ActivityStreamActivityArraySegment *TSCK::ActivityStreamActivityArraySegment::ActivityStreamActivityArraySegment(TSCK::ActivityStreamActivityArraySegment *this, const TSCK::ActivityStreamActivityArraySegment *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570CD8;
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

void TSCK::ActivityStreamActivityArraySegment::~ActivityStreamActivityArraySegment(TSCK::ActivityStreamActivityArraySegment *this)
{
  if (this != &TSCK::_ActivityStreamActivityArraySegment_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C991B0]();
    MEMORY[0x277C999C0](v2, 0x10A1C40D196C376);
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::ActivityStreamActivityArraySegment::~ActivityStreamActivityArraySegment(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::ActivityStreamActivityArraySegment::default_instance(TSCK::ActivityStreamActivityArraySegment *this)
{
  if (atomic_load_explicit(scc_info_ActivityStreamActivityArraySegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityStreamActivityArraySegment_default_instance_;
}

uint64_t *TSCK::ActivityStreamActivityArraySegment::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::LargeObjectArraySegment::Clear(this[3]);
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

google::protobuf::internal *TSCK::ActivityStreamActivityArraySegment::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v13 = MEMORY[0x277C99490](v12);
        LODWORD(v11) = v13;
        *(a1 + 24) = v13;
        v6 = v18;
      }

      v10 = sub_276635810(a3, v11, v6);
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

unsigned __int8 *TSCK::ActivityStreamActivityArraySegment::_InternalSerialize(TSCK::ActivityStreamActivityArraySegment *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::LargeObjectArraySegment::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityStreamActivityArraySegment::ByteSizeLong(TSP::LargeObjectArraySegment **this)
{
  if (this[2])
  {
    v3 = TSP::LargeObjectArraySegment::ByteSizeLong(this[3]);
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

uint64_t TSCK::ActivityStreamActivityArraySegment::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityStreamActivityArraySegment::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityStreamActivityArraySegment::MergeFrom(uint64_t this, const TSCK::ActivityStreamActivityArraySegment *a2)
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

      *(v3 + 24) = MEMORY[0x277C99490](v6);
      v7 = *(a2 + 3);
    }

    return MEMORY[0x2821EA8F0]();
  }

  return this;
}

uint64_t *TSCK::ActivityStreamActivityArraySegment::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityStreamActivityArraySegment::Clear(result);

    return TSCK::ActivityStreamActivityArraySegment::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityStreamActivityArraySegment::CopyFrom(uint64_t *this, const TSCK::ActivityStreamActivityArraySegment *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityStreamActivityArraySegment::Clear(this);

    return TSCK::ActivityStreamActivityArraySegment::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityStreamActivityArraySegment::IsInitialized(TSCK::ActivityStreamActivityArraySegment *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::LargeObjectArraySegment::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSCK::ActivityStreamActivityArraySegment::InternalSwap(TSCK::ActivityStreamActivityArraySegment *this, TSCK::ActivityStreamActivityArraySegment *a2)
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

uint64_t TSCK::ActivityStreamActivityArraySegment::GetMetadata(TSCK::ActivityStreamActivityArraySegment *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[72];
  v2 = off_2812F9CC0[73];
  return result;
}

uint64_t TSCK::ActivityArchive::clear_cursor_collection_persistence_wrappers(uint64_t this)
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

TSP::UUID *TSCK::ActivityArchive::clear_author_identifier(TSCK::ActivityArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Date *TSCK::ActivityArchive::clear_timestamp(TSCK::ActivityArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCK::ActivityArchive *TSCK::ActivityArchive::ActivityArchive(TSCK::ActivityArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570D88;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 7) = a2;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  if (atomic_load_explicit(scc_info_ActivityArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  return this;
}

void sub_2766166B0(_Unwind_Exception *a1)
{
  if (*(v1 + 52) >= 1)
  {
    sub_276637140(v3);
  }

  sub_27662D3A4(v2);
  _Unwind_Resume(a1);
}

TSCK::ActivityArchive *TSCK::ActivityArchive::ActivityArchive(TSCK::ActivityArchive *this, const TSCK::ActivityArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570D88;
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
  v11 = *(a2 + 12);
  if (v11)
  {
    sub_27662CF78(this + 12, v11);
    v12 = *(this + 7);
    *(this + 12) += *(a2 + 12);
    memcpy(v12, *(a2 + 7), 4 * *(a2 + 12));
  }

  v13 = *(a2 + 1);
  if (v13)
  {
    sub_27662D2A0(v4, (v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v14 = *(a2 + 4);
  if (v14)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v14 & 2) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v14 & 4) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  v15 = *(a2 + 6);
  *(this + 14) = *(a2 + 14);
  *(this + 6) = v15;
  return this;
}

void sub_2766168B8(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v2, 0x10A1C40B745593BLL);
  if (*(v1 + 52) >= 1)
  {
    v4 = *(v1 + 56);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  sub_27662D3A4((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCK::ActivityArchive::~ActivityArchive(TSCK::ActivityArchive *this)
{
  if (this != &TSCK::_ActivityArchive_default_instance_)
  {
    v2 = *(this + 9);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C999C0]();
    }

    v3 = *(this + 10);
    if (v3)
    {
      TSP::Date::~Date(v3);
      MEMORY[0x277C999C0]();
    }

    v4 = *(this + 11);
    if (v4)
    {
      TSCK::ActivityNavigationInfoArchive::~ActivityNavigationInfoArchive(v4);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
  if (*(this + 13) >= 1)
  {
    v5 = *(this + 7);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  sub_27662D3A4(this + 3);
}

{
  TSCK::ActivityArchive::~ActivityArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::ActivityArchive::default_instance(TSCK::ActivityArchive *this)
{
  if (atomic_load_explicit(scc_info_ActivityArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityArchive_default_instance_;
}

uint64_t *TSCK::ActivityArchive::Clear(uint64_t *this)
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

  *(v1 + 48) = 0;
  v5 = *(v1 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      this = TSP::UUID::Clear(*(v1 + 72));
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

    this = TSP::Date::Clear(*(v1 + 80));
    if ((v5 & 4) != 0)
    {
LABEL_9:
      this = TSCK::ActivityNavigationInfoArchive::Clear(*(v1 + 88));
    }
  }

LABEL_10:
  if ((v5 & 0xF8) != 0)
  {
    *(v1 + 102) = 0;
    *(v1 + 96) = 0;
  }

  if ((v5 & 0x300) != 0)
  {
    *(v1 + 112) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_27662D2EC(v6);
  }

  return this;
}

uint64_t *TSCK::ActivityNavigationInfoArchive::Clear(TSCK::ActivityNavigationInfoArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  v4 = *(this + 8);
  v3 = (this + 8);
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return result;
}

google::protobuf::internal *TSCK::ActivityArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v71 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v71) & 1) == 0)
  {
    while (1)
    {
      v8 = (v71 + 1);
      v9 = *v71;
      if ((*v71 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v71, (v10 - 128));
      v71 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_124;
      }

      v8 = TagFallback;
      v9 = v24;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 > 6)
      {
        if (v9 >> 3 > 9)
        {
          if (v11 == 10)
          {
            if (v9 != 80)
            {
              goto LABEL_113;
            }

            v6 |= 0x100u;
            v42 = (v8 + 1);
            LODWORD(v41) = *v8;
            if ((v41 & 0x80) != 0)
            {
              v43 = *v42;
              v41 = (v41 + (v43 << 7) - 128);
              if (v43 < 0)
              {
                v63 = google::protobuf::internal::VarintParseSlow64(v8, v41);
                v71 = v63;
                *(a1 + 112) = v64;
                if (!v63)
                {
                  goto LABEL_124;
                }

                goto LABEL_121;
              }

              v42 = (v8 + 2);
            }

            v71 = v42;
            *(a1 + 112) = v41;
          }

          else
          {
            if (v11 != 11)
            {
              if (v11 == 12)
              {
                if (v9 == 98)
                {
                  v22 = google::protobuf::internal::PackedUInt32Parser();
                  goto LABEL_120;
                }

                if (v9 == 96)
                {
                  v72 = 0;
                  v71 = sub_27662D07C(v8, &v72);
                  sub_27662CF14((a1 + 48), &v72);
                  if (!v71)
                  {
                    goto LABEL_124;
                  }

                  goto LABEL_121;
                }
              }

LABEL_113:
              if (v9)
              {
                v69 = (v9 & 7) == 4;
              }

              else
              {
                v69 = 1;
              }

              if (v69)
              {
                *(a3 + 80) = v9 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_27662D0DC((a1 + 8));
              }

              v22 = google::protobuf::internal::UnknownFieldParse();
              goto LABEL_120;
            }

            if (v9 != 88)
            {
              goto LABEL_113;
            }

            v6 |= 0x200u;
            v53 = (v8 + 1);
            LODWORD(v52) = *v8;
            if ((v52 & 0x80) != 0)
            {
              v54 = *v53;
              v52 = (v52 + (v54 << 7) - 128);
              if (v54 < 0)
              {
                v67 = google::protobuf::internal::VarintParseSlow64(v8, v52);
                v71 = v67;
                *(a1 + 116) = v68;
                if (!v67)
                {
                  goto LABEL_124;
                }

                goto LABEL_121;
              }

              v53 = (v8 + 2);
            }

            v71 = v53;
            *(a1 + 116) = v52;
          }
        }

        else if (v11 == 7)
        {
          if (v9 != 56)
          {
            goto LABEL_113;
          }

          v6 |= 0x20u;
          v36 = (v8 + 1);
          LODWORD(v35) = *v8;
          if ((v35 & 0x80) != 0)
          {
            v37 = *v36;
            v35 = (v35 + (v37 << 7) - 128);
            if (v37 < 0)
            {
              v59 = google::protobuf::internal::VarintParseSlow64(v8, v35);
              v71 = v59;
              *(a1 + 104) = v60;
              if (!v59)
              {
                goto LABEL_124;
              }

              goto LABEL_121;
            }

            v36 = (v8 + 2);
          }

          v71 = v36;
          *(a1 + 104) = v35;
        }

        else
        {
          if (v11 == 8)
          {
            if (v9 != 66)
            {
              goto LABEL_113;
            }

            *(a1 + 16) |= 4u;
            v47 = *(a1 + 88);
            if (!v47)
            {
              v48 = *(a1 + 8);
              if (v48)
              {
                v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
              }

              v47 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityNavigationInfoArchive>(v48);
              *(a1 + 88) = v47;
              v8 = v71;
            }

            v22 = sub_276636850(a3, v47, v8);
            goto LABEL_120;
          }

          if (v11 != 9 || v9 != 72)
          {
            goto LABEL_113;
          }

          v6 |= 0x80u;
          v17 = (v8 + 1);
          v16 = *v8;
          if ((v16 & 0x8000000000000000) != 0)
          {
            v18 = *v17;
            v16 = (v18 << 7) + v16 - 128;
            if (v18 < 0)
            {
              v57 = google::protobuf::internal::VarintParseSlow64(v8, v16);
              v71 = v57;
              *(a1 + 109) = v58 != 0;
              if (!v57)
              {
                goto LABEL_124;
              }

              goto LABEL_121;
            }

            v17 = (v8 + 2);
          }

          v71 = v17;
          *(a1 + 109) = v16 != 0;
        }
      }

      else if (v9 >> 3 > 3)
      {
        if (v11 == 4)
        {
          if (v9 != 32)
          {
            goto LABEL_113;
          }

          v6 |= 0x10u;
          v39 = (v8 + 1);
          LODWORD(v38) = *v8;
          if ((v38 & 0x80) != 0)
          {
            v40 = *v39;
            v38 = (v38 + (v40 << 7) - 128);
            if (v40 < 0)
            {
              v61 = google::protobuf::internal::VarintParseSlow64(v8, v38);
              v71 = v61;
              *(a1 + 100) = v62;
              if (!v61)
              {
                goto LABEL_124;
              }

              goto LABEL_121;
            }

            v39 = (v8 + 2);
          }

          v71 = v39;
          *(a1 + 100) = v38;
        }

        else
        {
          if (v11 != 5)
          {
            if (v11 != 6 || v9 != 50)
            {
              goto LABEL_113;
            }

            *(a1 + 16) |= 2u;
            v19 = *(a1 + 80);
            if (!v19)
            {
              v20 = *(a1 + 8);
              if (v20)
              {
                v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
              }

              v21 = MEMORY[0x277C994A0](v20);
              LODWORD(v19) = v21;
              *(a1 + 80) = v21;
              v8 = v71;
            }

            v22 = sub_276636030(a3, v19, v8);
LABEL_120:
            v71 = v22;
            if (!v22)
            {
LABEL_124:
              v71 = 0;
              goto LABEL_2;
            }

            goto LABEL_121;
          }

          if (v9 != 40)
          {
            goto LABEL_113;
          }

          v6 |= 0x40u;
          v50 = (v8 + 1);
          v49 = *v8;
          if ((v49 & 0x8000000000000000) != 0)
          {
            v51 = *v50;
            v49 = (v51 << 7) + v49 - 128;
            if (v51 < 0)
            {
              v65 = google::protobuf::internal::VarintParseSlow64(v8, v49);
              v71 = v65;
              *(a1 + 108) = v66 != 0;
              if (!v65)
              {
                goto LABEL_124;
              }

              goto LABEL_121;
            }

            v50 = (v8 + 2);
          }

          v71 = v50;
          *(a1 + 108) = v49 != 0;
        }
      }

      else
      {
        if (v11 == 1)
        {
          if (v9 != 10)
          {
            goto LABEL_113;
          }

          v25 = v8 - 1;
          while (2)
          {
            v26 = (v25 + 1);
            v71 = (v25 + 1);
            v27 = *(a1 + 40);
            if (!v27)
            {
              v28 = *(a1 + 36);
              goto LABEL_49;
            }

            v34 = *(a1 + 32);
            v29 = *v27;
            if (v34 >= *v27)
            {
              if (v29 == *(a1 + 36))
              {
LABEL_49:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                v27 = *(a1 + 40);
                v29 = *v27;
              }

              *v27 = v29 + 1;
              v30 = MEMORY[0x277C994F0](*(a1 + 24));
              LODWORD(v31) = v30;
              v32 = *(a1 + 32);
              v33 = *(a1 + 40) + 8 * v32;
              *(a1 + 32) = v32 + 1;
              *(v33 + 8) = v30;
              v26 = v71;
            }

            else
            {
              *(a1 + 32) = v34 + 1;
              v31 = *&v27[2 * v34 + 2];
            }

            v25 = sub_2766358E0(a3, v31, v26);
            v71 = v25;
            if (!v25)
            {
              goto LABEL_124;
            }

            if (*a3 <= v25 || *v25 != 10)
            {
              goto LABEL_121;
            }

            continue;
          }
        }

        if (v11 == 2)
        {
          if (v9 != 18)
          {
            goto LABEL_113;
          }

          *(a1 + 16) |= 1u;
          v44 = *(a1 + 72);
          if (!v44)
          {
            v45 = *(a1 + 8);
            if (v45)
            {
              v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
            }

            v46 = MEMORY[0x277C994B0](v45);
            LODWORD(v44) = v46;
            *(a1 + 72) = v46;
            v8 = v71;
          }

          v22 = sub_2766359B0(a3, v44, v8);
          goto LABEL_120;
        }

        if (v11 != 3 || v9 != 24)
        {
          goto LABEL_113;
        }

        v6 |= 8u;
        v14 = (v8 + 1);
        LODWORD(v13) = *v8;
        if ((v13 & 0x80) != 0)
        {
          v15 = *v14;
          v13 = (v13 + (v15 << 7) - 128);
          if (v15 < 0)
          {
            v55 = google::protobuf::internal::VarintParseSlow64(v8, v13);
            v71 = v55;
            *(a1 + 96) = v56;
            if (!v55)
            {
              goto LABEL_124;
            }

            goto LABEL_121;
          }

          v14 = (v8 + 2);
        }

        v71 = v14;
        *(a1 + 96) = v13;
      }

LABEL_121:
      v70 = *(a3 + 92);
      if (sub_27662CC00(a3, &v71))
      {
        goto LABEL_2;
      }
    }

    v8 = (v71 + 2);
LABEL_6:
    v71 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v71;
}

unsigned __int8 *TSCK::ActivityArchive::_InternalSerialize(TSCK::ActivityArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
  if (v14)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v16 = *(this + 9);
    *a2 = 18;
    v17 = *(v16 + 5);
    if (v17 > 0x7F)
    {
      a2[1] = v17 | 0x80;
      v20 = v17 >> 7;
      if (v17 >> 14)
      {
        v18 = a2 + 3;
        do
        {
          *(v18 - 1) = v20 | 0x80;
          v23 = v20 >> 7;
          ++v18;
          v24 = v20 >> 14;
          v20 >>= 7;
        }

        while (v24);
        *(v18 - 1) = v23;
      }

      else
      {
        a2[2] = v20;
        v18 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v17;
      v18 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v16, v18, a3);
    if ((v14 & 8) == 0)
    {
LABEL_15:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_16;
      }

LABEL_53:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v29 = *(this + 25);
      *a2 = 32;
      if (v29 > 0x7F)
      {
        a2[1] = v29 | 0x80;
        v30 = v29 >> 7;
        if (v29 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v30 | 0x80;
            v31 = v30 >> 7;
            ++a2;
            v32 = v30 >> 14;
            v30 >>= 7;
          }

          while (v32);
          *(a2 - 1) = v31;
          if ((v14 & 0x40) != 0)
          {
            goto LABEL_64;
          }
        }

        else
        {
          a2[2] = v30;
          a2 += 3;
          if ((v14 & 0x40) != 0)
          {
            goto LABEL_64;
          }
        }
      }

      else
      {
        a2[1] = v29;
        a2 += 2;
        if ((v14 & 0x40) != 0)
        {
          goto LABEL_64;
        }
      }

LABEL_17:
      if ((v14 & 2) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_67;
    }
  }

  else if ((v14 & 8) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 24);
  *a2 = 24;
  if (v25 > 0x7F)
  {
    a2[1] = v25 | 0x80;
    v26 = v25 >> 7;
    if (v25 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v26 | 0x80;
        v27 = v26 >> 7;
        ++a2;
        v28 = v26 >> 14;
        v26 >>= 7;
      }

      while (v28);
      *(a2 - 1) = v27;
      if ((v14 & 0x10) != 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      a2[2] = v26;
      a2 += 3;
      if ((v14 & 0x10) != 0)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    a2[1] = v25;
    a2 += 2;
    if ((v14 & 0x10) != 0)
    {
      goto LABEL_53;
    }
  }

LABEL_16:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_64:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v33 = *(this + 108);
  *a2 = 40;
  a2[1] = v33;
  a2 += 2;
  if ((v14 & 2) == 0)
  {
LABEL_18:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_77:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v40 = *(this + 26);
    *a2 = 56;
    if (v40 > 0x7F)
    {
      a2[1] = v40 | 0x80;
      v41 = v40 >> 7;
      if (v40 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v41 | 0x80;
          v42 = v41 >> 7;
          ++a2;
          v43 = v41 >> 14;
          v41 >>= 7;
        }

        while (v43);
        *(a2 - 1) = v42;
        if ((v14 & 4) != 0)
        {
          goto LABEL_88;
        }
      }

      else
      {
        a2[2] = v41;
        a2 += 3;
        if ((v14 & 4) != 0)
        {
          goto LABEL_88;
        }
      }
    }

    else
    {
      a2[1] = v40;
      a2 += 2;
      if ((v14 & 4) != 0)
      {
        goto LABEL_88;
      }
    }

LABEL_20:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_98;
  }

LABEL_67:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v34 = *(this + 10);
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

  a2 = TSP::Date::_InternalSerialize(v34, v36, a3);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_77;
  }

LABEL_19:
  if ((v14 & 4) == 0)
  {
    goto LABEL_20;
  }

LABEL_88:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v44 = *(this + 11);
  *a2 = 66;
  v45 = *(v44 + 10);
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

  a2 = TSCK::ActivityNavigationInfoArchive::_InternalSerialize(v44, v46, a3);
  if ((v14 & 0x80) == 0)
  {
LABEL_21:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_101;
  }

LABEL_98:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v50 = *(this + 109);
  *a2 = 72;
  a2[1] = v50;
  a2 += 2;
  if ((v14 & 0x100) == 0)
  {
LABEL_22:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_23;
  }

LABEL_101:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v51 = *(this + 28);
  *a2 = 80;
  if (v51 > 0x7F)
  {
    a2[1] = v51 | 0x80;
    v52 = v51 >> 7;
    if (v51 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v52 | 0x80;
        v53 = v52 >> 7;
        ++a2;
        v54 = v52 >> 14;
        v52 >>= 7;
      }

      while (v54);
      *(a2 - 1) = v53;
      if ((v14 & 0x200) == 0)
      {
        goto LABEL_112;
      }
    }

    else
    {
      a2[2] = v52;
      a2 += 3;
      if ((v14 & 0x200) == 0)
      {
        goto LABEL_112;
      }
    }
  }

  else
  {
    a2[1] = v51;
    a2 += 2;
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_112;
    }
  }

LABEL_23:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v15 = *(this + 29);
  *a2 = 88;
  if (v15 > 0x7F)
  {
    a2[1] = v15 | 0x80;
    v19 = v15 >> 7;
    if (v15 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v19 | 0x80;
        v21 = v19 >> 7;
        ++a2;
        v22 = v19 >> 14;
        v19 >>= 7;
      }

      while (v22);
      *(a2 - 1) = v21;
    }

    else
    {
      a2[2] = v19;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v15;
    a2 += 2;
  }

LABEL_112:
  v55 = *(this + 16);
  if (v55 >= 1)
  {
    a2 = sub_27662DD18(a3, 12, this + 12, v55, a2, nullsub_1);
  }

  v56 = *(this + 1);
  if ((v56 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v56 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}