TSA::InducedVerifyObjectsWithServerCommandArchive *TSA::InducedVerifyObjectsWithServerCommandArchive::CopyFrom(TSA::InducedVerifyObjectsWithServerCommandArchive *result, TSA::InducedVerifyObjectsWithServerCommandArchive *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::InducedVerifyObjectsWithServerCommandArchive::Clear(result);

    return TSA::InducedVerifyObjectsWithServerCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

TSA::InducedVerifyObjectsWithServerCommandArchive *TSA::InducedVerifyObjectsWithServerCommandArchive::CopyFrom(TSA::InducedVerifyObjectsWithServerCommandArchive *this, const TSA::InducedVerifyObjectsWithServerCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::InducedVerifyObjectsWithServerCommandArchive::Clear(this);

    return TSA::InducedVerifyObjectsWithServerCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::InducedVerifyObjectsWithServerCommandArchive::IsInitialized(TSA::InducedVerifyObjectsWithServerCommandArchive *this)
{
  if ((~*(this + 4) & 0x13) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 9));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSA::InducedVerifyObjectsWithServerCommandArchive::InternalSwap(TSA::InducedVerifyObjectsWithServerCommandArchive *this, TSA::InducedVerifyObjectsWithServerCommandArchive *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
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
  v10 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  LOWORD(v9) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v9;
  LOBYTE(v9) = *(this + 90);
  *(this + 90) = *(a2 + 90);
  *(a2 + 90) = v9;
  return result;
}

TSK::CommandArchive *TSA::InducedVerifyTransformHistoryWithServerCommandArchive::clear_super(TSA::InducedVerifyTransformHistoryWithServerCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSA::InducedVerifyTransformHistoryWithServerCommandArchive::clear_server_operation_storage_entries(uint64_t this)
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

TSA::InducedVerifyTransformHistoryWithServerCommandArchive *TSA::InducedVerifyTransformHistoryWithServerCommandArchive::InducedVerifyTransformHistoryWithServerCommandArchive(TSA::InducedVerifyTransformHistoryWithServerCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288510310;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_InducedVerifyTransformHistoryWithServerCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0;
  *(this + 6) = 0;
  return this;
}

TSA::InducedVerifyTransformHistoryWithServerCommandArchive *TSA::InducedVerifyTransformHistoryWithServerCommandArchive::InducedVerifyTransformHistoryWithServerCommandArchive(TSA::InducedVerifyTransformHistoryWithServerCommandArchive *this, const TSA::InducedVerifyTransformHistoryWithServerCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288510310;
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
    sub_2760FBE1C(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2760FB7E8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  *(this + 56) = *(a2 + 56);
  return this;
}

void sub_2760E3FF8(_Unwind_Exception *a1)
{
  MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
  sub_2760FBD98((v1 + 24));
  _Unwind_Resume(a1);
}

void TSA::InducedVerifyTransformHistoryWithServerCommandArchive::~InducedVerifyTransformHistoryWithServerCommandArchive(TSA::InducedVerifyTransformHistoryWithServerCommandArchive *this)
{
  if (this != &TSA::_InducedVerifyTransformHistoryWithServerCommandArchive_default_instance_ && *(this + 6))
  {
    v2 = MEMORY[0x277C94A60]();
    MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
  }

  sub_2760D7438(this + 1);
  sub_2760FBD98(this + 3);
}

{
  TSA::InducedVerifyTransformHistoryWithServerCommandArchive::~InducedVerifyTransformHistoryWithServerCommandArchive(this);

  JUMPOUT(0x277C95910);
}

void *TSA::InducedVerifyTransformHistoryWithServerCommandArchive::default_instance(TSA::InducedVerifyTransformHistoryWithServerCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_InducedVerifyTransformHistoryWithServerCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_InducedVerifyTransformHistoryWithServerCommandArchive_default_instance_;
}

uint64_t *TSA::InducedVerifyTransformHistoryWithServerCommandArchive::Clear(uint64_t *this)
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

  if (*(v1 + 16))
  {
    this = TSK::CommandArchive::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_2760FB834(v5);
  }

  return this;
}

google::protobuf::internal *TSA::InducedVerifyTransformHistoryWithServerCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v33) & 1) == 0)
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
        goto LABEL_51;
      }

      v7 = TagFallback;
      v8 = v30;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 != 3)
      {
        if (v10 != 2)
        {
          if (v10 == 1 && v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v26 = *(a1 + 48);
            if (!v26)
            {
              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v28 = MEMORY[0x277C950D0](v27);
              LODWORD(v26) = v28;
              *(a1 + 48) = v28;
              v7 = v33;
            }

            v13 = sub_27610EBB4(a3, v26, v7);
          }

          else
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
              sub_2760FB5A0((a1 + 8));
            }

            v13 = google::protobuf::internal::UnknownFieldParse();
          }

          v33 = v13;
          if (!v13)
          {
            goto LABEL_51;
          }

          goto LABEL_44;
        }

        if (v8 != 18)
        {
          goto LABEL_13;
        }

        v14 = v7 - 1;
        while (2)
        {
          v15 = (v14 + 1);
          v33 = (v14 + 1);
          v16 = *(a1 + 40);
          if (!v16)
          {
LABEL_23:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v16 = *(a1 + 40);
            v17 = *v16;
            goto LABEL_24;
          }

          v22 = *(a1 + 32);
          v17 = *v16;
          if (v22 >= *v16)
          {
            if (v17 == *(a1 + 36))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v16 = v17 + 1;
            v18 = MEMORY[0x277C95110](*(a1 + 24));
            LODWORD(v19) = v18;
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v18;
            v15 = v33;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v16[2 * v22 + 2];
          }

          v14 = sub_27610D204(a3, v19, v15);
          v33 = v14;
          if (!v14)
          {
            goto LABEL_51;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_44;
          }

          continue;
        }
      }

      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v24 = (v7 + 1);
      v23 = *v7;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = (v7 + 2);
LABEL_37:
        v33 = v24;
        *(a1 + 56) = v23 != 0;
        goto LABEL_44;
      }

      v31 = google::protobuf::internal::VarintParseSlow64(v7, v23);
      v33 = v31;
      *(a1 + 56) = v32 != 0;
      if (!v31)
      {
LABEL_51:
        v33 = 0;
        goto LABEL_2;
      }

LABEL_44:
      if (sub_2760FB2F0(a3, &v33))
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

unsigned __int8 *TSA::InducedVerifyTransformHistoryWithServerCommandArchive::_InternalSerialize(TSA::InducedVerifyTransformHistoryWithServerCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
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

    v20 = *(this + 56);
    *a2 = 24;
    a2[1] = v20;
    a2 += 2;
  }

  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::InducedVerifyTransformHistoryWithServerCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
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
      v10 = TSK::OperationStorageEntry::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = this[2] & 2;
  v12 = v5 + v11;
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v12, this + 20);
  }

  else
  {
    *(this + 5) = v12;
    return v5 + v11;
  }
}

