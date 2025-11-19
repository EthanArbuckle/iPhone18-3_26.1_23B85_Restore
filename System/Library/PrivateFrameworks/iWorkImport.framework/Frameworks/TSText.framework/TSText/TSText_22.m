uint64_t TSWP::MergeCellsCommandArchive::ByteSizeLong(TSWP::MergeCellsCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x7F) == 0)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = TSWP::UndoTransaction::ByteSizeLong(*(this + 5));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v3 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v3 += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  v3 += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) != 0)
  {
LABEL_13:
    v3 += ((9 * (__clz(*(this + 15) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::MergeCellsCommandArchive::MergeFrom(TSWP::MergeCellsCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::MergeCellsCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::MergeCellsCommandArchive::MergeFrom(uint64_t this, const TSWP::MergeCellsCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277CA31C0](v7);
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
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_30;
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

      v9 = MEMORY[0x277CA3250](v10);
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

    this = TSP::Reference::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = &TSWP::_UndoTransaction_default_instance_;
    }

    this = TSWP::UndoTransaction::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_39;
    }

LABEL_38:
    *(v3 + 48) = *(a2 + 12);
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
    *(v3 + 52) = *(a2 + 13);
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
      *(v3 + 60) = *(a2 + 15);
      goto LABEL_12;
    }

LABEL_40:
    *(v3 + 56) = *(a2 + 14);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return this;
}

uint64_t *TSWP::MergeCellsCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::MergeCellsCommandArchive::Clear(this);

    return TSWP::MergeCellsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::MergeCellsCommandArchive::CopyFrom(uint64_t *this, const TSWP::MergeCellsCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::MergeCellsCommandArchive::Clear(this);

    return TSWP::MergeCellsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::MergeCellsCommandArchive::IsInitialized(TSWP::MergeCellsCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

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

  result = TSWP::UndoTransaction::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::MergeCellsCommandArchive::InternalSwap(TSWP::MergeCellsCommandArchive *this, TSWP::MergeCellsCommandArchive *a2)
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
  result = *(a2 + 40);
  *(this + 40) = result;
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  return result;
}

TSK::CommandArchive *TSWP::ApplyPlaceholderTextCommandArchive::clear_super(TSWP::ApplyPlaceholderTextCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSWP::ApplyPlaceholderTextCommandArchive::clear_storage(TSWP::ApplyPlaceholderTextCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t *TSWP::ApplyPlaceholderTextCommandArchive::clear_undo_transaction(TSWP::ApplyPlaceholderTextCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSWP::UndoTransaction::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSWP::ApplyPlaceholderTextCommandArchive *TSWP::ApplyPlaceholderTextCommandArchive::ApplyPlaceholderTextCommandArchive(TSWP::ApplyPlaceholderTextCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288607AB0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ApplyPlaceholderTextCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  return this;
}

TSWP::ApplyPlaceholderTextCommandArchive *TSWP::ApplyPlaceholderTextCommandArchive::ApplyPlaceholderTextCommandArchive(TSWP::ApplyPlaceholderTextCommandArchive *this, const TSWP::ApplyPlaceholderTextCommandArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288607AB0;
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
  if ((v4 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  *(this + 7) = *(a2 + 7);
  return this;
}

void TSWP::ApplyPlaceholderTextCommandArchive::~ApplyPlaceholderTextCommandArchive(TSWP::ApplyPlaceholderTextCommandArchive *this)
{
  sub_276F07458(this);
  sub_276E4E808(this + 1);
}

{
  TSWP::ApplyPlaceholderTextCommandArchive::~ApplyPlaceholderTextCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

TSWP::UndoTransaction *sub_276F07458(TSWP::UndoTransaction *result)
{
  v1 = result;
  v2 = *(result + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  if (v1 != &TSWP::_ApplyPlaceholderTextCommandArchive_default_instance_)
  {
    if (*(v1 + 4))
    {
      v3 = MEMORY[0x277CA2910]();
      MEMORY[0x277CA3D00](v3, 0x10A1C40C24530F0);
    }

    v4 = *(v1 + 5);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277CA3D00]();
    }

    result = *(v1 + 6);
    if (result)
    {
      TSWP::UndoTransaction::~UndoTransaction(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::ApplyPlaceholderTextCommandArchive::default_instance(TSWP::ApplyPlaceholderTextCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ApplyPlaceholderTextCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ApplyPlaceholderTextCommandArchive_default_instance_;
}

uint64_t *TSWP::ApplyPlaceholderTextCommandArchive::Clear(uint64_t *this)
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

LABEL_17:
    this = TSK::CommandArchive::Clear(this[4]);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_18:
  this = TSP::Reference::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSWP::UndoTransaction::Clear(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0x30) != 0)
  {
    *(v1 + 56) = 0;
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

google::protobuf::internal *TSWP::ApplyPlaceholderTextCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_64;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 != 4)
        {
          if (v10 == 5)
          {
            if (v8 != 42)
            {
              goto LABEL_47;
            }

            *(a1 + 16) |= 8u;
            v25 = *(a1 + 48);
            if (!v25)
            {
              v26 = *(a1 + 8);
              if (v26)
              {
                v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
              }

              v25 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v26);
              *(a1 + 48) = v25;
              v7 = v34;
            }

            v15 = sub_276F53144(a3, v25, v7);
          }

          else
          {
            if (v10 == 6 && v8 == 50)
            {
              *(a1 + 16) |= 1u;
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v15 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_54;
            }

LABEL_47:
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
              sub_276EA4A94((a1 + 8));
            }

            v15 = google::protobuf::internal::UnknownFieldParse();
          }

LABEL_54:
          v34 = v15;
          if (!v15)
          {
            goto LABEL_64;
          }

          goto LABEL_55;
        }

        if (v8 != 32)
        {
          goto LABEL_47;
        }

        v5 |= 0x20u;
        v19 = (v7 + 1);
        LODWORD(v20) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        v21 = *v19;
        v20 = (v20 + (v21 << 7) - 128);
        if ((v21 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_34:
          v34 = v19;
          *(a1 + 60) = v20;
          goto LABEL_55;
        }

        v30 = google::protobuf::internal::VarintParseSlow32(v7, v20);
        v34 = v30;
        *(a1 + 60) = v31;
        if (!v30)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_47;
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

            v18 = MEMORY[0x277CA31C0](v17);
            LODWORD(v16) = v18;
            *(a1 + 32) = v18;
            v7 = v34;
          }

          v15 = sub_276F58170(a3, v16, v7);
          goto LABEL_54;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_47;
          }

          *(a1 + 16) |= 4u;
          v22 = *(a1 + 40);
          if (!v22)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = MEMORY[0x277CA3250](v23);
            LODWORD(v22) = v24;
            *(a1 + 40) = v24;
            v7 = v34;
          }

          v15 = sub_276F4F9E8(a3, v22, v7);
          goto LABEL_54;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_47;
        }

        v5 |= 0x10u;
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_18:
          v34 = v12;
          *(a1 + 56) = v13;
          goto LABEL_55;
        }

        v32 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v34 = v32;
        *(a1 + 56) = v33;
        if (!v32)
        {
LABEL_64:
          v34 = 0;
          goto LABEL_2;
        }
      }

LABEL_55:
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

unsigned __int8 *TSWP::ApplyPlaceholderTextCommandArchive::_InternalSerialize(TSWP::ApplyPlaceholderTextCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v4 = TSK::CommandArchive::_InternalSerialize(v9, v11, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
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

  v15 = *(this + 5);
  *v4 = 18;
  v16 = *(v15 + 5);
  if (v16 > 0x7F)
  {
    v4[1] = v16 | 0x80;
    v18 = v16 >> 7;
    if (v16 >> 14)
    {
      v17 = v4 + 3;
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
      v4[2] = v18;
      v17 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v16;
    v17 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v15, v17, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_41:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(this + 15);
    *v4 = 32;
    if (v25 > 0x7F)
    {
      v4[1] = v25 | 0x80;
      v26 = v25 >> 7;
      if (v25 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v26 | 0x80;
          v27 = v26 >> 7;
          ++v4;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
        *(v4 - 1) = v27;
        if ((v6 & 8) != 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v4[2] = v26;
        v4 += 3;
        if ((v6 & 8) != 0)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      v4[1] = v25;
      v4 += 2;
      if ((v6 & 8) != 0)
      {
        goto LABEL_52;
      }
    }

LABEL_6:
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_30:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 14);
  *v4 = 24;
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
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v4[2] = v22;
      v4 += 3;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    v4[1] = v21;
    v4 += 2;
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_41;
    }
  }

LABEL_5:
  if ((v6 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_52:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 6);
  *v4 = 42;
  v30 = *(v29 + 5);
  if (v30 > 0x7F)
  {
    v4[1] = v30 | 0x80;
    v32 = v30 >> 7;
    if (v30 >> 14)
    {
      v31 = v4 + 3;
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
      v4[2] = v32;
      v31 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v30;
    v31 = v4 + 2;
  }

  v4 = TSWP::UndoTransaction::_InternalSerialize(v29, v31, a3);
  if (v6)
  {
LABEL_7:
    v4 = sub_276E5154C(a3, 6, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_8:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ApplyPlaceholderTextCommandArchive::ByteSizeLong(TSWP::ApplyPlaceholderTextCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = TSK::CommandArchive::ByteSizeLong(*(this + 4));
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
    v9 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v10 = TSWP::UndoTransaction::ByteSizeLong(*(this + 6));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_19:
  v3 += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_14:
    v3 += ((9 * (__clz(*(this + 15) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
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

uint64_t TSWP::ApplyPlaceholderTextCommandArchive::MergeFrom(TSWP::ApplyPlaceholderTextCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ApplyPlaceholderTextCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ApplyPlaceholderTextCommandArchive::MergeFrom(uint64_t this, const TSWP::ApplyPlaceholderTextCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = MEMORY[0x277CA31C0](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = MEMORY[0x277D80718];
    }

    this = TSK::CommandArchive::MergeFrom(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_22:
    *(v3 + 16) |= 4u;
    v9 = *(v3 + 40);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277CA3250](v10);
      *(v3 + 40) = v9;
    }

    if (*(a2 + 5))
    {
      v11 = *(a2 + 5);
    }

    else
    {
      v11 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v9, v11);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(v3 + 16) |= 8u;
    v12 = *(v3 + 48);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v13);
      *(v3 + 48) = v12;
    }

    if (*(a2 + 6))
    {
      v14 = *(a2 + 6);
    }

    else
    {
      v14 = &TSWP::_UndoTransaction_default_instance_;
    }

    this = TSWP::UndoTransaction::MergeFrom(v12, v14);
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
      *(v3 + 60) = *(a2 + 15);
      goto LABEL_11;
    }

LABEL_38:
    *(v3 + 56) = *(a2 + 14);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSWP::ApplyPlaceholderTextCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ApplyPlaceholderTextCommandArchive::Clear(this);

    return TSWP::ApplyPlaceholderTextCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ApplyPlaceholderTextCommandArchive::CopyFrom(uint64_t *this, const TSWP::ApplyPlaceholderTextCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ApplyPlaceholderTextCommandArchive::Clear(this);

    return TSWP::ApplyPlaceholderTextCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ApplyPlaceholderTextCommandArchive::IsInitialized(TSWP::ApplyPlaceholderTextCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = TSWP::UndoTransaction::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::ApplyPlaceholderTextCommandArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  this[2] = a2[2];
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u64[1] = v7;
  v8 = this[3].n128_u64[0];
  v9 = this[3].n128_u64[1];
  result = a2[3];
  this[3] = result;
  a2[3].n128_u64[0] = v8;
  a2[3].n128_u64[1] = v9;
  return result;
}

TSP::Reference *TSWP::UpdateDateTimeFieldCommandArchive::clear_date_time_field(TSWP::UpdateDateTimeFieldCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Date *TSWP::UpdateDateTimeFieldCommandArchive::clear_date(TSWP::UpdateDateTimeFieldCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::UpdateDateTimeFieldCommandArchive *TSWP::UpdateDateTimeFieldCommandArchive::UpdateDateTimeFieldCommandArchive(TSWP::UpdateDateTimeFieldCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288607B60;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UpdateDateTimeFieldCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288607B60;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UpdateDateTimeFieldCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWP::UpdateDateTimeFieldCommandArchive *TSWP::UpdateDateTimeFieldCommandArchive::UpdateDateTimeFieldCommandArchive(TSWP::UpdateDateTimeFieldCommandArchive *this, const TSWP::UpdateDateTimeFieldCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288607B60;
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
  *(this + 6) = *(a2 + 6);
  return this;
}

void TSWP::UpdateDateTimeFieldCommandArchive::~UpdateDateTimeFieldCommandArchive(TSWP::UpdateDateTimeFieldCommandArchive *this)
{
  if (this != &TSWP::_UpdateDateTimeFieldCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::TextCommandArchive::~TextCommandArchive(v2);
      MEMORY[0x277CA3D00]();
    }

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
  TSWP::UpdateDateTimeFieldCommandArchive::~UpdateDateTimeFieldCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::UpdateDateTimeFieldCommandArchive::default_instance(TSWP::UpdateDateTimeFieldCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_UpdateDateTimeFieldCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UpdateDateTimeFieldCommandArchive_default_instance_;
}

uint64_t *TSWP::UpdateDateTimeFieldCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSWP::TextCommandArchive::Clear(this[3]);
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

    this = TSP::Reference::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSP::Date::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  if ((v2 & 0x18) != 0)
  {
    *(v1 + 48) = 0;
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

google::protobuf::internal *TSWP::UpdateDateTimeFieldCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  while ((sub_276EA4A1C(a3, &v33) & 1) == 0)
  {
    v5 = (v33 + 1);
    v6 = *v33;
    if (*v33 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v7 - 128));
        v33 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v29;
        goto LABEL_7;
      }

      v5 = (v33 + 2);
    }

    v33 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 2)
    {
      if (v8 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 1u;
        v25 = *(a1 + 24);
        if (!v25)
        {
          v26 = *(a1 + 8);
          if (v26)
          {
            v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TextCommandArchive>(v26);
          *(a1 + 24) = v25;
          v5 = v33;
        }

        v17 = sub_276F584B0(a3, v25, v5);
      }

      else
      {
        if (v8 != 2 || v6 != 18)
        {
LABEL_48:
          if (v6)
          {
            v27 = (v6 & 7) == 4;
          }

          else
          {
            v27 = 1;
          }

          if (v27)
          {
            *(a3 + 80) = v6 - 1;
            return v33;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v17 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_55;
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

          v16 = MEMORY[0x277CA3250](v15);
          LODWORD(v14) = v16;
          *(a1 + 32) = v16;
          v5 = v33;
        }

        v17 = sub_276F4F9E8(a3, v14, v5);
      }

LABEL_55:
      v33 = v17;
      if (!v17)
      {
        return 0;
      }
    }

    else
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_48;
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

          v20 = MEMORY[0x277CA31F0](v19);
          LODWORD(v18) = v20;
          *(a1 + 40) = v20;
          v5 = v33;
        }

        v17 = sub_276F52514(a3, v18, v5);
        goto LABEL_55;
      }

      if (v8 == 4)
      {
        if (v6 != 32)
        {
          goto LABEL_48;
        }

        v21 = (v5 + 1);
        v22 = *v5;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        v23 = *v21;
        v24 = (v23 << 7) + v22;
        v22 = (v24 - 128);
        if ((v23 & 0x80000000) == 0)
        {
          v21 = (v5 + 2);
LABEL_39:
          v33 = v21;
          goto LABEL_40;
        }

        v33 = google::protobuf::internal::VarintParseSlow64(v5, (v24 - 128));
        if (!v33)
        {
          return 0;
        }

        v22 = v30;
LABEL_40:
        if (TSWP::DateTimeSmartFieldArchive_DateTimeFormatterStyle_IsValid(v22))
        {
          *(a1 + 16) |= 8u;
          *(a1 + 48) = v22;
        }

        else
        {
          sub_276F53E30();
        }
      }

      else
      {
        if (v8 != 5 || v6 != 40)
        {
          goto LABEL_48;
        }

        v9 = (v5 + 1);
        v10 = *v5;
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

        v11 = *v9;
        v12 = (v11 << 7) + v10;
        v10 = (v12 - 128);
        if ((v11 & 0x80000000) == 0)
        {
          v9 = (v5 + 2);
LABEL_15:
          v33 = v9;
          goto LABEL_16;
        }

        v33 = google::protobuf::internal::VarintParseSlow64(v5, (v12 - 128));
        if (!v33)
        {
          return 0;
        }

        v10 = v31;
LABEL_16:
        if (TSWP::DateTimeSmartFieldArchive_DateTimeFormatterStyle_IsValid(v10))
        {
          *(a1 + 16) |= 0x10u;
          *(a1 + 52) = v10;
        }

        else
        {
          sub_276F53FE0();
        }
      }
    }
  }

  return v33;
}

unsigned __int8 *TSWP::UpdateDateTimeFieldCommandArchive::_InternalSerialize(TSWP::UpdateDateTimeFieldCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    v8 = *(v7 + 5);
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

    a2 = TSWP::TextCommandArchive::_InternalSerialize(v7, v9, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
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

  v16 = *(this + 4);
  *a2 = 18;
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

  a2 = TSP::Reference::_InternalSerialize(v16, v18, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_35:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 5);
  *a2 = 26;
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

  a2 = TSP::Date::_InternalSerialize(v22, v24, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_6;
  }

LABEL_45:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v28 = *(this + 12);
  *a2 = 32;
  if (v28 > 0x7F)
  {
    a2[1] = v28 | 0x80;
    v29 = v28 >> 7;
    if (v28 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v29 | 0x80;
        v30 = v29 >> 7;
        ++a2;
        v31 = v29 >> 14;
        v29 >>= 7;
      }

      while (v31);
      *(a2 - 1) = v30;
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      a2[2] = v29;
      a2 += 3;
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_56;
      }
    }
  }

  else
  {
    a2[1] = v28;
    a2 += 2;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_56;
    }
  }

LABEL_6:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 13);
  *a2 = 40;
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

LABEL_56:
  v32 = *(this + 1);
  if ((v32 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v32 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::UpdateDateTimeFieldCommandArchive::ByteSizeLong(TSWP::UpdateDateTimeFieldCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_21;
  }

  if (v2)
  {
    v4 = TSWP::TextCommandArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v7 = *(this + 12);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v8;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v6 = TSP::Date::ByteSizeLong(*(this + 5));
  v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if ((v2 & 0x10) != 0)
  {
LABEL_17:
    v9 = *(this + 13);
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v10;
  }

LABEL_21:
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

uint64_t TSWP::UpdateDateTimeFieldCommandArchive::MergeFrom(TSWP::UpdateDateTimeFieldCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UpdateDateTimeFieldCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UpdateDateTimeFieldCommandArchive::MergeFrom(uint64_t this, const TSWP::UpdateDateTimeFieldCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TextCommandArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWP::_TextCommandArchive_default_instance_;
      }

      this = TSWP::TextCommandArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_28;
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

      v9 = MEMORY[0x277CA3250](v10);
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

    this = TSP::Reference::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }

LABEL_28:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277CA31F0](v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = MEMORY[0x277D809C0];
    }

    this = TSP::Date::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
LABEL_10:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_9:
      *(v3 + 52) = *(a2 + 13);
      goto LABEL_10;
    }

LABEL_36:
    *(v3 + 48) = *(a2 + 12);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

uint64_t *TSWP::UpdateDateTimeFieldCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UpdateDateTimeFieldCommandArchive::Clear(this);

    return TSWP::UpdateDateTimeFieldCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UpdateDateTimeFieldCommandArchive::CopyFrom(uint64_t *this, const TSWP::UpdateDateTimeFieldCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UpdateDateTimeFieldCommandArchive::Clear(this);

    return TSWP::UpdateDateTimeFieldCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::UpdateDateTimeFieldCommandArchive::IsInitialized(TSWP::UpdateDateTimeFieldCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSWP::TextCommandArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

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

__n128 TSWP::UpdateDateTimeFieldCommandArchive::InternalSwap(TSWP::UpdateDateTimeFieldCommandArchive *this, TSWP::UpdateDateTimeFieldCommandArchive *a2)
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
  result = *(a2 + 40);
  *(this + 40) = result;
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  return result;
}

TSK::CommandArchive *TSWP::ApplyRubyTextCommandArchive::clear_super(TSWP::ApplyRubyTextCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSWP::ApplyRubyTextCommandArchive::clear_storage(TSWP::ApplyRubyTextCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t *TSWP::ApplyRubyTextCommandArchive::clear_undo_transaction(TSWP::ApplyRubyTextCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSWP::UndoTransaction::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSWP::ApplyRubyTextCommandArchive *TSWP::ApplyRubyTextCommandArchive::ApplyRubyTextCommandArchive(TSWP::ApplyRubyTextCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288607C10;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ApplyRubyTextCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  return this;
}

TSWP::ApplyRubyTextCommandArchive *TSWP::ApplyRubyTextCommandArchive::ApplyRubyTextCommandArchive(TSWP::ApplyRubyTextCommandArchive *this, const TSWP::ApplyRubyTextCommandArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288607C10;
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
  if ((v4 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  *(this + 7) = *(a2 + 7);
  return this;
}

void TSWP::ApplyRubyTextCommandArchive::~ApplyRubyTextCommandArchive(TSWP::ApplyRubyTextCommandArchive *this)
{
  sub_276F095FC(this);
  sub_276E4E808(this + 1);
}

{
  TSWP::ApplyRubyTextCommandArchive::~ApplyRubyTextCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

TSWP::UndoTransaction *sub_276F095FC(TSWP::UndoTransaction *result)
{
  v1 = result;
  v2 = *(result + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  if (v1 != &TSWP::_ApplyRubyTextCommandArchive_default_instance_)
  {
    if (*(v1 + 4))
    {
      v3 = MEMORY[0x277CA2910]();
      MEMORY[0x277CA3D00](v3, 0x10A1C40C24530F0);
    }

    v4 = *(v1 + 5);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277CA3D00]();
    }

    result = *(v1 + 6);
    if (result)
    {
      TSWP::UndoTransaction::~UndoTransaction(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::ApplyRubyTextCommandArchive::default_instance(TSWP::ApplyRubyTextCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ApplyRubyTextCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ApplyRubyTextCommandArchive_default_instance_;
}

uint64_t *TSWP::ApplyRubyTextCommandArchive::Clear(uint64_t *this)
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

LABEL_17:
    this = TSK::CommandArchive::Clear(this[4]);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_18:
  this = TSP::Reference::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSWP::UndoTransaction::Clear(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0x30) != 0)
  {
    *(v1 + 56) = 0;
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

google::protobuf::internal *TSWP::ApplyRubyTextCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_64;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 != 4)
        {
          if (v10 == 5)
          {
            if (v8 == 42)
            {
              *(a1 + 16) |= 1u;
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v17 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_54;
            }
          }

          else if (v10 == 6 && v8 == 50)
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

              v15 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v16);
              *(a1 + 48) = v15;
              v7 = v34;
            }

            v17 = sub_276F53144(a3, v15, v7);
            goto LABEL_54;
          }

LABEL_47:
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
            sub_276EA4A94((a1 + 8));
          }

          v17 = google::protobuf::internal::UnknownFieldParse();
LABEL_54:
          v34 = v17;
          if (!v17)
          {
            goto LABEL_64;
          }

          goto LABEL_55;
        }

        if (v8 != 32)
        {
          goto LABEL_47;
        }

        v5 |= 0x20u;
        v21 = (v7 + 1);
        LODWORD(v22) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_38;
        }

        v23 = *v21;
        v22 = (v22 + (v23 << 7) - 128);
        if ((v23 & 0x80000000) == 0)
        {
          v21 = (v7 + 2);
LABEL_38:
          v34 = v21;
          *(a1 + 60) = v22;
          goto LABEL_55;
        }

        v30 = google::protobuf::internal::VarintParseSlow32(v7, v22);
        v34 = v30;
        *(a1 + 60) = v31;
        if (!v30)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 2u;
            v18 = *(a1 + 32);
            if (!v18)
            {
              v19 = *(a1 + 8);
              if (v19)
              {
                v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
              }

              v20 = MEMORY[0x277CA31C0](v19);
              LODWORD(v18) = v20;
              *(a1 + 32) = v20;
              v7 = v34;
            }

            v17 = sub_276F58170(a3, v18, v7);
            goto LABEL_54;
          }

          goto LABEL_47;
        }

        if (v10 == 2)
        {
          if (v8 == 18)
          {
            *(a1 + 16) |= 4u;
            v24 = *(a1 + 40);
            if (!v24)
            {
              v25 = *(a1 + 8);
              if (v25)
              {
                v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
              }

              v26 = MEMORY[0x277CA3250](v25);
              LODWORD(v24) = v26;
              *(a1 + 40) = v26;
              v7 = v34;
            }

            v17 = sub_276F4F9E8(a3, v24, v7);
            goto LABEL_54;
          }

          goto LABEL_47;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_47;
        }

        v5 |= 0x10u;
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_18:
          v34 = v12;
          *(a1 + 56) = v13;
          goto LABEL_55;
        }

        v32 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v34 = v32;
        *(a1 + 56) = v33;
        if (!v32)
        {
LABEL_64:
          v34 = 0;
          goto LABEL_2;
        }
      }

LABEL_55:
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

unsigned __int8 *TSWP::ApplyRubyTextCommandArchive::_InternalSerialize(TSWP::ApplyRubyTextCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v4 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
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

  v13 = *(this + 5);
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
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_39:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v23 = *(this + 15);
    *v4 = 32;
    if (v23 > 0x7F)
    {
      v4[1] = v23 | 0x80;
      v24 = v23 >> 7;
      if (v23 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v24 | 0x80;
          v25 = v24 >> 7;
          ++v4;
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
        *(v4 - 1) = v25;
        if (v6)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v4[2] = v24;
        v4 += 3;
        if (v6)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      v4[1] = v23;
      v4 += 2;
      if (v6)
      {
        goto LABEL_50;
      }
    }

LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_51;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 14);
  *v4 = 24;
  if (v19 > 0x7F)
  {
    v4[1] = v19 | 0x80;
    v20 = v19 >> 7;
    if (v19 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v20 | 0x80;
        v21 = v20 >> 7;
        ++v4;
        v22 = v20 >> 14;
        v20 >>= 7;
      }

      while (v22);
      *(v4 - 1) = v21;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v4[2] = v20;
      v4 += 3;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    v4[1] = v19;
    v4 += 2;
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_39;
    }
  }

LABEL_5:
  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_50:
  v4 = sub_276E5154C(a3, 5, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_61;
  }

LABEL_51:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(this + 6);
  *v4 = 50;
  v28 = *(v27 + 5);
  if (v28 > 0x7F)
  {
    v4[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = v4 + 3;
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      v4[2] = v30;
      v29 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v28;
    v29 = v4 + 2;
  }

  v4 = TSWP::UndoTransaction::_InternalSerialize(v27, v29, a3);
LABEL_61:
  v33 = *(this + 1);
  if ((v33 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v33 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ApplyRubyTextCommandArchive::ByteSizeLong(TSWP::ApplyRubyTextCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = TSK::CommandArchive::ByteSizeLong(*(this + 4));
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
    v9 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v10 = TSWP::UndoTransaction::ByteSizeLong(*(this + 6));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_19:
  v3 += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_14:
    v3 += ((9 * (__clz(*(this + 15) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
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

uint64_t TSWP::ApplyRubyTextCommandArchive::MergeFrom(TSWP::ApplyRubyTextCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ApplyRubyTextCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ApplyRubyTextCommandArchive::MergeFrom(uint64_t this, const TSWP::ApplyRubyTextCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = MEMORY[0x277CA31C0](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = MEMORY[0x277D80718];
    }

    this = TSK::CommandArchive::MergeFrom(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_22:
    *(v3 + 16) |= 4u;
    v9 = *(v3 + 40);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277CA3250](v10);
      *(v3 + 40) = v9;
    }

    if (*(a2 + 5))
    {
      v11 = *(a2 + 5);
    }

    else
    {
      v11 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v9, v11);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(v3 + 16) |= 8u;
    v12 = *(v3 + 48);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v13);
      *(v3 + 48) = v12;
    }

    if (*(a2 + 6))
    {
      v14 = *(a2 + 6);
    }

    else
    {
      v14 = &TSWP::_UndoTransaction_default_instance_;
    }

    this = TSWP::UndoTransaction::MergeFrom(v12, v14);
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
      *(v3 + 60) = *(a2 + 15);
      goto LABEL_11;
    }

LABEL_38:
    *(v3 + 56) = *(a2 + 14);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSWP::ApplyRubyTextCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ApplyRubyTextCommandArchive::Clear(this);

    return TSWP::ApplyRubyTextCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ApplyRubyTextCommandArchive::CopyFrom(uint64_t *this, const TSWP::ApplyRubyTextCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ApplyRubyTextCommandArchive::Clear(this);

    return TSWP::ApplyRubyTextCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ApplyRubyTextCommandArchive::IsInitialized(TSWP::ApplyRubyTextCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = TSWP::UndoTransaction::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::ApplyRubyTextCommandArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  this[2] = a2[2];
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u64[1] = v7;
  v8 = this[3].n128_u64[0];
  v9 = this[3].n128_u64[1];
  result = a2[3];
  this[3] = result;
  a2[3].n128_u64[0] = v8;
  a2[3].n128_u64[1] = v9;
  return result;
}

TSK::CommandArchive *TSWP::ModifyRubyTextCommandArchive::clear_super(TSWP::ModifyRubyTextCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSWP::ModifyRubyTextCommandArchive::clear_ruby_field(TSWP::ModifyRubyTextCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

uint64_t *TSWP::ModifyRubyTextCommandArchive::clear_undo_transaction(TSWP::ModifyRubyTextCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSWP::UndoTransaction::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSWP::ModifyRubyTextCommandArchive *TSWP::ModifyRubyTextCommandArchive::ModifyRubyTextCommandArchive(TSWP::ModifyRubyTextCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288607CC0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ModifyRubyTextCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  return this;
}

TSWP::ModifyRubyTextCommandArchive *TSWP::ModifyRubyTextCommandArchive::ModifyRubyTextCommandArchive(TSWP::ModifyRubyTextCommandArchive *this, const TSWP::ModifyRubyTextCommandArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288607CC0;
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
  if ((v4 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  return this;
}

void TSWP::ModifyRubyTextCommandArchive::~ModifyRubyTextCommandArchive(TSWP::ModifyRubyTextCommandArchive *this)
{
  sub_276F0A7C4(this);
  sub_276E4E808(this + 1);
}

{
  TSWP::ModifyRubyTextCommandArchive::~ModifyRubyTextCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

TSWP::UndoTransaction *sub_276F0A7C4(TSWP::UndoTransaction *result)
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

  if (v1 != &TSWP::_ModifyRubyTextCommandArchive_default_instance_)
  {
    if (*(v1 + 5))
    {
      v5 = MEMORY[0x277CA2910]();
      MEMORY[0x277CA3D00](v5, 0x10A1C40C24530F0);
    }

    v6 = *(v1 + 6);
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277CA3D00]();
    }

    result = *(v1 + 7);
    if (result)
    {
      TSWP::UndoTransaction::~UndoTransaction(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::ModifyRubyTextCommandArchive::default_instance(TSWP::ModifyRubyTextCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ModifyRubyTextCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ModifyRubyTextCommandArchive_default_instance_;
}

uint64_t *TSWP::ModifyRubyTextCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
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
        goto LABEL_16;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    this = TSK::CommandArchive::Clear(this[5]);
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_21;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_21:
  this = TSP::Reference::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    this = TSWP::UndoTransaction::Clear(*(v1 + 56));
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::ModifyRubyTextCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  while ((sub_276EA4A1C(a3, &v23) & 1) == 0)
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
    if (v6 >> 3 <= 2)
    {
      if (v8 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 40);
        if (!v16)
        {
          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x277CA31C0](v17);
          LODWORD(v16) = v18;
          *(a1 + 40) = v18;
          v5 = v23;
        }

        v11 = sub_276F58170(a3, v16, v5);
      }

      else
      {
        if (v8 != 2 || v6 != 18)
        {
LABEL_39:
          if (v6)
          {
            v19 = (v6 & 7) == 4;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            *(a3 + 80) = v6 - 1;
            return v23;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v11 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_46;
        }

        *(a1 + 16) |= 8u;
        v13 = *(a1 + 48);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277CA3250](v14);
          LODWORD(v13) = v15;
          *(a1 + 48) = v15;
          v5 = v23;
        }

        v11 = sub_276F4F9E8(a3, v13, v5);
      }
    }

    else
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 1u;
LABEL_32:
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v11 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_46;
      }

      if (v8 == 4)
      {
        if (v6 != 34)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 2u;
        goto LABEL_32;
      }

      if (v8 != 5 || v6 != 42)
      {
        goto LABEL_39;
      }

      *(a1 + 16) |= 0x10u;
      v9 = *(a1 + 56);
      if (!v9)
      {
        v10 = *(a1 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v10);
        *(a1 + 56) = v9;
        v5 = v23;
      }

      v11 = sub_276F53144(a3, v9, v5);
    }

LABEL_46:
    v23 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v23;
}

unsigned __int8 *TSWP::ModifyRubyTextCommandArchive::_InternalSerialize(TSWP::ModifyRubyTextCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v4 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 6);
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
  if ((v6 & 1) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  v4 = sub_276E5154C(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

LABEL_28:
  v4 = sub_276E5154C(a3, 4, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_39;
  }

LABEL_29:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 7);
  *v4 = 42;
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

  v4 = TSWP::UndoTransaction::_InternalSerialize(v19, v21, a3);
LABEL_39:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v25 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ModifyRubyTextCommandArchive::ByteSizeLong(TSWP::ModifyRubyTextCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_16;
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
    v12 = TSK::CommandArchive::ByteSizeLong(*(this + 5));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v13 = TSP::Reference::ByteSizeLong(*(this + 6));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_15:
    v10 = TSWP::UndoTransaction::ByteSizeLong(*(this + 7));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
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

uint64_t TSWP::ModifyRubyTextCommandArchive::MergeFrom(TSWP::ModifyRubyTextCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ModifyRubyTextCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ModifyRubyTextCommandArchive::MergeFrom(uint64_t this, const TSWP::ModifyRubyTextCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x1F) == 0)
  {
    return this;
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

LABEL_12:
      *(v3 + 16) |= 4u;
      v6 = *(v3 + 40);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277CA31C0](v7);
        *(v3 + 40) = v6;
      }

      if (*(a2 + 5))
      {
        v8 = *(a2 + 5);
      }

      else
      {
        v8 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v6, v8);
      if ((v5 & 8) == 0)
      {
LABEL_8:
        if ((v5 & 0x10) == 0)
        {
          return this;
        }

        goto LABEL_28;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(v3 + 16) |= 2u;
  this = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v5 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v5 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_20:
  *(v3 + 16) |= 8u;
  v9 = *(v3 + 48);
  if (!v9)
  {
    v10 = *(v3 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x277CA3250](v10);
    *(v3 + 48) = v9;
  }

  if (*(a2 + 6))
  {
    v11 = *(a2 + 6);
  }

  else
  {
    v11 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v9, v11);
  if ((v5 & 0x10) != 0)
  {
LABEL_28:
    *(v3 + 16) |= 0x10u;
    v12 = *(v3 + 56);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v13);
      *(v3 + 56) = v12;
    }

    if (*(a2 + 7))
    {
      v14 = *(a2 + 7);
    }

    else
    {
      v14 = &TSWP::_UndoTransaction_default_instance_;
    }

    return TSWP::UndoTransaction::MergeFrom(v12, v14);
  }

  return this;
}

uint64_t *TSWP::ModifyRubyTextCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ModifyRubyTextCommandArchive::Clear(this);

    return TSWP::ModifyRubyTextCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ModifyRubyTextCommandArchive::CopyFrom(uint64_t *this, const TSWP::ModifyRubyTextCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ModifyRubyTextCommandArchive::Clear(this);

    return TSWP::ModifyRubyTextCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ModifyRubyTextCommandArchive::IsInitialized(TSWP::ModifyRubyTextCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 4) != 0)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 6));
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

  result = TSWP::UndoTransaction::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::ModifyRubyTextCommandArchive::InternalSwap(TSWP::ModifyRubyTextCommandArchive *this, TSWP::ModifyRubyTextCommandArchive *a2)
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
  result = *(a2 + 40);
  *(this + 40) = result;
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  return result;
}

TSK::CommandArchive *TSWP::ModifyTOCSettingsBaseCommandArchive::clear_super(TSWP::ModifyTOCSettingsBaseCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSWP::ModifyTOCSettingsBaseCommandArchive::clear_old_toc_settings(TSWP::ModifyTOCSettingsBaseCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSWP::ModifyTOCSettingsBaseCommandArchive::clear_new_toc_settings(TSWP::ModifyTOCSettingsBaseCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::ModifyTOCSettingsBaseCommandArchive *TSWP::ModifyTOCSettingsBaseCommandArchive::ModifyTOCSettingsBaseCommandArchive(TSWP::ModifyTOCSettingsBaseCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288607D70;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ModifyTOCSettingsBaseCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_288607D70;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ModifyTOCSettingsBaseCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSWP::ModifyTOCSettingsBaseCommandArchive *TSWP::ModifyTOCSettingsBaseCommandArchive::ModifyTOCSettingsBaseCommandArchive(TSWP::ModifyTOCSettingsBaseCommandArchive *this, const TSWP::ModifyTOCSettingsBaseCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288607D70;
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
  return this;
}

void TSWP::ModifyTOCSettingsBaseCommandArchive::~ModifyTOCSettingsBaseCommandArchive(TSWP::ModifyTOCSettingsBaseCommandArchive *this)
{
  if (this != &TSWP::_ModifyTOCSettingsBaseCommandArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277CA2910]();
      MEMORY[0x277CA3D00](v2, 0x10A1C40C24530F0);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::ModifyTOCSettingsBaseCommandArchive::~ModifyTOCSettingsBaseCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::ModifyTOCSettingsBaseCommandArchive::default_instance(TSWP::ModifyTOCSettingsBaseCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ModifyTOCSettingsBaseCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ModifyTOCSettingsBaseCommandArchive_default_instance_;
}

uint64_t *TSWP::ModifyTOCSettingsBaseCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSK::CommandArchive::Clear(this[3]);
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

    this = TSP::Reference::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSP::Reference::Clear(*(v1 + 40));
    }
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

google::protobuf::internal *TSWP::ModifyTOCSettingsBaseCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  while ((sub_276EA4A1C(a3, &v23) & 1) == 0)
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

        v16 = MEMORY[0x277CA3250](v15);
        LODWORD(v12) = v16;
        *(a1 + 40) = v16;
LABEL_30:
        v5 = v23;
      }

LABEL_31:
      v11 = sub_276F4F9E8(a3, v12, v5);
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

        v14 = MEMORY[0x277CA3250](v13);
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
        sub_276EA4A94((a1 + 8));
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

      v19 = MEMORY[0x277CA31C0](v18);
      LODWORD(v17) = v19;
      *(a1 + 24) = v19;
      v5 = v23;
    }

    v11 = sub_276F58170(a3, v17, v5);
LABEL_37:
    v23 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v23;
}

unsigned __int8 *TSWP::ModifyTOCSettingsBaseCommandArchive::_InternalSerialize(TSWP::ModifyTOCSettingsBaseCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
  if ((v5 & 4) != 0)
  {
LABEL_25:
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

    a2 = TSP::Reference::_InternalSerialize(v18, v20, a3);
  }

LABEL_35:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ModifyTOCSettingsBaseCommandArchive::ByteSizeLong(TSWP::ModifyTOCSettingsBaseCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::ModifyTOCSettingsBaseCommandArchive::MergeFrom(TSWP::ModifyTOCSettingsBaseCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ModifyTOCSettingsBaseCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ModifyTOCSettingsBaseCommandArchive::MergeFrom(uint64_t this, const TSWP::ModifyTOCSettingsBaseCommandArchive *a2)
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

        v6 = MEMORY[0x277CA31C0](v7);
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

    v9 = MEMORY[0x277D80A18];
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

        v10 = MEMORY[0x277CA3250](v11);
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

      this = TSP::Reference::MergeFrom(v10, v12);
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

        v13 = MEMORY[0x277CA3250](v14);
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

      return TSP::Reference::MergeFrom(v13, v15);
    }
  }

  return this;
}

uint64_t *TSWP::ModifyTOCSettingsBaseCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ModifyTOCSettingsBaseCommandArchive::Clear(this);

    return TSWP::ModifyTOCSettingsBaseCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ModifyTOCSettingsBaseCommandArchive::CopyFrom(uint64_t *this, const TSWP::ModifyTOCSettingsBaseCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ModifyTOCSettingsBaseCommandArchive::Clear(this);

    return TSWP::ModifyTOCSettingsBaseCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ModifyTOCSettingsBaseCommandArchive::IsInitialized(TSWP::ModifyTOCSettingsBaseCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

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

  result = TSP::Reference::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::ModifyTOCSettingsBaseCommandArchive::InternalSwap(TSWP::ModifyTOCSettingsBaseCommandArchive *this, TSWP::ModifyTOCSettingsBaseCommandArchive *a2)
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
  return result;
}

TSP::UUIDPath *TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::clear_toc_info_uuid_path(TSWP::ModifyTOCSettingsForTOCInfoCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSWP::ModifyTOCSettingsForTOCInfoCommandArchive *TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::ModifyTOCSettingsForTOCInfoCommandArchive(TSWP::ModifyTOCSettingsForTOCInfoCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288607E20;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ModifyTOCSettingsForTOCInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_288607E20;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ModifyTOCSettingsForTOCInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSWP::ModifyTOCSettingsForTOCInfoCommandArchive *TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::ModifyTOCSettingsForTOCInfoCommandArchive(TSWP::ModifyTOCSettingsForTOCInfoCommandArchive *this, const TSWP::ModifyTOCSettingsForTOCInfoCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288607E20;
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
  return this;
}

void TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::~ModifyTOCSettingsForTOCInfoCommandArchive(TSWP::ModifyTOCSettingsForTOCInfoCommandArchive *this)
{
  if (this != &TSWP::_ModifyTOCSettingsForTOCInfoCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::ModifyTOCSettingsBaseCommandArchive::~ModifyTOCSettingsBaseCommandArchive(v2);
      MEMORY[0x277CA3D00]();
    }

    if (*(this + 4))
    {
      v3 = MEMORY[0x277CA2B90]();
      MEMORY[0x277CA3D00](v3, 0x10A1C40290C9B23);
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::~ModifyTOCSettingsForTOCInfoCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::default_instance(TSWP::ModifyTOCSettingsForTOCInfoCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ModifyTOCSettingsForTOCInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ModifyTOCSettingsForTOCInfoCommandArchive_default_instance_;
}

uint64_t *TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSWP::ModifyTOCSettingsBaseCommandArchive::Clear(this[3]);
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

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  while ((sub_276EA4A1C(a3, &v19) & 1) == 0)
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

        v13 = MEMORY[0x277CA3240](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v19;
      }

      v10 = sub_276F58240(a3, v11, v5);
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
          sub_276EA4A94((a1 + 8));
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

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ModifyTOCSettingsBaseCommandArchive>(v15);
        *(a1 + 24) = v14;
        v5 = v19;
      }

      v10 = sub_276F58580(a3, v14, v5);
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

unsigned __int8 *TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::_InternalSerialize(TSWP::ModifyTOCSettingsForTOCInfoCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::ModifyTOCSettingsBaseCommandArchive::_InternalSerialize(v6, v8, a3);
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

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::ByteSizeLong(TSWP::ModifyTOCSettingsForTOCInfoCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = TSWP::ModifyTOCSettingsBaseCommandArchive::ByteSizeLong(*(this + 3));
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

uint64_t TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::MergeFrom(TSWP::ModifyTOCSettingsForTOCInfoCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::MergeFrom(uint64_t this, const TSWP::ModifyTOCSettingsForTOCInfoCommandArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ModifyTOCSettingsBaseCommandArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWP::_ModifyTOCSettingsBaseCommandArchive_default_instance_;
      }

      this = TSWP::ModifyTOCSettingsBaseCommandArchive::MergeFrom(v6, v8);
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

        v9 = MEMORY[0x277CA3240](v10);
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

uint64_t *TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::Clear(this);

    return TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::CopyFrom(uint64_t *this, const TSWP::ModifyTOCSettingsForTOCInfoCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::Clear(this);

    return TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::IsInitialized(TSWP::ModifyTOCSettingsForTOCInfoCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSWP::ModifyTOCSettingsBaseCommandArchive::IsInitialized(*(this + 3));
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

__n128 TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::InternalSwap(TSWP::ModifyTOCSettingsForTOCInfoCommandArchive *this, TSWP::ModifyTOCSettingsForTOCInfoCommandArchive *a2)
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
  return result;
}

TSP::Reference *TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::clear_theme(TSWP::ModifyTOCSettingsPresetForThemeCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSWP::ModifyTOCSettingsPresetForThemeCommandArchive *TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::ModifyTOCSettingsPresetForThemeCommandArchive(TSWP::ModifyTOCSettingsPresetForThemeCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288607ED0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ModifyTOCSettingsPresetForThemeCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_288607ED0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ModifyTOCSettingsPresetForThemeCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TSWP::ModifyTOCSettingsPresetForThemeCommandArchive *TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::ModifyTOCSettingsPresetForThemeCommandArchive(TSWP::ModifyTOCSettingsPresetForThemeCommandArchive *this, const TSWP::ModifyTOCSettingsPresetForThemeCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288607ED0;
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

void TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::~ModifyTOCSettingsPresetForThemeCommandArchive(TSWP::ModifyTOCSettingsPresetForThemeCommandArchive *this)
{
  if (this != &TSWP::_ModifyTOCSettingsPresetForThemeCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::ModifyTOCSettingsBaseCommandArchive::~ModifyTOCSettingsBaseCommandArchive(v2);
      MEMORY[0x277CA3D00]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::~ModifyTOCSettingsPresetForThemeCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::default_instance(TSWP::ModifyTOCSettingsPresetForThemeCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ModifyTOCSettingsPresetForThemeCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ModifyTOCSettingsPresetForThemeCommandArchive_default_instance_;
}

uint64_t *TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSWP::ModifyTOCSettingsBaseCommandArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 32));
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

google::protobuf::internal *TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 != 3)
      {
        if (v10 == 2)
        {
          if (v8 != 18)
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

            v16 = MEMORY[0x277CA3250](v15);
            LODWORD(v14) = v16;
            *(a1 + 32) = v16;
            v7 = v26;
          }

          v13 = sub_276F4F9E8(a3, v14, v7);
        }

        else if (v10 == 1 && v8 == 10)
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

            v20 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ModifyTOCSettingsBaseCommandArchive>(v21);
            *(a1 + 24) = v20;
            v7 = v26;
          }

          v13 = sub_276F58580(a3, v20, v7);
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

        v26 = v13;
        if (!v13)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v17 = (v7 + 1);
      LODWORD(v18) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v19 = *v17;
      v18 = (v18 + (v19 << 7) - 128);
      if ((v19 & 0x80000000) == 0)
      {
        v17 = (v7 + 2);
LABEL_30:
        v26 = v17;
        *(a1 + 40) = v18;
        goto LABEL_37;
      }

      v24 = google::protobuf::internal::VarintParseSlow32(v7, v18);
      v26 = v24;
      *(a1 + 40) = v25;
      if (!v24)
      {
LABEL_44:
        v26 = 0;
        goto LABEL_2;
      }

LABEL_37:
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

unsigned __int8 *TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::_InternalSerialize(TSWP::ModifyTOCSettingsPresetForThemeCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::ModifyTOCSettingsBaseCommandArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
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
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 10);
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
      }

      else
      {
        a2[2] = v19;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v18;
      a2 += 2;
    }
  }

LABEL_34:
  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::ByteSizeLong(TSWP::ModifyTOCSettingsPresetForThemeCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = TSWP::ModifyTOCSettingsBaseCommandArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
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

uint64_t TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::MergeFrom(TSWP::ModifyTOCSettingsPresetForThemeCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::MergeFrom(uint64_t this, const TSWP::ModifyTOCSettingsPresetForThemeCommandArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ModifyTOCSettingsBaseCommandArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWP::_ModifyTOCSettingsBaseCommandArchive_default_instance_;
      }

      this = TSWP::ModifyTOCSettingsBaseCommandArchive::MergeFrom(v6, v8);
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

      v9 = MEMORY[0x277CA3250](v10);
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

    this = TSP::Reference::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::Clear(this);

    return TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::CopyFrom(uint64_t *this, const TSWP::ModifyTOCSettingsPresetForThemeCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::Clear(this);

    return TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::IsInitialized(TSWP::ModifyTOCSettingsPresetForThemeCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSWP::ModifyTOCSettingsBaseCommandArchive::IsInitialized(*(this + 3));
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

  result = TSP::Reference::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::InternalSwap(TSWP::ModifyTOCSettingsPresetForThemeCommandArchive *this, TSWP::ModifyTOCSettingsPresetForThemeCommandArchive *a2)
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

TSP::Reference *TSWP::AnchorAttachmentCommandArchive::clear_attachment(TSWP::AnchorAttachmentCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSWP::AnchorAttachmentCommandArchive *TSWP::AnchorAttachmentCommandArchive::AnchorAttachmentCommandArchive(TSWP::AnchorAttachmentCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288607F80;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_AnchorAttachmentCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 18) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288607F80;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_AnchorAttachmentCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 18) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWP::AnchorAttachmentCommandArchive *TSWP::AnchorAttachmentCommandArchive::AnchorAttachmentCommandArchive(TSWP::AnchorAttachmentCommandArchive *this, const TSWP::AnchorAttachmentCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288607F80;
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
  v7 = *(a2 + 40);
  v8 = *(a2 + 56);
  *(this + 18) = *(a2 + 18);
  *(this + 56) = v8;
  *(this + 40) = v7;
  return this;
}

void TSWP::AnchorAttachmentCommandArchive::~AnchorAttachmentCommandArchive(TSWP::AnchorAttachmentCommandArchive *this)
{
  if (this != &TSWP::_AnchorAttachmentCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::StorageActionCommandArchive::~StorageActionCommandArchive(v2);
      MEMORY[0x277CA3D00]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::AnchorAttachmentCommandArchive::~AnchorAttachmentCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::AnchorAttachmentCommandArchive::default_instance(TSWP::AnchorAttachmentCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_AnchorAttachmentCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_AnchorAttachmentCommandArchive_default_instance_;
}

uint64_t *TSWP::AnchorAttachmentCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSWP::StorageActionCommandArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 32));
    }
  }

  if ((v2 & 0xFC) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  if ((v2 & 0xF00) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
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

google::protobuf::internal *TSWP::AnchorAttachmentCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v56 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v56) & 1) == 0)
  {
    while (1)
    {
      v7 = (v56 + 1);
      v8 = *v56;
      if ((*v56 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v56, (v9 - 128));
      v56 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_101;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 6)
      {
        if (v8 >> 3 > 9)
        {
          if (v10 == 10)
          {
            if (v8 != 80)
            {
              goto LABEL_78;
            }

            v5 |= 0x400u;
            v30 = (v7 + 1);
            LODWORD(v31) = *v7;
            if ((*v7 & 0x80000000) == 0)
            {
              goto LABEL_58;
            }

            v32 = *v30;
            v31 = (v31 + (v32 << 7) - 128);
            if ((v32 & 0x80000000) == 0)
            {
              v30 = (v7 + 2);
LABEL_58:
              v56 = v30;
              *(a1 + 68) = v31;
              goto LABEL_86;
            }

            v50 = google::protobuf::internal::VarintParseSlow32(v7, v31);
            v56 = v50;
            *(a1 + 68) = v51;
            if (!v50)
            {
              goto LABEL_101;
            }
          }

          else
          {
            if (v10 == 11)
            {
              if (v8 == 93)
              {
                v42 = *v7;
                v15 = (v7 + 4);
                v5 |= 0x800u;
                *(a1 + 72) = v42;
                goto LABEL_77;
              }

              goto LABEL_78;
            }

            if (v10 != 12 || v8 != 96)
            {
              goto LABEL_78;
            }

            v5 |= 0x200u;
            v19 = (v7 + 1);
            v18 = *v7;
            if ((v18 & 0x8000000000000000) == 0)
            {
              goto LABEL_38;
            }

            v20 = *v19;
            v18 = (v20 << 7) + v18 - 128;
            if ((v20 & 0x80000000) == 0)
            {
              v19 = (v7 + 2);
LABEL_38:
              v56 = v19;
              *(a1 + 65) = v18 != 0;
              goto LABEL_86;
            }

            v46 = google::protobuf::internal::VarintParseSlow64(v7, v18);
            v56 = v46;
            *(a1 + 65) = v47 != 0;
            if (!v46)
            {
              goto LABEL_101;
            }
          }
        }

        else if (v10 == 7)
        {
          if (v8 != 56)
          {
            goto LABEL_78;
          }

          v5 |= 0x100u;
          v27 = (v7 + 1);
          v26 = *v7;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_51;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if ((v28 & 0x80000000) == 0)
          {
            v27 = (v7 + 2);
LABEL_51:
            v56 = v27;
            *(a1 + 64) = v26 != 0;
            goto LABEL_86;
          }

          v48 = google::protobuf::internal::VarintParseSlow64(v7, v26);
          v56 = v48;
          *(a1 + 64) = v49 != 0;
          if (!v48)
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (v10 != 8)
          {
            if (v10 == 9 && v8 == 77)
            {
              v16 = *v7;
              v15 = (v7 + 4);
              v5 |= 0x80u;
              *(a1 + 60) = v16;
LABEL_77:
              v56 = v15;
              goto LABEL_86;
            }

LABEL_78:
            if (v8)
            {
              v43 = (v8 & 7) == 4;
            }

            else
            {
              v43 = 1;
            }

            if (v43)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_276EA4A94((a1 + 8));
            }

            v25 = google::protobuf::internal::UnknownFieldParse();
LABEL_85:
            v56 = v25;
            if (!v25)
            {
              goto LABEL_101;
            }

            goto LABEL_86;
          }

          if (v8 != 64)
          {
            goto LABEL_78;
          }

          v5 |= 0x40u;
          v36 = (v7 + 1);
          LODWORD(v37) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_69;
          }

          v38 = *v36;
          v37 = (v37 + (v38 << 7) - 128);
          if ((v38 & 0x80000000) == 0)
          {
            v36 = (v7 + 2);
LABEL_69:
            v56 = v36;
            *(a1 + 56) = v37;
            goto LABEL_86;
          }

          v52 = google::protobuf::internal::VarintParseSlow32(v7, v37);
          v56 = v52;
          *(a1 + 56) = v53;
          if (!v52)
          {
            goto LABEL_101;
          }
        }
      }

      else if (v8 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v8 == 37)
          {
            v29 = *v7;
            v15 = (v7 + 4);
            v5 |= 8u;
            *(a1 + 44) = v29;
            goto LABEL_77;
          }

          goto LABEL_78;
        }

        if (v10 != 5)
        {
          if (v10 == 6 && v8 == 53)
          {
            v17 = *v7;
            v15 = (v7 + 4);
            v5 |= 0x20u;
            *(a1 + 52) = v17;
            goto LABEL_77;
          }

          goto LABEL_78;
        }

        if (v8 != 40)
        {
          goto LABEL_78;
        }

        v5 |= 0x10u;
        v39 = (v7 + 1);
        LODWORD(v40) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_74;
        }

        v41 = *v39;
        v40 = (v40 + (v41 << 7) - 128);
        if ((v41 & 0x80000000) == 0)
        {
          v39 = (v7 + 2);
LABEL_74:
          v56 = v39;
          *(a1 + 48) = v40;
          goto LABEL_86;
        }

        v54 = google::protobuf::internal::VarintParseSlow32(v7, v40);
        v56 = v54;
        *(a1 + 48) = v55;
        if (!v54)
        {
LABEL_101:
          v56 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_78;
          }

          *(a1 + 16) |= 1u;
          v23 = *(a1 + 24);
          if (!v23)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v23 = google::protobuf::Arena::CreateMaybeMessage<TSWP::StorageActionCommandArchive>(v24);
            *(a1 + 24) = v23;
            v7 = v56;
          }

          v25 = sub_276F58650(a3, v23, v7);
          goto LABEL_85;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_78;
          }

          *(a1 + 16) |= 2u;
          v33 = *(a1 + 32);
          if (!v33)
          {
            v34 = *(a1 + 8);
            if (v34)
            {
              v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
            }

            v35 = MEMORY[0x277CA3250](v34);
            LODWORD(v33) = v35;
            *(a1 + 32) = v35;
            v7 = v56;
          }

          v25 = sub_276F4F9E8(a3, v33, v7);
          goto LABEL_85;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_78;
        }

        v5 |= 4u;
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_19:
          v56 = v12;
          *(a1 + 40) = v13;
          goto LABEL_86;
        }

        v44 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v56 = v44;
        *(a1 + 40) = v45;
        if (!v44)
        {
          goto LABEL_101;
        }
      }

LABEL_86:
      if (sub_276EA4A1C(a3, &v56))
      {
        goto LABEL_2;
      }
    }

    v7 = (v56 + 2);
LABEL_6:
    v56 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v56;
}

unsigned __int8 *TSWP::AnchorAttachmentCommandArchive::_InternalSerialize(TSWP::AnchorAttachmentCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::StorageActionCommandArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_34:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v18 = *(this + 10);
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
          if ((v5 & 8) != 0)
          {
            goto LABEL_45;
          }
        }

        else
        {
          a2[2] = v19;
          a2 += 3;
          if ((v5 & 8) != 0)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        a2[1] = v18;
        a2 += 2;
        if ((v5 & 8) != 0)
        {
          goto LABEL_45;
        }
      }

LABEL_5:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_48:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v23 = *(this + 12);
      *a2 = 40;
      if (v23 > 0x7F)
      {
        a2[1] = v23 | 0x80;
        v24 = v23 >> 7;
        if (v23 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v24 | 0x80;
            v25 = v24 >> 7;
            ++a2;
            v26 = v24 >> 14;
            v24 >>= 7;
          }

          while (v26);
          *(a2 - 1) = v25;
          if ((v5 & 0x20) != 0)
          {
            goto LABEL_59;
          }
        }

        else
        {
          a2[2] = v24;
          a2 += 3;
          if ((v5 & 0x20) != 0)
          {
            goto LABEL_59;
          }
        }
      }

      else
      {
        a2[1] = v23;
        a2 += 2;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_59;
        }
      }

LABEL_7:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_62;
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

  a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) != 0)
  {
    goto LABEL_34;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_45:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 11);
  *a2 = 37;
  *(a2 + 1) = v22;
  a2 += 5;
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_48;
  }

LABEL_6:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_59:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(this + 13);
  *a2 = 53;
  *(a2 + 1) = v27;
  a2 += 5;
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_65:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v29 = *(this + 14);
    *a2 = 64;
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
        if ((v5 & 0x80) != 0)
        {
          goto LABEL_76;
        }
      }

      else
      {
        a2[2] = v30;
        a2 += 3;
        if ((v5 & 0x80) != 0)
        {
          goto LABEL_76;
        }
      }
    }

    else
    {
      a2[1] = v29;
      a2 += 2;
      if ((v5 & 0x80) != 0)
      {
        goto LABEL_76;
      }
    }

LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

LABEL_79:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v34 = *(this + 17);
    *a2 = 80;
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
        if ((v5 & 0x800) != 0)
        {
          goto LABEL_90;
        }
      }

      else
      {
        a2[2] = v35;
        a2 += 3;
        if ((v5 & 0x800) != 0)
        {
          goto LABEL_90;
        }
      }
    }

    else
    {
      a2[1] = v34;
      a2 += 2;
      if ((v5 & 0x800) != 0)
      {
        goto LABEL_90;
      }
    }

LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_93;
  }

LABEL_62:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v28 = *(this + 64);
  *a2 = 56;
  a2[1] = v28;
  a2 += 2;
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_65;
  }

LABEL_9:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_10;
  }

LABEL_76:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v33 = *(this + 15);
  *a2 = 77;
  *(a2 + 1) = v33;
  a2 += 5;
  if ((v5 & 0x400) != 0)
  {
    goto LABEL_79;
  }

LABEL_11:
  if ((v5 & 0x800) == 0)
  {
    goto LABEL_12;
  }

LABEL_90:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v38 = *(this + 18);
  *a2 = 93;
  *(a2 + 1) = v38;
  a2 += 5;
  if ((v5 & 0x200) != 0)
  {
LABEL_93:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v39 = *(this + 65);
    *a2 = 96;
    a2[1] = v39;
    a2 += 2;
  }

LABEL_96:
  v40 = *(this + 1);
  if ((v40 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v40 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::AnchorAttachmentCommandArchive::ByteSizeLong(TSWP::AnchorAttachmentCommandArchive *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_21;
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

  v5 = TSWP::StorageActionCommandArchive::ByteSizeLong(*(this + 3));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v7 = v3 + 5;
  if ((v2 & 8) == 0)
  {
    v7 = v3;
  }

  if ((v2 & 0x10) != 0)
  {
    v7 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v2 & 0x20) != 0)
  {
    v7 += 5;
  }

  if ((v2 & 0x40) != 0)
  {
    v7 += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v2 & 0x80) != 0)
  {
    v4 = v7 + 5;
  }

  else
  {
    v4 = v7;
  }

LABEL_21:
  if ((v2 & 0xF00) != 0)
  {
    v8 = v4 + ((v2 >> 8) & 2) + ((v2 >> 7) & 2);
    if ((v2 & 0x400) != 0)
    {
      v8 += ((9 * (__clz(*(this + 17) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 0x800) != 0)
    {
      v4 = v8 + 5;
    }

    else
    {
      v4 = v8;
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

uint64_t TSWP::AnchorAttachmentCommandArchive::MergeFrom(TSWP::AnchorAttachmentCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::AnchorAttachmentCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::AnchorAttachmentCommandArchive::MergeFrom(uint64_t this, const TSWP::AnchorAttachmentCommandArchive *a2)
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
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::StorageActionCommandArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWP::_StorageActionCommandArchive_default_instance_;
      }

      this = TSWP::StorageActionCommandArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_38;
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

      v9 = MEMORY[0x277CA3250](v10);
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

    this = TSP::Reference::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_39;
    }

LABEL_38:
    *(v3 + 40) = *(a2 + 10);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_40;
    }

LABEL_39:
    *(v3 + 44) = *(a2 + 11);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(v3 + 48) = *(a2 + 12);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(v3 + 52) = *(a2 + 13);
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
      *(v3 + 60) = *(a2 + 15);
      goto LABEL_13;
    }

LABEL_42:
    *(v3 + 56) = *(a2 + 14);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0xF00) == 0)
  {
    return this;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 64) = *(a2 + 64);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

LABEL_46:
      *(v3 + 68) = *(a2 + 17);
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 65) = *(a2 + 65);
  if ((v5 & 0x400) != 0)
  {
    goto LABEL_46;
  }

LABEL_18:
  if ((v5 & 0x800) != 0)
  {
LABEL_19:
    *(v3 + 72) = *(a2 + 18);
  }

LABEL_20:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t *TSWP::AnchorAttachmentCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::AnchorAttachmentCommandArchive::Clear(this);

    return TSWP::AnchorAttachmentCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::AnchorAttachmentCommandArchive::CopyFrom(uint64_t *this, const TSWP::AnchorAttachmentCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::AnchorAttachmentCommandArchive::Clear(this);

    return TSWP::AnchorAttachmentCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::AnchorAttachmentCommandArchive::IsInitialized(TSWP::AnchorAttachmentCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSWP::StorageActionCommandArchive::IsInitialized(*(this + 3));
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

  result = TSP::Reference::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::AnchorAttachmentCommandArchive::InternalSwap(TSWP::AnchorAttachmentCommandArchive *this, TSWP::AnchorAttachmentCommandArchive *a2)
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
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  LODWORD(v9) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v9;
  return result;
}

TSS::ApplyThemeChildCommandArchive *TSWP::TextApplyThemeCommandArchive::clear_super(TSWP::TextApplyThemeCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSS::ApplyThemeChildCommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSWP::TextApplyThemeCommandArchive::clear_storage(TSWP::TextApplyThemeCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSWP::TextApplyThemeCommandArchive::clear_undo_transaction(TSWP::TextApplyThemeCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSWP::UndoTransaction::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::TextApplyThemeCommandArchive *TSWP::TextApplyThemeCommandArchive::TextApplyThemeCommandArchive(TSWP::TextApplyThemeCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288608030;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TextApplyThemeCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_288608030;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TextApplyThemeCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSWP::TextApplyThemeCommandArchive *TSWP::TextApplyThemeCommandArchive::TextApplyThemeCommandArchive(TSWP::TextApplyThemeCommandArchive *this, const TSWP::TextApplyThemeCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288608030;
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
  return this;
}

void TSWP::TextApplyThemeCommandArchive::~TextApplyThemeCommandArchive(TSWP::TextApplyThemeCommandArchive *this)
{
  if (this != &TSWP::_TextApplyThemeCommandArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277CA2CC0]();
      MEMORY[0x277CA3D00](v2, 0x10A1C40DFBAE579);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSWP::UndoTransaction::~UndoTransaction(v4);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::TextApplyThemeCommandArchive::~TextApplyThemeCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::TextApplyThemeCommandArchive::default_instance(TSWP::TextApplyThemeCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_TextApplyThemeCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TextApplyThemeCommandArchive_default_instance_;
}

uint64_t *TSWP::TextApplyThemeCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSS::ApplyThemeChildCommandArchive::Clear(this[3]);
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

    this = TSP::Reference::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSWP::UndoTransaction::Clear(*(v1 + 40));
    }
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

google::protobuf::internal *TSWP::TextApplyThemeCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  while ((sub_276EA4A1C(a3, &v23) & 1) == 0)
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
    if (v6 >> 3 == 6)
    {
      if (v6 != 50)
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

        v15 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v16);
        *(a1 + 40) = v15;
        v5 = v23;
      }

      v11 = sub_276F53144(a3, v15, v5);
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
        v5 = v23;
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
          return v23;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
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

        v19 = MEMORY[0x277CA3270](v18);
        LODWORD(v17) = v19;
        *(a1 + 24) = v19;
        v5 = v23;
      }

      v11 = sub_276F58720(a3, v17, v5);
    }

LABEL_37:
    v23 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v23;
}

unsigned __int8 *TSWP::TextApplyThemeCommandArchive::_InternalSerialize(TSWP::TextApplyThemeCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSS::ApplyThemeChildCommandArchive::_InternalSerialize(v6, v8, a3);
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
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 5);
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

    a2 = TSWP::UndoTransaction::_InternalSerialize(v18, v20, a3);
  }

LABEL_35:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TextApplyThemeCommandArchive::ByteSizeLong(TSWP::TextApplyThemeCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = TSS::ApplyThemeChildCommandArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = TSWP::UndoTransaction::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::TextApplyThemeCommandArchive::MergeFrom(TSWP::TextApplyThemeCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TextApplyThemeCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TextApplyThemeCommandArchive::MergeFrom(uint64_t this, const TSWP::TextApplyThemeCommandArchive *a2)
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

        v6 = MEMORY[0x277CA3270](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80BE8];
      }

      this = TSS::ApplyThemeChildCommandArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return this;
        }

        goto LABEL_24;
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

      v9 = MEMORY[0x277CA3250](v10);
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

    this = TSP::Reference::MergeFrom(v9, v11);
    if ((v5 & 4) != 0)
    {
LABEL_24:
      *(v3 + 16) |= 4u;
      v12 = *(v3 + 40);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 5))
      {
        v14 = *(a2 + 5);
      }

      else
      {
        v14 = &TSWP::_UndoTransaction_default_instance_;
      }

      return TSWP::UndoTransaction::MergeFrom(v12, v14);
    }
  }

  return this;
}

uint64_t *TSWP::TextApplyThemeCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TextApplyThemeCommandArchive::Clear(this);

    return TSWP::TextApplyThemeCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TextApplyThemeCommandArchive::CopyFrom(uint64_t *this, const TSWP::TextApplyThemeCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TextApplyThemeCommandArchive::Clear(this);

    return TSWP::TextApplyThemeCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::TextApplyThemeCommandArchive::IsInitialized(TSWP::TextApplyThemeCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSS::ApplyThemeChildCommandArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

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

  result = TSWP::UndoTransaction::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::TextApplyThemeCommandArchive::InternalSwap(TSWP::TextApplyThemeCommandArchive *this, TSWP::TextApplyThemeCommandArchive *a2)
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
  return result;
}

TSK::CommandArchive *TSWP::MoveColumnsCommandArchive::clear_super(TSWP::MoveColumnsCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSWP::MoveColumnsCommandArchive::clear_storage(TSWP::MoveColumnsCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSWP::MoveColumnsCommandArchive::clear_undo_transaction(TSWP::MoveColumnsCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSWP::UndoTransaction::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::MoveColumnsCommandArchive *TSWP::MoveColumnsCommandArchive::MoveColumnsCommandArchive(TSWP::MoveColumnsCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886080E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MoveColumnsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2886080E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MoveColumnsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWP::MoveColumnsCommandArchive *TSWP::MoveColumnsCommandArchive::MoveColumnsCommandArchive(TSWP::MoveColumnsCommandArchive *this, const TSWP::MoveColumnsCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886080E0;
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
  v7 = *(a2 + 6);
  *(this + 14) = *(a2 + 14);
  *(this + 6) = v7;
  return this;
}

void TSWP::MoveColumnsCommandArchive::~MoveColumnsCommandArchive(TSWP::MoveColumnsCommandArchive *this)
{
  if (this != &TSWP::_MoveColumnsCommandArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277CA2910]();
      MEMORY[0x277CA3D00](v2, 0x10A1C40C24530F0);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSWP::UndoTransaction::~UndoTransaction(v4);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::MoveColumnsCommandArchive::~MoveColumnsCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::MoveColumnsCommandArchive::default_instance(TSWP::MoveColumnsCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_MoveColumnsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_MoveColumnsCommandArchive_default_instance_;
}

uint64_t *TSWP::MoveColumnsCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSK::CommandArchive::Clear(this[3]);
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

    this = TSP::Reference::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSWP::UndoTransaction::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  if ((v2 & 0x38) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 48) = 0;
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

google::protobuf::internal *TSWP::MoveColumnsCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v39) & 1) == 0)
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
        goto LABEL_69;
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
            goto LABEL_50;
          }

          v5 |= 0x10u;
          v21 = (v7 + 1);
          LODWORD(v22) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_38;
          }

          v23 = *v21;
          v22 = (v22 + (v23 << 7) - 128);
          if ((v23 & 0x80000000) == 0)
          {
            v21 = (v7 + 2);
LABEL_38:
            v39 = v21;
            *(a1 + 52) = v22;
            goto LABEL_58;
          }

          v33 = google::protobuf::internal::VarintParseSlow32(v7, v22);
          v39 = v33;
          *(a1 + 52) = v34;
          if (!v33)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v10 != 5)
          {
            if (v10 == 6 && v8 == 50)
            {
              *(a1 + 16) |= 4u;
              v15 = *(a1 + 40);
              if (!v15)
              {
                v16 = *(a1 + 8);
                if (v16)
                {
                  v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
                }

                v15 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v16);
                *(a1 + 40) = v15;
                v7 = v39;
              }

              v17 = sub_276F53144(a3, v15, v7);
              goto LABEL_57;
            }

LABEL_50:
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
              sub_276EA4A94((a1 + 8));
            }

            v17 = google::protobuf::internal::UnknownFieldParse();
