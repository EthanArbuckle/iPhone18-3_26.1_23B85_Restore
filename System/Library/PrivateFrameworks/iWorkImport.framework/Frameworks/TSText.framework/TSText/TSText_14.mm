uint64_t TSWP::ChangeArchive::MergeFrom(TSWP::ChangeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ChangeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ChangeArchive::MergeFrom(uint64_t this, const TSWP::ChangeArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) != 0)
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

        goto LABEL_20;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

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

    this = TSP::Reference::MergeFrom(v6, v8);
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
      *(v3 + 48) = *(a2 + 12);
      goto LABEL_9;
    }

LABEL_20:
    *(v3 + 16) |= 4u;
    v9 = *(v3 + 40);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277CA31F0](v10);
      *(v3 + 40) = v9;
    }

    if (*(a2 + 5))
    {
      v11 = *(a2 + 5);
    }

    else
    {
      v11 = MEMORY[0x277D809C0];
    }

    this = TSP::Date::MergeFrom(v9, v11);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TSWP::ChangeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ChangeArchive::Clear(this);

    return TSWP::ChangeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ChangeArchive::CopyFrom(uint64_t *this, const TSWP::ChangeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ChangeArchive::Clear(this);

    return TSWP::ChangeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ChangeArchive::IsInitialized(TSWP::ChangeArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 4));
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

  result = TSP::Date::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::ChangeArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276E4FC00(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[1].n128_u64[1];
  this[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v5;
  v6 = this[2].n128_u64[0];
  v7 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u64[1] = v7;
  LODWORD(v6) = this[3].n128_u32[0];
  this[3].n128_u32[0] = a2[3].n128_u32[0];
  a2[3].n128_u32[0] = v6;
  return result;
}

TSP::Reference *TSWP::ChangeSessionArchive::clear_author(TSWP::ChangeSessionArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Date *TSWP::ChangeSessionArchive::clear_date(TSWP::ChangeSessionArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSWP::ChangeSessionArchive *TSWP::ChangeSessionArchive::ChangeSessionArchive(TSWP::ChangeSessionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288603750;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ChangeSessionArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_288603750;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ChangeSessionArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TSWP::ChangeSessionArchive *TSWP::ChangeSessionArchive::ChangeSessionArchive(TSWP::ChangeSessionArchive *this, const TSWP::ChangeSessionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288603750;
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
  *(this + 10) = *(a2 + 10);
  return this;
}

void TSWP::ChangeSessionArchive::~ChangeSessionArchive(TSWP::ChangeSessionArchive *this)
{
  if (this != &TSWP::_ChangeSessionArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277CA3D00]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Date::~Date(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::ChangeSessionArchive::~ChangeSessionArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::ChangeSessionArchive::default_instance(TSWP::ChangeSessionArchive *this)
{
  if (atomic_load_explicit(scc_info_ChangeSessionArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ChangeSessionArchive_default_instance_;
}

uint64_t *TSWP::ChangeSessionArchive::Clear(uint64_t *this)
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
      this = TSP::Date::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::ChangeSessionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v27) & 1) == 0)
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
        goto LABEL_45;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
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

          v19 = MEMORY[0x277CA31F0](v18);
          LODWORD(v17) = v19;
          *(a1 + 32) = v19;
          v7 = v27;
        }

        v13 = sub_276F52514(a3, v17, v7);
LABEL_32:
        v27 = v13;
        if (!v13)
        {
          goto LABEL_45;
        }

        goto LABEL_38;
      }

      if (v10 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v14 = *(a1 + 24);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = MEMORY[0x277CA3250](v15);
            LODWORD(v14) = v16;
            *(a1 + 24) = v16;
            v7 = v27;
          }

          v13 = sub_276F4F9E8(a3, v14, v7);
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
          sub_276EA4A94((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_32;
      }

      if (v10 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
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
        v27 = v20;
        *(a1 + 40) = v21;
        goto LABEL_38;
      }

      v25 = google::protobuf::internal::VarintParseSlow32(v7, v21);
      v27 = v25;
      *(a1 + 40) = v26;
      if (!v25)
      {
LABEL_45:
        v27 = 0;
        goto LABEL_2;
      }

LABEL_38:
      if (sub_276EA4A1C(a3, &v27))
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

unsigned __int8 *TSWP::ChangeSessionArchive::_InternalSerialize(TSWP::ChangeSessionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  a2 = TSP::Reference::_InternalSerialize(v10, v12, a3);
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

    a2 = TSP::Date::_InternalSerialize(v16, v18, a3);
  }

LABEL_36:
  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ChangeSessionArchive::ByteSizeLong(TSWP::ChangeSessionArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_10;
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
    v5 = TSP::Date::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::ChangeSessionArchive::MergeFrom(TSWP::ChangeSessionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ChangeSessionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ChangeSessionArchive::MergeFrom(uint64_t this, const TSWP::ChangeSessionArchive *a2)
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
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277CA3250](v7);
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

      v9 = MEMORY[0x277CA31F0](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = MEMORY[0x277D809C0];
    }

    this = TSP::Date::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSWP::ChangeSessionArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ChangeSessionArchive::Clear(this);

    return TSWP::ChangeSessionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ChangeSessionArchive::CopyFrom(uint64_t *this, const TSWP::ChangeSessionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ChangeSessionArchive::Clear(this);

    return TSWP::ChangeSessionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ChangeSessionArchive::IsInitialized(TSWP::ChangeSessionArchive *this)
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

  result = TSP::Date::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::ChangeSessionArchive::InternalSwap(TSWP::ChangeSessionArchive *this, TSWP::ChangeSessionArchive *a2)
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
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  return result;
}

TSP::Reference *TSWP::SectionPlaceholderArchive::clear_parent_storage(TSWP::SectionPlaceholderArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWP::SectionPlaceholderArchive *TSWP::SectionPlaceholderArchive::SectionPlaceholderArchive(TSWP::SectionPlaceholderArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288603800;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SectionPlaceholderArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288603800;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SectionPlaceholderArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWP::SectionPlaceholderArchive *TSWP::SectionPlaceholderArchive::SectionPlaceholderArchive(TSWP::SectionPlaceholderArchive *this, const TSWP::SectionPlaceholderArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288603800;
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
  return this;
}

void TSWP::SectionPlaceholderArchive::~SectionPlaceholderArchive(TSWP::SectionPlaceholderArchive *this)
{
  if (this != &TSWP::_SectionPlaceholderArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::SectionPlaceholderArchive::~SectionPlaceholderArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::SectionPlaceholderArchive::default_instance(TSWP::SectionPlaceholderArchive *this)
{
  if (atomic_load_explicit(scc_info_SectionPlaceholderArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_SectionPlaceholderArchive_default_instance_;
}

uint64_t *TSWP::SectionPlaceholderArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Reference::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276EA4D28(v2);
  }

  return this;
}

google::protobuf::internal *TSWP::SectionPlaceholderArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_276EA4A1C(a3, &v16) & 1) == 0)
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

        v12 = MEMORY[0x277CA3250](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_276F4F9E8(a3, v10, v5);
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
        sub_276EA4A94((a1 + 8));
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

unsigned __int8 *TSWP::SectionPlaceholderArchive::_InternalSerialize(TSWP::SectionPlaceholderArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::SectionPlaceholderArchive::ByteSizeLong(TSP::Reference **this)
{
  if (this[2])
  {
    v3 = TSP::Reference::ByteSizeLong(this[3]);
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

uint64_t TSWP::SectionPlaceholderArchive::MergeFrom(TSWP::SectionPlaceholderArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::SectionPlaceholderArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::SectionPlaceholderArchive::MergeFrom(uint64_t this, const TSWP::SectionPlaceholderArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = MEMORY[0x277CA3250](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWP::SectionPlaceholderArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::SectionPlaceholderArchive::Clear(this);

    return TSWP::SectionPlaceholderArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::SectionPlaceholderArchive::CopyFrom(uint64_t *this, const TSWP::SectionPlaceholderArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::SectionPlaceholderArchive::Clear(this);

    return TSWP::SectionPlaceholderArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::SectionPlaceholderArchive::IsInitialized(TSWP::SectionPlaceholderArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSWP::SectionPlaceholderArchive::InternalSwap(TSWP::SectionPlaceholderArchive *this, TSWP::SectionPlaceholderArchive *a2)
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

uint64_t TSWP::HyperlinkSelectionArchive::HyperlinkSelectionArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_2886038B0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_2886038B0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSWP::HyperlinkSelectionArchive *TSWP::HyperlinkSelectionArchive::HyperlinkSelectionArchive(TSWP::HyperlinkSelectionArchive *this, const TSWP::HyperlinkSelectionArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_2886038B0;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_276EA4CDC(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSWP::HyperlinkSelectionArchive::~HyperlinkSelectionArchive(TSWP::HyperlinkSelectionArchive *this)
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

uint64_t *TSWP::HyperlinkSelectionArchive::default_instance(TSWP::HyperlinkSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_HyperlinkSelectionArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_HyperlinkSelectionArchive_default_instance_;
}

uint64_t *TSWP::HyperlinkSelectionArchive::Clear(TSWP::HyperlinkSelectionArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

uint64_t TSWP::HyperlinkSelectionArchive::_InternalSerialize(uint64_t a1, uint64_t a2)
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

uint64_t TSWP::HyperlinkSelectionArchive::ByteSizeLong(TSWP::HyperlinkSelectionArchive *this)
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

void *TSWP::HyperlinkSelectionArchive::MergeFrom(TSWP::HyperlinkSelectionArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TSWP::HyperlinkSelectionArchive::MergeFrom(uint64_t this, const TSWP::HyperlinkSelectionArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_276EA4CDC((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSWP::HyperlinkSelectionArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_276EA4D28(v5);
    }

    return TSWP::HyperlinkSelectionArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSWP::HyperlinkSelectionArchive::CopyFrom(uint64_t *this, const TSWP::HyperlinkSelectionArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_276EA4D28(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_276EA4CDC(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

uint64_t TSWP::DateTimeSelectionArchive::DateTimeSelectionArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288603960;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_288603960;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSWP::DateTimeSelectionArchive *TSWP::DateTimeSelectionArchive::DateTimeSelectionArchive(TSWP::DateTimeSelectionArchive *this, const TSWP::DateTimeSelectionArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_288603960;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_276EA4CDC(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSWP::DateTimeSelectionArchive::~DateTimeSelectionArchive(TSWP::DateTimeSelectionArchive *this)
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

uint64_t *TSWP::DateTimeSelectionArchive::default_instance(TSWP::DateTimeSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_DateTimeSelectionArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_DateTimeSelectionArchive_default_instance_;
}

uint64_t *TSWP::DateTimeSelectionArchive::Clear(TSWP::DateTimeSelectionArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

uint64_t TSWP::DateTimeSelectionArchive::_InternalSerialize(uint64_t a1, uint64_t a2)
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

uint64_t TSWP::DateTimeSelectionArchive::ByteSizeLong(TSWP::DateTimeSelectionArchive *this)
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

void *TSWP::DateTimeSelectionArchive::MergeFrom(TSWP::DateTimeSelectionArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TSWP::DateTimeSelectionArchive::MergeFrom(uint64_t this, const TSWP::DateTimeSelectionArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_276EA4CDC((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSWP::DateTimeSelectionArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_276EA4D28(v5);
    }

    return TSWP::DateTimeSelectionArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSWP::DateTimeSelectionArchive::CopyFrom(uint64_t *this, const TSWP::DateTimeSelectionArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_276EA4D28(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_276EA4CDC(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

TSP::Reference *TSWP::FlowInfoArchive::clear_text_storage(TSWP::FlowInfoArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSWP::FlowInfoArchive::clear_textboxes(uint64_t this)
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

TSWP::FlowInfoArchive *TSWP::FlowInfoArchive::FlowInfoArchive(TSWP::FlowInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288603A10;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_FlowInfoArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 6) = 0;
  return this;
}

TSWP::FlowInfoArchive *TSWP::FlowInfoArchive::FlowInfoArchive(TSWP::FlowInfoArchive *this, const TSWP::FlowInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288603A10;
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
    sub_276EA5F50(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  *(this + 14) = *(a2 + 14);
  return this;
}

void sub_276E9BA8C(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v2, 0x1081C407D3F2757);
  sub_276EA5ECC((v1 + 24));
  _Unwind_Resume(a1);
}

void TSWP::FlowInfoArchive::~FlowInfoArchive(TSWP::FlowInfoArchive *this)
{
  if (this != &TSWP::_FlowInfoArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
  sub_276EA5ECC(this + 3);
}

{
  TSWP::FlowInfoArchive::~FlowInfoArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::FlowInfoArchive::default_instance(TSWP::FlowInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_FlowInfoArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_FlowInfoArchive_default_instance_;
}

uint64_t *TSWP::FlowInfoArchive::Clear(uint64_t *this)
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

    return sub_276EA4D28(v5);
  }

  return this;
}

google::protobuf::internal *TSWP::FlowInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v33) & 1) == 0)
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

              v28 = MEMORY[0x277CA3250](v27);
              LODWORD(v26) = v28;
              *(a1 + 48) = v28;
              v7 = v33;
            }

            v13 = sub_276F4F9E8(a3, v26, v7);
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
              sub_276EA4A94((a1 + 8));
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
            v18 = MEMORY[0x277CA3250](*(a1 + 24));
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

          v14 = sub_276F4F9E8(a3, v19, v15);
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
        v33 = v23;
        *(a1 + 56) = v24;
        goto LABEL_44;
      }

      v31 = google::protobuf::internal::VarintParseSlow32(v7, v24);
      v33 = v31;
      *(a1 + 56) = v32;
      if (!v31)
      {
LABEL_51:
        v33 = 0;
        goto LABEL_2;
      }

LABEL_44:
      if (sub_276EA4A1C(a3, &v33))
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

unsigned __int8 *TSWP::FlowInfoArchive::_InternalSerialize(TSWP::FlowInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSP::Reference::_InternalSerialize(v14, v16, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 14);
    *a2 = 24;
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
      }

      else
      {
        a2[2] = v21;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v20;
      a2 += 2;
    }
  }

  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::FlowInfoArchive::ByteSizeLong(TSWP::FlowInfoArchive *this)
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
      v2 += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::FlowInfoArchive::MergeFrom(TSWP::FlowInfoArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::FlowInfoArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::FlowInfoArchive::MergeFrom(uint64_t this, const TSWP::FlowInfoArchive *a2)
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
    this = sub_276EA5F50(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
      *(v3 + 56) = *(a2 + 14);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TSWP::FlowInfoArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::FlowInfoArchive::Clear(this);

    return TSWP::FlowInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::FlowInfoArchive::CopyFrom(uint64_t *this, const TSWP::FlowInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::FlowInfoArchive::Clear(this);

    return TSWP::FlowInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::FlowInfoArchive::IsInitialized(TSWP::FlowInfoArchive *this)
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

__n128 TSWP::FlowInfoArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276E4FC00(&this->n128_i64[1], &a2->n128_i64[1]);
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

uint64_t TSWP::FlowInfoContainerArchive::clear_flow_infos(uint64_t this)
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

TSWP::FlowInfoContainerArchive *TSWP::FlowInfoContainerArchive::FlowInfoContainerArchive(TSWP::FlowInfoContainerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288603AC0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_FlowInfoContainerArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

TSWP::FlowInfoContainerArchive *TSWP::FlowInfoContainerArchive::FlowInfoContainerArchive(TSWP::FlowInfoContainerArchive *this, const TSWP::FlowInfoContainerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288603AC0;
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
    sub_276EA5F50(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  *(this + 12) = *(a2 + 12);
  return this;
}

void TSWP::FlowInfoContainerArchive::~FlowInfoContainerArchive(TSWP::FlowInfoContainerArchive *this)
{
  sub_276E4E808(this + 1);
  sub_276EA5ECC(this + 3);
}

{
  TSWP::FlowInfoContainerArchive::~FlowInfoContainerArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::FlowInfoContainerArchive::default_instance(TSWP::FlowInfoContainerArchive *this)
{
  if (atomic_load_explicit(scc_info_FlowInfoContainerArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_FlowInfoContainerArchive_default_instance_;
}

uint64_t *TSWP::FlowInfoContainerArchive::Clear(uint64_t *this)
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

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_276EA4D28(v5);
  }

  return this;
}

google::protobuf::internal *TSWP::FlowInfoContainerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v28) & 1) == 0)
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
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v25;
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
            sub_276EA4A94((a1 + 8));
          }

          v28 = google::protobuf::internal::UnknownFieldParse();
          if (!v28)
          {
LABEL_44:
            v28 = 0;
            goto LABEL_2;
          }

          goto LABEL_25;
        }

        v15 = v7 - 1;
        while (2)
        {
          v16 = (v15 + 1);
          v28 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v17 = *(a1 + 40);
            v18 = *v17;
            goto LABEL_30;
          }

          v23 = *(a1 + 32);
          v18 = *v17;
          if (v23 >= *v17)
          {
            if (v18 == *(a1 + 36))
            {
              goto LABEL_29;
            }

LABEL_30:
            *v17 = v18 + 1;
            v19 = MEMORY[0x277CA3250](*(a1 + 24));
            LODWORD(v20) = v19;
            v21 = *(a1 + 32);
            v22 = *(a1 + 40) + 8 * v21;
            *(a1 + 32) = v21 + 1;
            *(v22 + 8) = v19;
            v16 = v28;
          }

          else
          {
            *(a1 + 32) = v23 + 1;
            v20 = *&v17[2 * v23 + 2];
          }

          v15 = sub_276F4F9E8(a3, v20, v16);
          v28 = v15;
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
        v28 = v12;
        *(a1 + 48) = v13;
        v5 = 1;
        goto LABEL_25;
      }

      v26 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v28 = v26;
      *(a1 + 48) = v27;
      v5 = 1;
      if (!v26)
      {
        goto LABEL_44;
      }

LABEL_25:
      if (sub_276EA4A1C(a3, &v28))
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

unsigned __int8 *TSWP::FlowInfoContainerArchive::_InternalSerialize(TSWP::FlowInfoContainerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSWP::FlowInfoContainerArchive::ByteSizeLong(TSWP::FlowInfoContainerArchive *this)
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

uint64_t TSWP::FlowInfoContainerArchive::MergeFrom(TSWP::FlowInfoContainerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::FlowInfoContainerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::FlowInfoContainerArchive::MergeFrom(uint64_t this, const TSWP::FlowInfoContainerArchive *a2)
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
    this = sub_276EA5F50(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

uint64_t *TSWP::FlowInfoContainerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::FlowInfoContainerArchive::Clear(this);

    return TSWP::FlowInfoContainerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::FlowInfoContainerArchive::CopyFrom(uint64_t *this, const TSWP::FlowInfoContainerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::FlowInfoContainerArchive::Clear(this);

    return TSWP::FlowInfoContainerArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWP::FlowInfoContainerArchive::IsInitialized(TSWP::FlowInfoContainerArchive *this)
{
  v2 = *(this + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSWP::FlowInfoContainerArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276E4FC00(&this->n128_i64[1], &a2->n128_i64[1]);
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

double TSWP::DropCapArchive::DropCapArchive(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288603B70;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *&result = 0x100000003;
  *(a1 + 80) = 0x100000003;
  *(a1 + 88) = 0x3FF0000000000000;
  return result;
}

{
  *a1 = &unk_288603B70;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *&result = 0x100000003;
  *(a1 + 80) = 0x100000003;
  *(a1 + 88) = 0x3FF0000000000000;
  return result;
}

TSWP::DropCapArchive *TSWP::DropCapArchive::DropCapArchive(TSWP::DropCapArchive *this, const TSWP::DropCapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288603B70;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 24) = *(a2 + 24);
  v6 = *(a2 + 40);
  v7 = *(a2 + 56);
  v8 = *(a2 + 72);
  *(this + 11) = *(a2 + 11);
  *(this + 72) = v8;
  *(this + 56) = v7;
  *(this + 40) = v6;
  return this;
}

void TSWP::DropCapArchive::~DropCapArchive(TSWP::DropCapArchive *this)
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

uint64_t *TSWP::DropCapArchive::default_instance(TSWP::DropCapArchive *this)
{
  if (atomic_load_explicit(scc_info_DropCapArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_DropCapArchive_default_instance_;
}

uint64_t *TSWP::DropCapArchive::Clear(TSWP::DropCapArchive *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    *(this + 40) = 0u;
    *(this + 24) = 0u;
  }

  if ((v1 & 0x3F00) != 0)
  {
    *(this + 7) = 0;
    *(this + 8) = 0;
    *(this + 9) = 0;
    *(this + 10) = 0x100000003;
    *(this + 11) = 0x3FF0000000000000;
  }

  v3 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v3)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::DropCapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v48 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v48) & 1) == 0)
  {
    while (1)
    {
      v7 = (v48 + 1);
      v8 = *v48;
      if (*v48 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v48, (v9 - 128));
          v48 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_86;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v48 + 2);
      }

      v48 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_63;
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
            v48 = google::protobuf::internal::VarintParseSlow64(v7, v10);
            if (!v48)
            {
              goto LABEL_86;
            }
          }

          else
          {
            v11 = (v7 + 2);
LABEL_12:
            v48 = v11;
          }

          if (v10 > 2)
          {
            sub_276F53EA8();
          }

          else
          {
            *(a1 + 16) |= 1u;
            *(a1 + 24) = v10;
          }

          goto LABEL_61;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_63;
          }

          v5 |= 0x800u;
          v27 = (v7 + 1);
          LODWORD(v28) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_41;
          }

          v29 = *v27;
          v28 = (v28 + (v29 << 7) - 128);
          if (v29 < 0)
          {
            v44 = google::protobuf::internal::VarintParseSlow32(v7, v28);
            v48 = v44;
            *(a1 + 80) = v45;
            if (!v44)
            {
              goto LABEL_86;
            }
          }

          else
          {
            v27 = (v7 + 2);
LABEL_41:
            v48 = v27;
            *(a1 + 80) = v28;
          }

          goto LABEL_61;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_63;
          }

          v5 |= 2u;
          v22 = (v7 + 1);
          LODWORD(v23) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_32;
          }

          v24 = *v22;
          v23 = (v23 + (v24 << 7) - 128);
          if (v24 < 0)
          {
            v42 = google::protobuf::internal::VarintParseSlow32(v7, v23);
            v48 = v42;
            *(a1 + 28) = v43;
            if (!v42)
            {
              goto LABEL_86;
            }
          }

          else
          {
            v22 = (v7 + 2);
LABEL_32:
            v48 = v22;
            *(a1 + 28) = v23;
          }

          goto LABEL_61;
        case 4u:
          if (v8 != 37)
          {
            goto LABEL_63;
          }

          v25 = *v7;
          v15 = (v7 + 4);
          v5 |= 4u;
          *(a1 + 32) = v25;
          goto LABEL_60;
        case 5u:
          if (v8 != 45)
          {
            goto LABEL_63;
          }

          v17 = *v7;
          v15 = (v7 + 4);
          v5 |= 8u;
          *(a1 + 36) = v17;
          goto LABEL_60;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_63;
          }

          v31 = (v7 + 1);
          v30 = *v7;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_46;
          }

          v32 = *v31;
          v30 = (v32 << 7) + v30 - 128;
          if (v32 < 0)
          {
            v48 = google::protobuf::internal::VarintParseSlow64(v7, v30);
            if (!v48)
            {
              goto LABEL_86;
            }
          }

          else
          {
            v31 = (v7 + 2);
LABEL_46:
            v48 = v31;
          }

          if (v30 > 2)
          {
            sub_276F54058();
          }

          else
          {
            *(a1 + 16) |= 0x10u;
            *(a1 + 40) = v30;
          }

          goto LABEL_61;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_63;
          }

          v5 |= 0x20u;
          v35 = (v7 + 1);
          v34 = *v7;
          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_55;
          }

          v36 = *v35;
          v34 = (v36 << 7) + v34 - 128;
          if (v36 < 0)
          {
            v46 = google::protobuf::internal::VarintParseSlow64(v7, v34);
            v48 = v46;
            *(a1 + 44) = v47 != 0;
            if (!v46)
            {
              goto LABEL_86;
            }
          }

          else
          {
            v35 = (v7 + 2);
LABEL_55:
            v48 = v35;
            *(a1 + 44) = v34 != 0;
          }

          goto LABEL_61;
        case 8u:
          if (v8 != 69)
          {
            goto LABEL_63;
          }

          v26 = *v7;
          v15 = (v7 + 4);
          v5 |= 0x40u;
          *(a1 + 48) = v26;
          goto LABEL_60;
        case 9u:
          if (v8 != 77)
          {
            goto LABEL_63;
          }

          v38 = *v7;
          v15 = (v7 + 4);
          v5 |= 0x80u;
          *(a1 + 52) = v38;
          goto LABEL_60;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_63;
          }

          v5 |= 0x1000u;
          v19 = (v7 + 1);
          LODWORD(v20) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_27;
          }

          v21 = *v19;
          v20 = (v20 + (v21 << 7) - 128);
          if (v21 < 0)
          {
            v40 = google::protobuf::internal::VarintParseSlow32(v7, v20);
            v48 = v40;
            *(a1 + 84) = v41;
            if (!v40)
            {
              goto LABEL_86;
            }
          }

          else
          {
            v19 = (v7 + 2);
LABEL_27:
            v48 = v19;
            *(a1 + 84) = v20;
          }

          goto LABEL_61;
        case 0xBu:
          if (v8 != 89)
          {
            goto LABEL_63;
          }

          v37 = *v7;
          v15 = (v7 + 8);
          v5 |= 0x100u;
          *(a1 + 56) = v37;
          goto LABEL_60;
        case 0xCu:
          if (v8 != 97)
          {
            goto LABEL_63;
          }

          v16 = *v7;
          v15 = (v7 + 8);
          v5 |= 0x200u;
          *(a1 + 64) = v16;
          goto LABEL_60;
        case 0xDu:
          if (v8 != 105)
          {
            goto LABEL_63;
          }

          v18 = *v7;
          v15 = (v7 + 8);
          v5 |= 0x400u;
          *(a1 + 72) = v18;
          goto LABEL_60;
        case 0xEu:
          if (v8 != 113)
          {
            goto LABEL_63;
          }

          v33 = *v7;
          v15 = (v7 + 8);
          v5 |= 0x2000u;
          *(a1 + 88) = v33;
LABEL_60:
          v48 = v15;
          goto LABEL_61;
        default:
LABEL_63:
          if (v8)
          {
            v39 = (v8 & 7) == 4;
          }

          else
          {
            v39 = 1;
          }

          if (v39)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v48 = google::protobuf::internal::UnknownFieldParse();
          if (!v48)
          {
LABEL_86:
            v48 = 0;
            goto LABEL_2;
          }

LABEL_61:
          if (sub_276EA4A1C(a3, &v48))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v48;
}

unsigned __int8 *TSWP::DropCapArchive::_InternalSerialize(TSWP::DropCapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        if ((v5 & 0x800) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
        if ((v5 & 0x800) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 0x800) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_3:
    if ((v5 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_38:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 7);
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
        if ((v5 & 4) != 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        a2[2] = v15;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      a2[1] = v14;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_49;
      }
    }

LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_52;
  }

  if ((v5 & 0x800) == 0)
  {
    goto LABEL_3;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(this + 20);
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
      if ((v5 & 2) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      a2[2] = v11;
      a2 += 3;
      if ((v5 & 2) != 0)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    a2[1] = v10;
    a2 += 2;
    if ((v5 & 2) != 0)
    {
      goto LABEL_38;
    }
  }

LABEL_4:
  if ((v5 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_49:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 8);
  *a2 = 37;
  *(a2 + 1) = v18;
  a2 += 5;
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_55:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 10);
    *a2 = 48;
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
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        a2[2] = v21;
        a2 += 3;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_66;
        }
      }
    }

    else
    {
      a2[1] = v20;
      a2 += 2;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_66;
      }
    }

LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_69;
  }

LABEL_52:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 9);
  *a2 = 45;
  *(a2 + 1) = v19;
  a2 += 5;
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_55;
  }

LABEL_7:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_66:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 44);
  *a2 = 56;
  a2[1] = v24;
  a2 += 2;
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_72;
  }

LABEL_69:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 12);
  *a2 = 69;
  *(a2 + 1) = v25;
  a2 += 5;
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

LABEL_75:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v27 = *(this + 21);
    *a2 = 80;
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
        if ((v5 & 0x100) != 0)
        {
          goto LABEL_86;
        }
      }

      else
      {
        a2[2] = v28;
        a2 += 3;
        if ((v5 & 0x100) != 0)
        {
          goto LABEL_86;
        }
      }
    }

    else
    {
      a2[1] = v27;
      a2 += 2;
      if ((v5 & 0x100) != 0)
      {
        goto LABEL_86;
      }
    }

LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_89;
  }

LABEL_72:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 13);
  *a2 = 77;
  *(a2 + 1) = v26;
  a2 += 5;
  if ((v5 & 0x1000) != 0)
  {
    goto LABEL_75;
  }

LABEL_11:
  if ((v5 & 0x100) == 0)
  {
    goto LABEL_12;
  }

LABEL_86:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v31 = *(this + 7);
  *a2 = 89;
  *(a2 + 1) = v31;
  a2 += 9;
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_92;
  }

LABEL_89:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v32 = *(this + 8);
  *a2 = 97;
  *(a2 + 1) = v32;
  a2 += 9;
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_95;
  }

LABEL_92:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v33 = *(this + 9);
  *a2 = 105;
  *(a2 + 1) = v33;
  a2 += 9;
  if ((v5 & 0x2000) != 0)
  {
LABEL_95:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v34 = *(this + 11);
    *a2 = 113;
    *(a2 + 1) = v34;
    a2 += 9;
  }

LABEL_98:
  v35 = *(this + 1);
  if ((v35 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v35 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::DropCapArchive::ByteSizeLong(TSWP::DropCapArchive *this)
{
  v1 = *(this + 4);
  if (!*(this + 4))
  {
    v3 = 0;
    goto LABEL_23;
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

  v4 = *(this + 6);
  if (v4 < 0)
  {
    v2 = 11;
    if ((v1 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v2 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_8:
    v2 += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  if ((v1 & 4) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 8) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 0x10) != 0)
  {
    v5 = *(this + 10);
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 11;
    }

    v2 += v7;
  }

  v8 = v2 + ((v1 >> 4) & 2);
  if ((v1 & 0x40) != 0)
  {
    v8 += 5;
  }

  if ((v1 & 0x80) != 0)
  {
    v3 = v8 + 5;
  }

  else
  {
    v3 = v8;
  }

LABEL_23:
  if ((v1 & 0x3F00) != 0)
  {
    v9 = v3 + 9;
    if ((v1 & 0x100) == 0)
    {
      v9 = v3;
    }

    if ((v1 & 0x200) != 0)
    {
      v9 += 9;
    }

    if ((v1 & 0x400) != 0)
    {
      v9 += 9;
    }

    if ((v1 & 0x800) != 0)
    {
      v9 += ((9 * (__clz(*(this + 20) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v1 & 0x1000) != 0)
    {
      v9 += ((9 * (__clz(*(this + 21) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v1 & 0x2000) != 0)
    {
      v3 = v9 + 9;
    }

    else
    {
      v3 = v9;
    }
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSWP::DropCapArchive::MergeFrom(TSWP::DropCapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::DropCapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::DropCapArchive::MergeFrom(uint64_t this, const TSWP::DropCapArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    if (v5)
    {
      *(v3 + 24) = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_26;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 28) = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(v3 + 32) = *(a2 + 8);
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
    *(v3 + 36) = *(a2 + 9);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(v3 + 40) = *(a2 + 10);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(v3 + 44) = *(a2 + 44);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        goto LABEL_14;
      }

LABEL_12:
      *(v3 + 52) = *(a2 + 13);
      goto LABEL_13;
    }

LABEL_30:
    *(v3 + 48) = *(a2 + 12);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0x3F00) == 0)
  {
    return this;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 56) = *(a2 + 7);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 64) = *(a2 + 8);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v3 + 72) = *(a2 + 9);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

LABEL_36:
    *(v3 + 84) = *(a2 + 21);
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_35:
  *(v3 + 80) = *(a2 + 20);
  if ((v5 & 0x1000) != 0)
  {
    goto LABEL_36;
  }

LABEL_20:
  if ((v5 & 0x2000) != 0)
  {
LABEL_21:
    *(v3 + 88) = *(a2 + 11);
  }

LABEL_22:
  *(v3 + 16) |= v5;
  return this;
}

TSWP::DropCapArchive *TSWP::DropCapArchive::CopyFrom(TSWP::DropCapArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::DropCapArchive::Clear(this);

    return TSWP::DropCapArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::DropCapArchive *TSWP::DropCapArchive::CopyFrom(TSWP::DropCapArchive *this, const TSWP::DropCapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::DropCapArchive::Clear(this);

    return TSWP::DropCapArchive::MergeFrom(v4, a2);
  }

  return this;
}

double TSWP::DropCapArchive::InternalSwap(TSWP::DropCapArchive *this, TSWP::DropCapArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  LODWORD(v11) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v11;
  LODWORD(v11) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v11;
  result = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = result;
  return result;
}

TSD::StrokeArchive *TSWP::DropCapStylePropertiesArchive::clear_drop_cap_shape_stroke(TSWP::DropCapStylePropertiesArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSD::StrokeArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::FillArchive *TSWP::DropCapStylePropertiesArchive::clear_drop_cap_shape_fill(TSWP::DropCapStylePropertiesArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSD::FillArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::DropCapStylePropertiesArchive *TSWP::DropCapStylePropertiesArchive::DropCapStylePropertiesArchive(TSWP::DropCapStylePropertiesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288603C20;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DropCapStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 48) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_288603C20;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DropCapStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 48) = 0;
  *(this + 5) = 0;
  return this;
}

TSWP::DropCapStylePropertiesArchive *TSWP::DropCapStylePropertiesArchive::DropCapStylePropertiesArchive(TSWP::DropCapStylePropertiesArchive *this, const TSWP::DropCapStylePropertiesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288603C20;
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
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  *(this + 48) = *(a2 + 48);
  return this;
}

void TSWP::DropCapStylePropertiesArchive::~DropCapStylePropertiesArchive(TSWP::DropCapStylePropertiesArchive *this)
{
  if (this != &TSWP::_DropCapStylePropertiesArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_276E4E808((v2 + 8));
      MEMORY[0x277CA3D00](v2, 0x1081C40474E2BD2);
    }

    if (*(this + 4))
    {
      v3 = MEMORY[0x277CA26D0]();
      MEMORY[0x277CA3D00](v3, 0x10A1C4078DB9C03);
    }

    if (*(this + 5))
    {
      v4 = MEMORY[0x277CA25D0]();
      MEMORY[0x277CA3D00](v4, 0x10A1C4042C41316);
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::DropCapStylePropertiesArchive::~DropCapStylePropertiesArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::DropCapStylePropertiesArchive::default_instance(TSWP::DropCapStylePropertiesArchive *this)
{
  if (atomic_load_explicit(scc_info_DropCapStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_DropCapStylePropertiesArchive_default_instance_;
}

uint64_t *TSWP::DropCapStylePropertiesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSWP::DropCapArchive::Clear(this[3]);
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

    this = TSD::StrokeArchive::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSD::FillArchive::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::DropCapStylePropertiesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v29) & 1) == 0)
  {
    while (1)
    {
      v7 = (v29 + 1);
      v8 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v9 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_53;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
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

              v19 = google::protobuf::Arena::CreateMaybeMessage<TSWP::DropCapArchive>(v20);
              *(a1 + 24) = v19;
              v7 = v29;
            }

            v15 = sub_276F53B84(a3, v19, v7);
            goto LABEL_45;
          }
        }

        else if (v10 == 3 && v8 == 26)
        {
          *(a1 + 16) |= 2u;
          v12 = *(a1 + 32);
          if (!v12)
          {
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = MEMORY[0x277CA3150](v13);
            LODWORD(v12) = v14;
            *(a1 + 32) = v14;
            v7 = v29;
          }

          v15 = sub_276F51264(a3, v12, v7);
          goto LABEL_45;
        }

        goto LABEL_38;
      }

      if (v10 != 4)
      {
        if (v10 == 5 && v8 == 42)
        {
          *(a1 + 16) |= 4u;
          v16 = *(a1 + 40);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = MEMORY[0x277CA3120](v17);
            LODWORD(v16) = v18;
            *(a1 + 40) = v18;
            v7 = v29;
          }

          v15 = sub_276F51334(a3, v16, v7);
          goto LABEL_45;
        }

LABEL_38:
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
          sub_276EA4A94((a1 + 8));
        }

        v15 = google::protobuf::internal::UnknownFieldParse();
LABEL_45:
        v29 = v15;
        if (!v15)
        {
          goto LABEL_53;
        }

        goto LABEL_46;
      }

      if (v8 != 32)
      {
        goto LABEL_38;
      }

      v5 |= 8u;
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
        v29 = v22;
        *(a1 + 48) = v21 != 0;
        goto LABEL_46;
      }

      v27 = google::protobuf::internal::VarintParseSlow64(v7, v21);
      v29 = v27;
      *(a1 + 48) = v28 != 0;
      if (!v27)
      {
LABEL_53:
        v29 = 0;
        goto LABEL_2;
      }

LABEL_46:
      if (sub_276EA4A1C(a3, &v29))
      {
        goto LABEL_2;
      }
    }

    v7 = (v29 + 2);
LABEL_6:
    v29 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

unsigned __int8 *TSWP::DropCapStylePropertiesArchive::_InternalSerialize(TSWP::DropCapStylePropertiesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::DropCapArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
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
  *a2 = 26;
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

  a2 = TSD::StrokeArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 48);
  *a2 = 32;
  a2[1] = v18;
  a2 += 2;
  if ((v5 & 4) != 0)
  {
LABEL_29:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v19 = *(this + 5);
    *a2 = 42;
    v20 = *(v19 + 11);
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

    a2 = TSD::FillArchive::_InternalSerialize(v19, v21, a3);
  }

LABEL_39:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v25 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::DropCapStylePropertiesArchive::ByteSizeLong(TSWP::DropCapArchive **this)
{
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    v4 = 0;
    goto LABEL_11;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = TSWP::DropCapArchive::ByteSizeLong(this[3]);
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSD::StrokeArchive::ByteSizeLong(this[4]);
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = TSD::FillArchive::ByteSizeLong(this[5]);
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 = v3 + ((v2 >> 2) & 2);
LABEL_11:
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

uint64_t TSWP::DropCapStylePropertiesArchive::MergeFrom(TSWP::DropCapStylePropertiesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::DropCapStylePropertiesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::DropCapStylePropertiesArchive::MergeFrom(uint64_t this, const TSWP::DropCapStylePropertiesArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::DropCapArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWP::_DropCapArchive_default_instance_;
      }

      this = TSWP::DropCapArchive::MergeFrom(v6, v8);
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
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277CA3150](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = MEMORY[0x277D804A0];
    }

    this = TSD::StrokeArchive::MergeFrom(v9, v11);
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
      *(v3 + 48) = *(a2 + 48);
      goto LABEL_9;
    }

LABEL_27:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277CA3120](v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = MEMORY[0x277D80488];
    }

    this = TSD::FillArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TSWP::DropCapStylePropertiesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::DropCapStylePropertiesArchive::Clear(this);

    return TSWP::DropCapStylePropertiesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::DropCapStylePropertiesArchive::CopyFrom(uint64_t *this, const TSWP::DropCapStylePropertiesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::DropCapStylePropertiesArchive::Clear(this);

    return TSWP::DropCapStylePropertiesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::DropCapStylePropertiesArchive::IsInitialized(TSWP::DropCapStylePropertiesArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(this + 4));
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

  result = TSD::FillArchive::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::DropCapStylePropertiesArchive::InternalSwap(TSWP::DropCapStylePropertiesArchive *this, TSWP::DropCapStylePropertiesArchive *a2)
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
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  LOBYTE(v8) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v8;
  return result;
}

TSS::StyleArchive *TSWP::DropCapStyleArchive::clear_super(TSWP::DropCapStyleArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSS::StyleArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWP::DropCapStyleArchive *TSWP::DropCapStyleArchive::DropCapStyleArchive(TSWP::DropCapStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288603CD0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DropCapStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_288603CD0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DropCapStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  return this;
}

TSWP::DropCapStyleArchive *TSWP::DropCapStyleArchive::DropCapStyleArchive(TSWP::DropCapStyleArchive *this, const TSWP::DropCapStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288603CD0;
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
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  *(this + 12) = *(a2 + 12);
  return this;
}

void TSWP::DropCapStyleArchive::~DropCapStyleArchive(TSWP::DropCapStyleArchive *this)
{
  if (this != &TSWP::_DropCapStyleArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277CA2C50]();
      MEMORY[0x277CA3D00](v2, 0x10A1C40AC828A93);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSWP::CharacterStylePropertiesArchive::~CharacterStylePropertiesArchive(v3);
      MEMORY[0x277CA3D00]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSWP::DropCapStylePropertiesArchive::~DropCapStylePropertiesArchive(v4);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::DropCapStyleArchive::~DropCapStyleArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::DropCapStyleArchive::default_instance(TSWP::DropCapStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_DropCapStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_DropCapStyleArchive_default_instance_;
}

uint64_t *TSWP::DropCapStyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSS::StyleArchive::Clear(this[3]);
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

    this = TSWP::CharacterStylePropertiesArchive::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSWP::DropCapStylePropertiesArchive::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::DropCapStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v28) & 1) == 0)
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
        goto LABEL_50;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 0xA)
      {
        if (v10 == 11)
        {
          if (v8 != 90)
          {
            goto LABEL_35;
          }

          *(a1 + 16) |= 2u;
          v20 = *(a1 + 32);
          if (!v20)
          {
            v21 = *(a1 + 8);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::CharacterStylePropertiesArchive>(v21);
            LODWORD(v20) = v22;
            *(a1 + 32) = v22;
            v7 = v28;
          }

          sub_276F514D4(a3, v20, v7);
        }

        else
        {
          if (v10 != 12 || v8 != 98)
          {
            goto LABEL_35;
          }

          *(a1 + 16) |= 4u;
          v14 = *(a1 + 40);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = google::protobuf::Arena::CreateMaybeMessage<TSWP::DropCapStylePropertiesArchive>(v15);
            *(a1 + 40) = v14;
            v7 = v28;
          }

          v16 = sub_276F53C54(a3, v14, v7);
        }

LABEL_42:
        v28 = v16;
        if (!v16)
        {
          goto LABEL_50;
        }

        goto LABEL_43;
      }

      if (v10 == 1)
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

            v19 = MEMORY[0x277CA3260](v18);
            LODWORD(v17) = v19;
            *(a1 + 24) = v19;
            v7 = v28;
          }

          v16 = sub_276F51404(a3, v17, v7);
          goto LABEL_42;
        }