uint64_t TSA::InducedVerifyTransformHistoryWithServerCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::InducedVerifyTransformHistoryWithServerCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::InducedVerifyTransformHistoryWithServerCommandArchive::MergeFrom(uint64_t this, const TSA::InducedVerifyTransformHistoryWithServerCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2760FBE1C(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
      *(v3 + 16) |= 1u;
      v11 = *(v3 + 48);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C950D0](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 56);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TSA::InducedVerifyTransformHistoryWithServerCommandArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::InducedVerifyTransformHistoryWithServerCommandArchive::Clear(result);

    return TSA::InducedVerifyTransformHistoryWithServerCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::InducedVerifyTransformHistoryWithServerCommandArchive::CopyFrom(uint64_t *this, const TSA::InducedVerifyTransformHistoryWithServerCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::InducedVerifyTransformHistoryWithServerCommandArchive::Clear(this);

    return TSA::InducedVerifyTransformHistoryWithServerCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::InducedVerifyTransformHistoryWithServerCommandArchive::IsInitialized(TSK::CommandArchive **this)
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

__n128 TSA::InducedVerifyTransformHistoryWithServerCommandArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2760D9190(&this->n128_i64[1], &a2->n128_i64[1]);
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
  LOBYTE(v8) = this[3].n128_u8[8];
  this[3].n128_u8[8] = a2[3].n128_u8[8];
  a2[3].n128_u8[8] = v8;
  return result;
}

TSWP::StyleUpdatePropertyMapCommandArchive *TSA::StyleUpdatePropertyMapCommandArchive::clear_super(TSA::StyleUpdatePropertyMapCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSWP::StyleUpdatePropertyMapCommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSA::StyleUpdatePropertyMapCommandArchive *TSA::StyleUpdatePropertyMapCommandArchive::StyleUpdatePropertyMapCommandArchive(TSA::StyleUpdatePropertyMapCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885103C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StyleUpdatePropertyMapCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885103C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StyleUpdatePropertyMapCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSA::StyleUpdatePropertyMapCommandArchive *TSA::StyleUpdatePropertyMapCommandArchive::StyleUpdatePropertyMapCommandArchive(TSA::StyleUpdatePropertyMapCommandArchive *this, const TSA::StyleUpdatePropertyMapCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885103C0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSA::StyleUpdatePropertyMapCommandArchive::~StyleUpdatePropertyMapCommandArchive(TSA::StyleUpdatePropertyMapCommandArchive *this)
{
  if (this != &TSA::_StyleUpdatePropertyMapCommandArchive_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C94FF0]();
    MEMORY[0x277C95910](v2, 0x10A1C40D4912B22);
  }

  sub_2760D7438(this + 1);
}

{
  TSA::StyleUpdatePropertyMapCommandArchive::~StyleUpdatePropertyMapCommandArchive(this);

  JUMPOUT(0x277C95910);
}

uint64_t *TSA::StyleUpdatePropertyMapCommandArchive::default_instance(TSA::StyleUpdatePropertyMapCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_StyleUpdatePropertyMapCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_StyleUpdatePropertyMapCommandArchive_default_instance_;
}

uint64_t *TSA::StyleUpdatePropertyMapCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWP::StyleUpdatePropertyMapCommandArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_2760FB834(v2);
  }

  return this;
}

google::protobuf::internal *TSA::StyleUpdatePropertyMapCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_2760FB2F0(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
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

        v12 = MEMORY[0x277C95200](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_27610D2D4(a3, v10, v5);
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
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2760FB5A0((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *TSA::StyleUpdatePropertyMapCommandArchive::_InternalSerialize(TSA::StyleUpdatePropertyMapCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::StyleUpdatePropertyMapCommandArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::StyleUpdatePropertyMapCommandArchive::ByteSizeLong(TSWP::StyleUpdatePropertyMapCommandArchive **this)
{
  if (this[2])
  {
    v3 = TSWP::StyleUpdatePropertyMapCommandArchive::ByteSizeLong(this[3]);
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

uint64_t TSA::StyleUpdatePropertyMapCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::StyleUpdatePropertyMapCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::StyleUpdatePropertyMapCommandArchive::MergeFrom(uint64_t this, const TSA::StyleUpdatePropertyMapCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;
    if (!*(v3 + 24))
    {
      v5 = *(v3 + 8);
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 24) = MEMORY[0x277C95200](v5);
    }

    return MEMORY[0x2821EBB10]();
  }

  return this;
}

uint64_t *TSA::StyleUpdatePropertyMapCommandArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::StyleUpdatePropertyMapCommandArchive::Clear(result);

    return TSA::StyleUpdatePropertyMapCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::StyleUpdatePropertyMapCommandArchive::CopyFrom(uint64_t *this, const TSA::StyleUpdatePropertyMapCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::StyleUpdatePropertyMapCommandArchive::Clear(this);

    return TSA::StyleUpdatePropertyMapCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::StyleUpdatePropertyMapCommandArchive::IsInitialized(TSA::StyleUpdatePropertyMapCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSWP::StyleUpdatePropertyMapCommandArchive::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSA::StyleUpdatePropertyMapCommandArchive::InternalSwap(TSA::StyleUpdatePropertyMapCommandArchive *this, TSA::StyleUpdatePropertyMapCommandArchive *a2)
{
  result = sub_2760D9190(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSK::CommandArchive *TSA::RemoteDataChangeCommandArchive::clear_super(TSA::RemoteDataChangeCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::RemoteDataValueMapArchive *TSA::RemoteDataChangeCommandArchive::clear_value_map(TSA::RemoteDataChangeCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSCE::RemoteDataValueMapArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t TSA::RemoteDataChangeCommandArchive::clear_quotes(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::StockArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSA::RemoteDataChangeCommandArchive *TSA::RemoteDataChangeCommandArchive::RemoteDataChangeCommandArchive(TSA::RemoteDataChangeCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288510470;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_RemoteDataChangeCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  return this;
}

TSA::RemoteDataChangeCommandArchive *TSA::RemoteDataChangeCommandArchive::RemoteDataChangeCommandArchive(TSA::RemoteDataChangeCommandArchive *this, const TSA::RemoteDataChangeCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288510470;
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
    sub_2760FBF60(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2760FB7E8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  *(this + 8) = *(a2 + 8);
  return this;
}

void sub_2760E55AC(_Unwind_Exception *a1)
{
  MEMORY[0x277C95910](v2, 0x10A1C40290C9B23);
  sub_2760FBEDC((v1 + 24));
  _Unwind_Resume(a1);
}

void TSA::RemoteDataChangeCommandArchive::~RemoteDataChangeCommandArchive(TSA::RemoteDataChangeCommandArchive *this)
{
  if (this != &TSA::_RemoteDataChangeCommandArchive_default_instance_)
  {
    if (*(this + 6))
    {
      v2 = MEMORY[0x277C94A60]();
      MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
    }

    if (*(this + 7))
    {
      v3 = MEMORY[0x277C94F00]();
      MEMORY[0x277C95910](v3, 0x10A1C40290C9B23);
    }
  }

  sub_2760D7438(this + 1);
  sub_2760FBEDC(this + 3);
}

{
  TSA::RemoteDataChangeCommandArchive::~RemoteDataChangeCommandArchive(this);

  JUMPOUT(0x277C95910);
}

void *TSA::RemoteDataChangeCommandArchive::default_instance(TSA::RemoteDataChangeCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_RemoteDataChangeCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_RemoteDataChangeCommandArchive_default_instance_;
}

uint64_t *TSA::RemoteDataChangeCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::StockArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      this = TSK::CommandArchive::Clear(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      this = TSCE::RemoteDataValueMapArchive::Clear(*(v1 + 56));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 56) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_2760FB834(v6);
  }

  return this;
}

google::protobuf::internal *TSA::RemoteDataChangeCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v31 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v31) & 1) == 0)
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
LABEL_55:
        v31 = 0;
        goto LABEL_2;
      }

      v7 = TagFallback;
      v8 = v30;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 != 1)
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_42;
          }

          *(a1 + 16) |= 2u;
          v12 = *(a1 + 56);
          if (!v12)
          {
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = MEMORY[0x277C951D0](v13);
            LODWORD(v12) = v14;
            *(a1 + 56) = v14;
            v7 = v31;
          }

          v15 = sub_27610D3A4(a3, v12, v7);
LABEL_49:
          v31 = v15;
          if (!v15)
          {
            goto LABEL_55;
          }

          goto LABEL_50;
        }

        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 48);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = MEMORY[0x277C950D0](v17);
            LODWORD(v16) = v18;
            *(a1 + 48) = v18;
            v7 = v31;
          }

          v15 = sub_27610EBB4(a3, v16, v7);
          goto LABEL_49;
        }

LABEL_42:
        if (v8)
        {
          v28 = (v8 & 7) == 4;
        }

        else
        {
          v28 = 1;
        }

        if (v28)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2760FB5A0((a1 + 8));
        }

        v15 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_49;
      }

      if (v10 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_42;
        }

        v19 = v7 - 1;
        while (2)
        {
          v20 = (v19 + 1);
          v31 = (v19 + 1);
          v21 = *(a1 + 40);
          if (!v21)
          {
LABEL_32:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v21 = *(a1 + 40);
            v22 = *v21;
            goto LABEL_33;
          }

          v27 = *(a1 + 32);
          v22 = *v21;
          if (v27 >= *v21)
          {
            if (v22 == *(a1 + 36))
            {
              goto LABEL_32;
            }

LABEL_33:
            *v21 = v22 + 1;
            v23 = MEMORY[0x277C951C0](*(a1 + 24));
            LODWORD(v24) = v23;
            v25 = *(a1 + 32);
            v26 = *(a1 + 40) + 8 * v25;
            *(a1 + 32) = v25 + 1;
            *(v26 + 8) = v23;
            v20 = v31;
          }

          else
          {
            *(a1 + 32) = v27 + 1;
            v24 = *&v21[2 * v27 + 2];
          }

          v19 = sub_27610D474(a3, v24, v20);
          v31 = v19;
          if (!v19)
          {
            goto LABEL_55;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_50;
          }

          continue;
        }
      }

      if (v10 != 4 || v8 != 33)
      {
        goto LABEL_42;
      }

      v5 |= 4u;
      *(a1 + 64) = *v7;
      v31 = (v7 + 8);
LABEL_50:
      if (sub_2760FB2F0(a3, &v31))
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

unsigned __int8 *TSA::RemoteDataChangeCommandArchive::_InternalSerialize(TSA::RemoteDataChangeCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
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

    a2 = TSCE::RemoteDataValueMapArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 8);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v20 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSCE::StockArchive::_InternalSerialize(v20, v22, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(this + 8);
    *a2 = 33;
    *(a2 + 1) = v26;
    a2 += 9;
  }

  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v27 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::RemoteDataChangeCommandArchive::RequiredFieldsByteSizeFallback(TSA::RemoteDataChangeCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 6));
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
    v5 = TSCE::RemoteDataValueMapArchive::ByteSizeLong(*(this + 7));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
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

uint64_t TSA::RemoteDataChangeCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v4 = TSA::RemoteDataChangeCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(this[6]);
    v3 = TSCE::RemoteDataValueMapArchive::ByteSizeLong(this[7]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 11;
  }

  v5 = *(this + 8);
  v6 = v4 + v5;
  v7 = this[5];
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = TSCE::StockArchive::ByteSizeLong(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v6, this + 20);
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

uint64_t TSA::RemoteDataChangeCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::RemoteDataChangeCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::RemoteDataChangeCommandArchive::MergeFrom(uint64_t this, const TSA::RemoteDataChangeCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2760FBF60(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
      v11 = *(v3 + 48);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C950D0](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v11, v13);
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
        *(v3 + 64) = *(a2 + 8);
        goto LABEL_11;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
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

      v14 = MEMORY[0x277C951D0](v15);
      *(v3 + 56) = v14;
    }

    if (*(a2 + 7))
    {
      v16 = *(a2 + 7);
    }

    else
    {
      v16 = MEMORY[0x277D80D98];
    }

    this = TSCE::RemoteDataValueMapArchive::MergeFrom(v14, v16);
    if ((v10 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSA::RemoteDataChangeCommandArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::RemoteDataChangeCommandArchive::Clear(result);

    return TSA::RemoteDataChangeCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::RemoteDataChangeCommandArchive::CopyFrom(uint64_t *this, const TSA::RemoteDataChangeCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::RemoteDataChangeCommandArchive::Clear(this);

    return TSA::RemoteDataChangeCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::RemoteDataChangeCommandArchive::IsInitialized(TSA::RemoteDataChangeCommandArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSCE::StockArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 4);
  if (v6)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 6));
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

  result = TSCE::RemoteDataValueMapArchive::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSA::RemoteDataChangeCommandArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2760D9190(&this->n128_i64[1], &a2->n128_i64[1]);
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

uint64_t TSA::GalleryInfoSetValueCommandArchive_PropertyValue::GalleryInfoSetValueCommandArchive_PropertyValue(uint64_t result, uint64_t a2)
{
  *result = &unk_288510520;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  *result = &unk_288510520;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

TSA::GalleryInfoSetValueCommandArchive_PropertyValue *TSA::GalleryInfoSetValueCommandArchive_PropertyValue::GalleryInfoSetValueCommandArchive_PropertyValue(TSA::GalleryInfoSetValueCommandArchive_PropertyValue *this, const TSA::GalleryInfoSetValueCommandArchive_PropertyValue *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288510520;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2760FB7E8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 6) = *(a2 + 6);
  return this;
}

void TSA::GalleryInfoSetValueCommandArchive_PropertyValue::~GalleryInfoSetValueCommandArchive_PropertyValue(TSA::GalleryInfoSetValueCommandArchive_PropertyValue *this)
{
  sub_2760D7438(this + 1);
}

{
  sub_2760D7438(this + 1);
}

{
  sub_2760D7438(this + 1);

  JUMPOUT(0x277C95910);
}

uint64_t *TSA::GalleryInfoSetValueCommandArchive_PropertyValue::default_instance(TSA::GalleryInfoSetValueCommandArchive_PropertyValue *this)
{
  if (atomic_load_explicit(scc_info_GalleryInfoSetValueCommandArchive_PropertyValue_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_GalleryInfoSetValueCommandArchive_PropertyValue_default_instance_;
}

uint64_t *TSA::GalleryInfoSetValueCommandArchive_PropertyValue::Clear(TSA::GalleryInfoSetValueCommandArchive_PropertyValue *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2760FB834(result);
  }

  return result;
}

google::protobuf::internal *TSA::GalleryInfoSetValueCommandArchive_PropertyValue::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_2760FB2F0(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if (*v15 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
        v15 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v13;
        goto LABEL_7;
      }

      v5 = (v15 + 2);
    }

    v15 = v5;
LABEL_7:
    if (v6 == 8)
    {
      v10 = (v5 + 1);
      v9 = *v5;
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      v11 = *v10;
      v9 = (v11 << 7) + v9 - 128;
      if ((v11 & 0x80000000) == 0)
      {
        v10 = (v5 + 2);
LABEL_19:
        v15 = v10;
        goto LABEL_20;
      }

      v15 = google::protobuf::internal::VarintParseSlow64(v5, v9);
      if (!v15)
      {
        return 0;
      }

LABEL_20:
      if (v9 > 2)
      {
        sub_27610E314();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v9;
      }
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
        sub_2760FB5A0((a1 + 8));
      }

      v15 = google::protobuf::internal::UnknownFieldParse();
      if (!v15)
      {
        return 0;
      }
    }
  }

  return v15;
}

