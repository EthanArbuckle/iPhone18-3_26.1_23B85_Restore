TST::StyleTableMapArchive *TST::StyleTableMapArchive::StyleTableMapArchive(TST::StyleTableMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B50D8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_StyleTableMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TST::StyleTableMapArchive *TST::StyleTableMapArchive::StyleTableMapArchive(TST::StyleTableMapArchive *this, const TST::StyleTableMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B50D8;
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
    sub_22167F368(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  *(this + 6) = *(a2 + 6);
  return this;
}

void TST::StyleTableMapArchive::~StyleTableMapArchive(TST::StyleTableMapArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167F2E4(this + 3);
}

{
  TST::StyleTableMapArchive::~StyleTableMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::StyleTableMapArchive::default_instance(TST::StyleTableMapArchive *this)
{
  if (atomic_load_explicit(scc_info_StyleTableMapArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_StyleTableMapArchive_default_instance_;
}

uint64_t *TST::StyleTableMapArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::StyleTableMapArchive_StyleTableMapEntryArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
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

google::protobuf::internal *TST::StyleTableMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        if (v8 != 26)
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

          goto LABEL_43;
        }

        v16 = (v7 - 1);
        while (2)
        {
          v17 = (v16 + 1);
          v33 = (v16 + 1);
          v18 = *(a1 + 40);
          if (!v18)
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v18 = *(a1 + 40);
            v19 = *v18;
            goto LABEL_30;
          }

          v23 = *(a1 + 32);
          v19 = *v18;
          if (v23 >= *v18)
          {
            if (v19 == *(a1 + 36))
            {
              goto LABEL_29;
            }

LABEL_30:
            *v18 = v19 + 1;
            v20 = google::protobuf::Arena::CreateMaybeMessage<TST::StyleTableMapArchive_StyleTableMapEntryArchive>(*(a1 + 24));
            v21 = *(a1 + 32);
            v22 = *(a1 + 40) + 8 * v21;
            *(a1 + 32) = v21 + 1;
            *(v22 + 8) = v20;
            v17 = v33;
          }

          else
          {
            *(a1 + 32) = v23 + 1;
            v20 = *&v18[2 * v23 + 2];
          }

          v16 = sub_221705E98(a3, v20, v17);
          v33 = v16;
          if (!v16)
          {
            goto LABEL_52;
          }

          if (*a3 <= v16 || *v16 != 26)
          {
            goto LABEL_43;
          }

          continue;
        }
      }

      if (v10 == 2)
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
          v33 = v13;
          *(a1 + 52) = v14;
          goto LABEL_43;
        }

        v29 = google::protobuf::internal::VarintParseSlow32(v7, v14);
        v33 = v29;
        *(a1 + 52) = v30;
        if (!v29)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v10 != 1 || v8 != 8)
        {
          goto LABEL_13;
        }

        v5 |= 1u;
        v24 = (v7 + 1);
        LODWORD(v25) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v26 = *v24;
        v25 = (v25 + (v26 << 7) - 128);
        if ((v26 & 0x80000000) == 0)
        {
          v24 = (v7 + 2);
LABEL_42:
          v33 = v24;
          *(a1 + 48) = v25;
          goto LABEL_43;
        }

        v31 = google::protobuf::internal::VarintParseSlow32(v7, v25);
        v33 = v31;
        *(a1 + 48) = v32;
        if (!v31)
        {
          goto LABEL_52;
        }
      }

LABEL_43:
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