LABEL_35:
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
          sub_276EA4A94((a1 + 8));
        }

        v16 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_42;
      }

      if (v10 != 10 || v8 != 80)
      {
        goto LABEL_35;
      }

      v5 |= 8u;
      v11 = (v7 + 1);
      LODWORD(v12) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      v13 = *v11;
      v12 = (v12 + (v13 << 7) - 128);
      if ((v13 & 0x80000000) == 0)
      {
        v11 = (v7 + 2);
LABEL_14:
        v28 = v11;
        *(a1 + 48) = v12;
        goto LABEL_43;
      }

      v26 = google::protobuf::internal::VarintParseSlow32(v7, v12);
      v28 = v26;
      *(a1 + 48) = v27;
      if (!v26)
      {
LABEL_50:
        v28 = 0;
        goto LABEL_2;
      }

LABEL_43:
      if (sub_276EA4A1C(a3, &v28))
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

unsigned __int8 *TSWP::DropCapStyleArchive::_InternalSerialize(TSWP::DropCapStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 12);
    *a2 = 80;
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
          goto LABEL_27;
        }
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
      if ((v5 & 2) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
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

  a2 = TSS::StyleArchive::_InternalSerialize(v6, v8, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((v5 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 4);
  *a2 = 90;
  v17 = *(v16 + 6);
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

  a2 = TSWP::CharacterStylePropertiesArchive::_InternalSerialize(v16, v18, a3);
  if ((v5 & 4) != 0)
  {
LABEL_37:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(this + 5);
    *a2 = 98;
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

    a2 = TSWP::DropCapStylePropertiesArchive::_InternalSerialize(v22, v24, a3);
  }

LABEL_47:
  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v28 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::DropCapStyleArchive::ByteSizeLong(TSWP::DropCapStyleArchive *this)
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

  if ((v2 & 0xE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v6 = TSWP::CharacterStylePropertiesArchive::ByteSizeLong(*(this + 4));
      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 4) == 0)
      {
LABEL_7:
        if ((v2 & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

    v7 = TSWP::DropCapStylePropertiesArchive::ByteSizeLong(*(this + 5));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) != 0)
    {
LABEL_8:
      v3 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_9:
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

uint64_t TSWP::DropCapStyleArchive::MergeFrom(TSWP::DropCapStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::DropCapStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::DropCapStyleArchive::MergeFrom(uint64_t this, const TSWP::DropCapStyleArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277CA3260](v7);
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
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSWP::CharacterStylePropertiesArchive>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSWP::_CharacterStylePropertiesArchive_default_instance_;
    }

    this = TSWP::CharacterStylePropertiesArchive::MergeFrom(v9, v11);
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
      *(v3 + 48) = *(a2 + 12);
      goto LABEL_9;
    }

LABEL_27:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSWP::DropCapStylePropertiesArchive>(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = &TSWP::_DropCapStylePropertiesArchive_default_instance_;
    }

    this = TSWP::DropCapStylePropertiesArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TSWP::DropCapStyleArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::DropCapStyleArchive::Clear(this);

    return TSWP::DropCapStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::DropCapStyleArchive::CopyFrom(uint64_t *this, const TSWP::DropCapStyleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::DropCapStyleArchive::Clear(this);

    return TSWP::DropCapStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::DropCapStyleArchive::IsInitialized(TSWP::DropCapStyleArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSWP::CharacterStylePropertiesArchive::IsInitialized(*(this + 4));
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

    result = TSWP::DropCapStylePropertiesArchive::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSWP::DropCapStyleArchive::InternalSwap(TSWP::DropCapStyleArchive *this, TSWP::DropCapStyleArchive *a2)
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
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  LODWORD(v8) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  return result;
}

TSWP::CollaboratorTextCursorSubselectionArchive *TSWP::CollaboratorTextCursorSubselectionArchive::CollaboratorTextCursorSubselectionArchive(TSWP::CollaboratorTextCursorSubselectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288603D80;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CollaboratorTextCursorSubselectionArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288603D80;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CollaboratorTextCursorSubselectionArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWP::CollaboratorTextCursorSubselectionArchive *TSWP::CollaboratorTextCursorSubselectionArchive::CollaboratorTextCursorSubselectionArchive(TSWP::CollaboratorTextCursorSubselectionArchive *this, const TSWP::CollaboratorTextCursorSubselectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288603D80;
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
  return this;
}

void TSWP::CollaboratorTextCursorSubselectionArchive::~CollaboratorTextCursorSubselectionArchive(TSWP::CollaboratorTextCursorSubselectionArchive *this)
{
  if (this != &TSWP::_CollaboratorTextCursorSubselectionArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::SelectionArchive::~SelectionArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::CollaboratorTextCursorSubselectionArchive::~CollaboratorTextCursorSubselectionArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::CollaboratorTextCursorSubselectionArchive::default_instance(TSWP::CollaboratorTextCursorSubselectionArchive *this)
{
  if (atomic_load_explicit(scc_info_CollaboratorTextCursorSubselectionArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_CollaboratorTextCursorSubselectionArchive_default_instance_;
}

uint64_t *TSWP::CollaboratorTextCursorSubselectionArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWP::SelectionArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276EA4D28(v2);
  }

  return this;
}

google::protobuf::internal *TSWP::CollaboratorTextCursorSubselectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_276EA4A1C(a3, &v15) & 1) == 0)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SelectionArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F53D24(a3, v10, v5);
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
        sub_276EA4A94((a1 + 8));
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

unsigned __int8 *TSWP::CollaboratorTextCursorSubselectionArchive::_InternalSerialize(TSWP::CollaboratorTextCursorSubselectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::SelectionArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::CollaboratorTextCursorSubselectionArchive::ByteSizeLong(TSP::Range ***this)
{
  if (this[2])
  {
    v3 = TSWP::SelectionArchive::ByteSizeLong(this[3]);
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

uint64_t TSWP::CollaboratorTextCursorSubselectionArchive::MergeFrom(TSWP::CollaboratorTextCursorSubselectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::CollaboratorTextCursorSubselectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::CollaboratorTextCursorSubselectionArchive::MergeFrom(uint64_t this, const TSWP::CollaboratorTextCursorSubselectionArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SelectionArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWP::_SelectionArchive_default_instance_;
    }

    return TSWP::SelectionArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWP::CollaboratorTextCursorSubselectionArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::CollaboratorTextCursorSubselectionArchive::Clear(this);

    return TSWP::CollaboratorTextCursorSubselectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::CollaboratorTextCursorSubselectionArchive::CopyFrom(uint64_t *this, const TSWP::CollaboratorTextCursorSubselectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::CollaboratorTextCursorSubselectionArchive::Clear(this);

    return TSWP::CollaboratorTextCursorSubselectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::CollaboratorTextCursorSubselectionArchive::IsInitialized(TSWP::CollaboratorTextCursorSubselectionArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSWP::SelectionArchive::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSWP::CollaboratorTextCursorSubselectionArchive::InternalSwap(TSWP::CollaboratorTextCursorSubselectionArchive *this, TSWP::CollaboratorTextCursorSubselectionArchive *a2)
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

TSWP::SelectionArchive *sub_276EA0728(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA6874(a1, 1);
  TSWP::SelectionArchive::SelectionArchive(v2, a1);
  return v2;
}

uint64_t sub_276EA07B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA6900(a1);
}

TSWP::ObjectAttributeTable *sub_276EA0884(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA6A04(a1, 1);
  TSWP::ObjectAttributeTable::ObjectAttributeTable(v2, a1);
  return v2;
}

TSWP::StringAttributeTable_StringAttribute *sub_276EA0910(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA6A90(a1, 1);
  TSWP::StringAttributeTable_StringAttribute::StringAttributeTable_StringAttribute(v2, a1);
  return v2;
}

TSWP::StringAttributeTable *sub_276EA099C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA6B1C(a1, 1);
  TSWP::StringAttributeTable::StringAttributeTable(v2, a1);
  return v2;
}

uint64_t sub_276EA0A28(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EA6BA8(a1, 1);
  *result = &unk_288600050;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

TSWP::ParaDataAttributeTable *sub_276EA0A9C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA6C50(a1, 1);
  TSWP::ParaDataAttributeTable::ParaDataAttributeTable(v2, a1);
  return v2;
}

void *sub_276EA0B28(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA6CDC(a1);
}

TSWP::OverlappingFieldAttributeTable *sub_276EA0BF4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA6DDC(a1, 1);
  TSWP::OverlappingFieldAttributeTable::OverlappingFieldAttributeTable(v2, a1);
  return v2;
}

TSWP::StorageArchive *sub_276EA0C80(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA6E68(a1, 1);
  TSWP::StorageArchive::StorageArchive(v2, a1);
  return v2;
}

TSWP::HighlightArchive *sub_276EA0D0C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA6EF4(a1, 1);
  TSWP::HighlightArchive::HighlightArchive(v2, a1);
  return v2;
}

TSWP::PencilAnnotationArchive *sub_276EA0D98(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA6F80(a1, 1);
  TSWP::PencilAnnotationArchive::PencilAnnotationArchive(v2, a1);
  return v2;
}

void *sub_276EA0E24(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EA700C(a1, 1);
  *result = &unk_288600520;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSWP::CharacterStylePropertiesArchive *sub_276EA0E94(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA70B4(a1, 1);
  TSWP::CharacterStylePropertiesArchive::CharacterStylePropertiesArchive(v2, a1);
  return v2;
}

uint64_t sub_276EA0F20(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA7140(a1);
}

TSWP::TabArchive *sub_276EA0FF0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA7244(a1, 1);
  TSWP::TabArchive::TabArchive(v2, a1);
  return v2;
}

TSWP::TabsArchive *sub_276EA107C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA72D0(a1, 1);
  TSWP::TabsArchive::TabsArchive(v2, a1);
  return v2;
}

uint64_t sub_276EA1108(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EA735C(a1, 1);
  *result = &unk_288600890;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

TSWP::ParagraphStylePropertiesArchive *sub_276EA117C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA7404(a1, 1);
  TSWP::ParagraphStylePropertiesArchive::ParagraphStylePropertiesArchive(v2, a1);
  return v2;
}

uint64_t sub_276EA1208(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA7490(a1);
}

double sub_276EA12DC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA7598(a1, 1);
  *v2 = &unk_288600AA0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  result = 0.0078125;
  *(v2 + 24) = 0x3F80000000000000;
  *(v2 + 32) = 1;
  return result;
}

uint64_t sub_276EA1360(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA7640(a1);
}

TSWP::ListStyleArchive *sub_276EA1430(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA7744(a1, 1);
  TSWP::ListStyleArchive::ListStyleArchive(v2, a1);
  return v2;
}

TSWP::TextStylePresetArchive *sub_276EA14BC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA77D0(a1, 1);
  TSWP::TextStylePresetArchive::TextStylePresetArchive(v2, a1);
  return v2;
}

void *sub_276EA1548(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EA785C(a1, 1);
  *result = &unk_288600D60;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_276EA15B8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EA7904(a1, 1);
  *result = &unk_288600E10;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSWP::ColumnsArchive_NonEqualColumnsArchive *sub_276EA1628(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA79AC(a1, 1);
  TSWP::ColumnsArchive_NonEqualColumnsArchive::ColumnsArchive_NonEqualColumnsArchive(v2, a1);
  return v2;
}

void *sub_276EA16B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA7A38(a1);
}

void *sub_276EA1780(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EA7B38(a1, 1);
  *result = &unk_288601020;
  result[1] = a1;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

TSWP::ColumnStylePropertiesArchive *sub_276EA17F4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA7BE0(a1, 1);
  TSWP::ColumnStylePropertiesArchive::ColumnStylePropertiesArchive(v2, a1);
  return v2;
}

uint64_t sub_276EA1880(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA7C6C(a1);
}

uint64_t sub_276EA1950(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA7D70(a1);
}

uint64_t sub_276EA1A28(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA7E7C(a1);
}

TSWP::ThemePresetsArchive *sub_276EA1AF8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA7F80(a1, 1);
  TSWP::ThemePresetsArchive::ThemePresetsArchive(v2, a1);
  return v2;
}

TSWP::TextPresetDisplayItemArchive *sub_276EA1B84(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA800C(a1, 1);
  TSWP::TextPresetDisplayItemArchive::TextPresetDisplayItemArchive(v2, a1);
  return v2;
}

uint64_t sub_276EA1C10(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA8098(a1);
}

void *sub_276EA1CE0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA819C(a1);
}

uint64_t sub_276EA1DAC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA829C(a1);
}

TSWP::TOCSettingsArchive *sub_276EA1E7C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA83A0(a1, 1);
  TSWP::TOCSettingsArchive::TOCSettingsArchive(v2, a1);
  return v2;
}

TSWP::TOCEntryInstanceArchive *sub_276EA1F08(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA842C(a1, 1);
  TSWP::TOCEntryInstanceArchive::TOCEntryInstanceArchive(v2, a1);
  return v2;
}

uint64_t sub_276EA1F94(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EA84B8(a1, 1);
  *result = &unk_288601860;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

TSWP::UndoTransaction_TextTransaction *sub_276EA2008(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA8560(a1, 1);
  TSWP::UndoTransaction_TextTransaction::UndoTransaction_TextTransaction(v2, a1);
  return v2;
}

void *sub_276EA2094(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA85EC(a1);
}

void *sub_276EA2160(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EA86EC(a1, 1);
  *result = &unk_288601A70;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSWP::UndoTransaction_AttributeIndexTransaction *sub_276EA21D0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA8794(a1, 1);
  TSWP::UndoTransaction_AttributeIndexTransaction::UndoTransaction_AttributeIndexTransaction(v2, a1);
  return v2;
}

TSWP::UndoTransaction_InsertAttributeTransaction *sub_276EA225C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA8820(a1, 1);
  TSWP::UndoTransaction_InsertAttributeTransaction::UndoTransaction_InsertAttributeTransaction(v2, a1);
  return v2;
}

void *sub_276EA22E8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EA88AC(a1, 1);
  *result = &unk_288601C80;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_276EA2358(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EA8954(a1, 1);
  *result = &unk_288601D30;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_276EA23CC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EA89FC(a1, 1);
  *result = &unk_288601DE0;
  result[1] = a1;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_276EA2440(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA8AA4(a1);
}

uint64_t sub_276EA2510(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA8BA8(a1);
}

TSWP::UndoTransaction_UnionTransaction *sub_276EA25E0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA8CAC(a1, 1);
  TSWP::UndoTransaction_UnionTransaction::UndoTransaction_UnionTransaction(v2, a1);
  return v2;
}

TSWP::UndoTransaction_StorageAction *sub_276EA266C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA8D38(a1, 1);
  TSWP::UndoTransaction_StorageAction::UndoTransaction_StorageAction(v2, a1);
  return v2;
}