unsigned __int8 *TSA::GalleryInfoSetValueCommandArchive_PropertyValue::_InternalSerialize(TSA::GalleryInfoSetValueCommandArchive_PropertyValue *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 6);
    *a2 = 8;
    if (v5 > 0x7F)
    {
      a2[1] = v5 | 0x80;
      v6 = v5 >> 7;
      if (v5 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v6 | 0x80;
          v7 = v6 >> 7;
          ++a2;
          v8 = v6 >> 14;
          v6 >>= 7;
        }

        while (v8);
        *(a2 - 1) = v7;
      }

      else
      {
        a2[2] = v6;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v5;
      a2 += 2;
    }
  }

  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v9 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::GalleryInfoSetValueCommandArchive_PropertyValue::ByteSizeLong(TSA::GalleryInfoSetValueCommandArchive_PropertyValue *this)
{
  if (*(this + 16))
  {
    v2 = *(this + 6);
    if (v2 < 0)
    {
      v1 = 11;
    }

    else
    {
      v1 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v1, this + 20);
  }

  *(this + 5) = v1;
  return v1;
}

uint64_t TSA::GalleryInfoSetValueCommandArchive_PropertyValue::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::GalleryInfoSetValueCommandArchive_PropertyValue::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::GalleryInfoSetValueCommandArchive_PropertyValue::MergeFrom(uint64_t this, const TSA::GalleryInfoSetValueCommandArchive_PropertyValue *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 6);
    *(v3 + 16) |= 1u;
    *(v3 + 24) = v5;
  }

  return this;
}

_BYTE *TSA::GalleryInfoSetValueCommandArchive_PropertyValue::CopyFrom(_BYTE *result, _BYTE *lpsrc)
{
  if (lpsrc != result)
  {
    v4 = result;
    v6 = result[8];
    v5 = result + 8;
    *(v5 + 4) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_2760FB834(v5);
    }

    return TSA::GalleryInfoSetValueCommandArchive_PropertyValue::MergeFrom(v4, lpsrc);
  }

  return result;
}

const TSA::GalleryInfoSetValueCommandArchive_PropertyValue *TSA::GalleryInfoSetValueCommandArchive_PropertyValue::CopyFrom(const TSA::GalleryInfoSetValueCommandArchive_PropertyValue *this, const TSA::GalleryInfoSetValueCommandArchive_PropertyValue *a2)
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
      sub_2760FB834(v5);
    }

    return TSA::GalleryInfoSetValueCommandArchive_PropertyValue::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSA::GalleryInfoSetValueCommandArchive_PropertyValue::InternalSwap(TSA::GalleryInfoSetValueCommandArchive_PropertyValue *this, TSA::GalleryInfoSetValueCommandArchive_PropertyValue *a2)
{
  result = sub_2760D9190(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  return result;
}

TSK::CommandArchive *TSA::GalleryInfoSetValueCommandArchive::clear_super(TSA::GalleryInfoSetValueCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUIDPath *TSA::GalleryInfoSetValueCommandArchive::clear_info_id_path(TSA::GalleryInfoSetValueCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSA::GalleryInfoSetValueCommandArchive *TSA::GalleryInfoSetValueCommandArchive::GalleryInfoSetValueCommandArchive(TSA::GalleryInfoSetValueCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885105D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GalleryInfoSetValueCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2885105D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GalleryInfoSetValueCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSA::GalleryInfoSetValueCommandArchive *TSA::GalleryInfoSetValueCommandArchive::GalleryInfoSetValueCommandArchive(TSA::GalleryInfoSetValueCommandArchive *this, const TSA::GalleryInfoSetValueCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885105D0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSA::GalleryInfoSetValueCommandArchive::~GalleryInfoSetValueCommandArchive(TSA::GalleryInfoSetValueCommandArchive *this)
{
  sub_2760E6CB0(this);
  sub_2760D7438(this + 1);
}

{
  TSA::GalleryInfoSetValueCommandArchive::~GalleryInfoSetValueCommandArchive(this);

  JUMPOUT(0x277C95910);
}

uint64_t *sub_2760E6CB0(uint64_t *result)
{
  if (result != &TSA::_GalleryInfoSetValueCommandArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277C94A60]();
      MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
    }

    result = v1[4];
    if (result)
    {
      v3 = MEMORY[0x277C94E10]();
      result = MEMORY[0x277C95910](v3, 0x10A1C40290C9B23);
    }

    v4 = v1[5];
    if (v4)
    {
      sub_2760D7438((v4 + 8));
      result = MEMORY[0x277C95910](v4, 0x1081C40E1DA5700);
    }

    v5 = v1[6];
    if (v5)
    {
      sub_2760D7438((v5 + 8));

      JUMPOUT(0x277C95910);
    }
  }

  return result;
}

uint64_t *TSA::GalleryInfoSetValueCommandArchive::default_instance(TSA::GalleryInfoSetValueCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_GalleryInfoSetValueCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_GalleryInfoSetValueCommandArchive_default_instance_;
}

uint64_t *TSA::GalleryInfoSetValueCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_13;
  }

  if (v2)
  {
    this = TSK::CommandArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_10;
      }

LABEL_8:
      v3 = v1[5];
      v4 = *(v3 + 8);
      this = (v3 + 8);
      *(this + 4) = 0;
      *(this + 2) = 0;
      if (v4)
      {
        this = sub_2760FB834(this);
      }

      goto LABEL_10;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSP::UUIDPath::Clear(v1[4]);
  if ((v2 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if ((v2 & 8) != 0)
  {
    v5 = v1[6];
    v6 = *(v5 + 8);
    this = (v5 + 8);
    *(this + 4) = 0;
    *(this + 2) = 0;
    if (v6)
    {
      this = sub_2760FB834(this);
    }
  }

LABEL_13:
  v8 = *(v1 + 8);
  v7 = v1 + 1;
  *(v7 + 12) = 0;
  *(v7 + 2) = 0;
  if (v8)
  {

    return sub_2760FB834(v7);
  }

  return this;
}

google::protobuf::internal *TSA::GalleryInfoSetValueCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  while ((sub_2760FB2F0(a3, &v27) & 1) == 0)
  {
    v5 = (v27 + 1);
    v6 = *v27;
    if (*v27 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v7 - 128));
        v27 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v25;
        goto LABEL_7;
      }

      v5 = (v27 + 2);
    }

    v27 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 2)
    {
      if (v8 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 1u;
        v20 = *(a1 + 24);
        if (!v20)
        {
          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C950D0](v21);
          LODWORD(v20) = v22;
          *(a1 + 24) = v22;
          v5 = v27;
        }

        v15 = sub_27610EBB4(a3, v20, v5);
      }

      else
      {
        if (v8 != 2 || v6 != 18)
        {
LABEL_47:
          if (v6)
          {
            v23 = (v6 & 7) == 4;
          }

          else
          {
            v23 = 1;
          }

          if (v23)
          {
            *(a3 + 80) = v6 - 1;
            return v27;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2760FB5A0((a1 + 8));
          }

          v15 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_54;
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

          v14 = MEMORY[0x277C951A0](v13);
          LODWORD(v12) = v14;
          *(a1 + 32) = v14;
          v5 = v27;
        }

        v15 = sub_27610D544(a3, v12, v5);
      }

LABEL_54:
      v27 = v15;
      if (!v15)
      {
        return 0;
      }
    }

    else
    {
      if (v8 != 3)
      {
        if (v8 == 4)
        {
          if (v6 != 34)
          {
            goto LABEL_47;
          }

          *(a1 + 16) |= 4u;
          v9 = *(a1 + 40);
          if (!v9)
          {
            v19 = *(a1 + 8);
            if (v19)
            {
              v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
            }

            v9 = google::protobuf::Arena::CreateMaybeMessage<TSA::GalleryInfoSetValueCommandArchive_PropertyValue>(v19);
            *(a1 + 40) = v9;
LABEL_39:
            v5 = v27;
          }
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

            v9 = google::protobuf::Arena::CreateMaybeMessage<TSA::GalleryInfoSetValueCommandArchive_PropertyValue>(v10);
            *(a1 + 48) = v9;
            goto LABEL_39;
          }
        }

        v15 = sub_27610D614(a3, v9, v5);
        goto LABEL_54;
      }

      if (v6 != 24)
      {
        goto LABEL_47;
      }

      v17 = (v5 + 1);
      v16 = *v5;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = (v5 + 2);
LABEL_31:
        v27 = v17;
        goto LABEL_32;
      }

      v27 = google::protobuf::internal::VarintParseSlow64(v5, v16);
      if (!v27)
      {
        return 0;
      }

LABEL_32:
      if (v16)
      {
        sub_27610E350();
      }

      else
      {
        *(a1 + 16) |= 0x10u;
        *(a1 + 56) = 0;
      }
    }
  }

  return v27;
}

unsigned __int8 *TSA::GalleryInfoSetValueCommandArchive::_InternalSerialize(TSA::GalleryInfoSetValueCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

LABEL_27:
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
          if ((v5 & 4) != 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          a2[2] = v19;
          a2 += 3;
          if ((v5 & 4) != 0)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        a2[1] = v18;
        a2 += 2;
        if ((v5 & 4) != 0)
        {
          goto LABEL_38;
        }
      }

LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_48;
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

  a2 = TSP::UUIDPath::_InternalSerialize(v12, v14, a3);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_27;
  }

LABEL_4:
  if ((v5 & 4) == 0)
  {
    goto LABEL_5;
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

  a2 = TSA::GalleryInfoSetValueCommandArchive_PropertyValue::_InternalSerialize(v22, v24, a3);
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

    a2 = TSA::GalleryInfoSetValueCommandArchive_PropertyValue::_InternalSerialize(v28, v30, a3);
  }

