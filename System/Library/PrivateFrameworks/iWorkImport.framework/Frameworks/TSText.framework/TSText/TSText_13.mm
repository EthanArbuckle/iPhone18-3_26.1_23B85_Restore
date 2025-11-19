uint64_t TSWP::BibliographySmartFieldArchive::MergeFrom(TSWP::BibliographySmartFieldArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::BibliographySmartFieldArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::BibliographySmartFieldArchive::MergeFrom(uint64_t this, const TSWP::BibliographySmartFieldArchive *a2)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PlaceholderSmartFieldArchive>(v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = &TSWP::_PlaceholderSmartFieldArchive_default_instance_;
      }

      this = TSWP::PlaceholderSmartFieldArchive::MergeFrom(v11, v13);
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
        *(v3 + 64) = *(a2 + 64);
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

      v14 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v15);
      *(v3 + 56) = v14;
    }

    if (*(a2 + 7))
    {
      v16 = *(a2 + 7);
    }

    else
    {
      v16 = &TSWP::_SmartFieldArchive_default_instance_;
    }

    this = TSWP::SmartFieldArchive::MergeFrom(v14, v16);
    if ((v10 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSWP::BibliographySmartFieldArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::BibliographySmartFieldArchive::Clear(this);

    return TSWP::BibliographySmartFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::BibliographySmartFieldArchive::CopyFrom(uint64_t *this, const TSWP::BibliographySmartFieldArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::BibliographySmartFieldArchive::Clear(this);

    return TSWP::BibliographySmartFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWP::BibliographySmartFieldArchive::IsInitialized(TSWP::BibliographySmartFieldArchive *this)
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

__n128 TSWP::BibliographySmartFieldArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276E4FC00(&this->n128_i64[1], &a2->n128_i64[1]);
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
  LOBYTE(v7) = this[4].n128_u8[0];
  this[4].n128_u8[0] = a2[4].n128_u8[0];
  a2[4].n128_u8[0] = v7;
  return result;
}

TSWP::CitationRecordArchive *TSWP::CitationRecordArchive::CitationRecordArchive(TSWP::CitationRecordArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288602F10;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CitationRecordArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 7) = v3;
  *(this + 8) = v3;
  *(this + 9) = v3;
  *(this + 10) = v3;
  *(this + 44) = 0;
  return this;
}

TSWP::CitationRecordArchive *TSWP::CitationRecordArchive::CitationRecordArchive(TSWP::CitationRecordArchive *this, const TSWP::CitationRecordArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288602F10;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
    v4 = *(a2 + 4);
  }

  *(this + 5) = v6;
  if ((v4 & 4) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 6) = v6;
  if ((v4 & 8) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 7) = v6;
  if ((v4 & 0x10) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 8) = v6;
  if ((v4 & 0x20) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 9) = v6;
  if ((v4 & 0x40) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 10) = v6;
  if ((v4 & 0x80) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  *(this + 44) = *(a2 + 44);
  return this;
}

void TSWP::CitationRecordArchive::~CitationRecordArchive(TSWP::CitationRecordArchive *this)
{
  sub_276E8F580(this);
  sub_276E4E808(this + 1);
}

{
  TSWP::CitationRecordArchive::~CitationRecordArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t sub_276E8F580(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  v4 = v1[4];
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277CA3D00](v4, 0x1012C40EC159624);
  }

  v5 = v1[5];
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277CA3D00](v5, 0x1012C40EC159624);
  }

  v6 = v1[6];
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = MEMORY[0x277CA3D00](v6, 0x1012C40EC159624);
  }

  v7 = v1[7];
  if (v7 != v3)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = MEMORY[0x277CA3D00](v7, 0x1012C40EC159624);
  }

  v8 = v1[8];
  if (v8 != v3)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    result = MEMORY[0x277CA3D00](v8, 0x1012C40EC159624);
  }

  v9 = v1[9];
  if (v9 != v3)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    result = MEMORY[0x277CA3D00](v9, 0x1012C40EC159624);
  }

  v10 = v1[10];
  if (v10 != v3)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    JUMPOUT(0x277CA3D00);
  }

  return result;
}

void *TSWP::CitationRecordArchive::default_instance(TSWP::CitationRecordArchive *this)
{
  if (atomic_load_explicit(scc_info_CitationRecordArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_CitationRecordArchive_default_instance_;
}

uint64_t *TSWP::CitationRecordArchive::Clear(TSWP::CitationRecordArchive *this)
{
  v1 = *(this + 16);
  if (!v1)
  {
    goto LABEL_42;
  }

  if ((*(this + 16) & 1) == 0)
  {
    if ((*(this + 16) & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_15:
    v3 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_23:
    v5 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_7:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_31:
    v7 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v1 & 0x40) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v1 & 0x40) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_9:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_42;
    }

LABEL_39:
    v9 = *(this + 10) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
    }

    goto LABEL_42;
  }

  v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    **v2 = 0;
    *(v2 + 8) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  if ((v1 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  v4 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_23;
    }
  }

LABEL_6:
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_27:
  v6 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_31;
    }
  }

LABEL_8:
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_35:
  v8 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  *v8 = 0;
  *(v8 + 23) = 0;
  if (v1 < 0)
  {
    goto LABEL_39;
  }

LABEL_42:
  v11 = *(this + 8);
  result = (this + 8);
  *(result + 40) = 0;
  *(result + 2) = 0;
  if (v11)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::CitationRecordArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v26) & 1) == 0)
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
        goto LABEL_67;
      }

      v7 = TagFallback;
      v8 = v16;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 5)
      {
        if (v8 >> 3 <= 7)
        {
          if (v10 != 6)
          {
            if (v10 == 7 && v8 == 58)
            {
              *(a1 + 16) |= 0x10u;
              goto LABEL_51;
            }

            goto LABEL_55;
          }

          if (v8 != 50)
          {
            goto LABEL_55;
          }

          *(a1 + 16) |= 8u;
        }

        else if (v10 == 8)
        {
          if (v8 != 66)
          {
            goto LABEL_55;
          }

          *(a1 + 16) |= 0x20u;
        }

        else
        {
          if (v10 != 9)
          {
            if (v10 == 10 && v8 == 82)
            {
              *(a1 + 16) |= 0x80u;
              goto LABEL_51;
            }

            goto LABEL_55;
          }

          if (v8 != 74)
          {
            goto LABEL_55;
          }

          *(a1 + 16) |= 0x40u;
        }

        goto LABEL_51;
      }

      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            goto LABEL_51;
          }

LABEL_55:
          if (v8)
          {
            v21 = (v8 & 7) == 4;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v20 = google::protobuf::internal::UnknownFieldParse();
LABEL_52:
          v26 = v20;
          if (!v20)
          {
            goto LABEL_67;
          }

          goto LABEL_53;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_55;
        }

        v5 |= 0x100u;
        v13 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_29:
          v26 = v13;
          *(a1 + 88) = v12 != 0;
          goto LABEL_53;
        }

        v22 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v26 = v22;
        *(a1 + 88) = v23 != 0;
        if (!v22)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v10 != 3)
        {
          if (v10 != 4)
          {
            if (v10 == 5 && v8 == 42)
            {
              *(a1 + 16) |= 4u;
              goto LABEL_51;
            }

            goto LABEL_55;
          }

          if (v8 != 34)
          {
            goto LABEL_55;
          }

          *(a1 + 16) |= 2u;
LABEL_51:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v20 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_52;
        }

        if (v8 != 24)
        {
          goto LABEL_55;
        }

        v5 |= 0x200u;
        v18 = (v7 + 1);
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_44:
          v26 = v18;
          *(a1 + 89) = v17 != 0;
          goto LABEL_53;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v7, v17);
        v26 = v24;
        *(a1 + 89) = v25 != 0;
        if (!v24)
        {
LABEL_67:
          v26 = 0;
          goto LABEL_2;
        }
      }

LABEL_53:
      if (sub_276EA4A1C(a3, &v26))
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