TSWP::UndoTransaction_StorageActionGroup *sub_276EA26F8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA8DC4(a1, 1);
  TSWP::UndoTransaction_StorageActionGroup::UndoTransaction_StorageActionGroup(v2, a1);
  return v2;
}

TSWP::UndoTransaction *sub_276EA2784(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA8E50(a1, 1);
  TSWP::UndoTransaction::UndoTransaction(v2, a1);
  return v2;
}

void *sub_276EA2810(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA8EDC(a1);
}

uint64_t sub_276EA28DC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA8FDC(a1);
}

void *sub_276EA29B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA90E8(a1);
}

TSWP::TOCInfoArchive *sub_276EA2A80(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA91E8(a1, 1);
  TSWP::TOCInfoArchive::TOCInfoArchive(v2, a1);
  return v2;
}

void *sub_276EA2B0C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA9274(a1);
}

uint64_t sub_276EA2BD8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EA9374(a1, 1);
  *result = &unk_288602620;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

TSWP::TextualAttachmentArchive *sub_276EA2C48(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA941C(a1, 1);
  TSWP::TextualAttachmentArchive::TextualAttachmentArchive(v2, a1);
  return v2;
}

TSWP::TSWPTOCPageNumberAttachmentArchive *sub_276EA2CD4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA94A8(a1, 1);
  TSWP::TSWPTOCPageNumberAttachmentArchive::TSWPTOCPageNumberAttachmentArchive(v2, a1);
  return v2;
}

