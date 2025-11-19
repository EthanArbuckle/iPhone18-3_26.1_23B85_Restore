unsigned __int8 *TSSSOS::SpecSetIntegerArchive::_InternalSerialize(TSSSOS::SpecSetIntegerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        goto LABEL_13;
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
        v11 = v7 >> 7;
        ++a2;
        v12 = v7 >> 14;
        v7 >>= 7;
      }

      while (v12);
      *(a2 - 1) = v11;
      if ((v5 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 28);
  *a2 = 16;
  a2[1] = v8;
  a2 += 2;
LABEL_13:
  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v9 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSSSOS::SpecSetIntegerArchive::RequiredFieldsByteSizeFallback(TSSSOS::SpecSetIntegerArchive *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v3 = *(this + 6);
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

  return v2 + (v1 & 2);
}

uint64_t TSSSOS::SpecSetIntegerArchive::ByteSizeLong(TSSSOS::SpecSetIntegerArchive *this)
{
  v1 = *(this + 4);
  if ((~v1 & 3) != 0)
  {
    if (v1)
    {
      v5 = *(this + 6);
      if (v5 < 0)
      {
        v4 = 11;
      }

      else
      {
        v4 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }
    }

    else
    {
      v4 = 0;
    }

    v3 = v4 + (v1 & 2);
  }

  else
  {
    v2 = *(this + 6);
    if (v2 < 0)
    {
      v3 = 13;
    }

    else
    {
      v3 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 3;
    }
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSSSOS::SpecSetIntegerArchive::MergeFrom(TSSSOS::SpecSetIntegerArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSSSOS::SpecSetIntegerArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSSSOS::SpecSetIntegerArchive::MergeFrom(uint64_t this, const TSSSOS::SpecSetIntegerArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 24) = *(a2 + 6);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 28) = *(a2 + 28);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

TSSSOS::SpecSetIntegerArchive *TSSSOS::SpecSetIntegerArchive::CopyFrom(TSSSOS::SpecSetIntegerArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecSetIntegerArchive::Clear(this);

    return TSSSOS::SpecSetIntegerArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSSSOS::SpecSetIntegerArchive *TSSSOS::SpecSetIntegerArchive::CopyFrom(TSSSOS::SpecSetIntegerArchive *this, const TSSSOS::SpecSetIntegerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecSetIntegerArchive::Clear(this);

    return TSSSOS::SpecSetIntegerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSSSOS::SpecSetIntegerArchive::InternalSwap(TSSSOS::SpecSetIntegerArchive *this, TSSSOS::SpecSetIntegerArchive *a2)
{
  result = sub_276CC4DA4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  LOBYTE(v6) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v6;
  return result;
}

uint64_t TSSSOS::SpecSetIntegerArchive::GetMetadata(TSSSOS::SpecSetIntegerArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FB118[6];
  v2 = off_2812FB118[7];
  return result;
}

TSSSOS::SpecSetStringArchive *TSSSOS::SpecSetStringArchive::SpecSetStringArchive(TSSSOS::SpecSetStringArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E7480;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetStringArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 32) = 0;
  return this;
}

TSSSOS::SpecSetStringArchive *TSSSOS::SpecSetStringArchive::SpecSetStringArchive(TSSSOS::SpecSetStringArchive *this, const TSSSOS::SpecSetStringArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E7480;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276CD80C8(this + 1, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

  *(this + 32) = *(a2 + 32);
  return this;
}

void TSSSOS::SpecSetStringArchive::~SpecSetStringArchive(TSSSOS::SpecSetStringArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA0980](v2, 0x1012C40EC159624);
  }

  sub_276CC409C(this + 1);
}

{
  TSSSOS::SpecSetStringArchive::~SpecSetStringArchive(this);

  JUMPOUT(0x277CA0980);
}

void *TSSSOS::SpecSetStringArchive::default_instance(TSSSOS::SpecSetStringArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetStringArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSSSOS::_SpecSetStringArchive_default_instance_;
}

uint64_t *TSSSOS::SpecSetStringArchive::Clear(TSSSOS::SpecSetStringArchive *this)
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
  *(result + 24) = 0;
  *(result + 2) = 0;
  if (v3)
  {
    return sub_276CD8114(result);
  }

  return result;
}

google::protobuf::internal *TSSSOS::SpecSetStringArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_276CD7ED8(a3, &v24) & 1) == 0)
  {
    while (1)
    {
      v8 = (v24 + 1);
      v9 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v10 - 128));
      v24 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_35;
      }

      v8 = TagFallback;
      v9 = v20;