unsigned __int8 *TSWP::CitationRecordArchive::_InternalSerialize(TSWP::CitationRecordArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_276E5154C(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 0x100) == 0)
    {
LABEL_3:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
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

  v9 = *(this + 88);
  *v4 = 16;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 0x200) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v10 = *(this + 89);
  *v4 = 24;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 2) == 0)
  {
LABEL_5:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v4 = sub_276E5154C(a3, 4, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v4 = sub_276E5154C(a3, 5, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4 = sub_276E5154C(a3, 6, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4 = sub_276E5154C(a3, 7, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4 = sub_276E5154C(a3, 8, (*(this + 8) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_10:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_26:
  v4 = sub_276E5154C(a3, 9, (*(this + 9) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x80) != 0)
  {
LABEL_11:
    v4 = sub_276E5154C(a3, 10, (*(this + 10) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_12:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::CitationRecordArchive::ByteSizeLong(TSWP::CitationRecordArchive *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_21;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
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
    v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    v16 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v2 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_32;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  v19 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v2 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) == 0)
  {
LABEL_15:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_32:
  v22 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(v22 + 23);
  v24 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v23;
  }

  v2 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x20) == 0)
  {
LABEL_16:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_35:
  v25 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v25 + 23);
  v27 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v27 = v26;
  }

  v2 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x40) == 0)
  {
LABEL_17:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_38:
  v28 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
  v29 = *(v28 + 23);
  v30 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v30 = v29;
  }

  v2 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x80) != 0)
  {
LABEL_18:
    v9 = *(this + 10) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_21:
  v12 = (v1 & 0x300) == 0;
  v13 = v2 + ((v1 >> 8) & 2) + ((v1 >> 7) & 2);
  if (v12)
  {
    v14 = v2;
  }

  else
  {
    v14 = v13;
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v14, this + 20);
  }

  *(this + 5) = v14;
  return v14;
}

uint64_t TSWP::CitationRecordArchive::MergeFrom(TSWP::CitationRecordArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::CitationRecordArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::CitationRecordArchive::MergeFrom(uint64_t this, const TSWP::CitationRecordArchive *a2)
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
      *(v3 + 16) |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
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
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    *(v3 + 16) |= 4u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    *(v3 + 16) |= 8u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    *(v3 + 16) |= 0x10u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    *(v3 + 16) |= 0x20u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      *(v3 + 16) |= 0x80u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
      goto LABEL_21;
    }

LABEL_19:
    *(v3 + 16) |= 0x40u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_21:
  if ((v5 & 0x300) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      *(v3 + 88) = *(a2 + 88);
    }

    if ((v5 & 0x200) != 0)
    {
      *(v3 + 89) = *(a2 + 89);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

TSWP::CitationRecordArchive *TSWP::CitationRecordArchive::CopyFrom(TSWP::CitationRecordArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::CitationRecordArchive::Clear(this);

    return TSWP::CitationRecordArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::CitationRecordArchive *TSWP::CitationRecordArchive::CopyFrom(TSWP::CitationRecordArchive *this, const TSWP::CitationRecordArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::CitationRecordArchive::Clear(this);

    return TSWP::CitationRecordArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::CitationRecordArchive::InternalSwap(TSWP::CitationRecordArchive *this, TSWP::CitationRecordArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  v11 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v11;
  v12 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v12;
  v13 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v13;
  LOWORD(v13) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v13;
  return result;
}

uint64_t TSWP::CitationSmartFieldArchive::clear_citation_records(uint64_t this)
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

TSWP::CitationSmartFieldArchive *TSWP::CitationSmartFieldArchive::CitationSmartFieldArchive(TSWP::CitationSmartFieldArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288602FC0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CitationSmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 64) = 0;
  return this;
}

TSWP::CitationSmartFieldArchive *TSWP::CitationSmartFieldArchive::CitationSmartFieldArchive(TSWP::CitationSmartFieldArchive *this, const TSWP::CitationSmartFieldArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288602FC0;
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
  *(this + 64) = *(a2 + 64);
  return this;
}

void sub_276E908D4(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v2, 0x1081C4072235B19);
  sub_276EA5ECC((v1 + 24));
  _Unwind_Resume(a1);
}

void TSWP::CitationSmartFieldArchive::~CitationSmartFieldArchive(TSWP::CitationSmartFieldArchive *this)
{
  if (this != &TSWP::_CitationSmartFieldArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSWP::PlaceholderSmartFieldArchive::~PlaceholderSmartFieldArchive(v2);
      MEMORY[0x277CA3D00]();
    }

    v3 = *(this + 7);
    if (v3)
    {
      TSWP::SmartFieldArchive::~SmartFieldArchive(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
  sub_276EA5ECC(this + 3);
}

{
  TSWP::CitationSmartFieldArchive::~CitationSmartFieldArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::CitationSmartFieldArchive::default_instance(TSWP::CitationSmartFieldArchive *this)
{
  if (atomic_load_explicit(scc_info_CitationSmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_CitationSmartFieldArchive_default_instance_;
}

uint64_t *TSWP::CitationSmartFieldArchive::Clear(uint64_t *this)
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

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      this = TSWP::PlaceholderSmartFieldArchive::Clear(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      this = TSWP::SmartFieldArchive::Clear(*(v1 + 56));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 56) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_276EA4D28(v6);
  }

  return this;
}

google::protobuf::internal *TSWP::CitationSmartFieldArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v34 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v34) & 1) == 0)
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
        goto LABEL_60;
      }

      v7 = TagFallback;
      v8 = v31;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v24 = *(a1 + 48);
            if (!v24)
            {
              v25 = *(a1 + 8);
              if (v25)
              {
                v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
              }

              v24 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PlaceholderSmartFieldArchive>(v25);
              *(a1 + 48) = v24;
              v7 = v34;
            }

            v26 = sub_276F5379C(a3, v24, v7);
            goto LABEL_52;
          }

          goto LABEL_45;
        }

        if (v10 != 2 || v8 != 18)
        {
          goto LABEL_45;
        }

        v12 = v7 - 1;
        while (2)
        {
          v13 = (v12 + 1);
          v34 = (v12 + 1);
          v14 = *(a1 + 40);
          if (!v14)
          {
LABEL_16:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v14 = *(a1 + 40);
            v15 = *v14;
            goto LABEL_17;
          }

          v20 = *(a1 + 32);
          v15 = *v14;
          if (v20 >= *v14)
          {
            if (v15 == *(a1 + 36))
            {
              goto LABEL_16;
            }

LABEL_17:
            *v14 = v15 + 1;
            v16 = MEMORY[0x277CA3250](*(a1 + 24));
            LODWORD(v17) = v16;
            v18 = *(a1 + 32);
            v19 = *(a1 + 40) + 8 * v18;
            *(a1 + 32) = v18 + 1;
            *(v19 + 8) = v16;
            v13 = v34;
          }

          else
          {
            *(a1 + 32) = v20 + 1;
            v17 = *&v14[2 * v20 + 2];
          }

          v12 = sub_276F4F9E8(a3, v17, v13);
          v34 = v12;
          if (!v12)
          {
            goto LABEL_60;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_53;
          }

          continue;
        }
      }

      if (v10 == 3)
      {
        if (v8 == 26)
        {
          *(a1 + 16) |= 2u;
          v27 = *(a1 + 56);
          if (!v27)
          {
            v28 = *(a1 + 8);
            if (v28)
            {
              v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
            }

            v27 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v28);
            *(a1 + 56) = v27;
            v7 = v34;
          }

          v26 = sub_276F536CC(a3, v27, v7);
LABEL_52:
          v34 = v26;
          if (!v26)
          {
            goto LABEL_60;
          }

          goto LABEL_53;
        }

LABEL_45:
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
          sub_276EA4A94((a1 + 8));
        }

        v26 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_52;
      }

      if (v10 != 4 || v8 != 32)
      {
        goto LABEL_45;
      }

      v5 |= 4u;
      v22 = (v7 + 1);
      v21 = *v7;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_32;
      }

      v23 = *v22;
      v21 = (v23 << 7) + v21 - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = (v7 + 2);
LABEL_32:
        v34 = v22;
        *(a1 + 64) = v21 != 0;
        goto LABEL_53;
      }

      v32 = google::protobuf::internal::VarintParseSlow64(v7, v21);
      v34 = v32;
      *(a1 + 64) = v33 != 0;
      if (!v32)
      {
LABEL_60:
        v34 = 0;
        goto LABEL_2;
      }

LABEL_53:
      if (sub_276EA4A1C(a3, &v34))
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