uint64_t sub_276EA2D60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EA9534(a1, 1);
  *result = &unk_288602830;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

void *sub_276EA2DD0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA95DC(a1);
}

void *sub_276EA2EA0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA96E0(a1);
}

TSWP::FootnoteReferenceAttachmentArchive *sub_276EA2F6C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA97E0(a1, 1);
  TSWP::FootnoteReferenceAttachmentArchive::FootnoteReferenceAttachmentArchive(v2, a1);
  return v2;
}

TSWP::NumberAttachmentArchive *sub_276EA2FF8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA986C(a1, 1);
  TSWP::NumberAttachmentArchive::NumberAttachmentArchive(v2, a1);
  return v2;
}

void *sub_276EA3084(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA98F8(a1);
}

TSWP::HyperlinkFieldArchive *sub_276EA3158(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA9A00(a1, 1);
  TSWP::HyperlinkFieldArchive::HyperlinkFieldArchive(v2, a1);
  return v2;
}

TSWP::PlaceholderSmartFieldArchive *sub_276EA31E4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA9A8C(a1, 1);
  TSWP::PlaceholderSmartFieldArchive::PlaceholderSmartFieldArchive(v2, a1);
  return v2;
}

TSWP::UnsupportedHyperlinkFieldArchive *sub_276EA3270(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA9B18(a1, 1);
  TSWP::UnsupportedHyperlinkFieldArchive::UnsupportedHyperlinkFieldArchive(v2, a1);
  return v2;
}

