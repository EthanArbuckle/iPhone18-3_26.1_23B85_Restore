void TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::~SpanningDependenciesArchive_ReferringColumnToRemoteCells(TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells *this)
{
  sub_2214DFCF8(this + 1);
  sub_221568D70(this + 3);
}

{
  TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::~SpanningDependenciesArchive_ReferringColumnToRemoteCells(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::default_instance(TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells *this)
{
  if (atomic_load_explicit(scc_info_SpanningDependenciesArchive_ReferringColumnToRemoteCells_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_SpanningDependenciesArchive_ReferringColumnToRemoteCells_default_instance_;
}

uint64_t *TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::InternalCellReferenceArchive::Clear(v4);
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

google::protobuf::internal *TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_55;
      }

      v7 = TagFallback;
      v8 = v28;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        v16 = (v7 - 1);
        while (2)
        {
          v17 = (v16 + 1);
          v31 = (v16 + 1);
          v18 = *(a1 + 40);
          if (!v18)
          {
LABEL_31:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v18 = *(a1 + 40);
            v19 = *v18;
            goto LABEL_32;
          }

          v23 = *(a1 + 32);
          v19 = *v18;
          if (v23 >= *v18)
          {
            if (v19 == *(a1 + 36))
            {
              goto LABEL_31;
            }

LABEL_32:
            *v18 = v19 + 1;
            v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellReferenceArchive>(*(a1 + 24));
            v21 = *(a1 + 32);
            v22 = *(a1 + 40) + 8 * v21;
            *(a1 + 32) = v21 + 1;
            *(v22 + 8) = v20;
            v17 = v31;
          }

          else
          {
            *(a1 + 32) = v23 + 1;
            v20 = *&v18[2 * v23 + 2];
          }

          v16 = sub_2216F98CC(a3, v20, v17);
          v31 = v16;
          if (!v16)
          {
            goto LABEL_55;
          }

          if (*a3 <= v16 || *v16 != 26)
          {
            goto LABEL_45;
          }

          continue;
        }
      }

      if (v10 == 2)
      {
        if (v8 == 16)
        {
          v14 = (v7 + 1);
          v13 = *v7;
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v15 = *v14;
          v13 = (v15 << 7) + v13 - 128;
          if (v15 < 0)
          {
            v31 = google::protobuf::internal::VarintParseSlow64(v7, v13);
            if (!v31)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v14 = (v7 + 2);
LABEL_25:
            v31 = v14;
          }

          if (v13 > 1)
          {
            sub_2216FF1C4();
          }

          else
          {
            *(a1 + 16) |= 2u;
            *(a1 + 52) = v13;
          }

          goto LABEL_45;
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
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v31 = google::protobuf::internal::UnknownFieldParse();
        if (!v31)
        {
LABEL_55:
          v31 = 0;
          goto LABEL_2;
        }

        goto LABEL_45;
      }

      if (v10 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v24 = (v7 + 1);
      LODWORD(v25) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      v26 = *v24;
      v25 = (v25 + (v26 << 7) - 128);
      if ((v26 & 0x80000000) == 0)
      {
        v24 = (v7 + 2);
LABEL_44:
        v31 = v24;
        *(a1 + 48) = v25;
        v5 = 1;
        goto LABEL_45;
      }

      v29 = google::protobuf::internal::VarintParseSlow32(v7, v25);
      v31 = v29;
      *(a1 + 48) = v30;
      v5 = 1;
      if (!v29)
      {
        goto LABEL_55;
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

unsigned __int8 *TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::_InternalSerialize(TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::InternalCellReferenceArchive::_InternalSerialize(v16, v18, a3);
    }
  }

  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::RequiredFieldsByteSizeFallback(TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
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

  v4 = *(this + 13);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v5;
  return result;
}

uint64_t TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::ByteSizeLong(TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v6 = TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = *(this + 13);
    v3 = (9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6;
    v4 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    if (v2 >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 10;
    }

    v6 = v5 + v3 + 2;
  }

  v7 = *(this + 8);
  v8 = v6 + v7;
  v9 = *(this + 5);
  if (v9)
  {
    v10 = (v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = 8 * v7;
    do
    {
      v12 = *v10++;
      v13 = TSCE::InternalCellReferenceArchive::ByteSizeLong(v12);
      v8 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      v11 -= 8;
    }

    while (v11);
  }

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

uint64_t TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::MergeFrom(TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::MergeFrom(uint64_t this, const TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells *a2)
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
    this = sub_221568DF4(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

uint64_t *TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::Clear(this);

    return TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::CopyFrom(uint64_t *this, const TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::Clear(this);

    return TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::IsInitialized(TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells *this)
{
  if ((~*(this + 4) & 3) != 0)
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

  while ((~*(v4 + 16) & 3) == 0);
  return result;
}

__n128 TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::InternalSwap(__n128 *this, __n128 *a2)
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

TSCE::SpanningDependenciesArchive *TSCE::SpanningDependenciesArchive::SpanningDependenciesArchive(TSCE::SpanningDependenciesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AC260;
  *(this + 1) = a2;
  *(this + 4) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 11) = 0;
  *(this + 10) = 0;
  *(this + 6) = a2;
  *(this + 7) = a2;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = a2;
  *(this + 13) = a2;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (atomic_load_explicit(scc_info_SpanningDependenciesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 16) = 0;
  *(this + 17) = 0;
  return this;
}

void sub_221506160(_Unwind_Exception *a1)
{
  v4 = v3;
  sub_221568F38(v4);
  sub_221568EB4(v2);
  sub_22156865C(v1);
  sub_2216FF13C();
  _Unwind_Resume(a1);
}

TSCE::SpanningDependenciesArchive *TSCE::SpanningDependenciesArchive::SpanningDependenciesArchive(TSCE::SpanningDependenciesArchive *this, const TSCE::SpanningDependenciesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AC260;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  v5 = *(a2 + 6);
  if (v5)
  {
    sub_2210BBC64(this + 6, v5);
    v6 = *(this + 4);
    *(this + 6) += *(a2 + 6);
    memcpy(v6, *(a2 + 4), 4 * *(a2 + 6));
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  v7 = *(a2 + 10);
  if (v7)
  {
    sub_2210BBC64(this + 10, v7);
    v8 = *(this + 6);
    *(this + 10) += *(a2 + 10);
    memcpy(v8, *(a2 + 6), 4 * *(a2 + 10));
  }

  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = *(a2 + 9);
    v11 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 56));
    sub_2215687A0(this + 56, v11, (v10 + 8), v9, **(this + 9) - *(this + 16));
    v12 = *(this + 16) + v9;
    *(this + 16) = v12;
    v13 = *(this + 9);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  v14 = *(a2 + 22);
  if (v14)
  {
    v15 = *(a2 + 12);
    v16 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 80));
    sub_221569240(this + 80, v16, (v15 + 8), v14, **(this + 12) - *(this + 22));
    v17 = *(this + 22) + v14;
    *(this + 22) = v17;
    v18 = *(this + 12);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  v19 = *(a2 + 28);
  if (v19)
  {
    v20 = *(a2 + 15);
    v21 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 104));
    sub_221569300(this + 104, v21, (v20 + 8), v19, **(this + 15) - *(this + 28));
    v22 = *(this + 28) + v19;
    *(this + 28) = v22;
    v23 = *(this + 15);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 1);
  if (v24)
  {
    sub_22156734C(v4, (v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v25 = *(a2 + 4);
  if (v25)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v25 & 2) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  return this;
}

void sub_221506450(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x1081C40825B58B5);
  sub_221568F38(v5);
  sub_221568EB4(v4);
  sub_22156865C(v2);
  if (*(v1 + 44) >= 1)
  {
    v7 = *(v1 + 48);
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

void TSCE::SpanningDependenciesArchive::~SpanningDependenciesArchive(TSCE::SpanningDependenciesArchive *this)
{
  if (this != &TSCE::_SpanningDependenciesArchive_default_instance_)
  {
    v2 = *(this + 16);
    if (v2)
    {
      sub_2214DFCF8((v2 + 8));
      MEMORY[0x223DA1450](v2, 0x1081C40825B58B5);
    }

    v3 = *(this + 17);
    if (v3)
    {
      sub_2214DFCF8((v3 + 8));
      MEMORY[0x223DA1450](v3, 0x1081C40825B58B5);
    }
  }

  sub_2214DFCF8(this + 1);
  sub_221568F38(this + 13);
  sub_221568EB4(this + 10);
  sub_22156865C(this + 7);
  if (*(this + 11) >= 1)
  {
    v4 = *(this + 6);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 7) >= 1)
  {
    v7 = *(this + 4);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }
}

{
  TSCE::SpanningDependenciesArchive::~SpanningDependenciesArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::SpanningDependenciesArchive::default_instance(TSCE::SpanningDependenciesArchive *this)
{
  if (atomic_load_explicit(scc_info_SpanningDependenciesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_SpanningDependenciesArchive_default_instance_;
}

uint64_t *TSCE::SpanningDependenciesArchive::Clear(uint64_t *this)
{
  v1 = this;
  *(this + 6) = 0;
  *(this + 10) = 0;
  v2 = *(this + 16);
  if (v2 >= 1)
  {
    v3 = (this[9] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellReferenceArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 64) = 0;
  }

  v5 = *(v1 + 88);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 96) + 8);
    do
    {
      v7 = *v6++;
      this = TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 88) = 0;
  }

  v8 = *(v1 + 112);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 120) + 8);
    do
    {
      v10 = *v9++;
      this = TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 112) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      this = TSCE::RangeCoordinateArchive::Clear(*(v1 + 128));
    }

    if ((v11 & 2) != 0)
    {
      this = TSCE::RangeCoordinateArchive::Clear(*(v1 + 136));
    }
  }

  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_221567398(v12);
  }

  return this;
}

google::protobuf::internal *TSCE::SpanningDependenciesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v58 = a2;
  if (sub_221567030(a3, &v58))
  {
    return v58;
  }

  v6 = (a1 + 8);
  while (1)
  {
    v7 = (v58 + 1);
    v8 = *v58;
    if ((*v58 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    v9 = *v7;
    v10 = v8 + (v9 << 7);
    v8 = v10 - 128;
    if ((v9 & 0x80000000) == 0)
    {
      v7 = (v58 + 2);
LABEL_7:
      v58 = v7;
      goto LABEL_8;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v58, (v10 - 128));
    v58 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v32;
LABEL_8:
    v11 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v8 >> 3 > 5)
    {
      if (v11 != 6)
      {
        if (v11 != 7 || v8 != 58)
        {
          goto LABEL_108;
        }

        v23 = (v7 - 1);
        while (2)
        {
          v24 = (v23 + 1);
          v58 = (v23 + 1);
          v25 = *(a1 + 120);
          if (!v25)
          {
LABEL_41:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 104));
            v25 = *(a1 + 120);
            v26 = *v25;
            goto LABEL_42;
          }

          v30 = *(a1 + 112);
          v26 = *v25;
          if (v30 >= *v25)
          {
            if (v26 == *(a1 + 116))
            {
              goto LABEL_41;
            }

LABEL_42:
            *v25 = v26 + 1;
            v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells>(*(a1 + 104));
            v28 = *(a1 + 112);
            v29 = *(a1 + 120) + 8 * v28;
            *(a1 + 112) = v28 + 1;
            *(v29 + 8) = v27;
            v24 = v58;
          }

          else
          {
            *(a1 + 112) = v30 + 1;
            v27 = *&v25[2 * v30 + 2];
          }

          v23 = sub_2216F9A6C(a3, v27, v24);
          v58 = v23;
          if (!v23)
          {
            return 0;
          }

          if (*a3 <= v23 || *v23 != 58)
          {
            goto LABEL_116;
          }

          continue;
        }
      }

      if (v8 != 50)
      {
        goto LABEL_108;
      }

      v41 = (v7 - 1);
      while (2)
      {
        v42 = (v41 + 1);
        v58 = (v41 + 1);
        v43 = *(a1 + 96);
        if (!v43)
        {
LABEL_77:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 80));
          v43 = *(a1 + 96);
          v44 = *v43;
          goto LABEL_78;
        }

        v48 = *(a1 + 88);
        v44 = *v43;
        if (v48 >= *v43)
        {
          if (v44 == *(a1 + 92))
          {
            goto LABEL_77;
          }

LABEL_78:
          *v43 = v44 + 1;
          v45 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells>(*(a1 + 80));
          v46 = *(a1 + 88);
          v47 = *(a1 + 96) + 8 * v46;
          *(a1 + 88) = v46 + 1;
          *(v47 + 8) = v45;
          v42 = v58;
        }

        else
        {
          *(a1 + 88) = v48 + 1;
          v45 = *&v43[2 * v48 + 2];
        }

        v41 = sub_2216F999C(a3, v45, v42);
        v58 = v41;
        if (!v41)
        {
          return 0;
        }

        if (*a3 <= v41 || *v41 != 50)
        {
          goto LABEL_116;
        }

        continue;
      }
    }

    if (v11 == 4)
    {
      if (v8 == 34)
      {
        *(a1 + 16) |= 1u;
        v12 = *(a1 + 128);
        if (!v12)
        {
          v39 = *v6;
          if (*v6)
          {
            v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v39);
          *(a1 + 128) = v12;
          goto LABEL_72;
        }

LABEL_73:
        v40 = sub_2216F820C(a3, v12, v7);
        goto LABEL_115;
      }
    }

    else if (v11 == 5 && v8 == 42)
    {
      *(a1 + 16) |= 2u;
      v12 = *(a1 + 136);
      if (!v12)
      {
        v13 = *v6;
        if (*v6)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v13);
        *(a1 + 136) = v12;
LABEL_72:
        v7 = v58;
        goto LABEL_73;
      }

      goto LABEL_73;
    }