unsigned __int8 *TSWP::CitationSmartFieldArchive::_InternalSerialize(TSWP::CitationSmartFieldArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::PlaceholderSmartFieldArchive::_InternalSerialize(v6, v8, a3);
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

    v20 = *(this + 7);
    *a2 = 26;
    v21 = *(v20 + 20);
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

    a2 = TSWP::SmartFieldArchive::_InternalSerialize(v20, v22, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(this + 64);
    *a2 = 32;
    a2[1] = v26;
    a2 += 2;
  }

  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v27 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::CitationSmartFieldArchive::ByteSizeLong(TSWP::CitationSmartFieldArchive *this)
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
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v9 = TSWP::PlaceholderSmartFieldArchive::ByteSizeLong(*(this + 6));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = TSWP::SmartFieldArchive::ByteSizeLong(*(this + 7));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += (v8 >> 1) & 2;
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

uint64_t TSWP::CitationSmartFieldArchive::MergeFrom(TSWP::CitationSmartFieldArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::CitationSmartFieldArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::CitationSmartFieldArchive::MergeFrom(uint64_t this, const TSWP::CitationSmartFieldArchive *a2)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PlaceholderSmartFieldArchive>(v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = &TSWP::_PlaceholderSmartFieldArchive_default_instance_;
      }

      this = TSWP::PlaceholderSmartFieldArchive::MergeFrom(v11, v13);
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
        *(v3 + 64) = *(a2 + 64);
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

      v14 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v15);
      *(v3 + 56) = v14;
    }

    if (*(a2 + 7))
    {
      v16 = *(a2 + 7);
    }

    else
    {
      v16 = &TSWP::_SmartFieldArchive_default_instance_;
    }

    this = TSWP::SmartFieldArchive::MergeFrom(v14, v16);
    if ((v10 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSWP::CitationSmartFieldArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::CitationSmartFieldArchive::Clear(this);

    return TSWP::CitationSmartFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::CitationSmartFieldArchive::CopyFrom(uint64_t *this, const TSWP::CitationSmartFieldArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::CitationSmartFieldArchive::Clear(this);

    return TSWP::CitationSmartFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWP::CitationSmartFieldArchive::IsInitialized(TSWP::CitationSmartFieldArchive *this)
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

__n128 TSWP::CitationSmartFieldArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276E4FC00(&this->n128_i64[1], &a2->n128_i64[1]);
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
  LOBYTE(v7) = this[4].n128_u8[0];
  this[4].n128_u8[0] = a2[4].n128_u8[0];
  a2[4].n128_u8[0] = v7;
  return result;
}

TSP::Date *TSWP::DateTimeSmartFieldArchive::clear_date(TSWP::DateTimeSmartFieldArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSWP::DateTimeSmartFieldArchive *TSWP::DateTimeSmartFieldArchive::DateTimeSmartFieldArchive(TSWP::DateTimeSmartFieldArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288603070;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DateTimeSmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return this;
}

TSWP::DateTimeSmartFieldArchive *TSWP::DateTimeSmartFieldArchive::DateTimeSmartFieldArchive(TSWP::DateTimeSmartFieldArchive *this, const TSWP::DateTimeSmartFieldArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288603070;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
    v4 = *(a2 + 4);
  }

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
  v7 = *(a2 + 56);
  *(this + 18) = *(a2 + 18);
  *(this + 56) = v7;
  return this;
}

void TSWP::DateTimeSmartFieldArchive::~DateTimeSmartFieldArchive(TSWP::DateTimeSmartFieldArchive *this)
{
  sub_276E917E4(this);
  sub_276E4E808(this + 1);
}

{
  TSWP::DateTimeSmartFieldArchive::~DateTimeSmartFieldArchive(this);

  JUMPOUT(0x277CA3D00);
}

TSP::Date *sub_276E917E4(TSP::Date *result)
{
  v1 = result;
  v2 = *(result + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277CA3D00](v4, 0x1012C40EC159624);
  }

  if (v1 != &TSWP::_DateTimeSmartFieldArchive_default_instance_)
  {
    v5 = *(v1 + 5);
    if (v5)
    {
      TSWP::SmartFieldArchive::~SmartFieldArchive(v5);
      MEMORY[0x277CA3D00]();
    }

    result = *(v1 + 6);
    if (result)
    {
      TSP::Date::~Date(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::DateTimeSmartFieldArchive::default_instance(TSWP::DateTimeSmartFieldArchive *this)
{
  if (atomic_load_explicit(scc_info_DateTimeSmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_DateTimeSmartFieldArchive_default_instance_;
}

uint64_t *TSWP::DateTimeSmartFieldArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v2)
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

    goto LABEL_23;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_19:
  v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_23;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  this = TSWP::SmartFieldArchive::Clear(this[5]);
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSP::Date::Clear(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0xF0) != 0)
  {
    *(v1 + 61) = 0;
    *(v1 + 56) = 0;
  }

  if ((v2 & 0x300) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 69) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::DateTimeSmartFieldArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v43 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v43) & 1) == 0)
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
        goto LABEL_107;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 5)
      {
        if (v8 >> 3 <= 2)
        {
          if (v10 == 1)
          {
            if (v8 != 10)
            {
              goto LABEL_80;
            }

            *(a1 + 16) |= 4u;
            v23 = *(a1 + 40);
            if (!v23)
            {
              v24 = *(a1 + 8);
              if (v24)
              {
                v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v24);
              *(a1 + 40) = v23;
              v7 = v43;
            }

            v25 = sub_276F536CC(a3, v23, v7);
            goto LABEL_87;
          }

          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_80;
          }

          *(a1 + 16) |= 1u;
        }

        else
        {
          if (v10 != 3)
          {
            if (v10 == 4)
            {
              if (v8 == 32)
              {
                v33 = (v7 + 1);
                v32 = *v7;
                if ((v32 & 0x8000000000000000) == 0)
                {
                  goto LABEL_72;
                }

                v34 = *v33;
                v32 = (v34 << 7) + v32 - 128;
                if (v34 < 0)
                {
                  v43 = google::protobuf::internal::VarintParseSlow64(v7, v32);
                  if (!v43)
                  {
                    goto LABEL_107;
                  }
                }

                else
                {
                  v33 = (v7 + 2);
LABEL_72:
                  v43 = v33;
                }

                if (v32 > 4)
                {
                  sub_276F53E30();
                }

                else
                {
                  *(a1 + 16) |= 0x10u;
                  *(a1 + 56) = v32;
                }

                goto LABEL_88;
              }
            }

            else if (v10 == 5 && v8 == 40)
            {
              v12 = (v7 + 1);
              v11 = *v7;
              if ((v11 & 0x8000000000000000) == 0)
              {
                goto LABEL_16;
              }

              v13 = *v12;
              v11 = (v13 << 7) + v11 - 128;
              if (v13 < 0)
              {
                v43 = google::protobuf::internal::VarintParseSlow64(v7, v11);
                if (!v43)
                {
                  goto LABEL_107;
                }
              }

              else
              {
                v12 = (v7 + 2);
LABEL_16:
                v43 = v12;
              }

              if (v11 > 4)
              {
                sub_276F53FE0();
              }

              else
              {
                *(a1 + 16) |= 0x20u;
                *(a1 + 60) = v11;
              }

              goto LABEL_88;
            }

LABEL_80:
            if (v8)
            {
              v38 = (v8 & 7) == 4;
            }

            else
            {
              v38 = 1;
            }

            if (v38)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_276EA4A94((a1 + 8));
            }

            v25 = google::protobuf::internal::UnknownFieldParse();
LABEL_87:
            v43 = v25;
            if (!v25)
            {
              goto LABEL_107;
            }

            goto LABEL_88;
          }

          if (v8 != 26)
          {
            goto LABEL_80;
          }

          *(a1 + 16) |= 2u;
        }

        google::protobuf::internal::ArenaStringPtr::Mutable();
        v25 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_87;
      }

      if (v8 >> 3 <= 7)
      {
        if (v10 == 6)
        {
          if (v8 == 48)
          {
            v27 = (v7 + 1);
            v26 = *v7;
            if ((v26 & 0x8000000000000000) == 0)
            {
              goto LABEL_56;
            }

            v28 = *v27;
            v26 = (v28 << 7) + v26 - 128;
            if (v28 < 0)
            {
              v43 = google::protobuf::internal::VarintParseSlow64(v7, v26);
              if (!v43)
              {
                goto LABEL_107;
              }
            }

            else
            {
              v27 = (v7 + 2);
LABEL_56:
              v43 = v27;
            }

            if (v26 > 2)
            {
              sub_276F54058();
            }

            else
            {
              *(a1 + 16) |= 0x40u;
              *(a1 + 64) = v26;
            }

            goto LABEL_88;
          }

          goto LABEL_80;
        }

        if (v10 != 7 || v8 != 56)
        {
          goto LABEL_80;
        }

        v5 |= 0x80u;
        v19 = (v7 + 1);
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_43;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_43:
          v43 = v19;
          *(a1 + 68) = v18 != 0;
          goto LABEL_88;
        }

        v39 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v43 = v39;
        *(a1 + 68) = v40 != 0;
        if (!v39)
        {
          goto LABEL_107;
        }
      }

      else
      {
        if (v10 == 8)
        {
          if (v8 != 66)
          {
            goto LABEL_80;
          }

          *(a1 + 16) |= 8u;
          v29 = *(a1 + 48);
          if (!v29)
          {
            v30 = *(a1 + 8);
            if (v30)
            {
              v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
            }

            v31 = MEMORY[0x277CA31F0](v30);
            LODWORD(v29) = v31;
            *(a1 + 48) = v31;
            v7 = v43;
          }

          v25 = sub_276F52514(a3, v29, v7);
          goto LABEL_87;
        }

        if (v10 != 9)
        {
          if (v10 == 10 && v8 == 80)
          {
            v15 = (v7 + 1);
            v14 = *v7;
            if ((v14 & 0x8000000000000000) == 0)
            {
              goto LABEL_27;
            }

            v16 = *v15;
            v14 = (v16 << 7) + v14 - 128;
            if (v16 < 0)
            {
              v43 = google::protobuf::internal::VarintParseSlow64(v7, v14);
              if (!v43)
              {
                goto LABEL_107;
              }
            }

            else
            {
              v15 = (v7 + 2);
LABEL_27:
              v43 = v15;
            }

            if (v14 > 1)
            {
              sub_276F5401C();
            }

            else
            {
              *(a1 + 16) |= 0x200u;
              *(a1 + 72) = v14;
            }

            goto LABEL_88;
          }

          goto LABEL_80;
        }

        if (v8 != 72)
        {
          goto LABEL_80;
        }

        v5 |= 0x100u;
        v36 = (v7 + 1);
        v35 = *v7;
        if ((v35 & 0x8000000000000000) == 0)
        {
          goto LABEL_79;
        }

        v37 = *v36;
        v35 = (v37 << 7) + v35 - 128;
        if ((v37 & 0x80000000) == 0)
        {
          v36 = (v7 + 2);
LABEL_79:
          v43 = v36;
          *(a1 + 69) = v35 != 0;
          goto LABEL_88;
        }

        v41 = google::protobuf::internal::VarintParseSlow64(v7, v35);
        v43 = v41;
        *(a1 + 69) = v42 != 0;
        if (!v41)
        {
LABEL_107:
          v43 = 0;
          goto LABEL_2;
        }
      }

LABEL_88:
      if (sub_276EA4A1C(a3, &v43))
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

unsigned __int8 *TSWP::DateTimeSmartFieldArchive::_InternalSerialize(TSWP::DateTimeSmartFieldArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 5);
    *v4 = 10;
    v8 = *(v7 + 20);
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

    v4 = TSWP::SmartFieldArchive::_InternalSerialize(v7, v9, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_276E5154C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 14);
    *v4 = 32;
    if (v13 > 0x7F)
    {
      v4[1] = v13 | 0x80;
      v14 = v13 >> 7;
      if (v13 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v14 | 0x80;
          v15 = v14 >> 7;
          ++v4;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
        *(v4 - 1) = v15;
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v4[2] = v14;
        v4 += 3;
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v4[1] = v13;
      v4 += 2;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_46:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v21 = *(this + 16);
    *v4 = 48;
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
        if ((v6 & 0x80) != 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v4[2] = v22;
        v4 += 3;
        if ((v6 & 0x80) != 0)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
      v4[1] = v21;
      v4 += 2;
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_57;
      }
    }

LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_60;
  }

LABEL_23:
  v4 = sub_276E5154C(a3, 3, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_5:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_6;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(this + 15);
  *v4 = 40;
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
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v4[2] = v18;
      v4 += 3;
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    v4[1] = v17;
    v4 += 2;
    if ((v6 & 0x40) != 0)
    {
      goto LABEL_46;
    }
  }

LABEL_7:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_8;
  }

LABEL_57:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 68);
  *v4 = 56;
  v4[1] = v25;
  v4 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_70;
  }