TSWP::BibliographySmartFieldArchive *sub_276EA32FC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA9BA4(a1, 1);
  TSWP::BibliographySmartFieldArchive::BibliographySmartFieldArchive(v2, a1);
  return v2;
}

TSWP::CitationRecordArchive *sub_276EA3388(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA9C30(a1, 1);
  TSWP::CitationRecordArchive::CitationRecordArchive(v2, a1);
  return v2;
}

TSWP::CitationSmartFieldArchive *sub_276EA3414(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA9CBC(a1, 1);
  TSWP::CitationSmartFieldArchive::CitationSmartFieldArchive(v2, a1);
  return v2;
}

TSWP::DateTimeSmartFieldArchive *sub_276EA34A0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA9D48(a1, 1);
  TSWP::DateTimeSmartFieldArchive::DateTimeSmartFieldArchive(v2, a1);
  return v2;
}

TSWP::BookmarkFieldArchive *sub_276EA352C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA9DD4(a1, 1);
  TSWP::BookmarkFieldArchive::BookmarkFieldArchive(v2, a1);
  return v2;
}

uint64_t sub_276EA35B8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EA9E60(a1);
}

TSWP::MergeFieldTypeArchive *sub_276EA3688(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA9F64(a1, 1);
  TSWP::MergeFieldTypeArchive::MergeFieldTypeArchive(v2, a1);
  return v2;
}