LABEL_57:
            v39 = v17;
            if (!v17)
            {
              goto LABEL_69;
            }

            goto LABEL_58;
          }

          if (v8 != 40)
          {
            goto LABEL_50;
          }

          v5 |= 0x20u;
          v27 = (v7 + 1);
          LODWORD(v28) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_49;
          }

          v29 = *v27;
          v28 = (v28 + (v29 << 7) - 128);
          if ((v29 & 0x80000000) == 0)
          {
            v27 = (v7 + 2);
LABEL_49:
            v39 = v27;
            *(a1 + 56) = v28;
            goto LABEL_58;
          }

          v37 = google::protobuf::internal::VarintParseSlow32(v7, v28);
          v39 = v37;
          *(a1 + 56) = v38;
          if (!v37)
          {
LABEL_69:
            v39 = 0;
            goto LABEL_2;
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
            v18 = *(a1 + 24);
            if (!v18)
            {
              v19 = *(a1 + 8);
              if (v19)
              {
                v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
              }

              v20 = MEMORY[0x277CA31C0](v19);
              LODWORD(v18) = v20;
              *(a1 + 24) = v20;
              v7 = v39;
            }

            v17 = sub_276F58170(a3, v18, v7);
            goto LABEL_57;
          }

          goto LABEL_50;
        }

        if (v10 == 2)
        {
          if (v8 == 18)
          {
            *(a1 + 16) |= 2u;
            v24 = *(a1 + 32);
            if (!v24)
            {
              v25 = *(a1 + 8);
              if (v25)
              {
                v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
              }

              v26 = MEMORY[0x277CA3250](v25);
              LODWORD(v24) = v26;
              *(a1 + 32) = v26;
              v7 = v39;
            }

            v17 = sub_276F4F9E8(a3, v24, v7);
            goto LABEL_57;
          }

          goto LABEL_50;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_50;
        }

        v5 |= 8u;
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_18:
          v39 = v12;
          *(a1 + 48) = v13;
          goto LABEL_58;
        }

        v35 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v39 = v35;
        *(a1 + 48) = v36;
        if (!v35)
        {
          goto LABEL_69;
        }
      }