LABEL_108:
    if (v8)
    {
      v57 = (v8 & 7) == 4;
    }

    else
    {
      v57 = 1;
    }

    if (v57)
    {
      *(a3 + 80) = v8 - 1;
      return v58;
    }

    if ((*v6 & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v40 = google::protobuf::internal::UnknownFieldParse();
LABEL_115:
    v58 = v40;
    if (!v40)
    {
      return 0;
    }

LABEL_116:
    if (sub_221567030(a3, &v58))
    {
      return v58;
    }
  }

  if (v11 != 1)
  {
    if (v11 != 2)
    {
      if (v11 != 3 || v8 != 26)
      {
        goto LABEL_108;
      }

      v15 = (v7 - 1);
      while (2)
      {
        v16 = (v15 + 1);
        v58 = (v15 + 1);
        v17 = *(a1 + 72);
        if (!v17)
        {
LABEL_26:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56));
          v17 = *(a1 + 72);
          v18 = *v17;
          goto LABEL_27;
        }

        v22 = *(a1 + 64);
        v18 = *v17;
        if (v22 >= *v17)
        {
          if (v18 == *(a1 + 68))
          {
            goto LABEL_26;
          }

LABEL_27:
          *v17 = v18 + 1;
          v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(*(a1 + 56));
          v20 = *(a1 + 64);
          v21 = *(a1 + 72) + 8 * v20;
          *(a1 + 64) = v20 + 1;
          *(v21 + 8) = v19;
          v16 = v58;
        }

        else
        {
          *(a1 + 64) = v22 + 1;
          v19 = *&v17[2 * v22 + 2];
        }

        v15 = sub_2216F8E3C(a3, v19, v16);
        v58 = v15;
        if (!v15)
        {
          return 0;
        }

        if (*a3 <= v15 || *v15 != 26)
        {
          goto LABEL_116;
        }

        continue;
      }
    }

    if (v8 != 16)
    {
      if (v8 == 18)
      {
        *&v59 = a1 + 40;
        *(&v59 + 1) = TSCE::SpanningDependenciesArchive_RangeContext_IsValid;
        v60 = a1 + 8;
        v61 = 2;
        v40 = sub_221568FBC(a3, v7, &v59);
        goto LABEL_115;
      }

      goto LABEL_108;
    }

    v49 = (v7 - 1);
    while (2)
    {
      v58 = (v49 + 1);
      v50 = *(v49 + 1);
      v51 = (v49 + 2);
      if (v50 < 0)
      {
        v52 = *v51;
        v53 = (v52 << 7) + v50;
        LODWORD(v50) = v53 - 128;
        if ((v52 & 0x80000000) == 0)
        {
          v51 = (v49 + 3);
          goto LABEL_92;
        }

        v58 = google::protobuf::internal::VarintParseSlow64((v49 + 1), (v53 - 128));
        if (!v58)
        {
          return 0;
        }

        LODWORD(v50) = v56;
      }

      else
      {
LABEL_92:
        v58 = v51;
      }

      if (v50 > 1)
      {
        sub_2216FF1C4();
      }

      else
      {
        v54 = *(a1 + 40);
        if (v54 == *(a1 + 44))
        {
          v55 = v54 + 1;
          sub_2210BBC64((a1 + 40), v54 + 1);
          *(*(a1 + 48) + 4 * v54) = v50;
        }

        else
        {
          *(*(a1 + 48) + 4 * v54) = v50;
          v55 = v54 + 1;
        }

        *(a1 + 40) = v55;
      }

      v49 = v58;
      if (*a3 <= v58 || *v58 != 16)
      {
        goto LABEL_116;
      }

      continue;
    }
  }

  if (v8 != 8)
  {
    if (v8 == 10)
    {
      v40 = google::protobuf::internal::PackedUInt32Parser();
      goto LABEL_115;
    }

    goto LABEL_108;
  }

  v33 = v7 - 1;
  while (1)
  {
    v58 = (v33 + 1);
    v34 = v33[1];
    if (v33[1] < 0)
    {
      v35 = v34 + (v33[2] << 7);
      v34 = v35 - 128;
      if (v33[2] < 0)
      {
        v33 = google::protobuf::internal::VarintParseSlow32((v33 + 1), (v35 - 128));
        v34 = v36;
      }

      else
      {
        v33 += 3;
      }
    }

    else
    {
      v33 += 2;
    }

    v58 = v33;
    v37 = *(a1 + 24);
    if (v37 == *(a1 + 28))
    {
      v38 = v37 + 1;
      sub_2210BBC64((a1 + 24), v37 + 1);
      *(*(a1 + 32) + 4 * v37) = v34;
      v33 = v58;
    }

    else
    {
      *(*(a1 + 32) + 4 * v37) = v34;
      v38 = v37 + 1;
    }

    *(a1 + 24) = v38;
    if (!v33)
    {
      return 0;
    }

    if (*a3 <= v33 || *v33 != 8)
    {
      goto LABEL_116;
    }
  }
}

unsigned __int8 *TSCE::SpanningDependenciesArchive::_InternalSerialize(TSCE::SpanningDependenciesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 4 * i);
      *a2 = 8;
      if (v7 > 0x7F)
      {
        a2[1] = v7 | 0x80;
        v8 = v7 >> 7;
        if (v7 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v8 | 0x80;
            v9 = v8 >> 7;
            ++a2;
            v10 = v8 >> 14;
            v8 >>= 7;
          }

          while (v10);
          *(a2 - 1) = v9;
        }

        else
        {
          a2[2] = v8;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v7;
        a2 += 2;
      }
    }
  }

  v11 = *(this + 10);
  if (v11 >= 1)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 6) + 4 * j);
      *a2 = 16;
      if (v13 > 0x7F)
      {
        a2[1] = v13 | 0x80;
        v14 = v13 >> 7;
        if (v13 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            ++a2;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(a2 - 1) = v15;
        }

        else
        {
          a2[2] = v14;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v13;
        a2 += 2;
      }
    }
  }

  v17 = *(this + 16);
  if (v17)
  {
    for (k = 0; k != v17; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v19 = *(*(this + 9) + 8 * k + 8);
      *a2 = 26;
      v20 = *(v19 + 5);
      if (v20 > 0x7F)
      {
        a2[1] = v20 | 0x80;
        v22 = v20 >> 7;
        if (v20 >> 14)
        {
          v21 = a2 + 3;
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
          a2[2] = v22;
          v21 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v20;
        v21 = a2 + 2;
      }

      a2 = TSCE::CellReferenceArchive::_InternalSerialize(v19, v21, a3);
    }
  }

  v25 = *(this + 4);
  if (v25)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(this + 16);
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

    a2 = TSCE::RangeCoordinateArchive::_InternalSerialize(v26, v28, a3);
  }

  if ((v25 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v32 = *(this + 17);
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

    a2 = TSCE::RangeCoordinateArchive::_InternalSerialize(v32, v34, a3);
  }

  v38 = *(this + 22);
  if (v38)
  {
    for (m = 0; m != v38; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v40 = *(*(this + 12) + 8 * m + 8);
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

      a2 = TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::_InternalSerialize(v40, v42, a3);
    }
  }

  v46 = *(this + 28);
  if (v46)
  {
    for (n = 0; n != v46; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v48 = *(*(this + 15) + 8 * n + 8);
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

      a2 = TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::_InternalSerialize(v48, v50, a3);
    }
  }

  v54 = *(this + 1);
  if ((v54 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v54 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::SpanningDependenciesArchive::ByteSizeLong(TSCE::SpanningDependenciesArchive *this)
{
  v2 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v3 = *(this + 10);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(*(this + 6) + 4 * v5);
      if (v6 < 0)
      {
        v7 = 10;
      }

      else
      {
        v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
      }

      v4 += v7;
      ++v5;
    }

    while (v3 != v5);
  }

  else
  {
    v4 = 0;
  }

  v8 = *(this + 16);
  v9 = v2 + *(this + 6) + v3 + v4 + v8;
  v10 = *(this + 9);
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
      v14 = TSCE::CellReferenceArchive::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 22);
  v16 = v9 + v15;
  v17 = *(this + 12);
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
      v21 = TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 28);
  v23 = v16 + v22;
  v24 = *(this + 15);
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
      v28 = TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::ByteSizeLong(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(this + 4);
  if ((v29 & 3) != 0)
  {
    if (v29)
    {
      v30 = TSCE::RangeCoordinateArchive::ByteSizeLong(*(this + 16));
      v23 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v29 & 2) != 0)
    {
      v31 = TSCE::RangeCoordinateArchive::ByteSizeLong(*(this + 17));
      v23 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v23, this + 20);
  }

  else
  {
    *(this + 5) = v23;
    return v23;
  }
}

