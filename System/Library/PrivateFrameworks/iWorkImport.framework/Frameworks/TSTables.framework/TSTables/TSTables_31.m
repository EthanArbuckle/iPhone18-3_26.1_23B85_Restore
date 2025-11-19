uint64_t TSCE::RegionInfoArchive::RequiredFieldsByteSizeFallback(TSCE::RegionInfoArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
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
    v5 = TSCE::IndexedUidsArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = TSCE::IndexedUidsArchive::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

unint64_t TSCE::RegionInfoArchive::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v5 = TSCE::RegionInfoArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[3]);
    v3 = TSCE::IndexedUidsArchive::ByteSizeLong(this[4]);
    v4 = TSCE::IndexedUidsArchive::ByteSizeLong(this[5]);
    v5 = v2 + v3 + v4 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3;
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

uint64_t TSCE::RegionInfoArchive::MergeFrom(TSCE::RegionInfoArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RegionInfoArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RegionInfoArchive::MergeFrom(uint64_t this, const TSCE::RegionInfoArchive *a2)
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexedUidsArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSCE::_IndexedUidsArchive_default_instance_;
      }

      this = TSCE::IndexedUidsArchive::MergeFrom(v9, v11);
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

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexedUidsArchive>(v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 5))
      {
        v14 = *(a2 + 5);
      }

      else
      {
        v14 = &TSCE::_IndexedUidsArchive_default_instance_;
      }

      return TSCE::IndexedUidsArchive::MergeFrom(v12, v14);
    }
  }

  return this;
}

uint64_t *TSCE::RegionInfoArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RegionInfoArchive::Clear(this);

    return TSCE::RegionInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RegionInfoArchive::CopyFrom(uint64_t *this, const TSCE::RegionInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RegionInfoArchive::Clear(this);

    return TSCE::RegionInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::RegionInfoArchive::IsInitialized(TSCE::RegionInfoArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    return 0;
  }

  result = TSP::UUID::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = sub_22154C62C(*(this + 4) + 16);
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

    result = sub_22154C62C(*(this + 5) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCE::RegionInfoArchive::InternalSwap(TSCE::RegionInfoArchive *this, TSCE::RegionInfoArchive *a2)
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
  return result;
}

TSP::UUID *TSCE::RegionMovedInfoArchive::clear_final_dest_table_uid(TSCE::RegionMovedInfoArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSCE::RegionMovedInfoArchive *TSCE::RegionMovedInfoArchive::RegionMovedInfoArchive(TSCE::RegionMovedInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AFB70;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RegionMovedInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 28) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834AFB70;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RegionMovedInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 28) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSCE::RegionMovedInfoArchive *TSCE::RegionMovedInfoArchive::RegionMovedInfoArchive(TSCE::RegionMovedInfoArchive *this, const TSCE::RegionMovedInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AFB70;
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
  *(this + 28) = *(a2 + 28);
  return this;
}

void TSCE::RegionMovedInfoArchive::~RegionMovedInfoArchive(TSCE::RegionMovedInfoArchive *this)
{
  sub_2215500D8(this);
  sub_2214DFCF8(this + 1);
}

{
  TSCE::RegionMovedInfoArchive::~RegionMovedInfoArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_2215500D8(uint64_t *result)
{
  if (result != &TSCE::_RegionMovedInfoArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSCE::RegionInfoArchive::~RegionInfoArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSCE::RegionInfoArchive::~RegionInfoArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSCE::RegionInfoArchive::~RegionInfoArchive(v4);
      MEMORY[0x223DA1450]();
    }

    result = v1[6];
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TSCE::RegionMovedInfoArchive::default_instance(TSCE::RegionMovedInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_RegionMovedInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_RegionMovedInfoArchive_default_instance_;
}

uint64_t *TSCE::RegionMovedInfoArchive::Clear(uint64_t *this)
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

LABEL_12:
    this = TSCE::RegionInfoArchive::Clear(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  this = TSCE::RegionInfoArchive::Clear(this[3]);
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  this = TSCE::RegionInfoArchive::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSP::UUID::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 48) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TSCE::RegionMovedInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_67;
      }

      v7 = TagFallback;
      v8 = v28;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 != 4)
        {
          if (v10 != 5)
          {
            if (v10 == 6 && v8 == 50)
            {
              *(a1 + 16) |= 8u;
              v15 = *(a1 + 48);
              if (!v15)
              {
                v16 = *(a1 + 8);
                if (v16)
                {
                  v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
                }

                v17 = MEMORY[0x223DA0360](v16);
                LODWORD(v15) = v17;
                *(a1 + 48) = v17;
                v7 = v33;
              }

              v18 = sub_2216F813C(a3, v15, v7);
              goto LABEL_57;
            }

LABEL_50:
            if (v8)
            {
              v26 = (v8 & 7) == 4;
            }

            else
            {
              v26 = 1;
            }

            if (v26)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v18 = google::protobuf::internal::UnknownFieldParse();
LABEL_57:
            v33 = v18;
            if (!v18)
            {
              goto LABEL_67;
            }

            goto LABEL_58;
          }

          if (v8 != 42)
          {
            goto LABEL_50;
          }

          *(a1 + 16) |= 4u;
          v19 = *(a1 + 40);
          if (!v19)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionInfoArchive>(v25);
            *(a1 + 40) = v19;
LABEL_48:
            v7 = v33;
          }

LABEL_49:
          v18 = sub_2216FE65C(a3, v19, v7);
          goto LABEL_57;
        }

        if (v8 != 32)
        {
          goto LABEL_50;
        }

        v5 |= 0x20u;
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
          v33 = v22;
          *(a1 + 57) = v21 != 0;
          goto LABEL_58;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v7, v21);
        v33 = v29;
        *(a1 + 57) = v30 != 0;
        if (!v29)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_50;
          }

          *(a1 + 16) |= 1u;
          v19 = *(a1 + 24);
          if (!v19)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionInfoArchive>(v20);
            *(a1 + 24) = v19;
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_50;
          }

          *(a1 + 16) |= 2u;
          v19 = *(a1 + 32);
          if (!v19)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionInfoArchive>(v24);
            *(a1 + 32) = v19;
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_50;
        }

        v5 |= 0x10u;
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
          v33 = v13;
          *(a1 + 56) = v12 != 0;
          goto LABEL_58;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v33 = v31;
        *(a1 + 56) = v32 != 0;
        if (!v31)
        {
LABEL_67:
          v33 = 0;
          goto LABEL_2;
        }
      }

LABEL_58:
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

unsigned __int8 *TSCE::RegionMovedInfoArchive::_InternalSerialize(TSCE::RegionMovedInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::RegionInfoArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
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

  a2 = TSCE::RegionInfoArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_28:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 56);
  *a2 = 24;
  a2[1] = v18;
  a2 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_31:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 57);
  *a2 = 32;
  a2[1] = v19;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_44;
  }

LABEL_34:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 5);
  *a2 = 42;
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

  a2 = TSCE::RegionInfoArchive::_InternalSerialize(v20, v22, a3);
  if ((v5 & 8) != 0)
  {
LABEL_44:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(this + 6);
    *a2 = 50;
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

    a2 = TSP::UUID::_InternalSerialize(v26, v28, a3);
  }