LABEL_58:
  v34 = *(this + 1);
  if ((v34 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v34 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::GalleryInfoSetValueCommandArchive::ByteSizeLong(TSA::GalleryInfoSetValueCommandArchive *this)
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

  if ((v2 & 0x1E) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = TSP::UUIDPath::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 4) == 0)
      {
LABEL_7:
        if ((v2 & 8) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

    v6 = TSA::GalleryInfoSetValueCommandArchive_PropertyValue::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_17;
      }

LABEL_13:
      v8 = *(this + 14);
      if (v8 < 0)
      {
        v9 = 11;
      }

      else
      {
        v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v9;
      goto LABEL_17;
    }

LABEL_12:
    v7 = TSA::GalleryInfoSetValueCommandArchive_PropertyValue::ByteSizeLong(*(this + 6));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_17:
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

uint64_t TSA::GalleryInfoSetValueCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::GalleryInfoSetValueCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::GalleryInfoSetValueCommandArchive::MergeFrom(uint64_t this, const TSA::GalleryInfoSetValueCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C950D0](v7);
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

        v9 = MEMORY[0x277C951A0](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = MEMORY[0x277D80A10];
      }

      this = TSP::UUIDPath::MergeFrom(v9, v11);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v12 = *(v3 + 40);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSA::GalleryInfoSetValueCommandArchive_PropertyValue>(v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 5))
      {
        v14 = *(a2 + 5);
      }

      else
      {
        v14 = &TSA::_GalleryInfoSetValueCommandArchive_PropertyValue_default_instance_;
      }

      this = TSA::GalleryInfoSetValueCommandArchive_PropertyValue::MergeFrom(v12, v14);
      if ((v5 & 8) == 0)
      {
LABEL_24:
        if ((v5 & 0x10) == 0)
        {
LABEL_26:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_25:
        *(v3 + 56) = *(a2 + 14);
        goto LABEL_26;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_24;
    }

    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSA::GalleryInfoSetValueCommandArchive_PropertyValue>(v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = &TSA::_GalleryInfoSetValueCommandArchive_PropertyValue_default_instance_;
    }

    this = TSA::GalleryInfoSetValueCommandArchive_PropertyValue::MergeFrom(v15, v17);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  return this;
}

uint64_t *TSA::GalleryInfoSetValueCommandArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::GalleryInfoSetValueCommandArchive::Clear(result);

    return TSA::GalleryInfoSetValueCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::GalleryInfoSetValueCommandArchive::CopyFrom(uint64_t *this, const TSA::GalleryInfoSetValueCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::GalleryInfoSetValueCommandArchive::Clear(this);

    return TSA::GalleryInfoSetValueCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::GalleryInfoSetValueCommandArchive::IsInitialized(TSA::GalleryInfoSetValueCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::UUIDPath::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSA::GalleryInfoSetValueCommandArchive::InternalSwap(TSA::GalleryInfoSetValueCommandArchive *this, TSA::GalleryInfoSetValueCommandArchive *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
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

TSD::ContainerInsertChildrenCommandArchive *TSA::GalleryInfoInsertItemsCommandArchive::clear_super(TSA::GalleryInfoInsertItemsCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSD::ContainerInsertChildrenCommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSA::GalleryInfoInsertItemsCommandArchive::clear_items(uint64_t this)
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

TSA::GalleryInfoInsertItemsCommandArchive *TSA::GalleryInfoInsertItemsCommandArchive::GalleryInfoInsertItemsCommandArchive(TSA::GalleryInfoInsertItemsCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288510680;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_GalleryInfoInsertItemsCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSA::GalleryInfoInsertItemsCommandArchive *TSA::GalleryInfoInsertItemsCommandArchive::GalleryInfoInsertItemsCommandArchive(TSA::GalleryInfoInsertItemsCommandArchive *this, const TSA::GalleryInfoInsertItemsCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288510680;
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
    sub_2760FB9AC(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2760FB7E8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_2760E7C94(_Unwind_Exception *a1)
{
  MEMORY[0x277C95910](v2, 0x10A1C40F8006E37);
  sub_2760FFDEC((v1 + 24));
  _Unwind_Resume(a1);
}

void TSA::GalleryInfoInsertItemsCommandArchive::~GalleryInfoInsertItemsCommandArchive(TSA::GalleryInfoInsertItemsCommandArchive *this)
{
  if (this != &TSA::_GalleryInfoInsertItemsCommandArchive_default_instance_ && *(this + 6))
  {
    v2 = MEMORY[0x277C949C0]();
    MEMORY[0x277C95910](v2, 0x10A1C40F8006E37);
  }

  sub_2760D7438(this + 1);
  sub_2760FFDEC(this + 3);
}

{
  TSA::GalleryInfoInsertItemsCommandArchive::~GalleryInfoInsertItemsCommandArchive(this);

  JUMPOUT(0x277C95910);
}

void *TSA::GalleryInfoInsertItemsCommandArchive::default_instance(TSA::GalleryInfoInsertItemsCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_GalleryInfoInsertItemsCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_GalleryInfoInsertItemsCommandArchive_default_instance_;
}

uint64_t *TSA::GalleryInfoInsertItemsCommandArchive::Clear(uint64_t *this)
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
    this = TSD::ContainerInsertChildrenCommandArchive::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_2760FB834(v5);
  }

  return this;
}

google::protobuf::internal *TSA::GalleryInfoInsertItemsCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2760FB2F0(a3, &v26))
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
        v15 = MEMORY[0x277C951B0](*(a1 + 24));
        LODWORD(v16) = v15;
        v17 = *(a1 + 32);
        v18 = *(a1 + 40) + 8 * v17;
        *(a1 + 32) = v17 + 1;
        *(v18 + 8) = v15;
        v12 = v26;
LABEL_26:
        v11 = sub_27610EC84(a3, v16, v12);
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

        v22 = MEMORY[0x277C950B0](v21);
        LODWORD(v20) = v22;
        *(a1 + 48) = v22;
        v5 = v26;
      }

      v10 = sub_27610D6E4(a3, v20, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2760FB5A0((a1 + 8));
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

unsigned __int8 *TSA::GalleryInfoInsertItemsCommandArchive::_InternalSerialize(TSA::GalleryInfoInsertItemsCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSD::ContainerInsertChildrenCommandArchive::_InternalSerialize(v5, v7, a3);
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

uint64_t TSA::GalleryInfoInsertItemsCommandArchive::ByteSizeLong(TSD::ContainerInsertChildrenCommandArchive **this)
{
  if (this[2])
  {
    v3 = TSD::ContainerInsertChildrenCommandArchive::ByteSizeLong(this[6]);
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

uint64_t TSA::GalleryInfoInsertItemsCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::GalleryInfoInsertItemsCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::GalleryInfoInsertItemsCommandArchive::MergeFrom(uint64_t this, const TSA::GalleryInfoInsertItemsCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2760FB9AC(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    *(v3 + 16) |= 1u;
    if (!*(v3 + 48))
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 48) = MEMORY[0x277C950B0](v10);
    }

    return MEMORY[0x2821E9D78]();
  }

  return this;
}

uint64_t *TSA::GalleryInfoInsertItemsCommandArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::GalleryInfoInsertItemsCommandArchive::Clear(result);

    return TSA::GalleryInfoInsertItemsCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::GalleryInfoInsertItemsCommandArchive::CopyFrom(uint64_t *this, const TSA::GalleryInfoInsertItemsCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::GalleryInfoInsertItemsCommandArchive::Clear(this);

    return TSA::GalleryInfoInsertItemsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::GalleryInfoInsertItemsCommandArchive::IsInitialized(TSA::GalleryInfoInsertItemsCommandArchive *this)
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

  result = TSD::ContainerInsertChildrenCommandArchive::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSA::GalleryInfoInsertItemsCommandArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2760D9190(&this->n128_i64[1], &a2->n128_i64[1]);
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

TSD::ContainerRemoveChildrenCommandArchive *TSA::GalleryInfoRemoveItemsCommandArchive::clear_super(TSA::GalleryInfoRemoveItemsCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::ContainerRemoveChildrenCommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSA::GalleryInfoRemoveItemsCommandArchive *TSA::GalleryInfoRemoveItemsCommandArchive::GalleryInfoRemoveItemsCommandArchive(TSA::GalleryInfoRemoveItemsCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288510730;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GalleryInfoRemoveItemsCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288510730;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GalleryInfoRemoveItemsCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSA::GalleryInfoRemoveItemsCommandArchive *TSA::GalleryInfoRemoveItemsCommandArchive::GalleryInfoRemoveItemsCommandArchive(TSA::GalleryInfoRemoveItemsCommandArchive *this, const TSA::GalleryInfoRemoveItemsCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288510730;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSA::GalleryInfoRemoveItemsCommandArchive::~GalleryInfoRemoveItemsCommandArchive(TSA::GalleryInfoRemoveItemsCommandArchive *this)
{
  if (this != &TSA::_GalleryInfoRemoveItemsCommandArchive_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C94A10]();
    MEMORY[0x277C95910](v2, 0x10A1C4084568AB2);
  }

  sub_2760D7438(this + 1);
}

{
  TSA::GalleryInfoRemoveItemsCommandArchive::~GalleryInfoRemoveItemsCommandArchive(this);

  JUMPOUT(0x277C95910);
}

uint64_t *TSA::GalleryInfoRemoveItemsCommandArchive::default_instance(TSA::GalleryInfoRemoveItemsCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_GalleryInfoRemoveItemsCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_GalleryInfoRemoveItemsCommandArchive_default_instance_;
}

uint64_t *TSA::GalleryInfoRemoveItemsCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::ContainerRemoveChildrenCommandArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_2760FB834(v2);
  }

  return this;
}

google::protobuf::internal *TSA::GalleryInfoRemoveItemsCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_2760FB2F0(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
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

        v12 = MEMORY[0x277C950C0](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_27610D7B4(a3, v10, v5);
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
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2760FB5A0((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *TSA::GalleryInfoRemoveItemsCommandArchive::_InternalSerialize(TSA::GalleryInfoRemoveItemsCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSD::ContainerRemoveChildrenCommandArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::GalleryInfoRemoveItemsCommandArchive::ByteSizeLong(TSD::ContainerRemoveChildrenCommandArchive **this)
{
  if (this[2])
  {
    v3 = TSD::ContainerRemoveChildrenCommandArchive::ByteSizeLong(this[3]);
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

uint64_t TSA::GalleryInfoRemoveItemsCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::GalleryInfoRemoveItemsCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::GalleryInfoRemoveItemsCommandArchive::MergeFrom(uint64_t this, const TSA::GalleryInfoRemoveItemsCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;
    if (!*(v3 + 24))
    {
      v5 = *(v3 + 8);
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 24) = MEMORY[0x277C950C0](v5);
    }

    return MEMORY[0x2821E9DA0]();
  }

  return this;
}

uint64_t *TSA::GalleryInfoRemoveItemsCommandArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::GalleryInfoRemoveItemsCommandArchive::Clear(result);

    return TSA::GalleryInfoRemoveItemsCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::GalleryInfoRemoveItemsCommandArchive::CopyFrom(uint64_t *this, const TSA::GalleryInfoRemoveItemsCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::GalleryInfoRemoveItemsCommandArchive::Clear(this);

    return TSA::GalleryInfoRemoveItemsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::GalleryInfoRemoveItemsCommandArchive::IsInitialized(TSA::GalleryInfoRemoveItemsCommandArchive *this)
{
  if (*(this + 16))
  {
    return MEMORY[0x2821EA150](*(this + 3));
  }

  else
  {
    return 0;
  }
}

uint64_t *TSA::GalleryInfoRemoveItemsCommandArchive::InternalSwap(TSA::GalleryInfoRemoveItemsCommandArchive *this, TSA::GalleryInfoRemoveItemsCommandArchive *a2)
{
  result = sub_2760D9190(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSK::CommandArchive *TSA::GalleryItemSetGeometryCommand::clear_super(TSA::GalleryItemSetGeometryCommand *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUIDPath *TSA::GalleryItemSetGeometryCommand::clear_item_id_path(TSA::GalleryItemSetGeometryCommand *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Point *TSA::GalleryItemSetGeometryCommand::clear_offset(TSA::GalleryItemSetGeometryCommand *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Point *TSA::GalleryItemSetGeometryCommand::clear_old_offset(TSA::GalleryItemSetGeometryCommand *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSA::GalleryItemSetGeometryCommand *TSA::GalleryItemSetGeometryCommand::GalleryItemSetGeometryCommand(TSA::GalleryItemSetGeometryCommand *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885107E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GalleryItemSetGeometryCommand_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 7) = 0x3F80000000000000;
  return this;
}

TSA::GalleryItemSetGeometryCommand *TSA::GalleryItemSetGeometryCommand::GalleryItemSetGeometryCommand(TSA::GalleryItemSetGeometryCommand *this, const TSA::GalleryItemSetGeometryCommand *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885107E0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  *(this + 7) = *(a2 + 7);
  return this;
}

void TSA::GalleryItemSetGeometryCommand::~GalleryItemSetGeometryCommand(TSA::GalleryItemSetGeometryCommand *this)
{
  sub_2760E9220(this);
  sub_2760D7438(this + 1);
}

{
  TSA::GalleryItemSetGeometryCommand::~GalleryItemSetGeometryCommand(this);

  JUMPOUT(0x277C95910);
}

void *sub_2760E9220(void *result)
{
  if (result != &TSA::_GalleryItemSetGeometryCommand_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277C94A60]();
      MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
    }

    if (v1[4])
    {
      v3 = MEMORY[0x277C94E10]();
      MEMORY[0x277C95910](v3, 0x10A1C40290C9B23);
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::Point::~Point(v4);
      MEMORY[0x277C95910]();
    }

    result = v1[6];
    if (result)
    {
      TSP::Point::~Point(result);

      JUMPOUT(0x277C95910);
    }
  }

  return result;
}

void *TSA::GalleryItemSetGeometryCommand::default_instance(TSA::GalleryItemSetGeometryCommand *this)
{
  if (atomic_load_explicit(scc_info_GalleryItemSetGeometryCommand_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_GalleryItemSetGeometryCommand_default_instance_;
}

uint64_t *TSA::GalleryItemSetGeometryCommand::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_14:
    this = TSP::UUIDPath::Clear(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_15;
  }

  this = TSK::CommandArchive::Clear(this[3]);
  if ((v2 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  this = TSP::Point::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSP::Point::Clear(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0x30) != 0)
  {
    *(v1 + 56) = 0x3F80000000000000;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::GalleryItemSetGeometryCommand::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v30) & 1) == 0)
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
LABEL_59:
        v30 = 0;
        goto LABEL_2;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v8 == 37)
          {
            v21 = *v7;
            v15 = (v7 + 4);
            v5 |= 0x20u;
            *(a1 + 60) = v21;
            goto LABEL_32;
          }
        }

        else if (v10 == 5)
        {
          if (v8 == 42)
          {
            *(a1 + 16) |= 8u;
            v12 = *(a1 + 48);
            if (!v12)
            {
              v25 = *(a1 + 8);
              if (v25)
              {
                v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
              }

              v26 = MEMORY[0x277C95180](v25);
              LODWORD(v12) = v26;
              *(a1 + 48) = v26;
LABEL_44:
              v7 = v30;
            }

LABEL_45:
            v20 = sub_27610D884(a3, v12, v7);
            goto LABEL_53;
          }
        }

        else if (v10 == 6 && v8 == 53)
        {
          v16 = *v7;
          v15 = (v7 + 4);
          v5 |= 0x10u;
          *(a1 + 56) = v16;
LABEL_32:
          v30 = v15;
          goto LABEL_54;
        }
      }

      else if (v10 == 1)
      {
        if (v8 == 10)
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

            v19 = MEMORY[0x277C950D0](v18);
            LODWORD(v17) = v19;
            *(a1 + 24) = v19;
            v7 = v30;
          }

          v20 = sub_27610EBB4(a3, v17, v7);
          goto LABEL_53;
        }
      }

      else if (v10 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 2u;
          v22 = *(a1 + 32);
          if (!v22)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = MEMORY[0x277C951A0](v23);
            LODWORD(v22) = v24;
            *(a1 + 32) = v24;
            v7 = v30;
          }

          v20 = sub_27610D544(a3, v22, v7);
          goto LABEL_53;
        }
      }

      else if (v10 == 3 && v8 == 26)
      {
        *(a1 + 16) |= 4u;
        v12 = *(a1 + 40);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277C95180](v13);
          LODWORD(v12) = v14;
          *(a1 + 40) = v14;
          goto LABEL_44;
        }

        goto LABEL_45;
      }

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
        sub_2760FB5A0((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
LABEL_53:
      v30 = v20;
      if (!v20)
      {
        goto LABEL_59;
      }

LABEL_54:
      if (sub_2760FB2F0(a3, &v30))
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

unsigned __int8 *TSA::GalleryItemSetGeometryCommand::_InternalSerialize(TSA::GalleryItemSetGeometryCommand *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      goto LABEL_28;
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

  a2 = TSP::UUIDPath::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
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

  a2 = TSP::Point::_InternalSerialize(v18, v20, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 15);
  *a2 = 37;
  *(a2 + 1) = v24;
  a2 += 5;
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

LABEL_41:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 6);
  *a2 = 42;
  v26 = *(v25 + 5);
  if (v26 > 0x7F)
  {
    a2[1] = v26 | 0x80;
    v28 = v26 >> 7;
    if (v26 >> 14)
    {
      v27 = a2 + 3;
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
      a2[2] = v28;
      v27 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v26;
    v27 = a2 + 2;
  }

  a2 = TSP::Point::_InternalSerialize(v25, v27, a3);
  if ((v5 & 0x10) != 0)
  {
LABEL_51:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v31 = *(this + 14);
    *a2 = 53;
    *(a2 + 1) = v31;
    a2 += 5;
  }

LABEL_54:
  v32 = *(this + 1);
  if ((v32 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v32 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::GalleryItemSetGeometryCommand::ByteSizeLong(TSA::GalleryItemSetGeometryCommand *this)
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

  if ((v2 & 0x3E) == 0)
  {
    goto LABEL_14;
  }

  if ((v2 & 2) == 0)
  {
    if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_17:
    v9 = TSP::Point::ByteSizeLong(*(this + 5));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = TSP::UUIDPath::ByteSizeLong(*(this + 4));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  if ((v2 & 8) != 0)
  {
LABEL_8:
    v5 = TSP::Point::ByteSizeLong(*(this + 6));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  v6 = v3 + 5;
  if ((v2 & 0x10) == 0)
  {
    v6 = v3;
  }

  if ((v2 & 0x20) != 0)
  {
    v3 = v6 + 5;
  }

  else
  {
    v3 = v6;
  }

LABEL_14:
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

uint64_t TSA::GalleryItemSetGeometryCommand::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::GalleryItemSetGeometryCommand::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::GalleryItemSetGeometryCommand::MergeFrom(uint64_t this, const TSA::GalleryItemSetGeometryCommand *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x3F) != 0)
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

        v6 = MEMORY[0x277C950D0](v7);
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

        v9 = MEMORY[0x277C951A0](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = MEMORY[0x277D80A10];
      }

      this = TSP::UUIDPath::MergeFrom(v9, v11);
    }

    v12 = MEMORY[0x277D809F0];
    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v13 = *(v3 + 40);
      if (!v13)
      {
        v14 = *(v3 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C95180](v14);
        *(v3 + 40) = v13;
      }

      if (*(a2 + 5))
      {
        v15 = *(a2 + 5);
      }

      else
      {
        v15 = v12;
      }

      this = TSP::Point::MergeFrom(v13, v15);
      if ((v5 & 8) == 0)
      {
LABEL_24:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_45;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_24;
    }

    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C95180](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = v12;
    }

    this = TSP::Point::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_25:
      if ((v5 & 0x20) == 0)
      {
LABEL_27:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_26:
      *(v3 + 60) = *(a2 + 15);
      goto LABEL_27;
    }

LABEL_45:
    *(v3 + 56) = *(a2 + 14);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  return this;
}

uint64_t *TSA::GalleryItemSetGeometryCommand::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::GalleryItemSetGeometryCommand::Clear(result);

    return TSA::GalleryItemSetGeometryCommand::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::GalleryItemSetGeometryCommand::CopyFrom(uint64_t *this, const TSA::GalleryItemSetGeometryCommand *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::GalleryItemSetGeometryCommand::Clear(this);

    return TSA::GalleryItemSetGeometryCommand::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::GalleryItemSetGeometryCommand::IsInitialized(TSA::GalleryItemSetGeometryCommand *this)
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
      result = TSP::UUIDPath::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      result = TSP::Point::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    result = TSP::Point::IsInitialized(*(this + 6));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

float TSA::GalleryItemSetGeometryCommand::InternalSwap(TSA::GalleryItemSetGeometryCommand *this, TSA::GalleryItemSetGeometryCommand *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
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
  LODWORD(v7) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v7;
  result = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = result;
  return result;
}

TSP::Point *TSA::GalleryItem::clear_offset(TSA::GalleryItem *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::DataReference *TSA::GalleryItem::clear_image_data(TSA::GalleryItem *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::DataReference *TSA::GalleryItem::clear_thumbnail_image_data(TSA::GalleryItem *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSD::ImageAdjustmentsArchive *TSA::GalleryItem::clear_image_adjustments(TSA::GalleryItem *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSD::ImageAdjustmentsArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::DataReference *TSA::GalleryItem::clear_adjusted_image_data(TSA::GalleryItem *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSP::DataReference *TSA::GalleryItem::clear_thumbnail_adjusted_image_data(TSA::GalleryItem *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::Reference *TSA::GalleryItem::clear_caption_storage(TSA::GalleryItem *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSA::GalleryItem *TSA::GalleryItem::GalleryItem(TSA::GalleryItem *this, google::protobuf::Arena *a2)
{
  *this = &unk_288510890;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GalleryItem_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 76) = 0u;
  return this;
}

TSA::GalleryItem *TSA::GalleryItem::GalleryItem(TSA::GalleryItem *this, const TSA::GalleryItem *a2)
{
  *(this + 1) = 0;
  *this = &unk_288510890;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2760FB7E8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  *(this + 22) = *(a2 + 22);
  return this;
}

void TSA::GalleryItem::~GalleryItem(TSA::GalleryItem *this)
{
  sub_2760EA46C(this);
  sub_2760D7438(this + 1);
}

{
  TSA::GalleryItem::~GalleryItem(this);

  JUMPOUT(0x277C95910);
}

TSP::Reference *sub_2760EA46C(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C95910](v2, 0x1012C40EC159624);
  }

  if (v1 != &TSA::_GalleryItem_default_instance_)
  {
    v3 = *(v1 + 4);
    if (v3)
    {
      TSP::Point::~Point(v3);
      MEMORY[0x277C95910]();
    }

    v4 = *(v1 + 5);
    if (v4)
    {
      TSP::DataReference::~DataReference(v4);
      MEMORY[0x277C95910]();
    }

    v5 = *(v1 + 6);
    if (v5)
    {
      TSP::DataReference::~DataReference(v5);
      MEMORY[0x277C95910]();
    }

    v6 = *(v1 + 7);
    if (v6)
    {
      TSD::ImageAdjustmentsArchive::~ImageAdjustmentsArchive(v6);
      MEMORY[0x277C95910]();
    }

    v7 = *(v1 + 8);
    if (v7)
    {
      TSP::DataReference::~DataReference(v7);
      MEMORY[0x277C95910]();
    }

    v8 = *(v1 + 9);
    if (v8)
    {
      TSP::DataReference::~DataReference(v8);
      MEMORY[0x277C95910]();
    }

    result = *(v1 + 10);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C95910);
    }
  }

  return result;
}

void *TSA::GalleryItem::default_instance(TSA::GalleryItem *this)
{
  if (atomic_load_explicit(scc_info_GalleryItem_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_GalleryItem_default_instance_;
}

uint64_t *TSA::GalleryItem::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (this[2])
  {
    v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  if ((this[2] & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_19:
  this = TSP::Point::Clear(this[4]);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = TSP::DataReference::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = TSP::DataReference::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_23:
    this = TSP::DataReference::Clear(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_22:
  this = TSD::ImageAdjustmentsArchive::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_24:
  this = TSP::DataReference::Clear(*(v1 + 72));
  if (v2 < 0)
  {
LABEL_10:
    this = TSP::Reference::Clear(*(v1 + 80));
  }

LABEL_11:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 80) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::GalleryItem::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v34 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v34) & 1) == 0)
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
        goto LABEL_79;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 4)
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 == 26)
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

                v24 = MEMORY[0x277C95130](v23);
                LODWORD(v13) = v24;
                *(a1 + 40) = v24;
LABEL_54:
                v7 = v34;
              }

LABEL_55:
              v11 = sub_27610D954(a3, v13, v7);
              goto LABEL_56;
            }
          }

          else if (v10 == 4 && v8 == 34)
          {
            *(a1 + 16) |= 8u;
            v13 = *(a1 + 48);
            if (!v13)
            {
              v14 = *(a1 + 8);
              if (v14)
              {
                v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = MEMORY[0x277C95130](v14);
              LODWORD(v13) = v15;
              *(a1 + 48) = v15;
              goto LABEL_54;
            }

            goto LABEL_55;
          }
        }

        else if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 2u;
            v20 = *(a1 + 32);
            if (!v20)
            {
              v21 = *(a1 + 8);
              if (v21)
              {
                v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
              }

              v22 = MEMORY[0x277C95180](v21);
              LODWORD(v20) = v22;
              *(a1 + 32) = v22;
              v7 = v34;
            }

            v11 = sub_27610D884(a3, v20, v7);
            goto LABEL_56;
          }
        }

        else if (v10 == 2 && v8 == 21)
        {
          v5 |= 0x100u;
          *(a1 + 88) = *v7;
          v34 = (v7 + 4);
          goto LABEL_57;
        }
      }

      else if (v8 >> 3 <= 6)
      {
        if (v10 == 5)
        {
          if (v8 == 42)
          {
            *(a1 + 16) |= 0x10u;
            v27 = *(a1 + 56);
            if (!v27)
            {
              v28 = *(a1 + 8);
              if (v28)
              {
                v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
              }

              v29 = MEMORY[0x277C95090](v28);
              LODWORD(v27) = v29;
              *(a1 + 56) = v29;
              v7 = v34;
            }

            v11 = sub_27610DA24(a3, v27, v7);
            goto LABEL_56;
          }
        }

        else if (v10 == 6 && v8 == 50)
        {
          *(a1 + 16) |= 0x20u;
          v13 = *(a1 + 64);
          if (!v13)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = MEMORY[0x277C95130](v16);
            LODWORD(v13) = v17;
            *(a1 + 64) = v17;
            goto LABEL_54;
          }

          goto LABEL_55;
        }
      }

      else if (v10 == 7)
      {
        if (v8 == 58)
        {
          *(a1 + 16) |= 0x40u;
          v13 = *(a1 + 72);
          if (!v13)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = MEMORY[0x277C95130](v25);
            LODWORD(v13) = v26;
            *(a1 + 72) = v26;
            goto LABEL_54;
          }

          goto LABEL_55;
        }
      }

      else if (v10 == 8)
      {
        if (v8 == 66)
        {
          *(a1 + 16) |= 0x80u;
          v30 = *(a1 + 80);
          if (!v30)
          {
            v31 = *(a1 + 8);
            if (v31)
            {
              v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
            }

            v32 = MEMORY[0x277C951B0](v31);
            LODWORD(v30) = v32;
            *(a1 + 80) = v32;
            v7 = v34;
          }

          v11 = sub_27610EC84(a3, v30, v7);
          goto LABEL_56;
        }
      }

      else if (v10 == 9 && v8 == 74)
      {
        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v11 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_56;
      }

      if (v8)
      {
        v33 = (v8 & 7) == 4;
      }

      else
      {
        v33 = 1;
      }

      if (v33)
      {
        *(a3 + 80) = v8 - 1;
        goto LABEL_2;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2760FB5A0((a1 + 8));
      }

      v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_56:
      v34 = v11;
      if (!v11)
      {
LABEL_79:
        v34 = 0;
        goto LABEL_2;
      }

LABEL_57:
      if (sub_2760FB2F0(a3, &v34))
      {
        goto LABEL_2;
      }
    }

    v7 = (v34 + 2);
LABEL_6:
    v34 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v34;
}

unsigned __int8 *TSA::GalleryItem::_InternalSerialize(TSA::GalleryItem *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 4);
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

    v4 = TSP::Point::_InternalSerialize(v9, v11, a3);
    if ((v6 & 0x100) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(this + 22);
  *v4 = 21;
  *(v4 + 1) = v15;
  v4 += 5;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_26:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v16 = *(this + 5);
  *v4 = 26;
  v17 = *(v16 + 5);
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v19 = v17 >> 7;
    if (v17 >> 14)
    {
      v18 = v4 + 3;
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
      v4[2] = v19;
      v18 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v17;
    v18 = v4 + 2;
  }

  v4 = TSP::DataReference::_InternalSerialize(v16, v18, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_36:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v22 = *(this + 6);
  *v4 = 34;
  v23 = *(v22 + 5);
  if (v23 > 0x7F)
  {
    v4[1] = v23 | 0x80;
    v25 = v23 >> 7;
    if (v23 >> 14)
    {
      v24 = v4 + 3;
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
      v4[2] = v25;
      v24 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v23;
    v24 = v4 + 2;
  }

  v4 = TSP::DataReference::_InternalSerialize(v22, v24, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v28 = *(this + 7);
  *v4 = 42;
  v29 = *(v28 + 5);
  if (v29 > 0x7F)
  {
    v4[1] = v29 | 0x80;
    v31 = v29 >> 7;
    if (v29 >> 14)
    {
      v30 = v4 + 3;
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
      v4[2] = v31;
      v30 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v29;
    v30 = v4 + 2;
  }

  v4 = TSD::ImageAdjustmentsArchive::_InternalSerialize(v28, v30, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_66;
  }

LABEL_56:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v34 = *(this + 8);
  *v4 = 50;
  v35 = *(v34 + 5);
  if (v35 > 0x7F)
  {
    v4[1] = v35 | 0x80;
    v37 = v35 >> 7;
    if (v35 >> 14)
    {
      v36 = v4 + 3;
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
      v4[2] = v37;
      v36 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v35;
    v36 = v4 + 2;
  }

  v4 = TSP::DataReference::_InternalSerialize(v34, v36, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_76;
  }

LABEL_66:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v40 = *(this + 9);
  *v4 = 58;
  v41 = *(v40 + 5);
  if (v41 > 0x7F)
  {
    v4[1] = v41 | 0x80;
    v43 = v41 >> 7;
    if (v41 >> 14)
    {
      v42 = v4 + 3;
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
      v4[2] = v43;
      v42 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v41;
    v42 = v4 + 2;
  }

  v4 = TSP::DataReference::_InternalSerialize(v40, v42, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_76:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v46 = *(this + 10);
  *v4 = 66;
  v47 = *(v46 + 5);
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

  v4 = TSP::Reference::_InternalSerialize(v46, v48, a3);
  if (v6)
  {
LABEL_10:
    v4 = sub_2760D85BC(a3, 9, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_11:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSA::GalleryItem::ByteSizeLong(TSA::GalleryItem *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_17;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = TSP::Point::ByteSizeLong(*(this + 4));
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
  if ((v2 & 4) != 0)
  {
    v11 = TSP::DataReference::ByteSizeLong(*(this + 5));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v12 = TSP::DataReference::ByteSizeLong(*(this + 6));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = TSD::ImageAdjustmentsArchive::ByteSizeLong(*(this + 7));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14 = TSP::DataReference::ByteSizeLong(*(this + 8));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_26:
  v15 = TSP::DataReference::ByteSizeLong(*(this + 9));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_16:
    v8 = TSP::Reference::ByteSizeLong(*(this + 10));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v2 & 0x100) != 0)
  {
    v9 = v3 + 5;
  }

  else
  {
    v9 = v3;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v9, this + 20);
  }

  else
  {
    *(this + 5) = v9;
    return v9;
  }
}

uint64_t TSA::GalleryItem::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::GalleryItem::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::GalleryItem::MergeFrom(uint64_t this, const TSA::GalleryItem *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (!v5)
  {
    goto LABEL_21;
  }

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

      v6 = MEMORY[0x277C95180](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = MEMORY[0x277D809F0];
    }

    this = TSP::Point::MergeFrom(v6, v8);
  }

  v9 = MEMORY[0x277D80A30];
  if ((v5 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v11 = *(v3 + 40);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C95130](v12);
      *(v3 + 40) = v11;
    }

    if (*(a2 + 5))
    {
      v13 = *(a2 + 5);
    }

    else
    {
      v13 = v9;
    }

    this = TSP::DataReference::MergeFrom(v11, v13);
    if ((v5 & 8) == 0)
    {
LABEL_17:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_40;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 16) |= 8u;
  v14 = *(v3 + 48);
  if (!v14)
  {
    v15 = *(v3 + 8);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    v14 = MEMORY[0x277C95130](v15);
    *(v3 + 48) = v14;
  }

  if (*(a2 + 6))
  {
    v16 = *(a2 + 6);
  }

  else
  {
    v16 = v9;
  }

  this = TSP::DataReference::MergeFrom(v14, v16);
  if ((v5 & 0x10) == 0)
  {
LABEL_18:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_40:
  *(v3 + 16) |= 0x10u;
  v17 = *(v3 + 56);
  if (!v17)
  {
    v18 = *(v3 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x277C95090](v18);
    *(v3 + 56) = v17;
  }

  if (*(a2 + 7))
  {
    v19 = *(a2 + 7);
  }

  else
  {
    v19 = MEMORY[0x277D804E0];
  }

  this = TSD::ImageAdjustmentsArchive::MergeFrom(v17, v19);
  if ((v5 & 0x20) == 0)
  {
LABEL_19:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_48:
  *(v3 + 16) |= 0x20u;
  v20 = *(v3 + 64);
  if (!v20)
  {
    v21 = *(v3 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = MEMORY[0x277C95130](v21);
    *(v3 + 64) = v20;
  }

  if (*(a2 + 8))
  {
    v22 = *(a2 + 8);
  }

  else
  {
    v22 = v9;
  }

  this = TSP::DataReference::MergeFrom(v20, v22);
  if ((v5 & 0x40) != 0)
  {
LABEL_56:
    *(v3 + 16) |= 0x40u;
    v23 = *(v3 + 72);
    if (!v23)
    {
      v24 = *(v3 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x277C95130](v24);
      *(v3 + 72) = v23;
    }

    if (*(a2 + 9))
    {
      v25 = *(a2 + 9);
    }

    else
    {
      v25 = v9;
    }

    this = TSP::DataReference::MergeFrom(v23, v25);
    if ((v5 & 0x80) != 0)
    {
      goto LABEL_64;
    }

LABEL_21:
    if ((v5 & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_22;
  }

LABEL_20:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_21;
  }

LABEL_64:
  *(v3 + 16) |= 0x80u;
  v26 = *(v3 + 80);
  if (!v26)
  {
    v27 = *(v3 + 8);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = MEMORY[0x277C951B0](v27);
    *(v3 + 80) = v26;
  }

  if (*(a2 + 10))
  {
    v28 = *(a2 + 10);
  }

  else
  {
    v28 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v26, v28);
  if ((v5 & 0x100) != 0)
  {
LABEL_22:
    v10 = *(a2 + 22);
    *(v3 + 16) |= 0x100u;
    *(v3 + 88) = v10;
  }

  return this;
}

uint64_t *TSA::GalleryItem::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::GalleryItem::Clear(result);

    return TSA::GalleryItem::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::GalleryItem::CopyFrom(uint64_t *this, const TSA::GalleryItem *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::GalleryItem::Clear(this);

    return TSA::GalleryItem::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::GalleryItem::IsInitialized(TSA::GalleryItem *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    result = TSP::Point::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSP::DataReference::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    result = TSP::DataReference::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSP::DataReference::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSP::DataReference::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x80) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 10));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSA::GalleryItem::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2760D9190(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[1].n128_u64[1];
  this[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v5;
  v6 = this[2].n128_u64[0];
  v7 = this[2].n128_u64[1];
  this[2] = a2[2];
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u64[1] = v7;
  v8 = this[3].n128_u64[0];
  v9 = this[3].n128_u64[1];
  this[3] = a2[3];
  a2[3].n128_u64[0] = v8;
  a2[3].n128_u64[1] = v9;
  v10 = this[4].n128_u64[0];
  v11 = this[4].n128_u64[1];
  result = a2[4];
  this[4] = result;
  a2[4].n128_u64[0] = v10;
  a2[4].n128_u64[1] = v11;
  v13 = this[5].n128_u64[0];
  this[5].n128_u64[0] = a2[5].n128_u64[0];
  a2[5].n128_u64[0] = v13;
  LODWORD(v13) = this[5].n128_u32[2];
  this[5].n128_u32[2] = a2[5].n128_u32[2];
  a2[5].n128_u32[2] = v13;
  return result;
}

uint64_t TSA::GalleryInfo::clear_items(uint64_t this)
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

TSP::Reference *TSA::GalleryInfo::clear_caption_storage(TSA::GalleryInfo *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSA::GalleryInfo *TSA::GalleryInfo::GalleryInfo(TSA::GalleryInfo *this, google::protobuf::Arena *a2)
{
  *this = &unk_288510940;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_GalleryInfo_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 6) = 0;
  return this;
}

TSA::GalleryInfo *TSA::GalleryInfo::GalleryInfo(TSA::GalleryInfo *this, const TSA::GalleryInfo *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288510940;
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
    sub_2760FB9AC(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2760FB7E8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  *(this + 14) = *(a2 + 14);
  return this;
}

void sub_2760EBA10(_Unwind_Exception *a1)
{
  MEMORY[0x277C95910](v2, 0x1081C407D3F2757);
  sub_2760FFDEC((v1 + 24));
  _Unwind_Resume(a1);
}

void TSA::GalleryInfo::~GalleryInfo(TSA::GalleryInfo *this)
{
  if (this != &TSA::_GalleryInfo_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C95910]();
    }
  }

  sub_2760D7438(this + 1);
  sub_2760FFDEC(this + 3);
}

{
  TSA::GalleryInfo::~GalleryInfo(this);

  JUMPOUT(0x277C95910);
}

void *TSA::GalleryInfo::default_instance(TSA::GalleryInfo *this)
{
  if (atomic_load_explicit(scc_info_GalleryInfo_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_GalleryInfo_default_instance_;
}

uint64_t *TSA::GalleryInfo::Clear(uint64_t *this)
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
    this = TSP::Reference::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_2760FB834(v5);
  }

  return this;
}

google::protobuf::internal *TSA::GalleryInfo::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  while (1)
  {
    while (1)
    {
LABEL_2:
      if (sub_2760FB2F0(a3, &v30))
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
      if (v6 >> 3 == 3)
      {
        break;
      }

      if (v8 != 2)
      {
        if (v8 != 1 || v6 != 10)
        {
          goto LABEL_13;
        }

        v18 = v5 - 1;
        while (1)
        {
          v19 = (v18 + 1);
          v30 = (v18 + 1);
          v20 = *(a1 + 40);
          if (!v20)
          {
            goto LABEL_37;
          }

          v26 = *(a1 + 32);
          v21 = *v20;
          if (v26 < *v20)
          {
            *(a1 + 32) = v26 + 1;
            v23 = *&v20[2 * v26 + 2];
            goto LABEL_41;
          }

          if (v21 == *(a1 + 36))
          {
LABEL_37:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v20 = *(a1 + 40);
            v21 = *v20;
          }

          *v20 = v21 + 1;
          v22 = MEMORY[0x277C951B0](*(a1 + 24));
          LODWORD(v23) = v22;
          v24 = *(a1 + 32);
          v25 = *(a1 + 40) + 8 * v24;
          *(a1 + 32) = v24 + 1;
          *(v25 + 8) = v22;
          v19 = v30;
LABEL_41:
          v18 = sub_27610EC84(a3, v23, v19);
          v30 = v18;
          if (!v18)
          {
            return 0;
          }

          if (*a3 <= v18 || *v18 != 10)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 != 16)
      {
        goto LABEL_13;
      }

      v13 = (v5 + 1);
      v12 = *v5;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = (v5 + 2);
LABEL_24:
        v30 = v13;
        goto LABEL_25;
      }

      v30 = google::protobuf::internal::VarintParseSlow64(v5, v12);
      if (!v30)
      {
        return 0;
      }

LABEL_25:
      if (v12 > 2)
      {
        sub_27610E38C();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 56) = v12;
      }
    }

    if (v6 == 26)
    {
      *(a1 + 16) |= 1u;
      v15 = *(a1 + 48);
      if (!v15)
      {
        v16 = *(a1 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = MEMORY[0x277C951B0](v16);
        LODWORD(v15) = v17;
        *(a1 + 48) = v17;
        v5 = v30;
      }

      v11 = sub_27610EC84(a3, v15, v5);
      goto LABEL_33;
    }

LABEL_13:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2760FB5A0((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_33:
    v30 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v30;
}

unsigned __int8 *TSA::GalleryInfo::_InternalSerialize(TSA::GalleryInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 4);
  if ((v13 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 14);
    *a2 = 16;
    if (v14 <= 0x7F)
    {
      a2[1] = v14;
      a2 += 2;
      if ((v13 & 1) == 0)
      {
        goto LABEL_36;
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
        v20 = v15 >> 7;
        ++a2;
        v21 = v15 >> 14;
        v15 >>= 7;
      }

      while (v21);
      *(a2 - 1) = v20;
      if ((v13 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_22;
    }

    a2[2] = v15;
    a2 += 3;
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_22:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 6);
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
        v22 = v19 >> 7;
        ++v18;
        v23 = v19 >> 14;
        v19 >>= 7;
      }

      while (v23);
      *(v18 - 1) = v22;
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

  a2 = TSP::Reference::_InternalSerialize(v16, v18, a3);
LABEL_36:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::GalleryInfo::ByteSizeLong(TSA::GalleryInfo *this)
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

  v8 = *(this + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = TSP::Reference::ByteSizeLong(*(this + 6));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
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
    }
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

uint64_t TSA::GalleryInfo::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::GalleryInfo::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::GalleryInfo::MergeFrom(uint64_t this, const TSA::GalleryInfo *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2760FB9AC(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
      *(v3 + 16) |= 1u;
      v11 = *(v3 + 48);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C951B0](v12);
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
      *(v3 + 56) = *(a2 + 14);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TSA::GalleryInfo::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::GalleryInfo::Clear(result);

    return TSA::GalleryInfo::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::GalleryInfo::CopyFrom(uint64_t *this, const TSA::GalleryInfo *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::GalleryInfo::Clear(this);

    return TSA::GalleryInfo::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::GalleryInfo::IsInitialized(TSA::GalleryInfo *this)
{
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

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSA::GalleryInfo::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2760D9190(&this->n128_i64[1], &a2->n128_i64[1]);
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
  LODWORD(v8) = this[3].n128_u32[2];
  this[3].n128_u32[2] = a2[3].n128_u32[2];
  a2[3].n128_u32[2] = v8;
  return result;
}

TSD::DrawableSelectionTransformerArchive *TSA::GallerySelectionTransformer::clear_super(TSA::GallerySelectionTransformer *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::DrawableSelectionTransformerArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUIDPath *TSA::GallerySelectionTransformer::clear_gallery_uuid_path(TSA::GallerySelectionTransformer *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUIDPath *TSA::GallerySelectionTransformer::clear_caption_storage_uuid_path(TSA::GallerySelectionTransformer *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSA::GallerySelectionTransformer *TSA::GallerySelectionTransformer::GallerySelectionTransformer(TSA::GallerySelectionTransformer *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885109F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GallerySelectionTransformer_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2885109F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GallerySelectionTransformer_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSA::GallerySelectionTransformer *TSA::GallerySelectionTransformer::GallerySelectionTransformer(TSA::GallerySelectionTransformer *this, const TSA::GallerySelectionTransformer *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885109F0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  return this;
}

void TSA::GallerySelectionTransformer::~GallerySelectionTransformer(TSA::GallerySelectionTransformer *this)
{
  if (this != &TSA::_GallerySelectionTransformer_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277C94970]();
      MEMORY[0x277C95910](v2, 0x10A1C40DFBAE579);
    }

    if (*(this + 4))
    {
      v3 = MEMORY[0x277C94E10]();
      MEMORY[0x277C95910](v3, 0x10A1C40290C9B23);
    }

    if (*(this + 5))
    {
      v4 = MEMORY[0x277C94E10]();
      MEMORY[0x277C95910](v4, 0x10A1C40290C9B23);
    }
  }

  sub_2760D7438(this + 1);
}

{
  TSA::GallerySelectionTransformer::~GallerySelectionTransformer(this);

  JUMPOUT(0x277C95910);
}

uint64_t *TSA::GallerySelectionTransformer::default_instance(TSA::GallerySelectionTransformer *this)
{
  if (atomic_load_explicit(scc_info_GallerySelectionTransformer_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_GallerySelectionTransformer_default_instance_;
}

uint64_t *TSA::GallerySelectionTransformer::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSD::DrawableSelectionTransformerArchive::Clear(this[3]);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    this = TSP::UUIDPath::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSP::UUIDPath::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::GallerySelectionTransformer::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  while ((sub_2760FB2F0(a3, &v23) & 1) == 0)
  {
    v5 = (v23 + 1);
    v6 = *v23;
    if ((*v23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v23 + 2);
LABEL_6:
      v23 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v7 - 128));
    v23 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v21;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 4u;
      v12 = *(a1 + 40);
      if (!v12)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C951A0](v15);
        LODWORD(v12) = v16;
        *(a1 + 40) = v16;
LABEL_30:
        v5 = v23;
      }

LABEL_31:
      v11 = sub_27610D544(a3, v12, v5);
      goto LABEL_37;
    }

    if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_13;
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

        v14 = MEMORY[0x277C951A0](v13);
        LODWORD(v12) = v14;
        *(a1 + 32) = v14;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    if (v8 != 1 || v6 != 10)
    {
LABEL_13:
      if (v6)
      {
        v10 = (v6 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        *(a3 + 80) = v6 - 1;
        return v23;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2760FB5A0((a1 + 8));
      }

      v11 = google::protobuf::internal::UnknownFieldParse();
      goto LABEL_37;
    }

    *(a1 + 16) |= 1u;
    v17 = *(a1 + 24);
    if (!v17)
    {
      v18 = *(a1 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277C950A0](v18);
      LODWORD(v17) = v19;
      *(a1 + 24) = v19;
      v5 = v23;
    }

    v11 = sub_27610DAF4(a3, v17, v5);
LABEL_37:
    v23 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v23;
}

unsigned __int8 *TSA::GallerySelectionTransformer::_InternalSerialize(TSA::GallerySelectionTransformer *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSD::DrawableSelectionTransformerArchive::_InternalSerialize(v6, v8, a3);
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

  a2 = TSP::UUIDPath::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) != 0)
  {
LABEL_25:
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

    a2 = TSP::UUIDPath::_InternalSerialize(v18, v20, a3);
  }

LABEL_35:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::GallerySelectionTransformer::ByteSizeLong(TSA::GallerySelectionTransformer *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::DrawableSelectionTransformerArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 6) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = TSP::UUIDPath::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v6 = TSP::UUIDPath::ByteSizeLong(*(this + 5));
      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

uint64_t TSA::GallerySelectionTransformer::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::GallerySelectionTransformer::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::GallerySelectionTransformer::MergeFrom(uint64_t this, const TSA::GallerySelectionTransformer *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C950A0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80518];
      }

      this = TSD::DrawableSelectionTransformerArchive::MergeFrom(v6, v8);
    }

    v9 = MEMORY[0x277D80A10];
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

        v10 = MEMORY[0x277C951A0](v11);
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

      this = TSP::UUIDPath::MergeFrom(v10, v12);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v13 = *(v3 + 40);
      if (!v13)
      {
        v14 = *(v3 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C951A0](v14);
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

      return TSP::UUIDPath::MergeFrom(v13, v15);
    }
  }

  return this;
}

uint64_t *TSA::GallerySelectionTransformer::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::GallerySelectionTransformer::Clear(result);

    return TSA::GallerySelectionTransformer::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::GallerySelectionTransformer::CopyFrom(uint64_t *this, const TSA::GallerySelectionTransformer *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::GallerySelectionTransformer::Clear(this);

    return TSA::GallerySelectionTransformer::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::GallerySelectionTransformer::IsInitialized(TSA::GallerySelectionTransformer *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSD::DrawableSelectionTransformerArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::UUIDPath::IsInitialized(*(this + 4));
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

    result = TSP::UUIDPath::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSA::GallerySelectionTransformer::InternalSwap(TSA::GallerySelectionTransformer *this, TSA::GallerySelectionTransformer *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
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

TSP::Reference *TSA::GalleryItemSelection::clear_displayed_item(TSA::GalleryItemSelection *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSA::GalleryItemSelection::clear_items(uint64_t this)
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

TSA::GalleryItemSelection *TSA::GalleryItemSelection::GalleryItemSelection(TSA::GalleryItemSelection *this, google::protobuf::Arena *a2)
{
  *this = &unk_288510AA0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_GalleryItemSelection_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSA::GalleryItemSelection *TSA::GalleryItemSelection::GalleryItemSelection(TSA::GalleryItemSelection *this, const TSA::GalleryItemSelection *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288510AA0;
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
    sub_2760FB9AC(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2760FB7E8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_2760ED4C0(_Unwind_Exception *a1)
{
  MEMORY[0x277C95910](v2, 0x1081C407D3F2757);
  sub_2760FFDEC((v1 + 24));
  _Unwind_Resume(a1);
}

void TSA::GalleryItemSelection::~GalleryItemSelection(TSA::GalleryItemSelection *this)
{
  if (this != &TSA::_GalleryItemSelection_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C95910]();
    }
  }

  sub_2760D7438(this + 1);
  sub_2760FFDEC(this + 3);
}

{
  TSA::GalleryItemSelection::~GalleryItemSelection(this);

  JUMPOUT(0x277C95910);
}

void *TSA::GalleryItemSelection::default_instance(TSA::GalleryItemSelection *this)
{
  if (atomic_load_explicit(scc_info_GalleryItemSelection_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_GalleryItemSelection_default_instance_;
}

uint64_t *TSA::GalleryItemSelection::Clear(uint64_t *this)
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
    this = TSP::Reference::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_2760FB834(v5);
  }

  return this;
}

google::protobuf::internal *TSA::GalleryItemSelection::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2760FB2F0(a3, &v26))
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
        v15 = MEMORY[0x277C951B0](*(a1 + 24));
        LODWORD(v16) = v15;
        v17 = *(a1 + 32);
        v18 = *(a1 + 40) + 8 * v17;
        *(a1 + 32) = v17 + 1;
        *(v18 + 8) = v15;
        v12 = v26;
LABEL_26:
        v11 = sub_27610EC84(a3, v16, v12);
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

        v22 = MEMORY[0x277C951B0](v21);
        LODWORD(v20) = v22;
        *(a1 + 48) = v22;
        v5 = v26;
      }

      v10 = sub_27610EC84(a3, v20, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2760FB5A0((a1 + 8));
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

unsigned __int8 *TSA::GalleryItemSelection::_InternalSerialize(TSA::GalleryItemSelection *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
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

uint64_t TSA::GalleryItemSelection::ByteSizeLong(TSA::GalleryItemSelection *this)
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

  if (*(this + 16))
  {
    v8 = TSP::Reference::ByteSizeLong(*(this + 6));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSA::GalleryItemSelection::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::GalleryItemSelection::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::GalleryItemSelection::MergeFrom(uint64_t this, const TSA::GalleryItemSelection *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2760FB9AC(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

      v11 = MEMORY[0x277C951B0](v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v11, v13);
  }

  return this;
}

uint64_t *TSA::GalleryItemSelection::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::GalleryItemSelection::Clear(result);

    return TSA::GalleryItemSelection::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::GalleryItemSelection::CopyFrom(uint64_t *this, const TSA::GalleryItemSelection *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::GalleryItemSelection::Clear(this);

    return TSA::GalleryItemSelection::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::GalleryItemSelection::IsInitialized(TSA::GalleryItemSelection *this)
{
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

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSA::GalleryItemSelection::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2760D9190(&this->n128_i64[1], &a2->n128_i64[1]);
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

TSP::UUIDPath *TSA::GalleryItemSelectionTransformer::clear_caption_storage_uuid_path(TSA::GalleryItemSelectionTransformer *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSA::GalleryItemSelectionTransformer *TSA::GalleryItemSelectionTransformer::GalleryItemSelectionTransformer(TSA::GalleryItemSelectionTransformer *this, google::protobuf::Arena *a2)
{
  *this = &unk_288510B50;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GalleryItemSelectionTransformer_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_288510B50;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GalleryItemSelectionTransformer_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSA::GalleryItemSelectionTransformer *TSA::GalleryItemSelectionTransformer::GalleryItemSelectionTransformer(TSA::GalleryItemSelectionTransformer *this, const TSA::GalleryItemSelectionTransformer *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288510B50;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSA::GalleryItemSelectionTransformer::~GalleryItemSelectionTransformer(TSA::GalleryItemSelectionTransformer *this)
{
  if (this != &TSA::_GalleryItemSelectionTransformer_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSA::GalleryItemSelectionTransformerHelper::~GalleryItemSelectionTransformerHelper(v2);
      MEMORY[0x277C95910]();
    }

    if (*(this + 4))
    {
      v3 = MEMORY[0x277C94E10]();
      MEMORY[0x277C95910](v3, 0x10A1C40290C9B23);
    }
  }

  sub_2760D7438(this + 1);
}

{
  TSA::GalleryItemSelectionTransformer::~GalleryItemSelectionTransformer(this);

  JUMPOUT(0x277C95910);
}

uint64_t *TSA::GalleryItemSelectionTransformer::default_instance(TSA::GalleryItemSelectionTransformer *this)
{
  if (atomic_load_explicit(scc_info_GalleryItemSelectionTransformer_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_GalleryItemSelectionTransformer_default_instance_;
}

uint64_t *TSA::GalleryItemSelectionTransformer::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSA::GalleryItemSelectionTransformerHelper::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::UUIDPath::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

uint64_t *TSA::GalleryItemSelectionTransformerHelper::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUIDPath::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::UUIDPath::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_2760FB834(v5);
  }

  return this;
}

google::protobuf::internal *TSA::GalleryItemSelectionTransformer::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  while ((sub_2760FB2F0(a3, &v19) & 1) == 0)
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

        v13 = MEMORY[0x277C951A0](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v19;
      }

      v10 = sub_27610D544(a3, v11, v5);
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
          sub_2760FB5A0((a1 + 8));
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

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSA::GalleryItemSelectionTransformerHelper>(v15);
        *(a1 + 24) = v14;
        v5 = v19;
      }

      v10 = sub_27610DBC4(a3, v14, v5);
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

unsigned __int8 *TSA::GalleryItemSelectionTransformer::_InternalSerialize(TSA::GalleryItemSelectionTransformer *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSA::GalleryItemSelectionTransformerHelper::_InternalSerialize(v6, v8, a3);
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

    a2 = TSP::UUIDPath::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::GalleryItemSelectionTransformer::ByteSizeLong(TSA::GalleryItemSelectionTransformer *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = TSA::GalleryItemSelectionTransformerHelper::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v5 = TSP::UUIDPath::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

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

uint64_t TSA::GalleryItemSelectionTransformer::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::GalleryItemSelectionTransformer::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::GalleryItemSelectionTransformer::MergeFrom(uint64_t this, const TSA::GalleryItemSelectionTransformer *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSA::GalleryItemSelectionTransformerHelper>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSA::_GalleryItemSelectionTransformerHelper_default_instance_;
      }

      this = TSA::GalleryItemSelectionTransformerHelper::MergeFrom(v6, v8);
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

        v9 = MEMORY[0x277C951A0](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = MEMORY[0x277D80A10];
      }

      return TSP::UUIDPath::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t TSA::GalleryItemSelectionTransformerHelper::MergeFrom(uint64_t this, const TSA::GalleryItemSelectionTransformerHelper *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2760FC0A4(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

      v11 = MEMORY[0x277C951A0](v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277D80A10];
    }

    return TSP::UUIDPath::MergeFrom(v11, v13);
  }

  return this;
}

uint64_t *TSA::GalleryItemSelectionTransformer::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::GalleryItemSelectionTransformer::Clear(result);

    return TSA::GalleryItemSelectionTransformer::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::GalleryItemSelectionTransformer::CopyFrom(uint64_t *this, const TSA::GalleryItemSelectionTransformer *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::GalleryItemSelectionTransformer::Clear(this);

    return TSA::GalleryItemSelectionTransformer::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::GalleryItemSelectionTransformer::IsInitialized(TSA::GalleryItemSelectionTransformer *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSA::GalleryItemSelectionTransformerHelper::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSP::UUIDPath::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}