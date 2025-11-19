uint64_t TSCE::ViewTractRefArchive::ByteSizeLong(TSCE::ViewTractRefArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x3E) == 0)
  {
    goto LABEL_11;
  }

  if ((v2 & 2) != 0)
  {
    v6 = TSCE::ASTNodeArrayArchive_ASTUidTract::ByteSizeLong(*(this + 4));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
LABEL_7:
      if ((v2 & 8) == 0)
      {
        goto LABEL_8;
      }

LABEL_15:
      v3 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 0x10) == 0)
      {
LABEL_9:
        if ((v2 & 0x20) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_7;
  }

  v7 = TSCE::PreserveColumnRowFlagsArchive::ByteSizeLong(*(this + 5));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_16:
  v3 += ((9 * (__clz((2 * *(this + 13)) ^ (*(this + 13) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_10:
    v3 += ((9 * (__clz((2 * *(this + 14)) ^ (*(this + 14) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
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

uint64_t TSCE::ViewTractRefArchive::MergeFrom(TSCE::ViewTractRefArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ViewTractRefArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ViewTractRefArchive::MergeFrom(uint64_t this, const TSCE::ViewTractRefArchive *a2)
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

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidTract>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSCE::_ASTNodeArrayArchive_ASTUidTract_default_instance_;
    }

    this = TSCE::ASTNodeArrayArchive_ASTUidTract::MergeFrom(v9, v11);
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

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::PreserveColumnRowFlagsArchive>(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = TSCE::_PreserveColumnRowFlagsArchive_default_instance_;
    }

    this = TSCE::PreserveColumnRowFlagsArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }

LABEL_37:
    *(v3 + 48) = *(a2 + 12);
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
      *(v3 + 56) = *(a2 + 14);
      goto LABEL_11;
    }

LABEL_38:
    *(v3 + 52) = *(a2 + 13);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSCE::ViewTractRefArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ViewTractRefArchive::Clear(this);

    return TSCE::ViewTractRefArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::ViewTractRefArchive::CopyFrom(uint64_t *this, const TSCE::ViewTractRefArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ViewTractRefArchive::Clear(this);

    return TSCE::ViewTractRefArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::ViewTractRefArchive::IsInitialized(TSCE::ViewTractRefArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSP::UUID::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSCE::ASTNodeArrayArchive_ASTUidTract::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    return (v3 & 4) == 0 || (~*(*(this + 5) + 16) & 3) == 0;
  }

  return result;
}

__n128 TSCE::ViewTractRefArchive::InternalSwap(TSCE::ViewTractRefArchive *this, TSCE::ViewTractRefArchive *a2)
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
  LODWORD(v7) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v7;
  return result;
}

TSK::FormatStructArchive *TSCE::BooleanCellValueArchive::clear_format(TSCE::BooleanCellValueArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::BooleanCellValueArchive *TSCE::BooleanCellValueArchive::BooleanCellValueArchive(TSCE::BooleanCellValueArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B0670;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_BooleanCellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 16) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B0670;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_BooleanCellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 16) = 0;
  *(this + 3) = 0;
  return this;
}

TSCE::BooleanCellValueArchive *TSCE::BooleanCellValueArchive::BooleanCellValueArchive(TSCE::BooleanCellValueArchive *this, const TSCE::BooleanCellValueArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B0670;
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
  *(this + 16) = *(a2 + 16);
  return this;
}

void TSCE::BooleanCellValueArchive::~BooleanCellValueArchive(TSCE::BooleanCellValueArchive *this)
{
  if (this != TSCE::_BooleanCellValueArchive_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x223D9FAE0]();
    MEMORY[0x223DA1450](v2, 0x10A1C4029F168B5);
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::BooleanCellValueArchive::~BooleanCellValueArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::BooleanCellValueArchive::default_instance(TSCE::BooleanCellValueArchive *this)
{
  if (atomic_load_explicit(scc_info_BooleanCellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_BooleanCellValueArchive_default_instance_;
}

uint64_t *TSCE::BooleanCellValueArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSK::FormatStructArchive::Clear(this[3]);
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

google::protobuf::internal *TSCE::BooleanCellValueArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v29) & 1) == 0)
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
        goto LABEL_46;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_13;
        }

        v5 |= 4u;
        v18 = (v7 + 1);
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_32:
          v29 = v18;
          *(a1 + 33) = v17 != 0;
          goto LABEL_37;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v7, v17);
        v29 = v27;
        *(a1 + 33) = v28 != 0;
        if (!v27)
        {
LABEL_46:
          v29 = 0;
          goto LABEL_2;
        }
      }

      else
      {
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

              v16 = MEMORY[0x223DA02D0](v15);
              LODWORD(v14) = v16;
              *(a1 + 24) = v16;
              v7 = v29;
            }

            v13 = sub_2216FEC0C(a3, v14, v7);
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

          v29 = v13;
          if (!v13)
          {
            goto LABEL_46;
          }

          goto LABEL_37;
        }

        if (v10 != 1 || v8 != 8)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v21 = (v7 + 1);
        v20 = *v7;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if ((v22 & 0x80000000) == 0)
        {
          v21 = (v7 + 2);
LABEL_36:
          v29 = v21;
          *(a1 + 32) = v20 != 0;
          goto LABEL_37;
        }

        v25 = google::protobuf::internal::VarintParseSlow64(v7, v20);
        v29 = v25;
        *(a1 + 32) = v26 != 0;
        if (!v25)
        {
          goto LABEL_46;
        }
      }

LABEL_37:
      if (sub_221567030(a3, &v29))
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

unsigned __int8 *TSCE::BooleanCellValueArchive::_InternalSerialize(TSCE::BooleanCellValueArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 32);
    *a2 = 8;
    a2[1] = v6;
    a2 += 2;
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 3);
  *a2 = 18;
  v8 = *(v7 + 12);
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

  a2 = TSK::FormatStructArchive::_InternalSerialize(v7, v9, a3);
  if ((v5 & 4) != 0)
  {
LABEL_18:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 33);
    *a2 = 24;
    a2[1] = v13;
    a2 += 2;
  }

LABEL_21:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

unint64_t TSCE::BooleanCellValueArchive::ByteSizeLong(TSK::FormatStructArchive **this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSK::FormatStructArchive::ByteSizeLong(this[3]);
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v5 = v3 + ((v2 >> 1) & 2);
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v3 + ((v2 >> 1) & 2);
  }
}

uint64_t TSCE::BooleanCellValueArchive::MergeFrom(TSCE::BooleanCellValueArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::BooleanCellValueArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::BooleanCellValueArchive::MergeFrom(uint64_t this, const TSCE::BooleanCellValueArchive *a2)
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

        v6 = MEMORY[0x223DA02D0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80740];
      }

      this = TSK::FormatStructArchive::MergeFrom(v6, v8);
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
        *(v3 + 33) = *(a2 + 33);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSCE::BooleanCellValueArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::BooleanCellValueArchive::Clear(this);

    return TSCE::BooleanCellValueArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::BooleanCellValueArchive::CopyFrom(uint64_t *this, const TSCE::BooleanCellValueArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::BooleanCellValueArchive::Clear(this);

    return TSCE::BooleanCellValueArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::BooleanCellValueArchive::IsInitialized(TSCE::BooleanCellValueArchive *this)
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

  result = TSK::FormatStructArchive::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSCE::BooleanCellValueArchive::InternalSwap(TSCE::BooleanCellValueArchive *this, TSCE::BooleanCellValueArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOWORD(v6) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v6;
  return result;
}

TSK::FormatStructArchive *TSCE::DateCellValueArchive::clear_format(TSCE::DateCellValueArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::DateCellValueArchive *TSCE::DateCellValueArchive::DateCellValueArchive(TSCE::DateCellValueArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B0720;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DateCellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_2834B0720;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DateCellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  return this;
}

TSCE::DateCellValueArchive *TSCE::DateCellValueArchive::DateCellValueArchive(TSCE::DateCellValueArchive *this, const TSCE::DateCellValueArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B0720;
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
  *(this + 20) = *(a2 + 20);
  *(this + 4) = v7;
  return this;
}

void TSCE::DateCellValueArchive::~DateCellValueArchive(TSCE::DateCellValueArchive *this)
{
  if (this != TSCE::_DateCellValueArchive_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x223D9FAE0]();
    MEMORY[0x223DA1450](v2, 0x10A1C4029F168B5);
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::DateCellValueArchive::~DateCellValueArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::DateCellValueArchive::default_instance(TSCE::DateCellValueArchive *this)
{
  if (atomic_load_explicit(scc_info_DateCellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_DateCellValueArchive_default_instance_;
}

uint64_t *TSCE::DateCellValueArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSK::FormatStructArchive::Clear(this[3]);
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

google::protobuf::internal *TSCE::DateCellValueArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v29) & 1) == 0)
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
        goto LABEL_50;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 9)
          {
            v5 |= 2u;
            *(a1 + 32) = *v7;
            v29 = (v7 + 8);
            goto LABEL_41;
          }

LABEL_33:
          if (v8)
          {
            v22 = (v8 & 7) == 4;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v15 = google::protobuf::internal::UnknownFieldParse();
        }

        else
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_33;
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

            v14 = MEMORY[0x223DA02D0](v13);
            LODWORD(v12) = v14;
            *(a1 + 24) = v14;
            v7 = v29;
          }

          v15 = sub_2216FEC0C(a3, v12, v7);
        }

        v29 = v15;
        if (!v15)
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
        v20 = (v7 + 1);
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = (v7 + 2);
LABEL_32:
          v29 = v20;
          *(a1 + 40) = v19 != 0;
          goto LABEL_41;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v7, v19);
        v29 = v27;
        *(a1 + 40) = v28 != 0;
        if (!v27)
        {
LABEL_50:
          v29 = 0;
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
        v17 = (v7 + 1);
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_25:
          v29 = v17;
          *(a1 + 41) = v16 != 0;
          goto LABEL_41;
        }

        v25 = google::protobuf::internal::VarintParseSlow64(v7, v16);
        v29 = v25;
        *(a1 + 41) = v26 != 0;
        if (!v25)
        {
          goto LABEL_50;
        }
      }

