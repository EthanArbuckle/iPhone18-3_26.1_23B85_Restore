uint64_t TSCE::CoordMapperArchive::ByteSizeLong(TSP::UUID **this)
{
  if (this[2])
  {
    v3 = TSP::UUID::ByteSizeLong(this[15]);
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
      v10 = TSCE::CoordMapperArchive_BaseToViewEntry::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(this + 14);
  v12 = v5 + v11;
  v13 = this[8];
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
      v17 = TSCE::CoordMapperArchive_BaseToViewEntry::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(this + 20);
  v19 = v12 + v18;
  v20 = this[11];
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 8 * v18;
    do
    {
      v23 = *v21++;
      v24 = TSCE::CoordMapperArchive_SummaryToViewEntry::ByteSizeLong(v23);
      v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      v22 -= 8;
    }

    while (v22);
  }

  v25 = *(this + 26);
  v26 = v19 + v25;
  v27 = this[14];
  if (v27)
  {
    v28 = (v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  if (v25)
  {
    v29 = 8 * v25;
    do
    {
      v30 = *v28++;
      v31 = TSCE::CoordMapperArchive_SummaryToViewEntry::ByteSizeLong(v30);
      v26 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6);
      v29 -= 8;
    }

    while (v29);
  }

  v32 = *(this + 4);
  if ((v32 & 0xE) != 0)
  {
    if ((v32 & 2) != 0)
    {
      v35 = TSCE::IndexSetArchive::ByteSizeLong(this[16]);
      v26 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v32 & 4) == 0)
      {
LABEL_31:
        if ((v32 & 8) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    else if ((v32 & 4) == 0)
    {
      goto LABEL_31;
    }

    v36 = TSCE::IndexSetArchive::ByteSizeLong(this[17]);
    v26 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v32 & 8) != 0)
    {
LABEL_32:
      v33 = TSCE::IndexSetArchive::ByteSizeLong(this[18]);
      v26 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_33:
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v26, this + 20);
  }

  else
  {
    *(this + 5) = v26;
    return v26;
  }
}