TSWP::MergeSmartFieldArchive *sub_276EA3714(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EA9FF0(a1, 1);
  TSWP::MergeSmartFieldArchive::MergeSmartFieldArchive(v2, a1);
  return v2;
}

TSWP::TOCSmartFieldArchive_TOCEntry *sub_276EA37A0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EAA07C(a1, 1);
  TSWP::TOCSmartFieldArchive_TOCEntry::TOCSmartFieldArchive_TOCEntry(v2, a1);
  return v2;
}

TSWP::TOCSmartFieldArchive *sub_276EA382C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EAA108(a1, 1);
  TSWP::TOCSmartFieldArchive::TOCSmartFieldArchive(v2, a1);
  return v2;
}

TSWP::RubyFieldArchive *sub_276EA38B8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EAA194(a1, 1);
  TSWP::RubyFieldArchive::RubyFieldArchive(v2, a1);
  return v2;
}

void *sub_276EA3944(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EAA220(a1);
}

TSWP::ChangeArchive *sub_276EA3A10(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EAA320(a1, 1);
  TSWP::ChangeArchive::ChangeArchive(v2, a1);
  return v2;
}

uint64_t sub_276EA3A9C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EAA3AC(a1);
}

void *sub_276EA3B6C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EAA4B0(a1);
}