LABEL_41:
      if (sub_221567030(a3, &v29))
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

unsigned __int8 *TSCE::DateCellValueArchive::_InternalSerialize(TSCE::DateCellValueArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 4);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 3);
  *a2 = 18;
  v8 = *(v7 + 12);
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

  a2 = TSK::FormatStructArchive::_InternalSerialize(v7, v9, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 40);
  *a2 = 24;
  a2[1] = v13;
  a2 += 2;
  if ((v5 & 8) != 0)
  {
LABEL_22:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 41);
    *a2 = 32;
    a2[1] = v14;
    a2 += 2;
  }

LABEL_25:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::DateCellValueArchive::RequiredFieldsByteSizeFallback(TSCE::DateCellValueArchive *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v4 = TSK::FormatStructArchive::ByteSizeLong(*(this + 3));
    v2 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v1 = *(this + 4);
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    return v2 + 9;
  }

  else
  {
    return v2;
  }
}

unint64_t TSCE::DateCellValueArchive::ByteSizeLong(TSK::FormatStructArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSCE::DateCellValueArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSK::FormatStructArchive::ByteSizeLong(this[3]);
    v3 = v2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 10;
  }

  if ((this[2] & 0xC) != 0)
  {
    v4 = v3 + ((*(this + 4) >> 1) & 2) + ((*(this + 4) >> 2) & 2);
  }

  else
  {
    v4 = v3;
  }

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

uint64_t TSCE::DateCellValueArchive::MergeFrom(TSCE::DateCellValueArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::DateCellValueArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::DateCellValueArchive::MergeFrom(uint64_t this, const TSCE::DateCellValueArchive *a2)
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

        v6 = MEMORY[0x223DA02D0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80740];
      }

      this = TSK::FormatStructArchive::MergeFrom(v6, v8);
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

    *(v3 + 32) = *(a2 + 4);
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
      *(v3 + 41) = *(a2 + 41);
      goto LABEL_9;
    }

LABEL_20:
    *(v3 + 40) = *(a2 + 40);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TSCE::DateCellValueArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::DateCellValueArchive::Clear(this);

    return TSCE::DateCellValueArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::DateCellValueArchive::CopyFrom(uint64_t *this, const TSCE::DateCellValueArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::DateCellValueArchive::Clear(this);

    return TSCE::DateCellValueArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::DateCellValueArchive::IsInitialized(TSK::FormatStructArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSK::FormatStructArchive::IsInitialized(this[3]);
  }
}

__n128 TSCE::DateCellValueArchive::InternalSwap(TSCE::DateCellValueArchive *this, TSCE::DateCellValueArchive *a2)
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
  LOWORD(v5) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v5;
  return result;
}

TSK::FormatStructArchive *TSCE::NumberCellValueArchive::clear_format(TSCE::NumberCellValueArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCE::NumberCellValueArchive *TSCE::NumberCellValueArchive::NumberCellValueArchive(TSCE::NumberCellValueArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B07D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_NumberCellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  return this;
}

TSCE::NumberCellValueArchive *TSCE::NumberCellValueArchive::NumberCellValueArchive(TSCE::NumberCellValueArchive *this, const TSCE::NumberCellValueArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B07D0;
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
    v4 = *(a2 + 4);
  }

  if ((v4 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  v6 = *(a2 + 40);
  *(this + 56) = *(a2 + 56);
  *(this + 40) = v6;
  return this;
}

void TSCE::NumberCellValueArchive::~NumberCellValueArchive(TSCE::NumberCellValueArchive *this)
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

  if (this != &TSCE::_NumberCellValueArchive_default_instance_ && *(this + 4))
  {
    v3 = MEMORY[0x223D9FAE0]();
    MEMORY[0x223DA1450](v3, 0x10A1C4029F168B5);
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::NumberCellValueArchive::~NumberCellValueArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::NumberCellValueArchive::default_instance(TSCE::NumberCellValueArchive *this)
{
  if (atomic_load_explicit(scc_info_NumberCellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_NumberCellValueArchive_default_instance_;
}

uint64_t *TSCE::NumberCellValueArchive::Clear(uint64_t *this)
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
      this = TSK::FormatStructArchive::Clear(this[4]);
    }
  }

LABEL_7:
  if ((v2 & 0xFC) != 0)
  {
    *(v1 + 56) = 0u;
    *(v1 + 40) = 0u;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_221567398(v4);
  }

  return this;
}

google::protobuf::internal *TSCE::NumberCellValueArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v44 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v44) & 1) == 0)
  {
    while (1)
    {
      v7 = (v44 + 1);
      v8 = *v44;
      if ((*v44 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v44, (v9 - 128));
      v44 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_79;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 > 6)
        {
          if (v10 == 7)
          {
            if (v8 != 56)
            {
              goto LABEL_58;
            }

            v5 |= 0x40u;
            v31 = (v7 + 1);
            v30 = *v7;
            if ((v30 & 0x8000000000000000) == 0)
            {
              goto LABEL_57;
            }

            v32 = *v31;
            v30 = (v32 << 7) + v30 - 128;
            if ((v32 & 0x80000000) == 0)
            {
              v31 = (v7 + 2);
LABEL_57:
              v44 = v31;
              *(a1 + 56) = v30;
              goto LABEL_66;
            }

            v34 = google::protobuf::internal::VarintParseSlow64(v7, v30);
            v44 = v34;
            *(a1 + 56) = v35;
            if (!v34)
            {
              goto LABEL_79;
            }
          }

          else
          {
            if (v10 != 8 || v8 != 64)
            {
              goto LABEL_58;
            }

            v5 |= 0x80u;
            v22 = (v7 + 1);
            v21 = *v7;
            if ((v21 & 0x8000000000000000) == 0)
            {
              goto LABEL_40;
            }

            v23 = *v22;
            v21 = (v23 << 7) + v21 - 128;
            if ((v23 & 0x80000000) == 0)
            {
              v22 = (v7 + 2);
LABEL_40:
              v44 = v22;
              *(a1 + 64) = v21;
              goto LABEL_66;
            }

            v42 = google::protobuf::internal::VarintParseSlow64(v7, v21);
            v44 = v42;
            *(a1 + 64) = v43;
            if (!v42)
            {
LABEL_79:
              v44 = 0;
              goto LABEL_2;
            }
          }
        }

        else
        {
          if (v10 == 5)
          {
            if (v8 == 42)
            {
              *(a1 + 16) |= 1u;
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v26 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_65;
            }

            goto LABEL_58;
          }

          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_58;
          }

          v5 |= 0x20u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_26:
            v44 = v16;
            *(a1 + 53) = v15 != 0;
            goto LABEL_66;
          }

          v38 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v44 = v38;
          *(a1 + 53) = v39 != 0;
          if (!v38)
          {
            goto LABEL_79;
          }
        }
      }

      else if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 16) |= 2u;
            v27 = *(a1 + 32);
            if (!v27)
            {
              v28 = *(a1 + 8);
              if (v28)
              {
                v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
              }

              v29 = MEMORY[0x223DA02D0](v28);
              LODWORD(v27) = v29;
              *(a1 + 32) = v29;
              v7 = v44;
            }

            v26 = sub_2216FEC0C(a3, v27, v7);
            goto LABEL_65;
          }

LABEL_58:
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
            sub_221567188((a1 + 8));
          }

          v26 = google::protobuf::internal::UnknownFieldParse();
LABEL_65:
          v44 = v26;
          if (!v26)
          {
            goto LABEL_79;
          }

          goto LABEL_66;
        }

        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_58;
        }

        v5 |= 0x10u;
        v19 = (v7 + 1);
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_33:
          v44 = v19;
          *(a1 + 52) = v18 != 0;
          goto LABEL_66;
        }

        v40 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v44 = v40;
        *(a1 + 52) = v41 != 0;
        if (!v40)
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 == 9)
          {
            v5 |= 4u;
            *(a1 + 40) = *v7;
            v44 = (v7 + 8);
            goto LABEL_66;
          }

          goto LABEL_58;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_58;
        }

        v5 |= 8u;
        v13 = (v7 + 1);
        LODWORD(v12) = *v7;
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v13;
        v12 = (v12 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_18:
          v44 = v13;
          *(a1 + 48) = v12;
          goto LABEL_66;
        }

        v36 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v44 = v36;
        *(a1 + 48) = v37;
        if (!v36)
        {
          goto LABEL_79;
        }
      }

LABEL_66:
      if (sub_221567030(a3, &v44))
      {
        goto LABEL_2;
      }
    }

    v7 = (v44 + 2);
LABEL_6:
    v44 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v44;
}

unsigned __int8 *TSCE::NumberCellValueArchive::_InternalSerialize(TSCE::NumberCellValueArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v9 = *(this + 12);
    *v4 = 16;
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v11 = v9 >> 7;
      if (v9 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v11 | 0x80;
          v14 = v11 >> 7;
          ++v4;
          v15 = v11 >> 14;
          v11 >>= 7;
        }

        while (v15);
        *(v4 - 1) = v14;
        if ((v6 & 2) != 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v4[2] = v11;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v4[1] = v9;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_32;
      }
    }

LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 5);
  *v4 = 9;
  *(v4 + 1) = v8;
  v4 += 9;
  if ((v6 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_32:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v16 = *(this + 4);
  *v4 = 26;
  v17 = *(v16 + 12);
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

  v4 = TSK::FormatStructArchive::_InternalSerialize(v16, v18, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_42:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v22 = *(this + 52);
  *v4 = 32;
  v4[1] = v22;
  v4 += 2;
  if ((v6 & 1) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  v4 = sub_22150C00C(a3, 5, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 53);
  *v4 = 48;
  v4[1] = v23;
  v4 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_9;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v24 = *(this + 7);
  *v4 = 56;
  if (v24 > 0x7F)
  {
    v4[1] = v24 | 0x80;
    v25 = v24 >> 7;
    if (v24 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v25 | 0x80;
        v26 = v25 >> 7;
        ++v4;
        v27 = v25 >> 14;
        v25 >>= 7;
      }

      while (v27);
      *(v4 - 1) = v26;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v4[2] = v25;
      v4 += 3;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_60;
      }
    }
  }

  else
  {
    v4[1] = v24;
    v4 += 2;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_60;
    }
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 8);
  *v4 = 64;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v10 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v10 | 0x80;
        v12 = v10 >> 7;
        ++v4;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
      *(v4 - 1) = v12;
    }

    else
    {
      v4[2] = v10;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_60:
  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v28 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::NumberCellValueArchive::ByteSizeLong(TSCE::NumberCellValueArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    v4 = TSK::FormatStructArchive::ByteSizeLong(*(this + 4));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_8:
  if ((v2 & 0xFC) != 0)
  {
    v8 = v3 + 9;
    if ((v2 & 4) == 0)
    {
      v8 = v3;
    }

    if ((v2 & 8) != 0)
    {
      v9 = *(this + 12);
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v9 >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 11;
      }

      v8 += v11;
    }

    v3 = v8 + ((v2 >> 4) & 2) + ((v2 >> 3) & 2);
    if ((v2 & 0x40) != 0)
    {
      v3 += ((9 * (__clz(*(this + 7) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v2 & 0x80) != 0)
    {
      v3 += ((9 * (__clz(*(this + 8) | 1) ^ 0x3F) + 73) >> 6) + 1;
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

uint64_t TSCE::NumberCellValueArchive::MergeFrom(TSCE::NumberCellValueArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::NumberCellValueArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::NumberCellValueArchive::MergeFrom(uint64_t this, const TSCE::NumberCellValueArchive *a2)
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

        goto LABEL_24;
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

      v6 = MEMORY[0x223DA02D0](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = MEMORY[0x277D80740];
    }

    this = TSK::FormatStructArchive::MergeFrom(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(v3 + 40) = *(a2 + 5);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(v3 + 48) = *(a2 + 12);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(v3 + 52) = *(a2 + 52);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(v3 + 53) = *(a2 + 53);
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
      *(v3 + 64) = *(a2 + 8);
      goto LABEL_13;
    }

LABEL_28:
    *(v3 + 56) = *(a2 + 7);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return this;
}

uint64_t *TSCE::NumberCellValueArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::NumberCellValueArchive::Clear(this);

    return TSCE::NumberCellValueArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::NumberCellValueArchive::CopyFrom(uint64_t *this, const TSCE::NumberCellValueArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::NumberCellValueArchive::Clear(this);

    return TSCE::NumberCellValueArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::NumberCellValueArchive::IsInitialized(TSK::FormatStructArchive **this)
{
  if ((this[2] & 2) != 0)
  {
    return TSK::FormatStructArchive::IsInitialized(this[4]);
  }

  else
  {
    return 0;
  }
}

__n128 TSCE::NumberCellValueArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  return result;
}

TSK::FormatStructArchive *TSCE::StringCellValueArchive::clear_format(TSCE::StringCellValueArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCE::StringCellValueArchive *TSCE::StringCellValueArchive::StringCellValueArchive(TSCE::StringCellValueArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B0880;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StringCellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TSCE::StringCellValueArchive *TSCE::StringCellValueArchive::StringCellValueArchive(TSCE::StringCellValueArchive *this, const TSCE::StringCellValueArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B0880;
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
    v4 = *(a2 + 4);
  }

  if ((v4 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  return this;
}

void TSCE::StringCellValueArchive::~StringCellValueArchive(TSCE::StringCellValueArchive *this)
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

  if (this != &TSCE::_StringCellValueArchive_default_instance_ && *(this + 4))
  {
    v3 = MEMORY[0x223D9FAE0]();
    MEMORY[0x223DA1450](v3, 0x10A1C4029F168B5);
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::StringCellValueArchive::~StringCellValueArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::StringCellValueArchive::default_instance(TSCE::StringCellValueArchive *this)
{
  if (atomic_load_explicit(scc_info_StringCellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_StringCellValueArchive_default_instance_;
}

uint64_t *TSCE::StringCellValueArchive::Clear(uint64_t *this)
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
      this = TSK::FormatStructArchive::Clear(this[4]);
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 32) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_221567398(v4);
  }

  return this;
}

google::protobuf::internal *TSCE::StringCellValueArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v39) & 1) == 0)
  {
    while (1)
    {
      v7 = (v39 + 1);
      v8 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v9 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_66;
      }

      v7 = TagFallback;
      v8 = v30;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v8 != 32)
          {
            goto LABEL_45;
          }

          v5 |= 8u;
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
            v39 = v20;
            *(a1 + 41) = v19 != 0;
            goto LABEL_53;
          }

          v31 = google::protobuf::internal::VarintParseSlow64(v7, v19);
          v39 = v31;
          *(a1 + 41) = v32 != 0;
          if (!v31)
          {
            goto LABEL_66;
          }
        }

        else if (v10 == 5)
        {
          if (v8 != 40)
          {
            goto LABEL_45;
          }

          v5 |= 0x10u;
          v26 = (v7 + 1);
          v25 = *v7;
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          v27 = *v26;
          v25 = (v27 << 7) + v25 - 128;
          if ((v27 & 0x80000000) == 0)
          {
            v26 = (v7 + 2);
LABEL_44:
            v39 = v26;
            *(a1 + 42) = v25 != 0;
            goto LABEL_53;
          }

          v37 = google::protobuf::internal::VarintParseSlow64(v7, v25);
          v39 = v37;
          *(a1 + 42) = v38 != 0;
          if (!v37)
          {
LABEL_66:
            v39 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_45;
          }

          v5 |= 0x20u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_26:
            v39 = v16;
            *(a1 + 43) = v15 != 0;
            goto LABEL_53;
          }

          v33 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v39 = v33;
          *(a1 + 43) = v34 != 0;
          if (!v33)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v18 = google::protobuf::internal::InlineGreedyStringParser();
            goto LABEL_52;
          }

          goto LABEL_45;
        }

        if (v10 == 2)
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

              v24 = MEMORY[0x223DA02D0](v23);
              LODWORD(v22) = v24;
              *(a1 + 32) = v24;
              v7 = v39;
            }

            v18 = sub_2216FEC0C(a3, v22, v7);
            goto LABEL_52;
          }

LABEL_45:
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
            sub_221567188((a1 + 8));
          }

          v18 = google::protobuf::internal::UnknownFieldParse();
LABEL_52:
          v39 = v18;
          if (!v18)
          {
            goto LABEL_66;
          }

          goto LABEL_53;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_45;
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
          v39 = v13;
          *(a1 + 40) = v12 != 0;
          goto LABEL_53;
        }

        v35 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v39 = v35;
        *(a1 + 40) = v36 != 0;
        if (!v35)
        {
          goto LABEL_66;
        }
      }

LABEL_53:
      if (sub_221567030(a3, &v39))
      {
        goto LABEL_2;
      }
    }

    v7 = (v39 + 2);
LABEL_6:
    v39 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

unsigned __int8 *TSCE::StringCellValueArchive::_InternalSerialize(TSCE::StringCellValueArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        goto LABEL_4;
      }

      goto LABEL_19;
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
  v8 = *(v7 + 12);
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

  v4 = TSK::FormatStructArchive::_InternalSerialize(v7, v9, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 40);
  *v4 = 24;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_22:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(this + 41);
  *v4 = 32;
  v4[1] = v14;
  v4 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

LABEL_25:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(this + 42);
  *v4 = 40;
  v4[1] = v15;
  v4 += 2;
  if ((v6 & 0x20) != 0)
  {
LABEL_28:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v16 = *(this + 43);
    *v4 = 48;
    v4[1] = v16;
    v4 += 2;
  }