LABEL_7:
      if (v9 >> 3 != 2)
      {
        if (v9 >> 3 == 1 && v9 == 10)
        {
          *(a1 + 16) |= 1u;
          v17 = *(a1 + 8);
          if (v17)
          {
            v23 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::internal::ArenaStringPtr::Mutable();
          v13 = google::protobuf::internal::InlineGreedyStringParser();
        }

        else
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276CD7F50((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        v24 = v13;
        if (!v13)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      if (v9 != 16)
      {
        goto LABEL_12;
      }

      v6 |= 2u;
      v15 = (v8 + 1);
      v14 = *v8;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v16 = *v15;
      v14 = (v16 << 7) + v14 - 128;
      if ((v16 & 0x80000000) == 0)
      {
        v15 = (v8 + 2);
LABEL_23:
        v24 = v15;
        *(a1 + 32) = v14 != 0;
        goto LABEL_28;
      }

      v21 = google::protobuf::internal::VarintParseSlow64(v8, v14);
      v24 = v21;
      *(a1 + 32) = v22 != 0;
      if (!v21)
      {
LABEL_35:
        v24 = 0;
        goto LABEL_2;
      }

LABEL_28:
      v18 = *(a3 + 92);
      if (sub_276CD7ED8(a3, &v24))
      {
        goto LABEL_2;
      }
    }

    v8 = (v24 + 2);
LABEL_6:
    v24 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v24;
}

unsigned __int8 *TSSSOS::SpecSetStringArchive::_InternalSerialize(TSSSOS::SpecSetStringArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_276CC4788(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 32);
    *v4 = 16;
    v4[1] = v7;
    v4 += 2;
  }

  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v8 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSSSOS::SpecSetStringArchive::ByteSizeLong(TSSSOS::SpecSetStringArchive *this)
{
  v1 = *(this + 4);
  v2 = v1 & 2;
  if (v1)
  {
    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSSSOS::SpecSetStringArchive::MergeFrom(TSSSOS::SpecSetStringArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSSSOS::SpecSetStringArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSSSOS::SpecSetStringArchive::MergeFrom(uint64_t this, const TSSSOS::SpecSetStringArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

TSSSOS::SpecSetStringArchive *TSSSOS::SpecSetStringArchive::CopyFrom(TSSSOS::SpecSetStringArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecSetStringArchive::Clear(this);

    return TSSSOS::SpecSetStringArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSSSOS::SpecSetStringArchive *TSSSOS::SpecSetStringArchive::CopyFrom(TSSSOS::SpecSetStringArchive *this, const TSSSOS::SpecSetStringArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecSetStringArchive::Clear(this);

    return TSSSOS::SpecSetStringArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSSSOS::SpecSetStringArchive::InternalSwap(TSSSOS::SpecSetStringArchive *this, TSSSOS::SpecSetStringArchive *a2)
{
  result = sub_276CC4DA4(this + 1, a2 + 1);
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

uint64_t TSSSOS::SpecSetStringArchive::GetMetadata(TSSSOS::SpecSetStringArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FB118[8];
  v2 = off_2812FB118[9];
  return result;
}

TSSSOS::SpecBoolArchive *TSSSOS::SpecBoolArchive::SpecBoolArchive(TSSSOS::SpecBoolArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E7530;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecBoolArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885E7530;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecBoolArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSSSOS::SpecBoolArchive *TSSSOS::SpecBoolArchive::SpecBoolArchive(TSSSOS::SpecBoolArchive *this, const TSSSOS::SpecBoolArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E7530;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276CD80C8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSSSOS::SpecBoolArchive::~SpecBoolArchive(TSSSOS::SpecBoolArchive *this)
{
  if (this != &TSSSOS::_SpecBoolArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_276CC409C((v2 + 8));
      MEMORY[0x277CA0980](v2, 0x1081C40BBCAAB7CLL);
    }
  }

  sub_276CC409C(this + 1);
}

{
  TSSSOS::SpecBoolArchive::~SpecBoolArchive(this);

  JUMPOUT(0x277CA0980);
}

uint64_t *TSSSOS::SpecBoolArchive::default_instance(TSSSOS::SpecBoolArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecBoolArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSSSOS::_SpecBoolArchive_default_instance_;
}

uint64_t *TSSSOS::SpecBoolArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    v2 = this[3];
    v3 = *(v2 + 8);
    this = (v2 + 8);
    *(this + 8) = 0;
    *(this + 2) = 0;
    if (v3)
    {
      this = sub_276CD8114(this);
    }
  }

  v5 = *(v1 + 8);
  v4 = v1 + 1;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_276CD8114(v4);
  }

  return this;
}

google::protobuf::internal *TSSSOS::SpecBoolArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  v5 = *(a3 + 92);
  while ((sub_276CD7ED8(a3, &v17) & 1) == 0)
  {
    v6 = (v17 + 1);
    v7 = *v17;
    if (*v17 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v8 - 128));
        v17 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v15;
        goto LABEL_7;
      }

      v6 = (v17 + 2);
    }

    v17 = v6;
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSSSOS::SpecSetBoolArchive>(v12);
        *(a1 + 24) = v11;
        v6 = v17;
      }

      v10 = sub_276CE24AC(a3, v11, v6);
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
        return v17;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276CD7F50((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v17 = v10;
    if (!v10)
    {
      return 0;
    }

    v13 = *(a3 + 92);
  }

  return v17;
}

unsigned __int8 *TSSSOS::SpecBoolArchive::_InternalSerialize(TSSSOS::SpecBoolArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSSSOS::SpecSetBoolArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSSSOS::SpecBoolArchive::ByteSizeLong(TSSSOS::SpecSetBoolArchive **this)
{
  if (this[2])
  {
    v3 = TSSSOS::SpecSetBoolArchive::ByteSizeLong(this[3]);
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

uint64_t TSSSOS::SpecBoolArchive::MergeFrom(TSSSOS::SpecBoolArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSSSOS::SpecBoolArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSSSOS::SpecBoolArchive::MergeFrom(uint64_t this, const TSSSOS::SpecBoolArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSSSOS::SpecSetBoolArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSSSOS::_SpecSetBoolArchive_default_instance_;
    }

    return TSSSOS::SpecSetBoolArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSSSOS::SpecBoolArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecBoolArchive::Clear(this);

    return TSSSOS::SpecBoolArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSSSOS::SpecBoolArchive::CopyFrom(uint64_t *this, const TSSSOS::SpecBoolArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecBoolArchive::Clear(this);

    return TSSSOS::SpecBoolArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSSSOS::SpecBoolArchive::InternalSwap(TSSSOS::SpecBoolArchive *this, TSSSOS::SpecBoolArchive *a2)
{
  result = sub_276CC4DA4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t TSSSOS::SpecBoolArchive::GetMetadata(TSSSOS::SpecBoolArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FB118[10];
  v2 = off_2812FB118[11];
  return result;
}

TSSSOS::SpecColorArchive *TSSSOS::SpecColorArchive::SpecColorArchive(TSSSOS::SpecColorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E75E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecColorArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885E75E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecColorArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSSSOS::SpecColorArchive *TSSSOS::SpecColorArchive::SpecColorArchive(TSSSOS::SpecColorArchive *this, const TSSSOS::SpecColorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E75E0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276CD80C8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSSSOS::SpecColorArchive::~SpecColorArchive(TSSSOS::SpecColorArchive *this)
{
  if (this != &TSSSOS::_SpecColorArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSSSOS::SpecSetColorArchive::~SpecSetColorArchive(v2);
      MEMORY[0x277CA0980]();
    }
  }

  sub_276CC409C(this + 1);
}

{
  TSSSOS::SpecColorArchive::~SpecColorArchive(this);

  JUMPOUT(0x277CA0980);
}

uint64_t *TSSSOS::SpecColorArchive::default_instance(TSSSOS::SpecColorArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecColorArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSSSOS::_SpecColorArchive_default_instance_;
}

uint64_t *TSSSOS::SpecColorArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSSSOS::SpecSetColorArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276CD8114(v2);
  }

  return this;
}

google::protobuf::internal *TSSSOS::SpecColorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  v5 = *(a3 + 92);
  while ((sub_276CD7ED8(a3, &v17) & 1) == 0)
  {
    v6 = (v17 + 1);
    v7 = *v17;
    if (*v17 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v8 - 128));
        v17 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v15;
        goto LABEL_7;
      }

      v6 = (v17 + 2);
    }

    v17 = v6;
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSSSOS::SpecSetColorArchive>(v12);
        *(a1 + 24) = v11;
        v6 = v17;
      }

      v10 = sub_276CE257C(a3, v11, v6);
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
        return v17;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276CD7F50((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v17 = v10;
    if (!v10)
    {
      return 0;
    }

    v13 = *(a3 + 92);
  }

  return v17;
}

unsigned __int8 *TSSSOS::SpecColorArchive::_InternalSerialize(TSSSOS::SpecColorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSSSOS::SpecSetColorArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSSSOS::SpecColorArchive::ByteSizeLong(TSSSOS::SpecSetColorArchive **this)
{
  if (this[2])
  {
    v3 = TSSSOS::SpecSetColorArchive::ByteSizeLong(this[3]);
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

uint64_t TSSSOS::SpecColorArchive::MergeFrom(TSSSOS::SpecColorArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSSSOS::SpecColorArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSSSOS::SpecColorArchive::MergeFrom(uint64_t this, const TSSSOS::SpecColorArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSSSOS::SpecSetColorArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSSSOS::_SpecSetColorArchive_default_instance_;
    }

    return TSSSOS::SpecSetColorArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSSSOS::SpecColorArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecColorArchive::Clear(this);

    return TSSSOS::SpecColorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSSSOS::SpecColorArchive::CopyFrom(uint64_t *this, const TSSSOS::SpecColorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecColorArchive::Clear(this);

    return TSSSOS::SpecColorArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSSSOS::SpecColorArchive::IsInitialized(TSSSOS::SpecColorArchive *this)
{
  result = 1;
  if (*(this + 16))
  {
    v2 = *(this + 3);
    v3 = *(v2 + 16);
    if ((v3 & 2) == 0 || (v3 & 1) != 0 && (TSP::Color::IsInitialized(*(v2 + 24)) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *TSSSOS::SpecColorArchive::InternalSwap(TSSSOS::SpecColorArchive *this, TSSSOS::SpecColorArchive *a2)
{
  result = sub_276CC4DA4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t TSSSOS::SpecColorArchive::GetMetadata(TSSSOS::SpecColorArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FB118[12];
  v2 = off_2812FB118[13];
  return result;
}

TSSSOS::SpecDoubleArchive *TSSSOS::SpecDoubleArchive::SpecDoubleArchive(TSSSOS::SpecDoubleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E7690;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecDoubleArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885E7690;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecDoubleArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSSSOS::SpecDoubleArchive *TSSSOS::SpecDoubleArchive::SpecDoubleArchive(TSSSOS::SpecDoubleArchive *this, const TSSSOS::SpecDoubleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E7690;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276CD80C8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSSSOS::SpecDoubleArchive::~SpecDoubleArchive(TSSSOS::SpecDoubleArchive *this)
{
  if (this != &TSSSOS::_SpecDoubleArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_276CC409C((v2 + 8));
      MEMORY[0x277CA0980](v2, 0x1081C401EA54B31);
    }
  }

  sub_276CC409C(this + 1);
}

{
  TSSSOS::SpecDoubleArchive::~SpecDoubleArchive(this);

  JUMPOUT(0x277CA0980);
}

uint64_t *TSSSOS::SpecDoubleArchive::default_instance(TSSSOS::SpecDoubleArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecDoubleArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSSSOS::_SpecDoubleArchive_default_instance_;
}

uint64_t *TSSSOS::SpecDoubleArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSSSOS::SpecSetDoubleArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276CD8114(v2);
  }

  return this;
}

google::protobuf::internal *TSSSOS::SpecDoubleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  v5 = *(a3 + 92);
  while ((sub_276CD7ED8(a3, &v17) & 1) == 0)
  {
    v6 = (v17 + 1);
    v7 = *v17;
    if (*v17 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v8 - 128));
        v17 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v15;
        goto LABEL_7;
      }

      v6 = (v17 + 2);
    }

    v17 = v6;
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSSSOS::SpecSetDoubleArchive>(v12);
        *(a1 + 24) = v11;
        v6 = v17;
      }

      v10 = sub_276CE264C(a3, v11, v6);
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
        return v17;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276CD7F50((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v17 = v10;
    if (!v10)
    {
      return 0;
    }

    v13 = *(a3 + 92);
  }

  return v17;
}

unsigned __int8 *TSSSOS::SpecDoubleArchive::_InternalSerialize(TSSSOS::SpecDoubleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSSSOS::SpecSetDoubleArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSSSOS::SpecDoubleArchive::ByteSizeLong(TSSSOS::SpecSetDoubleArchive **this)
{
  if (this[2])
  {
    v3 = TSSSOS::SpecSetDoubleArchive::ByteSizeLong(this[3]);
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

uint64_t TSSSOS::SpecDoubleArchive::MergeFrom(TSSSOS::SpecDoubleArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSSSOS::SpecDoubleArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSSSOS::SpecDoubleArchive::MergeFrom(uint64_t this, const TSSSOS::SpecDoubleArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSSSOS::SpecSetDoubleArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSSSOS::_SpecSetDoubleArchive_default_instance_;
    }

    return TSSSOS::SpecSetDoubleArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSSSOS::SpecDoubleArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecDoubleArchive::Clear(this);

    return TSSSOS::SpecDoubleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSSSOS::SpecDoubleArchive::CopyFrom(uint64_t *this, const TSSSOS::SpecDoubleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecDoubleArchive::Clear(this);

    return TSSSOS::SpecDoubleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSSSOS::SpecDoubleArchive::InternalSwap(TSSSOS::SpecDoubleArchive *this, TSSSOS::SpecDoubleArchive *a2)
{
  result = sub_276CC4DA4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t TSSSOS::SpecDoubleArchive::GetMetadata(TSSSOS::SpecDoubleArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FB118[14];
  v2 = off_2812FB118[15];
  return result;
}

TSSSOS::SpecIntegerArchive *TSSSOS::SpecIntegerArchive::SpecIntegerArchive(TSSSOS::SpecIntegerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E7740;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecIntegerArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885E7740;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecIntegerArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSSSOS::SpecIntegerArchive *TSSSOS::SpecIntegerArchive::SpecIntegerArchive(TSSSOS::SpecIntegerArchive *this, const TSSSOS::SpecIntegerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E7740;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276CD80C8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSSSOS::SpecIntegerArchive::~SpecIntegerArchive(TSSSOS::SpecIntegerArchive *this)
{
  if (this != &TSSSOS::_SpecIntegerArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_276CC409C((v2 + 8));
      MEMORY[0x277CA0980](v2, 0x1081C40E25C5AF7);
    }
  }

  sub_276CC409C(this + 1);
}

{
  TSSSOS::SpecIntegerArchive::~SpecIntegerArchive(this);

  JUMPOUT(0x277CA0980);
}

uint64_t *TSSSOS::SpecIntegerArchive::default_instance(TSSSOS::SpecIntegerArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecIntegerArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSSSOS::_SpecIntegerArchive_default_instance_;
}

uint64_t *TSSSOS::SpecIntegerArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSSSOS::SpecSetIntegerArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276CD8114(v2);
  }

  return this;
}

google::protobuf::internal *TSSSOS::SpecIntegerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  v5 = *(a3 + 92);
  while ((sub_276CD7ED8(a3, &v17) & 1) == 0)
  {
    v6 = (v17 + 1);
    v7 = *v17;
    if (*v17 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v8 - 128));
        v17 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v15;
        goto LABEL_7;
      }

      v6 = (v17 + 2);
    }

    v17 = v6;
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSSSOS::SpecSetIntegerArchive>(v12);
        *(a1 + 24) = v11;
        v6 = v17;
      }

      v10 = sub_276CE271C(a3, v11, v6);
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
        return v17;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276CD7F50((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v17 = v10;
    if (!v10)
    {
      return 0;
    }

    v13 = *(a3 + 92);
  }

  return v17;
}

unsigned __int8 *TSSSOS::SpecIntegerArchive::_InternalSerialize(TSSSOS::SpecIntegerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSSSOS::SpecSetIntegerArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSSSOS::SpecIntegerArchive::ByteSizeLong(TSSSOS::SpecSetIntegerArchive **this)
{
  if (this[2])
  {
    v3 = TSSSOS::SpecSetIntegerArchive::ByteSizeLong(this[3]);
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

uint64_t TSSSOS::SpecIntegerArchive::MergeFrom(TSSSOS::SpecIntegerArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSSSOS::SpecIntegerArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSSSOS::SpecIntegerArchive::MergeFrom(uint64_t this, const TSSSOS::SpecIntegerArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSSSOS::SpecSetIntegerArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSSSOS::_SpecSetIntegerArchive_default_instance_;
    }

    return TSSSOS::SpecSetIntegerArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSSSOS::SpecIntegerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecIntegerArchive::Clear(this);

    return TSSSOS::SpecIntegerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSSSOS::SpecIntegerArchive::CopyFrom(uint64_t *this, const TSSSOS::SpecIntegerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecIntegerArchive::Clear(this);

    return TSSSOS::SpecIntegerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSSSOS::SpecIntegerArchive::InternalSwap(TSSSOS::SpecIntegerArchive *this, TSSSOS::SpecIntegerArchive *a2)
{
  result = sub_276CC4DA4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t TSSSOS::SpecIntegerArchive::GetMetadata(TSSSOS::SpecIntegerArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FB118[16];
  v2 = off_2812FB118[17];
  return result;
}

TSSSOS::SpecStringArchive *TSSSOS::SpecStringArchive::SpecStringArchive(TSSSOS::SpecStringArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E77F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecStringArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885E77F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecStringArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSSSOS::SpecStringArchive *TSSSOS::SpecStringArchive::SpecStringArchive(TSSSOS::SpecStringArchive *this, const TSSSOS::SpecStringArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E77F0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276CD80C8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSSSOS::SpecStringArchive::~SpecStringArchive(TSSSOS::SpecStringArchive *this)
{
  if (this != &TSSSOS::_SpecStringArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSSSOS::SpecSetStringArchive::~SpecSetStringArchive(v2);
      MEMORY[0x277CA0980]();
    }
  }

  sub_276CC409C(this + 1);
}

{
  TSSSOS::SpecStringArchive::~SpecStringArchive(this);

  JUMPOUT(0x277CA0980);
}

uint64_t *TSSSOS::SpecStringArchive::default_instance(TSSSOS::SpecStringArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecStringArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSSSOS::_SpecStringArchive_default_instance_;
}

uint64_t *TSSSOS::SpecStringArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSSSOS::SpecSetStringArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276CD8114(v2);
  }

  return this;
}

google::protobuf::internal *TSSSOS::SpecStringArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  v5 = *(a3 + 92);
  while ((sub_276CD7ED8(a3, &v17) & 1) == 0)
  {
    v6 = (v17 + 1);
    v7 = *v17;
    if (*v17 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v8 - 128));
        v17 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v15;
        goto LABEL_7;
      }

      v6 = (v17 + 2);
    }

    v17 = v6;
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSSSOS::SpecSetStringArchive>(v12);
        *(a1 + 24) = v11;
        v6 = v17;
      }

      v10 = sub_276CE27EC(a3, v11, v6);
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
        return v17;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276CD7F50((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v17 = v10;
    if (!v10)
    {
      return 0;
    }

    v13 = *(a3 + 92);
  }

  return v17;
}

unsigned __int8 *TSSSOS::SpecStringArchive::_InternalSerialize(TSSSOS::SpecStringArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSSSOS::SpecSetStringArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSSSOS::SpecStringArchive::ByteSizeLong(TSSSOS::SpecSetStringArchive **this)
{
  if (this[2])
  {
    v3 = TSSSOS::SpecSetStringArchive::ByteSizeLong(this[3]);
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

uint64_t TSSSOS::SpecStringArchive::MergeFrom(TSSSOS::SpecStringArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSSSOS::SpecStringArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSSSOS::SpecStringArchive::MergeFrom(uint64_t this, const TSSSOS::SpecStringArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSSSOS::SpecSetStringArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSSSOS::_SpecSetStringArchive_default_instance_;
    }

    return TSSSOS::SpecSetStringArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSSSOS::SpecStringArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecStringArchive::Clear(this);

    return TSSSOS::SpecStringArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSSSOS::SpecStringArchive::CopyFrom(uint64_t *this, const TSSSOS::SpecStringArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecStringArchive::Clear(this);

    return TSSSOS::SpecStringArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSSSOS::SpecStringArchive::InternalSwap(TSSSOS::SpecStringArchive *this, TSSSOS::SpecStringArchive *a2)
{
  result = sub_276CC4DA4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t TSSSOS::SpecStringArchive::GetMetadata(TSSSOS::SpecStringArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FB118[18];
  v2 = off_2812FB118[19];
  return result;
}

uint64_t sub_276CDEDF4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276CDF594(a1, 1);
  *result = &unk_2885E71C0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_276CDEE68(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276CDF63C(a1);
}

uint64_t sub_276CDEF38(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276CDF740(a1, 1);
  *result = &unk_2885E7320;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_276CDEFAC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276CDF7E8(a1, 1);
  *result = &unk_2885E73D0;
  result[1] = a1;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

TSSSOS::SpecSetStringArchive *sub_276CDF020(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276CDF890(a1, 1);
  TSSSOS::SpecSetStringArchive::SpecSetStringArchive(v2, a1);
  return v2;
}

void *sub_276CDF0AC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276CDF91C(a1);
}

void *sub_276CDF178(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276CDFA1C(a1);
}

void *sub_276CDF244(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276CDFB1C(a1);
}

void *sub_276CDF310(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276CDFC1C(a1);
}

void *sub_276CDF3DC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276CDFD1C(a1);
}

uint64_t sub_276CDF594(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE28BC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276CDF61C);
}

uint64_t sub_276CDF63C(uint64_t a1)
{
  v2 = sub_276CDF6B4(a1, 1);
  *v2 = &unk_2885E7270;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecSetColorArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276CDF6B4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE28EC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSSSOS::SpecSetColorArchive::~SpecSetColorArchive);
}

uint64_t sub_276CDF740(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE291C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_276CDF7C8);
}

uint64_t sub_276CDF7E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE294C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276CDF870);
}

uint64_t sub_276CDF890(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE297C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSSSOS::SpecSetStringArchive::~SpecSetStringArchive);
}

void *sub_276CDF91C(uint64_t a1)
{
  v2 = sub_276CDF990(a1, 1);
  *v2 = &unk_2885E7530;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecBoolArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276CDF990(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE29AC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSSSOS::SpecBoolArchive::~SpecBoolArchive);
}

void *sub_276CDFA1C(uint64_t a1)
{
  v2 = sub_276CDFA90(a1, 1);
  *v2 = &unk_2885E75E0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecColorArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276CDFA90(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE29DC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSSSOS::SpecColorArchive::~SpecColorArchive);
}

void *sub_276CDFB1C(uint64_t a1)
{
  v2 = sub_276CDFB90(a1, 1);
  *v2 = &unk_2885E7690;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecDoubleArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276CDFB90(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE2A0C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSSSOS::SpecDoubleArchive::~SpecDoubleArchive);
}

void *sub_276CDFC1C(uint64_t a1)
{
  v2 = sub_276CDFC90(a1, 1);
  *v2 = &unk_2885E7740;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecIntegerArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276CDFC90(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE2A3C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSSSOS::SpecIntegerArchive::~SpecIntegerArchive);
}

void *sub_276CDFD1C(uint64_t a1)
{
  v2 = sub_276CDFD90(a1, 1);
  *v2 = &unk_2885E77F0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecStringArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276CDFD90(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE2A6C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSSSOS::SpecStringArchive::~SpecStringArchive);
}

id sub_276CDFE38(uint64_t a1, const char *a2, unint64_t a3)
{
  v155[30] = *MEMORY[0x277D85DE8];
  if (a3 > 6)
  {
    v130 = 0;
  }

  else
  {
    if (((1 << a3) & 0x2B) != 0)
    {
      v153 = objc_msgSend_clearColor(MEMORY[0x277D81180], a2, a3);
      v155[0] = v153;
      v152 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v3, v4, 0.324999988, 0.344999999, 0.372999996, 1.0);
      v155[1] = v152;
      v151 = objc_msgSend_blackColor(MEMORY[0x277D81180], v5, v6);
      v155[2] = v151;
      v150 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v7, v8);
      v155[3] = v150;
      v149 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v9, v10);
      v155[4] = v149;
      v148 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v11, v12, 0.866999984);
      v155[5] = v148;
      v147 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v13, v14, 0.0270000007, 0.136999995, 0.317999989, 1.0);
      v155[6] = v147;
      v146 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v15, v16, 0.118000001, 0.0780000016, 0.234999999, 1.0);
      v155[7] = v146;
      v145 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v17, v18, 0.0590000004, 0.216000006, 0.474999994, 1.0);
      v155[8] = v145;
      v144 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v19, v20, 0.195999995, 0.152999997, 0.442999989, 1.0);
      v155[9] = v144;
      v143 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v21, v22, 0.133000001, 0.388000011, 0.753000021, 1.0);
      v155[10] = v143;
      v142 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v23, v24, 0.352999985, 0.250999987, 0.753000021, 1.0);
      v155[11] = v142;
      v141 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v25, v26, 0.219999999, 0.583999991, 0.984000027, 1.0);
      v155[12] = v141;
      v140 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v27, v28, 0.545000017, 0.49000001, 0.936999977, 1.0);
      v155[13] = v140;
      v139 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v29, v30, 0.0939999968, 0.259000003, 0.0270000007, 1.0);
      v155[14] = v139;
      v138 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v31, v32, 0.0120000001, 0.192000002, 0.200000003, 1.0);
      v155[15] = v138;
      v137 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v33, v34, 0.152999997, 0.372999996, 0.050999999, 1.0);
      v155[16] = v137;
      v136 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v35, v36, 0.0670000017, 0.36500001, 0.372999996, 1.0);
      v155[17] = v136;
      v135 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v37, v38, 0.165000007, 0.620000005, 0.114, 1.0);
      v155[18] = v135;
      v134 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v39, v40, 0.0939999968, 0.654999971, 0.675000012, 1.0);
      v155[19] = v134;
      v133 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v41, v42, 0.481999993, 0.870999992, 0.246999994, 1.0);
      v155[20] = v133;
      v45 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v43, v44, 0.250999987, 0.862999976, 0.885999978, 1.0);
      v155[21] = v45;
      v48 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v46, v47, 0.200000003, 0.00400000019, 0.0120000001, 1.0);
      v155[22] = v48;
      v51 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v49, v50, 0.372999996, 0.216000006, 0.0309999995, 1.0);
      v155[23] = v51;
      v54 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v52, v53, 0.435000002, 0.0160000008, 0.0350000001, 1.0);
      v155[24] = v54;
      v57 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v55, v56, 0.522000015, 0.328999996, 0.0670000017, 1.0);
      v155[25] = v57;
      v60 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v58, v59, 0.573000014, 0.0549999997, 0.105999999, 1.0);
      v155[26] = v60;
      v63 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v61, v62, 0.725000024, 0.501999974, 0.172999993, 1.0);
      v155[27] = v63;
      v66 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v64, v65, 0.808000028, 0.333000004, 0.337000012, 1.0);
      v155[28] = v66;
      v69 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v67, v68, 0.893999994, 0.643000007, 0.224000007, 1.0);
      v155[29] = v69;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v70, v155, 30);
    }

    else
    {
      v153 = objc_msgSend_clearColor(MEMORY[0x277D81180], a2, a3);
      v154[0] = v153;
      v152 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], v71, v72, 0.188999996, 1.0);
      v154[1] = v152;
      v151 = objc_msgSend_blackColor(MEMORY[0x277D81180], v73, v74);
      v154[2] = v151;
      v150 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], v75, v76, 0.453999996, 1.0);
      v154[3] = v150;
      v149 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v77, v78);
      v154[4] = v149;
      v148 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D81180], v79, v80, 0.754999995, 1.0);
      v154[5] = v148;
      v147 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v81, v82, 0.298999995, 0.244000003, 0.342999995, 1.0);
      v154[6] = v147;
      v146 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v83, v84, 0.104999997, 0.189999998, 0.272000015, 1.0);
      v154[7] = v146;
      v145 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v85, v86, 0.463, 0.36500001, 0.509000003, 1.0);
      v154[8] = v145;
      v144 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v87, v88, 0.30399999, 0.404000014, 0.552999973, 1.0);
      v154[9] = v144;
      v143 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v89, v90, 0.619000018, 0.533999979, 0.658999979, 1.0);
      v154[10] = v143;
      v142 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v91, v92, 0.470999986, 0.615999997, 0.736000001, 1.0);
      v154[11] = v142;
      v141 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v93, v94, 0.762000024, 0.736999989, 0.781000018, 1.0);
      v154[12] = v141;
      v140 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v95, v96, 0.694000006, 0.811999977, 0.874000013, 1.0);
      v154[13] = v140;
      v139 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v97, v98, 0.153999999, 0.219999999, 0.118000001, 1.0);
      v154[14] = v139;
      v138 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v99, v100, 0.213, 0.0869999975, 0.0160000008, 1.0);
      v154[15] = v138;
      v137 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v101, v102, 0.349000007, 0.44600001, 0.282000005, 1.0);
      v154[16] = v137;
      v136 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v103, v104, 0.393000007, 0.340000004, 0.268000007, 1.0);
      v154[17] = v136;
      v135 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v105, v106, 0.460000008, 0.611000001, 0.363000005, 1.0);
      v154[18] = v135;
      v134 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v107, v108, 0.619000018, 0.521000028, 0.397000015, 1.0);
      v154[19] = v134;
      v133 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v109, v110, 0.702000022, 0.745000005, 0.587000012, 1.0);
      v154[20] = v133;
      v45 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v111, v112, 0.771000028, 0.648999989, 0.493999988, 1.0);
      v154[21] = v45;
      v48 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v113, v114, 0.365999997, 0.0500000007, 0.0179999992, 1.0);
      v154[22] = v48;
      v51 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v115, v116, 0.460000008, 0.305999994, 0.155000001, 1.0);
      v154[23] = v51;
      v54 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v117, v118, 0.574999988, 0.229000002, 0.164000005, 1.0);
      v154[24] = v54;
      v57 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v119, v120, 0.713999987, 0.460000008, 0.247999996, 1.0);
      v154[25] = v57;
      v60 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v121, v122, 0.801999986, 0.367000014, 0.31400001, 1.0);
      v154[26] = v60;
      v63 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v123, v124, 0.873000026, 0.648999989, 0.34799999, 1.0);
      v154[27] = v63;
      v66 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v125, v126, 0.848999977, 0.603999972, 0.560000002, 1.0);
      v154[28] = v66;
      v69 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v127, v128, 0.949999988, 0.785000026, 0.5, 1.0);
      v154[29] = v69;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v129, v154, 30);
    }
    v130 = ;
  }

  v131 = *MEMORY[0x277D85DE8];

  return v130;
}