LABEL_60:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(this + 6);
  *v4 = 66;
  v27 = *(v26 + 5);
  if (v27 > 0x7F)
  {
    v4[1] = v27 | 0x80;
    v29 = v27 >> 7;
    if (v27 >> 14)
    {
      v28 = v4 + 3;
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
      v4[2] = v29;
      v28 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v27;
    v28 = v4 + 2;
  }

  v4 = TSP::Date::_InternalSerialize(v26, v28, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_73;
  }

LABEL_70:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v32 = *(this + 69);
  *v4 = 72;
  v4[1] = v32;
  v4 += 2;
  if ((v6 & 0x200) != 0)
  {
LABEL_73:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v33 = *(this + 18);
    *v4 = 80;
    if (v33 > 0x7F)
    {
      v4[1] = v33 | 0x80;
      v34 = v33 >> 7;
      if (v33 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v34 | 0x80;
          v35 = v34 >> 7;
          ++v4;
          v36 = v34 >> 14;
          v34 >>= 7;
        }

        while (v36);
        *(v4 - 1) = v35;
      }

      else
      {
        v4[2] = v34;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v33;
      v4 += 2;
    }
  }

LABEL_82:
  v37 = *(this + 1);
  if ((v37 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v37 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::DateTimeSmartFieldArchive::ByteSizeLong(TSWP::DateTimeSmartFieldArchive *this)
{
  v2 = *(this + 4);
  if (*(this + 4))
  {
    if (v2)
    {
      v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 2) == 0)
      {
LABEL_12:
        if ((v2 & 4) != 0)
        {
          v11 = TSWP::SmartFieldArchive::ByteSizeLong(*(this + 5));
          v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
          if ((v2 & 8) == 0)
          {
LABEL_14:
            if ((v2 & 0x10) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_20;
          }
        }

        else if ((v2 & 8) == 0)
        {
          goto LABEL_14;
        }

        v12 = TSP::Date::ByteSizeLong(*(this + 6));
        v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if ((v2 & 0x10) == 0)
        {
LABEL_15:
          if ((v2 & 0x20) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_24;
        }

LABEL_20:
        v13 = *(this + 14);
        if (v13 < 0)
        {
          v14 = 11;
        }

        else
        {
          v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
        }

        v3 += v14;
        if ((v2 & 0x20) == 0)
        {
LABEL_16:
          if ((v2 & 0x40) == 0)
          {
LABEL_32:
            v4 = v3 + ((v2 >> 6) & 2);
            goto LABEL_33;
          }

LABEL_28:
          v17 = *(this + 16);
          if (v17 < 0)
          {
            v18 = 11;
          }

          else
          {
            v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
          }

          v3 += v18;
          goto LABEL_32;
        }

LABEL_24:
        v15 = *(this + 15);
        if (v15 < 0)
        {
          v16 = 11;
        }

        else
        {
          v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
        }

        v3 += v16;
        if ((v2 & 0x40) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
        goto LABEL_12;
      }
    }

    v8 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_12;
  }

  v4 = 0;
LABEL_33:
  if ((v2 & 0x300) != 0)
  {
    v4 += (v2 >> 7) & 2;
    if ((v2 & 0x200) != 0)
    {
      v19 = *(this + 18);
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v19 >= 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 11;
      }

      v4 += v21;
    }
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

uint64_t TSWP::DateTimeSmartFieldArchive::MergeFrom(TSWP::DateTimeSmartFieldArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::DateTimeSmartFieldArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::DateTimeSmartFieldArchive::MergeFrom(uint64_t this, const TSWP::DateTimeSmartFieldArchive *a2)
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
      *(v3 + 16) |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
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

    *(v3 + 16) |= 2u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_31;
    }

LABEL_23:
    *(v3 + 16) |= 4u;
    v6 = *(v3 + 40);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v7);
      *(v3 + 40) = v6;
    }

    if (*(a2 + 5))
    {
      v8 = *(a2 + 5);
    }

    else
    {
      v8 = &TSWP::_SmartFieldArchive_default_instance_;
    }

    this = TSWP::SmartFieldArchive::MergeFrom(v6, v8);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_39;
    }

LABEL_31:
    *(v3 + 16) |= 8u;
    v9 = *(v3 + 48);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277CA31F0](v10);
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
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_40;
    }

LABEL_39:
    *(v3 + 56) = *(a2 + 14);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(v3 + 60) = *(a2 + 15);
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
      *(v3 + 68) = *(a2 + 68);
      goto LABEL_13;
    }

LABEL_41:
    *(v3 + 64) = *(a2 + 16);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0x300) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      *(v3 + 69) = *(a2 + 69);
    }

    if ((v5 & 0x200) != 0)
    {
      *(v3 + 72) = *(a2 + 18);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSWP::DateTimeSmartFieldArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::DateTimeSmartFieldArchive::Clear(this);

    return TSWP::DateTimeSmartFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::DateTimeSmartFieldArchive::CopyFrom(uint64_t *this, const TSWP::DateTimeSmartFieldArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::DateTimeSmartFieldArchive::Clear(this);

    return TSWP::DateTimeSmartFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::DateTimeSmartFieldArchive::IsInitialized(TSWP::DateTimeSmartFieldArchive *this)
{
  if ((*(this + 16) & 8) == 0)
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

__n128 TSWP::DateTimeSmartFieldArchive::InternalSwap(TSWP::DateTimeSmartFieldArchive *this, TSWP::DateTimeSmartFieldArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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
  LODWORD(v9) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v9;
  return result;
}

TSWP::BookmarkFieldArchive *TSWP::BookmarkFieldArchive::BookmarkFieldArchive(TSWP::BookmarkFieldArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288603120;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_BookmarkFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  return this;
}

TSWP::BookmarkFieldArchive *TSWP::BookmarkFieldArchive::BookmarkFieldArchive(TSWP::BookmarkFieldArchive *this, const TSWP::BookmarkFieldArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288603120;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  *(this + 5) = *(a2 + 5);
  return this;
}

void TSWP::BookmarkFieldArchive::~BookmarkFieldArchive(TSWP::BookmarkFieldArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  if (this != &TSWP::_BookmarkFieldArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSWP::SmartFieldArchive::~SmartFieldArchive(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::BookmarkFieldArchive::~BookmarkFieldArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::BookmarkFieldArchive::default_instance(TSWP::BookmarkFieldArchive *this)
{
  if (atomic_load_explicit(scc_info_BookmarkFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_BookmarkFieldArchive_default_instance_;
}

uint64_t *TSWP::BookmarkFieldArchive::Clear(uint64_t *this)
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
      this = TSWP::SmartFieldArchive::Clear(this[4]);
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    *(v1 + 40) = 0;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_276EA4D28(v4);
  }

  return this;
}

google::protobuf::internal *TSWP::BookmarkFieldArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_33;
          }

          *(a1 + 16) |= 2u;
          v16 = *(a1 + 32);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v17);
            *(a1 + 32) = v16;
            v7 = v28;
          }

          v12 = sub_276F536CC(a3, v16, v7);
        }

        else if (v10 == 2 && v8 == 18)
        {
          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v12 = google::protobuf::internal::InlineGreedyStringParser();
        }

        else
        {
LABEL_33:
          if (v8)
          {
            v21 = (v8 & 7) == 4;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
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

        v28 = v12;
        if (!v12)
        {
          goto LABEL_50;
        }

        goto LABEL_41;
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_33;
        }

        v5 |= 4u;
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
          v28 = v18;
          *(a1 + 40) = v19;
          goto LABEL_41;
        }

        v26 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v28 = v26;
        *(a1 + 40) = v27;
        if (!v26)
        {
LABEL_50:
          v28 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_33;
        }

        v5 |= 8u;
        v13 = (v7 + 1);
        LODWORD(v14) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        v15 = *v13;
        v14 = (v14 + (v15 << 7) - 128);
        if ((v15 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_21:
          v28 = v13;
          *(a1 + 44) = v14;
          goto LABEL_41;
        }

        v24 = google::protobuf::internal::VarintParseSlow32(v7, v14);
        v28 = v24;
        *(a1 + 44) = v25;
        if (!v24)
        {
          goto LABEL_50;
        }
      }

LABEL_41:
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

unsigned __int8 *TSWP::BookmarkFieldArchive::_InternalSerialize(TSWP::BookmarkFieldArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 4);
    *v4 = 10;
    v9 = *(v8 + 20);
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

    v4 = TSWP::SmartFieldArchive::_InternalSerialize(v8, v10, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_276E5154C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_5;
  }

LABEL_25:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(this + 10);
  *v4 = 24;
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
        goto LABEL_36;
      }
    }

    else
    {
      v4[2] = v18;
      v4 += 3;
      if ((v6 & 8) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v4[1] = v17;
    v4 += 2;
    if ((v6 & 8) == 0)
    {
      goto LABEL_36;
    }
  }

LABEL_5:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 11);
  *v4 = 32;
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