LABEL_31:
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::StringCellValueArchive::RequiredFieldsByteSizeFallback(TSCE::StringCellValueArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_7;
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
LABEL_7:
    v6 = TSK::FormatStructArchive::ByteSizeLong(*(this + 4));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TSCE::StringCellValueArchive::ByteSizeLong(TSCE::StringCellValueArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v8 = TSCE::StringCellValueArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = *(this + 4);
    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = TSK::FormatStructArchive::ByteSizeLong(v2);
    v8 = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v9 = *(this + 4);
  if ((v9 & 0x3C) != 0)
  {
    v10.i64[0] = 0x200000002;
    v10.i64[1] = 0x200000002;
    v8 += vaddlvq_u32(vandq_s8(vshlq_u32(vdupq_n_s32(v9), xmmword_2217E2240), v10));
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

uint64_t TSCE::StringCellValueArchive::MergeFrom(TSCE::StringCellValueArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::StringCellValueArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::StringCellValueArchive::MergeFrom(uint64_t this, const TSCE::StringCellValueArchive *a2)
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
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

    *(v3 + 16) |= 2u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x223DA02D0](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = MEMORY[0x277D80740];
    }

    this = TSK::FormatStructArchive::MergeFrom(v6, v8);
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
    *(v3 + 40) = *(a2 + 40);
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
    *(v3 + 41) = *(a2 + 41);
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
      *(v3 + 43) = *(a2 + 43);
      goto LABEL_11;
    }

LABEL_24:
    *(v3 + 42) = *(a2 + 42);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSCE::StringCellValueArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::StringCellValueArchive::Clear(this);

    return TSCE::StringCellValueArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::StringCellValueArchive::CopyFrom(uint64_t *this, const TSCE::StringCellValueArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::StringCellValueArchive::Clear(this);

    return TSCE::StringCellValueArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::StringCellValueArchive::IsInitialized(TSK::FormatStructArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSK::FormatStructArchive::IsInitialized(this[4]);
  }
}

uint64_t *TSCE::StringCellValueArchive::InternalSwap(TSCE::StringCellValueArchive *this, TSCE::StringCellValueArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  LODWORD(v7) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  return result;
}

TSCE::ErrorCellValueArchive *TSCE::ErrorCellValueArchive::ErrorCellValueArchive(TSCE::ErrorCellValueArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B0930;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ErrorCellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  return this;
}

TSCE::ErrorCellValueArchive *TSCE::ErrorCellValueArchive::ErrorCellValueArchive(TSCE::ErrorCellValueArchive *this, const TSCE::ErrorCellValueArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B0930;
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

  *(this + 2) = *(a2 + 2);
  return this;
}

void TSCE::ErrorCellValueArchive::~ErrorCellValueArchive(TSCE::ErrorCellValueArchive *this)
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
  TSCE::ErrorCellValueArchive::~ErrorCellValueArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::ErrorCellValueArchive::default_instance(TSCE::ErrorCellValueArchive *this)
{
  if (atomic_load_explicit(scc_info_ErrorCellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_ErrorCellValueArchive_default_instance_;
}

uint64_t *TSCE::ErrorCellValueArchive::Clear(TSCE::ErrorCellValueArchive *this)
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

  if ((v1 & 0xE) != 0)
  {
    *(this + 4) = 0;
    *(this + 5) = 0;
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

google::protobuf::internal *TSCE::ErrorCellValueArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_46;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v8 != 34)
          {
            goto LABEL_29;
          }

          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v18 = google::protobuf::internal::InlineGreedyStringParser();
        }

        else
        {
          if (v10 == 5 && v8 == 41)
          {
            v5 |= 8u;
            *(a1 + 40) = *v7;
            v26 = (v7 + 8);
            goto LABEL_37;
          }

LABEL_29:
          if (v8)
          {
            v19 = (v8 & 7) == 4;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
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

        v26 = v18;
        if (!v18)
        {
          goto LABEL_46;
        }

        goto LABEL_37;
      }

      if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_29;
        }

        v5 |= 2u;
        v16 = (v7 + 1);
        LODWORD(v15) = *v7;
        if ((v15 & 0x80) == 0)
        {
          goto LABEL_26;
        }

        v17 = *v16;
        v15 = (v15 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_26:
          v26 = v16;
          *(a1 + 32) = v15;
          goto LABEL_37;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v26 = v24;
        *(a1 + 32) = v25;
        if (!v24)
        {
LABEL_46:
          v26 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_29;
        }

        v5 |= 4u;
        v13 = (v7 + 1);
        LODWORD(v12) = *v7;
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v14 = *v13;
        v12 = (v12 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_17:
          v26 = v13;
          *(a1 + 36) = v12;
          goto LABEL_37;
        }

        v22 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v26 = v22;
        *(a1 + 36) = v23;
        if (!v22)
        {
          goto LABEL_46;
        }
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

unsigned __int8 *TSCE::ErrorCellValueArchive::_InternalSerialize(TSCE::ErrorCellValueArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v11 = *(this + 9);
    *v4 = 24;
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
        if (v6)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v4[2] = v12;
        v4 += 3;
        if (v6)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v4[1] = v11;
      v4 += 2;
      if (v6)
      {
        goto LABEL_28;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 8);
  *v4 = 8;
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
      if ((v6 & 4) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4[2] = v8;
      v4 += 3;
      if ((v6 & 4) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
    if ((v6 & 4) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_3:
  if ((v6 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_28:
  v4 = sub_22150C00C(a3, 4, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(this + 5);
  *v4 = 41;
  *(v4 + 1) = v15;
  v4 += 9;
LABEL_32:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::ErrorCellValueArchive::ByteSizeLong(TSCE::ErrorCellValueArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) != 0)
  {
    v3 = *(this + 8);
    if (v3 < 0)
    {
      v2 = 11;
      if ((v1 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_9:
  if ((v1 & 0xC) != 0)
  {
    if ((v1 & 4) != 0)
    {
      v7 = *(this + 9);
      if (v7 < 0)
      {
        v8 = 11;
      }

      else
      {
        v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v8;
    }

    if ((v1 & 8) != 0)
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

uint64_t TSCE::ErrorCellValueArchive::MergeFrom(TSCE::ErrorCellValueArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::ErrorCellValueArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::ErrorCellValueArchive::MergeFrom(uint64_t this, const TSCE::ErrorCellValueArchive *a2)
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
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
      *(v3 + 40) = *(a2 + 5);
      goto LABEL_9;
    }

LABEL_13:
    *(v3 + 36) = *(a2 + 9);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

TSCE::ErrorCellValueArchive *TSCE::ErrorCellValueArchive::CopyFrom(TSCE::ErrorCellValueArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ErrorCellValueArchive::Clear(this);

    return TSCE::ErrorCellValueArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::ErrorCellValueArchive *TSCE::ErrorCellValueArchive::CopyFrom(TSCE::ErrorCellValueArchive *this, const TSCE::ErrorCellValueArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::ErrorCellValueArchive::Clear(this);

    return TSCE::ErrorCellValueArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::ErrorCellValueArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u64[1] = v7;
  return result;
}

TSCE::CellValueArchive *TSCE::CellValueArchive::CellValueArchive(TSCE::CellValueArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B09E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 16) = 1;
  return this;
}

TSCE::CellValueArchive *TSCE::CellValueArchive::CellValueArchive(TSCE::CellValueArchive *this, const TSCE::CellValueArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B09E0;
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

void TSCE::CellValueArchive::~CellValueArchive(TSCE::CellValueArchive *this)
{
  sub_22155F798(this);
  sub_2214DFCF8(this + 1);
}

{
  TSCE::CellValueArchive::~CellValueArchive(this);

  JUMPOUT(0x223DA1450);
}

void *sub_22155F798(void *result)
{
  if (result != &TSCE::_CellValueArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSCE::BooleanCellValueArchive::~BooleanCellValueArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSCE::DateCellValueArchive::~DateCellValueArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSCE::NumberCellValueArchive::~NumberCellValueArchive(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSCE::StringCellValueArchive::~StringCellValueArchive(v5);
      MEMORY[0x223DA1450]();
    }

    result = v1[7];
    if (result)
    {
      TSCE::ErrorCellValueArchive::~ErrorCellValueArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TSCE::CellValueArchive::default_instance(TSCE::CellValueArchive *this)
{
  if (atomic_load_explicit(scc_info_CellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_CellValueArchive_default_instance_;
}

google::protobuf::internal *TSCE::CellValueArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  while ((sub_221567030(a3, &v28) & 1) == 0)
  {
    v5 = (v28 + 1);
    v6 = *v28;
    if (*v28 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v7 - 128));
        v28 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v26;
        goto LABEL_7;
      }

      v5 = (v28 + 2);
    }

    v28 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 3)
    {
      if (v8 == 4)
      {
        if (v6 != 34)
        {
          goto LABEL_54;
        }

        *(a1 + 16) |= 4u;
        v18 = *(a1 + 40);
        if (!v18)
        {
          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::NumberCellValueArchive>(v19);
          *(a1 + 40) = v18;
          v5 = v28;
        }

        v12 = sub_2216FEE7C(a3, v18, v5);
      }

      else if (v8 == 5)
      {
        if (v6 != 42)
        {
          goto LABEL_54;
        }

        *(a1 + 16) |= 8u;
        v22 = *(a1 + 48);
        if (!v22)
        {
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::StringCellValueArchive>(v23);
          *(a1 + 48) = v22;
          v5 = v28;
        }

        v12 = sub_2216FEF4C(a3, v22, v5);
      }

      else
      {
        if (v8 != 6 || v6 != 50)
        {
          goto LABEL_54;
        }

        *(a1 + 16) |= 0x10u;
        v13 = *(a1 + 56);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ErrorCellValueArchive>(v14);
          *(a1 + 56) = v13;
          v5 = v28;
        }

        v12 = sub_2216FF01C(a3, v13, v5);
      }

      goto LABEL_61;
    }

    if (v8 == 1)
    {
      if (v6 != 8)
      {
        goto LABEL_54;
      }

      v16 = (v5 + 1);
      v15 = *v5;
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }

      v17 = *v16;
      v15 = (v17 << 7) + v15 - 128;
      if ((v17 & 0x80000000) == 0)
      {
        v16 = (v5 + 2);
LABEL_33:
        v28 = v16;
        goto LABEL_34;
      }

      v28 = google::protobuf::internal::VarintParseSlow64(v5, v15);
      if (!v28)
      {
        return 0;
      }

LABEL_34:
      if ((v15 - 1) > 4)
      {
        sub_2216FF0EC();
      }

      else
      {
        *(a1 + 16) |= 0x20u;
        *(a1 + 64) = v15;
      }
    }

    else
    {
      if (v8 == 2)
      {
        if (v6 != 18)
        {
          goto LABEL_54;
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

          v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::BooleanCellValueArchive>(v21);
          *(a1 + 24) = v20;
          v5 = v28;
        }

        v12 = sub_2216FECDC(a3, v20, v5);
      }

      else
      {
        if (v8 != 3 || v6 != 26)
        {
LABEL_54:
          if (v6)
          {
            v24 = (v6 & 7) == 4;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            *(a3 + 80) = v6 - 1;
            return v28;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
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

          v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::DateCellValueArchive>(v11);
          *(a1 + 32) = v10;
          v5 = v28;
        }

        v12 = sub_2216FEDAC(a3, v10, v5);
      }

LABEL_61:
      v28 = v12;
      if (!v12)
      {
        return 0;
      }
    }
  }

  return v28;
}

unsigned __int8 *TSCE::CellValueArchive::_InternalSerialize(TSCE::CellValueArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 16);
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
          goto LABEL_19;
        }
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
        if (v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
      if (v5)
      {
        goto LABEL_19;
      }
    }

LABEL_3:
    if ((v5 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_19:
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

  a2 = TSCE::BooleanCellValueArchive::_InternalSerialize(v10, v12, a3);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
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

  a2 = TSCE::DateCellValueArchive::_InternalSerialize(v16, v18, a3);
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

  a2 = TSCE::NumberCellValueArchive::_InternalSerialize(v22, v24, a3);
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

  a2 = TSCE::StringCellValueArchive::_InternalSerialize(v28, v30, a3);
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

    a2 = TSCE::ErrorCellValueArchive::_InternalSerialize(v34, v36, a3);
  }

LABEL_69:
  v40 = *(this + 1);
  if ((v40 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v40 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::CellValueArchive::ByteSizeLong(TSCE::CellValueArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x20) != 0)
  {
    v4 = *(this + 16);
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

  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_13;
  }

  if (v2)
  {
    v7 = TSCE::BooleanCellValueArchive::ByteSizeLong(*(this + 3));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
LABEL_9:
      if ((v2 & 4) == 0)
      {
        goto LABEL_10;
      }

LABEL_17:
      v9 = TSCE::NumberCellValueArchive::ByteSizeLong(*(this + 5));
      v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 8) == 0)
      {
LABEL_11:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_9;
  }

  v8 = TSCE::DateCellValueArchive::ByteSizeLong(*(this + 4));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((v2 & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_18:
  v10 = TSCE::StringCellValueArchive::ByteSizeLong(*(this + 6));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_12:
    v5 = TSCE::ErrorCellValueArchive::ByteSizeLong(*(this + 7));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSCE::CellValueArchive::MergeFrom(TSCE::CellValueArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::CellValueArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TSCE::CellValueArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellValueArchive::Clear(this);

    return TSCE::CellValueArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::CellValueArchive::CopyFrom(uint64_t *this, const TSCE::CellValueArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::CellValueArchive::Clear(this);

    return TSCE::CellValueArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::CellValueArchive::InternalSwap(TSCE::CellValueArchive *this, TSCE::CellValueArchive *a2)
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

void *sub_2215603E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156C088(a1);
}

uint64_t sub_2215604AC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156C188(a1);
}

uint64_t sub_22156057C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156C28C(a1);
}

void *sub_22156064C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156C390(a1);
}

uint64_t sub_22156071C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156C494(a1);
}

void *sub_2215607EC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_22156C598(a1, 1);
  *result = &unk_2834AA630;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCE::IndexSetArchive *sub_22156085C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156C640(a1, 1);
  TSCE::IndexSetArchive::IndexSetArchive(v2, a1);
  return v2;
}

uint64_t sub_2215608E8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156C6CC(a1);
}

TSCE::CellCoordSetArchive *sub_2215609B8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156C7D0(a1, 1);
  TSCE::CellCoordSetArchive::CellCoordSetArchive(v2, a1);
  return v2;
}

uint64_t sub_221560A44(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156C85C(a1);
}

TSCE::InternalCellRefSetArchive *sub_221560B14(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156C960(a1, 1);
  TSCE::InternalCellRefSetArchive::InternalCellRefSetArchive(v2, a1);
  return v2;
}

double sub_221560BA0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156C9EC(a1, 1);
  *v2 = &unk_2834AAA50;
  *(v2 + 8) = a1;
  result = 0.0;
  *(v2 + 16) = xmmword_2217E2210;
  return result;
}

void *sub_221560C18(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156CA94(a1);
}

void *sub_221560CE4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156CB94(a1);
}

TSCE::CellRefSetArchive *sub_221560DB0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156CC94(a1, 1);
  TSCE::CellRefSetArchive::CellRefSetArchive(v2, a1);
  return v2;
}

TSCE::UidCoordSetArchive_ColumnEntry *sub_221560E3C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156CD20(a1, 1);
  TSCE::UidCoordSetArchive_ColumnEntry::UidCoordSetArchive_ColumnEntry(v2, a1);
  return v2;
}

TSCE::UidCoordSetArchive *sub_221560EC8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156CDAC(a1, 1);
  TSCE::UidCoordSetArchive::UidCoordSetArchive(v2, a1);
  return v2;
}

void *sub_221560F54(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156CE38(a1);
}

TSCE::UidCellRefSetArchive *sub_221561020(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156CF38(a1, 1);
  TSCE::UidCellRefSetArchive::UidCellRefSetArchive(v2, a1);
  return v2;
}

TSCE::ReferencesToDirtyArchive *sub_2215610AC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156CFC4(a1, 1);
  TSCE::ReferencesToDirtyArchive::ReferencesToDirtyArchive(v2, a1);
  return v2;
}

void *sub_221561138(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_22156D050(a1, 1);
  *result = &unk_2834AB080;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_2215611A8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_22156D0F8(a1, 1);
  *result = &unk_2834AB130;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCE::CoordMapperArchive *sub_221561218(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156D1A0(a1, 1);
  TSCE::CoordMapperArchive::CoordMapperArchive(v2, a1);
  return v2;
}

TSCE::ReferenceArchive *sub_2215612A4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156D22C(a1, 1);
  TSCE::ReferenceArchive::ReferenceArchive(v2, a1);
  return v2;
}

uint64_t sub_221561330(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156D2B8(a1);
}

TSCE::EdgesArchive *sub_221561400(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156D3BC(a1, 1);
  TSCE::EdgesArchive::EdgesArchive(v2, a1);
  return v2;
}

uint64_t sub_22156148C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_22156D448(a1, 1);
  *result = &unk_2834AB4A0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = a1;
  *(result + 64) = 0;
  *(result + 72) = a1;
  *(result + 80) = 0;
  *(result + 88) = a1;
  *(result + 96) = 0;
  return result;
}

TSCE::CellRecordArchive *sub_221561550(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156D4D4(a1, 1);
  TSCE::CellRecordArchive::CellRecordArchive(v2, a1);
  return v2;
}

TSCE::CellDependenciesArchive *sub_2215615DC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156D560(a1, 1);
  TSCE::CellDependenciesArchive::CellDependenciesArchive(v2, a1);
  return v2;
}

uint64_t sub_221561668(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156D5EC(a1);
}

TSCE::CellDependenciesExpandedArchive *sub_22156173C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156D6F4(a1, 1);
  TSCE::CellDependenciesExpandedArchive::CellDependenciesExpandedArchive(v2, a1);
  return v2;
}

TSCE::CellRecordTileArchive *sub_2215617C8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156D780(a1, 1);
  TSCE::CellRecordTileArchive::CellRecordTileArchive(v2, a1);
  return v2;
}

TSCE::CellDependenciesTiledArchive *sub_221561854(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156D80C(a1, 1);
  TSCE::CellDependenciesTiledArchive::CellDependenciesTiledArchive(v2, a1);
  return v2;
}

TSCE::VolatileDependenciesArchive *sub_2215618E0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156D898(a1, 1);
  TSCE::VolatileDependenciesArchive::VolatileDependenciesArchive(v2, a1);
  return v2;
}

uint64_t sub_22156196C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156D924(a1);
}