void sub_276CE0A60(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v9 = a3;
  v12 = objc_msgSend_p_defaultPresetColors_(a1, v10, a5);
  objc_msgSend_setPresets_ofKind_(v8, v11, v12, v9);
}

void sub_276CE0B0C(uint64_t a1, uint64_t a2)
{
  TSUSetCrashReporterInfo();
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSTheme p_migratedPresetForPreset:followReplacements:]", "[TSSTheme p_migratedPresetForPreset:followReplacements:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSTheme.m", 461, a1, a2);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSTheme.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 461, 1, "preset %{public}@ was migrated into non-preset %{public}@", a1, a2);

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE0BC4(uint64_t a1)
{
  TSUSetCrashReporterInfo();
  v2 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSSStylesheet setParent:]", "[TSSStylesheet setParent:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m", 380, a1);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v7, v4, v6, 380, 1, "Attempted to add self (%p) as own parent.", a1);

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE0C74()
{
  sub_276CAF5BC();
  v0 = TSUObjectReferenceDescription();
  v9 = TSUObjectReferenceDescription();
  TSUSetCrashReporterInfo();

  v1 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "[TSSStylesheet variationOfStyle:propertyMap:]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  v6 = TSUObjectReferenceDescription();
  v8 = TSUObjectReferenceDescription();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v1, v7, v3, v5, 776, 1, "Varying style %@ in locked stylesheet %@.");

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE0D74(uint64_t a1)
{
  TSUSetCrashReporterInfo();
  v2 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSSStylesheet variationOfStyle:exactPropertyMap:]", "[TSSStylesheet variationOfStyle:exactPropertyMap:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m", 895, a1);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v7, v4, v6, 895, 1, "Can't create variation with a variation base style <%p>.", a1);

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE0E24(uint64_t a1)
{
  TSUSetCrashReporterInfo();
  v2 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSSStylesheet variationOfStyle:exactPropertyMap:]", "[TSSStylesheet variationOfStyle:exactPropertyMap:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m", 894, a1);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v7, v4, v6, 894, 1, "Cannot create a variation of variation style <%p> with no parent", a1);

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE0ED4()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSSStylesheet variationOfStyle:exactPropertyMap:]", "[TSSStylesheet variationOfStyle:exactPropertyMap:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m", 891);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 891, 1, "propertyMap parameter must not be nil");

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE0F78()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSSStylesheet variationOfStyle:exactPropertyMap:]", "[TSSStylesheet variationOfStyle:exactPropertyMap:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m", 890);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 890, 1, "originalStyle parameter must not be nil");

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE101C()
{
  sub_276CAF5BC();
  v0 = TSUObjectReferenceDescription();
  v9 = TSUObjectReferenceDescription();
  TSUSetCrashReporterInfo();

  v1 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "[TSSStylesheet variationOfStyle:exactPropertyMap:]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  v6 = TSUObjectReferenceDescription();
  v8 = TSUObjectReferenceDescription();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v1, v7, v3, v5, 885, 1, "Varying style %@ in locked stylesheet %@.");

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE111C()
{
  sub_276CAF5BC();
  v0 = TSUObjectReferenceDescription();
  v9 = TSUObjectReferenceDescription();
  TSUSetCrashReporterInfo();

  v1 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "[TSSStylesheet p_addStyle:withParent:identifier:shouldDoDOLC:]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  v6 = TSUObjectReferenceDescription();
  v8 = TSUObjectReferenceDescription();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v1, v7, v3, v5, 1164, 1, "Adding style %{public}@ to locked stylesheet %{public}@.");

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE121C()
{
  sub_276CAF5BC();
  v0 = TSUObjectReferenceDescription();
  v9 = TSUObjectReferenceDescription();
  TSUSetCrashReporterInfo();

  v1 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "[TSSStylesheet p_removeStyle:]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  v6 = TSUObjectReferenceDescription();
  v8 = TSUObjectReferenceDescription();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v1, v7, v3, v5, 1247, 1, "Removing style %{public}@ from locked stylesheet %{public}@.");

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE131C()
{
  v7 = TSUObjectReferenceDescription();
  TSUSetCrashReporterInfo();

  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSSStylesheet p_setIdentifier:ofStyle:]", "[TSSStylesheet p_setIdentifier:ofStyle:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m", 1298, v7);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  v5 = TSUObjectReferenceDescription();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v6, v2, v4, 1298, 1, "Identifier for style %@ must not be an empty string.", v5);

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE13F0()
{
  sub_276CAF5BC();
  v0 = TSUObjectReferenceDescription();
  v9 = TSUObjectReferenceDescription();
  TSUSetCrashReporterInfo();

  v1 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "[TSSStylesheet p_setIdentifier:ofStyle:]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  v6 = TSUObjectReferenceDescription();
  v8 = TSUObjectReferenceDescription();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v1, v7, v3, v5, 1292, 1, "Identifying style %@ in locked stylesheet %@.");

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE14F0()
{
  sub_276CAF5BC();
  v0 = TSUObjectReferenceDescription();
  v9 = TSUObjectReferenceDescription();
  TSUSetCrashReporterInfo();

  v1 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "[TSSStylesheet p_setParent:ofStyle:]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  v6 = TSUObjectReferenceDescription();
  v8 = TSUObjectReferenceDescription();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v1, v7, v3, v5, 1339, 1, "Setting the parent of a style %@ in locked stylesheet %@.");

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE15F0(uint64_t a1, uint64_t a2)
{
  TSUSetCrashReporterInfo();
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSStylesheet p_addStyleToParentChildren:]", "[TSSStylesheet p_addStyleToParentChildren:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m", 1369, a1, a2);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 1369, 1, "Style %@ is not in stylesheet %@", a1, a2);

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE16A8()
{
  sub_276CAF5BC();
  v1 = v0;
  v3 = v2;
  v13 = objc_msgSend_objectForKeyedSubscript_(v4, v2, v2);
  TSUSetCrashReporterInfo();

  v5 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSSStylesheet style:didChangeUUIDToValue:fromValue:]");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStylesheet.m");
  v12 = objc_msgSend_objectForKeyedSubscript_(*v1, v10, v3);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v7, v9, 1494, 1, "Surprising value %@ in mUUIDToStyleMap for %@, expected %@");

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE17B8()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSSPropertySet initWithPropertySet:]", "[TSSPropertySet initWithPropertySet:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertySet.m", 64);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertySet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 64, 1, "property set being copied can't be null");

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE185C()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSSMutablePropertySet initWithPropertySet:]", "[TSSMutablePropertySet initWithPropertySet:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertySet.m", 274);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSPropertySet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 274, 1, "property set being copied can't be null");

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE193C()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[NSSet(TSWPStyleAdditions) tss_hasVariations]_block_invoke", "[NSSet(TSWPStyleAdditions) tss_hasVariations]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/FoundationAdditions.m", 44);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/FoundationAdditions.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 44, 1, "Object in set is not a style");

  TSUCrashBreakpoint();
  abort();
}

void sub_276CE19E0()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[NSSet(TSWPStyleAdditions) tss_containsStyleOrVariationOfStyle:]", "[NSSet(TSWPStyleAdditions) tss_containsStyleOrVariationOfStyle:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/FoundationAdditions.m", 57);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/FoundationAdditions.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 57, 1, "Object in set is not a style");

  TSUCrashBreakpoint();
  abort();
}

uint64_t sub_276CE1A84(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Reference::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276CE1B54(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSS::StylesheetArchive_IdentifiedStyleEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276CE1C24(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSS::StylesheetArchive_StyleChildrenEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276CE1CF4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSS::StylesheetArchive_VersionedStyles::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276CE1DC4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUID::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276CE1E94(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Color::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276CE1F64(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::CommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276CE2034(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSS::CommandPropertyEntryArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276CE24AC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSSSOS::SpecSetBoolArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276CE257C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSSSOS::SpecSetColorArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276CE264C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSSSOS::SpecSetDoubleArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276CE271C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSSSOS::SpecSetIntegerArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276CE27EC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSSSOS::SpecSetStringArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t google::protobuf::internal::ArenaStringPtr::Set()
{
  return MEMORY[0x2821EAD00]();
}

{
  return MEMORY[0x2821EAD08]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}