LABEL_36:
  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::BookmarkFieldArchive::ByteSizeLong(TSWP::BookmarkFieldArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = TSWP::SmartFieldArchive::ByteSizeLong(*(this + 4));
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_12:
    v3 += ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
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

uint64_t TSWP::BookmarkFieldArchive::MergeFrom(TSWP::BookmarkFieldArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::BookmarkFieldArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::BookmarkFieldArchive::MergeFrom(uint64_t this, const TSWP::BookmarkFieldArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = &TSWP::_SmartFieldArchive_default_instance_;
    }

    this = TSWP::SmartFieldArchive::MergeFrom(v6, v8);
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
      *(v3 + 44) = *(a2 + 11);
      goto LABEL_9;
    }

LABEL_20:
    *(v3 + 40) = *(a2 + 10);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TSWP::BookmarkFieldArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::BookmarkFieldArchive::Clear(this);

    return TSWP::BookmarkFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::BookmarkFieldArchive::CopyFrom(uint64_t *this, const TSWP::BookmarkFieldArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::BookmarkFieldArchive::Clear(this);

    return TSWP::BookmarkFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSWP::BookmarkFieldArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  return result;
}

TSWP::FilenameSmartFieldArchive *TSWP::FilenameSmartFieldArchive::FilenameSmartFieldArchive(TSWP::FilenameSmartFieldArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886031D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FilenameSmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2886031D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FilenameSmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSWP::FilenameSmartFieldArchive *TSWP::FilenameSmartFieldArchive::FilenameSmartFieldArchive(TSWP::FilenameSmartFieldArchive *this, const TSWP::FilenameSmartFieldArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886031D0;
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
  *(this + 8) = *(a2 + 8);
  return this;
}

void TSWP::FilenameSmartFieldArchive::~FilenameSmartFieldArchive(TSWP::FilenameSmartFieldArchive *this)
{
  if (this != &TSWP::_FilenameSmartFieldArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::PlaceholderSmartFieldArchive::~PlaceholderSmartFieldArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::FilenameSmartFieldArchive::~FilenameSmartFieldArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::FilenameSmartFieldArchive::default_instance(TSWP::FilenameSmartFieldArchive *this)
{
  if (atomic_load_explicit(scc_info_FilenameSmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_FilenameSmartFieldArchive_default_instance_;
}

uint64_t *TSWP::FilenameSmartFieldArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWP::PlaceholderSmartFieldArchive::Clear(this[3]);
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

google::protobuf::internal *TSWP::FilenameSmartFieldArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PlaceholderSmartFieldArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_276F5379C(a3, v16, v7);
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

unsigned __int8 *TSWP::FilenameSmartFieldArchive::_InternalSerialize(TSWP::FilenameSmartFieldArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::PlaceholderSmartFieldArchive::_InternalSerialize(v6, v8, a3);
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

uint64_t TSWP::FilenameSmartFieldArchive::ByteSizeLong(TSWP::FilenameSmartFieldArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = TSWP::PlaceholderSmartFieldArchive::ByteSizeLong(*(this + 3));
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
    v3 += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::FilenameSmartFieldArchive::MergeFrom(TSWP::FilenameSmartFieldArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::FilenameSmartFieldArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::FilenameSmartFieldArchive::MergeFrom(uint64_t this, const TSWP::FilenameSmartFieldArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PlaceholderSmartFieldArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWP::_PlaceholderSmartFieldArchive_default_instance_;
      }

      this = TSWP::PlaceholderSmartFieldArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSWP::FilenameSmartFieldArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::FilenameSmartFieldArchive::Clear(this);

    return TSWP::FilenameSmartFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::FilenameSmartFieldArchive::CopyFrom(uint64_t *this, const TSWP::FilenameSmartFieldArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::FilenameSmartFieldArchive::Clear(this);

    return TSWP::FilenameSmartFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::FilenameSmartFieldArchive::InternalSwap(TSWP::FilenameSmartFieldArchive *this, TSWP::FilenameSmartFieldArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
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

TSWP::MergeFieldTypeArchive *TSWP::MergeFieldTypeArchive::MergeFieldTypeArchive(TSWP::MergeFieldTypeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288603280;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MergeFieldTypeArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = v3;
  *(this + 6) = v3;
  return this;
}

TSWP::MergeFieldTypeArchive *TSWP::MergeFieldTypeArchive::MergeFieldTypeArchive(TSWP::MergeFieldTypeArchive *this, const TSWP::MergeFieldTypeArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288603280;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
    v4 = *(a2 + 4);
  }

  *(this + 5) = v6;
  if ((v4 & 4) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 6) = v6;
  if ((v4 & 8) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  return this;
}

void TSWP::MergeFieldTypeArchive::~MergeFieldTypeArchive(TSWP::MergeFieldTypeArchive *this)
{
  sub_276E942D4(this);
  sub_276E4E808(this + 1);
}

{
  TSWP::MergeFieldTypeArchive::~MergeFieldTypeArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t sub_276E942D4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  v4 = v1[4];
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277CA3D00](v4, 0x1012C40EC159624);
  }

  v5 = v1[5];
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277CA3D00](v5, 0x1012C40EC159624);
  }

  v6 = v1[6];
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    JUMPOUT(0x277CA3D00);
  }

  return result;
}

void *TSWP::MergeFieldTypeArchive::default_instance(TSWP::MergeFieldTypeArchive *this)
{
  if (atomic_load_explicit(scc_info_MergeFieldTypeArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_MergeFieldTypeArchive_default_instance_;
}

uint64_t *TSWP::MergeFieldTypeArchive::Clear(TSWP::MergeFieldTypeArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 0xF) == 0)
  {
    goto LABEL_22;
  }

  if ((v1 & 1) == 0)
  {
    if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v3 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

LABEL_19:
    v5 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }

    goto LABEL_22;
  }

  v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    **v2 = 0;
    *(v2 + 8) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_4:
  if ((v1 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v4 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  *v4 = 0;
  *(v4 + 23) = 0;
  if ((v1 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v7 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v7)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::MergeFieldTypeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  TagFallback = a2;
  while ((sub_276EA4A1C(a3, &TagFallback) & 1) == 0)
  {
    v5 = (TagFallback + 1);
    v6 = *TagFallback;
    if ((*TagFallback & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (TagFallback + 2);
LABEL_6:
      TagFallback = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(TagFallback, (v7 - 128));
    if (!TagFallback)
    {
      return 0;
    }

    v6 = v12;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 3)
    {
      if (v8 == 4)
      {
        if (v6 != 34)
        {
          goto LABEL_26;
        }

        *(a1 + 16) |= 4u;
      }

      else
      {
        if (v8 != 5 || v6 != 42)
        {
          goto LABEL_26;
        }

        *(a1 + 16) |= 8u;
      }
    }

    else if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_26;
      }

      *(a1 + 16) |= 1u;
    }

    else
    {
      if (v8 != 3 || v6 != 26)
      {
LABEL_26:
        if (v6)
        {
          v11 = (v6 & 7) == 4;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          *(a3 + 80) = v6 - 1;
          return TagFallback;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_24;
      }

      *(a1 + 16) |= 2u;
    }

    google::protobuf::internal::ArenaStringPtr::Mutable();
    v10 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_24:
    TagFallback = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return TagFallback;
}

uint64_t TSWP::MergeFieldTypeArchive::_InternalSerialize(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_276E5154C(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_276E5154C(a3, 3, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  v4 = sub_276E5154C(a3, 4, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) != 0)
  {
LABEL_5:
    v4 = sub_276E5154C(a3, 5, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_6:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::MergeFieldTypeArchive::ByteSizeLong(TSWP::MergeFieldTypeArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_17;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
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
    v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v13 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v13 + 23);
  v15 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v15 = v14;
  }

  v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_14:
    v9 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSWP::MergeFieldTypeArchive::MergeFrom(TSWP::MergeFieldTypeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::MergeFieldTypeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::MergeFieldTypeArchive::MergeFrom(uint64_t this, const TSWP::MergeFieldTypeArchive *a2)
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

        goto LABEL_11;
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
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return this;
      }

LABEL_12:
      *(v3 + 16) |= 8u;

      return google::protobuf::internal::ArenaStringPtr::Set();
    }

LABEL_11:
    *(v3 + 16) |= 4u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 8) == 0)
    {
      return this;
    }

    goto LABEL_12;
  }

  return this;
}

TSWP::MergeFieldTypeArchive *TSWP::MergeFieldTypeArchive::CopyFrom(TSWP::MergeFieldTypeArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::MergeFieldTypeArchive::Clear(this);

    return TSWP::MergeFieldTypeArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::MergeFieldTypeArchive *TSWP::MergeFieldTypeArchive::CopyFrom(TSWP::MergeFieldTypeArchive *this, const TSWP::MergeFieldTypeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::MergeFieldTypeArchive::Clear(this);

    return TSWP::MergeFieldTypeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::MergeFieldTypeArchive::InternalSwap(TSWP::MergeFieldTypeArchive *this, TSWP::MergeFieldTypeArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v9;
  return result;
}

TSWP::MergeSmartFieldArchive *TSWP::MergeSmartFieldArchive::MergeSmartFieldArchive(TSWP::MergeSmartFieldArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288603330;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MergeSmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 7) = v3;
  *(this + 8) = v3;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 86) = 0;
  return this;
}

TSWP::MergeSmartFieldArchive *TSWP::MergeSmartFieldArchive::MergeSmartFieldArchive(TSWP::MergeSmartFieldArchive *this, const TSWP::MergeSmartFieldArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288603330;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
    v4 = *(a2 + 4);
  }

  *(this + 5) = v6;
  if ((v4 & 4) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 6) = v6;
  if ((v4 & 8) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 7) = v6;
  if ((v4 & 0x10) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 8) = v6;
  if ((v4 & 0x20) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

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
  v7 = *(a2 + 22);
  *(this + 46) = *(a2 + 46);
  *(this + 22) = v7;
  return this;
}

void TSWP::MergeSmartFieldArchive::~MergeSmartFieldArchive(TSWP::MergeSmartFieldArchive *this)
{
  sub_276E94FE8(this);
  sub_276E4E808(this + 1);
}

{
  TSWP::MergeSmartFieldArchive::~MergeSmartFieldArchive(this);

  JUMPOUT(0x277CA3D00);
}

TSWP::MergeFieldTypeArchive *sub_276E94FE8(TSWP::MergeFieldTypeArchive *result)
{
  v1 = result;
  v2 = *(result + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277CA3D00](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 5);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277CA3D00](v5, 0x1012C40EC159624);
  }

  v6 = *(v1 + 6);
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = MEMORY[0x277CA3D00](v6, 0x1012C40EC159624);
  }

  v7 = *(v1 + 7);
  if (v7 != v3)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = MEMORY[0x277CA3D00](v7, 0x1012C40EC159624);
  }

  v8 = *(v1 + 8);
  if (v8 != v3)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    result = MEMORY[0x277CA3D00](v8, 0x1012C40EC159624);
  }

  if (v1 != &TSWP::_MergeSmartFieldArchive_default_instance_)
  {
    v9 = *(v1 + 9);
    if (v9)
    {
      TSWP::PlaceholderSmartFieldArchive::~PlaceholderSmartFieldArchive(v9);
      MEMORY[0x277CA3D00]();
    }

    result = *(v1 + 10);
    if (result)
    {
      TSWP::MergeFieldTypeArchive::~MergeFieldTypeArchive(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::MergeSmartFieldArchive::default_instance(TSWP::MergeSmartFieldArchive *this)
{
  if (atomic_load_explicit(scc_info_MergeSmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_MergeSmartFieldArchive_default_instance_;
}

uint64_t *TSWP::MergeSmartFieldArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_25:
    v7 = this[5] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_33:
    v9 = this[7] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_21:
  v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_29:
  v8 = this[6] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_33;
    }
  }

LABEL_7:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_37:
  v10 = this[8] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v10 + 23) < 0)
  {
    **v10 = 0;
    *(v10 + 8) = 0;
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_41;
    }

LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *v10 = 0;
  *(v10 + 23) = 0;
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_41:
  this = TSWP::PlaceholderSmartFieldArchive::Clear(this[9]);
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSWP::MergeFieldTypeArchive::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x700) != 0)
  {
    *(v1 + 92) = 0;
    *(v1 + 88) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::MergeSmartFieldArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_86;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 5)
      {
        if (v8 >> 3 <= 2)
        {
          if (v10 == 1)
          {
            if (v8 != 10)
            {
              goto LABEL_71;
            }

            *(a1 + 16) |= 0x40u;
            v20 = *(a1 + 72);
            if (!v20)
            {
              v21 = *(a1 + 8);
              if (v21)
              {
                v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
              }

              v20 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PlaceholderSmartFieldArchive>(v21);
              *(a1 + 72) = v20;
              v7 = v33;
            }

            v22 = sub_276F5379C(a3, v20, v7);
            goto LABEL_68;
          }

          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 1u;
        }

        else if (v10 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 2u;
        }

        else
        {
          if (v10 != 4)
          {
            if (v10 == 5 && v8 == 40)
            {
              v12 = (v7 + 1);
              v11 = *v7;
              if ((v11 & 0x8000000000000000) == 0)
              {
                goto LABEL_22;
              }

              v13 = *v12;
              v11 = (v13 << 7) + v11 - 128;
              if (v13 < 0)
              {
                v33 = google::protobuf::internal::VarintParseSlow64(v7, v11);
                if (!v33)
                {
                  goto LABEL_86;
                }
              }

              else
              {
                v12 = (v7 + 2);
LABEL_22:
                v33 = v12;
              }

              if (v11 > 1)
              {
                sub_276F53FE0();
              }

              else
              {
                *(a1 + 16) |= 0x100u;
                *(a1 + 88) = v11;
              }

              goto LABEL_69;
            }

            goto LABEL_71;
          }

          if (v8 != 34)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 4u;
        }

LABEL_67:
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v22 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_68;
      }

      if (v8 >> 3 > 8)
      {
        if (v10 == 9)
        {
          if (v8 != 74)
          {
            goto LABEL_71;
          }

          *(a1 + 16) |= 0x20u;
          goto LABEL_67;
        }

        if (v10 == 10)
        {
          if (v8 == 82)
          {
            *(a1 + 16) |= 0x80u;
            v23 = *(a1 + 80);
            if (!v23)
            {
              v24 = *(a1 + 8);
              if (v24)
              {
                v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSWP::MergeFieldTypeArchive>(v24);
              *(a1 + 80) = v23;
              v7 = v33;
            }

            v22 = sub_276F5386C(a3, v23, v7);
            goto LABEL_68;
          }

LABEL_71:
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
            sub_276EA4A94((a1 + 8));
          }

          v22 = google::protobuf::internal::UnknownFieldParse();
LABEL_68:
          v33 = v22;
          if (!v22)
          {
            goto LABEL_86;
          }

          goto LABEL_69;
        }

        if (v10 != 11 || v8 != 88)
        {
          goto LABEL_71;
        }

        v5 |= 0x400u;
        v15 = (v7 + 1);
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if ((v16 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_32:
          v33 = v15;
          *(a1 + 93) = v14 != 0;
          goto LABEL_69;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v7, v14);
        v33 = v29;
        *(a1 + 93) = v30 != 0;
        if (!v29)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v10 != 6)
        {
          if (v10 == 7)
          {
            if (v8 != 58)
            {
              goto LABEL_71;
            }

            *(a1 + 16) |= 8u;
          }

          else
          {
            if (v10 != 8 || v8 != 66)
            {
              goto LABEL_71;
            }

            *(a1 + 16) |= 0x10u;
          }

          goto LABEL_67;
        }

        if (v8 != 48)
        {
          goto LABEL_71;
        }

        v5 |= 0x200u;
        v26 = (v7 + 1);
        v25 = *v7;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_64;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if ((v27 & 0x80000000) == 0)
        {
          v26 = (v7 + 2);
LABEL_64:
          v33 = v26;
          *(a1 + 92) = v25 != 0;
          goto LABEL_69;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v7, v25);
        v33 = v31;
        *(a1 + 92) = v32 != 0;
        if (!v31)
        {
LABEL_86:
          v33 = 0;
          goto LABEL_2;
        }
      }

LABEL_69:
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

unsigned __int8 *TSWP::MergeSmartFieldArchive::_InternalSerialize(TSWP::MergeSmartFieldArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 9);
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

    v4 = TSWP::PlaceholderSmartFieldArchive::_InternalSerialize(v7, v9, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_276E5154C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4 = sub_276E5154C(a3, 3, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_6;
    }

LABEL_26:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 22);
    *v4 = 40;
    if (v13 > 0x7F)
    {
      v4[1] = v13 | 0x80;
      v14 = v13 >> 7;
      if (v13 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v14 | 0x80;
          v15 = v14 >> 7;
          ++v4;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
        *(v4 - 1) = v15;
        if ((v6 & 0x200) != 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v4[2] = v14;
        v4 += 3;
        if ((v6 & 0x200) != 0)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v4[1] = v13;
      v4 += 2;
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_25:
  v4 = sub_276E5154C(a3, 4, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_7;
  }

LABEL_37:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(this + 92);
  *v4 = 48;
  v4[1] = v17;
  v4 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  v4 = sub_276E5154C(a3, 7, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_9:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  v4 = sub_276E5154C(a3, 8, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_10:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  v4 = sub_276E5154C(a3, 9, (*(this + 8) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x80) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

LABEL_43:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v18 = *(this + 10);
  *v4 = 82;
  v19 = *(v18 + 20);
  if (v19 > 0x7F)
  {
    v4[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = v4 + 3;
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
      v4[2] = v21;
      v20 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v19;
    v20 = v4 + 2;
  }

  v4 = TSWP::MergeFieldTypeArchive::_InternalSerialize(v18, v20, a3);
  if ((v6 & 0x400) != 0)
  {
LABEL_53:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v24 = *(this + 93);
    *v4 = 88;
    v4[1] = v24;
    v4 += 2;
  }

LABEL_56:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v25 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::MergeSmartFieldArchive::ByteSizeLong(TSWP::MergeSmartFieldArchive *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
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
LABEL_9:
    v7 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v15 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v18 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  v20 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v20 = v19;
  }

  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_34:
  v21 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v21 + 23);
  v23 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v23 = v22;
  }

  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_37:
  v24 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
  v25 = *(v24 + 23);
  v26 = *(v24 + 8);
  if ((v25 & 0x80u) == 0)
  {
    v26 = v25;
  }

  v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_40:
  v27 = TSWP::PlaceholderSmartFieldArchive::ByteSizeLong(*(this + 9));
  v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v10 = TSWP::MergeFieldTypeArchive::ByteSizeLong(*(this + 10));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v2 & 0x700) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v11 = *(this + 22);
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v11 >= 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 11;
      }

      v3 += v13;
    }

    v3 += ((v2 >> 9) & 2) + ((v2 >> 8) & 2);
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

uint64_t TSWP::MergeSmartFieldArchive::MergeFrom(TSWP::MergeSmartFieldArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::MergeSmartFieldArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::MergeSmartFieldArchive::MergeFrom(uint64_t this, const TSWP::MergeSmartFieldArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (!v5)
  {
    goto LABEL_35;
  }

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

      goto LABEL_15;
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
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v3 + 16) |= 4u;
  this = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v3 + 16) |= 8u;
  this = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    *(v3 + 16) |= 0x20u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    goto LABEL_19;
  }

LABEL_17:
  *(v3 + 16) |= 0x10u;
  this = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_19:
  *(v3 + 16) |= 0x40u;
  v6 = *(v3 + 72);
  if (!v6)
  {
    v7 = *(v3 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PlaceholderSmartFieldArchive>(v7);
    *(v3 + 72) = v6;
  }

  if (*(a2 + 9))
  {
    v8 = *(a2 + 9);
  }

  else
  {
    v8 = &TSWP::_PlaceholderSmartFieldArchive_default_instance_;
  }

  this = TSWP::PlaceholderSmartFieldArchive::MergeFrom(v6, v8);
  if ((v5 & 0x80) != 0)
  {
LABEL_27:
    *(v3 + 16) |= 0x80u;
    v9 = *(v3 + 80);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSWP::MergeFieldTypeArchive>(v10);
      *(v3 + 80) = v9;
    }

    if (*(a2 + 10))
    {
      v11 = *(a2 + 10);
    }

    else
    {
      v11 = &TSWP::_MergeFieldTypeArchive_default_instance_;
    }

    this = TSWP::MergeFieldTypeArchive::MergeFrom(v9, v11);
  }

LABEL_35:
  if ((v5 & 0x700) == 0)
  {
    return this;
  }

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_38;
    }

LABEL_43:
    *(v3 + 92) = *(a2 + 92);
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  *(v3 + 88) = *(a2 + 22);
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_43;
  }

LABEL_38:
  if ((v5 & 0x400) != 0)
  {
LABEL_39:
    *(v3 + 93) = *(a2 + 93);
  }

LABEL_40:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t *TSWP::MergeSmartFieldArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::MergeSmartFieldArchive::Clear(this);

    return TSWP::MergeSmartFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::MergeSmartFieldArchive::CopyFrom(uint64_t *this, const TSWP::MergeSmartFieldArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::MergeSmartFieldArchive::Clear(this);

    return TSWP::MergeSmartFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSWP::MergeSmartFieldArchive::InternalSwap(TSWP::MergeSmartFieldArchive *this, TSWP::MergeSmartFieldArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  v12 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v11;
  *(a2 + 10) = v12;
  LODWORD(v11) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v11;
  LOWORD(v11) = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v11;
  return result;
}

TSP::Reference *TSWP::TOCSmartFieldArchive_TOCEntry::clear_target_style(TSWP::TOCSmartFieldArchive_TOCEntry *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Range *TSWP::TOCSmartFieldArchive_TOCEntry::clear_range(TSWP::TOCSmartFieldArchive_TOCEntry *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Range::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::TOCSmartFieldArchive_TOCEntry *TSWP::TOCSmartFieldArchive_TOCEntry::TOCSmartFieldArchive_TOCEntry(TSWP::TOCSmartFieldArchive_TOCEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886033E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TOCSmartFieldArchive_TOCEntry_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  return this;
}

TSWP::TOCSmartFieldArchive_TOCEntry *TSWP::TOCSmartFieldArchive_TOCEntry::TOCSmartFieldArchive_TOCEntry(TSWP::TOCSmartFieldArchive_TOCEntry *this, const TSWP::TOCSmartFieldArchive_TOCEntry *a2)
{
  *(this + 1) = 0;
  *this = &unk_2886033E0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  return this;
}

void TSWP::TOCSmartFieldArchive_TOCEntry::~TOCSmartFieldArchive_TOCEntry(TSWP::TOCSmartFieldArchive_TOCEntry *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  if (this != &TSWP::_TOCSmartFieldArchive_TOCEntry_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::Range::~Range(v4);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::TOCSmartFieldArchive_TOCEntry::~TOCSmartFieldArchive_TOCEntry(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::TOCSmartFieldArchive_TOCEntry::default_instance(TSWP::TOCSmartFieldArchive_TOCEntry *this)
{
  if (atomic_load_explicit(scc_info_TOCSmartFieldArchive_TOCEntry_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TOCSmartFieldArchive_TOCEntry_default_instance_;
}

uint64_t *TSWP::TOCSmartFieldArchive_TOCEntry::Clear(uint64_t *this)
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

    goto LABEL_14;
  }

  v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  this = TSP::Reference::Clear(this[4]);
  if ((v2 & 4) != 0)
  {
LABEL_5:
    this = TSP::Range::Clear(*(v1 + 40));
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::TOCSmartFieldArchive_TOCEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  while ((sub_276EA4A1C(a3, &v21) & 1) == 0)
  {
    v5 = (v21 + 1);
    v6 = *v21;
    if ((*v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v21 + 2);
LABEL_6:
      v21 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v7 - 128));
    v21 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v19;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 4u;
      v15 = *(a1 + 40);
      if (!v15)
      {
        v16 = *(a1 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = MEMORY[0x277CA3230](v16);
        LODWORD(v15) = v17;
        *(a1 + 40) = v17;
        v5 = v21;
      }

      v11 = sub_276F4F918(a3, v15, v5);
    }

    else if (v8 == 2)
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

        v14 = MEMORY[0x277CA3250](v13);
        LODWORD(v12) = v14;
        *(a1 + 32) = v14;
        v5 = v21;
      }

      v11 = sub_276F4F9E8(a3, v12, v5);
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
          return v21;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
        }

        v11 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_33;
      }

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v11 = google::protobuf::internal::InlineGreedyStringParser();
    }

LABEL_33:
    v21 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v21;
}

unsigned __int8 *TSWP::TOCSmartFieldArchive_TOCEntry::_InternalSerialize(TSWP::TOCSmartFieldArchive_TOCEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_276E5154C(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 4);
  *v4 = 18;
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

  v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  if ((v6 & 4) != 0)
  {
LABEL_16:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 5);
    *v4 = 26;
    v14 = *(v13 + 5);
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v16 = v14 >> 7;
      if (v14 >> 14)
      {
        v15 = v4 + 3;
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
        v4[2] = v16;
        v15 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v14;
      v15 = v4 + 2;
    }

    v4 = TSP::Range::_InternalSerialize(v13, v15, a3);
  }

LABEL_26:
  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TOCSmartFieldArchive_TOCEntry::ByteSizeLong(TSWP::TOCSmartFieldArchive_TOCEntry *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_12;
  }

  if (v2)
  {
    v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = TSP::Range::ByteSizeLong(*(this + 5));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
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

uint64_t TSWP::TOCSmartFieldArchive_TOCEntry::MergeFrom(TSWP::TOCSmartFieldArchive_TOCEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TOCSmartFieldArchive_TOCEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TOCSmartFieldArchive_TOCEntry::MergeFrom(uint64_t this, const TSWP::TOCSmartFieldArchive_TOCEntry *a2)
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return this;
        }

        goto LABEL_17;
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
    if ((v5 & 4) != 0)
    {
LABEL_17:
      *(v3 + 16) |= 4u;
      v9 = *(v3 + 40);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = MEMORY[0x277CA3230](v10);
        *(v3 + 40) = v9;
      }

      if (*(a2 + 5))
      {
        v11 = *(a2 + 5);
      }

      else
      {
        v11 = MEMORY[0x277D809F8];
      }

      return TSP::Range::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSWP::TOCSmartFieldArchive_TOCEntry::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCSmartFieldArchive_TOCEntry::Clear(this);

    return TSWP::TOCSmartFieldArchive_TOCEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TOCSmartFieldArchive_TOCEntry::CopyFrom(uint64_t *this, const TSWP::TOCSmartFieldArchive_TOCEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCSmartFieldArchive_TOCEntry::Clear(this);

    return TSWP::TOCSmartFieldArchive_TOCEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::TOCSmartFieldArchive_TOCEntry::IsInitialized(TSWP::TOCSmartFieldArchive_TOCEntry *this)
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

  result = TSP::Range::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::TOCSmartFieldArchive_TOCEntry::InternalSwap(__n128 *this, __n128 *a2)
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
  return result;
}

TSWP::TOCSmartFieldArchive *TSWP::TOCSmartFieldArchive::TOCSmartFieldArchive(TSWP::TOCSmartFieldArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288603490;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_TOCSmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSWP::TOCSmartFieldArchive *TSWP::TOCSmartFieldArchive::TOCSmartFieldArchive(TSWP::TOCSmartFieldArchive *this, const TSWP::TOCSmartFieldArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288603490;
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
    sub_276EA65A4(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  return this;
}

void sub_276E971F0(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v2, 0x10A1C40266FFC38);
  sub_276EA6520((v1 + 24));
  _Unwind_Resume(a1);
}

void TSWP::TOCSmartFieldArchive::~TOCSmartFieldArchive(TSWP::TOCSmartFieldArchive *this)
{
  if (this != &TSWP::_TOCSmartFieldArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSWP::PlaceholderSmartFieldArchive::~PlaceholderSmartFieldArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
  sub_276EA6520(this + 3);
}

{
  TSWP::TOCSmartFieldArchive::~TOCSmartFieldArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::TOCSmartFieldArchive::default_instance(TSWP::TOCSmartFieldArchive *this)
{
  if (atomic_load_explicit(scc_info_TOCSmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TOCSmartFieldArchive_default_instance_;
}

uint64_t *TSWP::TOCSmartFieldArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::TOCSmartFieldArchive_TOCEntry::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSWP::PlaceholderSmartFieldArchive::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_276EA4D28(v5);
  }

  return this;
}

google::protobuf::internal *TSWP::TOCSmartFieldArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while (1)
  {
LABEL_2:
    if (sub_276EA4A1C(a3, &v24))
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
        v15 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TOCSmartFieldArchive_TOCEntry>(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v24;
LABEL_26:
        v11 = sub_276F5393C(a3, v15, v12);
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

        v19 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PlaceholderSmartFieldArchive>(v20);
        *(a1 + 48) = v19;
        v5 = v24;
      }

      v10 = sub_276F5379C(a3, v19, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_276EA4A94((a1 + 8));
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

unsigned __int8 *TSWP::TOCSmartFieldArchive::_InternalSerialize(TSWP::TOCSmartFieldArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::PlaceholderSmartFieldArchive::_InternalSerialize(v5, v7, a3);
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

      a2 = TSWP::TOCSmartFieldArchive_TOCEntry::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TOCSmartFieldArchive::ByteSizeLong(TSWP::TOCSmartFieldArchive *this)
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
      v7 = TSWP::TOCSmartFieldArchive_TOCEntry::ByteSizeLong(v6);
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
    v8 = TSWP::PlaceholderSmartFieldArchive::ByteSizeLong(*(this + 6));
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

uint64_t TSWP::TOCSmartFieldArchive::MergeFrom(TSWP::TOCSmartFieldArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TOCSmartFieldArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TOCSmartFieldArchive::MergeFrom(uint64_t this, const TSWP::TOCSmartFieldArchive *a2)
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
    this = sub_276EA65A4(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

      v11 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PlaceholderSmartFieldArchive>(v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &TSWP::_PlaceholderSmartFieldArchive_default_instance_;
    }

    return TSWP::PlaceholderSmartFieldArchive::MergeFrom(v11, v13);
  }

  return this;
}

uint64_t *TSWP::TOCSmartFieldArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCSmartFieldArchive::Clear(this);

    return TSWP::TOCSmartFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TOCSmartFieldArchive::CopyFrom(uint64_t *this, const TSWP::TOCSmartFieldArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCSmartFieldArchive::Clear(this);

    return TSWP::TOCSmartFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWP::TOCSmartFieldArchive::IsInitialized(TSWP::TOCSmartFieldArchive *this)
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
    IsInitialized = TSWP::TOCSmartFieldArchive_TOCEntry::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSWP::TOCSmartFieldArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  return result;
}

TSWP::RubyFieldArchive *TSWP::RubyFieldArchive::RubyFieldArchive(TSWP::RubyFieldArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288603540;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RubyFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  return this;
}

TSWP::RubyFieldArchive *TSWP::RubyFieldArchive::RubyFieldArchive(TSWP::RubyFieldArchive *this, const TSWP::RubyFieldArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288603540;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  return this;
}

void TSWP::RubyFieldArchive::~RubyFieldArchive(TSWP::RubyFieldArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  if (this != &TSWP::_RubyFieldArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSWP::SmartFieldArchive::~SmartFieldArchive(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::RubyFieldArchive::~RubyFieldArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::RubyFieldArchive::default_instance(TSWP::RubyFieldArchive *this)
{
  if (atomic_load_explicit(scc_info_RubyFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_RubyFieldArchive_default_instance_;
}

uint64_t *TSWP::RubyFieldArchive::Clear(uint64_t *this)
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
      this = TSWP::SmartFieldArchive::Clear(this[4]);
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_276EA4D28(v4);
  }

  return this;
}

google::protobuf::internal *TSWP::RubyFieldArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v10 = google::protobuf::internal::InlineGreedyStringParser();
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
          return v16;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_26;
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v12);
        *(a1 + 32) = v11;
        v5 = v16;
      }

      v10 = sub_276F536CC(a3, v11, v5);
    }

LABEL_26:
    v16 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *TSWP::RubyFieldArchive::_InternalSerialize(TSWP::RubyFieldArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    v8 = *(v7 + 20);
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

    v4 = TSWP::SmartFieldArchive::_InternalSerialize(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_276E5154C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::RubyFieldArchive::ByteSizeLong(TSWP::RubyFieldArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = TSWP::SmartFieldArchive::ByteSizeLong(*(this + 4));
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

uint64_t TSWP::RubyFieldArchive::MergeFrom(TSWP::RubyFieldArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::RubyFieldArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::RubyFieldArchive::MergeFrom(uint64_t this, const TSWP::RubyFieldArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v7);
        *(v3 + 32) = v6;
      }

      if (*(a2 + 4))
      {
        v8 = *(a2 + 4);
      }

      else
      {
        v8 = &TSWP::_SmartFieldArchive_default_instance_;
      }

      return TSWP::SmartFieldArchive::MergeFrom(v6, v8);
    }
  }

  return this;
}

uint64_t *TSWP::RubyFieldArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::RubyFieldArchive::Clear(this);

    return TSWP::RubyFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::RubyFieldArchive::CopyFrom(uint64_t *this, const TSWP::RubyFieldArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::RubyFieldArchive::Clear(this);

    return TSWP::RubyFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::RubyFieldArchive::InternalSwap(TSWP::RubyFieldArchive *this, TSWP::RubyFieldArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
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

TSWP::TateChuYokoFieldArchive *TSWP::TateChuYokoFieldArchive::TateChuYokoFieldArchive(TSWP::TateChuYokoFieldArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886035F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TateChuYokoFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2886035F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TateChuYokoFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWP::TateChuYokoFieldArchive *TSWP::TateChuYokoFieldArchive::TateChuYokoFieldArchive(TSWP::TateChuYokoFieldArchive *this, const TSWP::TateChuYokoFieldArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886035F0;
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

void TSWP::TateChuYokoFieldArchive::~TateChuYokoFieldArchive(TSWP::TateChuYokoFieldArchive *this)
{
  if (this != &TSWP::_TateChuYokoFieldArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::SmartFieldArchive::~SmartFieldArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::TateChuYokoFieldArchive::~TateChuYokoFieldArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::TateChuYokoFieldArchive::default_instance(TSWP::TateChuYokoFieldArchive *this)
{
  if (atomic_load_explicit(scc_info_TateChuYokoFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TateChuYokoFieldArchive_default_instance_;
}

uint64_t *TSWP::TateChuYokoFieldArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWP::SmartFieldArchive::Clear(this[3]);
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

google::protobuf::internal *TSWP::TateChuYokoFieldArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_276F536CC(a3, v10, v5);
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

unsigned __int8 *TSWP::TateChuYokoFieldArchive::_InternalSerialize(TSWP::TateChuYokoFieldArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
    *a2 = 10;
    v6 = *(v5 + 20);
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

    a2 = TSWP::SmartFieldArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TateChuYokoFieldArchive::ByteSizeLong(TSWP::SmartFieldArchive **this)
{
  if (this[2])
  {
    v3 = TSWP::SmartFieldArchive::ByteSizeLong(this[3]);
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

uint64_t TSWP::TateChuYokoFieldArchive::MergeFrom(TSWP::TateChuYokoFieldArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TateChuYokoFieldArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TateChuYokoFieldArchive::MergeFrom(uint64_t this, const TSWP::TateChuYokoFieldArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSWP::_SmartFieldArchive_default_instance_;
    }

    return TSWP::SmartFieldArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSWP::TateChuYokoFieldArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TateChuYokoFieldArchive::Clear(this);

    return TSWP::TateChuYokoFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TateChuYokoFieldArchive::CopyFrom(uint64_t *this, const TSWP::TateChuYokoFieldArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TateChuYokoFieldArchive::Clear(this);

    return TSWP::TateChuYokoFieldArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TateChuYokoFieldArchive::InternalSwap(TSWP::TateChuYokoFieldArchive *this, TSWP::TateChuYokoFieldArchive *a2)
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

TSP::Reference *TSWP::ChangeArchive::clear_session(TSWP::ChangeArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Date *TSWP::ChangeArchive::clear_date(TSWP::ChangeArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::ChangeArchive *TSWP::ChangeArchive::ChangeArchive(TSWP::ChangeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886036A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ChangeArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  *(this + 12) = 1;
  return this;
}

TSWP::ChangeArchive *TSWP::ChangeArchive::ChangeArchive(TSWP::ChangeArchive *this, const TSWP::ChangeArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2886036A0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  *(this + 12) = *(a2 + 12);
  return this;
}

void TSWP::ChangeArchive::~ChangeArchive(TSWP::ChangeArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  if (this != &TSWP::_ChangeArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::Date::~Date(v4);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::ChangeArchive::~ChangeArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::ChangeArchive::default_instance(TSWP::ChangeArchive *this)
{
  if (atomic_load_explicit(scc_info_ChangeArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ChangeArchive_default_instance_;
}

uint64_t *TSWP::ChangeArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) != 0)
  {
    if ((v2 & 1) == 0)
    {
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      this = TSP::Reference::Clear(this[4]);
      if ((v2 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
LABEL_6:
      *(v1 + 48) = 1;
      goto LABEL_7;
    }

LABEL_5:
    this = TSP::Date::Clear(*(v1 + 40));
    goto LABEL_6;
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::ChangeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while ((sub_276EA4A1C(a3, &v24) & 1) == 0)
  {
    v5 = (v24 + 1);
    v6 = *v24;
    if (*v24 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v7 - 128));
        v24 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v22;
        goto LABEL_7;
      }

      v5 = (v24 + 2);
    }

    v24 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_36;
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

          v19 = MEMORY[0x277CA31F0](v18);
          LODWORD(v17) = v19;
          *(a1 + 40) = v19;
          v5 = v24;
        }

        v13 = sub_276F52514(a3, v17, v5);
      }

      else
      {
        if (v8 != 4 || v6 != 34)
        {
          goto LABEL_36;
        }

        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v13 = google::protobuf::internal::InlineGreedyStringParser();
      }

      goto LABEL_43;
    }

    if (v8 == 1)
    {
      if (v6 != 8)
      {
        goto LABEL_36;
      }

      v15 = (v5 + 1);
      v14 = *v5;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v16 = *v15;
      v14 = (v16 << 7) + v14 - 128;
      if ((v16 & 0x80000000) == 0)
      {
        v15 = (v5 + 2);
LABEL_27:
        v24 = v15;
        goto LABEL_28;
      }

      v24 = google::protobuf::internal::VarintParseSlow64(v5, v14);
      if (!v24)
      {
        return 0;
      }

LABEL_28:
      if ((v14 - 1) > 1)
      {
        sub_276F53EA8();
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 48) = v14;
      }
    }

    else
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_36:
        if (v6)
        {
          v20 = (v6 & 7) == 4;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          *(a3 + 80) = v6 - 1;
          return v24;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_43;
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

        v12 = MEMORY[0x277CA3250](v11);
        LODWORD(v10) = v12;
        *(a1 + 32) = v12;
        v5 = v24;
      }

      v13 = sub_276F4F9E8(a3, v10, v5);
LABEL_43:
      v24 = v13;
      if (!v13)
      {
        return 0;
      }
    }
  }

  return v24;
}

unsigned __int8 *TSWP::ChangeArchive::_InternalSerialize(TSWP::ChangeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 12);
    *v4 = 8;
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v10 = v9 >> 7;
      if (v9 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v4;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v4 - 1) = v11;
        if ((v6 & 2) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v4[2] = v10;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v4[1] = v9;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_19:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 4);
  *v4 = 18;
  v14 = *(v13 + 5);
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = v4 + 3;
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
      v4[2] = v16;
      v15 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v14;
    v15 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_29:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 5);
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
  if (v6)
  {
LABEL_5:
    v4 = sub_276E5154C(a3, 4, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_6:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ChangeArchive::ByteSizeLong(TSWP::ChangeArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = TSP::Reference::ByteSizeLong(*(this + 4));
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
    v8 = TSP::Date::ByteSizeLong(*(this + 5));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_14:
    v9 = *(this + 12);
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v10;
    goto LABEL_18;
  }

  if ((v2 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_18:
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