unsigned __int8 *TST::StyleTableMapArchive::_InternalSerialize(TST::StyleTableMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 12);
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

  v8 = *(this + 13);
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
  v14 = *(this + 8);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TST::StyleTableMapArchive_StyleTableMapEntryArchive::_InternalSerialize(v16, v18, a3);
    }
  }

  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::StyleTableMapArchive::RequiredFieldsByteSizeFallback(TST::StyleTableMapArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    result += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TST::StyleTableMapArchive::ByteSizeLong(TST::StyleTableMapArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v2 = TST::StyleTableMapArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 = *(this + 8);
  v4 = v2 + v3;
  v5 = *(this + 5);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = TST::StyleTableMapArchive_StyleTableMapEntryArchive::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
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

uint64_t TST::StyleTableMapArchive::MergeFrom(TST::StyleTableMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::StyleTableMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::StyleTableMapArchive::MergeFrom(uint64_t this, const TST::StyleTableMapArchive *a2)
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
    this = sub_22167F368(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
      *(v3 + 52) = *(a2 + 13);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TST::StyleTableMapArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::StyleTableMapArchive::Clear(this);

    return TST::StyleTableMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::StyleTableMapArchive::CopyFrom(uint64_t *this, const TST::StyleTableMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::StyleTableMapArchive::Clear(this);

    return TST::StyleTableMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::StyleTableMapArchive::IsInitialized(TST::StyleTableMapArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TST::StyleTableMapArchive_StyleTableMapEntryArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

__n128 TST::StyleTableMapArchive::InternalSwap(__n128 *this, __n128 *a2)
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

TSP::Reference *TST::SelectionArchive::clear_tablemodel(TST::SelectionArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TST::SelectionArchive::clear_table_info(TST::SelectionArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::UUIDCoordArchive *TST::SelectionArchive::clear_anchor_cell_uid(TST::SelectionArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::UUIDCoordArchive::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::UUIDCoordArchive *TST::SelectionArchive::clear_cursor_cell_uid(TST::SelectionArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSP::UUIDCoordArchive::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TST::SelectionArchive *TST::SelectionArchive::SelectionArchive(TST::SelectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5188;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_SelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 34) = 0;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  return this;
}

void sub_221622A88(_Unwind_Exception *a1)
{
  sub_22167E47C(v2);
  sub_22167E47C(v1);
  _Unwind_Resume(a1);
}

TST::SelectionArchive *TST::SelectionArchive::SelectionArchive(TST::SelectionArchive *this, const TST::SelectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B5188;
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
    sub_22167E500(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_22167E500(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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

  v16 = *(a2 + 4);
  if (v16)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v16 & 2) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v16 & 4) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v16 & 8) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v16 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v16 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v16 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v16 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  *(this + 34) = *(a2 + 34);
  return this;
}

void sub_221622DC8(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x10A1C40DFBAE579);
  sub_22167E47C(v2);
  sub_22167E47C((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::SelectionArchive::~SelectionArchive(TST::SelectionArchive *this)
{
  sub_221622EAC(this);
  sub_2214DFCF8(this + 1);
  sub_22167E47C(this + 6);
  sub_22167E47C(this + 3);
}

{
  TST::SelectionArchive::~SelectionArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_221622EAC(uint64_t result)
{
  if (result != &TST::_SelectionArchive_default_instance_)
  {
    v1 = result;
    v2 = *(result + 72);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[10];
    if (v3)
    {
      TST::CellID::~CellID(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[11];
    if (v4)
    {
      TST::CellID::~CellID(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[12];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x223DA1450]();
    }

    v6 = v1[13];
    if (v6)
    {
      TST::CellUIDRegionArchive::~CellUIDRegionArchive(v6);
      MEMORY[0x223DA1450]();
    }

    v7 = v1[14];
    if (v7)
    {
      TST::CellUIDRegionArchive::~CellUIDRegionArchive(v7);
      MEMORY[0x223DA1450]();
    }

    if (v1[15])
    {
      v8 = MEMORY[0x223D9FCC0]();
      MEMORY[0x223DA1450](v8, 0x10A1C40DFBAE579);
    }

    result = v1[16];
    if (result)
    {
      MEMORY[0x223D9FCC0]();

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::SelectionArchive::default_instance(TST::SelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_SelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_SelectionArchive_default_instance_;
}

uint64_t *TST::SelectionArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::CellRange::Clear(v4);
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
      this = TST::CellRange::Clear(v7);
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

  if (*(v1 + 16))
  {
    this = TSP::Reference::Clear(*(v1 + 72));
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }
  }

  else if ((*(v1 + 16) & 2) == 0)
  {
    goto LABEL_12;
  }

  this = TST::CellID::Clear(*(v1 + 80));
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = TST::CellID::Clear(*(v1 + 88));
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = TSP::Reference::Clear(*(v1 + 96));
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_28:
    this = TST::CellUIDRegionArchive::Clear(*(v1 + 112));
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = TST::CellUIDRegionArchive::Clear(*(v1 + 104));
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_29:
  this = TSP::UUIDCoordArchive::Clear(*(v1 + 120));
  if (v8 < 0)
  {
LABEL_18:
    this = TSP::UUIDCoordArchive::Clear(*(v1 + 128));
  }

LABEL_19:
  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 128) = 0;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_221567398(v9);
  }

  return this;
}

google::protobuf::internal *TST::SelectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v49 = a2;
  while (1)
  {
LABEL_2:
    if (sub_221567030(a3, &v49))
    {
      return v49;
    }

    v5 = (v49 + 1);
    v6 = *v49;
    if ((*v49 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v49 + 2);
LABEL_6:
      v49 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v49, (v7 - 128));
    v49 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v26;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 7)
    {
      if (v6 >> 3 <= 0xA)
      {
        if (v8 != 8)
        {
          if (v8 != 9)
          {
            if (v8 != 10 || v6 != 82)
            {
              goto LABEL_104;
            }

            *(a1 + 16) |= 0x10u;
            v9 = *(a1 + 104);
            if (!v9)
            {
              v10 = *(a1 + 8);
              if (v10)
              {
                v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
              }

              v9 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v10);
              *(a1 + 104) = v9;
              goto LABEL_102;
            }

            goto LABEL_103;
          }

          if (v6 != 74)
          {
            goto LABEL_104;
          }

          *(a1 + 16) |= 8u;
          v27 = *(a1 + 96);
          if (v27)
          {
            goto LABEL_77;
          }

          v38 = *(a1 + 8);
          if (v38)
          {
            v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
          }

          v39 = MEMORY[0x223DA0390](v38);
          LODWORD(v27) = v39;
          *(a1 + 96) = v39;
          goto LABEL_76;
        }

        if (v6 != 66)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 4u;
        v43 = *(a1 + 88);
        if (v43)
        {
LABEL_96:
          v40 = sub_221701838(a3, v43, v5);
          goto LABEL_111;
        }

        v45 = *(a1 + 8);
        if (v45)
        {
          v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
        }

        v43 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v45);
        *(a1 + 88) = v43;
LABEL_95:
        v5 = v49;
        goto LABEL_96;
      }

      if (v8 == 11)
      {
        if (v6 != 90)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x20u;
        v9 = *(a1 + 112);
        if (!v9)
        {
          v46 = *(a1 + 8);
          if (v46)
          {
            v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
          }

          v9 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v46);
          *(a1 + 112) = v9;
LABEL_102:
          v5 = v49;
        }

LABEL_103:
        v40 = sub_221702FC8(a3, v9, v5);
        goto LABEL_111;
      }

      if (v8 == 12)
      {
        if (v6 != 98)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x40u;
        v19 = *(a1 + 120);
        if (v19)
        {
          goto LABEL_84;
        }

        v41 = *(a1 + 8);
        if (v41)
        {
          v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
        }

        v42 = MEMORY[0x223DA0330](v41);
        LODWORD(v19) = v42;
        *(a1 + 120) = v42;
      }

      else
      {
        if (v8 != 13 || v6 != 106)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 0x80u;
        v19 = *(a1 + 128);
        if (v19)
        {
          goto LABEL_84;
        }

        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = MEMORY[0x223DA0330](v20);
        LODWORD(v19) = v21;
        *(a1 + 128) = v21;
      }

      v5 = v49;
LABEL_84:
      v40 = sub_221705F68(a3, v19, v5);
      goto LABEL_111;
    }

    if (v6 >> 3 > 4)
    {
      break;
    }

    if (v8 == 1)
    {
      if (v6 != 10)
      {
        goto LABEL_104;
      }

      *(a1 + 16) |= 1u;
      v27 = *(a1 + 72);
      if (v27)
      {
        goto LABEL_77;
      }

      v28 = *(a1 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x223DA0390](v28);
      LODWORD(v27) = v29;
      *(a1 + 72) = v29;
LABEL_76:
      v5 = v49;
LABEL_77:
      v40 = sub_22170B7F8(a3, v27, v5);
LABEL_111:
      v49 = v40;
      if (!v40)
      {
        return 0;
      }
    }

    else
    {
      if (v8 != 4 || v6 != 32)
      {
        goto LABEL_104;
      }

      v23 = (v5 + 1);
      v22 = *v5;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_48;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = (v5 + 2);
LABEL_48:
        v49 = v23;
        goto LABEL_49;
      }

      v49 = google::protobuf::internal::VarintParseSlow64(v5, v22);
      if (!v49)
      {
        return 0;
      }

LABEL_49:
      if (v22 > 7)
      {
        sub_2216FF1F8();
      }

      else
      {
        *(a1 + 16) |= 0x100u;
        *(a1 + 136) = v22;
      }
    }
  }

  if (v8 == 5)
  {
    if (v6 != 42)
    {
      goto LABEL_104;
    }

    *(a1 + 16) |= 2u;
    v43 = *(a1 + 80);
    if (v43)
    {
      goto LABEL_96;
    }

    v44 = *(a1 + 8);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v43 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v44);
    *(a1 + 80) = v43;
    goto LABEL_95;
  }

  if (v8 == 6)
  {
    if (v6 != 50)
    {
      goto LABEL_104;
    }

    v30 = (v5 - 1);
    while (1)
    {
      v31 = (v30 + 1);
      v49 = (v30 + 1);
      v32 = *(a1 + 40);
      if (!v32)
      {
        goto LABEL_61;
      }

      v37 = *(a1 + 32);
      v33 = *v32;
      if (v37 < *v32)
      {
        *(a1 + 32) = v37 + 1;
        v34 = *&v32[2 * v37 + 2];
        goto LABEL_65;
      }

      if (v33 == *(a1 + 36))
      {
LABEL_61:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v32 = *(a1 + 40);
        v33 = *v32;
      }

      *v32 = v33 + 1;
      v34 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(*(a1 + 24));
      v35 = *(a1 + 32);
      v36 = *(a1 + 40) + 8 * v35;
      *(a1 + 32) = v35 + 1;
      *(v36 + 8) = v34;
      v31 = v49;
LABEL_65:
      v30 = sub_221701AA8(a3, v34, v31);
      v49 = v30;
      if (!v30)
      {
        return 0;
      }

      if (*a3 <= v30 || *v30 != 50)
      {
        goto LABEL_2;
      }
    }
  }

  if (v8 == 7 && v6 == 58)
  {
    v11 = (v5 - 1);
    while (1)
    {
      v12 = (v11 + 1);
      v49 = (v11 + 1);
      v13 = *(a1 + 64);
      if (!v13)
      {
        goto LABEL_24;
      }

      v18 = *(a1 + 56);
      v14 = *v13;
      if (v18 < *v13)
      {
        *(a1 + 56) = v18 + 1;
        v15 = *&v13[2 * v18 + 2];
        goto LABEL_28;
      }

      if (v14 == *(a1 + 60))
      {
LABEL_24:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
        v13 = *(a1 + 64);
        v14 = *v13;
      }

      *v13 = v14 + 1;
      v15 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(*(a1 + 48));
      v16 = *(a1 + 56);
      v17 = *(a1 + 64) + 8 * v16;
      *(a1 + 56) = v16 + 1;
      *(v17 + 8) = v15;
      v12 = v49;
LABEL_28:
      v11 = sub_221701AA8(a3, v15, v12);
      v49 = v11;
      if (!v11)
      {
        return 0;
      }

      if (*a3 <= v11 || *v11 != 58)
      {
        goto LABEL_2;
      }
    }
  }

LABEL_104:
  if (v6)
  {
    v47 = (v6 & 7) == 4;
  }

  else
  {
    v47 = 1;
  }

  if (!v47)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v40 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_111;
  }

  *(a3 + 80) = v6 - 1;
  return v49;
}

unsigned __int8 *TST::SelectionArchive::_InternalSerialize(TST::SelectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 9);
    *a2 = 10;
    v10 = *(v9 + 5);
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v13 = v10 >> 7;
      if (v10 >> 14)
      {
        v11 = a2 + 3;
        do
        {
          *(v11 - 1) = v13 | 0x80;
          v36 = v13 >> 7;
          ++v11;
          v37 = v13 >> 14;
          v13 >>= 7;
        }

        while (v37);
        *(v11 - 1) = v36;
      }

      else
      {
        a2[2] = v13;
        v11 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v10;
      v11 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v9, v11, a3);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v38 = *(this + 34);
  *a2 = 32;
  if (v38 > 0x7F)
  {
    a2[1] = v38 | 0x80;
    v39 = v38 >> 7;
    if (v38 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v39 | 0x80;
        v46 = v39 >> 7;
        ++a2;
        v47 = v39 >> 14;
        v39 >>= 7;
      }

      while (v47);
      *(a2 - 1) = v46;
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      a2[2] = v39;
      a2 += 3;
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    a2[1] = v38;
    a2 += 2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 10);
  *a2 = 42;
  v7 = *(v6 + 5);
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v12 = v7 >> 7;
    if (v7 >> 14)
    {
      v8 = a2 + 3;
      do
      {
        *(v8 - 1) = v12 | 0x80;
        v14 = v12 >> 7;
        ++v8;
        v15 = v12 >> 14;
        v12 >>= 7;
      }

      while (v15);
      *(v8 - 1) = v14;
    }

    else
    {
      a2[2] = v12;
      v8 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v7;
    v8 = a2 + 2;
  }

  a2 = TST::CellID::_InternalSerialize(v6, v8, a3);
LABEL_20:
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
      *a2 = 50;
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

      a2 = TST::CellRange::_InternalSerialize(v18, v20, a3);
    }
  }

  v24 = *(this + 14);
  if (v24)
  {
    for (j = 0; j != v24; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v26 = *(*(this + 8) + 8 * j + 8);
      *a2 = 58;
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

      a2 = TST::CellRange::_InternalSerialize(v26, v28, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v32 = *(this + 11);
    *a2 = 66;
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
          v40 = v35 >> 7;
          ++v34;
          v41 = v35 >> 14;
          v35 >>= 7;
        }

        while (v41);
        *(v34 - 1) = v40;
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

    a2 = TST::CellID::_InternalSerialize(v32, v34, a3);
    if ((v5 & 8) == 0)
    {
LABEL_46:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_87;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_46;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v42 = *(this + 12);
  *a2 = 74;
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
        v48 = v45 >> 7;
        ++v44;
        v49 = v45 >> 14;
        v45 >>= 7;
      }

      while (v49);
      *(v44 - 1) = v48;
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
  if ((v5 & 0x10) == 0)
  {
LABEL_47:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_97;
  }

LABEL_87:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v50 = *(this + 13);
  *a2 = 82;
  v51 = *(v50 + 10);
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

  a2 = TST::CellUIDRegionArchive::_InternalSerialize(v50, v52, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_48:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_107;
  }

LABEL_97:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v56 = *(this + 14);
  *a2 = 90;
  v57 = *(v56 + 10);
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

  a2 = TST::CellUIDRegionArchive::_InternalSerialize(v56, v58, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_49:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_117;
  }

LABEL_107:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v62 = *(this + 15);
  *a2 = 98;
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

  a2 = TSP::UUIDCoordArchive::_InternalSerialize(v62, v64, a3);
  if ((v5 & 0x80) != 0)
  {
LABEL_117:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v68 = *(this + 16);
    *a2 = 106;
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

    a2 = TSP::UUIDCoordArchive::_InternalSerialize(v68, v70, a3);
  }

LABEL_127:
  v74 = *(this + 1);
  if ((v74 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v74 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::SelectionArchive::ByteSizeLong(TST::SelectionArchive *this)
{
  if (*(this + 17))
  {
    v3 = *(this + 34);
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

  v4 = *(this + 8);
  v5 = v2 + v4;
  v6 = *(this + 5);
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
      v10 = TST::CellRange::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(this + 14);
  v12 = v5 + v11;
  v13 = *(this + 8);
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
      v17 = TST::CellRange::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(this + 16);
  if (!v18)
  {
    goto LABEL_28;
  }

  if (*(this + 16))
  {
    v21 = TSP::Reference::ByteSizeLong(*(this + 9));
    v12 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v18 & 2) == 0)
    {
LABEL_21:
      if ((v18 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }
  }

  else if ((*(this + 16) & 2) == 0)
  {
    goto LABEL_21;
  }

  v22 = TST::CellID::ByteSizeLong(*(this + 10));
  v12 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v18 & 4) == 0)
  {
LABEL_22:
    if ((v18 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  v23 = TST::CellID::ByteSizeLong(*(this + 11));
  v12 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v18 & 8) == 0)
  {
LABEL_23:
    if ((v18 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:
  v24 = TSP::Reference::ByteSizeLong(*(this + 12));
  v12 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v18 & 0x10) == 0)
  {
LABEL_24:
    if ((v18 & 0x20) == 0)
    {
      goto LABEL_25;
    }

LABEL_35:
    v26 = TST::CellUIDRegionArchive::ByteSizeLong(*(this + 14));
    v12 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v18 & 0x40) == 0)
    {
LABEL_26:
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    goto LABEL_36;
  }

LABEL_34:
  v25 = TST::CellUIDRegionArchive::ByteSizeLong(*(this + 13));
  v12 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v18 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_25:
  if ((v18 & 0x40) == 0)
  {
    goto LABEL_26;
  }

LABEL_36:
  v27 = TSP::UUIDCoordArchive::ByteSizeLong(*(this + 15));
  v12 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v18 < 0)
  {
LABEL_27:
    v19 = TSP::UUIDCoordArchive::ByteSizeLong(*(this + 16));
    v12 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_28:
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

uint64_t TST::SelectionArchive::MergeFrom(TST::SelectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::SelectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::SelectionArchive::MergeFrom(uint64_t this, const TST::SelectionArchive *a2)
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
    this = sub_22167E500(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_22167E500(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 4);
  if (v15)
  {
    v16 = MEMORY[0x277D80A18];
    if (v15)
    {
      *(v3 + 16) |= 1u;
      v17 = *(v3 + 72);
      if (!v17)
      {
        v18 = *(v3 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = MEMORY[0x223DA0390](v18);
        *(v3 + 72) = v17;
      }

      if (*(a2 + 9))
      {
        v19 = *(a2 + 9);
      }

      else
      {
        v19 = v16;
      }

      this = TSP::Reference::MergeFrom(v17, v19);
    }

    if ((v15 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v20 = *(v3 + 80);
      if (!v20)
      {
        v21 = *(v3 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v21);
        *(v3 + 80) = v20;
      }

      if (*(a2 + 10))
      {
        v22 = *(a2 + 10);
      }

      else
      {
        v22 = TST::_CellID_default_instance_;
      }

      this = TST::CellID::MergeFrom(v20, v22);
      if ((v15 & 4) == 0)
      {
LABEL_21:
        if ((v15 & 8) == 0)
        {
LABEL_47:
          if ((v15 & 0x10) != 0)
          {
            *(v3 + 16) |= 0x10u;
            v29 = *(v3 + 104);
            if (!v29)
            {
              v30 = *(v3 + 8);
              if (v30)
              {
                v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
              }

              v29 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v30);
              *(v3 + 104) = v29;
            }

            if (*(a2 + 13))
            {
              v31 = *(a2 + 13);
            }

            else
            {
              v31 = &TST::_CellUIDRegionArchive_default_instance_;
            }

            this = TST::CellUIDRegionArchive::MergeFrom(v29, v31);
          }

          if ((v15 & 0x20) != 0)
          {
            *(v3 + 16) |= 0x20u;
            v32 = *(v3 + 112);
            if (!v32)
            {
              v33 = *(v3 + 8);
              if (v33)
              {
                v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
              }

              v32 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v33);
              *(v3 + 112) = v32;
            }

            if (*(a2 + 14))
            {
              v34 = *(a2 + 14);
            }

            else
            {
              v34 = &TST::_CellUIDRegionArchive_default_instance_;
            }

            this = TST::CellUIDRegionArchive::MergeFrom(v32, v34);
          }

          v35 = MEMORY[0x277D80A50];
          if ((v15 & 0x40) != 0)
          {
            *(v3 + 16) |= 0x40u;
            v36 = *(v3 + 120);
            if (!v36)
            {
              v37 = *(v3 + 8);
              if (v37)
              {
                v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
              }

              v36 = MEMORY[0x223DA0330](v37);
              *(v3 + 120) = v36;
            }

            if (*(a2 + 15))
            {
              v38 = *(a2 + 15);
            }

            else
            {
              v38 = v35;
            }

            this = TSP::UUIDCoordArchive::MergeFrom(v36, v38);
          }

          if ((v15 & 0x80) != 0)
          {
            *(v3 + 16) |= 0x80u;
            v39 = *(v3 + 128);
            if (!v39)
            {
              v40 = *(v3 + 8);
              if (v40)
              {
                v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
              }

              v39 = MEMORY[0x223DA0330](v40);
              *(v3 + 128) = v39;
            }

            if (*(a2 + 16))
            {
              v41 = *(a2 + 16);
            }

            else
            {
              v41 = v35;
            }

            this = TSP::UUIDCoordArchive::MergeFrom(v39, v41);
          }

          goto LABEL_83;
        }

LABEL_39:
        *(v3 + 16) |= 8u;
        v26 = *(v3 + 96);
        if (!v26)
        {
          v27 = *(v3 + 8);
          if (v27)
          {
            v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
          }

          v26 = MEMORY[0x223DA0390](v27);
          *(v3 + 96) = v26;
        }

        if (*(a2 + 12))
        {
          v28 = *(a2 + 12);
        }

        else
        {
          v28 = v16;
        }

        this = TSP::Reference::MergeFrom(v26, v28);
        goto LABEL_47;
      }
    }

    else if ((v15 & 4) == 0)
    {
      goto LABEL_21;
    }

    *(v3 + 16) |= 4u;
    v23 = *(v3 + 88);
    if (!v23)
    {
      v24 = *(v3 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v24);
      *(v3 + 88) = v23;
    }

    if (*(a2 + 11))
    {
      v25 = *(a2 + 11);
    }

    else
    {
      v25 = TST::_CellID_default_instance_;
    }

    this = TST::CellID::MergeFrom(v23, v25);
    if ((v15 & 8) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_39;
  }

LABEL_83:
  if ((v15 & 0x100) != 0)
  {
    v42 = *(a2 + 34);
    *(v3 + 16) |= 0x100u;
    *(v3 + 136) = v42;
  }

  return this;
}

uint64_t *TST::SelectionArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SelectionArchive::Clear(this);

    return TST::SelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::SelectionArchive::CopyFrom(uint64_t *this, const TST::SelectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SelectionArchive::Clear(this);

    return TST::SelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::SelectionArchive::IsInitialized(TST::SelectionArchive *this)
{
  if ((*(this + 17) & 1) == 0)
  {
    return 0;
  }

  result = sub_2215F7604(this + 24);
  if (result)
  {
    result = sub_2215F7604(this + 48);
    if (result)
    {
      v3 = *(this + 4);
      if (v3)
      {
        result = TSP::Reference::IsInitialized(*(this + 9));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 4);
      }

      if ((v3 & 2) != 0 && (*(*(this + 10) + 16) & 2) == 0 || (v3 & 4) != 0 && (*(*(this + 11) + 16) & 2) == 0)
      {
        return 0;
      }

      if ((v3 & 8) != 0)
      {
        result = TSP::Reference::IsInitialized(*(this + 12));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 4);
      }

      if ((v3 & 0x10) != 0)
      {
        v4 = *(this + 13);
        v5 = *(v4 + 24);
        while (v5 >= 1)
        {
          v6 = v5 - 1;
          IsInitialized = TSP::UUIDRectArchive::IsInitialized(*(*(v4 + 32) + 8 * v5));
          result = 0;
          v5 = v6;
          if ((IsInitialized & 1) == 0)
          {
            return result;
          }
        }

        v3 = *(this + 4);
      }

      if ((v3 & 0x20) != 0)
      {
        v8 = *(this + 14);
        v9 = *(v8 + 24);
        while (v9 >= 1)
        {
          v10 = v9 - 1;
          v11 = TSP::UUIDRectArchive::IsInitialized(*(*(v8 + 32) + 8 * v9));
          result = 0;
          v9 = v10;
          if ((v11 & 1) == 0)
          {
            return result;
          }
        }

        v3 = *(this + 4);
      }

      if ((v3 & 0x40) != 0)
      {
        result = TSP::UUIDCoordArchive::IsInitialized(*(this + 15));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 4);
      }

      if ((v3 & 0x80) == 0)
      {
        return 1;
      }

      result = TSP::UUIDCoordArchive::IsInitialized(*(this + 16));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

__n128 TST::SelectionArchive::InternalSwap(TST::SelectionArchive *this, TST::SelectionArchive *a2)
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
  v10 = *(this + 10);
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  v11 = *(this + 11);
  v12 = *(this + 12);
  *(this + 88) = *(a2 + 88);
  *(a2 + 11) = v11;
  *(a2 + 12) = v12;
  v13 = *(this + 13);
  v14 = *(this + 14);
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v13;
  *(a2 + 14) = v14;
  v15 = *(this + 15);
  v16 = *(this + 16);
  result = *(a2 + 120);
  *(this + 120) = result;
  *(a2 + 15) = v15;
  *(a2 + 16) = v16;
  LODWORD(v15) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v15;
  return result;
}

TSP::Reference *TST::DeathhawkRdar39989167CellSelectionArchive::clear_table_info(TST::DeathhawkRdar39989167CellSelectionArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUIDCoordArchive *TST::DeathhawkRdar39989167CellSelectionArchive::clear_anchor_cell_uid(TST::DeathhawkRdar39989167CellSelectionArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUIDCoordArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::UUIDCoordArchive *TST::DeathhawkRdar39989167CellSelectionArchive::clear_cursor_cell_uid(TST::DeathhawkRdar39989167CellSelectionArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::UUIDCoordArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TST::DeathhawkRdar39989167CellSelectionArchive *TST::DeathhawkRdar39989167CellSelectionArchive::DeathhawkRdar39989167CellSelectionArchive(TST::DeathhawkRdar39989167CellSelectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5238;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DeathhawkRdar39989167CellSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 52) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834B5238;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DeathhawkRdar39989167CellSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 52) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TST::DeathhawkRdar39989167CellSelectionArchive *TST::DeathhawkRdar39989167CellSelectionArchive::DeathhawkRdar39989167CellSelectionArchive(TST::DeathhawkRdar39989167CellSelectionArchive *this, const TST::DeathhawkRdar39989167CellSelectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B5238;
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
  *(this + 16) = *(a2 + 16);
  return this;
}

void TST::DeathhawkRdar39989167CellSelectionArchive::~DeathhawkRdar39989167CellSelectionArchive(TST::DeathhawkRdar39989167CellSelectionArchive *this)
{
  sub_221624C14(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::DeathhawkRdar39989167CellSelectionArchive::~DeathhawkRdar39989167CellSelectionArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_221624C14(uint64_t *result)
{
  if (result != TST::_DeathhawkRdar39989167CellSelectionArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[4];
    if (v3)
    {
      TST::CellUIDRegionArchive::~CellUIDRegionArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[5];
    if (v4)
    {
      TST::CellUIDRegionArchive::~CellUIDRegionArchive(v4);
      MEMORY[0x223DA1450]();
    }

    if (v1[6])
    {
      v5 = MEMORY[0x223D9FCC0]();
      MEMORY[0x223DA1450](v5, 0x10A1C40DFBAE579);
    }

    result = v1[7];
    if (result)
    {
      MEMORY[0x223D9FCC0]();

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TST::DeathhawkRdar39989167CellSelectionArchive::default_instance(TST::DeathhawkRdar39989167CellSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_DeathhawkRdar39989167CellSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_DeathhawkRdar39989167CellSelectionArchive_default_instance_;
}

uint64_t *TST::DeathhawkRdar39989167CellSelectionArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
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

LABEL_14:
      this = TST::CellUIDRegionArchive::Clear(*(v1 + 40));
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TST::CellUIDRegionArchive::Clear(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  this = TSP::UUIDCoordArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    this = TSP::UUIDCoordArchive::Clear(*(v1 + 56));
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 56) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::DeathhawkRdar39989167CellSelectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  while ((sub_221567030(a3, &v29) & 1) == 0)
  {
    v5 = (v29 + 1);
    v6 = *v29;
    if (*v29 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v7 - 128));
        v29 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v27;
        goto LABEL_7;
      }

      v5 = (v29 + 2);
    }

    v29 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 3)
    {
      if (v8 != 4)
      {
        if (v8 == 5)
        {
          if (v6 != 42)
          {
            goto LABEL_54;
          }

          *(a1 + 16) |= 8u;
          v12 = *(a1 + 48);
          if (!v12)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = MEMORY[0x223DA0330](v23);
            LODWORD(v12) = v24;
            *(a1 + 48) = v24;
LABEL_52:
            v5 = v29;
          }
        }

        else
        {
          if (v8 != 6 || v6 != 50)
          {
            goto LABEL_54;
          }

          *(a1 + 16) |= 0x10u;
          v12 = *(a1 + 56);
          if (!v12)
          {
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = MEMORY[0x223DA0330](v13);
            LODWORD(v12) = v14;
            *(a1 + 56) = v14;
            goto LABEL_52;
          }
        }

        v18 = sub_221705F68(a3, v12, v5);
        goto LABEL_61;
      }

      if (v6 != 34)
      {
        goto LABEL_54;
      }

      *(a1 + 16) |= 4u;
      v10 = *(a1 + 40);
      if (!v10)
      {
        v19 = *(a1 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v19);
        *(a1 + 40) = v10;
LABEL_38:
        v5 = v29;
      }

LABEL_39:
      v18 = sub_221702FC8(a3, v10, v5);
      goto LABEL_61;
    }

    if (v8 == 1)
    {
      if (v6 != 10)
      {
        goto LABEL_54;
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

        v17 = MEMORY[0x223DA0390](v16);
        LODWORD(v15) = v17;
        *(a1 + 24) = v17;
        v5 = v29;
      }

      v18 = sub_22170B7F8(a3, v15, v5);
LABEL_61:
      v29 = v18;
      if (!v18)
      {
        return 0;
      }
    }

    else
    {
      if (v8 != 2)
      {
        if (v8 != 3 || v6 != 26)
        {
LABEL_54:
          if (v6)
          {
            v25 = (v6 & 7) == 4;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {
            *(a3 + 80) = v6 - 1;
            return v29;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v18 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_61;
        }

        *(a1 + 16) |= 2u;
        v10 = *(a1 + 32);
        if (!v10)
        {
          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v11);
          *(a1 + 32) = v10;
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (v6 != 16)
      {
        goto LABEL_54;
      }

      v21 = (v5 + 1);
      v20 = *v5;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_44;
      }

      v22 = *v21;
      v20 = (v22 << 7) + v20 - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v21 = (v5 + 2);
LABEL_44:
        v29 = v21;
        goto LABEL_45;
      }

      v29 = google::protobuf::internal::VarintParseSlow64(v5, v20);
      if (!v29)
      {
        return 0;
      }

LABEL_45:
      if (v20 > 7)
      {
        sub_2216FF1C4();
      }

      else
      {
        *(a1 + 16) |= 0x20u;
        *(a1 + 64) = v20;
      }
    }
  }

  return v29;
}

unsigned __int8 *TST::DeathhawkRdar39989167CellSelectionArchive::_InternalSerialize(TST::DeathhawkRdar39989167CellSelectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 16);
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
        if ((v5 & 2) != 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
      if ((v5 & 2) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

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
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  if ((v5 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_29:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 4);
  *a2 = 26;
  v17 = *(v16 + 10);
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

  a2 = TST::CellUIDRegionArchive::_InternalSerialize(v16, v18, a3);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
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

  v22 = *(this + 5);
  *a2 = 34;
  v23 = *(v22 + 10);
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

  a2 = TST::CellUIDRegionArchive::_InternalSerialize(v22, v24, a3);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_59;
  }

LABEL_49:
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

  a2 = TSP::UUIDCoordArchive::_InternalSerialize(v28, v30, a3);
  if ((v5 & 0x10) != 0)
  {
LABEL_59:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v34 = *(this + 7);
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

    a2 = TSP::UUIDCoordArchive::_InternalSerialize(v34, v36, a3);
  }

LABEL_69:
  v40 = *(this + 1);
  if ((v40 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v40 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::DeathhawkRdar39989167CellSelectionArchive::ByteSizeLong(TST::DeathhawkRdar39989167CellSelectionArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_20;
  }

  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(this + 3));
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
    v5 = TST::CellUIDRegionArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = TST::CellUIDRegionArchive::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

LABEL_15:
      v8 = TSP::UUIDCoordArchive::ByteSizeLong(*(this + 7));
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_20;
      }

LABEL_16:
      v9 = *(this + 16);
      if (v9 < 0)
      {
        v10 = 11;
      }

      else
      {
        v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v10;
      goto LABEL_20;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v7 = TSP::UUIDCoordArchive::ByteSizeLong(*(this + 6));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_20:
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

uint64_t TST::DeathhawkRdar39989167CellSelectionArchive::MergeFrom(TST::DeathhawkRdar39989167CellSelectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::DeathhawkRdar39989167CellSelectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::DeathhawkRdar39989167CellSelectionArchive::MergeFrom(uint64_t this, const TST::DeathhawkRdar39989167CellSelectionArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
      *(v3 + 16) |= 2u;
      v9 = *(v3 + 32);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TST::_CellUIDRegionArchive_default_instance_;
      }

      this = TST::CellUIDRegionArchive::MergeFrom(v9, v11);
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

        v12 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 5))
      {
        v14 = *(a2 + 5);
      }

      else
      {
        v14 = &TST::_CellUIDRegionArchive_default_instance_;
      }

      this = TST::CellUIDRegionArchive::MergeFrom(v12, v14);
    }

    v15 = MEMORY[0x277D80A50];
    if ((v5 & 8) != 0)
    {
      *(v3 + 16) |= 8u;
      v16 = *(v3 + 48);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x223DA0330](v17);
        *(v3 + 48) = v16;
      }

      if (*(a2 + 6))
      {
        v18 = *(a2 + 6);
      }

      else
      {
        v18 = v15;
      }

      this = TSP::UUIDCoordArchive::MergeFrom(v16, v18);
      if ((v5 & 0x10) == 0)
      {
LABEL_33:
        if ((v5 & 0x20) == 0)
        {
LABEL_35:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_34:
        *(v3 + 64) = *(a2 + 16);
        goto LABEL_35;
      }
    }

    else if ((v5 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    *(v3 + 16) |= 0x10u;
    v19 = *(v3 + 56);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x223DA0330](v20);
      *(v3 + 56) = v19;
    }

    if (*(a2 + 7))
    {
      v21 = *(a2 + 7);
    }

    else
    {
      v21 = v15;
    }

    this = TSP::UUIDCoordArchive::MergeFrom(v19, v21);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  return this;
}

uint64_t *TST::DeathhawkRdar39989167CellSelectionArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DeathhawkRdar39989167CellSelectionArchive::Clear(this);

    return TST::DeathhawkRdar39989167CellSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::DeathhawkRdar39989167CellSelectionArchive::CopyFrom(uint64_t *this, const TST::DeathhawkRdar39989167CellSelectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DeathhawkRdar39989167CellSelectionArchive::Clear(this);

    return TST::DeathhawkRdar39989167CellSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::DeathhawkRdar39989167CellSelectionArchive::IsInitialized(TST::DeathhawkRdar39989167CellSelectionArchive *this)
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
    v4 = *(this + 4);
    v5 = *(v4 + 24);
    do
    {
      if (v5 < 1)
      {
        v2 = *(this + 4);
        goto LABEL_10;
      }

      v6 = v5 - 1;
      IsInitialized = TSP::UUIDRectArchive::IsInitialized(*(*(v4 + 32) + 8 * v5));
      v5 = v6;
    }

    while ((IsInitialized & 1) != 0);
    return 0;
  }

  else
  {
LABEL_10:
    if ((v2 & 4) != 0)
    {
      v8 = *(this + 5);
      v9 = *(v8 + 24);
      while (v9 >= 1)
      {
        v10 = v9 - 1;
        v11 = TSP::UUIDRectArchive::IsInitialized(*(*(v8 + 32) + 8 * v9));
        v9 = v10;
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      v2 = *(this + 4);
    }

    if ((v2 & 8) != 0)
    {
      result = TSP::UUIDCoordArchive::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v2 = *(this + 4);
    }

    if ((v2 & 0x10) == 0)
    {
      return 1;
    }

    result = TSP::UUIDCoordArchive::IsInitialized(*(this + 7));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::DeathhawkRdar39989167CellSelectionArchive::InternalSwap(TST::DeathhawkRdar39989167CellSelectionArchive *this, TST::DeathhawkRdar39989167CellSelectionArchive *a2)
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
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  LODWORD(v10) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  return result;
}

uint64_t TST::StrokeSelectionArchive::StrokeSelectionArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_2834B52E8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  *result = &unk_2834B52E8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

TST::StrokeSelectionArchive *TST::StrokeSelectionArchive::StrokeSelectionArchive(TST::StrokeSelectionArchive *this, const TST::StrokeSelectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B52E8;
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

void TST::StrokeSelectionArchive::~StrokeSelectionArchive(TST::StrokeSelectionArchive *this)
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

uint64_t *TST::StrokeSelectionArchive::default_instance(TST::StrokeSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_StrokeSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_StrokeSelectionArchive_default_instance_;
}

uint64_t *TST::StrokeSelectionArchive::Clear(TST::StrokeSelectionArchive *this)
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

google::protobuf::internal *TST::StrokeSelectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v18) & 1) == 0)
  {
    while (1)
    {
      v6 = (v18 + 1);
      v7 = *v18;
      if ((*v18 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v8 - 128));
      v18 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_27;
      }

      v6 = TagFallback;
      v7 = v14;
LABEL_6:
      if (v7 == 8)
      {
        v11 = (v6 + 1);
        LODWORD(v10) = *v6;
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_18;
        }

        v12 = *v11;
        v10 = (v10 + (v12 << 7) - 128);
        if ((v12 & 0x80000000) == 0)
        {
          v11 = (v6 + 2);
LABEL_18:
          v18 = v11;
          *(a1 + 24) = v10;
          v5 = 1;
          goto LABEL_19;
        }

        v15 = google::protobuf::internal::VarintParseSlow64(v6, v10);
        v18 = v15;
        *(a1 + 24) = v16;
        v5 = 1;
        if (!v15)
        {
          goto LABEL_27;
        }
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
          goto LABEL_26;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
        if (!v18)
        {
LABEL_27:
          v18 = 0;
          goto LABEL_26;
        }
      }

LABEL_19:
      if (sub_221567030(a3, &v18))
      {
        goto LABEL_26;
      }
    }

    v6 = (v18 + 2);
LABEL_5:
    v18 = v6;
    goto LABEL_6;
  }

LABEL_26:
  *(a1 + 16) |= v5;
  return v18;
}

unsigned __int8 *TST::StrokeSelectionArchive::_InternalSerialize(TST::StrokeSelectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v4 = *(this + 6);
    *a2 = 8;
    if (v4 > 0x7F)
    {
      a2[1] = v4 | 0x80;
      v5 = v4 >> 7;
      if (v4 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v5 | 0x80;
          v6 = v5 >> 7;
          ++a2;
          v7 = v5 >> 14;
          v5 >>= 7;
        }

        while (v7);
        *(a2 - 1) = v6;
      }

      else
      {
        a2[2] = v5;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v4;
      a2 += 2;
    }
  }

  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::StrokeSelectionArchive::ByteSizeLong(TST::StrokeSelectionArchive *this)
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

uint64_t TST::StrokeSelectionArchive::MergeFrom(TST::StrokeSelectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::StrokeSelectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::StrokeSelectionArchive::MergeFrom(uint64_t this, const TST::StrokeSelectionArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 6);
    *(v3 + 16) |= 1u;
    *(v3 + 24) = v5;
  }

  return this;
}

TST::StrokeSelectionArchive *TST::StrokeSelectionArchive::CopyFrom(TST::StrokeSelectionArchive *this, const Message *lpsrc)
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

    return TST::StrokeSelectionArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

const TST::StrokeSelectionArchive *TST::StrokeSelectionArchive::CopyFrom(const TST::StrokeSelectionArchive *this, const TST::StrokeSelectionArchive *a2)
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

    return TST::StrokeSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::StrokeSelectionArchive::InternalSwap(TST::StrokeSelectionArchive *this, TST::StrokeSelectionArchive *a2)
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

uint64_t TST::ControlCellSelectionArchive::ControlCellSelectionArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_2834B5398;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_2834B5398;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TST::ControlCellSelectionArchive *TST::ControlCellSelectionArchive::ControlCellSelectionArchive(TST::ControlCellSelectionArchive *this, const TST::ControlCellSelectionArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_2834B5398;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_22156734C(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TST::ControlCellSelectionArchive::~ControlCellSelectionArchive(TST::ControlCellSelectionArchive *this)
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

uint64_t *TST::ControlCellSelectionArchive::default_instance(TST::ControlCellSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_ControlCellSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ControlCellSelectionArchive_default_instance_;
}

uint64_t *TST::ControlCellSelectionArchive::Clear(TST::ControlCellSelectionArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_221567398(result);
  }

  return result;
}

uint64_t TST::ControlCellSelectionArchive::_InternalSerialize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return MEMORY[0x2821EAC40]((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    return a2;
  }
}

uint64_t TST::ControlCellSelectionArchive::ByteSizeLong(TST::ControlCellSelectionArchive *this)
{
  v2 = *(this + 8);
  v1 = this + 8;
  if (v2)
  {
    return MEMORY[0x2821EADD8](v1, 0, v1 + 8);
  }

  *(v1 + 2) = 0;
  return 0;
}

void *TST::ControlCellSelectionArchive::MergeFrom(TST::ControlCellSelectionArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_22156734C(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TST::ControlCellSelectionArchive::MergeFrom(uint64_t this, const TST::ControlCellSelectionArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_22156734C((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TST::ControlCellSelectionArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_221567398(v5);
    }

    return TST::ControlCellSelectionArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TST::ControlCellSelectionArchive::CopyFrom(uint64_t *this, const TST::ControlCellSelectionArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_221567398(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_22156734C(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

uint64_t TST::StockCellSelectionArchive::StockCellSelectionArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_2834B5448;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_2834B5448;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TST::StockCellSelectionArchive *TST::StockCellSelectionArchive::StockCellSelectionArchive(TST::StockCellSelectionArchive *this, const TST::StockCellSelectionArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_2834B5448;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_22156734C(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TST::StockCellSelectionArchive::~StockCellSelectionArchive(TST::StockCellSelectionArchive *this)
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

uint64_t *TST::StockCellSelectionArchive::default_instance(TST::StockCellSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_StockCellSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_StockCellSelectionArchive_default_instance_;
}

uint64_t *TST::StockCellSelectionArchive::Clear(TST::StockCellSelectionArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_221567398(result);
  }

  return result;
}

uint64_t TST::StockCellSelectionArchive::_InternalSerialize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return MEMORY[0x2821EAC40]((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    return a2;
  }
}

uint64_t TST::StockCellSelectionArchive::ByteSizeLong(TST::StockCellSelectionArchive *this)
{
  v2 = *(this + 8);
  v1 = this + 8;
  if (v2)
  {
    return MEMORY[0x2821EADD8](v1, 0, v1 + 8);
  }

  *(v1 + 2) = 0;
  return 0;
}

void *TST::StockCellSelectionArchive::MergeFrom(TST::StockCellSelectionArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_22156734C(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TST::StockCellSelectionArchive::MergeFrom(uint64_t this, const TST::StockCellSelectionArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_22156734C((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TST::StockCellSelectionArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_221567398(v5);
    }

    return TST::StockCellSelectionArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TST::StockCellSelectionArchive::CopyFrom(uint64_t *this, const TST::StockCellSelectionArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_221567398(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_22156734C(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

uint64_t TST::TableNameSelectionArchive::TableNameSelectionArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_2834B54F8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_2834B54F8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TST::TableNameSelectionArchive *TST::TableNameSelectionArchive::TableNameSelectionArchive(TST::TableNameSelectionArchive *this, const TST::TableNameSelectionArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_2834B54F8;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_22156734C(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TST::TableNameSelectionArchive::~TableNameSelectionArchive(TST::TableNameSelectionArchive *this)
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

uint64_t *TST::TableNameSelectionArchive::default_instance(TST::TableNameSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_TableNameSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableNameSelectionArchive_default_instance_;
}

uint64_t *TST::TableNameSelectionArchive::Clear(TST::TableNameSelectionArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_221567398(result);
  }

  return result;
}

uint64_t TST::TableNameSelectionArchive::_InternalSerialize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return MEMORY[0x2821EAC40]((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    return a2;
  }
}

uint64_t TST::TableNameSelectionArchive::ByteSizeLong(TST::TableNameSelectionArchive *this)
{
  v2 = *(this + 8);
  v1 = this + 8;
  if (v2)
  {
    return MEMORY[0x2821EADD8](v1, 0, v1 + 8);
  }

  *(v1 + 2) = 0;
  return 0;
}

void *TST::TableNameSelectionArchive::MergeFrom(TST::TableNameSelectionArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_22156734C(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TST::TableNameSelectionArchive::MergeFrom(uint64_t this, const TST::TableNameSelectionArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_22156734C((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TST::TableNameSelectionArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_221567398(v5);
    }

    return TST::TableNameSelectionArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TST::TableNameSelectionArchive::CopyFrom(uint64_t *this, const TST::TableNameSelectionArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_221567398(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_22156734C(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

TST::AutofillSelectionArchive *TST::AutofillSelectionArchive::AutofillSelectionArchive(TST::AutofillSelectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B55A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_AutofillSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834B55A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_AutofillSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TST::AutofillSelectionArchive *TST::AutofillSelectionArchive::AutofillSelectionArchive(TST::AutofillSelectionArchive *this, const TST::AutofillSelectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B55A8;
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

void TST::AutofillSelectionArchive::~AutofillSelectionArchive(TST::AutofillSelectionArchive *this)
{
  if (this != TST::_AutofillSelectionArchive_default_instance_)
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
  TST::AutofillSelectionArchive::~AutofillSelectionArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::AutofillSelectionArchive::default_instance(TST::AutofillSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_AutofillSelectionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_AutofillSelectionArchive_default_instance_;
}

uint64_t *TST::AutofillSelectionArchive::Clear(uint64_t *this)
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

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::AutofillSelectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while ((sub_221567030(a3, &v17) & 1) == 0)
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

      *(a1 + 16) |= 2u;
      v11 = *(a1 + 32);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v12);
        *(a1 + 32) = v11;
        goto LABEL_28;
      }
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
          sub_221567188((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v13);
        *(a1 + 24) = v11;
LABEL_28:
        v5 = v17;
      }
    }

    v10 = sub_221701AA8(a3, v11, v5);
LABEL_30:
    v17 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v17;
}

unsigned __int8 *TST::AutofillSelectionArchive::_InternalSerialize(TST::AutofillSelectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::CellRange::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::AutofillSelectionArchive::ByteSizeLong(TST::AutofillSelectionArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = TST::CellRange::ByteSizeLong(*(this + 3));
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
    v5 = TST::CellRange::ByteSizeLong(*(this + 4));
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

uint64_t TST::AutofillSelectionArchive::MergeFrom(TST::AutofillSelectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::AutofillSelectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::AutofillSelectionArchive::MergeFrom(uint64_t this, const TST::AutofillSelectionArchive *a2)
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

      return TST::CellRange::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TST::AutofillSelectionArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::AutofillSelectionArchive::Clear(this);

    return TST::AutofillSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::AutofillSelectionArchive::CopyFrom(uint64_t *this, const TST::AutofillSelectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::AutofillSelectionArchive::Clear(this);

    return TST::AutofillSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::AutofillSelectionArchive::IsInitialized(TST::AutofillSelectionArchive *this)
{
  v1 = *(this + 4);
  result = 0;
  if (v1 & 1) == 0 || (v3 = *(this + 3), (~*(v3 + 16) & 3) == 0) && (*(*(v3 + 24) + 16) & 2) != 0 && (*(*(v3 + 32) + 16))
  {
    if ((v1 & 2) == 0)
    {
      return 1;
    }

    v4 = *(this + 4);
    if (~*(v4 + 16) & 3) == 0 && (*(*(v4 + 24) + 16) & 2) != 0 && (*(*(v4 + 32) + 16))
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::AutofillSelectionArchive::InternalSwap(TST::AutofillSelectionArchive *this, TST::AutofillSelectionArchive *a2)
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

TST::FilterRulePrePivotArchive *TST::FilterRulePrePivotArchive::FilterRulePrePivotArchive(TST::FilterRulePrePivotArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5658;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FilterRulePrePivotArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B5658;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FilterRulePrePivotArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TST::FilterRulePrePivotArchive *TST::FilterRulePrePivotArchive::FilterRulePrePivotArchive(TST::FilterRulePrePivotArchive *this, const TST::FilterRulePrePivotArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B5658;
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
  *(this + 32) = *(a2 + 32);
  return this;
}

void TST::FilterRulePrePivotArchive::~FilterRulePrePivotArchive(TST::FilterRulePrePivotArchive *this)
{
  if (this != TST::_FilterRulePrePivotArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::FormulaPredicatePrePivotArchive::~FormulaPredicatePrePivotArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::FilterRulePrePivotArchive::~FilterRulePrePivotArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::FilterRulePrePivotArchive::default_instance(TST::FilterRulePrePivotArchive *this)
{
  if (atomic_load_explicit(scc_info_FilterRulePrePivotArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_FilterRulePrePivotArchive_default_instance_;
}

uint64_t *TST::FilterRulePrePivotArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TST::FormulaPredicatePrePivotArchive::Clear(this[3]);
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

uint64_t *TST::FormulaPredicatePrePivotArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSCE::FormulaArchive::Clear(this[3]);
  }

  if ((v2 & 0x7E) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
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

google::protobuf::internal *TST::FilterRulePrePivotArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
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

            v16 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredicatePrePivotArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_22170626C(a3, v16, v7);
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
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
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

unsigned __int8 *TST::FilterRulePrePivotArchive::_InternalSerialize(TST::FilterRulePrePivotArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::FormulaPredicatePrePivotArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::FilterRulePrePivotArchive::ByteSizeLong(TST::FilterRulePrePivotArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TST::FormulaPredicatePrePivotArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  v5 = v3 + (v2 & 2);
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v3 + (v2 & 2);
  }
}

uint64_t TST::FilterRulePrePivotArchive::MergeFrom(TST::FilterRulePrePivotArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::FilterRulePrePivotArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::FilterRulePrePivotArchive::MergeFrom(uint64_t this, const TST::FilterRulePrePivotArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredicatePrePivotArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TST::_FormulaPredicatePrePivotArchive_default_instance_;
      }

      this = TST::FormulaPredicatePrePivotArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t TST::FormulaPredicatePrePivotArchive::MergeFrom(uint64_t this, const TST::FormulaPredicatePrePivotArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x7F) != 0)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TSCE::_FormulaArchive_default_instance_;
      }

      this = TSCE::FormulaArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_23;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(v3 + 36) = *(a2 + 9);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(v3 + 40) = *(a2 + 10);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(v3 + 44) = *(a2 + 11);
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
      *(v3 + 52) = *(a2 + 13);
      goto LABEL_12;
    }

LABEL_26:
    *(v3 + 48) = *(a2 + 12);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return this;
}

uint64_t *TST::FilterRulePrePivotArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FilterRulePrePivotArchive::Clear(this);

    return TST::FilterRulePrePivotArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::FilterRulePrePivotArchive::CopyFrom(uint64_t *this, const TST::FilterRulePrePivotArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FilterRulePrePivotArchive::Clear(this);

    return TST::FilterRulePrePivotArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::FilterRulePrePivotArchive::IsInitialized(TST::FilterRulePrePivotArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v1 = *(this + 3);
  if ((~*(v1 + 16) & 0x7F) != 0)
  {
    return 0;
  }

  else
  {
    return TSCE::FormulaArchive::IsInitialized(*(v1 + 24));
  }
}

uint64_t TST::FormulaPredicatePrePivotArchive::IsInitialized(TSCE::FormulaArchive **this)
{
  if ((~*(this + 4) & 0x7F) != 0)
  {
    return 0;
  }

  else
  {
    return TSCE::FormulaArchive::IsInitialized(this[3]);
  }
}

uint64_t *TST::FilterRulePrePivotArchive::InternalSwap(TST::FilterRulePrePivotArchive *this, TST::FilterRulePrePivotArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

TST::FilterRuleArchive *TST::FilterRuleArchive::FilterRuleArchive(TST::FilterRuleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5708;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FilterRuleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B5708;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FilterRuleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::FilterRuleArchive *TST::FilterRuleArchive::FilterRuleArchive(TST::FilterRuleArchive *this, const TST::FilterRuleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B5708;
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

void TST::FilterRuleArchive::~FilterRuleArchive(TST::FilterRuleArchive *this)
{
  if (this != TST::_FilterRuleArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::FormulaPredicateArchive::~FormulaPredicateArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::FilterRuleArchive::~FilterRuleArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::FilterRuleArchive::default_instance(TST::FilterRuleArchive *this)
{
  if (atomic_load_explicit(scc_info_FilterRuleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_FilterRuleArchive_default_instance_;
}

uint64_t *TST::FilterRuleArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TST::FormulaPredicateArchive::Clear(this[3]);
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

uint64_t *TST::FormulaPredicateArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x7F) == 0)
  {
    goto LABEL_10;
  }

  if (v2)
  {
    this = TST::FormulaPredArgArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TST::FormulaPredArgArchive::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = TST::FormulaPredArgArchive::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    this = TSP::UUID::Clear(*(v1 + 56));
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = TSCE::FormulaArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_21:
  this = TSP::UUID::Clear(*(v1 + 64));
  if ((v2 & 0x40) != 0)
  {
LABEL_9:
    this = TSP::UUID::Clear(*(v1 + 72));
  }

LABEL_10:
  *(v1 + 80) = 0;
  if ((v2 & 0x700) != 0)
  {
    *(v1 + 92) = 0;
    *(v1 + 84) = 0;
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

google::protobuf::internal *TST::FilterRuleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredicateArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_22170633C(a3, v10, v5);
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

unsigned __int8 *TST::FilterRuleArchive::_InternalSerialize(TST::FilterRuleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::FormulaPredicateArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::FilterRuleArchive::ByteSizeLong(TST::FormulaPredArgArchive ***this)
{
  if (this[2])
  {
    v3 = TST::FormulaPredicateArchive::ByteSizeLong(this[3]);
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

uint64_t TST::FilterRuleArchive::MergeFrom(TST::FilterRuleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::FilterRuleArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::FilterRuleArchive::MergeFrom(uint64_t this, const TST::FilterRuleArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredicateArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = TST::_FormulaPredicateArchive_default_instance_;
    }

    return TST::FormulaPredicateArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t TST::FormulaPredicateArchive::MergeFrom(uint64_t this, const TST::FormulaPredicateArchive *a2)
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
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TST::_FormulaPredArgArchive_default_instance_;
      }

      this = TST::FormulaPredArgArchive::MergeFrom(v6, v8);
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

      v9 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgArchive>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TST::_FormulaPredArgArchive_default_instance_;
    }

    this = TST::FormulaPredArgArchive::MergeFrom(v9, v11);
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

      v12 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgArchive>(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = &TST::_FormulaPredArgArchive_default_instance_;
    }

    this = TST::FormulaPredArgArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_41:
      v18 = MEMORY[0x277D809E0];
      if ((v5 & 0x10) != 0)
      {
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
          v21 = v18;
        }

        this = TSP::UUID::MergeFrom(v19, v21);
        if ((v5 & 0x20) == 0)
        {
LABEL_43:
          if ((v5 & 0x40) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_70;
        }
      }

      else if ((v5 & 0x20) == 0)
      {
        goto LABEL_43;
      }

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
        v24 = v18;
      }

      this = TSP::UUID::MergeFrom(v22, v24);
      if ((v5 & 0x40) == 0)
      {
LABEL_44:
        if ((v5 & 0x80) == 0)
        {
LABEL_46:
          *(v3 + 16) |= v5;
          goto LABEL_47;
        }

LABEL_45:
        *(v3 + 80) = *(a2 + 20);
        goto LABEL_46;
      }

LABEL_70:
      *(v3 + 16) |= 0x40u;
      v25 = *(v3 + 72);
      if (!v25)
      {
        v26 = *(v3 + 8);
        if (v26)
        {
          v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
        }

        v25 = MEMORY[0x223DA0360](v26);
        *(v3 + 72) = v25;
      }

      if (*(a2 + 9))
      {
        v27 = *(a2 + 9);
      }

      else
      {
        v27 = v18;
      }

      this = TSP::UUID::MergeFrom(v25, v27);
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

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

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = TSCE::_FormulaArchive_default_instance_;
    }

    this = TSCE::FormulaArchive::MergeFrom(v15, v17);
    goto LABEL_41;
  }

LABEL_47:
  if ((v5 & 0x700) == 0)
  {
    return this;
  }

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_50;
    }

LABEL_80:
    *(v3 + 88) = *(a2 + 22);
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  *(v3 + 84) = *(a2 + 21);
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_80;
  }

LABEL_50:
  if ((v5 & 0x400) != 0)
  {
LABEL_51:
    *(v3 + 92) = *(a2 + 92);
  }

LABEL_52:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t *TST::FilterRuleArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FilterRuleArchive::Clear(this);

    return TST::FilterRuleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::FilterRuleArchive::CopyFrom(uint64_t *this, const TST::FilterRuleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FilterRuleArchive::Clear(this);

    return TST::FilterRuleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::FilterRuleArchive::IsInitialized(TST::FormulaPredicateArchive **this)
{
  if (this[2])
  {
    return TST::FormulaPredicateArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t TST::FormulaPredicateArchive::IsInitialized(TST::FormulaPredicateArchive *this)
{
  v1 = *(this + 4);
  if ((~v1 & 0x380) != 0)
  {
    return 0;
  }

  if (v1)
  {
    result = TST::FormulaPredArgArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 2) != 0)
  {
    result = TST::FormulaPredArgArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 4) != 0)
  {
    result = TST::FormulaPredArgArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 8) != 0)
  {
    result = TSCE::FormulaArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x10) != 0)
  {
    result = TSP::UUID::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x20) != 0)
  {
    result = TSP::UUID::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x40) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 9));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TST::FilterRuleArchive::InternalSwap(TST::FilterRuleArchive *this, TST::FilterRuleArchive *a2)
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

TSS::StyleArchive *TST::TableStyleArchive::clear_super(TST::TableStyleArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSS::StyleArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t *TST::TableStyleArchive::clear_table_properties(TST::TableStyleArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = sub_2216D9BBC(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::TableStyleArchive *TST::TableStyleArchive::TableStyleArchive(TST::TableStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B57B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TableStyleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_2834B57B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TableStyleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TST::TableStyleArchive *TST::TableStyleArchive::TableStyleArchive(TST::TableStyleArchive *this, const TST::TableStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B57B8;
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
  *(this + 10) = *(a2 + 10);
  return this;
}

void TST::TableStyleArchive::~TableStyleArchive(TST::TableStyleArchive *this)
{
  if (this != TST::_TableStyleArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x223D9FF00]();
      MEMORY[0x223DA1450](v2, 0x10A1C40AC828A93);
    }

    v3 = *(this + 4);
    if (v3)
    {
      v4 = sub_2216D9B78(v3);
      MEMORY[0x223DA1450](v4, 0x10A1C40643C386ALL);
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::TableStyleArchive::~TableStyleArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::TableStyleArchive::default_instance(TST::TableStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_TableStyleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableStyleArchive_default_instance_;
}

uint64_t *TST::TableStyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSS::StyleArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = sub_2216D9BBC(*(v1 + 32));
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

google::protobuf::internal *TST::TableStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v26) & 1) == 0)
  {
    while (1)
    {
      v7 = (v26 + 1);
      v8 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v9 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 11)
      {
        if (v8 != 90)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 2u;
        v17 = *(a1 + 32);
        if (!v17)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = sub_2216E31EC(v18);
          *(a1 + 32) = v17;
          v7 = v26;
        }

        v13 = sub_2217064DC(a3, v17, v7);
LABEL_36:
        v26 = v13;
        if (!v13)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (v10 != 10)
      {
        if (v10 == 1 && v8 == 10)
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

            v21 = MEMORY[0x223DA03A0](v20);
            LODWORD(v19) = v21;
            *(a1 + 24) = v21;
            v7 = v26;
          }

          v13 = sub_22170640C(a3, v19, v7);
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
            sub_221567188((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        goto LABEL_36;
      }

      if (v8 != 80)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v14 = (v7 + 1);
      LODWORD(v15) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v16 = *v14;
      v15 = (v15 + (v16 << 7) - 128);
      if ((v16 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_24:
        v26 = v14;
        *(a1 + 40) = v15;
        goto LABEL_37;
      }

      v24 = google::protobuf::internal::VarintParseSlow32(v7, v15);
      v26 = v24;
      *(a1 + 40) = v25;
      if (!v24)
      {
LABEL_44:
        v26 = 0;
        goto LABEL_2;
      }

LABEL_37:
      if (sub_221567030(a3, &v26))
      {
        goto LABEL_2;
      }
    }

    v7 = (v26 + 2);
LABEL_6:
    v26 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

unsigned __int8 *TST::TableStyleArchive::_InternalSerialize(TST::TableStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
      v13 = v10 >> 7;
      if (v10 >> 14)
      {
        v11 = a2 + 3;
        do
        {
          *(v11 - 1) = v13 | 0x80;
          v18 = v13 >> 7;
          ++v11;
          v19 = v13 >> 14;
          v13 >>= 7;
        }

        while (v19);
        *(v11 - 1) = v18;
      }

      else
      {
        a2[2] = v13;
        v11 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v10;
      v11 = a2 + 2;
    }

    a2 = TSS::StyleArchive::_InternalSerialize(v9, v11, a3);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 10);
  *a2 = 80;
  if (v20 > 0x7F)
  {
    a2[1] = v20 | 0x80;
    v21 = v20 >> 7;
    if (v20 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++a2;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(a2 - 1) = v22;
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      a2[2] = v21;
      a2 += 3;
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    a2[1] = v20;
    a2 += 2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 4);
  *a2 = 90;
  v7 = *(v6 + 28);
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v12 = v7 >> 7;
    if (v7 >> 14)
    {
      v8 = a2 + 3;
      do
      {
        *(v8 - 1) = v12 | 0x80;
        v14 = v12 >> 7;
        ++v8;
        v15 = v12 >> 14;
        v12 >>= 7;
      }

      while (v15);
      *(v8 - 1) = v14;
    }

    else
    {
      a2[2] = v12;
      v8 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v7;
    v8 = a2 + 2;
  }

  a2 = sub_2216DBBF8(v6, v8, a3);
LABEL_20:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TableStyleArchive::ByteSizeLong(TST::TableStyleArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSS::StyleArchive::ByteSizeLong(*(this + 3));
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
      v5 = sub_2216DE854(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::TableStyleArchive::MergeFrom(TST::TableStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TableStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TableStyleArchive::MergeFrom(uint64_t this, const TST::TableStyleArchive *a2)
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
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x223DA03A0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80BD0];
      }

      this = TSS::StyleArchive::MergeFrom(v6, v8);
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
        *(v3 + 40) = *(a2 + 10);
        goto LABEL_8;
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

      v9 = sub_2216E31EC(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &unk_2812E9C60;
    }

    this = sub_2216DF83C(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TST::TableStyleArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableStyleArchive::Clear(this);

    return TST::TableStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TableStyleArchive::CopyFrom(uint64_t *this, const TST::TableStyleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableStyleArchive::Clear(this);

    return TST::TableStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::TableStyleArchive::IsInitialized(TST::TableStyleArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = sub_2216E0E70(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::TableStyleArchive::InternalSwap(TST::TableStyleArchive *this, TST::TableStyleArchive *a2)
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
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  return result;
}

TSS::StyleArchive *TST::CellStyleArchive::clear_super(TST::CellStyleArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSS::StyleArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t *TST::CellStyleArchive::clear_cell_properties(TST::CellStyleArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = sub_2216D4E48(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::CellStyleArchive *TST::CellStyleArchive::CellStyleArchive(TST::CellStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5868;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellStyleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_2834B5868;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellStyleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TST::CellStyleArchive *TST::CellStyleArchive::CellStyleArchive(TST::CellStyleArchive *this, const TST::CellStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B5868;
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
  *(this + 10) = *(a2 + 10);
  return this;
}

void TST::CellStyleArchive::~CellStyleArchive(TST::CellStyleArchive *this)
{
  if (this != TST::_CellStyleArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x223D9FF00]();
      MEMORY[0x223DA1450](v2, 0x10A1C40AC828A93);
    }

    if (*(this + 4))
    {
      v3 = sub_2216D4E04();
      MEMORY[0x223DA1450](v3, 0x10A1C40D1C348F1);
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::CellStyleArchive::~CellStyleArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::CellStyleArchive::default_instance(TST::CellStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_CellStyleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CellStyleArchive_default_instance_;
}

uint64_t *TST::CellStyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSS::StyleArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = sub_2216D4E48(*(v1 + 32));
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

google::protobuf::internal *TST::CellStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v26) & 1) == 0)
  {
    while (1)
    {
      v7 = (v26 + 1);
      v8 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v9 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 11)
      {
        if (v8 != 90)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 2u;
        v17 = *(a1 + 32);
        if (!v17)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = sub_2216E2ED4(v18);
          *(a1 + 32) = v17;
          v7 = v26;
        }

        v13 = sub_2217065AC(a3, v17, v7);
LABEL_36:
        v26 = v13;
        if (!v13)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (v10 != 10)
      {
        if (v10 == 1 && v8 == 10)
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

            v21 = MEMORY[0x223DA03A0](v20);
            LODWORD(v19) = v21;
            *(a1 + 24) = v21;
            v7 = v26;
          }

          v13 = sub_22170640C(a3, v19, v7);
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
            sub_221567188((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        goto LABEL_36;
      }

      if (v8 != 80)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v14 = (v7 + 1);
      LODWORD(v15) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v16 = *v14;
      v15 = (v15 + (v16 << 7) - 128);
      if ((v16 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_24:
        v26 = v14;
        *(a1 + 40) = v15;
        goto LABEL_37;
      }

      v24 = google::protobuf::internal::VarintParseSlow32(v7, v15);
      v26 = v24;
      *(a1 + 40) = v25;
      if (!v24)
      {
LABEL_44:
        v26 = 0;
        goto LABEL_2;
      }

LABEL_37:
      if (sub_221567030(a3, &v26))
      {
        goto LABEL_2;
      }
    }

    v7 = (v26 + 2);
LABEL_6:
    v26 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

unsigned __int8 *TST::CellStyleArchive::_InternalSerialize(TST::CellStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
      v13 = v10 >> 7;
      if (v10 >> 14)
      {
        v11 = a2 + 3;
        do
        {
          *(v11 - 1) = v13 | 0x80;
          v18 = v13 >> 7;
          ++v11;
          v19 = v13 >> 14;
          v13 >>= 7;
        }

        while (v19);
        *(v11 - 1) = v18;
      }

      else
      {
        a2[2] = v13;
        v11 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v10;
      v11 = a2 + 2;
    }

    a2 = TSS::StyleArchive::_InternalSerialize(v9, v11, a3);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 10);
  *a2 = 80;
  if (v20 > 0x7F)
  {
    a2[1] = v20 | 0x80;
    v21 = v20 >> 7;
    if (v20 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++a2;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(a2 - 1) = v22;
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      a2[2] = v21;
      a2 += 3;
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    a2[1] = v20;
    a2 += 2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 4);
  *a2 = 90;
  v7 = *(v6 + 20);
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v12 = v7 >> 7;
    if (v7 >> 14)
    {
      v8 = a2 + 3;
      do
      {
        *(v8 - 1) = v12 | 0x80;
        v14 = v12 >> 7;
        ++v8;
        v15 = v12 >> 14;
        v12 >>= 7;
      }

      while (v15);
      *(v8 - 1) = v14;
    }

    else
    {
      a2[2] = v12;
      v8 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v7;
    v8 = a2 + 2;
  }

  a2 = sub_2216D5484(v6, v8, a3);
LABEL_20:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::CellStyleArchive::ByteSizeLong(TST::CellStyleArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSS::StyleArchive::ByteSizeLong(*(this + 3));
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
      v5 = sub_2216D5BA4(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::CellStyleArchive::MergeFrom(TST::CellStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellStyleArchive::MergeFrom(uint64_t this, const TST::CellStyleArchive *a2)
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
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x223DA03A0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80BD0];
      }

      this = TSS::StyleArchive::MergeFrom(v6, v8);
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
        *(v3 + 40) = *(a2 + 10);
        goto LABEL_8;
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

      v9 = sub_2216E2ED4(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &qword_2812E9B30;
    }

    this = sub_2216D5F0C(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TST::CellStyleArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellStyleArchive::Clear(this);

    return TST::CellStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CellStyleArchive::CopyFrom(uint64_t *this, const TST::CellStyleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellStyleArchive::Clear(this);

    return TST::CellStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::CellStyleArchive::IsInitialized(TST::CellStyleArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = sub_2216D62D0(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::CellStyleArchive::InternalSwap(TST::CellStyleArchive *this, TST::CellStyleArchive *a2)
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
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  return result;
}

TST::FormulaPredArgDataArchive *TST::FormulaPredArgDataArchive::FormulaPredArgDataArchive(TST::FormulaPredArgDataArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B5918;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaPredArgDataArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 61) = 0u;
  return this;
}

TST::FormulaPredArgDataArchive *TST::FormulaPredArgDataArchive::FormulaPredArgDataArchive(TST::FormulaPredArgDataArchive *this, const TST::FormulaPredArgDataArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B5918;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  *(this + 61) = *(a2 + 61);
  *(this + 2) = v6;
  *(this + 3) = v7;
  return this;
}

void TST::FormulaPredArgDataArchive::~FormulaPredArgDataArchive(TST::FormulaPredArgDataArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::FormulaPredArgDataArchive::~FormulaPredArgDataArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::FormulaPredArgDataArchive::default_instance(TST::FormulaPredArgDataArchive *this)
{
  if (atomic_load_explicit(scc_info_FormulaPredArgDataArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_FormulaPredArgDataArchive_default_instance_;
}

uint64_t *TST::FormulaPredArgDataArchive::Clear(TST::FormulaPredArgDataArchive *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 0xFE) != 0)
  {
    *(this + 61) = 0u;
    *(this + 2) = 0u;
    *(this + 3) = 0u;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TST::FormulaPredArgDataArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v40 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v40) & 1) == 0)
  {
    while (1)
    {
      v7 = (v40 + 1);
      v8 = *v40;
      if ((*v40 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v40, (v9 - 128));
      v40 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_71;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 <= 6)
        {
          if (v10 == 5)
          {
            if (v8 == 41)
            {
              v24 = *v7;
              v15 = (v7 + 8);
              v5 |= 0x10u;
              *(a1 + 56) = v24;
              goto LABEL_41;
            }
          }

          else if (v10 == 6 && v8 == 49)
          {
            v16 = *v7;
            v15 = (v7 + 8);
            v5 |= 0x20u;
            *(a1 + 64) = v16;
LABEL_41:
            v40 = v15;
            goto LABEL_60;
          }

          goto LABEL_52;
        }

        if (v10 == 7)
        {
          if (v8 != 56)
          {
            goto LABEL_52;
          }

          v5 |= 0x40u;
          v29 = (v7 + 1);
          LODWORD(v28) = *v7;
          if ((v28 & 0x80) == 0)
          {
            goto LABEL_51;
          }

          v30 = *v29;
          v28 = (v28 + (v30 << 7) - 128);
          if ((v30 & 0x80000000) == 0)
          {
            v29 = (v7 + 2);
LABEL_51:
            v40 = v29;
            *(a1 + 72) = v28;
            goto LABEL_60;
          }

          v34 = google::protobuf::internal::VarintParseSlow64(v7, v28);
          v40 = v34;
          *(a1 + 72) = v35;
          if (!v34)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v10 != 8 || v8 != 64)
          {
            goto LABEL_52;
          }

          v5 |= 0x80u;
          v19 = (v7 + 1);
          v18 = *v7;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if ((v20 & 0x80000000) == 0)
          {
            v19 = (v7 + 2);
LABEL_34:
            v40 = v19;
            *(a1 + 76) = v18 != 0;
            goto LABEL_60;
          }

          v38 = google::protobuf::internal::VarintParseSlow64(v7, v18);
          v40 = v38;
          *(a1 + 76) = v39 != 0;
          if (!v38)
          {
LABEL_71:
            v40 = 0;
            goto LABEL_2;
          }
        }
      }

      else if (v8 >> 3 > 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4 && v8 == 34)
          {
            *(a1 + 16) |= 1u;
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v17 = google::protobuf::internal::InlineGreedyStringParser();
            goto LABEL_59;
          }

LABEL_52:
          if (v8)
          {
            v31 = (v8 & 7) == 4;
          }

          else
          {
            v31 = 1;
          }

          if (v31)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v17 = google::protobuf::internal::UnknownFieldParse();
LABEL_59:
          v40 = v17;
          if (!v17)
          {
            goto LABEL_71;
          }

          goto LABEL_60;
        }

        if (v8 != 24)
        {
          goto LABEL_52;
        }

        v5 |= 8u;
        v26 = (v7 + 1);
        v25 = *v7;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if ((v27 & 0x80000000) == 0)
        {
          v26 = (v7 + 2);
LABEL_46:
          v40 = v26;
          *(a1 + 48) = v25;
          goto LABEL_60;
        }

        v32 = google::protobuf::internal::VarintParseSlow64(v7, v25);
        v40 = v32;
        *(a1 + 48) = v33;
        if (!v32)
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 == 9)
          {
            v23 = *v7;
            v15 = (v7 + 8);
            v5 |= 2u;
            *(a1 + 32) = v23;
            goto LABEL_41;
          }

          goto LABEL_52;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_52;
        }

        v5 |= 4u;
        v13 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_18:
          v40 = v13;
          *(a1 + 40) = v12;
          goto LABEL_60;
        }

        v36 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v40 = v36;
        *(a1 + 40) = v37;
        if (!v36)
        {
          goto LABEL_71;
        }
      }

LABEL_60:
      if (sub_221567030(a3, &v40))
      {
        goto LABEL_2;
      }
    }

    v7 = (v40 + 2);
LABEL_6:
    v40 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v40;
}

unsigned __int8 *TST::FormulaPredArgDataArchive::_InternalSerialize(TST::FormulaPredArgDataArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 4);
    *v4 = 9;
    *(v4 + 1) = v10;
    v4 += 9;
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_28:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v15 = *(this + 6);
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
          if (v6)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v4[2] = v16;
          v4 += 3;
          if (v6)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        v4[1] = v15;
        v4 += 2;
        if (v6)
        {
          goto LABEL_39;
        }
      }

LABEL_5:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
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

  v11 = *(this + 5);
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
      if ((v6 & 8) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v4[2] = v12;
      v4 += 3;
      if ((v6 & 8) != 0)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    v4[1] = v11;
    v4 += 2;
    if ((v6 & 8) != 0)
    {
      goto LABEL_28;
    }
  }

LABEL_4:
  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_39:
  v4 = sub_22150C00C(a3, 4, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 7);
  *v4 = 41;
  *(v4 + 1) = v19;
  v4 += 9;
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_43:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v20 = *(this + 8);
  *v4 = 49;
  *(v4 + 1) = v20;
  v4 += 9;
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 18);
  *v4 = 56;
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
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4[2] = v22;
      v4 += 3;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v4[1] = v21;
    v4 += 2;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 76);
  *v4 = 64;
  v4[1] = v7;
  v4 += 2;
LABEL_12:
  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::FormulaPredArgDataArchive::ByteSizeLong(TST::FormulaPredArgDataArchive *this)
{
  v1 = *(this + 4);
  if (*(this + 4))
  {
    if (v1)
    {
      v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += ((9 * (__clz(*(this + 5) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v1 & 8) != 0)
    {
      v2 += ((9 * (__clz(*(this + 6) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v1 & 0x10) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x20) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x40) != 0)
    {
      v7 = *(this + 18);
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v7 >= 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 11;
      }

      v2 += v9;
    }

    v3 = v2 + ((v1 >> 6) & 2);
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TST::FormulaPredArgDataArchive::MergeFrom(TST::FormulaPredArgDataArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::FormulaPredArgDataArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::FormulaPredArgDataArchive::MergeFrom(uint64_t this, const TST::FormulaPredArgDataArchive *a2)
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

    *(v3 + 32) = *(a2 + 4);
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
    *(v3 + 40) = *(a2 + 5);
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
    *(v3 + 48) = *(a2 + 6);
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
    *(v3 + 56) = *(a2 + 7);
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
    *(v3 + 64) = *(a2 + 8);
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
      *(v3 + 76) = *(a2 + 76);
      goto LABEL_13;
    }

LABEL_21:
    *(v3 + 72) = *(a2 + 18);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return this;
}

TST::FormulaPredArgDataArchive *TST::FormulaPredArgDataArchive::CopyFrom(TST::FormulaPredArgDataArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FormulaPredArgDataArchive::Clear(this);

    return TST::FormulaPredArgDataArchive::MergeFrom(v4, a2);
  }

  return this;
}

TST::FormulaPredArgDataArchive *TST::FormulaPredArgDataArchive::CopyFrom(TST::FormulaPredArgDataArchive *this, const TST::FormulaPredArgDataArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FormulaPredArgDataArchive::Clear(this);

    return TST::FormulaPredArgDataArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TST::FormulaPredArgDataArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
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
  result = a2[3];
  this[3] = result;
  a2[3].n128_u64[0] = v8;
  a2[3].n128_u64[1] = v9;
  v11 = this[4].n128_u64[0];
  this[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[4].n128_u64[0] = v11;
  LODWORD(v11) = this[4].n128_u32[2];
  this[4].n128_u32[2] = a2[4].n128_u32[2];
  a2[4].n128_u32[2] = v11;
  LOBYTE(v11) = this[4].n128_u8[12];
  this[4].n128_u8[12] = a2[4].n128_u8[12];
  a2[4].n128_u8[12] = v11;
  return result;
}

uint64_t *TST::FormulaPredArgArchive::clear_base_cell_ref(TST::FormulaPredArgArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSCE::CellReferenceArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TST::FormulaPredArgArchive::clear_relative_cell_ref(TST::FormulaPredArgArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSCE::RelativeCellRefArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t *TST::FormulaPredArgArchive::clear_category_ref(TST::FormulaPredArgArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSCE::CategoryReferenceArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

uint64_t *TST::FormulaPredArgArchive::clear_uid_tract_list(TST::FormulaPredArgArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSCE::ASTNodeArrayArchive_ASTUidTractList::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

uint64_t *TST::FormulaPredArgArchive::clear_host_cell_coord(TST::FormulaPredArgArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

uint64_t *TST::FormulaPredArgArchive::clear_view_tract_ref(TST::FormulaPredArgArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSCE::ViewTractRefArchive::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TST::FormulaPredArgArchive *TST::FormulaPredArgArchive::FormulaPredArgArchive(TST::FormulaPredArgArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B59C8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_FormulaPredArgArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 94) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 3) = 0u;
  return this;
}

TST::FormulaPredArgArchive *TST::FormulaPredArgArchive::FormulaPredArgArchive(TST::FormulaPredArgArchive *this, const TST::FormulaPredArgArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B59C8;
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
    sub_22167F4AC(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  v12 = *(a2 + 26);
  *(this + 54) = *(a2 + 54);
  *(this + 26) = v12;
  return this;
}

void sub_22162BB70(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C4040ECADADLL);
  sub_22167F428((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::FormulaPredArgArchive::~FormulaPredArgArchive(TST::FormulaPredArgArchive *this)
{
  sub_22162BC54(this);
  sub_2214DFCF8(this + 1);
  sub_22167F428(this + 3);
}

{
  TST::FormulaPredArgArchive::~FormulaPredArgArchive(this);

  JUMPOUT(0x223DA1450);
}

void *sub_22162BC54(void *result)
{
  if (result != &TST::_FormulaPredArgArchive_default_instance_)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      TST::FormulaPredArgDataArchive::~FormulaPredArgDataArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[7];
    if (v3)
    {
      TSCE::CellReferenceArchive::~CellReferenceArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[8];
    if (v4)
    {
      TSCE::RelativeCellRefArchive::~RelativeCellRefArchive(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[9];
    if (v5)
    {
      TSCE::CategoryReferenceArchive::~CategoryReferenceArchive(v5);
      MEMORY[0x223DA1450]();
    }

    v6 = v1[10];
    if (v6)
    {
      TSCE::ASTNodeArrayArchive_ASTUidTractList::~ASTNodeArrayArchive_ASTUidTractList(v6);
      MEMORY[0x223DA1450]();
    }

    v7 = v1[11];
    if (v7)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v7);
      MEMORY[0x223DA1450]();
    }

    result = v1[12];
    if (result)
    {
      TSCE::ViewTractRefArchive::~ViewTractRefArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::FormulaPredArgArchive::default_instance(TST::FormulaPredArgArchive *this)
{
  if (atomic_load_explicit(scc_info_FormulaPredArgArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_FormulaPredArgArchive_default_instance_;
}

uint64_t *TST::FormulaPredArgArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::FormulaPredArgDataArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0x7F) == 0)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    this = TST::FormulaPredArgDataArchive::Clear(*(v1 + 48));
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  this = TSCE::CellReferenceArchive::Clear(*(v1 + 56));
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = TSCE::RelativeCellRefArchive::Clear(*(v1 + 64));
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_24:
    this = TSCE::ASTNodeArrayArchive_ASTUidTractList::Clear(*(v1 + 80));
    if ((v5 & 0x20) == 0)
    {
LABEL_12:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = TSCE::CategoryReferenceArchive::Clear(*(v1 + 72));
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_11:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_25:
  this = TSCE::CellCoordinateArchive::Clear(*(v1 + 88));
  if ((v5 & 0x40) != 0)
  {
LABEL_13:
    this = TSCE::ViewTractRefArchive::Clear(*(v1 + 96));
  }

LABEL_14:
  *(v1 + 104) = 0;
  if ((v5 & 0x300) != 0)
  {
    *(v1 + 108) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_221567398(v6);
  }

  return this;
}

google::protobuf::internal *TST::FormulaPredArgArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v53 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v53) & 1) == 0)
  {
    while (1)
    {
      v7 = (v53 + 1);
      v8 = *v53;
      if ((*v53 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v53, (v9 - 128));
      v53 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_113;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 5)
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 != 26)
            {
              goto LABEL_96;
            }

            *(a1 + 16) |= 2u;
            v39 = *(a1 + 56);
            if (!v39)
            {
              v40 = *(a1 + 8);
              if (v40)
              {
                v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
              }

              v39 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v40);
              *(a1 + 56) = v39;
              v7 = v53;
            }

            v16 = sub_2216F8E3C(a3, v39, v7);
          }

          else if (v10 == 4)
          {
            if (v8 != 34)
            {
              goto LABEL_96;
            }

            *(a1 + 16) |= 4u;
            v27 = *(a1 + 64);
            if (!v27)
            {
              v28 = *(a1 + 8);
              if (v28)
              {
                v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
              }

              v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RelativeCellRefArchive>(v28);
              *(a1 + 64) = v27;
              v7 = v53;
            }

            v16 = sub_22170674C(a3, v27, v7);
          }

          else
          {
            if (v10 != 5 || v8 != 42)
            {
              goto LABEL_96;
            }

            *(a1 + 16) |= 8u;
            v14 = *(a1 + 72);
            if (!v14)
            {
              v15 = *(a1 + 8);
              if (v15)
              {
                v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
              }

              v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CategoryReferenceArchive>(v15);
              *(a1 + 72) = v14;
              v7 = v53;
            }

            v16 = sub_2216FC4AC(a3, v14, v7);
          }

          goto LABEL_103;
        }

        if (v10 != 1)
        {
          if (v10 == 2 && v8 == 18)
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

              v20 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgDataArchive>(v21);
              *(a1 + 48) = v20;
              v7 = v53;
            }

            v16 = sub_22170667C(a3, v20, v7);
          }

          else
          {
LABEL_96:
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

            v16 = google::protobuf::internal::UnknownFieldParse();
          }

LABEL_103:
          v53 = v16;
          if (!v16)
          {
            goto LABEL_113;
          }

          goto LABEL_104;
        }

        if (v8 != 8)
        {
          goto LABEL_96;
        }

        v5 |= 0x80u;
        v25 = (v7 + 1);
        LODWORD(v24) = *v7;
        if ((v24 & 0x80) == 0)
        {
          goto LABEL_53;
        }

        v26 = *v25;
        v24 = (v24 + (v26 << 7) - 128);
        if ((v26 & 0x80000000) == 0)
        {
          v25 = (v7 + 2);
LABEL_53:
          v53 = v25;
          *(a1 + 104) = v24;
          goto LABEL_104;
        }

        v47 = google::protobuf::internal::VarintParseSlow64(v7, v24);
        v53 = v47;
        *(a1 + 104) = v48;
        if (!v47)
        {
          goto LABEL_113;
        }
      }

      else if (v8 >> 3 > 8)
      {
        if (v10 != 9)
        {
          if (v10 != 10)
          {
            if (v10 != 11 || v8 != 90)
            {
              goto LABEL_96;
            }

            *(a1 + 16) |= 0x40u;
            v17 = *(a1 + 96);
            if (!v17)
            {
              v18 = *(a1 + 8);
              if (v18)
              {
                v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ViewTractRefArchive>(v18);
              *(a1 + 96) = v17;
              v7 = v53;
            }

            v16 = sub_22170681C(a3, v17, v7);
            goto LABEL_103;
          }

          if (v8 != 82)
          {
            goto LABEL_96;
          }

          v31 = (v7 - 1);
          while (2)
          {
            v32 = (v31 + 1);
            v53 = (v31 + 1);
            v33 = *(a1 + 40);
            if (!v33)
            {
LABEL_69:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v33 = *(a1 + 40);
              v34 = *v33;
              goto LABEL_70;
            }

            v38 = *(a1 + 32);
            v34 = *v33;
            if (v38 >= *v33)
            {
              if (v34 == *(a1 + 36))
              {
                goto LABEL_69;
              }

LABEL_70:
              *v33 = v34 + 1;
              v35 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgDataArchive>(*(a1 + 24));
              v36 = *(a1 + 32);
              v37 = *(a1 + 40) + 8 * v36;
              *(a1 + 32) = v36 + 1;
              *(v37 + 8) = v35;
              v32 = v53;
            }

            else
            {
              *(a1 + 32) = v38 + 1;
              v35 = *&v33[2 * v38 + 2];
            }

            v31 = sub_22170667C(a3, v35, v32);
            v53 = v31;
            if (!v31)
            {
              goto LABEL_113;
            }

            if (*a3 <= v31 || *v31 != 82)
            {
              goto LABEL_104;
            }

            continue;
          }
        }

        if (v8 != 72)
        {
          goto LABEL_96;
        }

        v5 |= 0x200u;
        v44 = (v7 + 1);
        v43 = *v7;
        if ((v43 & 0x8000000000000000) == 0)
        {
          goto LABEL_95;
        }

        v45 = *v44;
        v43 = (v45 << 7) + v43 - 128;
        if ((v45 & 0x80000000) == 0)
        {
          v44 = (v7 + 2);
LABEL_95:
          v53 = v44;
          *(a1 + 109) = v43 != 0;
          goto LABEL_104;
        }

        v51 = google::protobuf::internal::VarintParseSlow64(v7, v43);
        v53 = v51;
        *(a1 + 109) = v52 != 0;
        if (!v51)
        {
LABEL_113:
          v53 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 == 6)
        {
          if (v8 != 50)
          {
            goto LABEL_96;
          }

          *(a1 + 16) |= 0x10u;
          v41 = *(a1 + 80);
          if (!v41)
          {
            v42 = *(a1 + 8);
            if (v42)
            {
              v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
            }

            v41 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidTractList>(v42);
            *(a1 + 80) = v41;
            v7 = v53;
          }

          v16 = sub_2216FDAFC(a3, v41, v7);
          goto LABEL_103;
        }

        if (v10 == 7)
        {
          if (v8 != 58)
          {
            goto LABEL_96;
          }

          *(a1 + 16) |= 0x20u;
          v29 = *(a1 + 88);
          if (!v29)
          {
            v30 = *(a1 + 8);
            if (v30)
            {
              v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
            }

            v29 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v30);
            *(a1 + 88) = v29;
            v7 = v53;
          }

          v16 = sub_2216F806C(a3, v29, v7);
          goto LABEL_103;
        }

        if (v10 != 8 || v8 != 64)
        {
          goto LABEL_96;
        }

        v5 |= 0x100u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_16:
          v53 = v12;
          *(a1 + 108) = v11 != 0;
          goto LABEL_104;
        }

        v49 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v53 = v49;
        *(a1 + 108) = v50 != 0;
        if (!v49)
        {
          goto LABEL_113;
        }
      }

LABEL_104:
      if (sub_221567030(a3, &v53))
      {
        goto LABEL_2;
      }
    }

    v7 = (v53 + 2);
LABEL_6:
    v53 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v53;
}