TSCE::RTreeInternalNodeContentsArchive *sub_221561A44(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156DA30(a1, 1);
  TSCE::RTreeInternalNodeContentsArchive::RTreeInternalNodeContentsArchive(v2, a1);
  return v2;
}

TSCE::RTreeLeafNodeContentsArchive *sub_221561AD0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156DABC(a1, 1);
  TSCE::RTreeLeafNodeContentsArchive::RTreeLeafNodeContentsArchive(v2, a1);
  return v2;
}

TSCE::RTreeNodeArchive *sub_221561B5C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156DB48(a1, 1);
  TSCE::RTreeNodeArchive::RTreeNodeArchive(v2, a1);
  return v2;
}

uint64_t sub_221561BE8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156DBD4(a1);
}

void *sub_221561CC0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156DCE0(a1);
}

TSCE::RangeDependenciesArchive *sub_221561D90(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156DDE4(a1, 1);
  TSCE::RangeDependenciesArchive::RangeDependenciesArchive(v2, a1);
  return v2;
}

void *sub_221561E1C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156DE70(a1);
}

TSCE::RangePrecedentsTileArchive *sub_221561EE8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156DF70(a1, 1);
  TSCE::RangePrecedentsTileArchive::RangePrecedentsTileArchive(v2, a1);
  return v2;
}

TSCE::RangeDependenciesTiledArchive *sub_221561F74(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156DFFC(a1, 1);
  TSCE::RangeDependenciesTiledArchive::RangeDependenciesTiledArchive(v2, a1);
  return v2;
}

TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells *sub_221562000(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156E088(a1, 1);
  TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::SpanningDependenciesArchive_ReferringColumnToLocalCells(v2, a1);
  return v2;
}

TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells *sub_22156208C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156E114(a1, 1);
  TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::SpanningDependenciesArchive_ReferringColumnToRemoteCells(v2, a1);
  return v2;
}

TSCE::SpanningDependenciesArchive *sub_221562118(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156E1A0(a1, 1);
  TSCE::SpanningDependenciesArchive::SpanningDependenciesArchive(v2, a1);
  return v2;
}

void *sub_2215621A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_22156E22C(a1, 1);
  *result = &unk_2834AC310;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext *sub_221562214(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156E2D4(a1, 1);
  TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext(v2, a1);
  return v2;
}

TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents *sub_2215622A0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156E360(a1, 1);
  TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents(v2, a1);
  return v2;
}

TSCE::SpanningDependenciesExpandedArchive *sub_22156232C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156E3EC(a1, 1);
  TSCE::SpanningDependenciesExpandedArchive::SpanningDependenciesExpandedArchive(v2, a1);
  return v2;
}

TSCE::WholeOwnerDependenciesArchive *sub_2215623B8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156E478(a1, 1);
  TSCE::WholeOwnerDependenciesArchive::WholeOwnerDependenciesArchive(v2, a1);
  return v2;
}

void *sub_221562444(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156E504(a1);
}

TSCE::ErrorArchive_ErrorDictionaryEntry *sub_221562510(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156E604(a1, 1);
  TSCE::ErrorArchive_ErrorDictionaryEntry::ErrorArchive_ErrorDictionaryEntry(v2, a1);
  return v2;
}

TSCE::ErrorArchive *sub_22156259C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156E690(a1, 1);
  TSCE::ErrorArchive::ErrorArchive(v2, a1);
  return v2;
}

TSCE::WarningArchive_WarningDictionaryEntry *sub_221562628(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156E71C(a1, 1);
  TSCE::WarningArchive_WarningDictionaryEntry::WarningArchive_WarningDictionaryEntry(v2, a1);
  return v2;
}

TSCE::WarningArchive *sub_2215626B4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156E7A8(a1, 1);
  TSCE::WarningArchive::WarningArchive(v2, a1);
  return v2;
}

uint64_t sub_221562740(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156E834(a1);
}

TSCE::CellErrorsArchive_EnhancedErrorForCell *sub_221562810(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156E938(a1, 1);
  TSCE::CellErrorsArchive_EnhancedErrorForCell::CellErrorsArchive_EnhancedErrorForCell(v2, a1);
  return v2;
}

TSCE::CellErrorsArchive *sub_22156289C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156E9C4(a1, 1);
  TSCE::CellErrorsArchive::CellErrorsArchive(v2, a1);
  return v2;
}

void *sub_221562928(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156EA50(a1);
}

TSCE::CellSpillSizesArchive *sub_2215629F4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156EB50(a1, 1);
  TSCE::CellSpillSizesArchive::CellSpillSizesArchive(v2, a1);
  return v2;
}

void *sub_221562A80(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156EBDC(a1);
}

void *sub_221562B4C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156ECDC(a1);
}

TSCE::UuidReferencesArchive_TableWithUuidRef *sub_221562C18(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156EDDC(a1, 1);
  TSCE::UuidReferencesArchive_TableWithUuidRef::UuidReferencesArchive_TableWithUuidRef(v2, a1);
  return v2;
}

TSCE::UuidReferencesArchive *sub_221562CA4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156EE68(a1, 1);
  TSCE::UuidReferencesArchive::UuidReferencesArchive(v2, a1);
  return v2;
}

uint64_t sub_221562D30(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156EEF4(a1);
}

uint64_t sub_221562E1C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156F014(a1);
}

uint64_t sub_221562EFC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156F128(a1);
}

uint64_t sub_221562FCC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156F22C(a1);
}

TSCE::OwnerIDMapArchive *sub_22156309C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156F330(a1, 1);
  TSCE::OwnerIDMapArchive::OwnerIDMapArchive(v2, a1);
  return v2;
}

TSCE::UidLookupListArchive *sub_221563128(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156F3BC(a1, 1);
  TSCE::UidLookupListArchive::UidLookupListArchive(v2, a1);
  return v2;
}

TSCE::DependencyTrackerArchive *sub_2215631B4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156F448(a1, 1);
  TSCE::DependencyTrackerArchive::DependencyTrackerArchive(v2, a1);
  return v2;
}

TSCE::RemoteDataSpecifierArchive *sub_221563240(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156F4D4(a1, 1);
  TSCE::RemoteDataSpecifierArchive::RemoteDataSpecifierArchive(v2, a1);
  return v2;
}

void *sub_2215632CC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156F560(a1);
}

TSCE::RemoteDataValueMapArchive *sub_221563398(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156F660(a1, 1);
  TSCE::RemoteDataValueMapArchive::RemoteDataValueMapArchive(v2, a1);
  return v2;
}

TSCE::StockArchive_AttributeEntry *sub_221563424(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156F6EC(a1, 1);
  TSCE::StockArchive_AttributeEntry::StockArchive_AttributeEntry(v2, a1);
  return v2;
}

TSCE::StockArchive *sub_2215634B0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156F778(a1, 1);
  TSCE::StockArchive::StockArchive(v2, a1);
  return v2;
}

TSCE::RemoteDataStoreArchive *sub_22156353C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156F804(a1, 1);
  TSCE::RemoteDataStoreArchive::RemoteDataStoreArchive(v2, a1);
  return v2;
}

TSCE::NameTrackedReferencePair *sub_2215635C8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156F890(a1, 1);
  TSCE::NameTrackedReferencePair::NameTrackedReferencePair(v2, a1);
  return v2;
}

TSCE::NamesByTrackedReferenceArchive *sub_221563654(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156F91C(a1, 1);
  TSCE::NamesByTrackedReferenceArchive::NamesByTrackedReferenceArchive(v2, a1);
  return v2;
}

TSCE::NamedReferenceManagerArchive *sub_2215636E0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156F9A8(a1, 1);
  TSCE::NamedReferenceManagerArchive::NamedReferenceManagerArchive(v2, a1);
  return v2;
}

TSCE::UuidSetStoreArchive_UuidSet *sub_22156376C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156FA34(a1, 1);
  TSCE::UuidSetStoreArchive_UuidSet::UuidSetStoreArchive_UuidSet(v2, a1);
  return v2;
}

TSCE::UuidSetStoreArchive *sub_2215637F8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156FAC0(a1, 1);
  TSCE::UuidSetStoreArchive::UuidSetStoreArchive(v2, a1);
  return v2;
}

TSCE::UuidReferenceMapArchive_CellRefsForUuid *sub_221563884(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156FB4C(a1, 1);
  TSCE::UuidReferenceMapArchive_CellRefsForUuid::UuidReferenceMapArchive_CellRefsForUuid(v2, a1);
  return v2;
}

TSCE::UuidReferenceMapArchive *sub_221563910(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156FBD8(a1, 1);
  TSCE::UuidReferenceMapArchive::UuidReferenceMapArchive(v2, a1);
  return v2;
}

void *sub_22156399C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22156FC64(a1);
}

TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy *sub_221563A68(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156FD64(a1, 1);
  TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::GroupByNodeMapArchive_GroupNodesForGroupBy(v2, a1);
  return v2;
}

TSCE::GroupByNodeMapArchive *sub_221563AF4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156FDF0(a1, 1);
  TSCE::GroupByNodeMapArchive::GroupByNodeMapArchive(v2, a1);
  return v2;
}

TSCE::CalculationEngineArchive *sub_221563B80(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156FE7C(a1, 1);
  TSCE::CalculationEngineArchive::CalculationEngineArchive(v2, a1);
  return v2;
}

uint64_t sub_221563C0C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_22156FF08(a1, 1);
  *result = &unk_2834AE0A0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

TSCE::CategoryReferenceArchive_CatRefUidList *sub_221563C80(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_22156FFB0(a1, 1);
  TSCE::CategoryReferenceArchive_CatRefUidList::CategoryReferenceArchive_CatRefUidList(v2, a1);
  return v2;
}

uint64_t sub_221563D0C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22157003C(a1);
}

void *sub_221563DEC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221570150(a1, 1);
  *result = &unk_2834AE2B0;
  result[1] = a1;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive *sub_221563E60(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2215701F8(a1, 1);
  TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive(v2, a1);
  return v2;
}

void *sub_221563EEC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221570284(a1, 1);
  *result = &unk_2834AE410;
  result[1] = a1;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

void *sub_221563F60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_22157032C(a1, 1);
  *result = &unk_2834AE4C0;
  result[1] = a1;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

TSCE::ASTNodeArrayArchive_ASTUidList *sub_221563FD4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2215703D4(a1, 1);
  TSCE::ASTNodeArrayArchive_ASTUidList::ASTNodeArrayArchive_ASTUidList(v2, a1);
  return v2;
}

TSCE::ASTNodeArrayArchive_ASTUidTract *sub_221564060(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221570460(a1, 1);
  TSCE::ASTNodeArrayArchive_ASTUidTract::ASTNodeArrayArchive_ASTUidTract(v2, a1);
  return v2;
}

uint64_t sub_2215640EC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2215704EC(a1, 1);
  *result = &unk_2834AE6D0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

TSCE::ASTNodeArrayArchive_ASTUidTractList *sub_221564160(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221570594(a1, 1);
  TSCE::ASTNodeArrayArchive_ASTUidTractList::ASTNodeArrayArchive_ASTUidTractList(v2, a1);
  return v2;
}

uint64_t sub_2215641EC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221570620(a1);
}

uint64_t sub_2215642BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221570724(a1, 1);
  *result = &unk_2834AE8E0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_221564330(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2215707CC(a1);
}

void *sub_2215643FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2215708CC(a1, 1);
  *result = &unk_2834AEA40;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_22156446C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221570974(a1, 1);
  *result = &unk_2834AEAF0;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCE::ASTNodeArrayArchive_ASTColonTractArchive *sub_2215644DC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221570A1C(a1, 1);
  TSCE::ASTNodeArrayArchive_ASTColonTractArchive::ASTNodeArrayArchive_ASTColonTractArchive(v2, a1);
  return v2;
}

TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive *sub_221564568(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221570AA8(a1, 1);
  TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive(v2, a1);
  return v2;
}

TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive *sub_2215645F4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221570B34(a1, 1);
  TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::ASTNodeArrayArchive_ASTLambdaIdentsListArchive(v2, a1);
  return v2;
}

TSCE::ASTNodeArrayArchive_ASTNodeArchive *sub_221564680(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221570BC0(a1, 1);
  TSCE::ASTNodeArrayArchive_ASTNodeArchive::ASTNodeArrayArchive_ASTNodeArchive(v2, a1);
  return v2;
}

TSCE::ASTNodeArrayArchive *sub_22156470C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221570C4C(a1, 1);
  TSCE::ASTNodeArrayArchive::ASTNodeArrayArchive(v2, a1);
  return v2;
}

void *sub_221564798(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221570CD8(a1, 1);
  *result = &unk_2834AEF10;
  result[1] = a1;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

uint64_t sub_22156480C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221570D80(a1);
}

void *sub_2215648E8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221570E90(a1);
}

TSCE::FormatStructArchive *sub_2215649B4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221570F90(a1, 1);
  TSCE::FormatStructArchive::FormatStructArchive(v2, a1);
  return v2;
}

void *sub_221564A40(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_22157101C(a1, 1);
  *result = &unk_2834AF1D0;
  result[1] = a1;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_221564AB4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2215710C4(a1);
}

double sub_221564B84(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2215711C8(a1);
}

uint64_t sub_221564BF4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2215712C0(a1);
}

void *sub_221564CE4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2215713E4(a1);
}

TSCE::RewriteTableUIDInfoArchive *sub_221564DB0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2215714E4(a1, 1);
  TSCE::RewriteTableUIDInfoArchive::RewriteTableUIDInfoArchive(v2, a1);
  return v2;
}

void *sub_221564E3C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221571570(a1, 1);
  *result = &unk_2834AF5F0;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCE::GroupByChangeArchive *sub_221564EAC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221571618(a1, 1);
  TSCE::GroupByChangeArchive::GroupByChangeArchive(v2, a1);
  return v2;
}

void *sub_221564F38(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2215716A4(a1);
}

uint64_t sub_221565004(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2215717A4(a1);
}

TSCE::IndexedUidsArchive *sub_2215650D4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2215718A8(a1, 1);
  TSCE::IndexedUidsArchive::IndexedUidsArchive(v2, a1);
  return v2;
}

TSCE::RewriteRangeEntryArchive *sub_221565160(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221571934(a1, 1);
  TSCE::RewriteRangeEntryArchive::RewriteRangeEntryArchive(v2, a1);
  return v2;
}

TSCE::ColumnOrRowUuidsInfoArchive *sub_2215651EC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2215719C0(a1, 1);
  TSCE::ColumnOrRowUuidsInfoArchive::ColumnOrRowUuidsInfoArchive(v2, a1);
  return v2;
}

void *sub_221565278(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221571A4C(a1);
}

uint64_t sub_221565348(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221571B50(a1);
}

void *sub_221565420(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221571C5C(a1, 1);
  *result = &unk_2834AFC20;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_221565490(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221571D04(a1);
}

void *sub_22156555C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221571E04(a1);
}

uint64_t sub_221565628(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_221571F04(a1, 1);
  *result = &unk_2834AFE30;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

TSCE::CellCoordinateVectorArchive *sub_22156569C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221571FAC(a1, 1);
  TSCE::CellCoordinateVectorArchive::CellCoordinateVectorArchive(v2, a1);
  return v2;
}

void *sub_221565728(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221572038(a1);
}

TSCE::ExpandedCellRefObjectMapArchive *sub_2215657F4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221572138(a1, 1);
  TSCE::ExpandedCellRefObjectMapArchive::ExpandedCellRefObjectMapArchive(v2, a1);
  return v2;
}

uint64_t sub_221565880(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2215721C4(a1);
}

TSCE::FormulaCoordPairsByOwnerArchive *sub_221565950(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2215722C8(a1, 1);
  TSCE::FormulaCoordPairsByOwnerArchive::FormulaCoordPairsByOwnerArchive(v2, a1);
  return v2;
}

TSCE::FormulasForUndoArchive *sub_2215659DC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221572354(a1, 1);
  TSCE::FormulasForUndoArchive::FormulasForUndoArchive(v2, a1);
  return v2;
}

void *sub_221565A68(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2215723E0(a1);
}

uint64_t sub_221565B34(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2215724E0(a1);
}

void *sub_221565C04(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2215725E4(a1);
}

TSCE::TrackedReferenceStoreArchive *sub_221565CD0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2215726E4(a1, 1);
  TSCE::TrackedReferenceStoreArchive::TrackedReferenceStoreArchive(v2, a1);
  return v2;
}

uint64_t sub_221565D5C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221572770(a1);
}

uint64_t sub_221565E34(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_22157287C(a1);
}

uint64_t sub_221565F04(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_221572980(a1);
}

TSCE::NumberCellValueArchive *sub_221565FD4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221572A84(a1, 1);
  TSCE::NumberCellValueArchive::NumberCellValueArchive(v2, a1);
  return v2;
}

TSCE::StringCellValueArchive *sub_221566060(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221572B10(a1, 1);
  TSCE::StringCellValueArchive::StringCellValueArchive(v2, a1);
  return v2;
}

TSCE::ErrorCellValueArchive *sub_2215660EC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221572B9C(a1, 1);
  TSCE::ErrorCellValueArchive::ErrorCellValueArchive(v2, a1);
  return v2;
}

TSCE::CellValueArchive *sub_221566178(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_221572C28(a1, 1);
  TSCE::CellValueArchive::CellValueArchive(v2, a1);
  return v2;
}

uint64_t sub_221567030(uint64_t a1, uint64_t *a2)
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

void *sub_2215670A8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2215670EC(a1, 0);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_2215670EC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF234(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_221567174);
}

void sub_221567174(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t *sub_221567188(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_2215671D0(v2);
  *a1 = v3 | 1;
  *v3 = v2;
  return v3 + 1;
}

double sub_2215671D0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = sub_221567214(a1, 0);
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

uint64_t sub_221567214(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF270(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_22156729C);
}

void sub_22156729C(uint64_t a1)
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

uint64_t sub_221567300(uint64_t result)
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

uint64_t sub_22156734C(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = sub_221567188(a1);
  }

  return MEMORY[0x2821EAB30](v3, a2);
}