LABEL_54:
  v32 = *(this + 1);
  if ((v32 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v32 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RegionMovedInfoArchive::RequiredFieldsByteSizeFallback(TSCE::RegionMovedInfoArchive *this)
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

  v4 = TSCE::RegionInfoArchive::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSCE::RegionInfoArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSCE::RegionMovedInfoArchive::ByteSizeLong(TSCE::RegionMovedInfoArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSCE::RegionMovedInfoArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::RegionInfoArchive::ByteSizeLong(*(this + 3));
    v3 = TSCE::RegionInfoArchive::ByteSizeLong(*(this + 4));
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v5 = *(this + 4);
  if ((v5 & 0x3C) != 0)
  {
    if ((v5 & 4) != 0)
    {
      v6 = TSCE::RegionInfoArchive::ByteSizeLong(*(this + 5));
      v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v5 & 8) != 0)
    {
      v7 = TSP::UUID::ByteSizeLong(*(this + 6));
      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += ((v5 >> 4) & 2) + ((v5 >> 3) & 2);
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

uint64_t TSCE::RegionMovedInfoArchive::MergeFrom(TSCE::RegionMovedInfoArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RegionMovedInfoArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RegionMovedInfoArchive::MergeFrom(uint64_t this, const TSCE::RegionMovedInfoArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionInfoArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TSCE::_RegionInfoArchive_default_instance_;
      }

      this = TSCE::RegionInfoArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_29;
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

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionInfoArchive>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = TSCE::_RegionInfoArchive_default_instance_;
    }

    this = TSCE::RegionInfoArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }

LABEL_29:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionInfoArchive>(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = TSCE::_RegionInfoArchive_default_instance_;
    }

    this = TSCE::RegionInfoArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x223DA0360](v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = MEMORY[0x277D809E0];
    }

    this = TSP::UUID::MergeFrom(v15, v17);
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
      *(v3 + 57) = *(a2 + 57);
      goto LABEL_11;
    }

LABEL_45:
    *(v3 + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSCE::RegionMovedInfoArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RegionMovedInfoArchive::Clear(this);

    return TSCE::RegionMovedInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RegionMovedInfoArchive::CopyFrom(uint64_t *this, const TSCE::RegionMovedInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RegionMovedInfoArchive::Clear(this);

    return TSCE::RegionMovedInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::RegionMovedInfoArchive::IsInitialized(TSCE::RegionMovedInfoArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  result = TSCE::RegionInfoArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSCE::RegionInfoArchive::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      result = TSCE::RegionInfoArchive::IsInitialized(*(this + 5));
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

    result = TSP::UUID::IsInitialized(*(this + 6));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCE::RegionMovedInfoArchive::InternalSwap(TSCE::RegionMovedInfoArchive *this, TSCE::RegionMovedInfoArchive *a2)
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
  LOWORD(v7) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v7;
  return result;
}

void *TSCE::MergeSourceArchive::MergeSourceArchive(void *result, uint64_t a2)
{
  *result = &unk_2834AFC20;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_2834AFC20;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCE::MergeSourceArchive *TSCE::MergeSourceArchive::MergeSourceArchive(TSCE::MergeSourceArchive *this, const TSCE::MergeSourceArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AFC20;
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

void TSCE::MergeSourceArchive::~MergeSourceArchive(TSCE::MergeSourceArchive *this)
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

uint64_t *TSCE::MergeSourceArchive::default_instance(TSCE::MergeSourceArchive *this)
{
  if (atomic_load_explicit(scc_info_MergeSourceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_MergeSourceArchive_default_instance_;
}

uint64_t *TSCE::MergeSourceArchive::Clear(TSCE::MergeSourceArchive *this)
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

google::protobuf::internal *TSCE::MergeSourceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *TSCE::MergeSourceArchive::_InternalSerialize(TSCE::MergeSourceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSCE::MergeSourceArchive::RequiredFieldsByteSizeFallback(TSCE::MergeSourceArchive *this)
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

uint64_t TSCE::MergeSourceArchive::ByteSizeLong(TSCE::MergeSourceArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v2 = TSCE::MergeSourceArchive::RequiredFieldsByteSizeFallback(this);
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

uint64_t TSCE::MergeSourceArchive::MergeFrom(TSCE::MergeSourceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::MergeSourceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::MergeSourceArchive::MergeFrom(uint64_t this, const TSCE::MergeSourceArchive *a2)
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

TSCE::MergeSourceArchive *TSCE::MergeSourceArchive::CopyFrom(TSCE::MergeSourceArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::MergeSourceArchive::Clear(this);

    return TSCE::MergeSourceArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::MergeSourceArchive *TSCE::MergeSourceArchive::CopyFrom(TSCE::MergeSourceArchive *this, const TSCE::MergeSourceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::MergeSourceArchive::Clear(this);

    return TSCE::MergeSourceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::MergeSourceArchive::InternalSwap(TSCE::MergeSourceArchive *this, TSCE::MergeSourceArchive *a2)
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

TSP::UUID *TSCE::HauntedOwnerArchive::clear_owner_uid(TSCE::HauntedOwnerArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::HauntedOwnerArchive *TSCE::HauntedOwnerArchive::HauntedOwnerArchive(TSCE::HauntedOwnerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AFCD0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_HauntedOwnerArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834AFCD0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_HauntedOwnerArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCE::HauntedOwnerArchive *TSCE::HauntedOwnerArchive::HauntedOwnerArchive(TSCE::HauntedOwnerArchive *this, const TSCE::HauntedOwnerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AFCD0;
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

void TSCE::HauntedOwnerArchive::~HauntedOwnerArchive(TSCE::HauntedOwnerArchive *this)
{
  if (this != &TSCE::_HauntedOwnerArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::HauntedOwnerArchive::~HauntedOwnerArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::HauntedOwnerArchive::default_instance(TSCE::HauntedOwnerArchive *this)
{
  if (atomic_load_explicit(scc_info_HauntedOwnerArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_HauntedOwnerArchive_default_instance_;
}

uint64_t *TSCE::HauntedOwnerArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::UUID::Clear(this[3]);
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

google::protobuf::internal *TSCE::HauntedOwnerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_221567030(a3, &v16) & 1) == 0)
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

        v12 = MEMORY[0x223DA0360](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_2216F813C(a3, v10, v5);
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
        sub_221567188((a1 + 8));
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

unsigned __int8 *TSCE::HauntedOwnerArchive::_InternalSerialize(TSCE::HauntedOwnerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::UUID::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::HauntedOwnerArchive::ByteSizeLong(TSP::UUID **this)
{
  if (this[2])
  {
    v3 = TSP::UUID::ByteSizeLong(this[3]);
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

uint64_t TSCE::HauntedOwnerArchive::MergeFrom(TSCE::HauntedOwnerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::HauntedOwnerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::HauntedOwnerArchive::MergeFrom(uint64_t this, const TSCE::HauntedOwnerArchive *a2)
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

      v6 = MEMORY[0x223DA0360](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D809E0];
    }

    return TSP::UUID::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSCE::HauntedOwnerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::HauntedOwnerArchive::Clear(this);

    return TSCE::HauntedOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::HauntedOwnerArchive::CopyFrom(uint64_t *this, const TSCE::HauntedOwnerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::HauntedOwnerArchive::Clear(this);

    return TSCE::HauntedOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::HauntedOwnerArchive::IsInitialized(TSP::UUID **this)
{
  if (this[2])
  {
    return TSP::UUID::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSCE::HauntedOwnerArchive::InternalSwap(TSCE::HauntedOwnerArchive *this, TSCE::HauntedOwnerArchive *a2)
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

TSP::UUID *TSCE::SpillOwnerArchive::clear_owner_uid(TSCE::SpillOwnerArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::SpillOwnerArchive *TSCE::SpillOwnerArchive::SpillOwnerArchive(TSCE::SpillOwnerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AFD80;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpillOwnerArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834AFD80;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpillOwnerArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCE::SpillOwnerArchive *TSCE::SpillOwnerArchive::SpillOwnerArchive(TSCE::SpillOwnerArchive *this, const TSCE::SpillOwnerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AFD80;
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

void TSCE::SpillOwnerArchive::~SpillOwnerArchive(TSCE::SpillOwnerArchive *this)
{
  if (this != &TSCE::_SpillOwnerArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::SpillOwnerArchive::~SpillOwnerArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::SpillOwnerArchive::default_instance(TSCE::SpillOwnerArchive *this)
{
  if (atomic_load_explicit(scc_info_SpillOwnerArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_SpillOwnerArchive_default_instance_;
}

uint64_t *TSCE::SpillOwnerArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::UUID::Clear(this[3]);
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

google::protobuf::internal *TSCE::SpillOwnerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_221567030(a3, &v16) & 1) == 0)
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

        v12 = MEMORY[0x223DA0360](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_2216F813C(a3, v10, v5);
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
        sub_221567188((a1 + 8));
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

unsigned __int8 *TSCE::SpillOwnerArchive::_InternalSerialize(TSCE::SpillOwnerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::UUID::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::SpillOwnerArchive::ByteSizeLong(TSP::UUID **this)
{
  if (this[2])
  {
    v3 = TSP::UUID::ByteSizeLong(this[3]);
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

uint64_t TSCE::SpillOwnerArchive::MergeFrom(TSCE::SpillOwnerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::SpillOwnerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::SpillOwnerArchive::MergeFrom(uint64_t this, const TSCE::SpillOwnerArchive *a2)
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

      v6 = MEMORY[0x223DA0360](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D809E0];
    }

    return TSP::UUID::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSCE::SpillOwnerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SpillOwnerArchive::Clear(this);

    return TSCE::SpillOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::SpillOwnerArchive::CopyFrom(uint64_t *this, const TSCE::SpillOwnerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::SpillOwnerArchive::Clear(this);

    return TSCE::SpillOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::SpillOwnerArchive::IsInitialized(TSP::UUID **this)
{
  if (this[2])
  {
    return TSP::UUID::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSCE::SpillOwnerArchive::InternalSwap(TSCE::SpillOwnerArchive *this, TSCE::SpillOwnerArchive *a2)
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

uint64_t TSCE::CellCoordinateArchive::CellCoordinateArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_2834AFE30;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

{
  *result = &unk_2834AFE30;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

TSCE::CellCoordinateArchive *TSCE::CellCoordinateArchive::CellCoordinateArchive(TSCE::CellCoordinateArchive *this, const TSCE::CellCoordinateArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AFE30;
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

void TSCE::CellCoordinateArchive::~CellCoordinateArchive(TSCE::CellCoordinateArchive *this)
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

uint64_t *TSCE::CellCoordinateArchive::default_instance(TSCE::CellCoordinateArchive *this)
{
  if (atomic_load_explicit(scc_info_CellCoordinateArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CellCoordinateArchive_default_instance_;
}

google::protobuf::internal *TSCE::CellCoordinateArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v25) & 1) == 0)
  {
    while (1)
    {
      v7 = (v25 + 1);
      v8 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v9 - 128));
      v25 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_41;
      }

      v7 = TagFallback;
      v8 = v20;
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
          v25 = v16;
          *(a1 + 32) = v17;
          goto LABEL_32;
        }

        v23 = google::protobuf::internal::VarintParseSlow32(v7, v17);
        v25 = v23;
        *(a1 + 32) = v24;
        if (!v23)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 == 1 && v8 == 13)
          {
            v5 |= 1u;
            *(a1 + 24) = *v7;
            v25 = (v7 + 4);
            goto LABEL_32;
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

          v25 = google::protobuf::internal::UnknownFieldParse();
          if (!v25)
          {
LABEL_41:
            v25 = 0;
            goto LABEL_2;
          }

          goto LABEL_32;
        }

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
          v25 = v13;
          *(a1 + 28) = v14;
          goto LABEL_32;
        }

        v21 = google::protobuf::internal::VarintParseSlow32(v7, v14);
        v25 = v21;
        *(a1 + 28) = v22;
        if (!v21)
        {
          goto LABEL_41;
        }
      }

LABEL_32:
      if (sub_221567030(a3, &v25))
      {
        goto LABEL_2;
      }
    }

    v7 = (v25 + 2);
LABEL_6:
    v25 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

unsigned __int8 *TSCE::CellCoordinateArchive::_InternalSerialize(TSCE::CellCoordinateArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 13;
    *(a2 + 1) = v7;
    a2 += 5;
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_27;
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

  v8 = *(this + 7);
  *a2 = 16;
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v13 = v10 >> 7;
        ++a2;
        v14 = v10 >> 14;
        v10 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
      if ((v5 & 4) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    a2[1] = v8;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_27;
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
    v9 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++a2;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(a2 - 1) = v11;
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
  }

LABEL_27:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CellCoordinateArchive::ByteSizeLong(TSCE::CellCoordinateArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 7) != 0)
  {
    if (v1)
    {
      v2 = 5;
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v1 & 4) != 0)
    {
      v2 += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSCE::CellCoordinateArchive::MergeFrom(TSCE::CellCoordinateArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellCoordinateArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

TSCE::CellCoordinateArchive *TSCE::CellCoordinateArchive::CopyFrom(TSCE::CellCoordinateArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellCoordinateArchive::Clear(this);

    return TSCE::CellCoordinateArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::CellCoordinateArchive *TSCE::CellCoordinateArchive::CopyFrom(TSCE::CellCoordinateArchive *this, const TSCE::CellCoordinateArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellCoordinateArchive::Clear(this);

    return TSCE::CellCoordinateArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellCoordinateArchive::InternalSwap(TSCE::CellCoordinateArchive *this, TSCE::CellCoordinateArchive *a2)
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

TSCE::CellCoordinateVectorArchive *TSCE::CellCoordinateVectorArchive::CellCoordinateVectorArchive(TSCE::CellCoordinateVectorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AFEE0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_CellCoordinateVectorArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::CellCoordinateVectorArchive *TSCE::CellCoordinateVectorArchive::CellCoordinateVectorArchive(TSCE::CellCoordinateVectorArchive *this, const TSCE::CellCoordinateVectorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AFEE0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_2215686E0(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::CellCoordinateVectorArchive::~CellCoordinateVectorArchive(TSCE::CellCoordinateVectorArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_2215685C4(this + 2);
}

{
  TSCE::CellCoordinateVectorArchive::~CellCoordinateVectorArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::CellCoordinateVectorArchive::default_instance(TSCE::CellCoordinateVectorArchive *this)
{
  if (atomic_load_explicit(scc_info_CellCoordinateVectorArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CellCoordinateVectorArchive_default_instance_;
}

uint64_t *TSCE::CellCoordinateVectorArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellCoordinateArchive::Clear(v4);
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

google::protobuf::internal *TSCE::CellCoordinateVectorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216F806C(a3, v13, v10);
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

unsigned __int8 *TSCE::CellCoordinateVectorArchive::_InternalSerialize(TSCE::CellCoordinateVectorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CellCoordinateVectorArchive::ByteSizeLong(TSCE::CellCoordinateVectorArchive *this)
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
      v7 = TSCE::CellCoordinateArchive::ByteSizeLong(v6);
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

uint64_t TSCE::CellCoordinateVectorArchive::MergeFrom(TSCE::CellCoordinateVectorArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellCoordinateVectorArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::CellCoordinateVectorArchive::MergeFrom(uint64_t this, const TSCE::CellCoordinateVectorArchive *a2)
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
    this = sub_2215686E0(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::CellCoordinateVectorArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellCoordinateVectorArchive::Clear(this);

    return TSCE::CellCoordinateVectorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellCoordinateVectorArchive::CopyFrom(uint64_t *this, const TSCE::CellCoordinateVectorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellCoordinateVectorArchive::Clear(this);

    return TSCE::CellCoordinateVectorArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::CellCoordinateVectorArchive::InternalSwap(TSCE::CellCoordinateVectorArchive *this, TSCE::CellCoordinateVectorArchive *a2)
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

TSP::Reference *TSCE::ExpandedCellRefObjectPairArchive::clear_object(TSCE::ExpandedCellRefObjectPairArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCE::ExpandedCellRefObjectPairArchive *TSCE::ExpandedCellRefObjectPairArchive::ExpandedCellRefObjectPairArchive(TSCE::ExpandedCellRefObjectPairArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AFF90;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ExpandedCellRefObjectPairArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834AFF90;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ExpandedCellRefObjectPairArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCE::ExpandedCellRefObjectPairArchive *TSCE::ExpandedCellRefObjectPairArchive::ExpandedCellRefObjectPairArchive(TSCE::ExpandedCellRefObjectPairArchive *this, const TSCE::ExpandedCellRefObjectPairArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AFF90;
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

void TSCE::ExpandedCellRefObjectPairArchive::~ExpandedCellRefObjectPairArchive(TSCE::ExpandedCellRefObjectPairArchive *this)
{
  if (this != TSCE::_ExpandedCellRefObjectPairArchive_default_instance_)
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
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::ExpandedCellRefObjectPairArchive::~ExpandedCellRefObjectPairArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::ExpandedCellRefObjectPairArchive::default_instance(TSCE::ExpandedCellRefObjectPairArchive *this)
{
  if (atomic_load_explicit(scc_info_ExpandedCellRefObjectPairArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_ExpandedCellRefObjectPairArchive_default_instance_;
}

uint64_t *TSCE::ExpandedCellRefObjectPairArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSCE::CellReferenceArchive::Clear(this[3]);
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

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TSCE::ExpandedCellRefObjectPairArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v13 = MEMORY[0x223DA0390](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v19;
      }

      v10 = sub_22170B7F8(a3, v11, v5);
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
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v15);
        *(a1 + 24) = v14;
        v5 = v19;
      }

      v10 = sub_2216F8E3C(a3, v14, v5);
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

unsigned __int8 *TSCE::ExpandedCellRefObjectPairArchive::_InternalSerialize(TSCE::ExpandedCellRefObjectPairArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::CellReferenceArchive::_InternalSerialize(v6, v8, a3);
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

uint64_t TSCE::ExpandedCellRefObjectPairArchive::RequiredFieldsByteSizeFallback(TSCE::ExpandedCellRefObjectPairArchive *this)
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

  v4 = TSCE::CellReferenceArchive::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSCE::ExpandedCellRefObjectPairArchive::ByteSizeLong(TSCE::ExpandedCellRefObjectPairArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSCE::ExpandedCellRefObjectPairArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::CellReferenceArchive::ByteSizeLong(*(this + 3));
    v3 = TSP::Reference::ByteSizeLong(*(this + 4));
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
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

uint64_t TSCE::ExpandedCellRefObjectPairArchive::MergeFrom(TSCE::ExpandedCellRefObjectPairArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ExpandedCellRefObjectPairArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ExpandedCellRefObjectPairArchive::MergeFrom(uint64_t this, const TSCE::ExpandedCellRefObjectPairArchive *a2)
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

        v9 = MEMORY[0x223DA0390](v10);
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

uint64_t *TSCE::ExpandedCellRefObjectPairArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ExpandedCellRefObjectPairArchive::Clear(this);

    return TSCE::ExpandedCellRefObjectPairArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ExpandedCellRefObjectPairArchive::CopyFrom(uint64_t *this, const TSCE::ExpandedCellRefObjectPairArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ExpandedCellRefObjectPairArchive::Clear(this);

    return TSCE::ExpandedCellRefObjectPairArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::ExpandedCellRefObjectPairArchive::IsInitialized(TSP::Reference **this)
{
  if ((~*(this + 4) & 3) != 0 || (~*(this[3] + 4) & 7) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::Reference::IsInitialized(this[4]);
  }
}

__n128 TSCE::ExpandedCellRefObjectPairArchive::InternalSwap(TSCE::ExpandedCellRefObjectPairArchive *this, TSCE::ExpandedCellRefObjectPairArchive *a2)
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

TSCE::ExpandedCellRefObjectMapArchive *TSCE::ExpandedCellRefObjectMapArchive::ExpandedCellRefObjectMapArchive(TSCE::ExpandedCellRefObjectMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B0040;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_ExpandedCellRefObjectMapArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::ExpandedCellRefObjectMapArchive *TSCE::ExpandedCellRefObjectMapArchive::ExpandedCellRefObjectMapArchive(TSCE::ExpandedCellRefObjectMapArchive *this, const TSCE::ExpandedCellRefObjectMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834B0040;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22156BAB8(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::ExpandedCellRefObjectMapArchive::~ExpandedCellRefObjectMapArchive(TSCE::ExpandedCellRefObjectMapArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22156BA34(this + 2);
}

{
  TSCE::ExpandedCellRefObjectMapArchive::~ExpandedCellRefObjectMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::ExpandedCellRefObjectMapArchive::default_instance(TSCE::ExpandedCellRefObjectMapArchive *this)
{
  if (atomic_load_explicit(scc_info_ExpandedCellRefObjectMapArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ExpandedCellRefObjectMapArchive_default_instance_;
}

uint64_t *TSCE::ExpandedCellRefObjectMapArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::ExpandedCellRefObjectPairArchive::Clear(v4);
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

google::protobuf::internal *TSCE::ExpandedCellRefObjectMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ExpandedCellRefObjectPairArchive>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216FE72C(a3, v13, v10);
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

unsigned __int8 *TSCE::ExpandedCellRefObjectMapArchive::_InternalSerialize(TSCE::ExpandedCellRefObjectMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::ExpandedCellRefObjectPairArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ExpandedCellRefObjectMapArchive::ByteSizeLong(TSCE::ExpandedCellRefObjectMapArchive *this)
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
      v7 = TSCE::ExpandedCellRefObjectPairArchive::ByteSizeLong(v6);
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

uint64_t TSCE::ExpandedCellRefObjectMapArchive::MergeFrom(TSCE::ExpandedCellRefObjectMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ExpandedCellRefObjectMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ExpandedCellRefObjectMapArchive::MergeFrom(uint64_t this, const TSCE::ExpandedCellRefObjectMapArchive *a2)
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
    this = sub_22156BAB8(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::ExpandedCellRefObjectMapArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ExpandedCellRefObjectMapArchive::Clear(this);

    return TSCE::ExpandedCellRefObjectMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ExpandedCellRefObjectMapArchive::CopyFrom(uint64_t *this, const TSCE::ExpandedCellRefObjectMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ExpandedCellRefObjectMapArchive::Clear(this);

    return TSCE::ExpandedCellRefObjectMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::ExpandedCellRefObjectMapArchive::IsInitialized(TSCE::ExpandedCellRefObjectMapArchive *this)
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
    IsInitialized = TSCE::ExpandedCellRefObjectPairArchive::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSCE::ExpandedCellRefObjectMapArchive::InternalSwap(TSCE::ExpandedCellRefObjectMapArchive *this, TSCE::ExpandedCellRefObjectMapArchive *a2)
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

TSCE::FormulaAtCoordArchive *TSCE::FormulaAtCoordArchive::FormulaAtCoordArchive(TSCE::FormulaAtCoordArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B00F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaAtCoordArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_2834B00F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaAtCoordArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

TSCE::FormulaAtCoordArchive *TSCE::FormulaAtCoordArchive::FormulaAtCoordArchive(TSCE::FormulaAtCoordArchive *this, const TSCE::FormulaAtCoordArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B00F0;
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

void TSCE::FormulaAtCoordArchive::~FormulaAtCoordArchive(TSCE::FormulaAtCoordArchive *this)
{
  if (this != TSCE::_FormulaAtCoordArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::FormulaArchive::~FormulaArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::FormulaAtCoordArchive::~FormulaAtCoordArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::FormulaAtCoordArchive::default_instance(TSCE::FormulaAtCoordArchive *this)
{
  if (atomic_load_explicit(scc_info_FormulaAtCoordArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_FormulaAtCoordArchive_default_instance_;
}

uint64_t *TSCE::FormulaAtCoordArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSCE::FormulaArchive::Clear(this[3]);
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

google::protobuf::internal *TSCE::FormulaAtCoordArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          if (v8 == 26)
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

              v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v22);
              *(a1 + 24) = v21;
              v7 = v33;
            }

            v23 = sub_2216FE0AC(a3, v21, v7);
          }

          else
          {
LABEL_36:
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

            v23 = google::protobuf::internal::UnknownFieldParse();
          }

          v33 = v23;
          if (!v23)
          {
            goto LABEL_55;
          }

          goto LABEL_44;
        }

        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_36;
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
          v33 = v16;
          *(a1 + 40) = v15 != 0;
          goto LABEL_44;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v33 = v27;
        *(a1 + 40) = v28 != 0;
        if (!v27)
        {
          goto LABEL_55;
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_36;
        }

        v5 |= 2u;
        v18 = (v7 + 1);
        LODWORD(v19) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_29:
          v33 = v18;
          *(a1 + 32) = v19;
          goto LABEL_44;
        }

        v31 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v33 = v31;
        *(a1 + 32) = v32;
        if (!v31)
        {
LABEL_55:
          v33 = 0;
          goto LABEL_2;
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
          v33 = v12;
          *(a1 + 36) = v13;
          goto LABEL_44;
        }

        v29 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v33 = v29;
        *(a1 + 36) = v30;
        if (!v29)
        {
          goto LABEL_55;
        }
      }

LABEL_44:
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

unsigned __int8 *TSCE::FormulaAtCoordArchive::_InternalSerialize(TSCE::FormulaAtCoordArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        if (v5)
        {
          goto LABEL_28;
        }
      }

      else
      {
        a2[2] = v11;
        a2 += 3;
        if (v5)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      a2[1] = v10;
      a2 += 2;
      if (v5)
      {
        goto LABEL_28;
      }
    }

LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
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
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_28:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 3);
  *a2 = 26;
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

  a2 = TSCE::FormulaArchive::_InternalSerialize(v14, v16, a3);
  if ((v5 & 8) != 0)
  {
LABEL_38:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 40);
    *a2 = 32;
    a2[1] = v20;
    a2 += 2;
  }

LABEL_41:
  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::FormulaAtCoordArchive::RequiredFieldsByteSizeFallback(TSCE::FormulaAtCoordArchive *this)
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

unint64_t TSCE::FormulaAtCoordArchive::ByteSizeLong(TSCE::FormulaArchive **this)
{
  v2 = *(this + 4);
  if ((~v2 & 6) != 0)
  {
    v3 = TSCE::FormulaAtCoordArchive::RequiredFieldsByteSizeFallback(this);
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
    v4 = TSCE::FormulaArchive::ByteSizeLong(this[3]);
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  v5 = v3 + ((v2 >> 2) & 2);
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v3 + ((v2 >> 2) & 2);
  }
}

uint64_t TSCE::FormulaAtCoordArchive::MergeFrom(TSCE::FormulaAtCoordArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::FormulaAtCoordArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::FormulaAtCoordArchive::MergeFrom(uint64_t this, const TSCE::FormulaAtCoordArchive *a2)
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

uint64_t *TSCE::FormulaAtCoordArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormulaAtCoordArchive::Clear(this);

    return TSCE::FormulaAtCoordArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::FormulaAtCoordArchive::CopyFrom(uint64_t *this, const TSCE::FormulaAtCoordArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormulaAtCoordArchive::Clear(this);

    return TSCE::FormulaAtCoordArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::FormulaAtCoordArchive::IsInitialized(TSCE::FormulaAtCoordArchive *this)
{
  v1 = *(this + 4);
  if ((~v1 & 6) != 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = TSCE::FormulaArchive::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCE::FormulaAtCoordArchive::InternalSwap(TSCE::FormulaAtCoordArchive *this, TSCE::FormulaAtCoordArchive *a2)
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

TSP::UUID *TSCE::FormulaCoordPairsByOwnerArchive::clear_owner_uid(TSCE::FormulaCoordPairsByOwnerArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::FormulaCoordPairsByOwnerArchive *TSCE::FormulaCoordPairsByOwnerArchive::FormulaCoordPairsByOwnerArchive(TSCE::FormulaCoordPairsByOwnerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B01A0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_FormulaCoordPairsByOwnerArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 6) = 0;
  return this;
}

TSCE::FormulaCoordPairsByOwnerArchive *TSCE::FormulaCoordPairsByOwnerArchive::FormulaCoordPairsByOwnerArchive(TSCE::FormulaCoordPairsByOwnerArchive *this, const TSCE::FormulaCoordPairsByOwnerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B01A0;
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
    sub_22156BBFC(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void sub_221555C60(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C40825B58B5);
  sub_22156BB78((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::FormulaCoordPairsByOwnerArchive::~FormulaCoordPairsByOwnerArchive(TSCE::FormulaCoordPairsByOwnerArchive *this)
{
  if (this != &TSCE::_FormulaCoordPairsByOwnerArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_22156BB78(this + 3);
}

{
  TSCE::FormulaCoordPairsByOwnerArchive::~FormulaCoordPairsByOwnerArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::FormulaCoordPairsByOwnerArchive::default_instance(TSCE::FormulaCoordPairsByOwnerArchive *this)
{
  if (atomic_load_explicit(scc_info_FormulaCoordPairsByOwnerArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_FormulaCoordPairsByOwnerArchive_default_instance_;
}

uint64_t *TSCE::FormulaCoordPairsByOwnerArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::FormulaAtCoordArchive::Clear(v4);
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
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TSCE::FormulaCoordPairsByOwnerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_52;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        v17 = (v7 - 1);
        while (2)
        {
          v18 = (v17 + 1);
          v32 = (v17 + 1);
          v19 = *(a1 + 40);
          if (!v19)
          {
LABEL_31:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v19 = *(a1 + 40);
            v20 = *v19;
            goto LABEL_32;
          }

          v24 = *(a1 + 32);
          v20 = *v19;
          if (v24 >= *v19)
          {
            if (v20 == *(a1 + 36))
            {
              goto LABEL_31;
            }

LABEL_32:
            *v19 = v20 + 1;
            v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaAtCoordArchive>(*(a1 + 24));
            v22 = *(a1 + 32);
            v23 = *(a1 + 40) + 8 * v22;
            *(a1 + 32) = v22 + 1;
            *(v23 + 8) = v21;
            v18 = v32;
          }

          else
          {
            *(a1 + 32) = v24 + 1;
            v21 = *&v19[2 * v24 + 2];
          }

          v17 = sub_2216FE7FC(a3, v21, v18);
          v32 = v17;
          if (!v17)
          {
            goto LABEL_52;
          }

          if (*a3 <= v17 || *v17 != 26)
          {
            goto LABEL_45;
          }

          continue;
        }
      }

      if (v10 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v14 = *(a1 + 48);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = MEMORY[0x223DA0360](v15);
            LODWORD(v14) = v16;
            *(a1 + 48) = v16;
            v7 = v32;
          }

          v13 = sub_2216F813C(a3, v14, v7);
LABEL_26:
          v32 = v13;
          if (!v13)
          {
            goto LABEL_52;
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

        v13 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_26;
      }

      if (v10 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v25 = (v7 + 1);
      LODWORD(v26) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      v27 = *v25;
      v26 = (v26 + (v27 << 7) - 128);
      if ((v27 & 0x80000000) == 0)
      {
        v25 = (v7 + 2);
LABEL_44:
        v32 = v25;
        *(a1 + 56) = v26;
        goto LABEL_45;
      }

      v30 = google::protobuf::internal::VarintParseSlow32(v7, v26);
      v32 = v30;
      *(a1 + 56) = v31;
      if (!v30)
      {
LABEL_52:
        v32 = 0;
        goto LABEL_2;
      }

LABEL_45:
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

unsigned __int8 *TSCE::FormulaCoordPairsByOwnerArchive::_InternalSerialize(TSCE::FormulaCoordPairsByOwnerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::FormulaAtCoordArchive::_InternalSerialize(v18, v20, a3);
    }
  }

  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::FormulaCoordPairsByOwnerArchive::ByteSizeLong(TSCE::FormulaCoordPairsByOwnerArchive *this)
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
      v10 = TSCE::FormulaAtCoordArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
    v2 = *(this + 4);
  }

  if (v2)
  {
    v11 = TSP::UUID::ByteSizeLong(*(this + 6));
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

uint64_t TSCE::FormulaCoordPairsByOwnerArchive::MergeFrom(TSCE::FormulaCoordPairsByOwnerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::FormulaCoordPairsByOwnerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::FormulaCoordPairsByOwnerArchive::MergeFrom(uint64_t this, const TSCE::FormulaCoordPairsByOwnerArchive *a2)
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
    this = sub_22156BBFC(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

        v11 = MEMORY[0x223DA0360](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 14);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TSCE::FormulaCoordPairsByOwnerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormulaCoordPairsByOwnerArchive::Clear(this);

    return TSCE::FormulaCoordPairsByOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::FormulaCoordPairsByOwnerArchive::CopyFrom(uint64_t *this, const TSCE::FormulaCoordPairsByOwnerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormulaCoordPairsByOwnerArchive::Clear(this);

    return TSCE::FormulaCoordPairsByOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::FormulaCoordPairsByOwnerArchive::IsInitialized(TSCE::FormulaCoordPairsByOwnerArchive *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 0;
  }

  result = sub_2215566D8(this + 24);
  if (result)
  {
    if ((*(this + 16) & 1) == 0)
    {
      return 1;
    }

    result = TSP::UUID::IsInitialized(*(this + 6));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2215566D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    v4 = *(v3 + 16);
    if ((~v4 & 6) != 0)
    {
      break;
    }

    if (v4)
    {
      result = TSCE::FormulaArchive::IsInitialized(*(v3 + 24));
      if (!result)
      {
        return result;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return 0;
}

__n128 TSCE::FormulaCoordPairsByOwnerArchive::InternalSwap(__n128 *this, __n128 *a2)
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

TSCE::FormulasForUndoArchive *TSCE::FormulasForUndoArchive::FormulasForUndoArchive(TSCE::FormulasForUndoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B0250;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_FormulasForUndoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::FormulasForUndoArchive *TSCE::FormulasForUndoArchive::FormulasForUndoArchive(TSCE::FormulasForUndoArchive *this, const TSCE::FormulasForUndoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834B0250;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22156BD40(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::FormulasForUndoArchive::~FormulasForUndoArchive(TSCE::FormulasForUndoArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22156BCBC(this + 2);
}

{
  TSCE::FormulasForUndoArchive::~FormulasForUndoArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::FormulasForUndoArchive::default_instance(TSCE::FormulasForUndoArchive *this)
{
  if (atomic_load_explicit(scc_info_FormulasForUndoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_FormulasForUndoArchive_default_instance_;
}

uint64_t *TSCE::FormulasForUndoArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::FormulaCoordPairsByOwnerArchive::Clear(v4);
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

google::protobuf::internal *TSCE::FormulasForUndoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaCoordPairsByOwnerArchive>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216FE8CC(a3, v13, v10);
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

unsigned __int8 *TSCE::FormulasForUndoArchive::_InternalSerialize(TSCE::FormulasForUndoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::FormulaCoordPairsByOwnerArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::FormulasForUndoArchive::ByteSizeLong(TSCE::FormulasForUndoArchive *this)
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
      v7 = TSCE::FormulaCoordPairsByOwnerArchive::ByteSizeLong(v6);
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

uint64_t TSCE::FormulasForUndoArchive::MergeFrom(TSCE::FormulasForUndoArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::FormulasForUndoArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::FormulasForUndoArchive::MergeFrom(uint64_t this, const TSCE::FormulasForUndoArchive *a2)
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
    this = sub_22156BD40(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::FormulasForUndoArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormulasForUndoArchive::Clear(this);

    return TSCE::FormulasForUndoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::FormulasForUndoArchive::CopyFrom(uint64_t *this, const TSCE::FormulasForUndoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormulasForUndoArchive::Clear(this);

    return TSCE::FormulasForUndoArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::FormulasForUndoArchive::IsInitialized(TSCE::FormulasForUndoArchive *this)
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
    IsInitialized = TSCE::FormulaCoordPairsByOwnerArchive::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSCE::FormulasForUndoArchive::InternalSwap(TSCE::FormulasForUndoArchive *this, TSCE::FormulasForUndoArchive *a2)
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

TSP::Reference *TSCE::FormulaRewriteCommandArchive::clear_table_rewrite_command(TSCE::FormulaRewriteCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSK::CommandArchive *TSCE::FormulaRewriteCommandArchive::clear_super(TSCE::FormulaRewriteCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCE::FormulaRewriteCommandArchive *TSCE::FormulaRewriteCommandArchive::FormulaRewriteCommandArchive(TSCE::FormulaRewriteCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B0300;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaRewriteCommandArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834B0300;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaRewriteCommandArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCE::FormulaRewriteCommandArchive *TSCE::FormulaRewriteCommandArchive::FormulaRewriteCommandArchive(TSCE::FormulaRewriteCommandArchive *this, const TSCE::FormulaRewriteCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B0300;
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

void TSCE::FormulaRewriteCommandArchive::~FormulaRewriteCommandArchive(TSCE::FormulaRewriteCommandArchive *this)
{
  if (this != TSCE::_FormulaRewriteCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }

    if (*(this + 4))
    {
      v3 = MEMORY[0x223D9FA30]();
      MEMORY[0x223DA1450](v3, 0x10A1C40C24530F0);
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::FormulaRewriteCommandArchive::~FormulaRewriteCommandArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::FormulaRewriteCommandArchive::default_instance(TSCE::FormulaRewriteCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_FormulaRewriteCommandArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_FormulaRewriteCommandArchive_default_instance_;
}

uint64_t *TSCE::FormulaRewriteCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::Reference::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSK::CommandArchive::Clear(*(v1 + 32));
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

google::protobuf::internal *TSCE::FormulaRewriteCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  while ((sub_221567030(a3, &v20) & 1) == 0)
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

        v13 = MEMORY[0x223DA02B0](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v20;
      }

      v10 = sub_2216FE99C(a3, v11, v5);
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
          sub_221567188((a1 + 8));
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

        v16 = MEMORY[0x223DA0390](v15);
        LODWORD(v14) = v16;
        *(a1 + 24) = v16;
        v5 = v20;
      }

      v10 = sub_22170B7F8(a3, v14, v5);
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

unsigned __int8 *TSCE::FormulaRewriteCommandArchive::_InternalSerialize(TSCE::FormulaRewriteCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSK::CommandArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::FormulaRewriteCommandArchive::ByteSizeLong(TSCE::FormulaRewriteCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
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
    v5 = TSK::CommandArchive::ByteSizeLong(*(this + 4));
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

uint64_t TSCE::FormulaRewriteCommandArchive::MergeFrom(TSCE::FormulaRewriteCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::FormulaRewriteCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::FormulaRewriteCommandArchive::MergeFrom(uint64_t this, const TSCE::FormulaRewriteCommandArchive *a2)
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
      if (!*(v3 + 32))
      {
        v9 = *(v3 + 8);
        if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v3 + 32) = MEMORY[0x223DA02B0](v9);
      }

      return MEMORY[0x2821EA268]();
    }
  }

  return this;
}

uint64_t *TSCE::FormulaRewriteCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormulaRewriteCommandArchive::Clear(this);

    return TSCE::FormulaRewriteCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::FormulaRewriteCommandArchive::CopyFrom(uint64_t *this, const TSCE::FormulaRewriteCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::FormulaRewriteCommandArchive::Clear(this);

    return TSCE::FormulaRewriteCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::FormulaRewriteCommandArchive::IsInitialized(TSCE::FormulaRewriteCommandArchive *this)
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

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCE::FormulaRewriteCommandArchive::InternalSwap(TSCE::FormulaRewriteCommandArchive *this, TSCE::FormulaRewriteCommandArchive *a2)
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

TSCE::TrackedReferenceArchive *TSCE::TrackedReferenceArchive::TrackedReferenceArchive(TSCE::TrackedReferenceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B03B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TrackedReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B03B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TrackedReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSCE::TrackedReferenceArchive *TSCE::TrackedReferenceArchive::TrackedReferenceArchive(TSCE::TrackedReferenceArchive *this, const TSCE::TrackedReferenceArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B03B0;
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

void TSCE::TrackedReferenceArchive::~TrackedReferenceArchive(TSCE::TrackedReferenceArchive *this)
{
  if (this != TSCE::_TrackedReferenceArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::ASTNodeArrayArchive::~ASTNodeArrayArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::TrackedReferenceArchive::~TrackedReferenceArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::TrackedReferenceArchive::default_instance(TSCE::TrackedReferenceArchive *this)
{
  if (atomic_load_explicit(scc_info_TrackedReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_TrackedReferenceArchive_default_instance_;
}

uint64_t *TSCE::TrackedReferenceArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSCE::ASTNodeArrayArchive::Clear(this[3]);
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

google::protobuf::internal *TSCE::TrackedReferenceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_2216FD54C(a3, v16, v7);
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
      v13 = (v7 + 1);
      LODWORD(v14) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v13;
      v14 = (v14 + (v15 << 7) - 128);
      if ((v15 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_23:
        v22 = v13;
        *(a1 + 32) = v14;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow32(v7, v14);
      v22 = v20;
      *(a1 + 32) = v21;
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

unsigned __int8 *TSCE::TrackedReferenceArchive::_InternalSerialize(TSCE::TrackedReferenceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::ASTNodeArrayArchive::_InternalSerialize(v6, v8, a3);
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

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::TrackedReferenceArchive::RequiredFieldsByteSizeFallback(TSCE::TrackedReferenceArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCE::ASTNodeArrayArchive::ByteSizeLong(*(this + 3));
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

uint64_t TSCE::TrackedReferenceArchive::ByteSizeLong(TSCE::ASTNodeArrayArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSCE::TrackedReferenceArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::ASTNodeArrayArchive::ByteSizeLong(this[3]);
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

uint64_t TSCE::TrackedReferenceArchive::MergeFrom(TSCE::TrackedReferenceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::TrackedReferenceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::TrackedReferenceArchive::MergeFrom(uint64_t this, const TSCE::TrackedReferenceArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCE::_ASTNodeArrayArchive_default_instance_;
      }

      this = TSCE::ASTNodeArrayArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSCE::TrackedReferenceArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::TrackedReferenceArchive::Clear(this);

    return TSCE::TrackedReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::TrackedReferenceArchive::CopyFrom(uint64_t *this, const TSCE::TrackedReferenceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::TrackedReferenceArchive::Clear(this);

    return TSCE::TrackedReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::TrackedReferenceArchive::IsInitialized(TSCE::TrackedReferenceArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  v1 = *(this + 3);
  v2 = *(v1 + 24);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSCE::ASTNodeArrayArchive_ASTNodeArchive::IsInitialized(*(*(v1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

uint64_t *TSCE::TrackedReferenceArchive::InternalSwap(TSCE::TrackedReferenceArchive *this, TSCE::TrackedReferenceArchive *a2)
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

TSCE::ExpandedTrackedReferenceArchive *TSCE::ExpandedTrackedReferenceArchive::ExpandedTrackedReferenceArchive(TSCE::ExpandedTrackedReferenceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B0460;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ExpandedTrackedReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834B0460;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ExpandedTrackedReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCE::ExpandedTrackedReferenceArchive *TSCE::ExpandedTrackedReferenceArchive::ExpandedTrackedReferenceArchive(TSCE::ExpandedTrackedReferenceArchive *this, const TSCE::ExpandedTrackedReferenceArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B0460;
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
  *(this + 4) = *(a2 + 4);
  return this;
}

void TSCE::ExpandedTrackedReferenceArchive::~ExpandedTrackedReferenceArchive(TSCE::ExpandedTrackedReferenceArchive *this)
{
  if (this != &TSCE::_ExpandedTrackedReferenceArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::ASTNodeArrayArchive::~ASTNodeArrayArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::ExpandedTrackedReferenceArchive::~ExpandedTrackedReferenceArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::ExpandedTrackedReferenceArchive::default_instance(TSCE::ExpandedTrackedReferenceArchive *this)
{
  if (atomic_load_explicit(scc_info_ExpandedTrackedReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ExpandedTrackedReferenceArchive_default_instance_;
}

uint64_t *TSCE::ExpandedTrackedReferenceArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSCE::ASTNodeArrayArchive::Clear(this[3]);
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

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TSCE::ExpandedTrackedReferenceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_45;
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
        v17 = (v7 + 1);
        LODWORD(v18) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        v19 = *v17;
        v18 = (v18 + (v19 << 7) - 128);
        if ((v19 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_29:
          v28 = v17;
          *(a1 + 36) = v18;
          goto LABEL_36;
        }

        v26 = google::protobuf::internal::VarintParseSlow32(v7, v18);
        v28 = v26;
        *(a1 + 36) = v27;
        if (!v26)
        {
LABEL_45:
          v28 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 == 1 && v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v20 = *(a1 + 24);
            if (!v20)
            {
              v21 = *(a1 + 8);
              if (v21)
              {
                v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
              }

              v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive>(v21);
              *(a1 + 24) = v20;
              v7 = v28;
            }

            v13 = sub_2216FD54C(a3, v20, v7);
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

          v28 = v13;
          if (!v13)
          {
            goto LABEL_45;
          }

          goto LABEL_36;
        }

        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
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
          v28 = v14;
          *(a1 + 32) = v15;
          goto LABEL_36;
        }

        v24 = google::protobuf::internal::VarintParseSlow32(v7, v15);
        v28 = v24;
        *(a1 + 32) = v25;
        if (!v24)
        {
          goto LABEL_45;
        }
      }

LABEL_36:
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

unsigned __int8 *TSCE::ExpandedTrackedReferenceArchive::_InternalSerialize(TSCE::ExpandedTrackedReferenceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    v8 = *(v7 + 10);
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

    a2 = TSCE::ASTNodeArrayArchive::_InternalSerialize(v7, v9, a3);
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

  return MEMORY[0x2821EAC40]((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ExpandedTrackedReferenceArchive::RequiredFieldsByteSizeFallback(TSCE::ExpandedTrackedReferenceArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCE::ASTNodeArrayArchive::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
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
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSCE::ExpandedTrackedReferenceArchive::ByteSizeLong(TSCE::ASTNodeArrayArchive **this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v3 = TSCE::ExpandedTrackedReferenceArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::ASTNodeArrayArchive::ByteSizeLong(this[3]);
    v3 = v2 + ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 3;
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

uint64_t TSCE::ExpandedTrackedReferenceArchive::MergeFrom(TSCE::ExpandedTrackedReferenceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ExpandedTrackedReferenceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ExpandedTrackedReferenceArchive::MergeFrom(uint64_t this, const TSCE::ExpandedTrackedReferenceArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCE::_ASTNodeArrayArchive_default_instance_;
      }

      this = TSCE::ASTNodeArrayArchive::MergeFrom(v6, v8);
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

uint64_t *TSCE::ExpandedTrackedReferenceArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ExpandedTrackedReferenceArchive::Clear(this);

    return TSCE::ExpandedTrackedReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ExpandedTrackedReferenceArchive::CopyFrom(uint64_t *this, const TSCE::ExpandedTrackedReferenceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ExpandedTrackedReferenceArchive::Clear(this);

    return TSCE::ExpandedTrackedReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::ExpandedTrackedReferenceArchive::IsInitialized(TSCE::ExpandedTrackedReferenceArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    return 0;
  }

  v1 = *(this + 3);
  v2 = *(v1 + 24);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSCE::ASTNodeArrayArchive_ASTNodeArchive::IsInitialized(*(*(v1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

__n128 TSCE::ExpandedTrackedReferenceArchive::InternalSwap(TSCE::ExpandedTrackedReferenceArchive *this, TSCE::ExpandedTrackedReferenceArchive *a2)
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

TSP::CFUUIDArchive *TSCE::TrackedReferenceStoreArchive::clear_uuid(TSCE::TrackedReferenceStoreArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::CFUUIDArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSCE::TrackedReferenceStoreArchive::clear_tracked_reference(uint64_t this)
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

TSCE::TrackedReferenceStoreArchive *TSCE::TrackedReferenceStoreArchive::TrackedReferenceStoreArchive(TSCE::TrackedReferenceStoreArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B0510;
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
  if (atomic_load_explicit(scc_info_TrackedReferenceStoreArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

void sub_2215593B4(_Unwind_Exception *a1)
{
  sub_22156BE84(v3);
  sub_22156BE00(v2);
  sub_2216E381C(v1);
  _Unwind_Resume(a1);
}

TSCE::TrackedReferenceStoreArchive *TSCE::TrackedReferenceStoreArchive::TrackedReferenceStoreArchive(TSCE::TrackedReferenceStoreArchive *this, const TSCE::TrackedReferenceStoreArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B0510;
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
    sub_221568514(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_22156BF08(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_22156BFC8(this + 72, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
    v18 = *(this + 20) + v15;
    *(this + 20) = v18;
    v19 = *(this + 11);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 1);
  if (v20)
  {
    sub_22156734C(v4, (v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 12) = 0;
  return this;
}

void sub_2215595E0(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x1081C401753DA55);
  sub_22156BE84(v4);
  sub_22156BE00(v2);
  sub_2216E381C((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::TrackedReferenceStoreArchive::~TrackedReferenceStoreArchive(TSCE::TrackedReferenceStoreArchive *this)
{
  if (this != &TSCE::_TrackedReferenceStoreArchive_default_instance_ && *(this + 12))
  {
    v2 = MEMORY[0x223D9FBD0]();
    MEMORY[0x223DA1450](v2, 0x1081C401753DA55);
  }

  sub_2214DFCF8(this + 1);
  sub_22156BE84(this + 9);
  sub_22156BE00(this + 6);
  sub_2216E381C(this + 3);
}

{
  TSCE::TrackedReferenceStoreArchive::~TrackedReferenceStoreArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::TrackedReferenceStoreArchive::default_instance(TSCE::TrackedReferenceStoreArchive *this)
{
  if (atomic_load_explicit(scc_info_TrackedReferenceStoreArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_TrackedReferenceStoreArchive_default_instance_;
}

uint64_t *TSCE::TrackedReferenceStoreArchive::Clear(uint64_t *this)
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
      this = TSCE::TrackedReferenceArchive::Clear(v7);
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
      this = TSCE::ExpandedTrackedReferenceArchive::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::CFUUIDArchive::Clear(*(v1 + 96));
  }

  v12 = *(v1 + 8);
  v11 = v1 + 8;
  *(v11 + 8) = 0;
  if (v12)
  {

    return sub_221567398(v11);
  }

  return this;
}

google::protobuf::internal *TSCE::TrackedReferenceStoreArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v43 = a2;
  while (1)
  {
LABEL_2:
    if (sub_221567030(a3, &v43))
    {
      return v43;
    }

    v5 = (v43 + 1);
    v6 = *v43;
    if ((*v43 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v43 + 2);
LABEL_6:
      v43 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v43, (v7 - 128));
    v43 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v41;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 != 3)
      {
        if (v8 != 4 || v6 != 34)
        {
          goto LABEL_60;
        }

        v19 = (v5 - 1);
        while (1)
        {
          v20 = (v19 + 1);
          v43 = (v19 + 1);
          v21 = *(a1 + 88);
          if (!v21)
          {
            goto LABEL_31;
          }

          v26 = *(a1 + 80);
          v22 = *v21;
          if (v26 < *v21)
          {
            *(a1 + 80) = v26 + 1;
            v23 = *&v21[2 * v26 + 2];
            goto LABEL_35;
          }

          if (v22 == *(a1 + 84))
          {
LABEL_31:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v21 = *(a1 + 88);
            v22 = *v21;
          }

          *v21 = v22 + 1;
          v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ExpandedTrackedReferenceArchive>(*(a1 + 72));
          v24 = *(a1 + 80);
          v25 = *(a1 + 88) + 8 * v24;
          *(a1 + 80) = v24 + 1;
          *(v25 + 8) = v23;
          v20 = v43;
LABEL_35:
          v19 = sub_2216FEB3C(a3, v23, v20);
          v43 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 34)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 != 26)
      {
        goto LABEL_60;
      }

      v31 = (v5 - 1);
      while (1)
      {
        v32 = (v31 + 1);
        v43 = (v31 + 1);
        v33 = *(a1 + 64);
        if (!v33)
        {
          goto LABEL_50;
        }

        v38 = *(a1 + 56);
        v34 = *v33;
        if (v38 < *v33)
        {
          *(a1 + 56) = v38 + 1;
          v35 = *&v33[2 * v38 + 2];
          goto LABEL_54;
        }

        if (v34 == *(a1 + 60))
        {
LABEL_50:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
          v33 = *(a1 + 64);
          v34 = *v33;
        }

        *v33 = v34 + 1;
        v35 = google::protobuf::Arena::CreateMaybeMessage<TSCE::TrackedReferenceArchive>(*(a1 + 48));
        v36 = *(a1 + 56);
        v37 = *(a1 + 64) + 8 * v36;
        *(a1 + 56) = v36 + 1;
        *(v37 + 8) = v35;
        v32 = v43;
LABEL_54:
        v31 = sub_2216FEA6C(a3, v35, v32);
        v43 = v31;
        if (!v31)
        {
          return 0;
        }

        if (*a3 <= v31 || *v31 != 26)
        {
          goto LABEL_2;
        }
      }
    }

    if (v8 != 1)
    {
      if (v8 != 2 || v6 != 18)
      {
        goto LABEL_60;
      }

      v10 = v5 - 1;
      while (1)
      {
        v11 = (v10 + 1);
        v43 = (v10 + 1);
        v12 = *(a1 + 40);
        if (!v12)
        {
          goto LABEL_16;
        }

        v18 = *(a1 + 32);
        v13 = *v12;
        if (v18 < *v12)
        {
          *(a1 + 32) = v18 + 1;
          v15 = *&v12[2 * v18 + 2];
          goto LABEL_20;
        }

        if (v13 == *(a1 + 36))
        {
LABEL_16:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v12 = *(a1 + 40);
          v13 = *v12;
        }

        *v12 = v13 + 1;
        v14 = MEMORY[0x223DA0390](*(a1 + 24));
        LODWORD(v15) = v14;
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v14;
        v11 = v43;
LABEL_20:
        v10 = sub_22170B7F8(a3, v15, v11);
        v43 = v10;
        if (!v10)
        {
          return 0;
        }

        if (*a3 <= v10 || *v10 != 18)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v27 = *(a1 + 96);
      if (!v27)
      {
        v28 = *(a1 + 8);
        if (v28)
        {
          v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
        }

        v29 = MEMORY[0x223DA0300](v28);
        LODWORD(v27) = v29;
        *(a1 + 96) = v29;
        v5 = v43;
      }

      v30 = sub_2216F7F9C(a3, v27, v5);
      goto LABEL_67;
    }

LABEL_60:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v30 = google::protobuf::internal::UnknownFieldParse();
LABEL_67:
    v43 = v30;
    if (!v30)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v43;
}

unsigned __int8 *TSCE::TrackedReferenceStoreArchive::_InternalSerialize(TSCE::TrackedReferenceStoreArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 12);
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

    a2 = TSP::CFUUIDArchive::_InternalSerialize(v5, v7, a3);
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

  v19 = *(this + 14);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(this + 8) + 8 * j + 8);
      *a2 = 26;
      v22 = *(v21 + 5);
      if (v22 > 0x7F)
      {
        a2[1] = v22 | 0x80;
        v24 = v22 >> 7;
        if (v22 >> 14)
        {
          v23 = a2 + 3;
          do
          {
            *(v23 - 1) = v24 | 0x80;
            v25 = v24 >> 7;
            ++v23;
            v26 = v24 >> 14;
            v24 >>= 7;
          }

          while (v26);
          *(v23 - 1) = v25;
        }

        else
        {
          a2[2] = v24;
          v23 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v22;
        v23 = a2 + 2;
      }

      a2 = TSCE::TrackedReferenceArchive::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(this + 20);
  if (v27)
  {
    for (k = 0; k != v27; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v29 = *(*(this + 11) + 8 * k + 8);
      *a2 = 34;
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

      a2 = TSCE::ExpandedTrackedReferenceArchive::_InternalSerialize(v29, v31, a3);
    }
  }

  v35 = *(this + 1);
  if ((v35 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v35 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::TrackedReferenceStoreArchive::ByteSizeLong(TSP::CFUUIDArchive **this)
{
  if (this[2])
  {
    v3 = TSP::CFUUIDArchive::ByteSizeLong(this[12]);
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
      v17 = TSCE::TrackedReferenceArchive::ByteSizeLong(v16);
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
      v24 = TSCE::ExpandedTrackedReferenceArchive::ByteSizeLong(v23);
      v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      v22 -= 8;
    }

    while (v22);
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v19, this + 20);
  }

  else
  {
    *(this + 5) = v19;
    return v19;
  }
}

uint64_t TSCE::TrackedReferenceStoreArchive::MergeFrom(TSCE::TrackedReferenceStoreArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::TrackedReferenceStoreArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::TrackedReferenceStoreArchive::MergeFrom(uint64_t this, const TSCE::TrackedReferenceStoreArchive *a2)
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
    this = sub_221568514(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_22156BF08(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    this = sub_22156BFC8(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  if (*(a2 + 16))
  {
    v20 = *(a2 + 12);
    *(v3 + 16) |= 1u;
    v21 = *(v3 + 96);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x223DA0300](v22);
      *(v3 + 96) = v21;
      v20 = *(a2 + 12);
    }

    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = MEMORY[0x277D80A28];
    }

    return TSP::CFUUIDArchive::MergeFrom(v21, v23);
  }

  return this;
}

uint64_t *TSCE::TrackedReferenceStoreArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::TrackedReferenceStoreArchive::Clear(this);

    return TSCE::TrackedReferenceStoreArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::TrackedReferenceStoreArchive::CopyFrom(uint64_t *this, const TSCE::TrackedReferenceStoreArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::TrackedReferenceStoreArchive::Clear(this);

    return TSCE::TrackedReferenceStoreArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::TrackedReferenceStoreArchive::IsInitialized(TSCE::TrackedReferenceStoreArchive *this)
{
  if ((*(this + 16) & 1) == 0)
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

  v5 = *(this + 14);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = TSCE::TrackedReferenceArchive::IsInitialized(*(*(this + 8) + 8 * v5));
    v5 = v6;
    if (!v7)
    {
      return 0;
    }
  }

  v10 = *(this + 20);
  do
  {
    v8 = v10 < 1;
    if (v10 < 1)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = TSCE::ExpandedTrackedReferenceArchive::IsInitialized(*(*(this + 11) + 8 * v10));
    v10 = v11;
  }

  while (v12);
  return v8;
}

__n128 TSCE::TrackedReferenceStoreArchive::InternalSwap(TSCE::TrackedReferenceStoreArchive *this, TSCE::TrackedReferenceStoreArchive *a2)
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
  result = *(a2 + 5);
  *(this + 5) = result;
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v12 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v12;
  return result;
}

TSP::UUID *TSCE::ViewTractRefArchive::clear_table_uid(TSCE::ViewTractRefArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::ViewTractRefArchive *TSCE::ViewTractRefArchive::ViewTractRefArchive(TSCE::ViewTractRefArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B05C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ViewTractRefArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834B05C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ViewTractRefArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSCE::ViewTractRefArchive *TSCE::ViewTractRefArchive::ViewTractRefArchive(TSCE::ViewTractRefArchive *this, const TSCE::ViewTractRefArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B05C0;
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
  v7 = *(a2 + 6);
  *(this + 14) = *(a2 + 14);
  *(this + 6) = v7;
  return this;
}

void TSCE::ViewTractRefArchive::~ViewTractRefArchive(TSCE::ViewTractRefArchive *this)
{
  if (this != TSCE::_ViewTractRefArchive_default_instance_)
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
      TSCE::ASTNodeArrayArchive_ASTUidTract::~ASTNodeArrayArchive_ASTUidTract(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      sub_2214DFCF8((v4 + 8));
      MEMORY[0x223DA1450](v4, 0x1081C40E1DA5700);
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::ViewTractRefArchive::~ViewTractRefArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::ViewTractRefArchive::default_instance(TSCE::ViewTractRefArchive *this)
{
  if (atomic_load_explicit(scc_info_ViewTractRefArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_ViewTractRefArchive_default_instance_;
}

uint64_t *TSCE::ViewTractRefArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_10;
  }

  if (v2)
  {
    this = TSP::UUID::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSCE::ASTNodeArrayArchive_ASTUidTract::Clear(v1[4]);
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
    this = sub_221567398(this);
  }

LABEL_10:
  if ((v2 & 0x38) != 0)
  {
    *(v1 + 14) = 0;
    v1[6] = 0;
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

google::protobuf::internal *TSCE::ViewTractRefArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_69;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_48;
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

            v19 = MEMORY[0x223DA0360](v18);
            LODWORD(v17) = v19;
            *(a1 + 24) = v19;
            v7 = v32;
          }

          v14 = sub_2216F813C(a3, v17, v7);
        }

        else if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_48;
          }

          *(a1 + 16) |= 2u;
          v23 = *(a1 + 32);
          if (!v23)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidTract>(v24);
            *(a1 + 32) = v23;
            v7 = v32;
          }

          v14 = sub_2216FC30C(a3, v23, v7);
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

            v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::PreserveColumnRowFlagsArchive>(v13);
            *(a1 + 40) = v12;
            v7 = v32;
          }

          v14 = sub_2216FC16C(a3, v12, v7);
        }

        else
        {
LABEL_48:
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
            sub_221567188((a1 + 8));
          }

          v14 = google::protobuf::internal::UnknownFieldParse();
        }

        v32 = v14;
        if (!v14)
        {
          goto LABEL_69;
        }

        goto LABEL_66;
      }

      if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_48;
        }

        v5 |= 8u;
        v20 = (v7 + 1);
        LODWORD(v21) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v22 = *v20;
        v21 = (v21 + (v22 << 7) - 128);
        if ((v22 & 0x80000000) == 0)
        {
          v20 = (v7 + 2);
LABEL_37:
          v32 = v20;
          *(a1 + 48) = v21;
          goto LABEL_66;
        }

        v30 = google::protobuf::internal::VarintParseSlow32(v7, v21);
        v32 = v30;
        *(a1 + 48) = v31;
        if (!v30)
        {
          goto LABEL_69;
        }
      }

      else if (v10 == 5)
      {
        if (v8 != 40)
        {
          goto LABEL_48;
        }

        v25 = (v7 + 1);
        v26 = *v7;
        if ((v26 & 0x8000000000000000) != 0)
        {
          v26 = (*v25 << 7) + v26 - 128;
          if (*v25 < 0)
          {
            v25 = google::protobuf::internal::VarintParseSlow64(v7, v26);
          }

          else
          {
            v25 = (v7 + 2);
          }
        }

        v5 |= 0x10u;
        v32 = v25;
        *(a1 + 52) = -(v26 & 1) ^ (v26 >> 1);
        if (!v25)
        {
LABEL_69:
          v32 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 6 || v8 != 48)
        {
          goto LABEL_48;
        }

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

        v5 |= 0x20u;
        v32 = v15;
        *(a1 + 56) = -(v16 & 1) ^ (v16 >> 1);
        if (!v15)
        {
          goto LABEL_69;
        }
      }

LABEL_66:
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

unsigned __int8 *TSCE::ViewTractRefArchive::_InternalSerialize(TSCE::ViewTractRefArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 3);
    *a2 = 10;
    v9 = *(v8 + 5);
    if (v9 > 0x7F)
    {
      a2[1] = v9 | 0x80;
      v12 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = a2 + 3;
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
        a2[2] = v12;
        v10 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v9;
      v10 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v8, v10, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
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

  v17 = *(this + 4);
  *a2 = 18;
  v18 = *(v17 + 5);
  if (v18 > 0x7F)
  {
    a2[1] = v18 | 0x80;
    v20 = v18 >> 7;
    if (v18 >> 14)
    {
      v19 = a2 + 3;
      do
      {
        *(v19 - 1) = v20 | 0x80;
        v21 = v20 >> 7;
        ++v19;
        v22 = v20 >> 14;
        v20 >>= 7;
      }

      while (v22);
      *(v19 - 1) = v21;
    }

    else
    {
      a2[2] = v20;
      v19 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v18;
    v19 = a2 + 2;
  }

  a2 = TSCE::ASTNodeArrayArchive_ASTUidTract::_InternalSerialize(v17, v19, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_46:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v29 = *(this + 12);
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
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        a2[2] = v30;
        a2 += 3;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
      a2[1] = v29;
      a2 += 2;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_57;
      }
    }

LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_7;
  }

LABEL_36:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v23 = *(this + 5);
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

  a2 = TSCE::PreserveColumnRowFlagsArchive::_InternalSerialize(v23, v25, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_46;
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_57:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v33 = *(this + 13);
  *a2 = 40;
  v34 = (2 * v33) ^ (v33 >> 31);
  if (v34 > 0x7F)
  {
    a2[1] = v34 | 0x80;
    v35 = v34 >> 7;
    if (v34 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v35 | 0x80;
        v36 = v35 >> 7;
        ++a2;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
      *(a2 - 1) = v36;
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_68;
      }
    }

    else
    {
      a2[2] = v35;
      a2 += 3;
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_68;
      }
    }
  }

  else
  {
    a2[1] = v34;
    a2 += 2;
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_68;
    }
  }

LABEL_7:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 14);
  *a2 = 48;
  v7 = (2 * v6) ^ (v6 >> 31);
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v11 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v11 | 0x80;
        v13 = v11 >> 7;
        ++a2;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
    }

    else
    {
      a2[2] = v11;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v7;
    a2 += 2;
  }

LABEL_68:
  v38 = *(this + 1);
  if ((v38 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v38 & 0xFFFFFFFFFFFFFFFELL) + 8);
}