uint64_t TSCE::CoordMapperArchive::MergeFrom(TSCE::CoordMapperArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CoordMapperArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CoordMapperArchive::MergeFrom(uint64_t this, const TSCE::CoordMapperArchive *a2)
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
    this = sub_221567E84(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_221567E84(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    this = sub_221567F44(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
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
    this = sub_221567F44(v3 + 96, v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 4);
  if ((v25 & 0xF) != 0)
  {
    if (v25)
    {
      *(v3 + 16) |= 1u;
      v26 = *(v3 + 120);
      if (!v26)
      {
        v27 = *(v3 + 8);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = MEMORY[0x223DA0360](v27);
        *(v3 + 120) = v26;
      }

      if (*(a2 + 15))
      {
        v28 = *(a2 + 15);
      }

      else
      {
        v28 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v26, v28);
    }

    if ((v25 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v29 = *(v3 + 128);
      if (!v29)
      {
        v30 = *(v3 + 8);
        if (v30)
        {
          v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
        }

        v29 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v30);
        *(v3 + 128) = v29;
      }

      if (*(a2 + 16))
      {
        v31 = *(a2 + 16);
      }

      else
      {
        v31 = &TSCE::_IndexSetArchive_default_instance_;
      }

      this = TSCE::IndexSetArchive::MergeFrom(v29, v31);
      if ((v25 & 4) == 0)
      {
LABEL_27:
        if ((v25 & 8) == 0)
        {
          return this;
        }

        goto LABEL_45;
      }
    }

    else if ((v25 & 4) == 0)
    {
      goto LABEL_27;
    }

    *(v3 + 16) |= 4u;
    v32 = *(v3 + 136);
    if (!v32)
    {
      v33 = *(v3 + 8);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v33);
      *(v3 + 136) = v32;
    }

    if (*(a2 + 17))
    {
      v34 = *(a2 + 17);
    }

    else
    {
      v34 = &TSCE::_IndexSetArchive_default_instance_;
    }

    this = TSCE::IndexSetArchive::MergeFrom(v32, v34);
    if ((v25 & 8) != 0)
    {
LABEL_45:
      *(v3 + 16) |= 8u;
      v35 = *(v3 + 144);
      if (!v35)
      {
        v36 = *(v3 + 8);
        if (v36)
        {
          v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v36);
        *(v3 + 144) = v35;
      }

      if (*(a2 + 18))
      {
        v37 = *(a2 + 18);
      }

      else
      {
        v37 = &TSCE::_IndexSetArchive_default_instance_;
      }

      return TSCE::IndexSetArchive::MergeFrom(v35, v37);
    }
  }

  return this;
}

uint64_t *TSCE::CoordMapperArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CoordMapperArchive::Clear(this);

    return TSCE::CoordMapperArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CoordMapperArchive::CopyFrom(uint64_t *this, const TSCE::CoordMapperArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CoordMapperArchive::Clear(this);

    return TSCE::CoordMapperArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::CoordMapperArchive::IsInitialized(TSCE::CoordMapperArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = *(*(this + 5) + 8 * v3--);
    if ((~*(v4 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v5 = *(this + 14);
  while (v5 >= 1)
  {
    v6 = *(*(this + 8) + 8 * v5--);
    if ((~*(v6 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v7 = *(this + 20);
  while (v7 >= 1)
  {
    v8 = *(*(this + 11) + 8 * v7--);
    if ((~*(v8 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v9 = *(this + 26);
  while (v9 >= 1)
  {
    v10 = *(*(this + 14) + 8 * v9--);
    if ((~*(v10 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  result = TSP::UUID::IsInitialized(*(this + 15));
  if (result)
  {
    v11 = *(this + 4);
    if ((v11 & 2) != 0)
    {
      v12 = *(this + 16);
      v13 = *(v12 + 24);
      v14 = *(v12 + 32);
      while (v13 >= 1)
      {
        result = 0;
        v15 = *(v14 + 8 * v13--);
        if ((*(v15 + 16) & 1) == 0)
        {
          return result;
        }
      }
    }

    if ((v11 & 4) != 0)
    {
      v16 = *(this + 17);
      v17 = *(v16 + 24);
      v18 = *(v16 + 32);
      while (v17 >= 1)
      {
        result = 0;
        v19 = *(v18 + 8 * v17--);
        if ((*(v19 + 16) & 1) == 0)
        {
          return result;
        }
      }
    }

    if ((v11 & 8) != 0)
    {
      v20 = *(this + 18);
      v21 = *(v20 + 24);
      v22 = *(v20 + 32);
      do
      {
        result = v21 < 1;
        if (v21 < 1)
        {
          break;
        }

        v23 = *(v22 + 8 * v21--);
      }

      while ((*(v23 + 16) & 1) != 0);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCE::CoordMapperArchive::InternalSwap(TSCE::CoordMapperArchive *this, TSCE::CoordMapperArchive *a2)
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
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v11;
  *(a2 + 14) = v12;
  v13 = *(this + 15);
  v14 = *(this + 16);
  *(this + 120) = *(a2 + 120);
  *(a2 + 15) = v13;
  *(a2 + 16) = v14;
  v15 = *(this + 17);
  v16 = *(this + 18);
  result = *(a2 + 136);
  *(this + 136) = result;
  *(a2 + 17) = v15;
  *(a2 + 18) = v16;
  return result;
}

TSCE::ReferenceArchive *TSCE::ReferenceArchive::ReferenceArchive(TSCE::ReferenceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AB290;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 1;
  return this;
}

TSCE::ReferenceArchive *TSCE::ReferenceArchive::ReferenceArchive(TSCE::ReferenceArchive *this, const TSCE::ReferenceArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AB290;
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

void TSCE::ReferenceArchive::~ReferenceArchive(TSCE::ReferenceArchive *this)
{
  if (this != &TSCE::_ReferenceArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::CellReferenceArchive::~CellReferenceArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSCE::RangeReferenceArchive::~RangeReferenceArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::ReferenceArchive::~ReferenceArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::ReferenceArchive::default_instance(TSCE::ReferenceArchive *this)
{
  if (atomic_load_explicit(scc_info_ReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ReferenceArchive_default_instance_;
}

uint64_t *TSCE::ReferenceArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSCE::CellReferenceArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSCE::RangeReferenceArchive::Clear(*(v1 + 32));
    }

    *(v1 + 40) = 1;
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

google::protobuf::internal *TSCE::ReferenceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
      v14 = *(a1 + 32);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeReferenceArchive>(v15);
        *(a1 + 32) = v14;
        v5 = v22;
      }

      v11 = sub_2216F8F0C(a3, v14, v5);
LABEL_32:
      v22 = v11;
      if (!v11)
      {
        return 0;
      }
    }

    else
    {
      if (v8 == 2)
      {
        if (v6 != 18)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 1u;
        v12 = *(a1 + 24);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v13);
          *(a1 + 24) = v12;
          v5 = v22;
        }

        v11 = sub_2216F8E3C(a3, v12, v5);
        goto LABEL_32;
      }

      if (v8 != 1 || v6 != 8)
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
        goto LABEL_32;
      }

      v17 = (v5 + 1);
      v16 = *v5;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = (v5 + 2);
LABEL_37:
        v22 = v17;
        goto LABEL_38;
      }

      v22 = google::protobuf::internal::VarintParseSlow64(v5, v16);
      if (!v22)
      {
        return 0;
      }

LABEL_38:
      if ((v16 - 1) > 2)
      {
        sub_2216FF0EC();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 40) = v16;
      }
    }
  }

  return v22;
}

unsigned __int8 *TSCE::ReferenceArchive::_InternalSerialize(TSCE::ReferenceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 10);
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
        if (v5)
        {
          goto LABEL_16;
        }
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
        if (v5)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
      if (v5)
      {
        goto LABEL_16;
      }
    }

LABEL_3:
    if ((v5 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_16:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(this + 3);
  *a2 = 18;
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

  a2 = TSCE::CellReferenceArchive::_InternalSerialize(v10, v12, a3);
  if ((v5 & 2) != 0)
  {
LABEL_26:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v16 = *(this + 4);
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

    a2 = TSCE::RangeReferenceArchive::_InternalSerialize(v16, v18, a3);
  }

LABEL_36:
  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ReferenceArchive::ByteSizeLong(TSCE::ReferenceArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 4) != 0)
  {
    v4 = *(this + 10);
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

  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v5 = TSCE::CellReferenceArchive::ByteSizeLong(*(this + 3));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 2) != 0)
    {
      v6 = TSCE::RangeReferenceArchive::ByteSizeLong(*(this + 4));
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

uint64_t TSCE::ReferenceArchive::MergeFrom(TSCE::ReferenceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ReferenceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ReferenceArchive::MergeFrom(uint64_t this, const TSCE::ReferenceArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TSCE::_CellReferenceArchive_default_instance_;
      }

      this = TSCE::CellReferenceArchive::MergeFrom(v6, v8);
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

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeReferenceArchive>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = TSCE::_RangeReferenceArchive_default_instance_;
    }

    this = TSCE::RangeReferenceArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSCE::ReferenceArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ReferenceArchive::Clear(this);

    return TSCE::ReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ReferenceArchive::CopyFrom(uint64_t *this, const TSCE::ReferenceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ReferenceArchive::Clear(this);

    return TSCE::ReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::ReferenceArchive::InternalSwap(TSCE::ReferenceArchive *this, TSCE::ReferenceArchive *a2)
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

TSP::CFUUIDArchive *TSCE::EdgeArchive::clear_owner_id(TSCE::EdgeArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::CFUUIDArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::EdgeArchive *TSCE::EdgeArchive::EdgeArchive(TSCE::EdgeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AB340;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_EdgeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_2834AB340;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_EdgeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

TSCE::EdgeArchive *TSCE::EdgeArchive::EdgeArchive(TSCE::EdgeArchive *this, const TSCE::EdgeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AB340;
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
  v7 = *(a2 + 4);
  *(this + 40) = *(a2 + 40);
  *(this + 4) = v7;
  return this;
}

void TSCE::EdgeArchive::~EdgeArchive(TSCE::EdgeArchive *this)
{
  if (this != TSCE::_EdgeArchive_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x223D9FBD0]();
    MEMORY[0x223DA1450](v2, 0x1081C401753DA55);
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::EdgeArchive::~EdgeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::EdgeArchive::default_instance(TSCE::EdgeArchive *this)
{
  if (atomic_load_explicit(scc_info_EdgeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_EdgeArchive_default_instance_;
}

uint64_t *TSCE::EdgeArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSP::CFUUIDArchive::Clear(this[3]);
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 32) = 0;
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

google::protobuf::internal *TSCE::EdgeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v34 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v34) & 1) == 0)
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
        goto LABEL_55;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4 && v8 == 34)
          {
            *(a1 + 16) |= 1u;
            v15 = *(a1 + 24);
            if (!v15)
            {
              v16 = *(a1 + 8);
              if (v16)
              {
                v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = MEMORY[0x223DA0300](v16);
              LODWORD(v15) = v17;
              *(a1 + 24) = v17;
              v7 = v34;
            }

            v18 = sub_2216F7F9C(a3, v15, v7);
          }

          else
          {
LABEL_36:
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

            v18 = google::protobuf::internal::UnknownFieldParse();
          }

          v34 = v18;
          if (!v18)
          {
            goto LABEL_55;
          }

          goto LABEL_44;
        }

        if (v8 != 24)
        {
          goto LABEL_36;
        }

        v5 |= 8u;
        v23 = (v7 + 1);
        v22 = *v7;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_35;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v23 = (v7 + 2);
LABEL_35:
          v34 = v23;
          *(a1 + 40) = v22 != 0;
          goto LABEL_44;
        }

        v32 = google::protobuf::internal::VarintParseSlow64(v7, v22);
        v34 = v32;
        *(a1 + 40) = v33 != 0;
        if (!v32)
        {
LABEL_55:
          v34 = 0;
          goto LABEL_2;
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_36;
        }

        v5 |= 2u;
        v19 = (v7 + 1);
        LODWORD(v20) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        v21 = *v19;
        v20 = (v20 + (v21 << 7) - 128);
        if ((v21 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_30:
          v34 = v19;
          *(a1 + 32) = v20;
          goto LABEL_44;
        }

        v30 = google::protobuf::internal::VarintParseSlow32(v7, v20);
        v34 = v30;
        *(a1 + 32) = v31;
        if (!v30)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_36;
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
          v34 = v12;
          *(a1 + 36) = v13;
          goto LABEL_44;
        }

        v28 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v34 = v28;
        *(a1 + 36) = v29;
        if (!v28)
        {
          goto LABEL_55;
        }
      }

LABEL_44:
      if (sub_221567030(a3, &v34))
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

unsigned __int8 *TSCE::EdgeArchive::_InternalSerialize(TSCE::EdgeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 9);
    *a2 = 16;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      if (v10 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v11 | 0x80;
          v12 = v11 >> 7;
          ++a2;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
        *(a2 - 1) = v12;
        if ((v5 & 8) != 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        a2[2] = v11;
        a2 += 3;
        if ((v5 & 8) != 0)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      a2[1] = v10;
      a2 += 2;
      if ((v5 & 8) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 8);
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
        goto LABEL_17;
      }
    }

    else
    {
      a2[2] = v7;
      a2 += 3;
      if ((v5 & 4) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
    if ((v5 & 4) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_3:
  if ((v5 & 8) == 0)
  {
    goto LABEL_4;
  }

LABEL_28:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 40);
  *a2 = 24;
  a2[1] = v14;
  a2 += 2;
  if (v5)
  {
LABEL_31:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 3);
    *a2 = 34;
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

    a2 = TSP::CFUUIDArchive::_InternalSerialize(v15, v17, a3);
  }

LABEL_41:
  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::EdgeArchive::RequiredFieldsByteSizeFallback(TSCE::EdgeArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) == 0)
  {
    v2 = 0;
    if ((v1 & 4) == 0)
    {
      return v2 + ((v1 >> 2) & 2);
    }

    goto LABEL_5;
  }

  v2 = ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 4) != 0)
  {
LABEL_5:
    v2 += ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2 + ((v1 >> 2) & 2);
}

uint64_t TSCE::EdgeArchive::ByteSizeLong(TSCE::EdgeArchive *this)
{
  v2 = *(this + 4);
  if ((~v2 & 0xE) != 0)
  {
    v3 = TSCE::EdgeArchive::RequiredFieldsByteSizeFallback(this);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 4;
  if (v2)
  {
LABEL_5:
    v4 = TSP::CFUUIDArchive::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSCE::EdgeArchive::MergeFrom(TSCE::EdgeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::EdgeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::EdgeArchive::MergeFrom(uint64_t this, const TSCE::EdgeArchive *a2)
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

        goto LABEL_20;
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
LABEL_9:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_8:
      *(v3 + 40) = *(a2 + 40);
      goto LABEL_9;
    }

LABEL_20:
    *(v3 + 36) = *(a2 + 9);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TSCE::EdgeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::EdgeArchive::Clear(this);

    return TSCE::EdgeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::EdgeArchive::CopyFrom(uint64_t *this, const TSCE::EdgeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::EdgeArchive::Clear(this);

    return TSCE::EdgeArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::EdgeArchive::InternalSwap(TSCE::EdgeArchive *this, TSCE::EdgeArchive *a2)
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
  LOBYTE(v5) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  return result;
}

uint64_t TSCE::EdgesArchive::clear_owner_id_for_edge(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 64) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::CFUUIDArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

TSCE::EdgesArchive *TSCE::EdgesArchive::EdgesArchive(TSCE::EdgesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AB3F0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *(this + 6) = a2;
  *(this + 10) = a2;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 22) = 0;
  if (atomic_load_explicit(scc_info_EdgesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_2214F1EAC(_Unwind_Exception *a1)
{
  if (*(v1 + 76) >= 1)
  {
    sub_2216FF128(v3);
  }

  sub_221568004(v2);
  sub_2216FF13C();
  _Unwind_Resume(a1);
}

TSCE::EdgesArchive *TSCE::EdgesArchive::EdgesArchive(TSCE::EdgesArchive *this, const TSCE::EdgesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2834AB3F0;
  *(this + 3) = 0;
  v6 = *(a2 + 4);
  if (v6)
  {
    sub_2210BBC64(v5, v6);
    v7 = *(this + 3);
    *(this + 4) += *(a2 + 4);
    memcpy(v7, *(a2 + 3), 4 * *(a2 + 4));
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  v8 = *(a2 + 8);
  if (v8)
  {
    sub_2210BBC64(this + 8, v8);
    v9 = *(this + 5);
    *(this + 8) += *(a2 + 8);
    memcpy(v9, *(a2 + 5), 4 * *(a2 + 8));
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_221568088(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
  v15 = *(a2 + 18);
  if (v15)
  {
    sub_2210BBC64(this + 18, v15);
    v16 = *(this + 10);
    *(this + 18) += *(a2 + 18);
    memcpy(v16, *(a2 + 10), 4 * *(a2 + 18));
  }

  *(this + 22) = 0;
  v17 = *(a2 + 1);
  if (v17)
  {
    sub_22156734C(v4, (v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_2214F2078(_Unwind_Exception *a1)
{
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

  sub_221568004(v2);
  if (*(v1 + 36) >= 1)
  {
    v7 = *(v1 + 40);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(v1 + 20) >= 1)
  {
    v10 = *(v1 + 24);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  _Unwind_Resume(a1);
}

void TSCE::EdgesArchive::~EdgesArchive(TSCE::EdgesArchive *this)
{
  sub_2214DFCF8(this + 1);
  if (*(this + 19) >= 1)
  {
    v2 = *(this + 10);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  sub_221568004(this + 6);
  if (*(this + 9) >= 1)
  {
    v5 = *(this + 5);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(this + 5) >= 1)
  {
    v8 = *(this + 3);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }
}

{
  TSCE::EdgesArchive::~EdgesArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::EdgesArchive::default_instance(TSCE::EdgesArchive *this)
{
  if (atomic_load_explicit(scc_info_EdgesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_EdgesArchive_default_instance_;
}

uint64_t *TSCE::EdgesArchive::Clear(uint64_t *this)
{
  v1 = this;
  *(this + 4) = 0;
  *(this + 8) = 0;
  v2 = *(this + 14);
  if (v2 >= 1)
  {
    v3 = (this[8] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::CFUUIDArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 56) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 64) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TSCE::EdgesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v41 = a2;
  if ((sub_221567030(a3, &v41) & 1) == 0)
  {
    while (1)
    {
      v6 = (v41 + 1);
      v7 = *v41;
      if ((*v41 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v41, (v8 - 128));
      v41 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v38;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 > 0xA)
      {
        if (v9 == 11)
        {
          if (v7 != 90)
          {
            goto LABEL_75;
          }

          v28 = v6 - 1;
          while (2)
          {
            v29 = (v28 + 1);
            v41 = (v28 + 1);
            v30 = *(a1 + 64);
            if (!v30)
            {
LABEL_57:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v30 = *(a1 + 64);
              v31 = *v30;
              goto LABEL_58;
            }

            v36 = *(a1 + 56);
            v31 = *v30;
            if (v36 >= *v30)
            {
              if (v31 == *(a1 + 60))
              {
                goto LABEL_57;
              }

LABEL_58:
              *v30 = v31 + 1;
              v32 = MEMORY[0x223DA0300](*(a1 + 48));
              LODWORD(v33) = v32;
              v34 = *(a1 + 56);
              v35 = *(a1 + 64) + 8 * v34;
              *(a1 + 56) = v34 + 1;
              *(v35 + 8) = v32;
              v29 = v41;
            }

            else
            {
              *(a1 + 56) = v36 + 1;
              v33 = *&v30[2 * v36 + 2];
            }

            v28 = sub_2216F7F9C(a3, v33, v29);
            v41 = v28;
            if (!v28)
            {
              return 0;
            }

            if (*a3 <= v28 || *v28 != 90)
            {
              goto LABEL_83;
            }

            continue;
          }
        }

        if (v9 == 12)
        {
          if (v7 == 96)
          {
            v16 = v6 - 1;
            while (1)
            {
              v41 = (v16 + 1);
              v17 = v16[1];
              if (v16[1] < 0)
              {
                v18 = v17 + (v16[2] << 7);
                v17 = v18 - 128;
                if (v16[2] < 0)
                {
                  v16 = google::protobuf::internal::VarintParseSlow32((v16 + 1), (v18 - 128));
                  v17 = v19;
                }

                else
                {
                  v16 += 3;
                }
              }

              else
              {
                v16 += 2;
              }

              v41 = v16;
              v20 = *(a1 + 72);
              if (v20 == *(a1 + 76))
              {
                v21 = v20 + 1;
                sub_2210BBC64((a1 + 72), v20 + 1);
                *(*(a1 + 80) + 4 * v20) = v17;
                v16 = v41;
              }

              else
              {
                *(*(a1 + 80) + 4 * v20) = v17;
                v21 = v20 + 1;
              }

              *(a1 + 72) = v21;
              if (!v16)
              {
                return 0;
              }

              if (*a3 <= v16 || *v16 != 96)
              {
                goto LABEL_83;
              }
            }
          }

          if (v7 == 98)
          {
            goto LABEL_74;
          }
        }
      }

      else if (v9 == 9)
      {
        if (v7 == 72)
        {
          v22 = v6 - 1;
          while (1)
          {
            v41 = (v22 + 1);
            v23 = v22[1];
            if (v22[1] < 0)
            {
              v24 = v23 + (v22[2] << 7);
              v23 = v24 - 128;
              if (v22[2] < 0)
              {
                v22 = google::protobuf::internal::VarintParseSlow32((v22 + 1), (v24 - 128));
                v23 = v25;
              }

              else
              {
                v22 += 3;
              }
            }

            else
            {
              v22 += 2;
            }

            v41 = v22;
            v26 = *(a1 + 16);
            if (v26 == *(a1 + 20))
            {
              v27 = v26 + 1;
              sub_2210BBC64((a1 + 16), v26 + 1);
              *(*(a1 + 24) + 4 * v26) = v23;
              v22 = v41;
            }

            else
            {
              *(*(a1 + 24) + 4 * v26) = v23;
              v27 = v26 + 1;
            }

            *(a1 + 16) = v27;
            if (!v22)
            {
              return 0;
            }

            if (*a3 <= v22 || *v22 != 72)
            {
              goto LABEL_83;
            }
          }
        }

        if (v7 == 74)
        {
LABEL_74:
          v39 = google::protobuf::internal::PackedUInt32Parser();
          goto LABEL_82;
        }
      }

      else if (v9 == 10)
      {
        if (v7 == 80)
        {
          v10 = v6 - 1;
          while (1)
          {
            v41 = (v10 + 1);
            v11 = v10[1];
            if (v10[1] < 0)
            {
              v12 = v11 + (v10[2] << 7);
              v11 = v12 - 128;
              if (v10[2] < 0)
              {
                v10 = google::protobuf::internal::VarintParseSlow32((v10 + 1), (v12 - 128));
                v11 = v13;
              }

              else
              {
                v10 += 3;
              }
            }

            else
            {
              v10 += 2;
            }

            v41 = v10;
            v14 = *(a1 + 32);
            if (v14 == *(a1 + 36))
            {
              v15 = v14 + 1;
              sub_2210BBC64((a1 + 32), v14 + 1);
              *(*(a1 + 40) + 4 * v14) = v11;
              v10 = v41;
            }

            else
            {
              *(*(a1 + 40) + 4 * v14) = v11;
              v15 = v14 + 1;
            }

            *(a1 + 32) = v15;
            if (!v10)
            {
              return 0;
            }

            if (*a3 <= v10 || *v10 != 80)
            {
              goto LABEL_83;
            }
          }
        }

        if (v7 == 82)
        {
          goto LABEL_74;
        }
      }

LABEL_75:
      if (v7)
      {
        v40 = (v7 & 7) == 4;
      }

      else
      {
        v40 = 1;
      }

      if (v40)
      {
        *(a3 + 80) = v7 - 1;
        return v41;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v39 = google::protobuf::internal::UnknownFieldParse();
LABEL_82:
      v41 = v39;
      if (!v39)
      {
        return 0;
      }

LABEL_83:
      if (sub_221567030(a3, &v41))
      {
        return v41;
      }
    }

    v6 = (v41 + 2);
LABEL_6:
    v41 = v6;
    goto LABEL_7;
  }

  return v41;
}

unsigned __int8 *TSCE::EdgesArchive::_InternalSerialize(TSCE::EdgesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 3) + 4 * i);
      *a2 = 72;
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

  v11 = *(this + 8);
  if (v11 >= 1)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 5) + 4 * j);
      *a2 = 80;
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

  v17 = *(this + 14);
  if (v17)
  {
    for (k = 0; k != v17; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v19 = *(*(this + 8) + 8 * k + 8);
      *a2 = 90;
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

      a2 = TSP::CFUUIDArchive::_InternalSerialize(v19, v21, a3);
    }
  }

  v25 = *(this + 18);
  if (v25 >= 1)
  {
    for (m = 0; m != v25; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v27 = *(*(this + 10) + 4 * m);
      *a2 = 96;
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
        }

        else
        {
          a2[2] = v28;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v27;
        a2 += 2;
      }
    }
  }

  v31 = *(this + 1);
  if ((v31 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v31 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::EdgesArchive::ByteSizeLong(TSCE::EdgesArchive *this)
{
  v2 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v3 = *(this + 4);
  v4 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v5 = *(this + 14);
  v6 = v2 + v4 + v3 + *(this + 8) + v5;
  v7 = *(this + 8);
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
      v11 = TSP::CFUUIDArchive::ByteSizeLong(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  v12 = google::protobuf::internal::WireFormatLite::UInt32Size() + *(this + 18) + v6;
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v12, this + 88);
  }

  else
  {
    *(this + 22) = v12;
    return v12;
  }
}

uint64_t *TSCE::EdgesArchive::MergeFrom(TSCE::EdgesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::EdgesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TSCE::EdgesArchive::MergeFrom(uint64_t *this, const TSCE::EdgesArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    v6 = v3[4];
    sub_2210BBC64(v3 + 4, v6 + v5);
    v7 = *(v3 + 3);
    v3[4] += *(a2 + 4);
    this = memcpy((v7 + 4 * v6), *(a2 + 3), 4 * *(a2 + 4));
  }

  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v3[8];
    sub_2210BBC64(v3 + 8, v9 + v8);
    v10 = *(v3 + 5);
    v3[8] += *(a2 + 8);
    this = memcpy((v10 + 4 * v9), *(a2 + 5), 4 * *(a2 + 8));
  }

  v11 = *(a2 + 14);
  if (v11)
  {
    v12 = *(a2 + 8);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 12));
    this = sub_221568088((v3 + 12), v13, (v12 + 8), v11, **(v3 + 8) - v3[14]);
    v14 = v3[14] + v11;
    v3[14] = v14;
    v15 = *(v3 + 8);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 18);
  if (v16)
  {
    v18 = v3[18];
    v17 = v3 + 18;
    sub_2210BBC64(v17, v18 + v16);
    v19 = *(v17 + 1);
    *v17 += *(a2 + 18);
    v20 = (v19 + 4 * v18);
    v21 = *(a2 + 10);
    v22 = 4 * *(a2 + 18);

    return memcpy(v20, v21, v22);
  }

  return this;
}

uint64_t *TSCE::EdgesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::EdgesArchive::Clear(this);

    return TSCE::EdgesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::EdgesArchive::CopyFrom(uint64_t *this, const TSCE::EdgesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::EdgesArchive::Clear(this);

    return TSCE::EdgesArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::EdgesArchive::InternalSwap(TSCE::EdgesArchive *this, TSCE::EdgesArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 2);
  v5 = *(this + 3);
  *(this + 1) = *(a2 + 1);
  *(a2 + 2) = v4;
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  v7 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v6;
  *(a2 + 5) = v7;
  v8 = *(this + 7);
  v9 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v8;
  *(a2 + 8) = v9;
  v10 = *(this + 9);
  v11 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v10;
  *(a2 + 10) = v11;
  return result;
}

double TSCE::ExpandedEdgesArchive::ExpandedEdgesArchive(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2834AB4A0;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = 0;
  return result;
}

{
  *a1 = &unk_2834AB4A0;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = 0;
  return result;
}

TSCE::ExpandedEdgesArchive *TSCE::ExpandedEdgesArchive::ExpandedEdgesArchive(TSCE::ExpandedEdgesArchive *this, const TSCE::ExpandedEdgesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2834AB4A0;
  *(this + 3) = 0;
  v6 = *(a2 + 4);
  if (v6)
  {
    sub_2210BBC64(v5, v6);
    v7 = *(this + 3);
    *(this + 4) += *(a2 + 4);
    memcpy(v7, *(a2 + 3), 4 * *(a2 + 4));
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  v8 = *(a2 + 8);
  if (v8)
  {
    sub_2210BBC64(this + 8, v8);
    v9 = *(this + 5);
    *(this + 8) += *(a2 + 8);
    memcpy(v9, *(a2 + 5), 4 * *(a2 + 8));
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  v10 = *(a2 + 12);
  if (v10)
  {
    sub_2210BBC64(this + 12, v10);
    v11 = *(this + 7);
    *(this + 12) += *(a2 + 12);
    memcpy(v11, *(a2 + 7), 4 * *(a2 + 12));
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  v12 = *(a2 + 16);
  if (v12)
  {
    sub_2210BBC64(this + 16, v12);
    v13 = *(this + 9);
    *(this + 16) += *(a2 + 16);
    memcpy(v13, *(a2 + 9), 4 * *(a2 + 16));
  }

  *(this + 10) = 0;
  *(this + 11) = 0;
  v14 = *(a2 + 20);
  if (v14)
  {
    sub_2210BBC64(this + 20, v14);
    v15 = *(this + 11);
    *(this + 20) += *(a2 + 20);
    memcpy(v15, *(a2 + 11), 4 * *(a2 + 20));
  }

  *(this + 24) = 0;
  v16 = *(a2 + 1);
  if (v16)
  {
    sub_22156734C(v4, (v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_2214F30B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 84) >= 1)
  {
    v3 = *(v1 + 88);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(v1 + 68) >= 1)
  {
    v6 = *(v1 + 72);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  if (*(v1 + 52) >= 1)
  {
    v9 = *(v1 + 56);
    v11 = *(v9 - 8);
    v10 = (v9 - 8);
    if (!v11)
    {
      operator delete(v10);
    }
  }

  if (*(v1 + 36) >= 1)
  {
    v12 = *(v1 + 40);
    v14 = *(v12 - 8);
    v13 = (v12 - 8);
    if (!v14)
    {
      operator delete(v13);
    }
  }

  if (*(v1 + 20) >= 1)
  {
    v15 = *(v1 + 24);
    v17 = *(v15 - 8);
    v16 = (v15 - 8);
    if (!v17)
    {
      operator delete(v16);
    }
  }

  _Unwind_Resume(exception_object);
}

void TSCE::ExpandedEdgesArchive::~ExpandedEdgesArchive(TSCE::ExpandedEdgesArchive *this)
{
  sub_2214DFCF8(this + 1);
  if (*(this + 21) >= 1)
  {
    v2 = *(this + 11);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  if (*(this + 17) >= 1)
  {
    v5 = *(this + 9);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(this + 13) >= 1)
  {
    v8 = *(this + 7);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  if (*(this + 9) >= 1)
  {
    v11 = *(this + 5);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  if (*(this + 5) >= 1)
  {
    v14 = *(this + 3);
    v16 = *(v14 - 8);
    v15 = (v14 - 8);
    if (!v16)
    {
      operator delete(v15);
    }
  }
}

{
  TSCE::ExpandedEdgesArchive::~ExpandedEdgesArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::ExpandedEdgesArchive::default_instance(TSCE::ExpandedEdgesArchive *this)
{
  if (atomic_load_explicit(scc_info_ExpandedEdgesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ExpandedEdgesArchive_default_instance_;
}

uint64_t *TSCE::ExpandedEdgesArchive::Clear(TSCE::ExpandedEdgesArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 6) = 0;
  *(result + 10) = 0;
  *(result + 14) = 0;
  *(result + 18) = 0;
  if (v2)
  {
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TSCE::ExpandedEdgesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v44 = a2;
  if ((sub_221567030(a3, &v44) & 1) == 0)
  {
    while (1)
    {
      v6 = (v44 + 1);
      v7 = *v44;
      if ((*v44 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v44, (v8 - 128));
      v44 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v41;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 <= 2)
      {
        if (v9 == 1)
        {
          if (v7 == 8)
          {
            v34 = v6 - 1;
            while (1)
            {
              v44 = (v34 + 1);
              v35 = v34[1];
              if (v34[1] < 0)
              {
                v36 = v35 + (v34[2] << 7);
                v35 = v36 - 128;
                if (v34[2] < 0)
                {
                  v34 = google::protobuf::internal::VarintParseSlow32((v34 + 1), (v36 - 128));
                  v35 = v37;
                }

                else
                {
                  v34 += 3;
                }
              }

              else
              {
                v34 += 2;
              }

              v44 = v34;
              v38 = *(a1 + 16);
              if (v38 == *(a1 + 20))
              {
                v39 = v38 + 1;
                sub_2210BBC64((a1 + 16), v38 + 1);
                *(*(a1 + 24) + 4 * v38) = v35;
                v34 = v44;
              }

              else
              {
                *(*(a1 + 24) + 4 * v38) = v35;
                v39 = v38 + 1;
              }

              *(a1 + 16) = v39;
              if (!v34)
              {
                return 0;
              }

              if (*a3 <= v34 || *v34 != 8)
              {
                goto LABEL_103;
              }
            }
          }

          if (v7 == 10)
          {
            goto LABEL_94;
          }
        }

        else if (v9 == 2)
        {
          if (v7 == 16)
          {
            v16 = v6 - 1;
            while (1)
            {
              v44 = (v16 + 1);
              v17 = v16[1];
              if (v16[1] < 0)
              {
                v18 = v17 + (v16[2] << 7);
                v17 = v18 - 128;
                if (v16[2] < 0)
                {
                  v16 = google::protobuf::internal::VarintParseSlow32((v16 + 1), (v18 - 128));
                  v17 = v19;
                }

                else
                {
                  v16 += 3;
                }
              }

              else
              {
                v16 += 2;
              }

              v44 = v16;
              v20 = *(a1 + 32);
              if (v20 == *(a1 + 36))
              {
                v21 = v20 + 1;
                sub_2210BBC64((a1 + 32), v20 + 1);
                *(*(a1 + 40) + 4 * v20) = v17;
                v16 = v44;
              }

              else
              {
                *(*(a1 + 40) + 4 * v20) = v17;
                v21 = v20 + 1;
              }

              *(a1 + 32) = v21;
              if (!v16)
              {
                return 0;
              }

              if (*a3 <= v16 || *v16 != 16)
              {
                goto LABEL_103;
              }
            }
          }

          if (v7 == 18)
          {
            goto LABEL_94;
          }
        }
      }

      else
      {
        switch(v9)
        {
          case 3u:
            if (v7 == 24)
            {
              v22 = v6 - 1;
              while (1)
              {
                v44 = (v22 + 1);
                v23 = v22[1];
                if (v22[1] < 0)
                {
                  v24 = v23 + (v22[2] << 7);
                  v23 = v24 - 128;
                  if (v22[2] < 0)
                  {
                    v22 = google::protobuf::internal::VarintParseSlow32((v22 + 1), (v24 - 128));
                    v23 = v25;
                  }

                  else
                  {
                    v22 += 3;
                  }
                }

                else
                {
                  v22 += 2;
                }

                v44 = v22;
                v26 = *(a1 + 48);
                if (v26 == *(a1 + 52))
                {
                  v27 = v26 + 1;
                  sub_2210BBC64((a1 + 48), v26 + 1);
                  *(*(a1 + 56) + 4 * v26) = v23;
                  v22 = v44;
                }

                else
                {
                  *(*(a1 + 56) + 4 * v26) = v23;
                  v27 = v26 + 1;
                }

                *(a1 + 48) = v27;
                if (!v22)
                {
                  return 0;
                }

                if (*a3 <= v22 || *v22 != 24)
                {
                  goto LABEL_103;
                }
              }
            }

            if (v7 == 26)
            {
              goto LABEL_94;
            }

            break;
          case 4u:
            if (v7 == 32)
            {
              v28 = v6 - 1;
              while (1)
              {
                v44 = (v28 + 1);
                v29 = v28[1];
                if (v28[1] < 0)
                {
                  v30 = v29 + (v28[2] << 7);
                  v29 = v30 - 128;
                  if (v28[2] < 0)
                  {
                    v28 = google::protobuf::internal::VarintParseSlow32((v28 + 1), (v30 - 128));
                    v29 = v31;
                  }

                  else
                  {
                    v28 += 3;
                  }
                }

                else
                {
                  v28 += 2;
                }

                v44 = v28;
                v32 = *(a1 + 64);
                if (v32 == *(a1 + 68))
                {
                  v33 = v32 + 1;
                  sub_2210BBC64((a1 + 64), v32 + 1);
                  *(*(a1 + 72) + 4 * v32) = v29;
                  v28 = v44;
                }

                else
                {
                  *(*(a1 + 72) + 4 * v32) = v29;
                  v33 = v32 + 1;
                }

                *(a1 + 64) = v33;
                if (!v28)
                {
                  return 0;
                }

                if (*a3 <= v28 || *v28 != 32)
                {
                  goto LABEL_103;
                }
              }
            }

            if (v7 == 34)
            {
LABEL_94:
              v42 = google::protobuf::internal::PackedUInt32Parser();
              goto LABEL_102;
            }

            break;
          case 5u:
            if (v7 == 40)
            {
              v10 = v6 - 1;
              while (1)
              {
                v44 = (v10 + 1);
                v11 = v10[1];
                if (v10[1] < 0)
                {
                  v12 = v11 + (v10[2] << 7);
                  v11 = v12 - 128;
                  if (v10[2] < 0)
                  {
                    v10 = google::protobuf::internal::VarintParseSlow32((v10 + 1), (v12 - 128));
                    v11 = v13;
                  }

                  else
                  {
                    v10 += 3;
                  }
                }

                else
                {
                  v10 += 2;
                }

                v44 = v10;
                v14 = *(a1 + 80);
                if (v14 == *(a1 + 84))
                {
                  v15 = v14 + 1;
                  sub_2210BBC64((a1 + 80), v14 + 1);
                  *(*(a1 + 88) + 4 * v14) = v11;
                  v10 = v44;
                }

                else
                {
                  *(*(a1 + 88) + 4 * v14) = v11;
                  v15 = v14 + 1;
                }

                *(a1 + 80) = v15;
                if (!v10)
                {
                  return 0;
                }

                if (*a3 <= v10 || *v10 != 40)
                {
                  goto LABEL_103;
                }
              }
            }

            if (v7 == 42)
            {
              goto LABEL_94;
            }

            break;
        }
      }

      if (v7)
      {
        v43 = (v7 & 7) == 4;
      }

      else
      {
        v43 = 1;
      }

      if (v43)
      {
        *(a3 + 80) = v7 - 1;
        return v44;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v42 = google::protobuf::internal::UnknownFieldParse();
LABEL_102:
      v44 = v42;
      if (!v42)
      {
        return 0;
      }

LABEL_103:
      if (sub_221567030(a3, &v44))
      {
        return v44;
      }
    }

    v6 = (v44 + 2);
LABEL_6:
    v44 = v6;
    goto LABEL_7;
  }

  return v44;
}

unsigned __int8 *TSCE::ExpandedEdgesArchive::_InternalSerialize(TSCE::ExpandedEdgesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 3) + 4 * i);
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

  v11 = *(this + 8);
  if (v11 >= 1)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 5) + 4 * j);
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

  v17 = *(this + 12);
  if (v17 >= 1)
  {
    for (k = 0; k != v17; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v19 = *(*(this + 7) + 4 * k);
      *a2 = 24;
      if (v19 > 0x7F)
      {
        a2[1] = v19 | 0x80;
        v20 = v19 >> 7;
        if (v19 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            ++a2;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(a2 - 1) = v21;
        }

        else
        {
          a2[2] = v20;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v19;
        a2 += 2;
      }
    }
  }

  v23 = *(this + 16);
  if (v23 >= 1)
  {
    for (m = 0; m != v23; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v25 = *(*(this + 9) + 4 * m);
      *a2 = 32;
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
        }

        else
        {
          a2[2] = v26;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v25;
        a2 += 2;
      }
    }
  }

  v29 = *(this + 20);
  if (v29 >= 1)
  {
    for (n = 0; n != v29; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v31 = *(*(this + 11) + 4 * n);
      *a2 = 40;
      if (v31 > 0x7F)
      {
        a2[1] = v31 | 0x80;
        v32 = v31 >> 7;
        if (v31 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v32 | 0x80;
            v33 = v32 >> 7;
            ++a2;
            v34 = v32 >> 14;
            v32 >>= 7;
          }

          while (v34);
          *(a2 - 1) = v33;
        }

        else
        {
          a2[2] = v32;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v31;
        a2 += 2;
      }
    }
  }

  v35 = *(this + 1);
  if ((v35 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v35 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ExpandedEdgesArchive::ByteSizeLong(TSCE::ExpandedEdgesArchive *this)
{
  v2 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v3 = *(this + 4);
  v4 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v5 = *(this + 8);
  v6 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v7 = *(this + 12);
  v8 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v9 = *(this + 16);
  v10 = v2 + v4 + v3 + v5 + v6 + v7 + v8 + v9 + google::protobuf::internal::WireFormatLite::UInt32Size() + *(this + 20);
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v10, this + 96);
  }

  else
  {
    *(this + 24) = v10;
    return v10;
  }
}

uint64_t *TSCE::ExpandedEdgesArchive::MergeFrom(TSCE::ExpandedEdgesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ExpandedEdgesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TSCE::ExpandedEdgesArchive::MergeFrom(uint64_t *this, const TSCE::ExpandedEdgesArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    v6 = v3[4];
    sub_2210BBC64(v3 + 4, v6 + v5);
    v7 = *(v3 + 3);
    v3[4] += *(a2 + 4);
    this = memcpy((v7 + 4 * v6), *(a2 + 3), 4 * *(a2 + 4));
  }

  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = v3[8];
    sub_2210BBC64(v3 + 8, v9 + v8);
    v10 = *(v3 + 5);
    v3[8] += *(a2 + 8);
    this = memcpy((v10 + 4 * v9), *(a2 + 5), 4 * *(a2 + 8));
  }

  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = v3[12];
    sub_2210BBC64(v3 + 12, v12 + v11);
    v13 = *(v3 + 7);
    v3[12] += *(a2 + 12);
    this = memcpy((v13 + 4 * v12), *(a2 + 7), 4 * *(a2 + 12));
  }

  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = v3[16];
    sub_2210BBC64(v3 + 16, v15 + v14);
    v16 = *(v3 + 9);
    v3[16] += *(a2 + 16);
    this = memcpy((v16 + 4 * v15), *(a2 + 9), 4 * *(a2 + 16));
  }

  v17 = *(a2 + 20);
  if (v17)
  {
    v19 = v3[20];
    v18 = v3 + 20;
    sub_2210BBC64(v18, v19 + v17);
    v20 = *(v18 + 1);
    *v18 += *(a2 + 20);
    v21 = (v20 + 4 * v19);
    v22 = *(a2 + 11);
    v23 = 4 * *(a2 + 20);

    return memcpy(v21, v22, v23);
  }

  return this;
}

uint64_t *TSCE::ExpandedEdgesArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    *(v5 + 2) = 0;
    *(v5 + 6) = 0;
    *(v5 + 10) = 0;
    *(v5 + 14) = 0;
    *(v5 + 18) = 0;
    if (v6)
    {
      sub_221567398(v5);
    }

    return TSCE::ExpandedEdgesArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSCE::ExpandedEdgesArchive::CopyFrom(uint64_t *this, const TSCE::ExpandedEdgesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    *(v5 + 2) = 0;
    *(v5 + 6) = 0;
    *(v5 + 10) = 0;
    *(v5 + 14) = 0;
    *(v5 + 18) = 0;
    if (v6)
    {
      sub_221567398(v5);
    }

    return TSCE::ExpandedEdgesArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::ExpandedEdgesArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u64[0];
  v5 = this[1].n128_u64[1];
  this[1] = a2[1];
  a2[1].n128_u64[0] = v4;
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
  this[4] = a2[4];
  a2[4].n128_u64[0] = v10;
  a2[4].n128_u64[1] = v11;
  v12 = this[5].n128_u64[0];
  v13 = this[5].n128_u64[1];
  result = a2[5];
  this[5] = result;
  a2[5].n128_u64[0] = v12;
  a2[5].n128_u64[1] = v13;
  return result;
}

TSCE::CellRecordArchive *TSCE::CellRecordArchive::CellRecordArchive(TSCE::CellRecordArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AB550;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CellRecordArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 18) = 0;
  *(this + 8) = 0;
  *(this + 76) = 1;
  return this;
}

TSCE::CellRecordArchive *TSCE::CellRecordArchive::CellRecordArchive(TSCE::CellRecordArchive *this, const TSCE::CellRecordArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AB550;
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
    sub_2215681CC(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  v11 = *(a2 + 56);
  *(this + 69) = *(a2 + 69);
  *(this + 56) = v11;
  return this;
}

void sub_2214F4284(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C404804175CLL);
  sub_221568148((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::CellRecordArchive::~CellRecordArchive(TSCE::CellRecordArchive *this)
{
  if (this != &TSCE::_CellRecordArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSCE::EdgesArchive::~EdgesArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_221568148(this + 3);
}

{
  TSCE::CellRecordArchive::~CellRecordArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::CellRecordArchive::default_instance(TSCE::CellRecordArchive *this)
{
  if (atomic_load_explicit(scc_info_CellRecordArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CellRecordArchive_default_instance_;
}

uint64_t *TSCE::CellRecordArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::EdgeArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    this = TSCE::EdgesArchive::Clear(*(v1 + 48));
  }

  if ((v5 & 0xFE) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 68) = 1;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_221567398(v6);
  }

  return this;
}

google::protobuf::internal *TSCE::CellRecordArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v66 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v66) & 1) == 0)
  {
    while (1)
    {
      v7 = (v66 + 1);
      v8 = *v66;
      if ((*v66 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v66, (v9 - 128));
      v66 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_111;
      }

      v7 = TagFallback;
      v8 = v30;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 5)
      {
        if (v8 >> 3 <= 7)
        {
          if (v10 == 6)
          {
            if (v8 != 48)
            {
              goto LABEL_84;
            }

            v5 |= 0x100u;
            v35 = (v7 + 1);
            v34 = *v7;
            if ((v34 & 0x8000000000000000) == 0)
            {
              goto LABEL_62;
            }

            v36 = *v35;
            v34 = (v36 << 7) + v34 - 128;
            if ((v36 & 0x80000000) == 0)
            {
              v35 = (v7 + 2);
LABEL_62:
              v66 = v35;
              *(a1 + 76) = v34 != 0;
              goto LABEL_92;
            }

            v56 = google::protobuf::internal::VarintParseSlow64(v7, v34);
            v66 = v56;
            *(a1 + 76) = v57 != 0;
            if (!v56)
            {
              goto LABEL_111;
            }
          }

          else
          {
            if (v10 != 7 || v8 != 56)
            {
              goto LABEL_84;
            }

            v5 |= 0x20u;
            v27 = (v7 + 1);
            v26 = *v7;
            if ((v26 & 0x8000000000000000) == 0)
            {
              goto LABEL_50;
            }

            v28 = *v27;
            v26 = (v28 << 7) + v26 - 128;
            if ((v28 & 0x80000000) == 0)
            {
              v27 = (v7 + 2);
LABEL_50:
              v66 = v27;
              *(a1 + 73) = v26 != 0;
              goto LABEL_92;
            }

            v52 = google::protobuf::internal::VarintParseSlow64(v7, v26);
            v66 = v52;
            *(a1 + 73) = v53 != 0;
            if (!v52)
            {
              goto LABEL_111;
            }
          }
        }

        else if (v10 == 8)
        {
          if (v8 != 64)
          {
            goto LABEL_84;
          }

          v5 |= 0x40u;
          v41 = (v7 + 1);
          v40 = *v7;
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_72;
          }

          v42 = *v41;
          v40 = (v42 << 7) + v40 - 128;
          if ((v42 & 0x80000000) == 0)
          {
            v41 = (v7 + 2);
LABEL_72:
            v66 = v41;
            *(a1 + 74) = v40 != 0;
            goto LABEL_92;
          }

          v60 = google::protobuf::internal::VarintParseSlow64(v7, v40);
          v66 = v60;
          *(a1 + 74) = v61 != 0;
          if (!v60)
          {
            goto LABEL_111;
          }
        }

        else
        {
          if (v10 == 9)
          {
            if (v8 == 74)
            {
              *(a1 + 16) |= 1u;
              v46 = *(a1 + 48);
              if (!v46)
              {
                v47 = *(a1 + 8);
                if (v47)
                {
                  v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
                }

                v46 = google::protobuf::Arena::CreateMaybeMessage<TSCE::EdgesArchive>(v47);
                *(a1 + 48) = v46;
                v7 = v66;
              }

              v48 = sub_2216F90AC(a3, v46, v7);
LABEL_91:
              v66 = v48;
              if (!v48)
              {
                goto LABEL_111;
              }

              goto LABEL_92;
            }

LABEL_84:
            if (v8)
            {
              v49 = (v8 & 7) == 4;
            }

            else
            {
              v49 = 1;
            }

            if (v49)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v48 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_91;
          }

          if (v10 != 10 || v8 != 80)
          {
            goto LABEL_84;
          }

          v5 |= 0x80u;
          v20 = (v7 + 1);
          v19 = *v7;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }

          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if ((v21 & 0x80000000) == 0)
          {
            v20 = (v7 + 2);
LABEL_33:
            v66 = v20;
            *(a1 + 75) = v19 != 0;
            goto LABEL_92;
          }

          v62 = google::protobuf::internal::VarintParseSlow64(v7, v19);
          v66 = v62;
          *(a1 + 75) = v63 != 0;
          if (!v62)
          {
            goto LABEL_111;
          }
        }
      }

      else if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 8)
          {
            goto LABEL_84;
          }

          v5 |= 2u;
          v31 = (v7 + 1);
          LODWORD(v32) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_57;
          }

          v33 = *v31;
          v32 = (v32 + (v33 << 7) - 128);
          if ((v33 & 0x80000000) == 0)
          {
            v31 = (v7 + 2);
LABEL_57:
            v66 = v31;
            *(a1 + 56) = v32;
            goto LABEL_92;
          }

          v54 = google::protobuf::internal::VarintParseSlow32(v7, v32);
          v66 = v54;
          *(a1 + 56) = v55;
          if (!v54)
          {
            goto LABEL_111;
          }
        }

        else
        {
          if (v10 != 2 || v8 != 16)
          {
            goto LABEL_84;
          }

          v5 |= 4u;
          v23 = (v7 + 1);
          LODWORD(v24) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_43;
          }

          v25 = *v23;
          v24 = (v24 + (v25 << 7) - 128);
          if ((v25 & 0x80000000) == 0)
          {
            v23 = (v7 + 2);
LABEL_43:
            v66 = v23;
            *(a1 + 60) = v24;
            goto LABEL_92;
          }

          v50 = google::protobuf::internal::VarintParseSlow32(v7, v24);
          v66 = v50;
          *(a1 + 60) = v51;
          if (!v50)
          {
            goto LABEL_111;
          }
        }
      }

      else if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_84;
        }

        v5 |= 8u;
        v38 = (v7 + 1);
        v37 = *v7;
        if ((v37 & 0x8000000000000000) == 0)
        {
          goto LABEL_67;
        }

        v39 = *v38;
        v37 = (v39 << 7) + v37 - 128;
        if ((v39 & 0x80000000) == 0)
        {
          v38 = (v7 + 2);
LABEL_67:
          v66 = v38;
          *(a1 + 64) = v37;
          goto LABEL_92;
        }

        v58 = google::protobuf::internal::VarintParseSlow64(v7, v37);
        v66 = v58;
        *(a1 + 64) = v59;
        if (!v58)
        {
          goto LABEL_111;
        }
      }

      else
      {
        if (v10 != 4)
        {
          if (v10 == 5 && v8 == 42)
          {
            v11 = (v7 - 1);
            while (1)
            {
              v12 = (v11 + 1);
              v66 = (v11 + 1);
              v13 = *(a1 + 40);
              if (!v13)
              {
                goto LABEL_15;
              }

              v18 = *(a1 + 32);
              v14 = *v13;
              if (v18 < *v13)
              {
                *(a1 + 32) = v18 + 1;
                v15 = *&v13[2 * v18 + 2];
                goto LABEL_19;
              }

              if (v14 == *(a1 + 36))
              {
LABEL_15:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                v13 = *(a1 + 40);
                v14 = *v13;
              }

              *v13 = v14 + 1;
              v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::EdgeArchive>(*(a1 + 24));
              v16 = *(a1 + 32);
              v17 = *(a1 + 40) + 8 * v16;
              *(a1 + 32) = v16 + 1;
              *(v17 + 8) = v15;
              v12 = v66;
LABEL_19:
              v11 = sub_2216F8FDC(a3, v15, v12);
              v66 = v11;
              if (!v11)
              {
                goto LABEL_111;
              }

              if (*a3 <= v11 || *v11 != 42)
              {
                goto LABEL_92;
              }
            }
          }

          goto LABEL_84;
        }

        if (v8 != 32)
        {
          goto LABEL_84;
        }

        v5 |= 0x10u;
        v44 = (v7 + 1);
        v43 = *v7;
        if ((v43 & 0x8000000000000000) == 0)
        {
          goto LABEL_77;
        }

        v45 = *v44;
        v43 = (v45 << 7) + v43 - 128;
        if ((v45 & 0x80000000) == 0)
        {
          v44 = (v7 + 2);
LABEL_77:
          v66 = v44;
          *(a1 + 72) = v43 != 0;
          goto LABEL_92;
        }

        v64 = google::protobuf::internal::VarintParseSlow64(v7, v43);
        v66 = v64;
        *(a1 + 72) = v65 != 0;
        if (!v64)
        {
LABEL_111:
          v66 = 0;
          goto LABEL_2;
        }
      }

LABEL_92:
      if (sub_221567030(a3, &v66))
      {
        goto LABEL_2;
      }
    }

    v7 = (v66 + 2);
LABEL_6:
    v66 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v66;
}

unsigned __int8 *TSCE::CellRecordArchive::_InternalSerialize(TSCE::CellRecordArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_52:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(this + 15);
    *a2 = 16;
    if (v26 > 0x7F)
    {
      a2[1] = v26 | 0x80;
      v27 = v26 >> 7;
      if (v26 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v27 | 0x80;
          v33 = v27 >> 7;
          ++a2;
          v34 = v27 >> 14;
          v27 >>= 7;
        }

        while (v34);
        *(a2 - 1) = v33;
        if ((v5 & 8) != 0)
        {
          goto LABEL_72;
        }
      }

      else
      {
        a2[2] = v27;
        a2 += 3;
        if ((v5 & 8) != 0)
        {
          goto LABEL_72;
        }
      }
    }

    else
    {
      a2[1] = v26;
      a2 += 2;
      if ((v5 & 8) != 0)
      {
        goto LABEL_72;
      }
    }

LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v15 = *(this + 14);
  *a2 = 8;
  if (v15 > 0x7F)
  {
    a2[1] = v15 | 0x80;
    v22 = v15 >> 7;
    if (v15 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v22 | 0x80;
        v24 = v22 >> 7;
        ++a2;
        v25 = v22 >> 14;
        v22 >>= 7;
      }

      while (v25);
      *(a2 - 1) = v24;
      if ((v5 & 4) != 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      a2[2] = v22;
      a2 += 3;
      if ((v5 & 4) != 0)
      {
        goto LABEL_52;
      }
    }
  }

  else
  {
    a2[1] = v15;
    a2 += 2;
    if ((v5 & 4) != 0)
    {
      goto LABEL_52;
    }
  }

LABEL_3:
  if ((v5 & 8) == 0)
  {
    goto LABEL_4;
  }

LABEL_72:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v35 = *(this + 8);
  *a2 = 24;
  if (v35 > 0x7F)
  {
    a2[1] = v35 | 0x80;
    v36 = v35 >> 7;
    if (v35 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v36 | 0x80;
        v37 = v36 >> 7;
        ++a2;
        v38 = v36 >> 14;
        v36 >>= 7;
      }

      while (v38);
      *(a2 - 1) = v37;
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      a2[2] = v36;
      a2 += 3;
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    a2[1] = v35;
    a2 += 2;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_5:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 72);
  *a2 = 32;
  a2[1] = v6;
  a2 += 2;
LABEL_8:
  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v9 = *(*(this + 5) + 8 * i + 8);
      *a2 = 42;
      v10 = *(v9 + 5);
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

      a2 = TSCE::EdgeArchive::_InternalSerialize(v9, v11, a3);
    }
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v16 = *(this + 76);
    *a2 = 48;
    a2[1] = v16;
    a2 += 2;
    if ((v5 & 0x20) == 0)
    {
LABEL_22:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_22;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 73);
  *a2 = 56;
  a2[1] = v17;
  a2 += 2;
  if ((v5 & 0x40) == 0)
  {
LABEL_23:
    if ((v5 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 74);
  *a2 = 64;
  a2[1] = v18;
  a2 += 2;
  if ((v5 & 1) == 0)
  {
LABEL_24:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_64;
  }

LABEL_40:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 6);
  *a2 = 74;
  v20 = *(v19 + 22);
  if (v20 > 0x7F)
  {
    a2[1] = v20 | 0x80;
    v23 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = a2 + 3;
      do
      {
        *(v21 - 1) = v23 | 0x80;
        v28 = v23 >> 7;
        ++v21;
        v29 = v23 >> 14;
        v23 >>= 7;
      }

      while (v29);
      *(v21 - 1) = v28;
    }

    else
    {
      a2[2] = v23;
      v21 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v20;
    v21 = a2 + 2;
  }

  a2 = TSCE::EdgesArchive::_InternalSerialize(v19, v21, a3);
  if ((v5 & 0x80) != 0)
  {
LABEL_64:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(this + 75);
    *a2 = 80;
    a2[1] = v30;
    a2 += 2;
  }

LABEL_67:
  v31 = *(this + 1);
  if ((v31 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v31 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CellRecordArchive::RequiredFieldsByteSizeFallback(TSCE::CellRecordArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    result = ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 15) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::CellRecordArchive::ByteSizeLong(TSCE::CellRecordArchive *this)
{
  v2 = *(this + 4);
  if ((~v2 & 6) != 0)
  {
    v3 = TSCE::CellRecordArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v3 = ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 15) | 1) ^ 0x1F) + 73) >> 6) + 2;
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
      v10 = TSCE::EdgeArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
    v2 = *(this + 4);
  }

  if (v2)
  {
    v11 = TSCE::EdgesArchive::ByteSizeLong(*(this + 6));
    v5 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v2 & 0xF8) != 0)
  {
    if ((v2 & 8) != 0)
    {
      v5 += ((9 * (__clz(*(this + 8) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    v12.i64[0] = 0x200000002;
    v12.i64[1] = 0x200000002;
    v5 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_2217E2230), v12));
  }

  v13 = v5 + ((v2 >> 7) & 2);
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v13, this + 20);
  }

  else
  {
    *(this + 5) = v13;
    return v5 + ((v2 >> 7) & 2);
  }
}

uint64_t TSCE::CellRecordArchive::MergeFrom(TSCE::CellRecordArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellRecordArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellRecordArchive::MergeFrom(uint64_t this, const TSCE::CellRecordArchive *a2)
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
    this = sub_2215681CC(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if (v10)
  {
    if (v10)
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

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::EdgesArchive>(v13);
        *(v3 + 48) = v12;
      }

      if (*(a2 + 6))
      {
        v14 = *(a2 + 6);
      }

      else
      {
        v14 = &TSCE::_EdgesArchive_default_instance_;
      }

      this = TSCE::EdgesArchive::MergeFrom(v12, v14);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_29;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 56) = *(a2 + 14);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(v3 + 60) = *(a2 + 15);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }

LABEL_30:
    *(v3 + 64) = *(a2 + 8);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(v3 + 72) = *(a2 + 72);
    if ((v10 & 0x20) == 0)
    {
LABEL_13:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(v3 + 73) = *(a2 + 73);
    if ((v10 & 0x40) == 0)
    {
LABEL_14:
      if ((v10 & 0x80) == 0)
      {
LABEL_16:
        *(v3 + 16) |= v10;
        goto LABEL_17;
      }

LABEL_15:
      *(v3 + 75) = *(a2 + 75);
      goto LABEL_16;
    }

LABEL_33:
    *(v3 + 74) = *(a2 + 74);
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if ((v10 & 0x100) != 0)
  {
    v11 = *(a2 + 76);
    *(v3 + 16) |= 0x100u;
    *(v3 + 76) = v11;
  }

  return this;
}

uint64_t *TSCE::CellRecordArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellRecordArchive::Clear(this);

    return TSCE::CellRecordArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellRecordArchive::CopyFrom(uint64_t *this, const TSCE::CellRecordArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellRecordArchive::Clear(this);

    return TSCE::CellRecordArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::CellRecordArchive::IsInitialized(TSCE::CellRecordArchive *this)
{
  if ((~*(this + 4) & 6) != 0)
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

  while ((~*(v4 + 16) & 0xE) == 0);
  return result;
}

__n128 TSCE::CellRecordArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  LODWORD(v10) = this[4].n128_u32[2];
  this[4].n128_u32[2] = a2[4].n128_u32[2];
  a2[4].n128_u32[2] = v10;
  LOBYTE(v10) = this[4].n128_u8[12];
  this[4].n128_u8[12] = a2[4].n128_u8[12];
  a2[4].n128_u8[12] = v10;
  return result;
}

TSCE::CellDependenciesArchive *TSCE::CellDependenciesArchive::CellDependenciesArchive(TSCE::CellDependenciesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AB600;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CellDependenciesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

TSCE::CellDependenciesArchive *TSCE::CellDependenciesArchive::CellDependenciesArchive(TSCE::CellDependenciesArchive *this, const TSCE::CellDependenciesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AB600;
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
    sub_221568310(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void TSCE::CellDependenciesArchive::~CellDependenciesArchive(TSCE::CellDependenciesArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22156828C(this + 3);
}

{
  TSCE::CellDependenciesArchive::~CellDependenciesArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::CellDependenciesArchive::default_instance(TSCE::CellDependenciesArchive *this)
{
  if (atomic_load_explicit(scc_info_CellDependenciesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CellDependenciesArchive_default_instance_;
}

uint64_t *TSCE::CellDependenciesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellRecordArchive::Clear(v4);
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

google::protobuf::internal *TSCE::CellDependenciesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 != 1 || v8 != 10)
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

          goto LABEL_25;
        }

        v15 = (v7 - 1);
        while (2)
        {
          v16 = (v15 + 1);
          v27 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v17 = *(a1 + 40);
            v18 = *v17;
            goto LABEL_30;
          }

          v22 = *(a1 + 32);
          v18 = *v17;
          if (v22 >= *v17)
          {
            if (v18 == *(a1 + 36))
            {
              goto LABEL_29;
            }

LABEL_30:
            *v17 = v18 + 1;
            v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellRecordArchive>(*(a1 + 24));
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v27;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_2216F917C(a3, v19, v16);
          v27 = v15;
          if (!v15)
          {
            goto LABEL_44;
          }

          if (*a3 <= v15 || *v15 != 10)
          {
            goto LABEL_25;
          }

          continue;
        }
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

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
        v27 = v12;
        *(a1 + 48) = v13;
        v5 = 1;
        goto LABEL_25;
      }

      v25 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v27 = v25;
      *(a1 + 48) = v26;
      v5 = 1;
      if (!v25)
      {
        goto LABEL_44;
      }

LABEL_25:
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

unsigned __int8 *TSCE::CellDependenciesArchive::_InternalSerialize(TSCE::CellDependenciesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::CellRecordArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 12);
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

  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CellDependenciesArchive::ByteSizeLong(TSCE::CellDependenciesArchive *this)
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
      v7 = TSCE::CellRecordArchive::ByteSizeLong(v6);
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
    v2 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSCE::CellDependenciesArchive::MergeFrom(TSCE::CellDependenciesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellDependenciesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellDependenciesArchive::MergeFrom(uint64_t this, const TSCE::CellDependenciesArchive *a2)
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
    this = sub_221568310(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

uint64_t *TSCE::CellDependenciesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellDependenciesArchive::Clear(this);

    return TSCE::CellDependenciesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellDependenciesArchive::CopyFrom(uint64_t *this, const TSCE::CellDependenciesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellDependenciesArchive::Clear(this);

    return TSCE::CellDependenciesArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL sub_2214F5E5C(uint64_t a1)
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
    result = (*(v3 + 16) & 6) == 6;
    if ((*(v3 + 16) & 6) != 6)
    {
      break;
    }

    v5 = *(v3 + 32);
    v6 = *(v3 + 40);
    while (v5 >= 1)
    {
      v7 = *(v6 + 8 * v5--);
      if ((~*(v7 + 16) & 0xE) != 0)
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

__n128 TSCE::CellDependenciesArchive::InternalSwap(__n128 *this, __n128 *a2)
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

TSCE::CellRecordExpandedArchive *TSCE::CellRecordExpandedArchive::CellRecordExpandedArchive(TSCE::CellRecordExpandedArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AB6B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellRecordExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 24) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2834AB6B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellRecordExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 24) = 0;
  *(this + 5) = 0;
  return this;
}

TSCE::CellRecordExpandedArchive *TSCE::CellRecordExpandedArchive::CellRecordExpandedArchive(TSCE::CellRecordExpandedArchive *this, const TSCE::CellRecordExpandedArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AB6B0;
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
  v7 = *(a2 + 2);
  *(this + 24) = *(a2 + 24);
  *(this + 2) = v7;
  return this;
}

void TSCE::CellRecordExpandedArchive::~CellRecordExpandedArchive(TSCE::CellRecordExpandedArchive *this)
{
  if (this != TSCE::_CellRecordExpandedArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::ExpandedEdgesArchive::~ExpandedEdgesArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::CellRecordExpandedArchive::~CellRecordExpandedArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::CellRecordExpandedArchive::default_instance(TSCE::CellRecordExpandedArchive *this)
{
  if (atomic_load_explicit(scc_info_CellRecordExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_CellRecordExpandedArchive_default_instance_;
}

uint64_t *TSCE::CellRecordExpandedArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    v3 = this[3];
    v4 = *(v3 + 8);
    this = (v3 + 8);
    *(this + 2) = 0;
    *(this + 6) = 0;
    *(this + 10) = 0;
    *(this + 14) = 0;
    *(this + 18) = 0;
    if (v4)
    {
      this = sub_221567398(this);
    }
  }

  if ((v2 & 0x3E) != 0)
  {
    v1[4] = 0;
    v1[5] = 0;
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TSCE::CellRecordExpandedArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v43 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v43) & 1) == 0)
  {
    while (1)
    {
      v7 = (v43 + 1);
      v8 = *v43;
      if ((*v43 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v43, (v9 - 128));
      v43 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_71;
      }

      v7 = TagFallback;
      v8 = v32;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v8 != 32)
          {
            goto LABEL_48;
          }

          v5 |= 0x10u;
          v22 = (v7 + 1);
          v21 = *v7;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if ((v23 & 0x80000000) == 0)
          {
            v22 = (v7 + 2);
LABEL_37:
            v43 = v22;
            *(a1 + 48) = v21 != 0;
            goto LABEL_56;
          }

          v35 = google::protobuf::internal::VarintParseSlow64(v7, v21);
          v43 = v35;
          *(a1 + 48) = v36 != 0;
          if (!v35)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v10 != 5)
          {
            if (v10 == 6 && v8 == 50)
            {
              *(a1 + 16) |= 1u;
              v15 = *(a1 + 24);
              if (!v15)
              {
                v16 = *(a1 + 8);
                if (v16)
                {
                  v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
                }

                v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ExpandedEdgesArchive>(v16);
                *(a1 + 24) = v15;
                v7 = v43;
              }

              v17 = sub_2216F924C(a3, v15, v7);
            }

            else
            {
LABEL_48:
              if (v8)
              {
                v30 = (v8 & 7) == 4;
              }

              else
              {
                v30 = 1;
              }

              if (v30)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_221567188((a1 + 8));
              }

              v17 = google::protobuf::internal::UnknownFieldParse();
            }

            v43 = v17;
            if (!v17)
            {
              goto LABEL_71;
            }

            goto LABEL_56;
          }

          if (v8 != 40)
          {
            goto LABEL_48;
          }

          v5 |= 0x20u;
          v28 = (v7 + 1);
          v27 = *v7;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_47;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if ((v29 & 0x80000000) == 0)
          {
            v28 = (v7 + 2);
LABEL_47:
            v43 = v28;
            *(a1 + 49) = v27 != 0;
            goto LABEL_56;
          }

          v41 = google::protobuf::internal::VarintParseSlow64(v7, v27);
          v43 = v41;
          *(a1 + 49) = v42 != 0;
          if (!v41)
          {
LABEL_71:
            v43 = 0;
            goto LABEL_2;
          }
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_48;
        }

        v5 |= 2u;
        v18 = (v7 + 1);
        LODWORD(v19) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_32:
          v43 = v18;
          *(a1 + 32) = v19;
          goto LABEL_56;
        }

        v33 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v43 = v33;
        *(a1 + 32) = v34;
        if (!v33)
        {
          goto LABEL_71;
        }
      }

      else if (v10 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_48;
        }

        v5 |= 4u;
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
          v43 = v24;
          *(a1 + 36) = v25;
          goto LABEL_56;
        }

        v39 = google::protobuf::internal::VarintParseSlow32(v7, v25);
        v43 = v39;
        *(a1 + 36) = v40;
        if (!v39)
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_48;
        }

        v5 |= 8u;
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
          v43 = v13;
          *(a1 + 40) = v12;
          goto LABEL_56;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v43 = v37;
        *(a1 + 40) = v38;
        if (!v37)
        {
          goto LABEL_71;
        }
      }

LABEL_56:
      if (sub_221567030(a3, &v43))
      {
        goto LABEL_2;
      }
    }

    v7 = (v43 + 2);
LABEL_6:
    v43 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v43;
}

unsigned __int8 *TSCE::CellRecordExpandedArchive::_InternalSerialize(TSCE::CellRecordExpandedArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
          goto LABEL_19;
        }
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_3:
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

LABEL_30:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 5);
    *a2 = 24;
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
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        a2[2] = v15;
        a2 += 3;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      a2[1] = v14;
      a2 += 2;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_41;
      }
    }

LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

LABEL_19:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(this + 9);
  *a2 = 16;
  if (v10 > 0x7F)
  {
    a2[1] = v10 | 0x80;
    v11 = v10 >> 7;
    if (v10 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v11 | 0x80;
        v12 = v11 >> 7;
        ++a2;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
      if ((v5 & 8) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      a2[2] = v11;
      a2 += 3;
      if ((v5 & 8) != 0)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    a2[1] = v10;
    a2 += 2;
    if ((v5 & 8) != 0)
    {
      goto LABEL_30;
    }
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_5;
  }

LABEL_41:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 48);
  *a2 = 32;
  a2[1] = v18;
  a2 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 49);
  *a2 = 40;
  a2[1] = v19;
  a2 += 2;
  if (v5)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 3);
    *a2 = 50;
    v21 = *(v20 + 24);
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

    a2 = TSCE::ExpandedEdgesArchive::_InternalSerialize(v20, v22, a3);
  }

LABEL_57:
  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CellRecordExpandedArchive::RequiredFieldsByteSizeFallback(TSCE::CellRecordExpandedArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    result = ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::CellRecordExpandedArchive::ByteSizeLong(TSCE::CellRecordExpandedArchive *this)
{
  v2 = *(this + 4);
  if ((~v2 & 6) != 0)
  {
    v3 = TSCE::CellRecordExpandedArchive::RequiredFieldsByteSizeFallback(this);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v2)
  {
LABEL_5:
    v4 = TSCE::ExpandedEdgesArchive::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 0x38) != 0)
  {
    if ((v2 & 8) != 0)
    {
      v3 += ((9 * (__clz(*(this + 5) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    v3 += ((v2 >> 4) & 2) + ((v2 >> 3) & 2);
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

uint64_t TSCE::CellRecordExpandedArchive::MergeFrom(TSCE::CellRecordExpandedArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellRecordExpandedArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellRecordExpandedArchive::MergeFrom(uint64_t this, const TSCE::CellRecordExpandedArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ExpandedEdgesArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCE::_ExpandedEdgesArchive_default_instance_;
      }

      this = TSCE::ExpandedEdgesArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_22;
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

      goto LABEL_23;
    }

LABEL_22:
    *(v3 + 36) = *(a2 + 9);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(v3 + 40) = *(a2 + 5);
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
      *(v3 + 49) = *(a2 + 49);
      goto LABEL_11;
    }

LABEL_24:
    *(v3 + 48) = *(a2 + 48);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSCE::CellRecordExpandedArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellRecordExpandedArchive::Clear(this);

    return TSCE::CellRecordExpandedArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellRecordExpandedArchive::CopyFrom(uint64_t *this, const TSCE::CellRecordExpandedArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellRecordExpandedArchive::Clear(this);

    return TSCE::CellRecordExpandedArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::CellRecordExpandedArchive::InternalSwap(TSCE::CellRecordExpandedArchive *this, TSCE::CellRecordExpandedArchive *a2)
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
  LOWORD(v8) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v8;
  return result;
}

TSCE::CellDependenciesExpandedArchive *TSCE::CellDependenciesExpandedArchive::CellDependenciesExpandedArchive(TSCE::CellDependenciesExpandedArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AB760;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_CellDependenciesExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::CellDependenciesExpandedArchive *TSCE::CellDependenciesExpandedArchive::CellDependenciesExpandedArchive(TSCE::CellDependenciesExpandedArchive *this, const TSCE::CellDependenciesExpandedArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AB760;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_221568454(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::CellDependenciesExpandedArchive::~CellDependenciesExpandedArchive(TSCE::CellDependenciesExpandedArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_2215683D0(this + 2);
}

{
  TSCE::CellDependenciesExpandedArchive::~CellDependenciesExpandedArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::CellDependenciesExpandedArchive::default_instance(TSCE::CellDependenciesExpandedArchive *this)
{
  if (atomic_load_explicit(scc_info_CellDependenciesExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CellDependenciesExpandedArchive_default_instance_;
}

uint64_t *TSCE::CellDependenciesExpandedArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellRecordExpandedArchive::Clear(v4);
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

google::protobuf::internal *TSCE::CellDependenciesExpandedArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellRecordExpandedArchive>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216F931C(a3, v13, v10);
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

unsigned __int8 *TSCE::CellDependenciesExpandedArchive::_InternalSerialize(TSCE::CellDependenciesExpandedArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::CellRecordExpandedArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CellDependenciesExpandedArchive::ByteSizeLong(TSCE::CellDependenciesExpandedArchive *this)
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
      v7 = TSCE::CellRecordExpandedArchive::ByteSizeLong(v6);
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

uint64_t TSCE::CellDependenciesExpandedArchive::MergeFrom(TSCE::CellDependenciesExpandedArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellDependenciesExpandedArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellDependenciesExpandedArchive::MergeFrom(uint64_t this, const TSCE::CellDependenciesExpandedArchive *a2)
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
    this = sub_221568454(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::CellDependenciesExpandedArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellDependenciesExpandedArchive::Clear(this);

    return TSCE::CellDependenciesExpandedArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellDependenciesExpandedArchive::CopyFrom(uint64_t *this, const TSCE::CellDependenciesExpandedArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellDependenciesExpandedArchive::Clear(this);

    return TSCE::CellDependenciesExpandedArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::CellDependenciesExpandedArchive::IsInitialized(TSCE::CellDependenciesExpandedArchive *this)
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

  while ((~*(v3 + 16) & 6) == 0);
  return v2 < 1;
}

__n128 TSCE::CellDependenciesExpandedArchive::InternalSwap(TSCE::CellDependenciesExpandedArchive *this, TSCE::CellDependenciesExpandedArchive *a2)
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

TSCE::CellRecordTileArchive *TSCE::CellRecordTileArchive::CellRecordTileArchive(TSCE::CellRecordTileArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AB810;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CellRecordTileArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 6) = 0;
  return this;
}

TSCE::CellRecordTileArchive *TSCE::CellRecordTileArchive::CellRecordTileArchive(TSCE::CellRecordTileArchive *this, const TSCE::CellRecordTileArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AB810;
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
    sub_221568454(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  v11 = *(a2 + 6);
  *(this + 14) = *(a2 + 14);
  *(this + 6) = v11;
  return this;
}

void TSCE::CellRecordTileArchive::~CellRecordTileArchive(TSCE::CellRecordTileArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_2215683D0(this + 3);
}

{
  TSCE::CellRecordTileArchive::~CellRecordTileArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::CellRecordTileArchive::default_instance(TSCE::CellRecordTileArchive *this)
{
  if (atomic_load_explicit(scc_info_CellRecordTileArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CellRecordTileArchive_default_instance_;
}

uint64_t *TSCE::CellRecordTileArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellRecordExpandedArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if ((*(v1 + 16) & 7) != 0)
  {
    *(v1 + 56) = 0;
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

google::protobuf::internal *TSCE::CellRecordTileArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v38) & 1) == 0)
  {
    while (1)
    {
      v7 = (v38 + 1);
      v8 = *v38;
      if ((*v38 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v9 - 128));
      v38 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_61;
      }

      v7 = TagFallback;
      v8 = v31;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 != 3)
        {
          if (v10 != 4 || v8 != 34)
          {
LABEL_43:
            if (v8)
            {
              v29 = (v8 & 7) == 4;
            }

            else
            {
              v29 = 1;
            }

            if (v29)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v38 = google::protobuf::internal::UnknownFieldParse();
            if (!v38)
            {
LABEL_61:
              v38 = 0;
              goto LABEL_2;
            }

            goto LABEL_50;
          }

          v15 = (v7 - 1);
          while (2)
          {
            v16 = (v15 + 1);
            v38 = (v15 + 1);
            v17 = *(a1 + 40);
            if (!v17)
            {
LABEL_23:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v17 = *(a1 + 40);
              v18 = *v17;
              goto LABEL_24;
            }

            v22 = *(a1 + 32);
            v18 = *v17;
            if (v22 >= *v17)
            {
              if (v18 == *(a1 + 36))
              {
                goto LABEL_23;
              }

LABEL_24:
              *v17 = v18 + 1;
              v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellRecordExpandedArchive>(*(a1 + 24));
              v20 = *(a1 + 32);
              v21 = *(a1 + 40) + 8 * v20;
              *(a1 + 32) = v20 + 1;
              *(v21 + 8) = v19;
              v16 = v38;
            }

            else
            {
              *(a1 + 32) = v22 + 1;
              v19 = *&v17[2 * v22 + 2];
            }

            v15 = sub_2216F931C(a3, v19, v16);
            v38 = v15;
            if (!v15)
            {
              goto LABEL_61;
            }

            if (*a3 <= v15 || *v15 != 34)
            {
              goto LABEL_50;
            }

            continue;
          }
        }

        if (v8 != 24)
        {
          goto LABEL_43;
        }

        v5 |= 4u;
        v26 = (v7 + 1);
        LODWORD(v27) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v28 = *v26;
        v27 = (v27 + (v28 << 7) - 128);
        if ((v28 & 0x80000000) == 0)
        {
          v26 = (v7 + 2);
LABEL_42:
          v38 = v26;
          *(a1 + 56) = v27;
          goto LABEL_50;
        }

        v36 = google::protobuf::internal::VarintParseSlow32(v7, v27);
        v38 = v36;
        *(a1 + 56) = v37;
        if (!v36)
        {
          goto LABEL_61;
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_43;
        }

        v5 |= 1u;
        v23 = (v7 + 1);
        LODWORD(v24) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v25 = *v23;
        v24 = (v24 + (v25 << 7) - 128);
        if ((v25 & 0x80000000) == 0)
        {
          v23 = (v7 + 2);
LABEL_37:
          v38 = v23;
          *(a1 + 48) = v24;
          goto LABEL_50;
        }

        v34 = google::protobuf::internal::VarintParseSlow32(v7, v24);
        v38 = v34;
        *(a1 + 48) = v35;
        if (!v34)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_43;
        }

        v5 |= 2u;
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
          v38 = v12;
          *(a1 + 52) = v13;
          goto LABEL_50;
        }

        v32 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v38 = v32;
        *(a1 + 52) = v33;
        if (!v32)
        {
          goto LABEL_61;
        }
      }

LABEL_50:
      if (sub_221567030(a3, &v38))
      {
        goto LABEL_2;
      }
    }

    v7 = (v38 + 2);
LABEL_6:
    v38 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v38;
}

unsigned __int8 *TSCE::CellRecordTileArchive::_InternalSerialize(TSCE::CellRecordTileArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 12);
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

  v14 = *(this + 13);
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

  v6 = *(this + 14);
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
      *a2 = 34;
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

      a2 = TSCE::CellRecordExpandedArchive::_InternalSerialize(v20, v22, a3);
    }
  }

  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CellRecordTileArchive::RequiredFieldsByteSizeFallback(TSCE::CellRecordTileArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    result += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::CellRecordTileArchive::ByteSizeLong(TSCE::CellRecordTileArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v3 = TSCE::CellRecordTileArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = vshr_n_u32(vmla_s32(0x4900000049, veor_s8(vclz_s32((*(this + 52) | 0x100000001)), 0x1F0000001FLL), 0x900000009), 6uLL);
    v3 = v2.i32[0] + ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + v2.i32[1] + 3;
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
      v10 = TSCE::CellRecordExpandedArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
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

uint64_t TSCE::CellRecordTileArchive::MergeFrom(TSCE::CellRecordTileArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellRecordTileArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellRecordTileArchive::MergeFrom(uint64_t this, const TSCE::CellRecordTileArchive *a2)
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
    this = sub_221568454(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
      *(v3 + 48) = *(a2 + 12);
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
        *(v3 + 56) = *(a2 + 14);
        goto LABEL_11;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 52) = *(a2 + 13);
    if ((v10 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSCE::CellRecordTileArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellRecordTileArchive::Clear(this);

    return TSCE::CellRecordTileArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellRecordTileArchive::CopyFrom(uint64_t *this, const TSCE::CellRecordTileArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellRecordTileArchive::Clear(this);

    return TSCE::CellRecordTileArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::CellRecordTileArchive::IsInitialized(TSCE::CellRecordTileArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
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

  while ((~*(v4 + 16) & 6) == 0);
  return result;
}

__n128 TSCE::CellRecordTileArchive::InternalSwap(__n128 *this, __n128 *a2)
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

uint64_t TSCE::CellDependenciesTiledArchive::clear_cell_record_tiles(uint64_t this)
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

TSCE::CellDependenciesTiledArchive *TSCE::CellDependenciesTiledArchive::CellDependenciesTiledArchive(TSCE::CellDependenciesTiledArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AB8C0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_CellDependenciesTiledArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::CellDependenciesTiledArchive *TSCE::CellDependenciesTiledArchive::CellDependenciesTiledArchive(TSCE::CellDependenciesTiledArchive *this, const TSCE::CellDependenciesTiledArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AB8C0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_221568514(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::CellDependenciesTiledArchive::~CellDependenciesTiledArchive(TSCE::CellDependenciesTiledArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_2216E381C(this + 2);
}

{
  TSCE::CellDependenciesTiledArchive::~CellDependenciesTiledArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::CellDependenciesTiledArchive::default_instance(TSCE::CellDependenciesTiledArchive *this)
{
  if (atomic_load_explicit(scc_info_CellDependenciesTiledArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CellDependenciesTiledArchive_default_instance_;
}

uint64_t *TSCE::CellDependenciesTiledArchive::Clear(uint64_t *this)
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

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TSCE::CellDependenciesTiledArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = MEMORY[0x223DA0390](*(a1 + 16));
          LODWORD(v14) = v13;
          v15 = *(a1 + 24);
          v16 = *(a1 + 32) + 8 * v15;
          *(a1 + 24) = v15 + 1;
          *(v16 + 8) = v13;
          v10 = v21;
LABEL_22:
          v9 = sub_22170B7F8(a3, v14, v10);
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

unsigned __int8 *TSCE::CellDependenciesTiledArchive::_InternalSerialize(TSCE::CellDependenciesTiledArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CellDependenciesTiledArchive::ByteSizeLong(TSCE::CellDependenciesTiledArchive *this)
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

uint64_t TSCE::CellDependenciesTiledArchive::MergeFrom(TSCE::CellDependenciesTiledArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellDependenciesTiledArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellDependenciesTiledArchive::MergeFrom(uint64_t this, const TSCE::CellDependenciesTiledArchive *a2)
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
    this = sub_221568514(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::CellDependenciesTiledArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellDependenciesTiledArchive::Clear(this);

    return TSCE::CellDependenciesTiledArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellDependenciesTiledArchive::CopyFrom(uint64_t *this, const TSCE::CellDependenciesTiledArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellDependenciesTiledArchive::Clear(this);

    return TSCE::CellDependenciesTiledArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::CellDependenciesTiledArchive::IsInitialized(TSCE::CellDependenciesTiledArchive *this)
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
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSCE::CellDependenciesTiledArchive::InternalSwap(TSCE::CellDependenciesTiledArchive *this, TSCE::CellDependenciesTiledArchive *a2)
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

TSCE::VolatileDependenciesArchive *TSCE::VolatileDependenciesArchive::VolatileDependenciesArchive(TSCE::VolatileDependenciesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AB970;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *(this + 6) = 0;
  *(this + 7) = a2;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 10) = 0;
  *(this + 11) = a2;
  *(this + 12) = 0;
  *(this + 13) = a2;
  *(this + 14) = 0;
  *(this + 15) = a2;
  *(this + 16) = 0;
  *(this + 17) = a2;
  *(this + 18) = 0;
  *(this + 19) = a2;
  *(this + 20) = 0;
  *(this + 22) = a2;
  *(this + 21) = a2;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = a2;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 29) = a2;
  *(this + 30) = 0;
  *(this + 31) = a2;
  *(this + 32) = 0;
  *(this + 33) = a2;
  *(this + 34) = 0;
  *(this + 35) = a2;
  *(this + 36) = 0;
  *(this + 37) = a2;
  *(this + 38) = 0;
  *(this + 39) = a2;
  *(this + 80) = 0;
  if (atomic_load_explicit(scc_info_VolatileDependenciesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_2214F8F1C(_Unwind_Exception *a1)
{
  if (*(v1 + 308) >= 1)
  {
    sub_2216FF128(v3 + 14);
  }

  if (*(v1 + 292) >= 1)
  {
    v5 = *(v1 + 296);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(v1 + 276) >= 1)
  {
    v8 = *(v1 + 280);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  if (*(v1 + 260) >= 1)
  {
    v11 = *(v1 + 264);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  if (*(v1 + 244) >= 1)
  {
    v14 = *(v1 + 248);
    v16 = *(v14 - 8);
    v15 = (v14 - 8);
    if (!v16)
    {
      operator delete(v15);
    }
  }

  if (*(v1 + 228) >= 1)
  {
    v17 = *(v1 + 232);
    v19 = *(v17 - 8);
    v18 = (v17 - 8);
    if (!v19)
    {
      operator delete(v18);
    }
  }

  sub_22156865C(v3);
  sub_2215685C4(v2);
  if (*(v1 + 164) >= 1)
  {
    v20 = *(v1 + 168);
    v22 = *(v20 - 8);
    v21 = (v20 - 8);
    if (!v22)
    {
      operator delete(v21);
    }
  }

  if (*(v1 + 148) >= 1)
  {
    v23 = *(v1 + 152);
    v25 = *(v23 - 8);
    v24 = (v23 - 8);
    if (!v25)
    {
      operator delete(v24);
    }
  }

  if (*(v1 + 132) >= 1)
  {
    v26 = *(v1 + 136);
    v28 = *(v26 - 8);
    v27 = (v26 - 8);
    if (!v28)
    {
      operator delete(v27);
    }
  }

  if (*(v1 + 116) >= 1)
  {
    v29 = *(v1 + 120);
    v31 = *(v29 - 8);
    v30 = (v29 - 8);
    if (!v31)
    {
      operator delete(v30);
    }
  }

  if (*(v1 + 100) >= 1)
  {
    v32 = *(v1 + 104);
    v34 = *(v32 - 8);
    v33 = (v32 - 8);
    if (!v34)
    {
      operator delete(v33);
    }
  }

  if (*(v1 + 84) >= 1)
  {
    v35 = *(v1 + 88);
    v37 = *(v35 - 8);
    v36 = (v35 - 8);
    if (!v37)
    {
      operator delete(v36);
    }
  }

  if (*(v1 + 68) >= 1)
  {
    v38 = *(v1 + 72);
    v40 = *(v38 - 8);
    v39 = (v38 - 8);
    if (!v40)
    {
      operator delete(v39);
    }
  }

  if (*(v1 + 52) >= 1)
  {
    v41 = *(v1 + 56);
    v43 = *(v41 - 8);
    v42 = (v41 - 8);
    if (!v43)
    {
      operator delete(v42);
    }
  }

  if (*(v1 + 36) >= 1)
  {
    v44 = *(v1 + 40);
    v46 = *(v44 - 8);
    v45 = (v44 - 8);
    if (!v46)
    {
      operator delete(v45);
    }
  }

  if (*(v1 + 20) >= 1)
  {
    v47 = *(v1 + 24);
    v49 = *(v47 - 8);
    v48 = (v47 - 8);
    if (!v49)
    {
      operator delete(v48);
    }
  }

  _Unwind_Resume(a1);
}

TSCE::VolatileDependenciesArchive *TSCE::VolatileDependenciesArchive::VolatileDependenciesArchive(TSCE::VolatileDependenciesArchive *this, const TSCE::VolatileDependenciesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2834AB970;
  *(this + 3) = 0;
  v6 = *(a2 + 4);
  if (v6)
  {
    sub_2210BBC64(v5, v6);
    v7 = *(this + 3);
    *(this + 4) += *(a2 + 4);
    memcpy(v7, *(a2 + 3), 4 * *(a2 + 4));
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  v8 = *(a2 + 8);
  if (v8)
  {
    sub_2210BBC64(this + 8, v8);
    v9 = *(this + 5);
    *(this + 8) += *(a2 + 8);
    memcpy(v9, *(a2 + 5), 4 * *(a2 + 8));
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  v10 = *(a2 + 12);
  if (v10)
  {
    sub_2210BBC64(this + 12, v10);
    v11 = *(this + 7);
    *(this + 12) += *(a2 + 12);
    memcpy(v11, *(a2 + 7), 4 * *(a2 + 12));
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  v12 = *(a2 + 16);
  if (v12)
  {
    sub_2210BBC64(this + 16, v12);
    v13 = *(this + 9);
    *(this + 16) += *(a2 + 16);
    memcpy(v13, *(a2 + 9), 4 * *(a2 + 16));
  }

  *(this + 10) = 0;
  *(this + 11) = 0;
  v14 = *(a2 + 20);
  if (v14)
  {
    sub_2210BBC64(this + 20, v14);
    v15 = *(this + 11);
    *(this + 20) += *(a2 + 20);
    memcpy(v15, *(a2 + 11), 4 * *(a2 + 20));
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  v16 = *(a2 + 24);
  if (v16)
  {
    sub_2210BBC64(this + 24, v16);
    v17 = *(this + 13);
    *(this + 24) += *(a2 + 24);
    memcpy(v17, *(a2 + 13), 4 * *(a2 + 24));
  }

  *(this + 14) = 0;
  *(this + 15) = 0;
  v18 = *(a2 + 28);
  if (v18)
  {
    sub_2210BBC64(this + 28, v18);
    v19 = *(this + 15);
    *(this + 28) += *(a2 + 28);
    memcpy(v19, *(a2 + 15), 4 * *(a2 + 28));
  }

  *(this + 16) = 0;
  *(this + 17) = 0;
  v20 = *(a2 + 32);
  if (v20)
  {
    sub_2210BBC64(this + 32, v20);
    v21 = *(this + 17);
    *(this + 32) += *(a2 + 32);
    memcpy(v21, *(a2 + 17), 4 * *(a2 + 32));
  }

  *(this + 18) = 0;
  *(this + 19) = 0;
  v22 = *(a2 + 36);
  if (v22)
  {
    sub_2210BBC64(this + 36, v22);
    v23 = *(this + 19);
    *(this + 36) += *(a2 + 36);
    memcpy(v23, *(a2 + 19), 4 * *(a2 + 36));
  }

  *(this + 20) = 0;
  *(this + 21) = 0;
  v24 = *(a2 + 40);
  if (v24)
  {
    sub_2210BBC64(this + 40, v24);
    v25 = *(this + 21);
    *(this + 40) += *(a2 + 40);
    memcpy(v25, *(a2 + 21), 4 * *(a2 + 40));
  }

  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  v26 = *(a2 + 46);
  if (v26)
  {
    v27 = *(a2 + 24);
    v28 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 176));
    sub_2215686E0(this + 176, v28, (v27 + 8), v26, **(this + 24) - *(this + 46));
    v29 = *(this + 46) + v26;
    *(this + 46) = v29;
    v30 = *(this + 24);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  v31 = *(a2 + 52);
  if (v31)
  {
    v32 = *(a2 + 27);
    v33 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 200));
    sub_2215687A0(this + 200, v33, (v32 + 8), v31, **(this + 27) - *(this + 52));
    v34 = *(this + 52) + v31;
    *(this + 52) = v34;
    v35 = *(this + 27);
    if (*v35 < v34)
    {
      *v35 = v34;
    }
  }

  *(this + 28) = 0;
  *(this + 29) = 0;
  v36 = *(a2 + 56);
  if (v36)
  {
    sub_2210BBC64(this + 56, v36);
    v37 = *(this + 29);
    *(this + 56) += *(a2 + 56);
    memcpy(v37, *(a2 + 29), 4 * *(a2 + 56));
  }

  *(this + 30) = 0;
  *(this + 31) = 0;
  v38 = *(a2 + 60);
  if (v38)
  {
    sub_2210BBC64(this + 60, v38);
    v39 = *(this + 31);
    *(this + 60) += *(a2 + 60);
    memcpy(v39, *(a2 + 31), 4 * *(a2 + 60));
  }

  *(this + 32) = 0;
  *(this + 33) = 0;
  v40 = *(a2 + 64);
  if (v40)
  {
    sub_2210BBC64(this + 64, v40);
    v41 = *(this + 33);
    *(this + 64) += *(a2 + 64);
    memcpy(v41, *(a2 + 33), 4 * *(a2 + 64));
  }

  *(this + 34) = 0;
  *(this + 35) = 0;
  v42 = *(a2 + 68);
  if (v42)
  {
    sub_2210BBC64(this + 68, v42);
    v43 = *(this + 35);
    *(this + 68) += *(a2 + 68);
    memcpy(v43, *(a2 + 35), 4 * *(a2 + 68));
  }

  *(this + 36) = 0;
  *(this + 37) = 0;
  v44 = *(a2 + 72);
  if (v44)
  {
    sub_2210BBC64(this + 72, v44);
    v45 = *(this + 37);
    *(this + 72) += *(a2 + 72);
    memcpy(v45, *(a2 + 37), 4 * *(a2 + 72));
  }

  *(this + 38) = 0;
  *(this + 39) = 0;
  v46 = *(a2 + 76);
  if (v46)
  {
    sub_2210BBC64(this + 76, v46);
    v47 = *(this + 39);
    *(this + 76) += *(a2 + 76);
    memcpy(v47, *(a2 + 39), 4 * *(a2 + 76));
  }

  *(this + 80) = 0;
  v48 = *(a2 + 1);
  if (v48)
  {
    sub_22156734C(v4, (v48 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_2214F95CC(_Unwind_Exception *a1)
{
  if (*(v1 + 308) >= 1)
  {
    v5 = *(v1 + 312);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(v1 + 292) >= 1)
  {
    v8 = *(v1 + 296);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  if (*(v1 + 276) >= 1)
  {
    v11 = *(v1 + 280);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  if (*(v1 + 260) >= 1)
  {
    v14 = *(v1 + 264);
    v16 = *(v14 - 8);
    v15 = (v14 - 8);
    if (!v16)
    {
      operator delete(v15);
    }
  }

  if (*(v1 + 244) >= 1)
  {
    v17 = *(v1 + 248);
    v19 = *(v17 - 8);
    v18 = (v17 - 8);
    if (!v19)
    {
      operator delete(v18);
    }
  }

  if (*(v1 + 228) >= 1)
  {
    v20 = *(v1 + 232);
    v22 = *(v20 - 8);
    v21 = (v20 - 8);
    if (!v22)
    {
      operator delete(v21);
    }
  }

  sub_22156865C(v3);
  sub_2215685C4(v2);
  if (*(v1 + 164) >= 1)
  {
    v23 = *(v1 + 168);
    v25 = *(v23 - 8);
    v24 = (v23 - 8);
    if (!v25)
    {
      operator delete(v24);
    }
  }

  if (*(v1 + 148) >= 1)
  {
    v26 = *(v1 + 152);
    v28 = *(v26 - 8);
    v27 = (v26 - 8);
    if (!v28)
    {
      operator delete(v27);
    }
  }

  if (*(v1 + 132) >= 1)
  {
    v29 = *(v1 + 136);
    v31 = *(v29 - 8);
    v30 = (v29 - 8);
    if (!v31)
    {
      operator delete(v30);
    }
  }

  if (*(v1 + 116) >= 1)
  {
    v32 = *(v1 + 120);
    v34 = *(v32 - 8);
    v33 = (v32 - 8);
    if (!v34)
    {
      operator delete(v33);
    }
  }

  if (*(v1 + 100) >= 1)
  {
    v35 = *(v1 + 104);
    v37 = *(v35 - 8);
    v36 = (v35 - 8);
    if (!v37)
    {
      operator delete(v36);
    }
  }

  if (*(v1 + 84) >= 1)
  {
    v38 = *(v1 + 88);
    v40 = *(v38 - 8);
    v39 = (v38 - 8);
    if (!v40)
    {
      operator delete(v39);
    }
  }

  if (*(v1 + 68) >= 1)
  {
    v41 = *(v1 + 72);
    v43 = *(v41 - 8);
    v42 = (v41 - 8);
    if (!v43)
    {
      operator delete(v42);
    }
  }

  if (*(v1 + 52) >= 1)
  {
    v44 = *(v1 + 56);
    v46 = *(v44 - 8);
    v45 = (v44 - 8);
    if (!v46)
    {
      operator delete(v45);
    }
  }

  if (*(v1 + 36) >= 1)
  {
    v47 = *(v1 + 40);
    v49 = *(v47 - 8);
    v48 = (v47 - 8);
    if (!v49)
    {
      operator delete(v48);
    }
  }

  if (*(v1 + 20) >= 1)
  {
    v50 = *(v1 + 24);
    v52 = *(v50 - 8);
    v51 = (v50 - 8);
    if (!v52)
    {
      operator delete(v51);
    }
  }

  _Unwind_Resume(a1);
}

void TSCE::VolatileDependenciesArchive::~VolatileDependenciesArchive(TSCE::VolatileDependenciesArchive *this)
{
  sub_2214DFCF8(this + 1);
  if (*(this + 77) >= 1)
  {
    v2 = *(this + 39);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  if (*(this + 73) >= 1)
  {
    v5 = *(this + 37);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(this + 69) >= 1)
  {
    v8 = *(this + 35);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  if (*(this + 65) >= 1)
  {
    v11 = *(this + 33);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  if (*(this + 61) >= 1)
  {
    v14 = *(this + 31);
    v16 = *(v14 - 8);
    v15 = (v14 - 8);
    if (!v16)
    {
      operator delete(v15);
    }
  }

  if (*(this + 57) >= 1)
  {
    v17 = *(this + 29);
    v19 = *(v17 - 8);
    v18 = (v17 - 8);
    if (!v19)
    {
      operator delete(v18);
    }
  }

  sub_22156865C(this + 25);
  sub_2215685C4(this + 22);
  if (*(this + 41) >= 1)
  {
    v20 = *(this + 21);
    v22 = *(v20 - 8);
    v21 = (v20 - 8);
    if (!v22)
    {
      operator delete(v21);
    }
  }

  if (*(this + 37) >= 1)
  {
    v23 = *(this + 19);
    v25 = *(v23 - 8);
    v24 = (v23 - 8);
    if (!v25)
    {
      operator delete(v24);
    }
  }

  if (*(this + 33) >= 1)
  {
    v26 = *(this + 17);
    v28 = *(v26 - 8);
    v27 = (v26 - 8);
    if (!v28)
    {
      operator delete(v27);
    }
  }

  if (*(this + 29) >= 1)
  {
    v29 = *(this + 15);
    v31 = *(v29 - 8);
    v30 = (v29 - 8);
    if (!v31)
    {
      operator delete(v30);
    }
  }

  if (*(this + 25) >= 1)
  {
    v32 = *(this + 13);
    v34 = *(v32 - 8);
    v33 = (v32 - 8);
    if (!v34)
    {
      operator delete(v33);
    }
  }

  if (*(this + 21) >= 1)
  {
    v35 = *(this + 11);
    v37 = *(v35 - 8);
    v36 = (v35 - 8);
    if (!v37)
    {
      operator delete(v36);
    }
  }

  if (*(this + 17) >= 1)
  {
    v38 = *(this + 9);
    v40 = *(v38 - 8);
    v39 = (v38 - 8);
    if (!v40)
    {
      operator delete(v39);
    }
  }

  if (*(this + 13) >= 1)
  {
    v41 = *(this + 7);
    v43 = *(v41 - 8);
    v42 = (v41 - 8);
    if (!v43)
    {
      operator delete(v42);
    }
  }

  if (*(this + 9) >= 1)
  {
    v44 = *(this + 5);
    v46 = *(v44 - 8);
    v45 = (v44 - 8);
    if (!v46)
    {
      operator delete(v45);
    }
  }

  if (*(this + 5) >= 1)
  {
    v47 = *(this + 3);
    v49 = *(v47 - 8);
    v48 = (v47 - 8);
    if (!v49)
    {
      operator delete(v48);
    }
  }
}

{
  TSCE::VolatileDependenciesArchive::~VolatileDependenciesArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::VolatileDependenciesArchive::default_instance(TSCE::VolatileDependenciesArchive *this)
{
  if (atomic_load_explicit(scc_info_VolatileDependenciesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_VolatileDependenciesArchive_default_instance_;
}

uint64_t *TSCE::VolatileDependenciesArchive::Clear(uint64_t *this)
{
  v1 = this;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 40) = 0;
  v2 = *(this + 46);
  if (v2 >= 1)
  {
    v3 = (this[24] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellCoordinateArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 184) = 0;
  }

  v5 = *(v1 + 208);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 216) + 8);
    do
    {
      v7 = *v6++;
      this = TSCE::CellReferenceArchive::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 208) = 0;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 216) = 0;
  *(v8 + 232) = 0;
  *(v8 + 248) = 0;
  *(v8 + 264) = 0;
  *(v8 + 280) = 0;
  *(v8 + 296) = 0;
  if (v9)
  {

    return sub_221567398(v8);
  }

  return this;
}

google::protobuf::internal *TSCE::VolatileDependenciesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v125 = a2;
  if (sub_221567030(a3, &v125))
  {
    return v125;
  }

  while (2)
  {
    v6 = (v125 + 1);
    v7 = *v125;
    if ((*v125 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v125 + 2);
LABEL_6:
      v125 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v125, (v8 - 128));
    v125 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v16;
LABEL_7:
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 8)
        {
          if (v7 != 10)
          {
            goto LABEL_292;
          }

          goto LABEL_291;
        }

        v9 = v6 - 1;
        while (1)
        {
          v125 = (v9 + 1);
          v10 = v9[1];
          if (v9[1] < 0)
          {
            v11 = v10 + (v9[2] << 7);
            v10 = v11 - 128;
            if (v9[2] < 0)
            {
              v9 = google::protobuf::internal::VarintParseSlow32((v9 + 1), (v11 - 128));
              v10 = v12;
            }

            else
            {
              v9 += 3;
            }
          }

          else
          {
            v9 += 2;
          }

          v125 = v9;
          v13 = *(a1 + 16);
          if (v13 == *(a1 + 20))
          {
            v14 = v13 + 1;
            sub_2210BBC64((a1 + 16), v13 + 1);
            *(*(a1 + 24) + 4 * v13) = v10;
            v9 = v125;
          }

          else
          {
            *(*(a1 + 24) + 4 * v13) = v10;
            v14 = v13 + 1;
          }

          *(a1 + 16) = v14;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 8)
          {
            goto LABEL_300;
          }
        }

      case 2u:
        if (v7 == 16)
        {
          v43 = v6 - 1;
          while (1)
          {
            v125 = (v43 + 1);
            v44 = v43[1];
            if (v43[1] < 0)
            {
              v45 = v44 + (v43[2] << 7);
              v44 = v45 - 128;
              if (v43[2] < 0)
              {
                v43 = google::protobuf::internal::VarintParseSlow32((v43 + 1), (v45 - 128));
                v44 = v46;
              }

              else
              {
                v43 += 3;
              }
            }

            else
            {
              v43 += 2;
            }

            v125 = v43;
            v47 = *(a1 + 32);
            if (v47 == *(a1 + 36))
            {
              v48 = v47 + 1;
              sub_2210BBC64((a1 + 32), v47 + 1);
              *(*(a1 + 40) + 4 * v47) = v44;
              v43 = v125;
            }

            else
            {
              *(*(a1 + 40) + 4 * v47) = v44;
              v48 = v47 + 1;
            }

            *(a1 + 32) = v48;
            if (!v43)
            {
              return 0;
            }

            if (*a3 <= v43 || *v43 != 16)
            {
              goto LABEL_300;
            }
          }
        }

        if (v7 == 18)
        {
          goto LABEL_291;
        }

        goto LABEL_292;
      case 3u:
        if (v7 == 24)
        {
          v69 = v6 - 1;
          while (1)
          {
            v125 = (v69 + 1);
            v70 = v69[1];
            if (v69[1] < 0)
            {
              v71 = v70 + (v69[2] << 7);
              v70 = v71 - 128;
              if (v69[2] < 0)
              {
                v69 = google::protobuf::internal::VarintParseSlow32((v69 + 1), (v71 - 128));
                v70 = v72;
              }

              else
              {
                v69 += 3;
              }
            }

            else
            {
              v69 += 2;
            }

            v125 = v69;
            v73 = *(a1 + 48);
            if (v73 == *(a1 + 52))
            {
              v74 = v73 + 1;
              sub_2210BBC64((a1 + 48), v73 + 1);
              *(*(a1 + 56) + 4 * v73) = v70;
              v69 = v125;
            }

            else
            {
              *(*(a1 + 56) + 4 * v73) = v70;
              v74 = v73 + 1;
            }

            *(a1 + 48) = v74;
            if (!v69)
            {
              return 0;
            }

            if (*a3 <= v69 || *v69 != 24)
            {
              goto LABEL_300;
            }
          }
        }

        if (v7 == 26)
        {
          goto LABEL_291;
        }

        goto LABEL_292;
      case 4u:
        if (v7 == 32)
        {
          v63 = v6 - 1;
          while (1)
          {
            v125 = (v63 + 1);
            v64 = v63[1];
            if (v63[1] < 0)
            {
              v65 = v64 + (v63[2] << 7);
              v64 = v65 - 128;
              if (v63[2] < 0)
              {
                v63 = google::protobuf::internal::VarintParseSlow32((v63 + 1), (v65 - 128));
                v64 = v66;
              }

              else
              {
                v63 += 3;
              }
            }

            else
            {
              v63 += 2;
            }

            v125 = v63;
            v67 = *(a1 + 64);
            if (v67 == *(a1 + 68))
            {
              v68 = v67 + 1;
              sub_2210BBC64((a1 + 64), v67 + 1);
              *(*(a1 + 72) + 4 * v67) = v64;
              v63 = v125;
            }

            else
            {
              *(*(a1 + 72) + 4 * v67) = v64;
              v68 = v67 + 1;
            }

            *(a1 + 64) = v68;
            if (!v63)
            {
              return 0;
            }

            if (*a3 <= v63 || *v63 != 32)
            {
              goto LABEL_300;
            }
          }
        }

        if (v7 == 34)
        {
          goto LABEL_291;
        }

        goto LABEL_292;
      case 5u:
        if (v7 == 40)
        {
          v31 = v6 - 1;
          while (1)
          {
            v125 = (v31 + 1);
            v32 = v31[1];
            if (v31[1] < 0)
            {
              v33 = v32 + (v31[2] << 7);
              v32 = v33 - 128;
              if (v31[2] < 0)
              {
                v31 = google::protobuf::internal::VarintParseSlow32((v31 + 1), (v33 - 128));
                v32 = v34;
              }

              else
              {
                v31 += 3;
              }
            }

            else
            {
              v31 += 2;
            }

            v125 = v31;
            v35 = *(a1 + 80);
            if (v35 == *(a1 + 84))
            {
              v36 = v35 + 1;
              sub_2210BBC64((a1 + 80), v35 + 1);
              *(*(a1 + 88) + 4 * v35) = v32;
              v31 = v125;
            }

            else
            {
              *(*(a1 + 88) + 4 * v35) = v32;
              v36 = v35 + 1;
            }

            *(a1 + 80) = v36;
            if (!v31)
            {
              return 0;
            }

            if (*a3 <= v31 || *v31 != 40)
            {
              goto LABEL_300;
            }
          }
        }

        if (v7 == 42)
        {
          goto LABEL_291;
        }

        goto LABEL_292;
      case 6u:
        if (v7 == 48)
        {
          v49 = v6 - 1;
          while (1)
          {
            v125 = (v49 + 1);
            v50 = v49[1];
            if (v49[1] < 0)
            {
              v51 = v50 + (v49[2] << 7);
              v50 = v51 - 128;
              if (v49[2] < 0)
              {
                v49 = google::protobuf::internal::VarintParseSlow32((v49 + 1), (v51 - 128));
                v50 = v52;
              }

              else
              {
                v49 += 3;
              }
            }

            else
            {
              v49 += 2;
            }

            v125 = v49;
            v53 = *(a1 + 96);
            if (v53 == *(a1 + 100))
            {
              v54 = v53 + 1;
              sub_2210BBC64((a1 + 96), v53 + 1);
              *(*(a1 + 104) + 4 * v53) = v50;
              v49 = v125;
            }

            else
            {
              *(*(a1 + 104) + 4 * v53) = v50;
              v54 = v53 + 1;
            }

            *(a1 + 96) = v54;
            if (!v49)
            {
              return 0;
            }

            if (*a3 <= v49 || *v49 != 48)
            {
              goto LABEL_300;
            }
          }
        }

        if (v7 == 50)
        {
          goto LABEL_291;
        }

        goto LABEL_292;
      case 7u:
        if (v7 == 56)
        {
          v75 = v6 - 1;
          while (1)
          {
            v125 = (v75 + 1);
            v76 = v75[1];
            if (v75[1] < 0)
            {
              v77 = v76 + (v75[2] << 7);
              v76 = v77 - 128;
              if (v75[2] < 0)
              {
                v75 = google::protobuf::internal::VarintParseSlow32((v75 + 1), (v77 - 128));
                v76 = v78;
              }

              else
              {
                v75 += 3;
              }
            }

            else
            {
              v75 += 2;
            }

            v125 = v75;
            v79 = *(a1 + 112);
            if (v79 == *(a1 + 116))
            {
              v80 = v79 + 1;
              sub_2210BBC64((a1 + 112), v79 + 1);
              *(*(a1 + 120) + 4 * v79) = v76;
              v75 = v125;
            }

            else
            {
              *(*(a1 + 120) + 4 * v79) = v76;
              v80 = v79 + 1;
            }

            *(a1 + 112) = v80;
            if (!v75)
            {
              return 0;
            }

            if (*a3 <= v75 || *v75 != 56)
            {
              goto LABEL_300;
            }
          }
        }

        if (v7 == 58)
        {
          goto LABEL_291;
        }

        goto LABEL_292;
      case 8u:
        if (v7 == 64)
        {
          v81 = v6 - 1;
          while (1)
          {
            v125 = (v81 + 1);
            v82 = v81[1];
            if (v81[1] < 0)
            {
              v83 = v82 + (v81[2] << 7);
              v82 = v83 - 128;
              if (v81[2] < 0)
              {
                v81 = google::protobuf::internal::VarintParseSlow32((v81 + 1), (v83 - 128));
                v82 = v84;
              }

              else
              {
                v81 += 3;
              }
            }

            else
            {
              v81 += 2;
            }

            v125 = v81;
            v85 = *(a1 + 128);
            if (v85 == *(a1 + 132))
            {
              v86 = v85 + 1;
              sub_2210BBC64((a1 + 128), v85 + 1);
              *(*(a1 + 136) + 4 * v85) = v82;
              v81 = v125;
            }

            else
            {
              *(*(a1 + 136) + 4 * v85) = v82;
              v86 = v85 + 1;
            }

            *(a1 + 128) = v86;
            if (!v81)
            {
              return 0;
            }

            if (*a3 <= v81 || *v81 != 64)
            {
              goto LABEL_300;
            }
          }
        }

        if (v7 == 66)
        {
          goto LABEL_291;
        }

        goto LABEL_292;
      case 9u:
        if (v7 == 72)
        {
          v105 = v6 - 1;
          while (1)
          {
            v125 = (v105 + 1);
            v106 = v105[1];
            if (v105[1] < 0)
            {
              v107 = v106 + (v105[2] << 7);
              v106 = v107 - 128;
              if (v105[2] < 0)
              {
                v105 = google::protobuf::internal::VarintParseSlow32((v105 + 1), (v107 - 128));
                v106 = v108;
              }

              else
              {
                v105 += 3;
              }
            }

            else
            {
              v105 += 2;
            }

            v125 = v105;
            v109 = *(a1 + 144);
            if (v109 == *(a1 + 148))
            {
              v110 = v109 + 1;
              sub_2210BBC64((a1 + 144), v109 + 1);
              *(*(a1 + 152) + 4 * v109) = v106;
              v105 = v125;
            }

            else
            {
              *(*(a1 + 152) + 4 * v109) = v106;
              v110 = v109 + 1;
            }

            *(a1 + 144) = v110;
            if (!v105)
            {
              return 0;
            }

            if (*a3 <= v105 || *v105 != 72)
            {
              goto LABEL_300;
            }
          }
        }

        if (v7 == 74)
        {
          goto LABEL_291;
        }

        goto LABEL_292;
      case 0xAu:
        if (v7 == 80)
        {
          v99 = v6 - 1;
          while (1)
          {
            v125 = (v99 + 1);
            v100 = v99[1];
            if (v99[1] < 0)
            {
              v101 = v100 + (v99[2] << 7);
              v100 = v101 - 128;
              if (v99[2] < 0)
              {
                v99 = google::protobuf::internal::VarintParseSlow32((v99 + 1), (v101 - 128));
                v100 = v102;
              }

              else
              {
                v99 += 3;
              }
            }

            else
            {
              v99 += 2;
            }

            v125 = v99;
            v103 = *(a1 + 160);
            if (v103 == *(a1 + 164))
            {
              v104 = v103 + 1;
              sub_2210BBC64((a1 + 160), v103 + 1);
              *(*(a1 + 168) + 4 * v103) = v100;
              v99 = v125;
            }

            else
            {
              *(*(a1 + 168) + 4 * v103) = v100;
              v104 = v103 + 1;
            }

            *(a1 + 160) = v104;
            if (!v99)
            {
              return 0;
            }

            if (*a3 <= v99 || *v99 != 80)
            {
              goto LABEL_300;
            }
          }
        }

        if (v7 == 82)
        {
          goto LABEL_291;
        }

        goto LABEL_292;
      case 0xBu:
        if (v7 != 90)
        {
          goto LABEL_292;
        }

        v23 = (v6 - 1);
        while (1)
        {
          v24 = (v23 + 1);
          v125 = (v23 + 1);
          v25 = *(a1 + 192);
          if (!v25)
          {
            goto LABEL_41;
          }

          v30 = *(a1 + 184);
          v26 = *v25;
          if (v30 < *v25)
          {
            *(a1 + 184) = v30 + 1;
            v27 = *&v25[2 * v30 + 2];
            goto LABEL_45;
          }

          if (v26 == *(a1 + 188))
          {
LABEL_41:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 176));
            v25 = *(a1 + 192);
            v26 = *v25;
          }

          *v25 = v26 + 1;
          v27 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(*(a1 + 176));
          v28 = *(a1 + 184);
          v29 = *(a1 + 192) + 8 * v28;
          *(a1 + 184) = v28 + 1;
          *(v29 + 8) = v27;
          v24 = v125;
LABEL_45:
          v23 = sub_2216F806C(a3, v27, v24);
          v125 = v23;
          if (!v23)
          {
            return 0;
          }

          if (*a3 <= v23 || *v23 != 90)
          {
            goto LABEL_300;
          }
        }

      case 0xDu:
        if (v7 != 106)
        {
          goto LABEL_292;
        }

        v55 = (v6 - 1);
        while (1)
        {
          v56 = (v55 + 1);
          v125 = (v55 + 1);
          v57 = *(a1 + 216);
          if (!v57)
          {
            goto LABEL_110;
          }

          v62 = *(a1 + 208);
          v58 = *v57;
          if (v62 < *v57)
          {
            *(a1 + 208) = v62 + 1;
            v59 = *&v57[2 * v62 + 2];
            goto LABEL_114;
          }

          if (v58 == *(a1 + 212))
          {
LABEL_110:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 200));
            v57 = *(a1 + 216);
            v58 = *v57;
          }

          *v57 = v58 + 1;
          v59 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(*(a1 + 200));
          v60 = *(a1 + 208);
          v61 = *(a1 + 216) + 8 * v60;
          *(a1 + 208) = v60 + 1;
          *(v61 + 8) = v59;
          v56 = v125;
LABEL_114:
          v55 = sub_2216F8E3C(a3, v59, v56);
          v125 = v55;
          if (!v55)
          {
            return 0;
          }

          if (*a3 <= v55 || *v55 != 106)
          {
            goto LABEL_300;
          }
        }

      case 0xFu:
        if (v7 == 120)
        {
          v37 = v6 - 1;
          while (1)
          {
            v125 = (v37 + 1);
            v38 = v37[1];
            if (v37[1] < 0)
            {
              v39 = v38 + (v37[2] << 7);
              v38 = v39 - 128;
              if (v37[2] < 0)
              {
                v37 = google::protobuf::internal::VarintParseSlow32((v37 + 1), (v39 - 128));
                v38 = v40;
              }

              else
              {
                v37 += 3;
              }
            }

            else
            {
              v37 += 2;
            }

            v125 = v37;
            v41 = *(a1 + 224);
            if (v41 == *(a1 + 228))
            {
              v42 = v41 + 1;
              sub_2210BBC64((a1 + 224), v41 + 1);
              *(*(a1 + 232) + 4 * v41) = v38;
              v37 = v125;
            }

            else
            {
              *(*(a1 + 232) + 4 * v41) = v38;
              v42 = v41 + 1;
            }

            *(a1 + 224) = v42;
            if (!v37)
            {
              return 0;
            }

            if (*a3 <= v37 || *v37 != 120)
            {
              goto LABEL_300;
            }
          }
        }

        if (v7 == 122)
        {
          goto LABEL_291;
        }

        goto LABEL_292;
      case 0x10u:
        if (v7 == 128)
        {
          v17 = v6 - 2;
          while (1)
          {
            v125 = (v17 + 2);
            v18 = v17[2];
            if (v17[2] < 0)
            {
              v19 = v18 + (v17[3] << 7);
              v18 = v19 - 128;
              if (v17[3] < 0)
              {
                v17 = google::protobuf::internal::VarintParseSlow32((v17 + 2), (v19 - 128));
                v18 = v20;
              }

              else
              {
                v17 += 4;
              }
            }

            else
            {
              v17 += 3;
            }

            v125 = v17;
            v21 = *(a1 + 240);
            if (v21 == *(a1 + 244))
            {
              v22 = v21 + 1;
              sub_2210BBC64((a1 + 240), v21 + 1);
              *(*(a1 + 248) + 4 * v21) = v18;
              v17 = v125;
            }

            else
            {
              *(*(a1 + 248) + 4 * v21) = v18;
              v22 = v21 + 1;
            }

            *(a1 + 240) = v22;
            if (!v17)
            {
              return 0;
            }

            if (*a3 <= v17 || *v17 != 384)
            {
              goto LABEL_300;
            }
          }
        }

        if (v7 == 130)
        {
          goto LABEL_291;
        }

        goto LABEL_292;
      case 0x11u:
        if (v7 == 136)
        {
          v87 = v6 - 2;
          while (1)
          {
            v125 = (v87 + 2);
            v88 = v87[2];
            if (v87[2] < 0)
            {
              v89 = v88 + (v87[3] << 7);
              v88 = v89 - 128;
              if (v87[3] < 0)
              {
                v87 = google::protobuf::internal::VarintParseSlow32((v87 + 2), (v89 - 128));
                v88 = v90;
              }

              else
              {
                v87 += 4;
              }
            }

            else
            {
              v87 += 3;
            }

            v125 = v87;
            v91 = *(a1 + 256);
            if (v91 == *(a1 + 260))
            {
              v92 = v91 + 1;
              sub_2210BBC64((a1 + 256), v91 + 1);
              *(*(a1 + 264) + 4 * v91) = v88;
              v87 = v125;
            }

            else
            {
              *(*(a1 + 264) + 4 * v91) = v88;
              v92 = v91 + 1;
            }

            *(a1 + 256) = v92;
            if (!v87)
            {
              return 0;
            }

            if (*a3 <= v87 || *v87 != 392)
            {
              goto LABEL_300;
            }
          }
        }

        if (v7 == 138)
        {
          goto LABEL_291;
        }

        goto LABEL_292;
      case 0x12u:
        if (v7 == 144)
        {
          v93 = v6 - 2;
          while (1)
          {
            v125 = (v93 + 2);
            v94 = v93[2];
            if (v93[2] < 0)
            {
              v95 = v94 + (v93[3] << 7);
              v94 = v95 - 128;
              if (v93[3] < 0)
              {
                v93 = google::protobuf::internal::VarintParseSlow32((v93 + 2), (v95 - 128));
                v94 = v96;
              }

              else
              {
                v93 += 4;
              }
            }

            else
            {
              v93 += 3;
            }

            v125 = v93;
            v97 = *(a1 + 272);
            if (v97 == *(a1 + 276))
            {
              v98 = v97 + 1;
              sub_2210BBC64((a1 + 272), v97 + 1);
              *(*(a1 + 280) + 4 * v97) = v94;
              v93 = v125;
            }

            else
            {
              *(*(a1 + 280) + 4 * v97) = v94;
              v98 = v97 + 1;
            }

            *(a1 + 272) = v98;
            if (!v93)
            {
              return 0;
            }

            if (*a3 <= v93 || *v93 != 400)
            {
              goto LABEL_300;
            }
          }
        }

        if (v7 == 146)
        {
          goto LABEL_291;
        }

        goto LABEL_292;
      case 0x13u:
        if (v7 == 152)
        {
          v117 = v6 - 2;
          while (1)
          {
            v125 = (v117 + 2);
            v118 = v117[2];
            if (v117[2] < 0)
            {
              v119 = v118 + (v117[3] << 7);
              v118 = v119 - 128;
              if (v117[3] < 0)
              {
                v117 = google::protobuf::internal::VarintParseSlow32((v117 + 2), (v119 - 128));
                v118 = v120;
              }

              else
              {
                v117 += 4;
              }
            }

            else
            {
              v117 += 3;
            }

            v125 = v117;
            v121 = *(a1 + 288);
            if (v121 == *(a1 + 292))
            {
              v122 = v121 + 1;
              sub_2210BBC64((a1 + 288), v121 + 1);
              *(*(a1 + 296) + 4 * v121) = v118;
              v117 = v125;
            }

            else
            {
              *(*(a1 + 296) + 4 * v121) = v118;
              v122 = v121 + 1;
            }

            *(a1 + 288) = v122;
            if (!v117)
            {
              return 0;
            }

            if (*a3 <= v117 || *v117 != 408)
            {
              goto LABEL_300;
            }
          }
        }

        if (v7 == 154)
        {
          goto LABEL_291;
        }

        goto LABEL_292;
      case 0x14u:
        if (v7 != 160)
        {
          if (v7 == 162)
          {
LABEL_291:
            v123 = google::protobuf::internal::PackedUInt32Parser();
          }

          else
          {
LABEL_292:
            if (v7)
            {
              v124 = (v7 & 7) == 4;
            }

            else
            {
              v124 = 1;
            }

            if (v124)
            {
              *(a3 + 80) = v7 - 1;
              return v125;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v123 = google::protobuf::internal::UnknownFieldParse();
          }

          v125 = v123;
          if (!v123)
          {
            return 0;
          }

LABEL_300:
          if (sub_221567030(a3, &v125))
          {
            return v125;
          }

          continue;
        }

        v111 = v6 - 2;
        while (1)
        {
          v125 = (v111 + 2);
          v112 = v111[2];
          if (v111[2] < 0)
          {
            v113 = v112 + (v111[3] << 7);
            v112 = v113 - 128;
            if (v111[3] < 0)
            {
              v111 = google::protobuf::internal::VarintParseSlow32((v111 + 2), (v113 - 128));
              v112 = v114;
            }

            else
            {
              v111 += 4;
            }
          }

          else
          {
            v111 += 3;
          }

          v125 = v111;
          v115 = *(a1 + 304);
          if (v115 == *(a1 + 308))
          {
            v116 = v115 + 1;
            sub_2210BBC64((a1 + 304), v115 + 1);
            *(*(a1 + 312) + 4 * v115) = v112;
            v111 = v125;
          }

          else
          {
            *(*(a1 + 312) + 4 * v115) = v112;
            v116 = v115 + 1;
          }

          *(a1 + 304) = v116;
          if (!v111)
          {
            return 0;
          }

          if (*a3 <= v111 || *v111 != 416)
          {
            goto LABEL_300;
          }
        }

      default:
        goto LABEL_292;
    }
  }
}