uint64_t TSCE::SpanningDependenciesArchive::MergeFrom(TSCE::SpanningDependenciesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::SpanningDependenciesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::SpanningDependenciesArchive::MergeFrom(uint64_t this, const TSCE::SpanningDependenciesArchive *a2)
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
    v6 = *(v3 + 24);
    sub_2210BBC64((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 6);
    this = memcpy((v7 + 4 * v6), *(a2 + 4), 4 * *(a2 + 6));
  }

  v8 = *(a2 + 10);
  if (v8)
  {
    v9 = *(v3 + 40);
    sub_2210BBC64((v3 + 40), v9 + v8);
    v10 = *(v3 + 48);
    *(v3 + 40) += *(a2 + 10);
    this = memcpy((v10 + 4 * v9), *(a2 + 6), 4 * *(a2 + 10));
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = *(a2 + 9);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 56));
    this = sub_2215687A0(v3 + 56, v13, (v12 + 8), v11, **(v3 + 72) - *(v3 + 64));
    v14 = *(v3 + 64) + v11;
    *(v3 + 64) = v14;
    v15 = *(v3 + 72);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 22);
  if (v16)
  {
    v17 = *(a2 + 12);
    v18 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 80));
    this = sub_221569240(v3 + 80, v18, (v17 + 8), v16, **(v3 + 96) - *(v3 + 88));
    v19 = *(v3 + 88) + v16;
    *(v3 + 88) = v19;
    v20 = *(v3 + 96);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 28);
  if (v21)
  {
    v22 = *(a2 + 15);
    v23 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 104));
    this = sub_221569300(v3 + 104, v23, (v22 + 8), v21, **(v3 + 120) - *(v3 + 112));
    v24 = *(v3 + 112) + v21;
    *(v3 + 112) = v24;
    v25 = *(v3 + 120);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  v26 = *(a2 + 4);
  if ((v26 & 3) != 0)
  {
    if (v26)
    {
      *(v3 + 16) |= 1u;
      v27 = *(v3 + 128);
      if (!v27)
      {
        v28 = *(v3 + 8);
        if (v28)
        {
          v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
        }

        v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v28);
        *(v3 + 128) = v27;
      }

      if (*(a2 + 16))
      {
        v29 = *(a2 + 16);
      }

      else
      {
        v29 = &TSCE::_RangeCoordinateArchive_default_instance_;
      }

      this = TSCE::RangeCoordinateArchive::MergeFrom(v27, v29);
    }

    if ((v26 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v30 = *(v3 + 136);
      if (!v30)
      {
        v31 = *(v3 + 8);
        if (v31)
        {
          v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
        }

        v30 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v31);
        *(v3 + 136) = v30;
      }

      if (*(a2 + 17))
      {
        v32 = *(a2 + 17);
      }

      else
      {
        v32 = &TSCE::_RangeCoordinateArchive_default_instance_;
      }

      return TSCE::RangeCoordinateArchive::MergeFrom(v30, v32);
    }
  }

  return this;
}