uint64_t sub_276EA3C38(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EAA5B0(a1, 1);
  *result = &unk_2886038B0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_276EA3CA8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276EAA658(a1, 1);
  *result = &unk_288603960;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

TSWP::FlowInfoArchive *sub_276EA3D18(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EAA700(a1, 1);
  TSWP::FlowInfoArchive::FlowInfoArchive(v2, a1);
  return v2;
}

TSWP::FlowInfoContainerArchive *sub_276EA3DA4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EAA78C(a1, 1);
  TSWP::FlowInfoContainerArchive::FlowInfoContainerArchive(v2, a1);
  return v2;
}

double sub_276EA3E30(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276EAA818(a1, 1);
  *v2 = &unk_288603B70;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *&result = 0x100000003;
  *(v2 + 80) = 0x100000003;
  *(v2 + 88) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_276EA3EBC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EAA8C0(a1);
}

uint64_t sub_276EA3F90(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EAA9C8(a1);
}

void *sub_276EA4064(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276EAAAD0(a1);
}

uint64_t sub_276EA4A1C(uint64_t a1, uint64_t *a2)
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

uint64_t *sub_276EA4A94(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_276EA4ADC(v2);
  *a1 = v3 | 1;
  *v3 = v2;
  return v3 + 1;
}

double sub_276EA4ADC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = sub_276EA4B20(a1, 0);
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

uint64_t sub_276EA4B20(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54094(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276EA4BA8);
}

void sub_276EA4BA8(uint64_t a1)
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

uint64_t sub_276EA4C0C(uint64_t result)
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

void sub_276EA4C58(void *a1)
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
          TSP::Range::~Range(*v3);
          MEMORY[0x277CA3D00]();
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

uint64_t sub_276EA4CDC(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = sub_276EA4A94(a1);
  }

  return MEMORY[0x2821EAB30](v3, a2);
}

