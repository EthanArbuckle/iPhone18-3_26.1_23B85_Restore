google::protobuf::internal *TSWPSOS::SpecSetPaddingArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v22) & 1) == 0)
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

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PaddingArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_276F51F64(a3, v16, v7);
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
            sub_276EA4A94((a1 + 8));
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
      if (sub_276EA4A1C(a3, &v22))
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

unsigned __int8 *TSWPSOS::SpecSetPaddingArchive::_InternalSerialize(TSWPSOS::SpecSetPaddingArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::PaddingArchive::_InternalSerialize(v6, v8, a3);
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

uint64_t TSWPSOS::SpecSetPaddingArchive::ByteSizeLong(TSWPSOS::SpecSetPaddingArchive *this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSWP::PaddingArchive::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWPSOS::SpecSetPaddingArchive::MergeFrom(TSWPSOS::SpecSetPaddingArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecSetPaddingArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecSetPaddingArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecSetPaddingArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PaddingArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWP::_PaddingArchive_default_instance_;
      }

      this = TSWP::PaddingArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetPaddingArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetPaddingArchive::Clear(this);

    return TSWPSOS::SpecSetPaddingArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetPaddingArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecSetPaddingArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetPaddingArchive::Clear(this);

    return TSWPSOS::SpecSetPaddingArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetPaddingArchive::InternalSwap(TSWPSOS::SpecSetPaddingArchive *this, TSWPSOS::SpecSetPaddingArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
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

TSP::Reference *TSWPSOS::SpecSetParagraphStyleArchive::clear_paragraph_style(TSWPSOS::SpecSetParagraphStyleArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWPSOS::SpecSetParagraphStyleArchive *TSWPSOS::SpecSetParagraphStyleArchive::SpecSetParagraphStyleArchive(TSWPSOS::SpecSetParagraphStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886050E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetParagraphStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2886050E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetParagraphStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecSetParagraphStyleArchive *TSWPSOS::SpecSetParagraphStyleArchive::SpecSetParagraphStyleArchive(TSWPSOS::SpecSetParagraphStyleArchive *this, const TSWPSOS::SpecSetParagraphStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886050E0;
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
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSWPSOS::SpecSetParagraphStyleArchive::~SpecSetParagraphStyleArchive(TSWPSOS::SpecSetParagraphStyleArchive *this)
{
  if (this != &TSWPSOS::_SpecSetParagraphStyleArchive_default_instance_)
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
  TSWPSOS::SpecSetParagraphStyleArchive::~SpecSetParagraphStyleArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecSetParagraphStyleArchive::default_instance(TSWPSOS::SpecSetParagraphStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetParagraphStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetParagraphStyleArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetParagraphStyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Reference::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276EA4D28(v2);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::SpecSetParagraphStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v23) & 1) == 0)
  {
    while (1)
    {
      v7 = (v23 + 1);
      v8 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v20;
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

            v18 = MEMORY[0x277CA3250](v17);
            LODWORD(v16) = v18;
            *(a1 + 24) = v18;
            v7 = v23;
          }

          v12 = sub_276F4F9E8(a3, v16, v7);
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
            sub_276EA4A94((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v23 = v12;
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
        v23 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v21 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v23 = v21;
      *(a1 + 32) = v22 != 0;
      if (!v21)
      {
LABEL_37:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_276EA4A1C(a3, &v23))
      {
        goto LABEL_2;
      }
    }

    v7 = (v23 + 2);
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

unsigned __int8 *TSWPSOS::SpecSetParagraphStyleArchive::_InternalSerialize(TSWPSOS::SpecSetParagraphStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSWPSOS::SpecSetParagraphStyleArchive::ByteSizeLong(TSWPSOS::SpecSetParagraphStyleArchive *this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWPSOS::SpecSetParagraphStyleArchive::MergeFrom(TSWPSOS::SpecSetParagraphStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecSetParagraphStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecSetParagraphStyleArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecSetParagraphStyleArchive *a2)
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
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetParagraphStyleArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetParagraphStyleArchive::Clear(this);

    return TSWPSOS::SpecSetParagraphStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetParagraphStyleArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecSetParagraphStyleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetParagraphStyleArchive::Clear(this);

    return TSWPSOS::SpecSetParagraphStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWPSOS::SpecSetParagraphStyleArchive::IsInitialized(TSWPSOS::SpecSetParagraphStyleArchive *this)
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

  result = TSP::Reference::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSWPSOS::SpecSetParagraphStyleArchive::InternalSwap(TSWPSOS::SpecSetParagraphStyleArchive *this, TSWPSOS::SpecSetParagraphStyleArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
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

TSP::Point *TSWPSOS::SpecSetRuleOffsetArchive::clear_rule_offset(TSWPSOS::SpecSetRuleOffsetArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWPSOS::SpecSetRuleOffsetArchive *TSWPSOS::SpecSetRuleOffsetArchive::SpecSetRuleOffsetArchive(TSWPSOS::SpecSetRuleOffsetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605190;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetRuleOffsetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288605190;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetRuleOffsetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecSetRuleOffsetArchive *TSWPSOS::SpecSetRuleOffsetArchive::SpecSetRuleOffsetArchive(TSWPSOS::SpecSetRuleOffsetArchive *this, const TSWPSOS::SpecSetRuleOffsetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605190;
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
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSWPSOS::SpecSetRuleOffsetArchive::~SpecSetRuleOffsetArchive(TSWPSOS::SpecSetRuleOffsetArchive *this)
{
  if (this != &TSWPSOS::_SpecSetRuleOffsetArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Point::~Point(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecSetRuleOffsetArchive::~SpecSetRuleOffsetArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecSetRuleOffsetArchive::default_instance(TSWPSOS::SpecSetRuleOffsetArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetRuleOffsetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetRuleOffsetArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetRuleOffsetArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Point::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276EA4D28(v2);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::SpecSetRuleOffsetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v23) & 1) == 0)
  {
    while (1)
    {
      v7 = (v23 + 1);
      v8 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v20;
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

            v18 = MEMORY[0x277CA3220](v17);
            LODWORD(v16) = v18;
            *(a1 + 24) = v18;
            v7 = v23;
          }

          v12 = sub_276F51744(a3, v16, v7);
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
            sub_276EA4A94((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v23 = v12;
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
        v23 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v21 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v23 = v21;
      *(a1 + 32) = v22 != 0;
      if (!v21)
      {
LABEL_37:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_276EA4A1C(a3, &v23))
      {
        goto LABEL_2;
      }
    }

    v7 = (v23 + 2);
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

unsigned __int8 *TSWPSOS::SpecSetRuleOffsetArchive::_InternalSerialize(TSWPSOS::SpecSetRuleOffsetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Point::_InternalSerialize(v6, v8, a3);
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

uint64_t TSWPSOS::SpecSetRuleOffsetArchive::ByteSizeLong(TSWPSOS::SpecSetRuleOffsetArchive *this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSP::Point::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWPSOS::SpecSetRuleOffsetArchive::MergeFrom(TSWPSOS::SpecSetRuleOffsetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecSetRuleOffsetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecSetRuleOffsetArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecSetRuleOffsetArchive *a2)
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

        v6 = MEMORY[0x277CA3220](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809F0];
      }

      this = TSP::Point::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetRuleOffsetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetRuleOffsetArchive::Clear(this);

    return TSWPSOS::SpecSetRuleOffsetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetRuleOffsetArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecSetRuleOffsetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetRuleOffsetArchive::Clear(this);

    return TSWPSOS::SpecSetRuleOffsetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWPSOS::SpecSetRuleOffsetArchive::IsInitialized(TSWPSOS::SpecSetRuleOffsetArchive *this)
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

  result = TSP::Point::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSWPSOS::SpecSetRuleOffsetArchive::InternalSwap(TSWPSOS::SpecSetRuleOffsetArchive *this, TSWPSOS::SpecSetRuleOffsetArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
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

uint64_t *TSWPSOS::SpecSetTabsArchive::clear_tabs(TSWPSOS::SpecSetTabsArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSWP::TabsArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWPSOS::SpecSetTabsArchive *TSWPSOS::SpecSetTabsArchive::SpecSetTabsArchive(TSWPSOS::SpecSetTabsArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605240;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetTabsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288605240;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetTabsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecSetTabsArchive *TSWPSOS::SpecSetTabsArchive::SpecSetTabsArchive(TSWPSOS::SpecSetTabsArchive *this, const TSWPSOS::SpecSetTabsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605240;
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
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSWPSOS::SpecSetTabsArchive::~SpecSetTabsArchive(TSWPSOS::SpecSetTabsArchive *this)
{
  if (this != &TSWPSOS::_SpecSetTabsArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::TabsArchive::~TabsArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecSetTabsArchive::~SpecSetTabsArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecSetTabsArchive::default_instance(TSWPSOS::SpecSetTabsArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetTabsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetTabsArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetTabsArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWP::TabsArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276EA4D28(v2);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::SpecSetTabsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v22) & 1) == 0)
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

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TabsArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_276F51814(a3, v16, v7);
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
            sub_276EA4A94((a1 + 8));
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
      if (sub_276EA4A1C(a3, &v22))
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

unsigned __int8 *TSWPSOS::SpecSetTabsArchive::_InternalSerialize(TSWPSOS::SpecSetTabsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::TabsArchive::_InternalSerialize(v6, v8, a3);
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

uint64_t TSWPSOS::SpecSetTabsArchive::ByteSizeLong(TSWPSOS::SpecSetTabsArchive *this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSWP::TabsArchive::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWPSOS::SpecSetTabsArchive::MergeFrom(TSWPSOS::SpecSetTabsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecSetTabsArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecSetTabsArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecSetTabsArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TabsArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWP::_TabsArchive_default_instance_;
      }

      this = TSWP::TabsArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetTabsArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetTabsArchive::Clear(this);

    return TSWPSOS::SpecSetTabsArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetTabsArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecSetTabsArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetTabsArchive::Clear(this);

    return TSWPSOS::SpecSetTabsArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetTabsArchive::InternalSwap(TSWPSOS::SpecSetTabsArchive *this, TSWPSOS::SpecSetTabsArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
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

TSWPSOS::SpecCharacterStyleArchive *TSWPSOS::SpecCharacterStyleArchive::SpecCharacterStyleArchive(TSWPSOS::SpecCharacterStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886052F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecCharacterStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2886052F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecCharacterStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecCharacterStyleArchive *TSWPSOS::SpecCharacterStyleArchive::SpecCharacterStyleArchive(TSWPSOS::SpecCharacterStyleArchive *this, const TSWPSOS::SpecCharacterStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886052F0;
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

void TSWPSOS::SpecCharacterStyleArchive::~SpecCharacterStyleArchive(TSWPSOS::SpecCharacterStyleArchive *this)
{
  if (this != &TSWPSOS::_SpecCharacterStyleArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetCharacterStyleArchive::~SpecSetCharacterStyleArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecCharacterStyleArchive::~SpecCharacterStyleArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecCharacterStyleArchive::default_instance(TSWPSOS::SpecCharacterStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecCharacterStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecCharacterStyleArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecCharacterStyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWPSOS::SpecSetCharacterStyleArchive::Clear(this[3]);
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

google::protobuf::internal *TSWPSOS::SpecCharacterStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetCharacterStyleArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F552E8(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecCharacterStyleArchive::_InternalSerialize(TSWPSOS::SpecCharacterStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetCharacterStyleArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecCharacterStyleArchive::ByteSizeLong(TSWPSOS::SpecSetCharacterStyleArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetCharacterStyleArchive::ByteSizeLong(this[3]);
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

uint64_t TSWPSOS::SpecCharacterStyleArchive::MergeFrom(TSWPSOS::SpecCharacterStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecCharacterStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecCharacterStyleArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecCharacterStyleArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetCharacterStyleArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetCharacterStyleArchive_default_instance_;
    }

    return TSWPSOS::SpecSetCharacterStyleArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWPSOS::SpecCharacterStyleArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecCharacterStyleArchive::Clear(this);

    return TSWPSOS::SpecCharacterStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecCharacterStyleArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecCharacterStyleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecCharacterStyleArchive::Clear(this);

    return TSWPSOS::SpecCharacterStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWPSOS::SpecCharacterStyleArchive::IsInitialized(TSWPSOS::SpecCharacterStyleArchive *this)
{
  result = 1;
  if (*(this + 16))
  {
    v2 = *(this + 3);
    v3 = *(v2 + 16);
    if ((v3 & 2) == 0 || (v3 & 1) != 0 && (TSP::Reference::IsInitialized(*(v2 + 24)) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *TSWPSOS::SpecCharacterStyleArchive::InternalSwap(TSWPSOS::SpecCharacterStyleArchive *this, TSWPSOS::SpecCharacterStyleArchive *a2)
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

TSWPSOS::SpecColumnsArchive *TSWPSOS::SpecColumnsArchive::SpecColumnsArchive(TSWPSOS::SpecColumnsArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886053A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecColumnsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2886053A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecColumnsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecColumnsArchive *TSWPSOS::SpecColumnsArchive::SpecColumnsArchive(TSWPSOS::SpecColumnsArchive *this, const TSWPSOS::SpecColumnsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886053A0;
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

void TSWPSOS::SpecColumnsArchive::~SpecColumnsArchive(TSWPSOS::SpecColumnsArchive *this)
{
  if (this != &TSWPSOS::_SpecColumnsArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetColumnsArchive::~SpecSetColumnsArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecColumnsArchive::~SpecColumnsArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecColumnsArchive::default_instance(TSWPSOS::SpecColumnsArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecColumnsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecColumnsArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecColumnsArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWPSOS::SpecSetColumnsArchive::Clear(this[3]);
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

google::protobuf::internal *TSWPSOS::SpecColumnsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetColumnsArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F553B8(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecColumnsArchive::_InternalSerialize(TSWPSOS::SpecColumnsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetColumnsArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecColumnsArchive::ByteSizeLong(TSWPSOS::SpecSetColumnsArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetColumnsArchive::ByteSizeLong(this[3]);
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

void TSWPSOS::SpecColumnsArchive::MergeFrom(TSWPSOS::SpecColumnsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSWPSOS::SpecColumnsArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSWPSOS::SpecColumnsArchive::MergeFrom(TSWPSOS::SpecColumnsArchive *this, const TSWPSOS::SpecColumnsArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_276EA4CDC(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(this + 4) |= 1u;
    v6 = *(this + 3);
    if (!v6)
    {
      v7 = *(this + 1);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetColumnsArchive>(v7);
      *(this + 3) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetColumnsArchive_default_instance_;
    }

    TSWPSOS::SpecSetColumnsArchive::MergeFrom(v6, v8);
  }
}

void TSWPSOS::SpecColumnsArchive::CopyFrom(TSWPSOS::SpecColumnsArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSWPSOS::SpecColumnsArchive::Clear(this);

    TSWPSOS::SpecColumnsArchive::MergeFrom(this, a2);
  }
}

void TSWPSOS::SpecColumnsArchive::CopyFrom(TSWPSOS::SpecColumnsArchive *this, const TSWPSOS::SpecColumnsArchive *a2)
{
  if (a2 != this)
  {
    TSWPSOS::SpecColumnsArchive::Clear(this);

    TSWPSOS::SpecColumnsArchive::MergeFrom(this, a2);
  }
}

BOOL TSWPSOS::SpecColumnsArchive::IsInitialized(TSWPSOS::SpecColumnsArchive *this)
{
  result = 1;
  if (*(this + 16))
  {
    v2 = *(this + 3);
    v3 = *(v2 + 16);
    if ((v3 & 2) == 0 || (v3 & 1) != 0 && !TSWP::ColumnsArchive::IsInitialized(*(v2 + 24)))
    {
      return 0;
    }
  }

  return result;
}

uint64_t *TSWPSOS::SpecColumnsArchive::InternalSwap(TSWPSOS::SpecColumnsArchive *this, TSWPSOS::SpecColumnsArchive *a2)
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

TSWPSOS::SpecDropCapArchive *TSWPSOS::SpecDropCapArchive::SpecDropCapArchive(TSWPSOS::SpecDropCapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605450;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecDropCapArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288605450;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecDropCapArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecDropCapArchive *TSWPSOS::SpecDropCapArchive::SpecDropCapArchive(TSWPSOS::SpecDropCapArchive *this, const TSWPSOS::SpecDropCapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605450;
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

void TSWPSOS::SpecDropCapArchive::~SpecDropCapArchive(TSWPSOS::SpecDropCapArchive *this)
{
  if (this != &TSWPSOS::_SpecDropCapArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetDropCapArchive::~SpecSetDropCapArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecDropCapArchive::~SpecDropCapArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecDropCapArchive::default_instance(TSWPSOS::SpecDropCapArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecDropCapArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecDropCapArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecDropCapArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWPSOS::SpecSetDropCapArchive::Clear(this[3]);
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

google::protobuf::internal *TSWPSOS::SpecDropCapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetDropCapArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F55488(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecDropCapArchive::_InternalSerialize(TSWPSOS::SpecDropCapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetDropCapArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecDropCapArchive::ByteSizeLong(TSWPSOS::SpecSetDropCapArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetDropCapArchive::ByteSizeLong(this[3]);
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

uint64_t TSWPSOS::SpecDropCapArchive::MergeFrom(TSWPSOS::SpecDropCapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecDropCapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecDropCapArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecDropCapArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetDropCapArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetDropCapArchive_default_instance_;
    }

    return TSWPSOS::SpecSetDropCapArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWPSOS::SpecDropCapArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecDropCapArchive::Clear(this);

    return TSWPSOS::SpecDropCapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecDropCapArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecDropCapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecDropCapArchive::Clear(this);

    return TSWPSOS::SpecDropCapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecDropCapArchive::InternalSwap(TSWPSOS::SpecDropCapArchive *this, TSWPSOS::SpecDropCapArchive *a2)
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

TSWPSOS::SpecFontFeaturesArchive *TSWPSOS::SpecFontFeaturesArchive::SpecFontFeaturesArchive(TSWPSOS::SpecFontFeaturesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605500;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecFontFeaturesArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288605500;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecFontFeaturesArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecFontFeaturesArchive *TSWPSOS::SpecFontFeaturesArchive::SpecFontFeaturesArchive(TSWPSOS::SpecFontFeaturesArchive *this, const TSWPSOS::SpecFontFeaturesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605500;
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

void TSWPSOS::SpecFontFeaturesArchive::~SpecFontFeaturesArchive(TSWPSOS::SpecFontFeaturesArchive *this)
{
  if (this != &TSWPSOS::_SpecFontFeaturesArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetFontFeaturesArchive::~SpecSetFontFeaturesArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecFontFeaturesArchive::~SpecFontFeaturesArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecFontFeaturesArchive::default_instance(TSWPSOS::SpecFontFeaturesArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecFontFeaturesArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecFontFeaturesArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecFontFeaturesArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWPSOS::SpecSetFontFeaturesArchive::Clear(this[3]);
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

google::protobuf::internal *TSWPSOS::SpecFontFeaturesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetFontFeaturesArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F55558(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecFontFeaturesArchive::_InternalSerialize(TSWPSOS::SpecFontFeaturesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetFontFeaturesArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecFontFeaturesArchive::ByteSizeLong(TSWPSOS::SpecSetFontFeaturesArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetFontFeaturesArchive::ByteSizeLong(this[3]);
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

uint64_t TSWPSOS::SpecFontFeaturesArchive::MergeFrom(TSWPSOS::SpecFontFeaturesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecFontFeaturesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecFontFeaturesArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecFontFeaturesArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetFontFeaturesArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetFontFeaturesArchive_default_instance_;
    }

    return TSWPSOS::SpecSetFontFeaturesArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWPSOS::SpecFontFeaturesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecFontFeaturesArchive::Clear(this);

    return TSWPSOS::SpecFontFeaturesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecFontFeaturesArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecFontFeaturesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecFontFeaturesArchive::Clear(this);

    return TSWPSOS::SpecFontFeaturesArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWPSOS::SpecFontFeaturesArchive::IsInitialized(TSWPSOS::SpecFontFeaturesArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSWPSOS::SpecSetFontFeaturesArchive::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSWPSOS::SpecFontFeaturesArchive::InternalSwap(TSWPSOS::SpecFontFeaturesArchive *this, TSWPSOS::SpecFontFeaturesArchive *a2)
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

TSWPSOS::SpecLineSpacingArchive *TSWPSOS::SpecLineSpacingArchive::SpecLineSpacingArchive(TSWPSOS::SpecLineSpacingArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886055B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecLineSpacingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2886055B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecLineSpacingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecLineSpacingArchive *TSWPSOS::SpecLineSpacingArchive::SpecLineSpacingArchive(TSWPSOS::SpecLineSpacingArchive *this, const TSWPSOS::SpecLineSpacingArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886055B0;
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

void TSWPSOS::SpecLineSpacingArchive::~SpecLineSpacingArchive(TSWPSOS::SpecLineSpacingArchive *this)
{
  if (this != &TSWPSOS::_SpecLineSpacingArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetLineSpacingArchive::~SpecSetLineSpacingArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecLineSpacingArchive::~SpecLineSpacingArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecLineSpacingArchive::default_instance(TSWPSOS::SpecLineSpacingArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecLineSpacingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecLineSpacingArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecLineSpacingArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWPSOS::SpecSetLineSpacingArchive::Clear(this[3]);
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

google::protobuf::internal *TSWPSOS::SpecLineSpacingArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetLineSpacingArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F55628(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecLineSpacingArchive::_InternalSerialize(TSWPSOS::SpecLineSpacingArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetLineSpacingArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecLineSpacingArchive::ByteSizeLong(TSWPSOS::SpecSetLineSpacingArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetLineSpacingArchive::ByteSizeLong(this[3]);
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

uint64_t TSWPSOS::SpecLineSpacingArchive::MergeFrom(TSWPSOS::SpecLineSpacingArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecLineSpacingArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecLineSpacingArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecLineSpacingArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetLineSpacingArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetLineSpacingArchive_default_instance_;
    }

    return TSWPSOS::SpecSetLineSpacingArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWPSOS::SpecLineSpacingArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecLineSpacingArchive::Clear(this);

    return TSWPSOS::SpecLineSpacingArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecLineSpacingArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecLineSpacingArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecLineSpacingArchive::Clear(this);

    return TSWPSOS::SpecLineSpacingArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecLineSpacingArchive::InternalSwap(TSWPSOS::SpecLineSpacingArchive *this, TSWPSOS::SpecLineSpacingArchive *a2)
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

TSWPSOS::SpecListStyleArchive *TSWPSOS::SpecListStyleArchive::SpecListStyleArchive(TSWPSOS::SpecListStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605660;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288605660;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecListStyleArchive *TSWPSOS::SpecListStyleArchive::SpecListStyleArchive(TSWPSOS::SpecListStyleArchive *this, const TSWPSOS::SpecListStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605660;
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

void TSWPSOS::SpecListStyleArchive::~SpecListStyleArchive(TSWPSOS::SpecListStyleArchive *this)
{
  if (this != &TSWPSOS::_SpecListStyleArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetListStyleArchive::~SpecSetListStyleArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecListStyleArchive::~SpecListStyleArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecListStyleArchive::default_instance(TSWPSOS::SpecListStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecListStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecListStyleArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecListStyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWPSOS::SpecSetListStyleArchive::Clear(this[3]);
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

google::protobuf::internal *TSWPSOS::SpecListStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetListStyleArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F556F8(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecListStyleArchive::_InternalSerialize(TSWPSOS::SpecListStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetListStyleArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecListStyleArchive::ByteSizeLong(TSWPSOS::SpecSetListStyleArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetListStyleArchive::ByteSizeLong(this[3]);
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

uint64_t TSWPSOS::SpecListStyleArchive::MergeFrom(TSWPSOS::SpecListStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecListStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecListStyleArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecListStyleArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetListStyleArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetListStyleArchive_default_instance_;
    }

    return TSWPSOS::SpecSetListStyleArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecListStyleArchive::Clear(this);

    return TSWPSOS::SpecListStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecListStyleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecListStyleArchive::Clear(this);

    return TSWPSOS::SpecListStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWPSOS::SpecListStyleArchive::IsInitialized(TSWPSOS::SpecListStyleArchive *this)
{
  result = 1;
  if (*(this + 16))
  {
    v2 = *(this + 3);
    v3 = *(v2 + 16);
    if ((v3 & 2) == 0 || (v3 & 1) != 0 && (TSP::Reference::IsInitialized(*(v2 + 24)) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *TSWPSOS::SpecListStyleArchive::InternalSwap(TSWPSOS::SpecListStyleArchive *this, TSWPSOS::SpecListStyleArchive *a2)
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

TSWPSOS::SpecListStyleBoolArrayArchive *TSWPSOS::SpecListStyleBoolArrayArchive::SpecListStyleBoolArrayArchive(TSWPSOS::SpecListStyleBoolArrayArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605710;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleBoolArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288605710;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleBoolArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecListStyleBoolArrayArchive *TSWPSOS::SpecListStyleBoolArrayArchive::SpecListStyleBoolArrayArchive(TSWPSOS::SpecListStyleBoolArrayArchive *this, const TSWPSOS::SpecListStyleBoolArrayArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605710;
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

void TSWPSOS::SpecListStyleBoolArrayArchive::~SpecListStyleBoolArrayArchive(TSWPSOS::SpecListStyleBoolArrayArchive *this)
{
  if (this != &TSWPSOS::_SpecListStyleBoolArrayArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetListStyleBoolArrayArchive::~SpecSetListStyleBoolArrayArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecListStyleBoolArrayArchive::~SpecListStyleBoolArrayArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecListStyleBoolArrayArchive::default_instance(TSWPSOS::SpecListStyleBoolArrayArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecListStyleBoolArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecListStyleBoolArrayArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecListStyleBoolArrayArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    v2 = this[3];
    v3 = *(v2 + 8);
    this = (v2 + 8);
    *(this + 4) = 0;
    *(this + 16) = 0;
    *(this + 2) = 0;
    if (v3)
    {
      this = sub_276EA4D28(this);
    }
  }

  v5 = *(v1 + 8);
  v4 = v1 + 1;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_276EA4D28(v4);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::SpecListStyleBoolArrayArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetListStyleBoolArrayArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F557C8(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecListStyleBoolArrayArchive::_InternalSerialize(TSWPSOS::SpecListStyleBoolArrayArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetListStyleBoolArrayArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecListStyleBoolArrayArchive::ByteSizeLong(TSWPSOS::SpecSetListStyleBoolArrayArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetListStyleBoolArrayArchive::ByteSizeLong(this[3]);
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

uint64_t TSWPSOS::SpecListStyleBoolArrayArchive::MergeFrom(TSWPSOS::SpecListStyleBoolArrayArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecListStyleBoolArrayArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecListStyleBoolArrayArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecListStyleBoolArrayArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetListStyleBoolArrayArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetListStyleBoolArrayArchive_default_instance_;
    }

    return TSWPSOS::SpecSetListStyleBoolArrayArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleBoolArrayArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecListStyleBoolArrayArchive::Clear(this);

    return TSWPSOS::SpecListStyleBoolArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleBoolArrayArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecListStyleBoolArrayArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecListStyleBoolArrayArchive::Clear(this);

    return TSWPSOS::SpecListStyleBoolArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleBoolArrayArchive::InternalSwap(TSWPSOS::SpecListStyleBoolArrayArchive *this, TSWPSOS::SpecListStyleBoolArrayArchive *a2)
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

TSWPSOS::SpecListStyleFloatArrayArchive *TSWPSOS::SpecListStyleFloatArrayArchive::SpecListStyleFloatArrayArchive(TSWPSOS::SpecListStyleFloatArrayArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886057C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleFloatArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2886057C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleFloatArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecListStyleFloatArrayArchive *TSWPSOS::SpecListStyleFloatArrayArchive::SpecListStyleFloatArrayArchive(TSWPSOS::SpecListStyleFloatArrayArchive *this, const TSWPSOS::SpecListStyleFloatArrayArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886057C0;
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

void TSWPSOS::SpecListStyleFloatArrayArchive::~SpecListStyleFloatArrayArchive(TSWPSOS::SpecListStyleFloatArrayArchive *this)
{
  if (this != &TSWPSOS::_SpecListStyleFloatArrayArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetListStyleFloatArrayArchive::~SpecSetListStyleFloatArrayArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecListStyleFloatArrayArchive::~SpecListStyleFloatArrayArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecListStyleFloatArrayArchive::default_instance(TSWPSOS::SpecListStyleFloatArrayArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecListStyleFloatArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecListStyleFloatArrayArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecListStyleFloatArrayArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    v2 = this[3];
    v3 = *(v2 + 8);
    this = (v2 + 8);
    *(this + 4) = 0;
    *(this + 16) = 0;
    *(this + 2) = 0;
    if (v3)
    {
      this = sub_276EA4D28(this);
    }
  }

  v5 = *(v1 + 8);
  v4 = v1 + 1;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_276EA4D28(v4);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::SpecListStyleFloatArrayArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetListStyleFloatArrayArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F55898(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecListStyleFloatArrayArchive::_InternalSerialize(TSWPSOS::SpecListStyleFloatArrayArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetListStyleFloatArrayArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecListStyleFloatArrayArchive::ByteSizeLong(TSWPSOS::SpecSetListStyleFloatArrayArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetListStyleFloatArrayArchive::ByteSizeLong(this[3]);
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

uint64_t TSWPSOS::SpecListStyleFloatArrayArchive::MergeFrom(TSWPSOS::SpecListStyleFloatArrayArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecListStyleFloatArrayArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecListStyleFloatArrayArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecListStyleFloatArrayArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetListStyleFloatArrayArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetListStyleFloatArrayArchive_default_instance_;
    }

    return TSWPSOS::SpecSetListStyleFloatArrayArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleFloatArrayArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecListStyleFloatArrayArchive::Clear(this);

    return TSWPSOS::SpecListStyleFloatArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleFloatArrayArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecListStyleFloatArrayArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecListStyleFloatArrayArchive::Clear(this);

    return TSWPSOS::SpecListStyleFloatArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleFloatArrayArchive::InternalSwap(TSWPSOS::SpecListStyleFloatArrayArchive *this, TSWPSOS::SpecListStyleFloatArrayArchive *a2)
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

TSWPSOS::SpecListStyleImageDataArrayArchive *TSWPSOS::SpecListStyleImageDataArrayArchive::SpecListStyleImageDataArrayArchive(TSWPSOS::SpecListStyleImageDataArrayArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605870;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleImageDataArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288605870;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleImageDataArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecListStyleImageDataArrayArchive *TSWPSOS::SpecListStyleImageDataArrayArchive::SpecListStyleImageDataArrayArchive(TSWPSOS::SpecListStyleImageDataArrayArchive *this, const TSWPSOS::SpecListStyleImageDataArrayArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605870;
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

void TSWPSOS::SpecListStyleImageDataArrayArchive::~SpecListStyleImageDataArrayArchive(TSWPSOS::SpecListStyleImageDataArrayArchive *this)
{
  if (this != &TSWPSOS::_SpecListStyleImageDataArrayArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetListStyleImageDataArrayArchive::~SpecSetListStyleImageDataArrayArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecListStyleImageDataArrayArchive::~SpecListStyleImageDataArrayArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecListStyleImageDataArrayArchive::default_instance(TSWPSOS::SpecListStyleImageDataArrayArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecListStyleImageDataArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecListStyleImageDataArrayArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecListStyleImageDataArrayArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWPSOS::SpecSetListStyleImageDataArrayArchive::Clear(this[3]);
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

google::protobuf::internal *TSWPSOS::SpecListStyleImageDataArrayArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetListStyleImageDataArrayArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F55968(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecListStyleImageDataArrayArchive::_InternalSerialize(TSWPSOS::SpecListStyleImageDataArrayArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetListStyleImageDataArrayArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecListStyleImageDataArrayArchive::ByteSizeLong(TSWPSOS::SpecSetListStyleImageDataArrayArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetListStyleImageDataArrayArchive::ByteSizeLong(this[3]);
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

uint64_t TSWPSOS::SpecListStyleImageDataArrayArchive::MergeFrom(TSWPSOS::SpecListStyleImageDataArrayArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecListStyleImageDataArrayArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecListStyleImageDataArrayArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecListStyleImageDataArrayArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetListStyleImageDataArrayArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetListStyleImageDataArrayArchive_default_instance_;
    }

    return TSWPSOS::SpecSetListStyleImageDataArrayArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleImageDataArrayArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecListStyleImageDataArrayArchive::Clear(this);

    return TSWPSOS::SpecListStyleImageDataArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleImageDataArrayArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecListStyleImageDataArrayArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecListStyleImageDataArrayArchive::Clear(this);

    return TSWPSOS::SpecListStyleImageDataArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWPSOS::SpecListStyleImageDataArrayArchive::IsInitialized(TSWPSOS::SpecListStyleImageDataArrayArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSWPSOS::SpecSetListStyleImageDataArrayArchive::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSWPSOS::SpecListStyleImageDataArrayArchive::InternalSwap(TSWPSOS::SpecListStyleImageDataArrayArchive *this, TSWPSOS::SpecListStyleImageDataArrayArchive *a2)
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

TSWPSOS::SpecListStyleListLabelGeometryArrayArchive *TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::SpecListStyleListLabelGeometryArrayArchive(TSWPSOS::SpecListStyleListLabelGeometryArrayArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605920;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleListLabelGeometryArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288605920;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleListLabelGeometryArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecListStyleListLabelGeometryArrayArchive *TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::SpecListStyleListLabelGeometryArrayArchive(TSWPSOS::SpecListStyleListLabelGeometryArrayArchive *this, const TSWPSOS::SpecListStyleListLabelGeometryArrayArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605920;
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

void TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::~SpecListStyleListLabelGeometryArrayArchive(TSWPSOS::SpecListStyleListLabelGeometryArrayArchive *this)
{
  if (this != &TSWPSOS::_SpecListStyleListLabelGeometryArrayArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::~SpecSetListStyleListLabelGeometryArrayArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::~SpecListStyleListLabelGeometryArrayArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::default_instance(TSWPSOS::SpecListStyleListLabelGeometryArrayArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecListStyleListLabelGeometryArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecListStyleListLabelGeometryArrayArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::Clear(this[3]);
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

google::protobuf::internal *TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F55A38(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::_InternalSerialize(TSWPSOS::SpecListStyleListLabelGeometryArrayArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::ByteSizeLong(TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::ByteSizeLong(this[3]);
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

uint64_t TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::MergeFrom(TSWPSOS::SpecListStyleListLabelGeometryArrayArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecListStyleListLabelGeometryArrayArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetListStyleListLabelGeometryArrayArchive_default_instance_;
    }

    return TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::Clear(this);

    return TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecListStyleListLabelGeometryArrayArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::Clear(this);

    return TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleListLabelGeometryArrayArchive::InternalSwap(TSWPSOS::SpecListStyleListLabelGeometryArrayArchive *this, TSWPSOS::SpecListStyleListLabelGeometryArrayArchive *a2)
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

TSWPSOS::SpecListStyleListLabelTypeArrayArchive *TSWPSOS::SpecListStyleListLabelTypeArrayArchive::SpecListStyleListLabelTypeArrayArchive(TSWPSOS::SpecListStyleListLabelTypeArrayArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886059D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleListLabelTypeArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2886059D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleListLabelTypeArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecListStyleListLabelTypeArrayArchive *TSWPSOS::SpecListStyleListLabelTypeArrayArchive::SpecListStyleListLabelTypeArrayArchive(TSWPSOS::SpecListStyleListLabelTypeArrayArchive *this, const TSWPSOS::SpecListStyleListLabelTypeArrayArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886059D0;
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

void TSWPSOS::SpecListStyleListLabelTypeArrayArchive::~SpecListStyleListLabelTypeArrayArchive(TSWPSOS::SpecListStyleListLabelTypeArrayArchive *this)
{
  if (this != &TSWPSOS::_SpecListStyleListLabelTypeArrayArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::~SpecSetListStyleListLabelTypeArrayArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecListStyleListLabelTypeArrayArchive::~SpecListStyleListLabelTypeArrayArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecListStyleListLabelTypeArrayArchive::default_instance(TSWPSOS::SpecListStyleListLabelTypeArrayArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecListStyleListLabelTypeArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecListStyleListLabelTypeArrayArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecListStyleListLabelTypeArrayArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    v2 = this[3];
    v3 = *(v2 + 8);
    this = (v2 + 8);
    *(this + 4) = 0;
    *(this + 16) = 0;
    *(this + 2) = 0;
    if (v3)
    {
      this = sub_276EA4D28(this);
    }
  }

  v5 = *(v1 + 8);
  v4 = v1 + 1;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_276EA4D28(v4);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::SpecListStyleListLabelTypeArrayArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F55B08(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecListStyleListLabelTypeArrayArchive::_InternalSerialize(TSWPSOS::SpecListStyleListLabelTypeArrayArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecListStyleListLabelTypeArrayArchive::ByteSizeLong(TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::ByteSizeLong(this[3]);
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

uint64_t TSWPSOS::SpecListStyleListLabelTypeArrayArchive::MergeFrom(TSWPSOS::SpecListStyleListLabelTypeArrayArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecListStyleListLabelTypeArrayArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecListStyleListLabelTypeArrayArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecListStyleListLabelTypeArrayArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetListStyleListLabelTypeArrayArchive_default_instance_;
    }

    return TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleListLabelTypeArrayArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecListStyleListLabelTypeArrayArchive::Clear(this);

    return TSWPSOS::SpecListStyleListLabelTypeArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleListLabelTypeArrayArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecListStyleListLabelTypeArrayArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecListStyleListLabelTypeArrayArchive::Clear(this);

    return TSWPSOS::SpecListStyleListLabelTypeArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleListLabelTypeArrayArchive::InternalSwap(TSWPSOS::SpecListStyleListLabelTypeArrayArchive *this, TSWPSOS::SpecListStyleListLabelTypeArrayArchive *a2)
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

TSWPSOS::SpecListStyleListNumberTypeArrayArchive *TSWPSOS::SpecListStyleListNumberTypeArrayArchive::SpecListStyleListNumberTypeArrayArchive(TSWPSOS::SpecListStyleListNumberTypeArrayArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605A80;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleListNumberTypeArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288605A80;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleListNumberTypeArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecListStyleListNumberTypeArrayArchive *TSWPSOS::SpecListStyleListNumberTypeArrayArchive::SpecListStyleListNumberTypeArrayArchive(TSWPSOS::SpecListStyleListNumberTypeArrayArchive *this, const TSWPSOS::SpecListStyleListNumberTypeArrayArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605A80;
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

void TSWPSOS::SpecListStyleListNumberTypeArrayArchive::~SpecListStyleListNumberTypeArrayArchive(TSWPSOS::SpecListStyleListNumberTypeArrayArchive *this)
{
  if (this != &TSWPSOS::_SpecListStyleListNumberTypeArrayArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::~SpecSetListStyleListNumberTypeArrayArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecListStyleListNumberTypeArrayArchive::~SpecListStyleListNumberTypeArrayArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecListStyleListNumberTypeArrayArchive::default_instance(TSWPSOS::SpecListStyleListNumberTypeArrayArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecListStyleListNumberTypeArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecListStyleListNumberTypeArrayArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecListStyleListNumberTypeArrayArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    v2 = this[3];
    v3 = *(v2 + 8);
    this = (v2 + 8);
    *(this + 4) = 0;
    *(this + 16) = 0;
    *(this + 2) = 0;
    if (v3)
    {
      this = sub_276EA4D28(this);
    }
  }

  v5 = *(v1 + 8);
  v4 = v1 + 1;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_276EA4D28(v4);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::SpecListStyleListNumberTypeArrayArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F55BD8(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecListStyleListNumberTypeArrayArchive::_InternalSerialize(TSWPSOS::SpecListStyleListNumberTypeArrayArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecListStyleListNumberTypeArrayArchive::ByteSizeLong(TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::ByteSizeLong(this[3]);
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

uint64_t TSWPSOS::SpecListStyleListNumberTypeArrayArchive::MergeFrom(TSWPSOS::SpecListStyleListNumberTypeArrayArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecListStyleListNumberTypeArrayArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecListStyleListNumberTypeArrayArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecListStyleListNumberTypeArrayArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetListStyleListNumberTypeArrayArchive_default_instance_;
    }

    return TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleListNumberTypeArrayArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecListStyleListNumberTypeArrayArchive::Clear(this);

    return TSWPSOS::SpecListStyleListNumberTypeArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleListNumberTypeArrayArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecListStyleListNumberTypeArrayArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecListStyleListNumberTypeArrayArchive::Clear(this);

    return TSWPSOS::SpecListStyleListNumberTypeArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleListNumberTypeArrayArchive::InternalSwap(TSWPSOS::SpecListStyleListNumberTypeArrayArchive *this, TSWPSOS::SpecListStyleListNumberTypeArrayArchive *a2)
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

TSWPSOS::SpecListStyleStringArrayArchive *TSWPSOS::SpecListStyleStringArrayArchive::SpecListStyleStringArrayArchive(TSWPSOS::SpecListStyleStringArrayArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605B30;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleStringArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288605B30;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecListStyleStringArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecListStyleStringArrayArchive *TSWPSOS::SpecListStyleStringArrayArchive::SpecListStyleStringArrayArchive(TSWPSOS::SpecListStyleStringArrayArchive *this, const TSWPSOS::SpecListStyleStringArrayArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605B30;
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

void TSWPSOS::SpecListStyleStringArrayArchive::~SpecListStyleStringArrayArchive(TSWPSOS::SpecListStyleStringArrayArchive *this)
{
  if (this != &TSWPSOS::_SpecListStyleStringArrayArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetListStyleStringArrayArchive::~SpecSetListStyleStringArrayArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecListStyleStringArrayArchive::~SpecListStyleStringArrayArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecListStyleStringArrayArchive::default_instance(TSWPSOS::SpecListStyleStringArrayArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecListStyleStringArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecListStyleStringArrayArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecListStyleStringArrayArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWPSOS::SpecSetListStyleStringArrayArchive::Clear(this[3]);
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

google::protobuf::internal *TSWPSOS::SpecListStyleStringArrayArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetListStyleStringArrayArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F55CA8(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecListStyleStringArrayArchive::_InternalSerialize(TSWPSOS::SpecListStyleStringArrayArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetListStyleStringArrayArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecListStyleStringArrayArchive::ByteSizeLong(TSWPSOS::SpecSetListStyleStringArrayArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetListStyleStringArrayArchive::ByteSizeLong(this[3]);
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

uint64_t TSWPSOS::SpecListStyleStringArrayArchive::MergeFrom(TSWPSOS::SpecListStyleStringArrayArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecListStyleStringArrayArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecListStyleStringArrayArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecListStyleStringArrayArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetListStyleStringArrayArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetListStyleStringArrayArchive_default_instance_;
    }

    return TSWPSOS::SpecSetListStyleStringArrayArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleStringArrayArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecListStyleStringArrayArchive::Clear(this);

    return TSWPSOS::SpecListStyleStringArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleStringArrayArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecListStyleStringArrayArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecListStyleStringArrayArchive::Clear(this);

    return TSWPSOS::SpecListStyleStringArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecListStyleStringArrayArchive::InternalSwap(TSWPSOS::SpecListStyleStringArrayArchive *this, TSWPSOS::SpecListStyleStringArrayArchive *a2)
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

TSWPSOS::SpecPaddingArchive *TSWPSOS::SpecPaddingArchive::SpecPaddingArchive(TSWPSOS::SpecPaddingArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605BE0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecPaddingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288605BE0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecPaddingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecPaddingArchive *TSWPSOS::SpecPaddingArchive::SpecPaddingArchive(TSWPSOS::SpecPaddingArchive *this, const TSWPSOS::SpecPaddingArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605BE0;
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

void TSWPSOS::SpecPaddingArchive::~SpecPaddingArchive(TSWPSOS::SpecPaddingArchive *this)
{
  if (this != &TSWPSOS::_SpecPaddingArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetPaddingArchive::~SpecSetPaddingArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecPaddingArchive::~SpecPaddingArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecPaddingArchive::default_instance(TSWPSOS::SpecPaddingArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecPaddingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecPaddingArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecPaddingArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWPSOS::SpecSetPaddingArchive::Clear(this[3]);
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

google::protobuf::internal *TSWPSOS::SpecPaddingArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetPaddingArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F55D78(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecPaddingArchive::_InternalSerialize(TSWPSOS::SpecPaddingArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetPaddingArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecPaddingArchive::ByteSizeLong(TSWPSOS::SpecSetPaddingArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetPaddingArchive::ByteSizeLong(this[3]);
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

uint64_t TSWPSOS::SpecPaddingArchive::MergeFrom(TSWPSOS::SpecPaddingArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecPaddingArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecPaddingArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecPaddingArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetPaddingArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetPaddingArchive_default_instance_;
    }

    return TSWPSOS::SpecSetPaddingArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWPSOS::SpecPaddingArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecPaddingArchive::Clear(this);

    return TSWPSOS::SpecPaddingArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecPaddingArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecPaddingArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecPaddingArchive::Clear(this);

    return TSWPSOS::SpecPaddingArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecPaddingArchive::InternalSwap(TSWPSOS::SpecPaddingArchive *this, TSWPSOS::SpecPaddingArchive *a2)
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

TSWPSOS::SpecParagraphStyleArchive *TSWPSOS::SpecParagraphStyleArchive::SpecParagraphStyleArchive(TSWPSOS::SpecParagraphStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605C90;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecParagraphStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288605C90;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecParagraphStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecParagraphStyleArchive *TSWPSOS::SpecParagraphStyleArchive::SpecParagraphStyleArchive(TSWPSOS::SpecParagraphStyleArchive *this, const TSWPSOS::SpecParagraphStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605C90;
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

void TSWPSOS::SpecParagraphStyleArchive::~SpecParagraphStyleArchive(TSWPSOS::SpecParagraphStyleArchive *this)
{
  if (this != &TSWPSOS::_SpecParagraphStyleArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetParagraphStyleArchive::~SpecSetParagraphStyleArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecParagraphStyleArchive::~SpecParagraphStyleArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecParagraphStyleArchive::default_instance(TSWPSOS::SpecParagraphStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecParagraphStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecParagraphStyleArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecParagraphStyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWPSOS::SpecSetParagraphStyleArchive::Clear(this[3]);
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

google::protobuf::internal *TSWPSOS::SpecParagraphStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetParagraphStyleArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F55E48(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecParagraphStyleArchive::_InternalSerialize(TSWPSOS::SpecParagraphStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetParagraphStyleArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecParagraphStyleArchive::ByteSizeLong(TSWPSOS::SpecSetParagraphStyleArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetParagraphStyleArchive::ByteSizeLong(this[3]);
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

uint64_t TSWPSOS::SpecParagraphStyleArchive::MergeFrom(TSWPSOS::SpecParagraphStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecParagraphStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecParagraphStyleArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecParagraphStyleArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetParagraphStyleArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetParagraphStyleArchive_default_instance_;
    }

    return TSWPSOS::SpecSetParagraphStyleArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWPSOS::SpecParagraphStyleArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecParagraphStyleArchive::Clear(this);

    return TSWPSOS::SpecParagraphStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecParagraphStyleArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecParagraphStyleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecParagraphStyleArchive::Clear(this);

    return TSWPSOS::SpecParagraphStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWPSOS::SpecParagraphStyleArchive::IsInitialized(TSWPSOS::SpecParagraphStyleArchive *this)
{
  result = 1;
  if (*(this + 16))
  {
    v2 = *(this + 3);
    v3 = *(v2 + 16);
    if ((v3 & 2) == 0 || (v3 & 1) != 0 && (TSP::Reference::IsInitialized(*(v2 + 24)) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *TSWPSOS::SpecParagraphStyleArchive::InternalSwap(TSWPSOS::SpecParagraphStyleArchive *this, TSWPSOS::SpecParagraphStyleArchive *a2)
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

TSWPSOS::SpecRuleOffsetArchive *TSWPSOS::SpecRuleOffsetArchive::SpecRuleOffsetArchive(TSWPSOS::SpecRuleOffsetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605D40;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecRuleOffsetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288605D40;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecRuleOffsetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecRuleOffsetArchive *TSWPSOS::SpecRuleOffsetArchive::SpecRuleOffsetArchive(TSWPSOS::SpecRuleOffsetArchive *this, const TSWPSOS::SpecRuleOffsetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605D40;
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

void TSWPSOS::SpecRuleOffsetArchive::~SpecRuleOffsetArchive(TSWPSOS::SpecRuleOffsetArchive *this)
{
  if (this != &TSWPSOS::_SpecRuleOffsetArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetRuleOffsetArchive::~SpecSetRuleOffsetArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecRuleOffsetArchive::~SpecRuleOffsetArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecRuleOffsetArchive::default_instance(TSWPSOS::SpecRuleOffsetArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecRuleOffsetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecRuleOffsetArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecRuleOffsetArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWPSOS::SpecSetRuleOffsetArchive::Clear(this[3]);
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

google::protobuf::internal *TSWPSOS::SpecRuleOffsetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetRuleOffsetArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F55F18(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecRuleOffsetArchive::_InternalSerialize(TSWPSOS::SpecRuleOffsetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetRuleOffsetArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecRuleOffsetArchive::ByteSizeLong(TSWPSOS::SpecSetRuleOffsetArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetRuleOffsetArchive::ByteSizeLong(this[3]);
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

uint64_t TSWPSOS::SpecRuleOffsetArchive::MergeFrom(TSWPSOS::SpecRuleOffsetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecRuleOffsetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecRuleOffsetArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecRuleOffsetArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetRuleOffsetArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetRuleOffsetArchive_default_instance_;
    }

    return TSWPSOS::SpecSetRuleOffsetArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWPSOS::SpecRuleOffsetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecRuleOffsetArchive::Clear(this);

    return TSWPSOS::SpecRuleOffsetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecRuleOffsetArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecRuleOffsetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecRuleOffsetArchive::Clear(this);

    return TSWPSOS::SpecRuleOffsetArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWPSOS::SpecRuleOffsetArchive::IsInitialized(TSWPSOS::SpecRuleOffsetArchive *this)
{
  result = 1;
  if (*(this + 16))
  {
    v2 = *(this + 3);
    v3 = *(v2 + 16);
    if ((v3 & 2) == 0 || (v3 & 1) != 0 && (TSP::Point::IsInitialized(*(v2 + 24)) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *TSWPSOS::SpecRuleOffsetArchive::InternalSwap(TSWPSOS::SpecRuleOffsetArchive *this, TSWPSOS::SpecRuleOffsetArchive *a2)
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

TSWPSOS::SpecTabsArchive *TSWPSOS::SpecTabsArchive::SpecTabsArchive(TSWPSOS::SpecTabsArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605DF0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecTabsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288605DF0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecTabsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecTabsArchive *TSWPSOS::SpecTabsArchive::SpecTabsArchive(TSWPSOS::SpecTabsArchive *this, const TSWPSOS::SpecTabsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605DF0;
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

void TSWPSOS::SpecTabsArchive::~SpecTabsArchive(TSWPSOS::SpecTabsArchive *this)
{
  if (this != &TSWPSOS::_SpecTabsArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWPSOS::SpecSetTabsArchive::~SpecSetTabsArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecTabsArchive::~SpecTabsArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecTabsArchive::default_instance(TSWPSOS::SpecTabsArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecTabsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecTabsArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecTabsArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWPSOS::SpecSetTabsArchive::Clear(this[3]);
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

google::protobuf::internal *TSWPSOS::SpecTabsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetTabsArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F55FE8(a3, v10, v5);
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

unsigned __int8 *TSWPSOS::SpecTabsArchive::_InternalSerialize(TSWPSOS::SpecTabsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWPSOS::SpecSetTabsArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecTabsArchive::ByteSizeLong(TSWPSOS::SpecSetTabsArchive **this)
{
  if (this[2])
  {
    v3 = TSWPSOS::SpecSetTabsArchive::ByteSizeLong(this[3]);
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

uint64_t TSWPSOS::SpecTabsArchive::MergeFrom(TSWPSOS::SpecTabsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecTabsArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecTabsArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecTabsArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecSetTabsArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWPSOS::_SpecSetTabsArchive_default_instance_;
    }

    return TSWPSOS::SpecSetTabsArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWPSOS::SpecTabsArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecTabsArchive::Clear(this);

    return TSWPSOS::SpecTabsArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecTabsArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecTabsArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecTabsArchive::Clear(this);

    return TSWPSOS::SpecTabsArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecTabsArchive::InternalSwap(TSWPSOS::SpecTabsArchive *this, TSWPSOS::SpecTabsArchive *a2)
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

TSSSOS::SpecDoubleArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_baseline_shift(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_capitalization(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSSSOS::SpecStringArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_compatibility_font_name(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSSSOS::SpecStringArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSSSOS::SpecStringArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_emphasis_marks(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSSSOS::SpecStringArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_bold(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_italic(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSSSOS::SpecStringArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_font_name(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSSSOS::SpecStringArchive::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_font_size(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_font_size_delta(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_kerning(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

TSSSOS::SpecStringArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_language(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSSSOS::SpecStringArchive::Clear(result);
  }

  *(this + 4) &= ~0x800u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_ligatures(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x1000u;
  return result;
}

TSDSOS::SpecShadowArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_text_shadow(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSDSOS::SpecShadowArchive::Clear(result);
  }

  *(this + 4) &= ~0x2000u;
  return result;
}

TSSSOS::SpecColorArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_strikethru_color(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSSSOS::SpecColorArchive::Clear(result);
  }

  *(this + 4) &= ~0x4000u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_strikethru(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x8000u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_strikethru_width(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 20);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x10000u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_superscript(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 21);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x20000u;
  return result;
}

TSSSOS::SpecColorArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_text_background(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 22);
  if (result)
  {
    result = TSSSOS::SpecColorArchive::Clear(result);
  }

  *(this + 4) &= ~0x40000u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_tracking(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 23);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x80000u;
  return result;
}

TSSSOS::SpecColorArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_underline_color(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 24);
  if (result)
  {
    result = TSSSOS::SpecColorArchive::Clear(result);
  }

  *(this + 4) &= ~0x100000u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_underline(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 25);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x200000u;
  return result;
}

TSSSOS::SpecDoubleArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_underline_width(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 26);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~0x400000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_word_strikethru(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 27);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x800000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_word_underline(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 28);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x1000000u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_writing_direction(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 29);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x2000000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_is_named_point_size(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 30);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x4000000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_capitalization_uses_linguistics(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 31);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x8000000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_character_stroke(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 32);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x10000000u;
  return result;
}

TSDSOS::SpecFillArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_character_fill(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 33);
  if (result)
  {
    result = TSDSOS::SpecFillArchive::Clear(result);
  }

  *(this + 4) &= ~0x20000000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::clear_character_fill_should_fill_text_container(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  result = *(this + 34);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x40000000u;
  return result;
}

TSWPSOS::CharacterStylePropertyChangeSetArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::CharacterStylePropertyChangeSetArchive(TSWPSOS::CharacterStylePropertyChangeSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605EA0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 6) = 0;
  if (atomic_load_explicit(scc_info_CharacterStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  *(this + 303) = 0;
  return this;
}

{
  *this = &unk_288605EA0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 6) = 0;
  if (atomic_load_explicit(scc_info_CharacterStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  *(this + 303) = 0;
  return this;
}

TSWPSOS::CharacterStylePropertyChangeSetArchive *TSWPSOS::CharacterStylePropertyChangeSetArchive::CharacterStylePropertyChangeSetArchive(TSWPSOS::CharacterStylePropertyChangeSetArchive *this, const TSWPSOS::CharacterStylePropertyChangeSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605EA0;
  *(this + 2) = *(a2 + 2);
  *(this + 6) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 4);
  if (v6)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v6 & 2) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v6 & 4) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v6 & 8) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v6 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v6 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v6 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v6 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v6 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v6 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v6 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v6 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v6 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v6 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v6 & 0x4000) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v6 & 0x8000) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v6 & 0x10000) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  if ((v6 & 0x20000) != 0)
  {
    operator new();
  }

  *(this + 21) = 0;
  if ((v6 & 0x40000) != 0)
  {
    operator new();
  }

  *(this + 22) = 0;
  if ((v6 & 0x80000) != 0)
  {
    operator new();
  }

  *(this + 23) = 0;
  if ((v6 & 0x100000) != 0)
  {
    operator new();
  }

  *(this + 24) = 0;
  if ((v6 & 0x200000) != 0)
  {
    operator new();
  }

  *(this + 25) = 0;
  if ((v6 & 0x400000) != 0)
  {
    operator new();
  }

  *(this + 26) = 0;
  if ((v6 & 0x800000) != 0)
  {
    operator new();
  }

  *(this + 27) = 0;
  if ((v6 & 0x1000000) != 0)
  {
    operator new();
  }

  *(this + 28) = 0;
  if ((v6 & 0x2000000) != 0)
  {
    operator new();
  }

  *(this + 29) = 0;
  if ((v6 & 0x4000000) != 0)
  {
    operator new();
  }

  *(this + 30) = 0;
  if ((v6 & 0x8000000) != 0)
  {
    operator new();
  }

  *(this + 31) = 0;
  if ((v6 & 0x10000000) != 0)
  {
    operator new();
  }

  *(this + 32) = 0;
  if ((v6 & 0x20000000) != 0)
  {
    operator new();
  }

  *(this + 33) = 0;
  if ((v6 & 0x40000000) != 0)
  {
    operator new();
  }

  *(this + 34) = 0;
  v7 = *(a2 + 280);
  *(this + 295) = *(a2 + 295);
  *(this + 280) = v7;
  return this;
}

void TSWPSOS::CharacterStylePropertyChangeSetArchive::~CharacterStylePropertyChangeSetArchive(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  sub_276EC416C(this);
  sub_276E4E808(this + 1);
}

{
  TSWPSOS::CharacterStylePropertyChangeSetArchive::~CharacterStylePropertyChangeSetArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *sub_276EC416C(uint64_t *result)
{
  if (result != &TSWPSOS::_CharacterStylePropertyChangeSetArchive_default_instance_)
  {
    v1 = result;
    if (result[4])
    {
      v2 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v2, 0x10A1C40D4912B22);
    }

    if (v1[5])
    {
      v3 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v3, 0x10A1C40D4912B22);
    }

    if (v1[6])
    {
      v4 = MEMORY[0x277CA3060]();
      MEMORY[0x277CA3D00](v4, 0x10A1C40D4912B22);
    }

    if (v1[7])
    {
      v5 = MEMORY[0x277CA3060]();
      MEMORY[0x277CA3D00](v5, 0x10A1C40D4912B22);
    }

    if (v1[8])
    {
      v6 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v6, 0x10A1C40D4912B22);
    }

    if (v1[9])
    {
      v7 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v7, 0x10A1C40D4912B22);
    }

    v8 = v1[10];
    if (v8)
    {
      TSWPSOS::SpecFontFeaturesArchive::~SpecFontFeaturesArchive(v8);
      MEMORY[0x277CA3D00]();
    }

    if (v1[11])
    {
      v9 = MEMORY[0x277CA3060]();
      MEMORY[0x277CA3D00](v9, 0x10A1C40D4912B22);
    }

    if (v1[12])
    {
      v10 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v10, 0x10A1C40D4912B22);
    }

    if (v1[13])
    {
      v11 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v11, 0x10A1C40D4912B22);
    }

    if (v1[14])
    {
      v12 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v12, 0x10A1C40D4912B22);
    }

    if (v1[15])
    {
      v13 = MEMORY[0x277CA3060]();
      MEMORY[0x277CA3D00](v13, 0x10A1C40D4912B22);
    }

    if (v1[16])
    {
      v14 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v14, 0x10A1C40D4912B22);
    }

    if (v1[17])
    {
      v15 = MEMORY[0x277CA2E80]();
      MEMORY[0x277CA3D00](v15, 0x10A1C4034CD354FLL);
    }

    if (v1[18])
    {
      v16 = MEMORY[0x277CA2FC0]();
      MEMORY[0x277CA3D00](v16, 0x10A1C40D4912B22);
    }

    if (v1[19])
    {
      v17 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v17, 0x10A1C40D4912B22);
    }

    if (v1[20])
    {
      v18 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v18, 0x10A1C40D4912B22);
    }

    if (v1[21])
    {
      v19 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v19, 0x10A1C40D4912B22);
    }

    if (v1[22])
    {
      v20 = MEMORY[0x277CA2FC0]();
      MEMORY[0x277CA3D00](v20, 0x10A1C40D4912B22);
    }

    if (v1[23])
    {
      v21 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v21, 0x10A1C40D4912B22);
    }

    if (v1[24])
    {
      v22 = MEMORY[0x277CA2FC0]();
      MEMORY[0x277CA3D00](v22, 0x10A1C40D4912B22);
    }

    if (v1[25])
    {
      v23 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v23, 0x10A1C40D4912B22);
    }

    if (v1[26])
    {
      v24 = MEMORY[0x277CA3010]();
      MEMORY[0x277CA3D00](v24, 0x10A1C40D4912B22);
    }

    if (v1[27])
    {
      v25 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v25, 0x10A1C40D4912B22);
    }

    if (v1[28])
    {
      v26 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v26, 0x10A1C40D4912B22);
    }

    if (v1[29])
    {
      v27 = MEMORY[0x277CA30B0]();
      MEMORY[0x277CA3D00](v27, 0x10A1C40D4912B22);
    }

    if (v1[30])
    {
      v28 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v28, 0x10A1C40D4912B22);
    }

    if (v1[31])
    {
      v29 = MEMORY[0x277CA2F70]();
      MEMORY[0x277CA3D00](v29, 0x10A1C40D4912B22);
    }

    if (v1[32])
    {
      v30 = MEMORY[0x277CA2ED0]();
      MEMORY[0x277CA3D00](v30, 0x10A1C4030AC051BLL);
    }

    if (v1[33])
    {
      v31 = MEMORY[0x277CA2E30]();
      MEMORY[0x277CA3D00](v31, 0x10A1C404E50D5EBLL);
    }

    result = v1[34];
    if (result)
    {
      MEMORY[0x277CA2F70]();

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

uint64_t *TSWPSOS::CharacterStylePropertyChangeSetArchive::default_instance(TSWPSOS::CharacterStylePropertyChangeSetArchive *this)
{
  if (atomic_load_explicit(scc_info_CharacterStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_CharacterStylePropertyChangeSetArchive_default_instance_;
}

uint64_t *TSWPSOS::CharacterStylePropertyChangeSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    this = TSSSOS::SpecDoubleArchive::Clear(this[4]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_54;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 40));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = TSSSOS::SpecStringArchive::Clear(*(v1 + 48));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = TSSSOS::SpecStringArchive::Clear(*(v1 + 56));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_57:
    this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 72));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_56:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 64));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_57;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_58:
  this = TSWPSOS::SpecFontFeaturesArchive::Clear(*(v1 + 80));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSSSOS::SpecStringArchive::Clear(*(v1 + 88));
  }

LABEL_11:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 & 0x100) != 0)
  {
    this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 96));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_62;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 104));
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 112));
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = TSSSOS::SpecStringArchive::Clear(*(v1 + 120));
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 128));
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = TSDSOS::SpecShadowArchive::Clear(*(v1 + 136));
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_66:
  this = TSSSOS::SpecColorArchive::Clear(*(v1 + 144));
  if ((v2 & 0x8000) != 0)
  {
LABEL_20:
    this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 152));
  }

LABEL_21:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v2 & 0x10000) != 0)
  {
    this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 160));
    if ((v2 & 0x20000) == 0)
    {
LABEL_24:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_70;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 168));
  if ((v2 & 0x40000) == 0)
  {
LABEL_25:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = TSSSOS::SpecColorArchive::Clear(*(v1 + 176));
  if ((v2 & 0x80000) == 0)
  {
LABEL_26:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 184));
  if ((v2 & 0x100000) == 0)
  {
LABEL_27:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = TSSSOS::SpecColorArchive::Clear(*(v1 + 192));
  if ((v2 & 0x200000) == 0)
  {
LABEL_28:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 200));
  if ((v2 & 0x400000) == 0)
  {
LABEL_29:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_74:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 208));
  if ((v2 & 0x800000) != 0)
  {
LABEL_30:
    this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 216));
  }

LABEL_31:
  if ((v2 & 0x7F000000) == 0)
  {
    goto LABEL_40;
  }

  if ((v2 & 0x1000000) != 0)
  {
    this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 224));
    if ((v2 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_78;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 232));
  if ((v2 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 240));
  if ((v2 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 248));
  if ((v2 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 256));
  if ((v2 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_81:
  this = TSDSOS::SpecFillArchive::Clear(*(v1 + 264));
  if ((v2 & 0x40000000) != 0)
  {
LABEL_39:
    this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 272));
  }

LABEL_40:
  *(v1 + 280) = 0;
  v3 = *(v1 + 20);
  if (v3)
  {
    *(v1 + 281) = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(v1 + 289) = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(v1 + 297) = 0;
  }

  if ((v3 & 0x3F000000) != 0)
  {
    *(v1 + 309) = 0;
    *(v1 + 305) = 0;
  }

  v5 = *(v1 + 8);
  v4 = (v1 + 8);
  v4[1] = 0;
  if (v5)
  {

    return sub_276EA4D28(v4);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::CharacterStylePropertyChangeSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v236 = a2;
  if ((sub_276EA4A1C(a3, &v236) & 1) == 0)
  {
    while (1)
    {
      v6 = (v236 + 1);
      LODWORD(v7) = *v236;
      if (*v236 < 0)
      {
        v7 = (v7 + (*v6 << 7) - 128);
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v236, v7);
          v236 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          goto LABEL_7;
        }

        v6 = (v236 + 2);
      }

      v236 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 1u;
          v8 = *(a1 + 32);
          if (v8)
          {
            goto LABEL_300;
          }

          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = MEMORY[0x277CA3320](v9);
          LODWORD(v8) = v10;
          *(a1 + 32) = v10;
          goto LABEL_299;
        case 2u:
          if (v7 != 16)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x80000000;
          v92 = (v6 + 1);
          v91 = *v6;
          if ((v91 & 0x8000000000000000) == 0)
          {
            goto LABEL_167;
          }

          v93 = *v92;
          v91 = (v93 << 7) + v91 - 128;
          if (v93 < 0)
          {
            v202 = google::protobuf::internal::VarintParseSlow64(v6, v91);
            v236 = v202;
            *(a1 + 280) = v203 != 0;
            if (!v202)
            {
              return 0;
            }
          }

          else
          {
            v92 = (v6 + 2);
LABEL_167:
            v236 = v92;
            *(a1 + 280) = v91 != 0;
          }

          goto LABEL_330;
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 2u;
          v12 = *(a1 + 40);
          if (v12)
          {
            goto LABEL_271;
          }

          v80 = *(a1 + 8);
          if (v80)
          {
            v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
          }

          v81 = MEMORY[0x277CA3340](v80);
          LODWORD(v12) = v81;
          *(a1 + 40) = v81;
          goto LABEL_270;
        case 4u:
          if (v7 != 32)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 1u;
          v86 = (v6 + 1);
          v85 = *v6;
          if ((v85 & 0x8000000000000000) == 0)
          {
            goto LABEL_157;
          }

          v87 = *v86;
          v85 = (v87 << 7) + v85 - 128;
          if (v87 < 0)
          {
            v198 = google::protobuf::internal::VarintParseSlow64(v6, v85);
            v236 = v198;
            *(a1 + 281) = v199 != 0;
            if (!v198)
            {
              return 0;
            }
          }

          else
          {
            v86 = (v6 + 2);
LABEL_157:
            v236 = v86;
            *(a1 + 281) = v85 != 0;
          }

          goto LABEL_330;
        case 5u:
          if (v7 != 42)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 4u;
          v46 = *(a1 + 48);
          if (v46)
          {
            goto LABEL_249;
          }

          v64 = *(a1 + 8);
          if (v64)
          {
            v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
          }

          v65 = MEMORY[0x277CA3330](v64);
          LODWORD(v46) = v65;
          *(a1 + 48) = v65;
          goto LABEL_248;
        case 6u:
          if (v7 != 48)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 2u;
          v109 = (v6 + 1);
          v108 = *v6;
          if ((v108 & 0x8000000000000000) == 0)
          {
            goto LABEL_197;
          }

          v110 = *v109;
          v108 = (v110 << 7) + v108 - 128;
          if (v110 < 0)
          {
            v212 = google::protobuf::internal::VarintParseSlow64(v6, v108);
            v236 = v212;
            *(a1 + 282) = v213 != 0;
            if (!v212)
            {
              return 0;
            }
          }

          else
          {
            v109 = (v6 + 2);
LABEL_197:
            v236 = v109;
            *(a1 + 282) = v108 != 0;
          }

          goto LABEL_330;
        case 7u:
          if (v7 != 58)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 8u;
          v46 = *(a1 + 56);
          if (v46)
          {
            goto LABEL_249;
          }

          v117 = *(a1 + 8);
          if (v117)
          {
            v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
          }

          v118 = MEMORY[0x277CA3330](v117);
          LODWORD(v46) = v118;
          *(a1 + 56) = v118;
          goto LABEL_248;
        case 8u:
          if (v7 != 64)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 4u;
          v89 = (v6 + 1);
          v88 = *v6;
          if ((v88 & 0x8000000000000000) == 0)
          {
            goto LABEL_162;
          }

          v90 = *v89;
          v88 = (v90 << 7) + v88 - 128;
          if (v90 < 0)
          {
            v200 = google::protobuf::internal::VarintParseSlow64(v6, v88);
            v236 = v200;
            *(a1 + 283) = v201 != 0;
            if (!v200)
            {
              return 0;
            }
          }

          else
          {
            v89 = (v6 + 2);
LABEL_162:
            v236 = v89;
            *(a1 + 283) = v88 != 0;
          }

          goto LABEL_330;
        case 9u:
          if (v7 != 74)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x10u;
          v52 = *(a1 + 64);
          if (v52)
          {
            goto LABEL_328;
          }

          v123 = *(a1 + 8);
          if (v123)
          {
            v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
          }

          v124 = MEMORY[0x277CA3300](v123);
          LODWORD(v52) = v124;
          *(a1 + 64) = v124;
          goto LABEL_327;
        case 0xAu:
          if (v7 != 80)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 8u;
          v73 = (v6 + 1);
          v72 = *v6;
          if ((v72 & 0x8000000000000000) == 0)
          {
            goto LABEL_132;
          }

          v74 = *v73;
          v72 = (v74 << 7) + v72 - 128;
          if (v74 < 0)
          {
            v192 = google::protobuf::internal::VarintParseSlow64(v6, v72);
            v236 = v192;
            *(a1 + 284) = v193 != 0;
            if (!v192)
            {
              return 0;
            }
          }

          else
          {
            v73 = (v6 + 2);
LABEL_132:
            v236 = v73;
            *(a1 + 284) = v72 != 0;
          }

          goto LABEL_330;
        case 0xBu:
          if (v7 != 90)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x20u;
          v52 = *(a1 + 72);
          if (v52)
          {
            goto LABEL_328;
          }

          v121 = *(a1 + 8);
          if (v121)
          {
            v121 = *(v121 & 0xFFFFFFFFFFFFFFFELL);
          }

          v122 = MEMORY[0x277CA3300](v121);
          LODWORD(v52) = v122;
          *(a1 + 72) = v122;
          goto LABEL_327;
        case 0xCu:
          if (v7 != 96)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x10u;
          v59 = (v6 + 1);
          v58 = *v6;
          if ((v58 & 0x8000000000000000) == 0)
          {
            goto LABEL_101;
          }

          v60 = *v59;
          v58 = (v60 << 7) + v58 - 128;
          if (v60 < 0)
          {
            v188 = google::protobuf::internal::VarintParseSlow64(v6, v58);
            v236 = v188;
            *(a1 + 285) = v189 != 0;
            if (!v188)
            {
              return 0;
            }
          }

          else
          {
            v59 = (v6 + 2);
LABEL_101:
            v236 = v59;
            *(a1 + 285) = v58 != 0;
          }

          goto LABEL_330;
        case 0xDu:
          if (v7 != 106)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x40u;
          v70 = *(a1 + 80);
          if (!v70)
          {
            v71 = *(a1 + 8);
            if (v71)
            {
              v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
            }

            v70 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::SpecFontFeaturesArchive>(v71);
            *(a1 + 80) = v70;
            v6 = v236;
          }

          v30 = sub_276F563F8(a3, v70, v6);
          goto LABEL_329;
        case 0xEu:
          if (v7 != 112)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x20u;
          v115 = (v6 + 1);
          v114 = *v6;
          if ((v114 & 0x8000000000000000) == 0)
          {
            goto LABEL_207;
          }

          v116 = *v115;
          v114 = (v116 << 7) + v114 - 128;
          if (v116 < 0)
          {
            v216 = google::protobuf::internal::VarintParseSlow64(v6, v114);
            v236 = v216;
            *(a1 + 286) = v217 != 0;
            if (!v216)
            {
              return 0;
            }
          }

          else
          {
            v115 = (v6 + 2);
LABEL_207:
            v236 = v115;
            *(a1 + 286) = v114 != 0;
          }

          goto LABEL_330;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x80u;
          v46 = *(a1 + 88);
          if (v46)
          {
            goto LABEL_249;
          }

          v47 = *(a1 + 8);
          if (v47)
          {
            v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
          }

          v48 = MEMORY[0x277CA3330](v47);
          LODWORD(v46) = v48;
          *(a1 + 88) = v48;
          goto LABEL_248;
        case 0x10u:
          if (v7 != 128)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x40u;
          v83 = (v6 + 1);
          v82 = *v6;
          if ((v82 & 0x8000000000000000) == 0)
          {
            goto LABEL_152;
          }

          v84 = *v83;
          v82 = (v84 << 7) + v82 - 128;
          if (v84 < 0)
          {
            v196 = google::protobuf::internal::VarintParseSlow64(v6, v82);
            v236 = v196;
            *(a1 + 287) = v197 != 0;
            if (!v196)
            {
              return 0;
            }
          }

          else
          {
            v83 = (v6 + 2);
LABEL_152:
            v236 = v83;
            *(a1 + 287) = v82 != 0;
          }

          goto LABEL_330;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x100u;
          v8 = *(a1 + 96);
          if (v8)
          {
            goto LABEL_300;
          }

          v42 = *(a1 + 8);
          if (v42)
          {
            v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
          }

          v43 = MEMORY[0x277CA3320](v42);
          LODWORD(v8) = v43;
          *(a1 + 96) = v43;
          goto LABEL_299;
        case 0x12u:
          if (v7 != 144)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x80u;
          v98 = (v6 + 1);
          v97 = *v6;
          if ((v97 & 0x8000000000000000) == 0)
          {
            goto LABEL_177;
          }

          v99 = *v98;
          v97 = (v99 << 7) + v97 - 128;
          if (v99 < 0)
          {
            v206 = google::protobuf::internal::VarintParseSlow64(v6, v97);
            v236 = v206;
            *(a1 + 288) = v207 != 0;
            if (!v206)
            {
              return 0;
            }
          }

          else
          {
            v98 = (v6 + 2);
LABEL_177:
            v236 = v98;
            *(a1 + 288) = v97 != 0;
          }

          goto LABEL_330;
        case 0x13u:
          if (v7 != 154)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x200u;
          v8 = *(a1 + 104);
          if (v8)
          {
            goto LABEL_300;
          }

          v119 = *(a1 + 8);
          if (v119)
          {
            v119 = *(v119 & 0xFFFFFFFFFFFFFFFELL);
          }

          v120 = MEMORY[0x277CA3320](v119);
          LODWORD(v8) = v120;
          *(a1 + 104) = v120;
          goto LABEL_299;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x100u;
          v138 = (v6 + 1);
          v137 = *v6;
          if ((v137 & 0x8000000000000000) == 0)
          {
            goto LABEL_259;
          }

          v139 = *v138;
          v137 = (v139 << 7) + v137 - 128;
          if (v139 < 0)
          {
            v222 = google::protobuf::internal::VarintParseSlow64(v6, v137);
            v236 = v222;
            *(a1 + 289) = v223 != 0;
            if (!v222)
            {
              return 0;
            }
          }

          else
          {
            v138 = (v6 + 2);
LABEL_259:
            v236 = v138;
            *(a1 + 289) = v137 != 0;
          }

          goto LABEL_330;
        case 0x15u:
          if (v7 != 170)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x400u;
          v8 = *(a1 + 112);
          if (v8)
          {
            goto LABEL_300;
          }

          v103 = *(a1 + 8);
          if (v103)
          {
            v103 = *(v103 & 0xFFFFFFFFFFFFFFFELL);
          }

          v104 = MEMORY[0x277CA3320](v103);
          LODWORD(v8) = v104;
          *(a1 + 112) = v104;
          goto LABEL_299;
        case 0x16u:
          if (v7 != 176)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x200u;
          v112 = (v6 + 1);
          v111 = *v6;
          if ((v111 & 0x8000000000000000) == 0)
          {
            goto LABEL_202;
          }

          v113 = *v112;
          v111 = (v113 << 7) + v111 - 128;
          if (v113 < 0)
          {
            v214 = google::protobuf::internal::VarintParseSlow64(v6, v111);
            v236 = v214;
            *(a1 + 290) = v215 != 0;
            if (!v214)
            {
              return 0;
            }
          }

          else
          {
            v112 = (v6 + 2);
LABEL_202:
            v236 = v112;
            *(a1 + 290) = v111 != 0;
          }

          goto LABEL_330;
        case 0x17u:
          if (v7 != 186)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x800u;
          v46 = *(a1 + 120);
          if (v46)
          {
            goto LABEL_249;
          }

          v132 = *(a1 + 8);
          if (v132)
          {
            v132 = *(v132 & 0xFFFFFFFFFFFFFFFELL);
          }

          v133 = MEMORY[0x277CA3330](v132);
          LODWORD(v46) = v133;
          *(a1 + 120) = v133;
LABEL_248:
          v6 = v236;
LABEL_249:
          v30 = sub_276F56258(a3, v46, v6);
          goto LABEL_329;
        case 0x18u:
          if (v7 != 192)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x400u;
          v149 = (v6 + 1);
          v148 = *v6;
          if ((v148 & 0x8000000000000000) == 0)
          {
            goto LABEL_281;
          }

          v150 = *v149;
          v148 = (v150 << 7) + v148 - 128;
          if (v150 < 0)
          {
            v228 = google::protobuf::internal::VarintParseSlow64(v6, v148);
            v236 = v228;
            *(a1 + 291) = v229 != 0;
            if (!v228)
            {
              return 0;
            }
          }

          else
          {
            v149 = (v6 + 2);
LABEL_281:
            v236 = v149;
            *(a1 + 291) = v148 != 0;
          }

          goto LABEL_330;
        case 0x19u:
          if (v7 != 202)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x1000u;
          v12 = *(a1 + 128);
          if (v12)
          {
            goto LABEL_271;
          }

          v78 = *(a1 + 8);
          if (v78)
          {
            v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
          }

          v79 = MEMORY[0x277CA3340](v78);
          LODWORD(v12) = v79;
          *(a1 + 128) = v79;
          goto LABEL_270;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x800u;
          v76 = (v6 + 1);
          v75 = *v6;
          if ((v75 & 0x8000000000000000) == 0)
          {
            goto LABEL_137;
          }

          v77 = *v76;
          v75 = (v77 << 7) + v75 - 128;
          if (v77 < 0)
          {
            v194 = google::protobuf::internal::VarintParseSlow64(v6, v75);
            v236 = v194;
            *(a1 + 292) = v195 != 0;
            if (!v194)
            {
              return 0;
            }
          }

          else
          {
            v76 = (v6 + 2);
LABEL_137:
            v236 = v76;
            *(a1 + 292) = v75 != 0;
          }

          goto LABEL_330;
        case 0x1Bu:
          if (v7 != 218)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x2000u;
          v158 = *(a1 + 136);
          if (!v158)
          {
            v159 = *(a1 + 8);
            if (v159)
            {
              v159 = *(v159 & 0xFFFFFFFFFFFFFFFELL);
            }

            v160 = MEMORY[0x277CA32D0](v159);
            LODWORD(v158) = v160;
            *(a1 + 136) = v160;
            v6 = v236;
          }

          v30 = sub_276F564C8(a3, v158, v6);
          goto LABEL_329;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x1000u;
          v38 = (v6 + 1);
          v37 = *v6;
          if ((v37 & 0x8000000000000000) == 0)
          {
            goto LABEL_60;
          }

          v39 = *v38;
          v37 = (v39 << 7) + v37 - 128;
          if (v39 < 0)
          {
            v184 = google::protobuf::internal::VarintParseSlow64(v6, v37);
            v236 = v184;
            *(a1 + 293) = v185 != 0;
            if (!v184)
            {
              return 0;
            }
          }

          else
          {
            v38 = (v6 + 2);
LABEL_60:
            v236 = v38;
            *(a1 + 293) = v37 != 0;
          }

          goto LABEL_330;
        case 0x1Du:
          if (v7 != 234)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x4000u;
          v34 = *(a1 + 144);
          if (v34)
          {
            goto LABEL_288;
          }

          v151 = *(a1 + 8);
          if (v151)
          {
            v151 = *(v151 & 0xFFFFFFFFFFFFFFFELL);
          }

          v152 = MEMORY[0x277CA3310](v151);
          LODWORD(v34) = v152;
          *(a1 + 144) = v152;
          goto LABEL_287;
        case 0x1Eu:
          if (v7 != 240)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x2000u;
          v154 = (v6 + 1);
          v153 = *v6;
          if ((v153 & 0x8000000000000000) == 0)
          {
            goto LABEL_293;
          }

          v155 = *v154;
          v153 = (v155 << 7) + v153 - 128;
          if (v155 < 0)
          {
            v230 = google::protobuf::internal::VarintParseSlow64(v6, v153);
            v236 = v230;
            *(a1 + 294) = v231 != 0;
            if (!v230)
            {
              return 0;
            }
          }

          else
          {
            v154 = (v6 + 2);
LABEL_293:
            v236 = v154;
            *(a1 + 294) = v153 != 0;
          }

          goto LABEL_330;
        case 0x1Fu:
          if (v7 != 250)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x8000u;
          v12 = *(a1 + 152);
          if (v12)
          {
            goto LABEL_271;
          }

          v125 = *(a1 + 8);
          if (v125)
          {
            v125 = *(v125 & 0xFFFFFFFFFFFFFFFELL);
          }

          v126 = MEMORY[0x277CA3340](v125);
          LODWORD(v12) = v126;
          *(a1 + 152) = v126;
          goto LABEL_270;
        case 0x20u:
          if (v7)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x4000u;
          v95 = (v6 + 1);
          v94 = *v6;
          if ((v94 & 0x8000000000000000) == 0)
          {
            goto LABEL_172;
          }

          v96 = *v95;
          v94 = (v96 << 7) + v94 - 128;
          if (v96 < 0)
          {
            v204 = google::protobuf::internal::VarintParseSlow64(v6, v94);
            v236 = v204;
            *(a1 + 295) = v205 != 0;
            if (!v204)
            {
              return 0;
            }
          }

          else
          {
            v95 = (v6 + 2);
LABEL_172:
            v236 = v95;
            *(a1 + 295) = v94 != 0;
          }

          goto LABEL_330;
        case 0x21u:
          if (v7 != 10)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x10000u;
          v8 = *(a1 + 160);
          if (v8)
          {
            goto LABEL_300;
          }

          v127 = *(a1 + 8);
          if (v127)
          {
            v127 = *(v127 & 0xFFFFFFFFFFFFFFFELL);
          }

          v128 = MEMORY[0x277CA3320](v127);
          LODWORD(v8) = v128;
          *(a1 + 160) = v128;
          goto LABEL_299;
        case 0x22u:
          if (v7 != 16)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x8000u;
          v50 = (v6 + 1);
          v49 = *v6;
          if ((v49 & 0x8000000000000000) == 0)
          {
            goto LABEL_85;
          }

          v51 = *v50;
          v49 = (v51 << 7) + v49 - 128;
          if (v51 < 0)
          {
            v186 = google::protobuf::internal::VarintParseSlow64(v6, v49);
            v236 = v186;
            *(a1 + 296) = v187 != 0;
            if (!v186)
            {
              return 0;
            }
          }

          else
          {
            v50 = (v6 + 2);
LABEL_85:
            v236 = v50;
            *(a1 + 296) = v49 != 0;
          }

          goto LABEL_330;
        case 0x23u:
          if (v7 != 26)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x20000u;
          v12 = *(a1 + 168);
          if (v12)
          {
            goto LABEL_271;
          }

          v40 = *(a1 + 8);
          if (v40)
          {
            v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
          }

          v41 = MEMORY[0x277CA3340](v40);
          LODWORD(v12) = v41;
          *(a1 + 168) = v41;
          goto LABEL_270;
        case 0x24u:
          if (v7 != 32)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x10000u;
          v32 = (v6 + 1);
          v31 = *v6;
          if ((v31 & 0x8000000000000000) == 0)
          {
            goto LABEL_50;
          }

          v33 = *v32;
          v31 = (v33 << 7) + v31 - 128;
          if (v33 < 0)
          {
            v182 = google::protobuf::internal::VarintParseSlow64(v6, v31);
            v236 = v182;
            *(a1 + 297) = v183 != 0;
            if (!v182)
            {
              return 0;
            }
          }

          else
          {
            v32 = (v6 + 2);
LABEL_50:
            v236 = v32;
            *(a1 + 297) = v31 != 0;
          }

          goto LABEL_330;
        case 0x25u:
          if (v7 != 42)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x40000u;
          v34 = *(a1 + 176);
          if (v34)
          {
            goto LABEL_288;
          }

          v35 = *(a1 + 8);
          if (v35)
          {
            v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
          }

          v36 = MEMORY[0x277CA3310](v35);
          LODWORD(v34) = v36;
          *(a1 + 176) = v36;
          goto LABEL_287;
        case 0x26u:
          if (v7 != 48)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x20000u;
          v19 = (v6 + 1);
          v18 = *v6;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v176 = google::protobuf::internal::VarintParseSlow64(v6, v18);
            v236 = v176;
            *(a1 + 298) = v177 != 0;
            if (!v176)
            {
              return 0;
            }
          }

          else
          {
            v19 = (v6 + 2);
LABEL_29:
            v236 = v19;
            *(a1 + 298) = v18 != 0;
          }

          goto LABEL_330;
        case 0x27u:
          if (v7 != 58)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x80000u;
          v8 = *(a1 + 184);
          if (v8)
          {
            goto LABEL_300;
          }

          v156 = *(a1 + 8);
          if (v156)
          {
            v156 = *(v156 & 0xFFFFFFFFFFFFFFFELL);
          }

          v157 = MEMORY[0x277CA3320](v156);
          LODWORD(v8) = v157;
          *(a1 + 184) = v157;
          goto LABEL_299;
        case 0x28u:
          if (v7 != 64)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x40000u;
          v135 = (v6 + 1);
          v134 = *v6;
          if ((v134 & 0x8000000000000000) == 0)
          {
            goto LABEL_254;
          }

          v136 = *v135;
          v134 = (v136 << 7) + v134 - 128;
          if (v136 < 0)
          {
            v220 = google::protobuf::internal::VarintParseSlow64(v6, v134);
            v236 = v220;
            *(a1 + 299) = v221 != 0;
            if (!v220)
            {
              return 0;
            }
          }

          else
          {
            v135 = (v6 + 2);
LABEL_254:
            v236 = v135;
            *(a1 + 299) = v134 != 0;
          }

          goto LABEL_330;
        case 0x29u:
          if (v7 != 74)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x100000u;
          v34 = *(a1 + 192);
          if (v34)
          {
            goto LABEL_288;
          }

          v66 = *(a1 + 8);
          if (v66)
          {
            v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
          }

          v67 = MEMORY[0x277CA3310](v66);
          LODWORD(v34) = v67;
          *(a1 + 192) = v67;
LABEL_287:
          v6 = v236;
LABEL_288:
          v30 = sub_276F56598(a3, v34, v6);
          goto LABEL_329;
        case 0x2Au:
          if (v7 != 80)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x80000u;
          v101 = (v6 + 1);
          v100 = *v6;
          if ((v100 & 0x8000000000000000) == 0)
          {
            goto LABEL_182;
          }

          v102 = *v101;
          v100 = (v102 << 7) + v100 - 128;
          if (v102 < 0)
          {
            v208 = google::protobuf::internal::VarintParseSlow64(v6, v100);
            v236 = v208;
            *(a1 + 300) = v209 != 0;
            if (!v208)
            {
              return 0;
            }
          }

          else
          {
            v101 = (v6 + 2);
LABEL_182:
            v236 = v101;
            *(a1 + 300) = v100 != 0;
          }

          goto LABEL_330;
        case 0x2Bu:
          if (v7 != 90)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x200000u;
          v12 = *(a1 + 200);
          if (v12)
          {
            goto LABEL_271;
          }

          v143 = *(a1 + 8);
          if (v143)
          {
            v143 = *(v143 & 0xFFFFFFFFFFFFFFFELL);
          }

          v144 = MEMORY[0x277CA3340](v143);
          LODWORD(v12) = v144;
          *(a1 + 200) = v144;
          goto LABEL_270;
        case 0x2Cu:
          if (v7 != 96)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x100000u;
          v16 = (v6 + 1);
          v15 = *v6;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v174 = google::protobuf::internal::VarintParseSlow64(v6, v15);
            v236 = v174;
            *(a1 + 301) = v175 != 0;
            if (!v174)
            {
              return 0;
            }
          }

          else
          {
            v16 = (v6 + 2);
LABEL_24:
            v236 = v16;
            *(a1 + 301) = v15 != 0;
          }

          goto LABEL_330;
        case 0x2Du:
          if (v7 != 106)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x400000u;
          v8 = *(a1 + 208);
          if (v8)
          {
            goto LABEL_300;
          }

          v44 = *(a1 + 8);
          if (v44)
          {
            v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
          }

          v45 = MEMORY[0x277CA3320](v44);
          LODWORD(v8) = v45;
          *(a1 + 208) = v45;
LABEL_299:
          v6 = v236;
LABEL_300:
          v30 = sub_276F560B8(a3, v8, v6);
          goto LABEL_329;
        case 0x2Eu:
          if (v7 != 112)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x200000u;
          v130 = (v6 + 1);
          v129 = *v6;
          if ((v129 & 0x8000000000000000) == 0)
          {
            goto LABEL_242;
          }

          v131 = *v130;
          v129 = (v131 << 7) + v129 - 128;
          if (v131 < 0)
          {
            v218 = google::protobuf::internal::VarintParseSlow64(v6, v129);
            v236 = v218;
            *(a1 + 302) = v219 != 0;
            if (!v218)
            {
              return 0;
            }
          }

          else
          {
            v130 = (v6 + 2);
LABEL_242:
            v236 = v130;
            *(a1 + 302) = v129 != 0;
          }

          goto LABEL_330;
        case 0x2Fu:
          if (v7 != 122)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x800000u;
          v52 = *(a1 + 216);
          if (v52)
          {
            goto LABEL_328;
          }

          v168 = *(a1 + 8);
          if (v168)
          {
            v168 = *(v168 & 0xFFFFFFFFFFFFFFFELL);
          }

          v169 = MEMORY[0x277CA3300](v168);
          LODWORD(v52) = v169;
          *(a1 + 216) = v169;
          goto LABEL_327;
        case 0x30u:
          if (v7 != 128)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x400000u;
          v25 = (v6 + 1);
          v24 = *v6;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v180 = google::protobuf::internal::VarintParseSlow64(v6, v24);
            v236 = v180;
            *(a1 + 303) = v181 != 0;
            if (!v180)
            {
              return 0;
            }
          }

          else
          {
            v25 = (v6 + 2);
LABEL_39:
            v236 = v25;
            *(a1 + 303) = v24 != 0;
          }

          goto LABEL_330;
        case 0x31u:
          if (v7 != 138)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x1000000u;
          v52 = *(a1 + 224);
          if (v52)
          {
            goto LABEL_328;
          }

          v53 = *(a1 + 8);
          if (v53)
          {
            v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
          }

          v54 = MEMORY[0x277CA3300](v53);
          LODWORD(v52) = v54;
          *(a1 + 224) = v54;
          goto LABEL_327;
        case 0x32u:
          if (v7 != 144)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x800000u;
          v62 = (v6 + 1);
          v61 = *v6;
          if ((v61 & 0x8000000000000000) == 0)
          {
            goto LABEL_106;
          }

          v63 = *v62;
          v61 = (v63 << 7) + v61 - 128;
          if (v63 < 0)
          {
            v190 = google::protobuf::internal::VarintParseSlow64(v6, v61);
            v236 = v190;
            *(a1 + 304) = v191 != 0;
            if (!v190)
            {
              return 0;
            }
          }

          else
          {
            v62 = (v6 + 2);
LABEL_106:
            v236 = v62;
            *(a1 + 304) = v61 != 0;
          }

          goto LABEL_330;
        case 0x33u:
          if (v7 != 154)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x2000000u;
          v12 = *(a1 + 232);
          if (v12)
          {
            goto LABEL_271;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277CA3340](v13);
          LODWORD(v12) = v14;
          *(a1 + 232) = v14;
LABEL_270:
          v6 = v236;
LABEL_271:
          v30 = sub_276F56188(a3, v12, v6);
          goto LABEL_329;
        case 0x34u:
          if (v7 != 160)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x1000000u;
          v171 = (v6 + 1);
          v170 = *v6;
          if ((v170 & 0x8000000000000000) == 0)
          {
            goto LABEL_336;
          }

          v172 = *v171;
          v170 = (v172 << 7) + v170 - 128;
          if (v172 < 0)
          {
            v234 = google::protobuf::internal::VarintParseSlow64(v6, v170);
            v236 = v234;
            *(a1 + 305) = v235 != 0;
            if (!v234)
            {
              return 0;
            }
          }

          else
          {
            v171 = (v6 + 2);
LABEL_336:
            v236 = v171;
            *(a1 + 305) = v170 != 0;
          }

          goto LABEL_330;
        case 0x35u:
          if (v7 != 170)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x4000000u;
          v52 = *(a1 + 240);
          if (v52)
          {
            goto LABEL_328;
          }

          v166 = *(a1 + 8);
          if (v166)
          {
            v166 = *(v166 & 0xFFFFFFFFFFFFFFFELL);
          }

          v167 = MEMORY[0x277CA3300](v166);
          LODWORD(v52) = v167;
          *(a1 + 240) = v167;
          goto LABEL_327;
        case 0x36u:
          if (v7 != 176)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x2000000u;
          v22 = (v6 + 1);
          v21 = *v6;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v178 = google::protobuf::internal::VarintParseSlow64(v6, v21);
            v236 = v178;
            *(a1 + 306) = v179 != 0;
            if (!v178)
            {
              return 0;
            }
          }

          else
          {
            v22 = (v6 + 2);
LABEL_34:
            v236 = v22;
            *(a1 + 306) = v21 != 0;
          }

          goto LABEL_330;
        case 0x37u:
          if (v7 != 186)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x8000000u;
          v52 = *(a1 + 248);
          if (v52)
          {
            goto LABEL_328;
          }

          v161 = *(a1 + 8);
          if (v161)
          {
            v161 = *(v161 & 0xFFFFFFFFFFFFFFFELL);
          }

          v162 = MEMORY[0x277CA3300](v161);
          LODWORD(v52) = v162;
          *(a1 + 248) = v162;
          goto LABEL_327;
        case 0x38u:
          if (v7 != 192)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x4000000u;
          v164 = (v6 + 1);
          v163 = *v6;
          if ((v163 & 0x8000000000000000) == 0)
          {
            goto LABEL_316;
          }

          v165 = *v164;
          v163 = (v165 << 7) + v163 - 128;
          if (v165 < 0)
          {
            v232 = google::protobuf::internal::VarintParseSlow64(v6, v163);
            v236 = v232;
            *(a1 + 307) = v233 != 0;
            if (!v232)
            {
              return 0;
            }
          }

          else
          {
            v164 = (v6 + 2);
LABEL_316:
            v236 = v164;
            *(a1 + 307) = v163 != 0;
          }

          goto LABEL_330;
        case 0x39u:
          if (v7 != 202)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x10000000u;
          v27 = *(a1 + 256);
          if (!v27)
          {
            v28 = *(a1 + 8);
            if (v28)
            {
              v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
            }

            v29 = MEMORY[0x277CA32E0](v28);
            LODWORD(v27) = v29;
            *(a1 + 256) = v29;
            v6 = v236;
          }

          v30 = sub_276F56668(a3, v27, v6);
          goto LABEL_329;
        case 0x3Au:
          if (v7 != 208)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x8000000u;
          v141 = (v6 + 1);
          v140 = *v6;
          if ((v140 & 0x8000000000000000) == 0)
          {
            goto LABEL_264;
          }

          v142 = *v141;
          v140 = (v142 << 7) + v140 - 128;
          if (v142 < 0)
          {
            v224 = google::protobuf::internal::VarintParseSlow64(v6, v140);
            v236 = v224;
            *(a1 + 308) = v225 != 0;
            if (!v224)
            {
              return 0;
            }
          }

          else
          {
            v141 = (v6 + 2);
LABEL_264:
            v236 = v141;
            *(a1 + 308) = v140 != 0;
          }

          goto LABEL_330;
        case 0x3Bu:
          if (v7 != 218)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x20000000u;
          v55 = *(a1 + 264);
          if (!v55)
          {
            v56 = *(a1 + 8);
            if (v56)
            {
              v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
            }

            v57 = MEMORY[0x277CA32C0](v56);
            LODWORD(v55) = v57;
            *(a1 + 264) = v57;
            v6 = v236;
          }

          v30 = sub_276F56738(a3, v55, v6);
          goto LABEL_329;
        case 0x3Cu:
          if (v7 != 224)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x10000000u;
          v146 = (v6 + 1);
          v145 = *v6;
          if ((v145 & 0x8000000000000000) == 0)
          {
            goto LABEL_276;
          }

          v147 = *v146;
          v145 = (v147 << 7) + v145 - 128;
          if (v147 < 0)
          {
            v226 = google::protobuf::internal::VarintParseSlow64(v6, v145);
            v236 = v226;
            *(a1 + 309) = v227 != 0;
            if (!v226)
            {
              return 0;
            }
          }

          else
          {
            v146 = (v6 + 2);
LABEL_276:
            v236 = v146;
            *(a1 + 309) = v145 != 0;
          }

          goto LABEL_330;
        case 0x3Du:
          if (v7 != 234)
          {
            goto LABEL_337;
          }

          *(a1 + 16) |= 0x40000000u;
          v52 = *(a1 + 272);
          if (v52)
          {
            goto LABEL_328;
          }

          v68 = *(a1 + 8);
          if (v68)
          {
            v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
          }

          v69 = MEMORY[0x277CA3300](v68);
          LODWORD(v52) = v69;
          *(a1 + 272) = v69;
LABEL_327:
          v6 = v236;
LABEL_328:
          v30 = sub_276F56328(a3, v52, v6);
          goto LABEL_329;
        case 0x3Eu:
          if (v7 != 240)
          {
            goto LABEL_337;
          }

          *(a1 + 20) |= 0x20000000u;
          v106 = (v6 + 1);
          v105 = *v6;
          if ((v105 & 0x8000000000000000) == 0)
          {
            goto LABEL_192;
          }

          v107 = *v106;
          v105 = (v107 << 7) + v105 - 128;
          if (v107 < 0)
          {
            v210 = google::protobuf::internal::VarintParseSlow64(v6, v105);
            v236 = v210;
            *(a1 + 310) = v211 != 0;
            if (!v210)
            {
              return 0;
            }
          }

          else
          {
            v106 = (v6 + 2);
LABEL_192:
            v236 = v106;
            *(a1 + 310) = v105 != 0;
          }

          goto LABEL_330;
        default:
LABEL_337:
          if (v7)
          {
            v173 = (v7 & 7) == 4;
          }

          else
          {
            v173 = 1;
          }

          if (v173)
          {
            *(a3 + 80) = v7 - 1;
            return v236;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v30 = google::protobuf::internal::UnknownFieldParse();
LABEL_329:
          v236 = v30;
          if (!v30)
          {
            return 0;
          }

LABEL_330:
          if (sub_276EA4A1C(a3, &v236))
          {
            return v236;
          }

          break;
      }
    }
  }

  return v236;
}