uint64_t *sub_221567398(uint64_t *a1)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_221567188(a1);
  }

  if (*result != result[1])
  {

    return google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t *sub_2215673E8(uint64_t *a1, uint64_t *a2)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_221567188(a1);
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

void sub_221567450(void *a1)
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
          sub_2214DFCF8((v5 + 8));
          MEMORY[0x223DA1450](v5, 0x1081C404FE48876);
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

uint64_t sub_2215674E8(uint64_t result, TSCE::IndexSetArchive_IndexSetEntry **a2, TSCE::IndexSetArchive_IndexSetEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221567598(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive_IndexSetEntry>(v18);
      result = sub_221567598(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2215675A8(void *a1)
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
          TSCE::CellCoordSetArchive_ColumnEntry::~CellCoordSetArchive_ColumnEntry(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156762C(uint64_t result, TSCE::CellCoordSetArchive_ColumnEntry **a2, TSCE::CellCoordSetArchive_ColumnEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2215676DC(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive_ColumnEntry>(v18);
      result = sub_2215676DC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2215676EC(void *a1)
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
          TSCE::InternalCellRefSetArchive_OwnerEntry::~InternalCellRefSetArchive_OwnerEntry(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_221567770(uint64_t result, TSCE::InternalCellRefSetArchive_OwnerEntry **a2, TSCE::InternalCellRefSetArchive_OwnerEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221567820(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive_OwnerEntry>(v18);
      result = sub_221567820(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221567830(void *a1)
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
          TSCE::CellRefSetArchive_OwnerEntry::~CellRefSetArchive_OwnerEntry(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_2215678B4(uint64_t result, TSCE::CellRefSetArchive_OwnerEntry **a2, TSCE::CellRefSetArchive_OwnerEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221567964(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellRefSetArchive_OwnerEntry>(v18);
      result = sub_221567964(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221567974(void *a1)
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
          TSP::UUID::~UUID(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_2215679F8(uint64_t result, TSP::UUID **a2, TSP::UUID **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221567AA8(v13, v15);
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
      v22 = MEMORY[0x223DA0360](v18);
      result = sub_221567AA8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221567AB8(void *a1)
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
          TSCE::UidCoordSetArchive_ColumnEntry::~UidCoordSetArchive_ColumnEntry(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_221567B3C(uint64_t result, TSCE::UidCoordSetArchive_ColumnEntry **a2, TSCE::UidCoordSetArchive_ColumnEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221567BEC(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidCoordSetArchive_ColumnEntry>(v18);
      result = sub_221567BEC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221567BFC(void *a1)
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
          TSCE::UidCellRefSetArchive_OwnerEntry::~UidCellRefSetArchive_OwnerEntry(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_221567C80(uint64_t result, TSCE::UidCellRefSetArchive_OwnerEntry **a2, TSCE::UidCellRefSetArchive_OwnerEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221567D30(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidCellRefSetArchive_OwnerEntry>(v18);
      result = sub_221567D30(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221567D40(void *a1)
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
          TSCE::InternalRangeReferenceArchive::~InternalRangeReferenceArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_221567DC4(uint64_t result, TSCE::InternalRangeReferenceArchive **a2, TSCE::InternalRangeReferenceArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221567E74(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalRangeReferenceArchive>(v18);
      result = sub_221567E74(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_221567E84(uint64_t result, TSCE::CoordMapperArchive_BaseToViewEntry **a2, TSCE::CoordMapperArchive_BaseToViewEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221567F34(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive_BaseToViewEntry>(v18);
      result = sub_221567F34(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_221567F44(uint64_t result, TSCE::CoordMapperArchive_SummaryToViewEntry **a2, TSCE::CoordMapperArchive_SummaryToViewEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221567FF4(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CoordMapperArchive_SummaryToViewEntry>(v18);
      result = sub_221567FF4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221568004(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x223D9FBD0]();
          MEMORY[0x223DA1450](v5, 0x1081C401753DA55);
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

uint64_t sub_221568088(uint64_t result, TSP::CFUUIDArchive **a2, TSP::CFUUIDArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221568138(v13, v15);
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
      v22 = MEMORY[0x223DA0300](v18);
      result = sub_221568138(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221568148(void *a1)
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
          TSCE::EdgeArchive::~EdgeArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_2215681CC(uint64_t result, TSCE::EdgeArchive **a2, TSCE::EdgeArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156827C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::EdgeArchive>(v18);
      result = sub_22156827C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156828C(void *a1)
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
          TSCE::CellRecordArchive::~CellRecordArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_221568310(uint64_t result, TSCE::CellRecordArchive **a2, TSCE::CellRecordArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2215683C0(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellRecordArchive>(v18);
      result = sub_2215683C0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2215683D0(void *a1)
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
          TSCE::CellRecordExpandedArchive::~CellRecordExpandedArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_221568454(uint64_t result, TSCE::CellRecordExpandedArchive **a2, TSCE::CellRecordExpandedArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221568504(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellRecordExpandedArchive>(v18);
      result = sub_221568504(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_221568514(uint64_t result, TSP::Reference **a2, TSP::Reference **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2216E38A0(v13, v15);
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
      v22 = MEMORY[0x223DA0390](v18);
      result = sub_2216E38A0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2215685C4(void *a1)
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
          sub_2214DFCF8((v5 + 8));
          MEMORY[0x223DA1450](v5, 0x1081C40B7564605);
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

void sub_22156865C(void *a1)
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
          TSCE::CellReferenceArchive::~CellReferenceArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_2215686E0(uint64_t result, TSCE::CellCoordinateArchive **a2, TSCE::CellCoordinateArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221568790(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v18);
      result = sub_221568790(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_2215687A0(uint64_t result, TSCE::CellReferenceArchive **a2, TSCE::CellReferenceArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221568850(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v18);
      result = sub_221568850(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221568860(void *a1)
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
          TSCE::RTreeInternalNodeContentsArchive::~RTreeInternalNodeContentsArchive(*v3);
          MEMORY[0x223DA1450]();
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

void sub_2215688E4(void *a1)
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
          TSCE::RTreeLeafNodeContentsArchive::~RTreeLeafNodeContentsArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_221568968(uint64_t result, TSCE::RTreeInternalNodeContentsArchive **a2, TSCE::RTreeInternalNodeContentsArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221568A18(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RTreeInternalNodeContentsArchive>(v18);
      result = sub_221568A18(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_221568A28(uint64_t result, TSCE::RTreeLeafNodeContentsArchive **a2, TSCE::RTreeLeafNodeContentsArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221568AD8(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RTreeLeafNodeContentsArchive>(v18);
      result = sub_221568AD8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221568AE8(void *a1)
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
          TSCE::RangeBackDependencyArchive::~RangeBackDependencyArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_221568B6C(uint64_t result, TSCE::RangeBackDependencyArchive **a2, TSCE::RangeBackDependencyArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221568C1C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeBackDependencyArchive>(v18);
      result = sub_221568C1C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221568C2C(void *a1)
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
          TSCE::RangePrecedentsTileArchive_FromToRangeArchive::~RangePrecedentsTileArchive_FromToRangeArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_221568CB0(uint64_t result, TSCE::RangePrecedentsTileArchive_FromToRangeArchive **a2, TSCE::RangePrecedentsTileArchive_FromToRangeArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221568D60(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangePrecedentsTileArchive_FromToRangeArchive>(v18);
      result = sub_221568D60(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221568D70(void *a1)
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
          TSCE::InternalCellReferenceArchive::~InternalCellReferenceArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_221568DF4(uint64_t result, TSCE::InternalCellReferenceArchive **a2, TSCE::InternalCellReferenceArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221568EA4(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellReferenceArchive>(v18);
      result = sub_221568EA4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221568EB4(void *a1)
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
          TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::~SpanningDependenciesArchive_ReferringColumnToLocalCells(*v3);
          MEMORY[0x223DA1450]();
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

void sub_221568F38(void *a1)
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
          TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::~SpanningDependenciesArchive_ReferringColumnToRemoteCells(*v3);
          MEMORY[0x223DA1450]();
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

google::protobuf::internal *sub_221568FBC(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
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
        result = sub_221569120(result, v15, &v18);
        if (v15 != result)
        {
          return 0;
        }

        return result;
      }

      v10 = a3[1];
      v18 = *a3;
      v19 = v10;
      result = sub_221569120(result, v8, &v18);
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
    if (sub_221569120((&v20 + v12), &v20 + v13, &v18) != (&v20 + v13))
    {
      return 0;
    }

    return (*(a1 + 8) + v13);
  }

  return result;
}

unsigned __int8 *sub_221569120(google::protobuf::internal *this, unint64_t a2, unsigned int **a3)
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
          sub_2210BBC64(*a3, v10 + 1);
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
          v13 = sub_221567188(v12);
        }

        google::protobuf::UnknownFieldSet::AddVarint(v13);
      }
    }

    while (v3 < a2);
  }

  return v3;
}

uint64_t sub_221569240(uint64_t result, TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells **a2, TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2215692F0(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells>(v18);
      result = sub_2215692F0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_221569300(uint64_t result, TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells **a2, TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2215693B0(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells>(v18);
      result = sub_2215693B0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_2215693C0(uint64_t result, TSCE::SpanningDependenciesExpandedArchive_ExtentRange **a2, TSCE::SpanningDependenciesExpandedArchive_ExtentRange **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221569470(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive_ExtentRange>(v18);
      result = sub_221569470(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221569480(void *a1)
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
          TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::~SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_221569504(uint64_t result, TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext **a2, TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2215695B4(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext>(v18);
      result = sub_2215695B4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2215695C4(void *a1)
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
          TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::~SpanningDependenciesExpandedArchive_CellCoordRefersToExtents(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_221569648(uint64_t result, TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents **a2, TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2215696F8(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents>(v18);
      result = sub_2215696F8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221569708(void *a1)
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
          TSCE::ErrorArchive_ErrorDictionaryEntry::~ErrorArchive_ErrorDictionaryEntry(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156978C(uint64_t result, TSCE::ErrorArchive_ErrorDictionaryEntry **a2, TSCE::ErrorArchive_ErrorDictionaryEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156983C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ErrorArchive_ErrorDictionaryEntry>(v18);
      result = sub_22156983C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156984C(void *a1)
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
          TSCE::WarningArchive_WarningDictionaryEntry::~WarningArchive_WarningDictionaryEntry(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_2215698D0(uint64_t result, TSCE::WarningArchive_WarningDictionaryEntry **a2, TSCE::WarningArchive_WarningDictionaryEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221569980(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WarningArchive_WarningDictionaryEntry>(v18);
      result = sub_221569980(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221569990(void *a1)
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
          TSCE::WarningArchive::~WarningArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_221569A14(uint64_t result, TSCE::WarningArchive **a2, TSCE::WarningArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221569AC4(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WarningArchive>(v18);
      result = sub_221569AC4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221569AD4(void *a1)
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
          TSCE::CellErrorsArchive_ErrorForCell::~CellErrorsArchive_ErrorForCell(*v3);
          MEMORY[0x223DA1450]();
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

void sub_221569B58(void *a1)
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
          TSCE::CellErrorsArchive_EnhancedErrorForCell::~CellErrorsArchive_EnhancedErrorForCell(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_221569BDC(uint64_t result, TSCE::CellErrorsArchive_ErrorForCell **a2, TSCE::CellErrorsArchive_ErrorForCell **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221569C8C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellErrorsArchive_ErrorForCell>(v18);
      result = sub_221569C8C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_221569C9C(uint64_t result, TSCE::CellErrorsArchive_EnhancedErrorForCell **a2, TSCE::CellErrorsArchive_EnhancedErrorForCell **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221569D4C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellErrorsArchive_EnhancedErrorForCell>(v18);
      result = sub_221569D4C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221569D5C(void *a1)
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
          TSCE::CellSpillSizesArchive_SpillForCell::~CellSpillSizesArchive_SpillForCell(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_221569DE0(uint64_t result, TSCE::CellSpillSizesArchive_SpillForCell **a2, TSCE::CellSpillSizesArchive_SpillForCell **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221569E90(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellSpillSizesArchive_SpillForCell>(v18);
      result = sub_221569E90(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221569EA0(void *a1)
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
          TSCE::UuidReferencesArchive_UuidRef::~UuidReferencesArchive_UuidRef(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_221569F24(uint64_t result, TSCE::UuidReferencesArchive_UuidRef **a2, TSCE::UuidReferencesArchive_UuidRef **a3, unsigned int a4, unsigned int a5)
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
      result = sub_221569FD4(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferencesArchive_UuidRef>(v18);
      result = sub_221569FD4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_221569FE4(void *a1)
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
          TSCE::UuidReferencesArchive_TableRef::~UuidReferencesArchive_TableRef(*v3);
          MEMORY[0x223DA1450]();
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

void sub_22156A068(void *a1)
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
          TSCE::UuidReferencesArchive_TableWithUuidRef::~UuidReferencesArchive_TableWithUuidRef(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156A0EC(uint64_t result, TSCE::UuidReferencesArchive_TableRef **a2, TSCE::UuidReferencesArchive_TableRef **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156A19C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferencesArchive_TableRef>(v18);
      result = sub_22156A19C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}