LABEL_58:
      if (sub_276EA4A1C(a3, &v39))
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

unsigned __int8 *TSWP::MoveColumnsCommandArchive::_InternalSerialize(TSWP::MoveColumnsCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSK::CommandArchive::_InternalSerialize(v9, v11, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
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

  v20 = *(this + 4);
  *a2 = 18;
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

  a2 = TSP::Reference::_InternalSerialize(v20, v22, a3);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_50:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(this + 13);
    *a2 = 32;
    if (v30 > 0x7F)
    {
      a2[1] = v30 | 0x80;
      v31 = v30 >> 7;
      if (v30 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v31 | 0x80;
          v32 = v31 >> 7;
          ++a2;
          v33 = v31 >> 14;
          v31 >>= 7;
        }

        while (v33);
        *(a2 - 1) = v32;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        a2[2] = v31;
        a2 += 3;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      a2[1] = v30;
      a2 += 2;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_61;
      }
    }

LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

LABEL_39:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 12);
  *a2 = 24;
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
        v28 = v27 >> 7;
        ++a2;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
      *(a2 - 1) = v28;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      a2[2] = v27;
      a2 += 3;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_50;
      }
    }
  }

  else
  {
    a2[1] = v26;
    a2 += 2;
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_50;
    }
  }

LABEL_5:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_6;
  }

LABEL_61:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v34 = *(this + 14);
  *a2 = 40;
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
      if ((v5 & 4) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      a2[2] = v35;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    a2[1] = v34;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_7:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 5);
  *a2 = 50;
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

  a2 = TSWP::UndoTransaction::_InternalSerialize(v6, v8, a3);
LABEL_23:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::MoveColumnsCommandArchive::ByteSizeLong(TSWP::MoveColumnsCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = TSWP::UndoTransaction::ByteSizeLong(*(this + 5));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v3 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_17:
  v3 += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_12:
    v3 += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::MoveColumnsCommandArchive::MergeFrom(TSWP::MoveColumnsCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::MoveColumnsCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}