uint64_t *sub_276EA4D28(uint64_t *a1)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_276EA4A94(a1);
  }

  if (*result != result[1])
  {

    return google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_276EA4D78(uint64_t result, TSP::Range **a2, TSP::Range **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276EA4E28(v13, v15);
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
      v22 = MEMORY[0x277CA3230](v18);
      result = sub_276EA4E28(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_276EA4E38(uint64_t *a1, uint64_t *a2)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_276EA4A94(a1);
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

void sub_276EA4EA0(void *a1)
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
          TSWP::ObjectAttributeTable_ObjectAttribute::~ObjectAttributeTable_ObjectAttribute(*v3);
          MEMORY[0x277CA3D00]();
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

uint64_t sub_276EA4F24(uint64_t result, TSWP::ObjectAttributeTable_ObjectAttribute **a2, TSWP::ObjectAttributeTable_ObjectAttribute **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276EA4FD4(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectAttributeTable_ObjectAttribute>(v18);
      result = sub_276EA4FD4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276EA4FE4(void *a1)
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
          TSWP::StringAttributeTable_StringAttribute::~StringAttributeTable_StringAttribute(*v3);
          MEMORY[0x277CA3D00]();
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

uint64_t sub_276EA5068(uint64_t result, TSWP::StringAttributeTable_StringAttribute **a2, TSWP::StringAttributeTable_StringAttribute **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276EA5118(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::StringAttributeTable_StringAttribute>(v18);
      result = sub_276EA5118(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276EA5128(void *a1)
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
          sub_276E4E808((v5 + 8));
          MEMORY[0x277CA3D00](v5, 0x1081C40B7564605);
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

uint64_t sub_276EA51C0(uint64_t result, TSWP::ParaDataAttributeTable_ParaDataAttribute **a2, TSWP::ParaDataAttributeTable_ParaDataAttribute **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276EA5270(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParaDataAttributeTable_ParaDataAttribute>(v18);
      result = sub_276EA5270(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276EA5280(void *a1)
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
          TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::~OverlappingFieldAttributeTable_OverlappingFieldAttribute(*v3);
          MEMORY[0x277CA3D00]();
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

uint64_t sub_276EA5304(uint64_t result, TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute **a2, TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276EA53B4(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute>(v18);
      result = sub_276EA53B4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276EA53C4(void *a1)
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

          MEMORY[0x277CA3D00](v5, 0x1012C40EC159624);
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

std::string *sub_276EA5460(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
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
      v22 = sub_276D34D8C(v18);
      result = std::string::operator=(v22, v21);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

double sub_276EA550C(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  *(a1 + 4) = *(a2 + 64);
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *&result = sub_276EA5568(a1 + 10, a2 + 80).n128_u64[0];
  return result;
}

__n128 sub_276EA5568(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  result = *(a2 + 64);
  *(a1 + 4) = result;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  v13 = a1[10];
  a1[10] = *(a2 + 80);
  *(a2 + 80) = v13;
  LOWORD(v13) = *(a1 + 44);
  *(a1 + 44) = *(a2 + 88);
  *(a2 + 88) = v13;
  return result;
}

void sub_276EA55DC(void *a1)
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
          sub_276E4E808((v5 + 8));
          MEMORY[0x277CA3D00](v5, 0x1081C404FE48876);
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

uint64_t sub_276EA5674(uint64_t result, TSWP::FontFeatureArchive **a2, TSWP::FontFeatureArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276EA5724(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::FontFeatureArchive>(v18);
      result = sub_276EA5724(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

__n128 sub_276EA5734(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  result = *(a2 + 64);
  *(a1 + 4) = result;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  LODWORD(v10) = *(a1 + 20);
  *(a1 + 20) = *(a2 + 80);
  *(a2 + 80) = v10;
  LOBYTE(v10) = *(a1 + 84);
  *(a1 + 84) = *(a2 + 84);
  *(a2 + 84) = v10;
  return result;
}

void sub_276EA57A8(void *a1)
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
          TSWP::TabArchive::~TabArchive(*v3);
          MEMORY[0x277CA3D00]();
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

uint64_t sub_276EA582C(uint64_t result, TSWP::TabArchive **a2, TSWP::TabArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276EA58DC(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TabArchive>(v18);
      result = sub_276EA58DC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276EA58EC(void *a1)
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
          sub_276E4E808((v5 + 8));
          MEMORY[0x277CA3D00](v5, 0x1081C401EA54B31);
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

void sub_276EA5984(void *a1)
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
          TSWP::ListStyleArchive_LabelImage::~ListStyleArchive_LabelImage(*v3);
          MEMORY[0x277CA3D00]();
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

google::protobuf::internal *sub_276EA5A08(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = (this + 1);
    goto LABEL_5;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v7;
    while (1)
    {
LABEL_5:
      v8 = *(a1 + 8);
      v9 = v8 - result;
      if (v5 <= v8 - result)
      {
        v14 = a3[1];
        v15 = result + v5;
        v18 = *a3;
        v19 = v14;
        result = sub_276EA5B6C(result, v15, &v18);
        if (v15 != result)
        {
          return 0;
        }

        return result;
      }

      v10 = a3[1];
      v18 = *a3;
      v19 = v10;
      result = sub_276EA5B6C(result, v8, &v18);
      if (!result)
      {
        return result;
      }

      v11 = *(a1 + 8);
      v12 = result - v11;
      v13 = v5 - v9;
      if (v5 - v9 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v9 - v12;
      result = (result + v12);
    }

    v22 = 0;
    v21 = 0;
    v16 = *v11;
    v17 = a3[1];
    v18 = *a3;
    v19 = v17;
    v20 = v16;
    if (sub_276EA5B6C((&v20 + v12), &v20 + v13, &v18) != (&v20 + v13))
    {
      return 0;
    }

    return (*(a1 + 8) + v13);
  }

  return result;
}

unsigned __int8 *sub_276EA5B6C(google::protobuf::internal *this, unint64_t a2, unsigned int **a3)
{
  v3 = this;
  if (this < a2)
  {
    do
    {
      v6 = *v3;
      if (v6 < 0)
      {
        v7 = (v3[1] << 7) + v6;
        v6 = (v7 - 128);
        if (v3[1] < 0)
        {
          v3 = google::protobuf::internal::VarintParseSlow64(v3, (v7 - 128));
          if (!v3)
          {
            return v3;
          }

          v6 = v8;
        }

        else
        {
          v3 += 2;
        }
      }

      else
      {
        ++v3;
      }

      if ((a3[1])(v6))
      {
        v9 = *a3;
        v10 = **a3;
        if (v10 == (*a3)[1])
        {
          v11 = v10 + 1;
          sub_276D4D210(*a3, v10 + 1);
          *(*(v9 + 1) + 4 * v10) = v6;
        }

        else
        {
          *(*(v9 + 1) + 4 * v10) = v6;
          v11 = v10 + 1;
        }

        *v9 = v11;
      }

      else
      {
        v12 = a3[2];
        if (*v12)
        {
          v13 = ((*v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v13 = sub_276EA4A94(v12);
        }

        google::protobuf::UnknownFieldSet::AddVarint(v13);
      }
    }

    while (v3 < a2);
  }

  return v3;
}

uint64_t sub_276EA5C8C(uint64_t result, TSWP::ListStyleArchive_LabelGeometry **a2, TSWP::ListStyleArchive_LabelGeometry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276EA5D3C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ListStyleArchive_LabelGeometry>(v18);
      result = sub_276EA5D3C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_276EA5D4C(uint64_t result, TSWP::ListStyleArchive_LabelImage **a2, TSWP::ListStyleArchive_LabelImage **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276EA5DFC(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ListStyleArchive_LabelImage>(v18);
      result = sub_276EA5DFC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_276EA5E0C(uint64_t result, TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive **a2, TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276EA5EBC(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive>(v18);
      result = sub_276EA5EBC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276EA5ECC(void *a1)
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
          MEMORY[0x277CA3D00]();
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

uint64_t sub_276EA5F50(uint64_t result, TSP::Reference **a2, TSP::Reference **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276EA6000(v13, v15);
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
      v22 = MEMORY[0x277CA3250](v18);
      result = sub_276EA6000(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276EA6010(void *a1)
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
          TSWP::TOCSettingsArchive_TOCEntryData::~TOCSettingsArchive_TOCEntryData(*v3);
          MEMORY[0x277CA3D00]();
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

uint64_t sub_276EA6094(uint64_t result, TSWP::TOCSettingsArchive_TOCEntryData **a2, TSWP::TOCSettingsArchive_TOCEntryData **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276EA6144(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TOCSettingsArchive_TOCEntryData>(v18);
      result = sub_276EA6144(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276EA6154(void *a1)
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
          TSWP::UndoTransaction_StorageAction::~UndoTransaction_StorageAction(*v3);
          MEMORY[0x277CA3D00]();
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

uint64_t sub_276EA61D8(uint64_t result, TSWP::UndoTransaction_StorageAction **a2, TSWP::UndoTransaction_StorageAction **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276EA6288(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_StorageAction>(v18);
      result = sub_276EA6288(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276EA6298(void *a1)
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
          TSWP::UndoTransaction_UnionTransaction::~UndoTransaction_UnionTransaction(*v3);
          MEMORY[0x277CA3D00]();
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

void sub_276EA631C(void *a1)
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
          TSWP::UndoTransaction_StorageActionGroup::~UndoTransaction_StorageActionGroup(*v3);
          MEMORY[0x277CA3D00]();
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

uint64_t sub_276EA63A0(uint64_t result, TSWP::UndoTransaction_UnionTransaction **a2, TSWP::UndoTransaction_UnionTransaction **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276EA6450(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_UnionTransaction>(v18);
      result = sub_276EA6450(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_276EA6460(uint64_t result, TSWP::UndoTransaction_StorageActionGroup **a2, TSWP::UndoTransaction_StorageActionGroup **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276EA6510(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction_StorageActionGroup>(v18);
      result = sub_276EA6510(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276EA6520(void *a1)
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
          TSWP::TOCSmartFieldArchive_TOCEntry::~TOCSmartFieldArchive_TOCEntry(*v3);
          MEMORY[0x277CA3D00]();
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

uint64_t sub_276EA65A4(uint64_t result, TSWP::TOCSmartFieldArchive_TOCEntry **a2, TSWP::TOCSmartFieldArchive_TOCEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276EA6654(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TOCSmartFieldArchive_TOCEntry>(v18);
      result = sub_276EA6654(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_276EA6664(TSS::ThemeArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSS::ThemeArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_ThemePresetsArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TSWP::_ThemePresetsArchive_default_instance_);
}

uint64_t sub_276EA66E8(TSD::ImageArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSD::ImageArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_CharacterStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TSWP::_CharacterStylePropertiesArchive_default_instance_);
}

uint64_t sub_276EA676C(TSCK::CollaboratorCursorArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSCK::CollaboratorCursorArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_CollaboratorTextCursorSubselectionArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TSWP::_CollaboratorTextCursorSubselectionArchive_default_instance_);
}

uint64_t sub_276EA67F0(TSS::CommandPropertyEntryArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSS::CommandPropertyEntryArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_PaddingArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TSWP::_PaddingArchive_default_instance_);
}

uint64_t sub_276EA6874(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F540C4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TSWP::SelectionArchive::~SelectionArchive);
}

uint64_t sub_276EA6900(uint64_t a1)
{
  v2 = sub_276EA6978(a1, 1);
  *v2 = &unk_2885FFD90;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ObjectAttributeTable_ObjectAttribute_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276EA6978(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54100(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::ObjectAttributeTable_ObjectAttribute::~ObjectAttributeTable_ObjectAttribute);
}

uint64_t sub_276EA6A04(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54130(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::ObjectAttributeTable::~ObjectAttributeTable);
}

uint64_t sub_276EA6A90(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54160(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::StringAttributeTable_StringAttribute::~StringAttributeTable_StringAttribute);
}

uint64_t sub_276EA6B1C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54190(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::StringAttributeTable::~StringAttributeTable);
}

uint64_t sub_276EA6BA8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F541C0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_276EA6C30);
}

uint64_t sub_276EA6C50(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F541F0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::ParaDataAttributeTable::~ParaDataAttributeTable);
}

void *sub_276EA6CDC(uint64_t a1)
{
  v2 = sub_276EA6D50(a1, 1);
  *v2 = &unk_2886001B0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_OverlappingFieldAttributeTable_OverlappingFieldAttribute_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276EA6D50(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54220(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::OverlappingFieldAttributeTable_OverlappingFieldAttribute::~OverlappingFieldAttributeTable_OverlappingFieldAttribute);
}

uint64_t sub_276EA6DDC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54250(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::OverlappingFieldAttributeTable::~OverlappingFieldAttributeTable);
}

uint64_t sub_276EA6E68(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54280(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 240, TSWP::StorageArchive::~StorageArchive);
}

uint64_t sub_276EA6EF4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F542BC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::HighlightArchive::~HighlightArchive);
}

uint64_t sub_276EA6F80(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F542EC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::PencilAnnotationArchive::~PencilAnnotationArchive);
}

uint64_t sub_276EA700C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F5431C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276EA7094);
}

uint64_t sub_276EA70B4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F5434C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 232, TSWP::CharacterStylePropertiesArchive::~CharacterStylePropertiesArchive);
}

uint64_t sub_276EA7140(uint64_t a1)
{
  v2 = sub_276EA71B8(a1, 1);
  *v2 = &unk_288600680;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_CharacterStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276EA71B8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54388(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::CharacterStyleArchive::~CharacterStyleArchive);
}

uint64_t sub_276EA7244(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F543B8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::TabArchive::~TabArchive);
}

uint64_t sub_276EA72D0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F543E8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::TabsArchive::~TabsArchive);
}