uint64_t *TSCE::SpanningDependenciesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SpanningDependenciesArchive::Clear(this);

    return TSCE::SpanningDependenciesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::SpanningDependenciesArchive::CopyFrom(uint64_t *this, const TSCE::SpanningDependenciesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SpanningDependenciesArchive::Clear(this);

    return TSCE::SpanningDependenciesArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::SpanningDependenciesArchive::IsInitialized(TSCE::SpanningDependenciesArchive *this)
{
  v2 = *(this + 16);
  while (v2 >= 1)
  {
    v3 = *(*(this + 9) + 8 * v2--);
    if ((~*(v3 + 16) & 7) != 0)
    {
      return 0;
    }
  }

  v4 = *(this + 22);
  while (v4 >= 1)
  {
    v5 = *(*(this + 12) + 8 * v4--);
    if ((~*(v5 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  result = sub_22150797C(this + 104);
  if (result)
  {
    v7 = *(this + 4);
    return ((v7 & 1) == 0 || (~*(*(this + 16) + 16) & 0xF) == 0) && ((v7 & 2) == 0 || (~*(*(this + 17) + 16) & 0xF) == 0);
  }

  return result;
}

BOOL sub_22150797C(uint64_t a1)
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

    v5 = *(v3 + 32);
    v6 = *(v3 + 40);
    while (v5 >= 1)
    {
      v7 = *(v6 + 8 * v5--);
      if ((~*(v7 + 16) & 3) != 0)
      {
        return 0;
      }
    }

    v9 = __OFSUB__(v1, 2);
    v8 = v1 - 2 < 0;
    --v1;
  }

  while (v8 == v9);
  return result;
}

__n128 TSCE::SpanningDependenciesArchive::InternalSwap(TSCE::SpanningDependenciesArchive *this, TSCE::SpanningDependenciesArchive *a2)
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
  v9 = *(this + 8);
  v10 = *(this + 9);
  *(this + 4) = *(a2 + 4);
  *(a2 + 8) = v9;
  *(a2 + 9) = v10;
  v11 = *(this + 11);
  v12 = *(this + 12);
  *(this + 88) = *(a2 + 88);
  *(a2 + 11) = v11;
  *(a2 + 12) = v12;
  v13 = *(this + 14);
  v14 = *(this + 15);
  *(this + 7) = *(a2 + 7);
  *(a2 + 14) = v13;
  *(a2 + 15) = v14;
  v15 = *(this + 16);
  v16 = *(this + 17);
  result = *(a2 + 8);
  *(this + 8) = result;
  *(a2 + 16) = v15;
  *(a2 + 17) = v16;
  return result;
}

void *TSCE::SpanningDependenciesExpandedArchive_ExtentRange::SpanningDependenciesExpandedArchive_ExtentRange(void *result, uint64_t a2)
{
  *result = &unk_2834AC310;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_2834AC310;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCE::SpanningDependenciesExpandedArchive_ExtentRange *TSCE::SpanningDependenciesExpandedArchive_ExtentRange::SpanningDependenciesExpandedArchive_ExtentRange(TSCE::SpanningDependenciesExpandedArchive_ExtentRange *this, const TSCE::SpanningDependenciesExpandedArchive_ExtentRange *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AC310;
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

void TSCE::SpanningDependenciesExpandedArchive_ExtentRange::~SpanningDependenciesExpandedArchive_ExtentRange(TSCE::SpanningDependenciesExpandedArchive_ExtentRange *this)
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

uint64_t *TSCE::SpanningDependenciesExpandedArchive_ExtentRange::default_instance(TSCE::SpanningDependenciesExpandedArchive_ExtentRange *this)
{
  if (atomic_load_explicit(scc_info_SpanningDependenciesExpandedArchive_ExtentRange_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_SpanningDependenciesExpandedArchive_ExtentRange_default_instance_;
}

uint64_t *TSCE::SpanningDependenciesExpandedArchive_ExtentRange::Clear(TSCE::SpanningDependenciesExpandedArchive_ExtentRange *this)
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

google::protobuf::internal *TSCE::SpanningDependenciesExpandedArchive_ExtentRange::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *TSCE::SpanningDependenciesExpandedArchive_ExtentRange::_InternalSerialize(TSCE::SpanningDependenciesExpandedArchive_ExtentRange *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSCE::SpanningDependenciesExpandedArchive_ExtentRange::ByteSizeLong(TSCE::SpanningDependenciesExpandedArchive_ExtentRange *this)
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

uint64_t TSCE::SpanningDependenciesExpandedArchive_ExtentRange::MergeFrom(TSCE::SpanningDependenciesExpandedArchive_ExtentRange *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::SpanningDependenciesExpandedArchive_ExtentRange::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::SpanningDependenciesExpandedArchive_ExtentRange::MergeFrom(uint64_t this, const TSCE::SpanningDependenciesExpandedArchive_ExtentRange *a2)
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

TSCE::SpanningDependenciesExpandedArchive_ExtentRange *TSCE::SpanningDependenciesExpandedArchive_ExtentRange::CopyFrom(TSCE::SpanningDependenciesExpandedArchive_ExtentRange *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SpanningDependenciesExpandedArchive_ExtentRange::Clear(this);

    return TSCE::SpanningDependenciesExpandedArchive_ExtentRange::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::SpanningDependenciesExpandedArchive_ExtentRange *TSCE::SpanningDependenciesExpandedArchive_ExtentRange::CopyFrom(TSCE::SpanningDependenciesExpandedArchive_ExtentRange *this, const TSCE::SpanningDependenciesExpandedArchive_ExtentRange *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SpanningDependenciesExpandedArchive_ExtentRange::Clear(this);

    return TSCE::SpanningDependenciesExpandedArchive_ExtentRange::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::SpanningDependenciesExpandedArchive_ExtentRange::InternalSwap(TSCE::SpanningDependenciesExpandedArchive_ExtentRange *this, TSCE::SpanningDependenciesExpandedArchive_ExtentRange *a2)
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

TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext *TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext(TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AC3C0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext *TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext(TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext *this, const TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AC3C0;
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
    sub_2215693C0(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::~SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext(TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567450(this + 3);
}

{
  TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::~SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::default_instance(TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext *this)
{
  if (atomic_load_explicit(scc_info_SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext_default_instance_;
}

uint64_t *TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::SpanningDependenciesExpandedArchive_ExtentRange::Clear(v4);
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

google::protobuf::internal *TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_55;
      }

      v7 = TagFallback;
      v8 = v28;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        v16 = (v7 - 1);
        while (2)
        {
          v17 = (v16 + 1);
          v31 = (v16 + 1);
          v18 = *(a1 + 40);
          if (!v18)
          {
LABEL_31:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v18 = *(a1 + 40);
            v19 = *v18;
            goto LABEL_32;
          }

          v23 = *(a1 + 32);
          v19 = *v18;
          if (v23 >= *v18)
          {
            if (v19 == *(a1 + 36))
            {
              goto LABEL_31;
            }

LABEL_32:
            *v18 = v19 + 1;
            v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive_ExtentRange>(*(a1 + 24));
            v21 = *(a1 + 32);
            v22 = *(a1 + 40) + 8 * v21;
            *(a1 + 32) = v21 + 1;
            *(v22 + 8) = v20;
            v17 = v31;
          }

          else
          {
            *(a1 + 32) = v23 + 1;
            v20 = *&v18[2 * v23 + 2];
          }

          v16 = sub_2216F9B3C(a3, v20, v17);
          v31 = v16;
          if (!v16)
          {
            goto LABEL_55;
          }

          if (*a3 <= v16 || *v16 != 26)
          {
            goto LABEL_45;
          }

          continue;
        }
      }

      if (v10 == 2)
      {
        if (v8 == 16)
        {
          v14 = (v7 + 1);
          v13 = *v7;
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v15 = *v14;
          v13 = (v15 << 7) + v13 - 128;
          if (v15 < 0)
          {
            v31 = google::protobuf::internal::VarintParseSlow64(v7, v13);
            if (!v31)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v14 = (v7 + 2);
LABEL_25:
            v31 = v14;
          }

          if (v13 > 1)
          {
            sub_2216FF1C4();
          }

          else
          {
            *(a1 + 16) |= 2u;
            *(a1 + 52) = v13;
          }

          goto LABEL_45;
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
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v31 = google::protobuf::internal::UnknownFieldParse();
        if (!v31)
        {
LABEL_55:
          v31 = 0;
          goto LABEL_2;
        }

        goto LABEL_45;
      }

      if (v10 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v24 = (v7 + 1);
      LODWORD(v25) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      v26 = *v24;
      v25 = (v25 + (v26 << 7) - 128);
      if ((v26 & 0x80000000) == 0)
      {
        v24 = (v7 + 2);
LABEL_44:
        v31 = v24;
        *(a1 + 48) = v25;
        v5 = 1;
        goto LABEL_45;
      }

      v29 = google::protobuf::internal::VarintParseSlow32(v7, v25);
      v31 = v29;
      *(a1 + 48) = v30;
      v5 = 1;
      if (!v29)
      {
        goto LABEL_55;
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

unsigned __int8 *TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::_InternalSerialize(TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::SpanningDependenciesExpandedArchive_ExtentRange::_InternalSerialize(v16, v18, a3);
    }
  }

  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::RequiredFieldsByteSizeFallback(TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
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

  v4 = *(this + 13);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v5;
  return result;
}

uint64_t TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::ByteSizeLong(TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v6 = TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = *(this + 13);
    v3 = (9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6;
    v4 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    if (v2 >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 10;
    }

    v6 = v5 + v3 + 2;
  }

  v7 = *(this + 8);
  v8 = v6 + v7;
  v9 = *(this + 5);
  if (v9)
  {
    v10 = (v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = 8 * v7;
    do
    {
      v12 = *v10++;
      v13 = TSCE::SpanningDependenciesExpandedArchive_ExtentRange::ByteSizeLong(v12);
      v8 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      v11 -= 8;
    }

    while (v11);
  }

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

uint64_t TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::MergeFrom(TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::MergeFrom(uint64_t this, const TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext *a2)
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
    this = sub_2215693C0(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

uint64_t *TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::Clear(this);

    return TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::CopyFrom(uint64_t *this, const TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::Clear(this);

    return TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::IsInitialized(TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext *this)
{
  if ((~*(this + 4) & 3) != 0)
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

  while ((*(v4 + 16) & 1) != 0);
  return result;
}

__n128 TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::InternalSwap(__n128 *this, __n128 *a2)
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

TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents *TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents(TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AC470;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_SpanningDependenciesExpandedArchive_CellCoordRefersToExtents_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents *TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents(TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents *this, const TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AC470;
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
    sub_221569504(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void sub_2215090F8(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C40B7564605);
  sub_221569480((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::~SpanningDependenciesExpandedArchive_CellCoordRefersToExtents(TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents *this)
{
  if (this != &TSCE::_SpanningDependenciesExpandedArchive_CellCoordRefersToExtents_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      sub_2214DFCF8((v2 + 8));
      MEMORY[0x223DA1450](v2, 0x1081C40B7564605);
    }
  }

  sub_2214DFCF8(this + 1);
  sub_221569480(this + 3);
}

{
  TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::~SpanningDependenciesExpandedArchive_CellCoordRefersToExtents(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::default_instance(TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents *this)
{
  if (atomic_load_explicit(scc_info_SpanningDependenciesExpandedArchive_CellCoordRefersToExtents_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_SpanningDependenciesExpandedArchive_CellCoordRefersToExtents_default_instance_;
}

uint64_t *TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSCE::CellCoordinateArchive::Clear(*(v1 + 48));
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

google::protobuf::internal *TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        v24 = (v11 + 1);
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
        v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext>(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v24;
LABEL_26:
        v11 = sub_2216F9C0C(a3, v15, v12);
        v24 = v11;
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

        v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v20);
        *(a1 + 48) = v19;
        v5 = v24;
      }

      v10 = sub_2216F806C(a3, v19, v5);
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
    v24 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v24;
}

unsigned __int8 *TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::_InternalSerialize(TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v5, v7, a3);
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

      a2 = TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::ByteSizeLong(TSCE::CellCoordinateArchive **this)
{
  if (this[2])
  {
    v3 = TSCE::CellCoordinateArchive::ByteSizeLong(this[6]);
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
      v10 = TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::ByteSizeLong(v9);
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

uint64_t TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::MergeFrom(TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::MergeFrom(uint64_t this, const TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents *a2)
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
    this = sub_221569504(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

      v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &TSCE::_CellCoordinateArchive_default_instance_;
    }

    return TSCE::CellCoordinateArchive::MergeFrom(v11, v13);
  }

  return this;
}

uint64_t *TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::Clear(this);

    return TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::CopyFrom(uint64_t *this, const TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::Clear(this);

    return TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::MergeFrom(v4, a2);
  }

  return this;
}

BOOL sub_2215099F8(uint64_t a1)
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

    v5 = *(v3 + 32);
    v6 = *(v3 + 40);
    while (v5 >= 1)
    {
      v7 = *(v6 + 8 * v5--);
      if ((*(v7 + 16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  while (v1-- >= 2);
  return result;
}

__n128 TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::InternalSwap(__n128 *this, __n128 *a2)
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

TSCE::SpanningDependenciesExpandedArchive *TSCE::SpanningDependenciesExpandedArchive::SpanningDependenciesExpandedArchive(TSCE::SpanningDependenciesExpandedArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AC520;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_SpanningDependenciesExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  return this;
}

TSCE::SpanningDependenciesExpandedArchive *TSCE::SpanningDependenciesExpandedArchive::SpanningDependenciesExpandedArchive(TSCE::SpanningDependenciesExpandedArchive *this, const TSCE::SpanningDependenciesExpandedArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AC520;
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
    sub_221569648(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  return this;
}

void sub_221509D00(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C40825B58B5);
  sub_2215695C4((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::SpanningDependenciesExpandedArchive::~SpanningDependenciesExpandedArchive(TSCE::SpanningDependenciesExpandedArchive *this)
{
  if (this != &TSCE::_SpanningDependenciesExpandedArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      sub_2214DFCF8((v2 + 8));
      MEMORY[0x223DA1450](v2, 0x1081C40825B58B5);
    }

    v3 = *(this + 7);
    if (v3)
    {
      sub_2214DFCF8((v3 + 8));
      MEMORY[0x223DA1450](v3, 0x1081C40825B58B5);
    }
  }

  sub_2214DFCF8(this + 1);
  sub_2215695C4(this + 3);
}

{
  TSCE::SpanningDependenciesExpandedArchive::~SpanningDependenciesExpandedArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::SpanningDependenciesExpandedArchive::default_instance(TSCE::SpanningDependenciesExpandedArchive *this)
{
  if (atomic_load_explicit(scc_info_SpanningDependenciesExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_SpanningDependenciesExpandedArchive_default_instance_;
}

uint64_t *TSCE::SpanningDependenciesExpandedArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::Clear(v4);
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
      this = TSCE::RangeCoordinateArchive::Clear(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      this = TSCE::RangeCoordinateArchive::Clear(*(v1 + 56));
    }
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

google::protobuf::internal *TSCE::SpanningDependenciesExpandedArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
    v8 = v6 >> 3;
    if (v6 >> 3 != 3)
    {
      break;
    }

    if (v6 != 26)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 2u;
    v12 = *(a1 + 56);
    if (!v12)
    {
      v14 = *(a1 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v14);
      *(a1 + 56) = v12;
      goto LABEL_30;
    }

LABEL_31:
    v11 = sub_2216F820C(a3, v12, v5);
LABEL_32:
    v26 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  if (v8 == 2)
  {
    if (v6 != 18)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v12 = *(a1 + 48);
    if (!v12)
    {
      v13 = *(a1 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v13);
      *(a1 + 48) = v12;
LABEL_30:
      v5 = v26;
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  if (v8 == 1 && v6 == 10)
  {
    v15 = (v5 - 1);
    while (1)
    {
      v16 = (v15 + 1);
      v26 = (v15 + 1);
      v17 = *(a1 + 40);
      if (!v17)
      {
        goto LABEL_36;
      }

      v22 = *(a1 + 32);
      v18 = *v17;
      if (v22 < *v17)
      {
        *(a1 + 32) = v22 + 1;
        v19 = *&v17[2 * v22 + 2];
        goto LABEL_40;
      }

      if (v18 == *(a1 + 36))
      {
LABEL_36:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v17 = *(a1 + 40);
        v18 = *v17;
      }

      *v17 = v18 + 1;
      v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents>(*(a1 + 24));
      v20 = *(a1 + 32);
      v21 = *(a1 + 40) + 8 * v20;
      *(a1 + 32) = v20 + 1;
      *(v21 + 8) = v19;
      v16 = v26;
LABEL_40:
      v15 = sub_2216F9CDC(a3, v19, v16);
      v26 = v15;
      if (!v15)
      {
        return 0;
      }

      if (*a3 <= v15 || *v15 != 10)
      {
        goto LABEL_2;
      }
    }
  }

LABEL_13:
  if (v6)
  {
    v10 = (v6 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_32;
  }

  *(a3 + 80) = v6 - 1;
  return v26;
}

unsigned __int8 *TSCE::SpanningDependenciesExpandedArchive::_InternalSerialize(TSCE::SpanningDependenciesExpandedArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 4);
  if (v13)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 6);
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

    a2 = TSCE::RangeCoordinateArchive::_InternalSerialize(v14, v16, a3);
  }

  if ((v13 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 7);
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

    a2 = TSCE::RangeCoordinateArchive::_InternalSerialize(v20, v22, a3);
  }

  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::SpanningDependenciesExpandedArchive::ByteSizeLong(TSCE::SpanningDependenciesExpandedArchive *this)
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
      v7 = TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::ByteSizeLong(v6);
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
      v9 = TSCE::RangeCoordinateArchive::ByteSizeLong(*(this + 6));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = TSCE::RangeCoordinateArchive::ByteSizeLong(*(this + 7));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSCE::SpanningDependenciesExpandedArchive::MergeFrom(TSCE::SpanningDependenciesExpandedArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::SpanningDependenciesExpandedArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::SpanningDependenciesExpandedArchive::MergeFrom(uint64_t this, const TSCE::SpanningDependenciesExpandedArchive *a2)
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
    this = sub_221569648(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = &TSCE::_RangeCoordinateArchive_default_instance_;
      }

      this = TSCE::RangeCoordinateArchive::MergeFrom(v11, v13);
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

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v15);
        *(v3 + 56) = v14;
      }

      if (*(a2 + 7))
      {
        v16 = *(a2 + 7);
      }

      else
      {
        v16 = &TSCE::_RangeCoordinateArchive_default_instance_;
      }

      return TSCE::RangeCoordinateArchive::MergeFrom(v14, v16);
    }
  }

  return this;
}

uint64_t *TSCE::SpanningDependenciesExpandedArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SpanningDependenciesExpandedArchive::Clear(this);

    return TSCE::SpanningDependenciesExpandedArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::SpanningDependenciesExpandedArchive::CopyFrom(uint64_t *this, const TSCE::SpanningDependenciesExpandedArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SpanningDependenciesExpandedArchive::Clear(this);

    return TSCE::SpanningDependenciesExpandedArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::SpanningDependenciesExpandedArchive::IsInitialized(TSCE::SpanningDependenciesExpandedArchive *this)
{
  result = sub_22150A7F8(this + 24);
  if (result)
  {
    v3 = *(this + 4);
    return ((v3 & 1) == 0 || (~*(*(this + 6) + 16) & 0xF) == 0) && ((v3 & 2) == 0 || (~*(*(this + 7) + 16) & 0xF) == 0);
  }

  return result;
}

BOOL sub_22150A7F8(uint64_t a1)
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
    if ((*(v4 + 16) & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (sub_2215099F8(v4 + 24));
  return v3 < 1;
}

__n128 TSCE::SpanningDependenciesExpandedArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  return result;
}

TSCE::WholeOwnerDependenciesArchive *TSCE::WholeOwnerDependenciesArchive::WholeOwnerDependenciesArchive(TSCE::WholeOwnerDependenciesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AC5D0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_WholeOwnerDependenciesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::WholeOwnerDependenciesArchive *TSCE::WholeOwnerDependenciesArchive::WholeOwnerDependenciesArchive(TSCE::WholeOwnerDependenciesArchive *this, const TSCE::WholeOwnerDependenciesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AC5D0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_221568DF4(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::WholeOwnerDependenciesArchive::~WholeOwnerDependenciesArchive(TSCE::WholeOwnerDependenciesArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221568D70(this + 2);
}

{
  TSCE::WholeOwnerDependenciesArchive::~WholeOwnerDependenciesArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::WholeOwnerDependenciesArchive::default_instance(TSCE::WholeOwnerDependenciesArchive *this)
{
  if (atomic_load_explicit(scc_info_WholeOwnerDependenciesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_WholeOwnerDependenciesArchive_default_instance_;
}

uint64_t *TSCE::WholeOwnerDependenciesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::InternalCellReferenceArchive::Clear(v4);
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

google::protobuf::internal *TSCE::WholeOwnerDependenciesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellReferenceArchive>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216F98CC(a3, v13, v10);
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

unsigned __int8 *TSCE::WholeOwnerDependenciesArchive::_InternalSerialize(TSCE::WholeOwnerDependenciesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::InternalCellReferenceArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::WholeOwnerDependenciesArchive::ByteSizeLong(TSCE::WholeOwnerDependenciesArchive *this)
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
      v7 = TSCE::InternalCellReferenceArchive::ByteSizeLong(v6);
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

uint64_t TSCE::WholeOwnerDependenciesArchive::MergeFrom(TSCE::WholeOwnerDependenciesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::WholeOwnerDependenciesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::WholeOwnerDependenciesArchive::MergeFrom(uint64_t this, const TSCE::WholeOwnerDependenciesArchive *a2)
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
    this = sub_221568DF4(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::WholeOwnerDependenciesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::WholeOwnerDependenciesArchive::Clear(this);

    return TSCE::WholeOwnerDependenciesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::WholeOwnerDependenciesArchive::CopyFrom(uint64_t *this, const TSCE::WholeOwnerDependenciesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::WholeOwnerDependenciesArchive::Clear(this);

    return TSCE::WholeOwnerDependenciesArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::WholeOwnerDependenciesArchive::IsInitialized(TSCE::WholeOwnerDependenciesArchive *this)
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

__n128 TSCE::WholeOwnerDependenciesArchive::InternalSwap(TSCE::WholeOwnerDependenciesArchive *this, TSCE::WholeOwnerDependenciesArchive *a2)
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

TSCE::WholeOwnerDependenciesExpandedArchive *TSCE::WholeOwnerDependenciesExpandedArchive::WholeOwnerDependenciesExpandedArchive(TSCE::WholeOwnerDependenciesExpandedArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AC680;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_WholeOwnerDependenciesExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834AC680;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_WholeOwnerDependenciesExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCE::WholeOwnerDependenciesExpandedArchive *TSCE::WholeOwnerDependenciesExpandedArchive::WholeOwnerDependenciesExpandedArchive(TSCE::WholeOwnerDependenciesExpandedArchive *this, const TSCE::WholeOwnerDependenciesExpandedArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AC680;
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

void TSCE::WholeOwnerDependenciesExpandedArchive::~WholeOwnerDependenciesExpandedArchive(TSCE::WholeOwnerDependenciesExpandedArchive *this)
{
  if (this != TSCE::_WholeOwnerDependenciesExpandedArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::InternalCellRefSetArchive::~InternalCellRefSetArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::WholeOwnerDependenciesExpandedArchive::~WholeOwnerDependenciesExpandedArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::WholeOwnerDependenciesExpandedArchive::default_instance(TSCE::WholeOwnerDependenciesExpandedArchive *this)
{
  if (atomic_load_explicit(scc_info_WholeOwnerDependenciesExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_WholeOwnerDependenciesExpandedArchive_default_instance_;
}

uint64_t *TSCE::WholeOwnerDependenciesExpandedArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSCE::InternalCellRefSetArchive::Clear(this[3]);
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

google::protobuf::internal *TSCE::WholeOwnerDependenciesExpandedArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_2216F8AFC(a3, v10, v5);
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

unsigned __int8 *TSCE::WholeOwnerDependenciesExpandedArchive::_InternalSerialize(TSCE::WholeOwnerDependenciesExpandedArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
    *a2 = 10;
    v6 = *(v5 + 10);
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

    a2 = TSCE::InternalCellRefSetArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::WholeOwnerDependenciesExpandedArchive::ByteSizeLong(TSCE::InternalCellRefSetArchive **this)
{
  if (this[2])
  {
    v3 = TSCE::InternalCellRefSetArchive::ByteSizeLong(this[3]);
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

uint64_t TSCE::WholeOwnerDependenciesExpandedArchive::MergeFrom(TSCE::WholeOwnerDependenciesExpandedArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::WholeOwnerDependenciesExpandedArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::WholeOwnerDependenciesExpandedArchive::MergeFrom(uint64_t this, const TSCE::WholeOwnerDependenciesExpandedArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSCE::_InternalCellRefSetArchive_default_instance_;
    }

    return TSCE::InternalCellRefSetArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSCE::WholeOwnerDependenciesExpandedArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::WholeOwnerDependenciesExpandedArchive::Clear(this);

    return TSCE::WholeOwnerDependenciesExpandedArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::WholeOwnerDependenciesExpandedArchive::CopyFrom(uint64_t *this, const TSCE::WholeOwnerDependenciesExpandedArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::WholeOwnerDependenciesExpandedArchive::Clear(this);

    return TSCE::WholeOwnerDependenciesExpandedArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::WholeOwnerDependenciesExpandedArchive::IsInitialized(TSCE::WholeOwnerDependenciesExpandedArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_2214E71E0(*(this + 3) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSCE::WholeOwnerDependenciesExpandedArchive::InternalSwap(TSCE::WholeOwnerDependenciesExpandedArchive *this, TSCE::WholeOwnerDependenciesExpandedArchive *a2)
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

TSCE::ErrorArchive_ErrorDictionaryEntry *TSCE::ErrorArchive_ErrorDictionaryEntry::ErrorArchive_ErrorDictionaryEntry(TSCE::ErrorArchive_ErrorDictionaryEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AC730;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ErrorArchive_ErrorDictionaryEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = 0;
  return this;
}

TSCE::ErrorArchive_ErrorDictionaryEntry *TSCE::ErrorArchive_ErrorDictionaryEntry::ErrorArchive_ErrorDictionaryEntry(TSCE::ErrorArchive_ErrorDictionaryEntry *this, const TSCE::ErrorArchive_ErrorDictionaryEntry *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834AC730;
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

void TSCE::ErrorArchive_ErrorDictionaryEntry::~ErrorArchive_ErrorDictionaryEntry(TSCE::ErrorArchive_ErrorDictionaryEntry *this)
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
  TSCE::ErrorArchive_ErrorDictionaryEntry::~ErrorArchive_ErrorDictionaryEntry(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::ErrorArchive_ErrorDictionaryEntry::default_instance(TSCE::ErrorArchive_ErrorDictionaryEntry *this)
{
  if (atomic_load_explicit(scc_info_ErrorArchive_ErrorDictionaryEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ErrorArchive_ErrorDictionaryEntry_default_instance_;
}

uint64_t *TSCE::ErrorArchive_ErrorDictionaryEntry::Clear(TSCE::ErrorArchive_ErrorDictionaryEntry *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
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
  v5 = *(this + 8);
  result = (this + 8);
  result[4] = 0;
  *(result + 2) = 0;
  if (v5)
  {
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TSCE::ErrorArchive_ErrorDictionaryEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v16) & 1) == 0)
  {
    while (1)
    {
      v7 = (v16 + 1);
      v8 = *v16;
      if ((*v16 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v9 - 128));
      v16 = TagFallback;
      if (!TagFallback)
      {
LABEL_32:
        v16 = 0;
        goto LABEL_2;
      }

      v7 = TagFallback;
      v8 = v15;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 25)
        {
          v5 |= 4u;
          *(a1 + 40) = *v7;
          v16 = (v7 + 8);
          goto LABEL_27;
        }
      }

      else if (v10 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 2u;
LABEL_25:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v13 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_26;
        }
      }

      else if (v10 == 1 && v8 == 10)
      {
        *(a1 + 16) |= 1u;
        goto LABEL_25;
      }

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
LABEL_26:
      v16 = v13;
      if (!v13)
      {
        goto LABEL_32;
      }

LABEL_27:
      if (sub_221567030(a3, &v16))
      {
        goto LABEL_2;
      }
    }

    v7 = (v16 + 2);
LABEL_6:
    v16 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v16;
}

unsigned __int8 *TSCE::ErrorArchive_ErrorDictionaryEntry::_InternalSerialize(TSCE::ErrorArchive_ErrorDictionaryEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_22150C00C(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_22150C00C(a3, 2, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 5);
  *v4 = 25;
  *(v4 + 1) = v7;
  v4 += 9;
LABEL_10:
  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_22150C00C(uint64_t *a1, int a2, const void **a3, _BYTE *a4)
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

uint64_t TSCE::ErrorArchive_ErrorDictionaryEntry::ByteSizeLong(TSCE::ErrorArchive_ErrorDictionaryEntry *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v1 & 6) != 0)
  {
    if ((v1 & 2) != 0)
    {
      v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSCE::ErrorArchive_ErrorDictionaryEntry::MergeFrom(TSCE::ErrorArchive_ErrorDictionaryEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ErrorArchive_ErrorDictionaryEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ErrorArchive_ErrorDictionaryEntry::MergeFrom(uint64_t this, const TSCE::ErrorArchive_ErrorDictionaryEntry *a2)
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
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

    *(v3 + 16) |= 2u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

TSCE::ErrorArchive_ErrorDictionaryEntry *TSCE::ErrorArchive_ErrorDictionaryEntry::CopyFrom(TSCE::ErrorArchive_ErrorDictionaryEntry *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ErrorArchive_ErrorDictionaryEntry::Clear(this);

    return TSCE::ErrorArchive_ErrorDictionaryEntry::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::ErrorArchive_ErrorDictionaryEntry *TSCE::ErrorArchive_ErrorDictionaryEntry::CopyFrom(TSCE::ErrorArchive_ErrorDictionaryEntry *this, const TSCE::ErrorArchive_ErrorDictionaryEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ErrorArchive_ErrorDictionaryEntry::Clear(this);

    return TSCE::ErrorArchive_ErrorDictionaryEntry::MergeFrom(v4, a2);
  }

  return this;
}

double TSCE::ErrorArchive_ErrorDictionaryEntry::InternalSwap(TSCE::ErrorArchive_ErrorDictionaryEntry *this, TSCE::ErrorArchive_ErrorDictionaryEntry *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

TSCE::ErrorArchive *TSCE::ErrorArchive::ErrorArchive(TSCE::ErrorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AC7E0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ErrorArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

TSCE::ErrorArchive *TSCE::ErrorArchive::ErrorArchive(TSCE::ErrorArchive *this, const TSCE::ErrorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AC7E0;
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
    sub_22156978C(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  *(this + 12) = *(a2 + 12);
  return this;
}

void TSCE::ErrorArchive::~ErrorArchive(TSCE::ErrorArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221569708(this + 3);
}

{
  TSCE::ErrorArchive::~ErrorArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::ErrorArchive::default_instance(TSCE::ErrorArchive *this)
{
  if (atomic_load_explicit(scc_info_ErrorArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ErrorArchive_default_instance_;
}

uint64_t *TSCE::ErrorArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::ErrorArchive_ErrorDictionaryEntry::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TSCE::ErrorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 != 18)
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

          v27 = google::protobuf::internal::UnknownFieldParse();
          if (!v27)
          {
LABEL_44:
            v27 = 0;
            goto LABEL_2;
          }

          goto LABEL_37;
        }

        v12 = (v7 - 1);
        while (2)
        {
          v13 = (v12 + 1);
          v27 = (v12 + 1);
          v14 = *(a1 + 40);
          if (!v14)
          {
LABEL_23:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v14 = *(a1 + 40);
            v15 = *v14;
            goto LABEL_24;
          }

          v19 = *(a1 + 32);
          v15 = *v14;
          if (v19 >= *v14)
          {
            if (v15 == *(a1 + 36))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v14 = v15 + 1;
            v16 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ErrorArchive_ErrorDictionaryEntry>(*(a1 + 24));
            v17 = *(a1 + 32);
            v18 = *(a1 + 40) + 8 * v17;
            *(a1 + 32) = v17 + 1;
            *(v18 + 8) = v16;
            v13 = v27;
          }

          else
          {
            *(a1 + 32) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
          }

          v12 = sub_2216F9DAC(a3, v16, v13);
          v27 = v12;
          if (!v12)
          {
            goto LABEL_44;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_37;
          }

          continue;
        }
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v20 = (v7 + 1);
      LODWORD(v21) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      v22 = *v20;
      v21 = (v21 + (v22 << 7) - 128);
      if ((v22 & 0x80000000) == 0)
      {
        v20 = (v7 + 2);
LABEL_36:
        v27 = v20;
        *(a1 + 48) = v21;
        v5 = 1;
        goto LABEL_37;
      }

      v25 = google::protobuf::internal::VarintParseSlow32(v7, v21);
      v27 = v25;
      *(a1 + 48) = v26;
      v5 = 1;
      if (!v25)
      {
        goto LABEL_44;
      }

LABEL_37:
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

unsigned __int8 *TSCE::ErrorArchive::_InternalSerialize(TSCE::ErrorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 12);
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

  v9 = *(this + 8);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v11 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
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

      a2 = TSCE::ErrorArchive_ErrorDictionaryEntry::_InternalSerialize(v11, v13, a3);
    }
  }

  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ErrorArchive::ByteSizeLong(TSCE::ErrorArchive *this)
{
  if (*(this + 16))
  {
    v2 = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
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
      v9 = TSCE::ErrorArchive_ErrorDictionaryEntry::ByteSizeLong(v8);
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

uint64_t TSCE::ErrorArchive::MergeFrom(TSCE::ErrorArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ErrorArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ErrorArchive::MergeFrom(uint64_t this, const TSCE::ErrorArchive *a2)
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
    this = sub_22156978C(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    v10 = *(a2 + 12);
    *(v3 + 16) |= 1u;
    *(v3 + 48) = v10;
  }

  return this;
}

uint64_t *TSCE::ErrorArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ErrorArchive::Clear(this);

    return TSCE::ErrorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ErrorArchive::CopyFrom(uint64_t *this, const TSCE::ErrorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ErrorArchive::Clear(this);

    return TSCE::ErrorArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::ErrorArchive::IsInitialized(TSCE::ErrorArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  v3 = *(this + 5);
  do
  {
    result = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(v3 + 8 * v2--);
  }

  while ((*(v4 + 16) & 1) != 0);
  return result;
}

__n128 TSCE::ErrorArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  return result;
}

TSCE::WarningArchive_WarningDictionaryEntry *TSCE::WarningArchive_WarningDictionaryEntry::WarningArchive_WarningDictionaryEntry(TSCE::WarningArchive_WarningDictionaryEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AC890;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_WarningArchive_WarningDictionaryEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = 0;
  return this;
}

TSCE::WarningArchive_WarningDictionaryEntry *TSCE::WarningArchive_WarningDictionaryEntry::WarningArchive_WarningDictionaryEntry(TSCE::WarningArchive_WarningDictionaryEntry *this, const TSCE::WarningArchive_WarningDictionaryEntry *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834AC890;
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

void TSCE::WarningArchive_WarningDictionaryEntry::~WarningArchive_WarningDictionaryEntry(TSCE::WarningArchive_WarningDictionaryEntry *this)
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
  TSCE::WarningArchive_WarningDictionaryEntry::~WarningArchive_WarningDictionaryEntry(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::WarningArchive_WarningDictionaryEntry::default_instance(TSCE::WarningArchive_WarningDictionaryEntry *this)
{
  if (atomic_load_explicit(scc_info_WarningArchive_WarningDictionaryEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_WarningArchive_WarningDictionaryEntry_default_instance_;
}

uint64_t *TSCE::WarningArchive_WarningDictionaryEntry::Clear(TSCE::WarningArchive_WarningDictionaryEntry *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
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
  v5 = *(this + 8);
  result = (this + 8);
  result[4] = 0;
  *(result + 2) = 0;
  if (v5)
  {
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TSCE::WarningArchive_WarningDictionaryEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v16) & 1) == 0)
  {
    while (1)
    {
      v7 = (v16 + 1);
      v8 = *v16;
      if ((*v16 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v9 - 128));
      v16 = TagFallback;
      if (!TagFallback)
      {
LABEL_32:
        v16 = 0;
        goto LABEL_2;
      }

      v7 = TagFallback;
      v8 = v15;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 25)
        {
          v5 |= 4u;
          *(a1 + 40) = *v7;
          v16 = (v7 + 8);
          goto LABEL_27;
        }
      }

      else if (v10 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 2u;
LABEL_25:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v13 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_26;
        }
      }

      else if (v10 == 1 && v8 == 10)
      {
        *(a1 + 16) |= 1u;
        goto LABEL_25;
      }

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
LABEL_26:
      v16 = v13;
      if (!v13)
      {
        goto LABEL_32;
      }

LABEL_27:
      if (sub_221567030(a3, &v16))
      {
        goto LABEL_2;
      }
    }

    v7 = (v16 + 2);
LABEL_6:
    v16 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v16;
}

unsigned __int8 *TSCE::WarningArchive_WarningDictionaryEntry::_InternalSerialize(TSCE::WarningArchive_WarningDictionaryEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_22150C00C(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_22150C00C(a3, 2, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 5);
  *v4 = 25;
  *(v4 + 1) = v7;
  v4 += 9;
LABEL_10:
  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::WarningArchive_WarningDictionaryEntry::ByteSizeLong(TSCE::WarningArchive_WarningDictionaryEntry *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
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

  if ((v1 & 6) != 0)
  {
    if ((v1 & 2) != 0)
    {
      v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSCE::WarningArchive_WarningDictionaryEntry::MergeFrom(TSCE::WarningArchive_WarningDictionaryEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::WarningArchive_WarningDictionaryEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::WarningArchive_WarningDictionaryEntry::MergeFrom(uint64_t this, const TSCE::WarningArchive_WarningDictionaryEntry *a2)
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
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

    *(v3 + 16) |= 2u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

TSCE::WarningArchive_WarningDictionaryEntry *TSCE::WarningArchive_WarningDictionaryEntry::CopyFrom(TSCE::WarningArchive_WarningDictionaryEntry *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::WarningArchive_WarningDictionaryEntry::Clear(this);

    return TSCE::WarningArchive_WarningDictionaryEntry::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::WarningArchive_WarningDictionaryEntry *TSCE::WarningArchive_WarningDictionaryEntry::CopyFrom(TSCE::WarningArchive_WarningDictionaryEntry *this, const TSCE::WarningArchive_WarningDictionaryEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::WarningArchive_WarningDictionaryEntry::Clear(this);

    return TSCE::WarningArchive_WarningDictionaryEntry::MergeFrom(v4, a2);
  }

  return this;
}

double TSCE::WarningArchive_WarningDictionaryEntry::InternalSwap(TSCE::WarningArchive_WarningDictionaryEntry *this, TSCE::WarningArchive_WarningDictionaryEntry *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

TSCE::WarningArchive *TSCE::WarningArchive::WarningArchive(TSCE::WarningArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AC940;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_WarningArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 6) = 0;
  return this;
}

TSCE::WarningArchive *TSCE::WarningArchive::WarningArchive(TSCE::WarningArchive *this, const TSCE::WarningArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AC940;
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
    sub_2215698D0(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  *(this + 14) = *(a2 + 14);
  return this;
}

void sub_22150DA94(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C40101E3C09);
  sub_22156984C((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::WarningArchive::~WarningArchive(TSCE::WarningArchive *this)
{
  if (this != &TSCE::_WarningArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSCE::RangeReferenceArchive::~RangeReferenceArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_22156984C(this + 3);
}

{
  TSCE::WarningArchive::~WarningArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::WarningArchive::default_instance(TSCE::WarningArchive *this)
{
  if (atomic_load_explicit(scc_info_WarningArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_WarningArchive_default_instance_;
}

uint64_t *TSCE::WarningArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::WarningArchive_WarningDictionaryEntry::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSCE::RangeReferenceArchive::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TSCE::WarningArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          goto LABEL_13;
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

          v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeReferenceArchive>(v23);
          *(a1 + 48) = v22;
          v7 = v31;
        }

        v13 = sub_2216F8F0C(a3, v22, v7);
LABEL_39:
        v31 = v13;
        if (!v13)
        {
          goto LABEL_52;
        }

        goto LABEL_45;
      }

      if (v10 == 2)
      {
        if (v8 == 18)
        {
          v14 = (v7 - 1);
          while (1)
          {
            v15 = (v14 + 1);
            v31 = (v14 + 1);
            v16 = *(a1 + 40);
            if (!v16)
            {
              goto LABEL_23;
            }

            v21 = *(a1 + 32);
            v17 = *v16;
            if (v21 < *v16)
            {
              *(a1 + 32) = v21 + 1;
              v18 = *&v16[2 * v21 + 2];
              goto LABEL_27;
            }

            if (v17 == *(a1 + 36))
            {
LABEL_23:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v16 = *(a1 + 40);
              v17 = *v16;
            }

            *v16 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WarningArchive_WarningDictionaryEntry>(*(a1 + 24));
            v19 = *(a1 + 32);
            v20 = *(a1 + 40) + 8 * v19;
            *(a1 + 32) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v31;
LABEL_27:
            v14 = sub_2216F9E7C(a3, v18, v15);
            v31 = v14;
            if (!v14)
            {
              goto LABEL_52;
            }

            if (*a3 <= v14 || *v14 != 18)
            {
              goto LABEL_45;
            }
          }
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
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_39;
      }

      if (v10 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v24 = (v7 + 1);
      LODWORD(v25) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      v26 = *v24;
      v25 = (v25 + (v26 << 7) - 128);
      if ((v26 & 0x80000000) == 0)
      {
        v24 = (v7 + 2);
LABEL_44:
        v31 = v24;
        *(a1 + 56) = v25;
        goto LABEL_45;
      }

      v29 = google::protobuf::internal::VarintParseSlow32(v7, v25);
      v31 = v29;
      *(a1 + 56) = v30;
      if (!v29)
      {
LABEL_52:
        v31 = 0;
        goto LABEL_2;
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

unsigned __int8 *TSCE::WarningArchive::_InternalSerialize(TSCE::WarningArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
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
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 8);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v12 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSCE::WarningArchive_WarningDictionaryEntry::_InternalSerialize(v12, v14, a3);
    }
  }

  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 6);
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

    a2 = TSCE::RangeReferenceArchive::_InternalSerialize(v18, v20, a3);
  }

  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::WarningArchive::ByteSizeLong(TSCE::WarningArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    v3 = ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 8);
  v5 = v3 + v4;
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
      v10 = TSCE::WarningArchive_WarningDictionaryEntry::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
    v2 = *(this + 4);
  }

  if (v2)
  {
    v11 = TSCE::RangeReferenceArchive::ByteSizeLong(*(this + 6));
    v5 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TSCE::WarningArchive::MergeFrom(TSCE::WarningArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::WarningArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::WarningArchive::MergeFrom(uint64_t this, const TSCE::WarningArchive *a2)
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
    this = sub_2215698D0(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeReferenceArchive>(v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = TSCE::_RangeReferenceArchive_default_instance_;
      }

      this = TSCE::RangeReferenceArchive::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 14);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TSCE::WarningArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::WarningArchive::Clear(this);

    return TSCE::WarningArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::WarningArchive::CopyFrom(uint64_t *this, const TSCE::WarningArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::WarningArchive::Clear(this);

    return TSCE::WarningArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::WarningArchive::IsInitialized(TSCE::WarningArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = *(*(this + 5) + 8 * v2--);
    if ((*(v3 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  return (v1 & 1) == 0 || (~*(*(this + 6) + 16) & 0x1F) == 0;
}

__n128 TSCE::WarningArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  LODWORD(v8) = this[3].n128_u32[2];
  this[3].n128_u32[2] = a2[3].n128_u32[2];
  a2[3].n128_u32[2] = v8;
  return result;
}

TSCE::CellErrorsArchive_ErrorForCell *TSCE::CellErrorsArchive_ErrorForCell::CellErrorsArchive_ErrorForCell(TSCE::CellErrorsArchive_ErrorForCell *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AC9F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellErrorsArchive_ErrorForCell_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_2834AC9F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellErrorsArchive_ErrorForCell_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TSCE::CellErrorsArchive_ErrorForCell *TSCE::CellErrorsArchive_ErrorForCell::CellErrorsArchive_ErrorForCell(TSCE::CellErrorsArchive_ErrorForCell *this, const TSCE::CellErrorsArchive_ErrorForCell *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AC9F0;
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

void TSCE::CellErrorsArchive_ErrorForCell::~CellErrorsArchive_ErrorForCell(TSCE::CellErrorsArchive_ErrorForCell *this)
{
  if (this != TSCE::_CellErrorsArchive_ErrorForCell_default_instance_)
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
      TSCE::InternalCellReferenceArchive::~InternalCellReferenceArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::CellErrorsArchive_ErrorForCell::~CellErrorsArchive_ErrorForCell(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::CellErrorsArchive_ErrorForCell::default_instance(TSCE::CellErrorsArchive_ErrorForCell *this)
{
  if (atomic_load_explicit(scc_info_CellErrorsArchive_ErrorForCell_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_CellErrorsArchive_ErrorForCell_default_instance_;
}

uint64_t *TSCE::CellErrorsArchive_ErrorForCell::Clear(uint64_t *this)
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
      this = TSCE::InternalCellReferenceArchive::Clear(*(v1 + 32));
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

google::protobuf::internal *TSCE::CellErrorsArchive_ErrorForCell::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  while ((sub_221567030(a3, &v22) & 1) == 0)
  {
    v5 = (v22 + 1);
    v6 = *v22;
    if (*v22 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v7 - 128));
        v22 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v20;
        goto LABEL_7;
      }

      v5 = (v22 + 2);
    }

    v22 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
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

        v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellReferenceArchive>(v16);
        *(a1 + 32) = v15;
        v5 = v22;
      }

      v11 = sub_2216F98CC(a3, v15, v5);
      goto LABEL_38;
    }

    if (v8 == 2)
    {
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
        v22 = v13;
        goto LABEL_25;
      }

      v22 = google::protobuf::internal::VarintParseSlow64(v5, v12);
      if (!v22)
      {
        return 0;
      }

LABEL_25:
      if (v12 > 4)
      {
        sub_2216FF1C4();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 40) = v12;
      }
    }

    else
    {
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
          return v22;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v11 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_38;
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

        v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v18);
        *(a1 + 24) = v17;
        v5 = v22;
      }

      v11 = sub_2216F806C(a3, v17, v5);
LABEL_38:
      v22 = v11;
      if (!v11)
      {
        return 0;
      }
    }
  }

  return v22;
}

unsigned __int8 *TSCE::CellErrorsArchive_ErrorForCell::_InternalSerialize(TSCE::CellErrorsArchive_ErrorForCell *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v9, v11, a3);
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
  *a2 = 16;
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
  *a2 = 26;
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

  a2 = TSCE::InternalCellReferenceArchive::_InternalSerialize(v6, v8, a3);
LABEL_20:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CellErrorsArchive_ErrorForCell::RequiredFieldsByteSizeFallback(TSCE::CellErrorsArchive_ErrorForCell *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 3));
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

  v5 = *(this + 10);
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

uint64_t TSCE::CellErrorsArchive_ErrorForCell::ByteSizeLong(TSCE::CellErrorsArchive_ErrorForCell *this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    v7 = TSCE::CellErrorsArchive_ErrorForCell::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 3));
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = *(this + 10);
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

  if ((*(this + 16) & 2) != 0)
  {
    v8 = TSCE::InternalCellReferenceArchive::ByteSizeLong(*(this + 4));
    v7 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSCE::CellErrorsArchive_ErrorForCell::MergeFrom(TSCE::CellErrorsArchive_ErrorForCell *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellErrorsArchive_ErrorForCell::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellErrorsArchive_ErrorForCell::MergeFrom(uint64_t this, const TSCE::CellErrorsArchive_ErrorForCell *a2)
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

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellReferenceArchive>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSCE::_InternalCellReferenceArchive_default_instance_;
    }

    this = TSCE::InternalCellReferenceArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSCE::CellErrorsArchive_ErrorForCell::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellErrorsArchive_ErrorForCell::Clear(this);

    return TSCE::CellErrorsArchive_ErrorForCell::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellErrorsArchive_ErrorForCell::CopyFrom(uint64_t *this, const TSCE::CellErrorsArchive_ErrorForCell *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellErrorsArchive_ErrorForCell::Clear(this);

    return TSCE::CellErrorsArchive_ErrorForCell::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::CellErrorsArchive_ErrorForCell::InternalSwap(TSCE::CellErrorsArchive_ErrorForCell *this, TSCE::CellErrorsArchive_ErrorForCell *a2)
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

TSCE::CellErrorsArchive_EnhancedErrorForCell *TSCE::CellErrorsArchive_EnhancedErrorForCell::CellErrorsArchive_EnhancedErrorForCell(TSCE::CellErrorsArchive_EnhancedErrorForCell *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ACAA0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CellErrorsArchive_EnhancedErrorForCell_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  return this;
}

TSCE::CellErrorsArchive_EnhancedErrorForCell *TSCE::CellErrorsArchive_EnhancedErrorForCell::CellErrorsArchive_EnhancedErrorForCell(TSCE::CellErrorsArchive_EnhancedErrorForCell *this, const TSCE::CellErrorsArchive_EnhancedErrorForCell *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ACAA0;
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
  return this;
}

void sub_22150F468(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C40C05B56FCLL);
  sub_221569990((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::CellErrorsArchive_EnhancedErrorForCell::~CellErrorsArchive_EnhancedErrorForCell(TSCE::CellErrorsArchive_EnhancedErrorForCell *this)
{
  if (this != &TSCE::_CellErrorsArchive_EnhancedErrorForCell_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      sub_2214DFCF8((v2 + 8));
      MEMORY[0x223DA1450](v2, 0x1081C40B7564605);
    }

    v3 = *(this + 7);
    if (v3)
    {
      TSCE::ErrorArchive::~ErrorArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(this + 8);
    if (v4)
    {
      TSCE::InternalCellReferenceArchive::~InternalCellReferenceArchive(v4);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_221569990(this + 3);
}

{
  TSCE::CellErrorsArchive_EnhancedErrorForCell::~CellErrorsArchive_EnhancedErrorForCell(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::CellErrorsArchive_EnhancedErrorForCell::default_instance(TSCE::CellErrorsArchive_EnhancedErrorForCell *this)
{
  if (atomic_load_explicit(scc_info_CellErrorsArchive_EnhancedErrorForCell_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CellErrorsArchive_EnhancedErrorForCell_default_instance_;
}

uint64_t *TSCE::CellErrorsArchive_EnhancedErrorForCell::Clear(uint64_t *this)
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
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      this = TSCE::CellCoordinateArchive::Clear(*(v1 + 48));
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

    this = TSCE::ErrorArchive::Clear(*(v1 + 56));
    if ((v5 & 4) != 0)
    {
LABEL_9:
      this = TSCE::InternalCellReferenceArchive::Clear(*(v1 + 64));
    }
  }

LABEL_10:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_221567398(v6);
  }

  return this;
}

google::protobuf::internal *TSCE::CellErrorsArchive_EnhancedErrorForCell::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  while (1)
  {
LABEL_2:
    if (sub_221567030(a3, &v29))
    {
      return v29;
    }

    v5 = (v29 + 1);
    v6 = *v29;
    if ((*v29 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v29 + 2);
LABEL_6:
      v29 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v7 - 128));
    v29 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v27;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 == 26)
        {
          *(a1 + 16) |= 4u;
          v23 = *(a1 + 64);
          if (!v23)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellReferenceArchive>(v24);
            *(a1 + 64) = v23;
            v5 = v29;
          }

          v12 = sub_2216F98CC(a3, v23, v5);
          goto LABEL_53;
        }

        goto LABEL_46;
      }

      if (v8 != 4 || v6 != 34)
      {
        goto LABEL_46;
      }

      v13 = (v5 - 1);
      while (1)
      {
        v14 = (v13 + 1);
        v29 = (v13 + 1);
        v15 = *(a1 + 40);
        if (!v15)
        {
          goto LABEL_24;
        }

        v20 = *(a1 + 32);
        v16 = *v15;
        if (v20 < *v15)
        {
          *(a1 + 32) = v20 + 1;
          v17 = *&v15[2 * v20 + 2];
          goto LABEL_28;
        }

        if (v16 == *(a1 + 36))
        {
LABEL_24:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v15 = *(a1 + 40);
          v16 = *v15;
        }

        *v15 = v16 + 1;
        v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WarningArchive>(*(a1 + 24));
        v18 = *(a1 + 32);
        v19 = *(a1 + 40) + 8 * v18;
        *(a1 + 32) = v18 + 1;
        *(v19 + 8) = v17;
        v14 = v29;
LABEL_28:
        v13 = sub_2216FA01C(a3, v17, v14);
        v29 = v13;
        if (!v13)
        {
          return 0;
        }

        if (*a3 <= v13 || *v13 != 34)
        {
          goto LABEL_2;
        }
      }
    }

    if (v8 == 1)
    {
      if (v6 == 10)
      {
        *(a1 + 16) |= 1u;
        v21 = *(a1 + 48);
        if (!v21)
        {
          v22 = *(a1 + 8);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v22);
          *(a1 + 48) = v21;
          v5 = v29;
        }

        v12 = sub_2216F806C(a3, v21, v5);
        goto LABEL_53;
      }
    }

    else if (v8 == 2 && v6 == 18)
    {
      *(a1 + 16) |= 2u;
      v10 = *(a1 + 56);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ErrorArchive>(v11);
        *(a1 + 56) = v10;
        v5 = v29;
      }

      v12 = sub_2216F9F4C(a3, v10, v5);
      goto LABEL_53;
    }

LABEL_46:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_53:
    v29 = v12;
    if (!v12)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v29;
}

unsigned __int8 *TSCE::CellErrorsArchive_EnhancedErrorForCell::_InternalSerialize(TSCE::CellErrorsArchive_EnhancedErrorForCell *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v6, v8, a3);
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

  a2 = TSCE::ErrorArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 8);
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

    a2 = TSCE::InternalCellReferenceArchive::_InternalSerialize(v18, v20, a3);
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

      a2 = TSCE::WarningArchive::_InternalSerialize(v26, v28, a3);
    }
  }

  v32 = *(this + 1);
  if ((v32 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v32 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CellErrorsArchive_EnhancedErrorForCell::ByteSizeLong(TSCE::CellErrorsArchive_EnhancedErrorForCell *this)
{
  if (*(this + 16))
  {
    v3 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 6));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
      v10 = TSCE::WarningArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(this + 4);
  if ((v11 & 6) != 0)
  {
    if ((v11 & 2) != 0)
    {
      v12 = TSCE::ErrorArchive::ByteSizeLong(*(this + 7));
      v5 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v11 & 4) != 0)
    {
      v13 = TSCE::InternalCellReferenceArchive::ByteSizeLong(*(this + 8));
      v5 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TSCE::CellErrorsArchive_EnhancedErrorForCell::MergeFrom(TSCE::CellErrorsArchive_EnhancedErrorForCell *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellErrorsArchive_EnhancedErrorForCell::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellErrorsArchive_EnhancedErrorForCell::MergeFrom(uint64_t this, const TSCE::CellErrorsArchive_EnhancedErrorForCell *a2)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = &TSCE::_CellCoordinateArchive_default_instance_;
      }

      this = TSCE::CellCoordinateArchive::MergeFrom(v11, v13);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          return this;
        }

        goto LABEL_27;
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

      v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ErrorArchive>(v15);
      *(v3 + 56) = v14;
    }

    if (*(a2 + 7))
    {
      v16 = *(a2 + 7);
    }

    else
    {
      v16 = &TSCE::_ErrorArchive_default_instance_;
    }

    this = TSCE::ErrorArchive::MergeFrom(v14, v16);
    if ((v10 & 4) != 0)
    {
LABEL_27:
      *(v3 + 16) |= 4u;
      v17 = *(v3 + 64);
      if (!v17)
      {
        v18 = *(v3 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellReferenceArchive>(v18);
        *(v3 + 64) = v17;
      }

      if (*(a2 + 8))
      {
        v19 = *(a2 + 8);
      }

      else
      {
        v19 = &TSCE::_InternalCellReferenceArchive_default_instance_;
      }

      return TSCE::InternalCellReferenceArchive::MergeFrom(v17, v19);
    }
  }

  return this;
}

uint64_t *TSCE::CellErrorsArchive_EnhancedErrorForCell::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellErrorsArchive_EnhancedErrorForCell::Clear(this);

    return TSCE::CellErrorsArchive_EnhancedErrorForCell::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellErrorsArchive_EnhancedErrorForCell::CopyFrom(uint64_t *this, const TSCE::CellErrorsArchive_EnhancedErrorForCell *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellErrorsArchive_EnhancedErrorForCell::Clear(this);

    return TSCE::CellErrorsArchive_EnhancedErrorForCell::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::CellErrorsArchive_EnhancedErrorForCell::IsInitialized(TSCE::CellErrorsArchive_EnhancedErrorForCell *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  v4 = *(this + 5);
  while (v3 >= 1)
  {
    v5 = v3 - 1;
    IsInitialized = TSCE::WarningArchive::IsInitialized(*(v4 + 8 * v3));
    v3 = v5;
    if (!IsInitialized)
    {
      return 0;
    }
  }

  if ((v1 & 2) != 0)
  {
    v8 = *(this + 7);
    if ((*(v8 + 16) & 1) == 0)
    {
      return 0;
    }

    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    while (v9 >= 1)
    {
      v11 = *(v10 + 8 * v9--);
      if ((*(v11 + 16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  return (v1 & 4) == 0 || (~*(*(this + 8) + 16) & 3) == 0;
}

__n128 TSCE::CellErrorsArchive_EnhancedErrorForCell::InternalSwap(__n128 *this, __n128 *a2)
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
  v10 = this[4].n128_u64[0];
  this[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[4].n128_u64[0] = v10;
  return result;
}

TSCE::CellErrorsArchive *TSCE::CellErrorsArchive::CellErrorsArchive(TSCE::CellErrorsArchive *this, google::protobuf::Arena *a2)
{
  *(this + 2) = a2;
  *this = &unk_2834ACB50;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  if (atomic_load_explicit(scc_info_CellErrorsArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_2215102BC(_Unwind_Exception *a1)
{
  sub_221569B58(v2);
  sub_221569AD4(v1);
  _Unwind_Resume(a1);
}

TSCE::CellErrorsArchive *TSCE::CellErrorsArchive::CellErrorsArchive(TSCE::CellErrorsArchive *this, const TSCE::CellErrorsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834ACB50;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_221569BDC(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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
    sub_221569C9C(this + 40, v13, (v12 + 8), v11, **(this + 7) - *(this + 12));
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

void sub_221510434(_Unwind_Exception *a1)
{
  sub_221569B58(v2);
  sub_221569AD4(v1);
  _Unwind_Resume(a1);
}

void TSCE::CellErrorsArchive::~CellErrorsArchive(TSCE::CellErrorsArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221569B58(this + 5);
  sub_221569AD4(this + 2);
}

{
  TSCE::CellErrorsArchive::~CellErrorsArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::CellErrorsArchive::default_instance(TSCE::CellErrorsArchive *this)
{
  if (atomic_load_explicit(scc_info_CellErrorsArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CellErrorsArchive_default_instance_;
}

uint64_t *TSCE::CellErrorsArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellErrorsArchive_ErrorForCell::Clear(v4);
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
      this = TSCE::CellErrorsArchive_EnhancedErrorForCell::Clear(v7);
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

google::protobuf::internal *TSCE::CellErrorsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
            v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellErrorsArchive_EnhancedErrorForCell>(*(a1 + 40));
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

          v11 = sub_2216FA1BC(a3, v15, v12);
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
          v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellErrorsArchive_ErrorForCell>(*(a1 + 16));
          v24 = *(a1 + 24);
          v25 = *(a1 + 32) + 8 * v24;
          *(a1 + 24) = v24 + 1;
          *(v25 + 8) = v23;
          v20 = v29;
LABEL_40:
          v19 = sub_2216FA0EC(a3, v23, v20);
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

unsigned __int8 *TSCE::CellErrorsArchive::_InternalSerialize(TSCE::CellErrorsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::CellErrorsArchive_ErrorForCell::_InternalSerialize(v7, v9, a3);
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

      a2 = TSCE::CellErrorsArchive_EnhancedErrorForCell::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8);
}