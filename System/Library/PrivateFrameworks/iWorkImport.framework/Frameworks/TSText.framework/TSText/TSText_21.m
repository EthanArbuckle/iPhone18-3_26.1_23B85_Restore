uint64_t TSWP::DummyCommandArchive::ByteSizeLong(TSWP::DummyCommandArchive *this)
{
  if (*(this + 16))
  {
    v1 = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::DummyCommandArchive::MergeFrom(TSWP::DummyCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::DummyCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::DummyCommandArchive::MergeFrom(uint64_t this, const TSWP::DummyCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 6);
    *(v3 + 16) |= 1u;
    *(v3 + 24) = v5;
  }

  return this;
}

TSWP::DummyCommandArchive *TSWP::DummyCommandArchive::CopyFrom(TSWP::DummyCommandArchive *this, const Message *lpsrc)
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
      sub_276EA4D28(v5);
    }

    return TSWP::DummyCommandArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

const TSWP::DummyCommandArchive *TSWP::DummyCommandArchive::CopyFrom(const TSWP::DummyCommandArchive *this, const TSWP::DummyCommandArchive *a2)
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
      sub_276EA4D28(v5);
    }

    return TSWP::DummyCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::DummyCommandArchive::InternalSwap(TSWP::DummyCommandArchive *this, TSWP::DummyCommandArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  return result;
}

TSK::CommandArchive *TSWP::TextCommandArchive::clear_super(TSWP::TextCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSWP::TextCommandArchive::clear_storage(TSWP::TextCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSWP::TextCommandArchive::clear_undo_transaction(TSWP::TextCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSWP::UndoTransaction::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::TextCommandArchive *TSWP::TextCommandArchive::TextCommandArchive(TSWP::TextCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288607480;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TextCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288607480;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TextCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWP::TextCommandArchive *TSWP::TextCommandArchive::TextCommandArchive(TSWP::TextCommandArchive *this, const TSWP::TextCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288607480;
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
  v7 = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 3) = v7;
  return this;
}

void TSWP::TextCommandArchive::~TextCommandArchive(TSWP::TextCommandArchive *this)
{
  if (this != &TSWP::_TextCommandArchive_default_instance_)
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
  TSWP::TextCommandArchive::~TextCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::TextCommandArchive::default_instance(TSWP::TextCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_TextCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TextCommandArchive_default_instance_;
}

uint64_t *TSWP::TextCommandArchive::Clear(uint64_t *this)
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
  if ((v2 & 0xF8) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 60) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::TextCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v54 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v54) & 1) == 0)
  {
    while (1)
    {
      v7 = (v54 + 1);
      v8 = *v54;
      if ((*v54 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v54, (v9 - 128));
      v54 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_95;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 4)
      {
        if (v8 >> 3 <= 2)
        {
          if (v10 == 1)
          {
            if (v8 == 10)
            {
              *(a1 + 16) |= 1u;
              v27 = *(a1 + 24);
              if (!v27)
              {
                v28 = *(a1 + 8);
                if (v28)
                {
                  v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
                }

                v29 = MEMORY[0x277CA31C0](v28);
                LODWORD(v27) = v29;
                *(a1 + 24) = v29;
                v7 = v54;
              }

              v18 = sub_276F58170(a3, v27, v7);
              goto LABEL_79;
            }
          }

          else if (v10 == 2 && v8 == 18)
          {
            *(a1 + 16) |= 2u;
            v15 = *(a1 + 32);
            if (!v15)
            {
              v16 = *(a1 + 8);
              if (v16)
              {
                v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = MEMORY[0x277CA3250](v16);
              LODWORD(v15) = v17;
              *(a1 + 32) = v17;
              v7 = v54;
            }

            v18 = sub_276F4F9E8(a3, v15, v7);
            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 16) |= 4u;
            v30 = *(a1 + 40);
            if (!v30)
            {
              v31 = *(a1 + 8);
              if (v31)
              {
                v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
              }

              v30 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v31);
              *(a1 + 40) = v30;
              v7 = v54;
            }

            v18 = sub_276F53144(a3, v30, v7);
            goto LABEL_79;
          }

LABEL_72:
          if (v8)
          {
            v41 = (v8 & 7) == 4;
          }

          else
          {
            v41 = 1;
          }

          if (v41)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v18 = google::protobuf::internal::UnknownFieldParse();
LABEL_79:
          v54 = v18;
          if (!v18)
          {
            goto LABEL_95;
          }

          goto LABEL_80;
        }

        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_72;
        }

        v5 |= 8u;
        v19 = (v7 + 1);
        LODWORD(v20) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        v21 = *v19;
        v20 = (v20 + (v21 << 7) - 128);
        if ((v21 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_35:
          v54 = v19;
          *(a1 + 48) = v20;
          goto LABEL_80;
        }

        v42 = google::protobuf::internal::VarintParseSlow32(v7, v20);
        v54 = v42;
        *(a1 + 48) = v43;
        if (!v42)
        {
          goto LABEL_95;
        }
      }

      else if (v8 >> 3 <= 6)
      {
        if (v10 == 5)
        {
          if (v8 != 40)
          {
            goto LABEL_72;
          }

          v5 |= 0x10u;
          v35 = (v7 + 1);
          LODWORD(v36) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_66;
          }

          v37 = *v35;
          v36 = (v36 + (v37 << 7) - 128);
          if ((v37 & 0x80000000) == 0)
          {
            v35 = (v7 + 2);
LABEL_66:
            v54 = v35;
            *(a1 + 52) = v36;
            goto LABEL_80;
          }

          v48 = google::protobuf::internal::VarintParseSlow32(v7, v36);
          v54 = v48;
          *(a1 + 52) = v49;
          if (!v48)
          {
            goto LABEL_95;
          }
        }

        else
        {
          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_72;
          }

          v5 |= 0x20u;
          v22 = (v7 + 1);
          LODWORD(v23) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_42;
          }

          v24 = *v22;
          v23 = (v23 + (v24 << 7) - 128);
          if ((v24 & 0x80000000) == 0)
          {
            v22 = (v7 + 2);
LABEL_42:
            v54 = v22;
            *(a1 + 56) = v23;
            goto LABEL_80;
          }

          v44 = google::protobuf::internal::VarintParseSlow32(v7, v23);
          v54 = v44;
          *(a1 + 56) = v45;
          if (!v44)
          {
            goto LABEL_95;
          }
        }
      }

      else if (v10 == 7)
      {
        if (v8 != 56)
        {
          goto LABEL_72;
        }

        v5 |= 0x40u;
        v32 = (v7 + 1);
        LODWORD(v33) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_61;
        }

        v34 = *v32;
        v33 = (v33 + (v34 << 7) - 128);
        if ((v34 & 0x80000000) == 0)
        {
          v32 = (v7 + 2);
LABEL_61:
          v54 = v32;
          *(a1 + 60) = v33;
          goto LABEL_80;
        }

        v46 = google::protobuf::internal::VarintParseSlow32(v7, v33);
        v54 = v46;
        *(a1 + 60) = v47;
        if (!v46)
        {
          goto LABEL_95;
        }
      }

      else if (v10 == 9)
      {
        if (v8 != 72)
        {
          goto LABEL_72;
        }

        v5 |= 0x80u;
        v38 = (v7 + 1);
        LODWORD(v39) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_71;
        }

        v40 = *v38;
        v39 = (v39 + (v40 << 7) - 128);
        if ((v40 & 0x80000000) == 0)
        {
          v38 = (v7 + 2);
LABEL_71:
          v54 = v38;
          *(a1 + 64) = v39;
          goto LABEL_80;
        }

        v52 = google::protobuf::internal::VarintParseSlow32(v7, v39);
        v54 = v52;
        *(a1 + 64) = v53;
        if (!v52)
        {
LABEL_95:
          v54 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 10 || v8 != 80)
        {
          goto LABEL_72;
        }

        v5 |= 0x100u;
        v11 = (v7 + 1);
        LODWORD(v12) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

        v13 = *v11;
        v12 = (v12 + (v13 << 7) - 128);
        if ((v13 & 0x80000000) == 0)
        {
          v11 = (v7 + 2);
LABEL_16:
          v54 = v11;
          *(a1 + 68) = v12;
          goto LABEL_80;
        }

        v50 = google::protobuf::internal::VarintParseSlow32(v7, v12);
        v54 = v50;
        *(a1 + 68) = v51;
        if (!v50)
        {
          goto LABEL_95;
        }
      }

LABEL_80:
      if (sub_276EA4A1C(a3, &v54))
      {
        goto LABEL_2;
      }
    }

    v7 = (v54 + 2);
LABEL_6:
    v54 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v54;
}

unsigned __int8 *TSWP::TextCommandArchive::_InternalSerialize(TSWP::TextCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
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

    goto LABEL_49;
  }

LABEL_39:
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

  a2 = TSWP::UndoTransaction::_InternalSerialize(v22, v24, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_60:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v32 = *(this + 13);
    *a2 = 40;
    if (v32 > 0x7F)
    {
      a2[1] = v32 | 0x80;
      v33 = v32 >> 7;
      if (v32 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v33 | 0x80;
          v34 = v33 >> 7;
          ++a2;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
        *(a2 - 1) = v34;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        a2[2] = v33;
        a2 += 3;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
      a2[1] = v32;
      a2 += 2;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_71;
      }
    }

LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_82:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v40 = *(this + 15);
    *a2 = 56;
    if (v40 > 0x7F)
    {
      a2[1] = v40 | 0x80;
      v41 = v40 >> 7;
      if (v40 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v41 | 0x80;
          v42 = v41 >> 7;
          ++a2;
          v43 = v41 >> 14;
          v41 >>= 7;
        }

        while (v43);
        *(a2 - 1) = v42;
        if ((v5 & 0x80) != 0)
        {
          goto LABEL_93;
        }
      }

      else
      {
        a2[2] = v41;
        a2 += 3;
        if ((v5 & 0x80) != 0)
        {
          goto LABEL_93;
        }
      }
    }

    else
    {
      a2[1] = v40;
      a2 += 2;
      if ((v5 & 0x80) != 0)
      {
        goto LABEL_93;
      }
    }

LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_10;
  }

LABEL_49:
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
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      a2[2] = v29;
      a2 += 3;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_60;
      }
    }
  }

  else
  {
    a2[1] = v28;
    a2 += 2;
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_60;
    }
  }

LABEL_6:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_71:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v36 = *(this + 14);
  *a2 = 48;
  if (v36 > 0x7F)
  {
    a2[1] = v36 | 0x80;
    v37 = v36 >> 7;
    if (v36 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v37 | 0x80;
        v38 = v37 >> 7;
        ++a2;
        v39 = v37 >> 14;
        v37 >>= 7;
      }

      while (v39);
      *(a2 - 1) = v38;
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_82;
      }
    }

    else
    {
      a2[2] = v37;
      a2 += 3;
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_82;
      }
    }
  }

  else
  {
    a2[1] = v36;
    a2 += 2;
    if ((v5 & 0x40) != 0)
    {
      goto LABEL_82;
    }
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_93:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v44 = *(this + 16);
  *a2 = 72;
  if (v44 > 0x7F)
  {
    a2[1] = v44 | 0x80;
    v45 = v44 >> 7;
    if (v44 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v45 | 0x80;
        v46 = v45 >> 7;
        ++a2;
        v47 = v45 >> 14;
        v45 >>= 7;
      }

      while (v47);
      *(a2 - 1) = v46;
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_104;
      }
    }

    else
    {
      a2[2] = v45;
      a2 += 3;
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_104;
      }
    }
  }

  else
  {
    a2[1] = v44;
    a2 += 2;
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_104;
    }
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 17);
  *a2 = 80;
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

LABEL_104:
  v48 = *(this + 1);
  if ((v48 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v48 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TextCommandArchive::ByteSizeLong(TSWP::TextCommandArchive *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v3 += ((9 * (__clz(*(this + 17) | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_17;
  }

  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_8:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  if ((v2 & 4) != 0)
  {
    v7 = TSWP::UndoTransaction::ByteSizeLong(*(this + 5));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_11:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_11;
  }

  v3 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v3 += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v3 += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  v3 += ((9 * (__clz(*(this + 15) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) == 0)
  {
LABEL_15:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_24:
  v3 += ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x100) != 0)
  {
    goto LABEL_16;
  }

LABEL_17:
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

uint64_t TSWP::TextCommandArchive::MergeFrom(TSWP::TextCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TextCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TextCommandArchive::MergeFrom(uint64_t this, const TSWP::TextCommandArchive *a2)
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
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x277CA31C0](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v7, v9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_33;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

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
      v12 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_41;
    }

LABEL_33:
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 5))
    {
      v15 = *(a2 + 5);
    }

    else
    {
      v15 = &TSWP::_UndoTransaction_default_instance_;
    }

    this = TSWP::UndoTransaction::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(v3 + 48) = *(a2 + 12);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(v3 + 52) = *(a2 + 13);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(v3 + 56) = *(a2 + 14);
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
      *(v3 + 64) = *(a2 + 16);
      goto LABEL_13;
    }

LABEL_44:
    *(v3 + 60) = *(a2 + 15);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0x100) != 0)
  {
    v6 = *(a2 + 17);
    *(v3 + 16) |= 0x100u;
    *(v3 + 68) = v6;
  }

  return this;
}

uint64_t *TSWP::TextCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TextCommandArchive::Clear(this);

    return TSWP::TextCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TextCommandArchive::CopyFrom(uint64_t *this, const TSWP::TextCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TextCommandArchive::Clear(this);

    return TSWP::TextCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::TextCommandArchive::IsInitialized(TSWP::TextCommandArchive *this)
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

__n128 TSWP::TextCommandArchive::InternalSwap(TSWP::TextCommandArchive *this, TSWP::TextCommandArchive *a2)
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
  return result;
}

TSK::CommandArchive *TSWP::StorageActionCommandArchive::clear_super(TSWP::StorageActionCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUIDPath *TSWP::StorageActionCommandArchive::clear_storage(TSWP::StorageActionCommandArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t *TSWP::StorageActionCommandArchive::clear_undo_transaction(TSWP::StorageActionCommandArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSWP::UndoTransaction::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

uint64_t TSWP::StorageActionCommandArchive::clear_custom_format_keys(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSK::DataReferenceRecord *TSWP::StorageActionCommandArchive::clear_changed_data_reference_record(TSWP::StorageActionCommandArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSK::DataReferenceRecord::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSWP::StorageActionCommandArchive *TSWP::StorageActionCommandArchive::StorageActionCommandArchive(TSWP::StorageActionCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288607530;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_StorageActionCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = MEMORY[0x277D80A90];
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return this;
}

TSWP::StorageActionCommandArchive *TSWP::StorageActionCommandArchive::StorageActionCommandArchive(TSWP::StorageActionCommandArchive *this, const TSWP::StorageActionCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288607530;
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
    sub_276F2BCE8(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  *(this + 6) = MEMORY[0x277D80A90];
  v11 = *(a2 + 4);
  if (v11)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v11 = *(a2 + 4);
  }

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
  *(this + 88) = *(a2 + 88);
  return this;
}

void sub_276EFEBAC(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v2, 0x10A1C40989320B9);
  sub_276F2BC64((v1 + 24));
  _Unwind_Resume(a1);
}

void TSWP::StorageActionCommandArchive::~StorageActionCommandArchive(TSWP::StorageActionCommandArchive *this)
{
  sub_276EFEC58(this);
  sub_276E4E808(this + 1);
  sub_276F2BC64(this + 3);
}

{
  TSWP::StorageActionCommandArchive::~StorageActionCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t sub_276EFEC58(uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  if (v1 != &TSWP::_StorageActionCommandArchive_default_instance_)
  {
    if (*(v1 + 56))
    {
      v3 = MEMORY[0x277CA2910]();
      MEMORY[0x277CA3D00](v3, 0x10A1C40C24530F0);
    }

    if (*(v1 + 64))
    {
      v4 = MEMORY[0x277CA2B90]();
      MEMORY[0x277CA3D00](v4, 0x10A1C40290C9B23);
    }

    v5 = *(v1 + 72);
    if (v5)
    {
      TSWP::UndoTransaction::~UndoTransaction(v5);
      MEMORY[0x277CA3D00]();
    }

    result = *(v1 + 80);
    if (result)
    {
      MEMORY[0x277CA2960]();

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::StorageActionCommandArchive::default_instance(TSWP::StorageActionCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_StorageActionCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_StorageActionCommandArchive_default_instance_;
}

uint64_t *TSWP::StorageActionCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0x1F) == 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    v8 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_25:
    this = TSP::UUIDPath::Clear(*(v1 + 64));
    if ((v5 & 8) == 0)
    {
LABEL_10:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_26;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_24:
  this = TSK::CommandArchive::Clear(*(v1 + 56));
  if ((v5 & 4) != 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  if ((v5 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_26:
  this = TSWP::UndoTransaction::Clear(*(v1 + 72));
  if ((v5 & 0x10) != 0)
  {
LABEL_11:
    this = TSK::DataReferenceRecord::Clear(*(v1 + 80));
  }

LABEL_12:
  if ((v5 & 0xE0) != 0)
  {
    *(v1 + 96) = 0;
    *(v1 + 88) = 0;
  }

  if ((v5 & 0xF00) != 0)
  {
    *(v1 + 100) = 0;
    *(v1 + 97) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_276EA4D28(v6);
  }

  return this;
}

google::protobuf::internal *TSWP::StorageActionCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v69 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v69) & 1) == 0)
  {
    while (2)
    {
      v7 = (v69 + 1);
      v8 = *v69;
      if (*v69 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v69, (v9 - 128));
          v69 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_112;
          }

          v7 = TagFallback;
          v8 = v15;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_86;
              }

              *(a1 + 16) |= 2u;
              v10 = *(a1 + 56);
              if (!v10)
              {
                v11 = *(a1 + 8);
                if (v11)
                {
                  v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
                }

                v12 = MEMORY[0x277CA31C0](v11);
                LODWORD(v10) = v12;
                *(a1 + 56) = v12;
                v7 = v69;
              }

              v13 = sub_276F58170(a3, v10, v7);
              goto LABEL_93;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_86;
              }

              *(a1 + 16) |= 4u;
              v34 = *(a1 + 64);
              if (!v34)
              {
                v35 = *(a1 + 8);
                if (v35)
                {
                  v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
                }

                v36 = MEMORY[0x277CA3240](v35);
                LODWORD(v34) = v36;
                *(a1 + 64) = v36;
                v7 = v69;
              }

              v13 = sub_276F58240(a3, v34, v7);
              goto LABEL_93;
            case 3u:
              if (v8 != 26)
              {
                goto LABEL_86;
              }

              *(a1 + 16) |= 8u;
              v26 = *(a1 + 72);
              if (!v26)
              {
                v27 = *(a1 + 8);
                if (v27)
                {
                  v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
                }

                v26 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v27);
                *(a1 + 72) = v26;
                v7 = v69;
              }

              v13 = sub_276F53144(a3, v26, v7);
              goto LABEL_93;
            case 4u:
              if (v8 != 32)
              {
                goto LABEL_86;
              }

              v5 |= 0x20u;
              v28 = (v7 + 1);
              LODWORD(v29) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_45;
              }

              v30 = *v28;
              v29 = (v29 + (v30 << 7) - 128);
              if (v30 < 0)
              {
                v61 = google::protobuf::internal::VarintParseSlow32(v7, v29);
                v69 = v61;
                *(a1 + 88) = v62;
                if (!v61)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                v28 = (v7 + 2);
LABEL_45:
                v69 = v28;
                *(a1 + 88) = v29;
              }

              goto LABEL_94;
            case 5u:
              if (v8 != 40)
              {
                goto LABEL_86;
              }

              v5 |= 0x40u;
              v16 = (v7 + 1);
              LODWORD(v17) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_22;
              }

              v18 = *v16;
              v17 = (v17 + (v18 << 7) - 128);
              if (v18 < 0)
              {
                v56 = google::protobuf::internal::VarintParseSlow32(v7, v17);
                v69 = v56;
                *(a1 + 92) = v57;
                if (!v56)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                v16 = (v7 + 2);
LABEL_22:
                v69 = v16;
                *(a1 + 92) = v17;
              }

              goto LABEL_94;
            case 6u:
              if (v8 != 50)
              {
                goto LABEL_86;
              }

              v37 = v7 - 1;
              break;
            case 7u:
              if (v8 != 56)
              {
                goto LABEL_86;
              }

              v5 |= 0x80u;
              v47 = (v7 + 1);
              v46 = *v7;
              if ((v46 & 0x8000000000000000) == 0)
              {
                goto LABEL_74;
              }

              v48 = *v47;
              v46 = (v48 << 7) + v46 - 128;
              if (v48 < 0)
              {
                v65 = google::protobuf::internal::VarintParseSlow64(v7, v46);
                v69 = v65;
                *(a1 + 96) = v66 != 0;
                if (!v65)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                v47 = (v7 + 2);
LABEL_74:
                v69 = v47;
                *(a1 + 96) = v46 != 0;
              }

              goto LABEL_94;
            case 8u:
              if (v8 != 64)
              {
                goto LABEL_86;
              }

              v5 |= 0x100u;
              v32 = (v7 + 1);
              v31 = *v7;
              if ((v31 & 0x8000000000000000) == 0)
              {
                goto LABEL_50;
              }

              v33 = *v32;
              v31 = (v33 << 7) + v31 - 128;
              if (v33 < 0)
              {
                v63 = google::protobuf::internal::VarintParseSlow64(v7, v31);
                v69 = v63;
                *(a1 + 97) = v64 != 0;
                if (!v63)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                v32 = (v7 + 2);
LABEL_50:
                v69 = v32;
                *(a1 + 97) = v31 != 0;
              }

              goto LABEL_94;
            case 9u:
              if (v8 != 72)
              {
                goto LABEL_86;
              }

              v5 |= 0x200u;
              v53 = (v7 + 1);
              v52 = *v7;
              if ((v52 & 0x8000000000000000) == 0)
              {
                goto LABEL_85;
              }

              v54 = *v53;
              v52 = (v54 << 7) + v52 - 128;
              if (v54 < 0)
              {
                v67 = google::protobuf::internal::VarintParseSlow64(v7, v52);
                v69 = v67;
                *(a1 + 98) = v68 != 0;
                if (!v67)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                v53 = (v7 + 2);
LABEL_85:
                v69 = v53;
                *(a1 + 98) = v52 != 0;
              }

              goto LABEL_94;
            case 0xAu:
              if (v8 != 80)
              {
                goto LABEL_86;
              }

              v5 |= 0x400u;
              v24 = (v7 + 1);
              v23 = *v7;
              if ((v23 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }

              v25 = *v24;
              v23 = (v25 << 7) + v23 - 128;
              if (v25 < 0)
              {
                v59 = google::protobuf::internal::VarintParseSlow64(v7, v23);
                v69 = v59;
                *(a1 + 99) = v60 != 0;
                if (!v59)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                v24 = (v7 + 2);
LABEL_34:
                v69 = v24;
                *(a1 + 99) = v23 != 0;
              }

              goto LABEL_94;
            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_86;
              }

              *(a1 + 16) |= 0x10u;
              v49 = *(a1 + 80);
              if (!v49)
              {
                v50 = *(a1 + 8);
                if (v50)
                {
                  v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
                }

                v51 = MEMORY[0x277CA31D0](v50);
                LODWORD(v49) = v51;
                *(a1 + 80) = v51;
                v7 = v69;
              }

              v13 = sub_276F583E0(a3, v49, v7);
              goto LABEL_93;
            case 0xCu:
              if (v8 != 98)
              {
                goto LABEL_86;
              }

              *(a1 + 16) |= 1u;
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v13 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_93;
            case 0xDu:
              if (v8 != 104)
              {
                goto LABEL_86;
              }

              v19 = (v7 + 1);
              v20 = *v7;
              if ((v20 & 0x8000000000000000) == 0)
              {
                goto LABEL_27;
              }

              v21 = *v19;
              v22 = (v21 << 7) + v20;
              v20 = (v22 - 128);
              if (v21 < 0)
              {
                v69 = google::protobuf::internal::VarintParseSlow64(v7, (v22 - 128));
                if (!v69)
                {
                  goto LABEL_112;
                }

                v20 = v58;
              }

              else
              {
                v19 = (v7 + 2);
LABEL_27:
                v69 = v19;
              }

              if (TSWP::StorageArchive_KindType_IsValid(v20))
              {
                *(a1 + 16) |= 0x800u;
                *(a1 + 100) = v20;
              }

              else
              {
                sub_276F59350();
              }

              goto LABEL_94;
            default:
LABEL_86:
              if (v8)
              {
                v55 = (v8 & 7) == 4;
              }

              else
              {
                v55 = 1;
              }

              if (v55)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_276EA4A94((a1 + 8));
              }

              v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_93:
              v69 = v13;
              if (!v13)
              {
LABEL_112:
                v69 = 0;
                goto LABEL_2;
              }

LABEL_94:
              if (sub_276EA4A1C(a3, &v69))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v38 = (v37 + 1);
            v69 = (v37 + 1);
            v39 = *(a1 + 40);
            if (!v39)
            {
              goto LABEL_60;
            }

            v45 = *(a1 + 32);
            v40 = *v39;
            if (v45 < *v39)
            {
              *(a1 + 32) = v45 + 1;
              v42 = *&v39[2 * v45 + 2];
              goto LABEL_64;
            }

            if (v40 == *(a1 + 36))
            {
LABEL_60:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v39 = *(a1 + 40);
              v40 = *v39;
            }

            *v39 = v40 + 1;
            v41 = MEMORY[0x277CA3200](*(a1 + 24));
            LODWORD(v42) = v41;
            v43 = *(a1 + 32);
            v44 = *(a1 + 40) + 8 * v43;
            *(a1 + 32) = v43 + 1;
            *(v44 + 8) = v41;
            v38 = v69;
LABEL_64:
            v37 = sub_276F58310(a3, v42, v38);
            v69 = v37;
            if (!v37)
            {
              goto LABEL_112;
            }

            if (*a3 <= v37 || *v37 != 50)
            {
              goto LABEL_94;
            }
          }
        }

        v7 = (v69 + 2);
      }

      break;
    }

    v69 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v69;
}

unsigned __int8 *TSWP::StorageActionCommandArchive::_InternalSerialize(TSWP::StorageActionCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 7);
    *v4 = 10;
    v9 = *(v8 + 5);
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

    v4 = TSK::CommandArchive::_InternalSerialize(v8, v10, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
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

  v17 = *(this + 8);
  *v4 = 18;
  v18 = *(v17 + 10);
  if (v18 > 0x7F)
  {
    v4[1] = v18 | 0x80;
    v20 = v18 >> 7;
    if (v18 >> 14)
    {
      v19 = v4 + 3;
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
      v4[2] = v20;
      v19 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v18;
    v19 = v4 + 2;
  }

  v4 = TSP::UUIDPath::_InternalSerialize(v17, v19, a3);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 9);
  *v4 = 26;
  v24 = *(v23 + 5);
  if (v24 > 0x7F)
  {
    v4[1] = v24 | 0x80;
    v26 = v24 >> 7;
    if (v24 >> 14)
    {
      v25 = v4 + 3;
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
      v4[2] = v26;
      v25 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v24;
    v25 = v4 + 2;
  }

  v4 = TSWP::UndoTransaction::_InternalSerialize(v23, v25, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_6;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 22);
  *v4 = 32;
  if (v29 > 0x7F)
  {
    v4[1] = v29 | 0x80;
    v30 = v29 >> 7;
    if (v29 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v4;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v4 - 1) = v31;
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v4[2] = v30;
      v4 += 3;
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_56;
      }
    }
  }

  else
  {
    v4[1] = v29;
    v4 += 2;
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_56;
    }
  }

LABEL_6:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 23);
  *v4 = 40;
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

LABEL_56:
  v33 = *(this + 8);
  if (v33)
  {
    for (i = 0; i != v33; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v35 = *(*(this + 5) + 8 * i + 8);
      *v4 = 50;
      v36 = *(v35 + 5);
      if (v36 > 0x7F)
      {
        v4[1] = v36 | 0x80;
        v38 = v36 >> 7;
        if (v36 >> 14)
        {
          v37 = v4 + 3;
          do
          {
            *(v37 - 1) = v38 | 0x80;
            v39 = v38 >> 7;
            ++v37;
            v40 = v38 >> 14;
            v38 >>= 7;
          }

          while (v40);
          *(v37 - 1) = v39;
        }

        else
        {
          v4[2] = v38;
          v37 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v36;
        v37 = v4 + 2;
      }

      v4 = TSP::UUID::_InternalSerialize(v35, v37, a3);
    }
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v41 = *(this + 96);
    *v4 = 56;
    v4[1] = v41;
    v4 += 2;
    if ((v6 & 0x100) == 0)
    {
LABEL_70:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_82;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_70;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v42 = *(this + 97);
  *v4 = 64;
  v4[1] = v42;
  v4 += 2;
  if ((v6 & 0x200) == 0)
  {
LABEL_71:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_85;
  }

LABEL_82:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v43 = *(this + 98);
  *v4 = 72;
  v4[1] = v43;
  v4 += 2;
  if ((v6 & 0x400) == 0)
  {
LABEL_72:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_88;
  }

LABEL_85:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v44 = *(this + 99);
  *v4 = 80;
  v4[1] = v44;
  v4 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_73:
    if ((v6 & 1) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_98;
  }

LABEL_88:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v45 = *(this + 10);
  *v4 = 90;
  v46 = *(v45 + 22);
  if (v46 > 0x7F)
  {
    v4[1] = v46 | 0x80;
    v48 = v46 >> 7;
    if (v46 >> 14)
    {
      v47 = v4 + 3;
      do
      {
        *(v47 - 1) = v48 | 0x80;
        v49 = v48 >> 7;
        ++v47;
        v50 = v48 >> 14;
        v48 >>= 7;
      }

      while (v50);
      *(v47 - 1) = v49;
    }

    else
    {
      v4[2] = v48;
      v47 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v46;
    v47 = v4 + 2;
  }

  v4 = TSK::DataReferenceRecord::_InternalSerialize(v45, v47, a3);
  if ((v6 & 1) == 0)
  {
LABEL_74:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_99;
  }

LABEL_98:
  v4 = sub_276E5154C(a3, 12, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x800) == 0)
  {
    goto LABEL_108;
  }

LABEL_99:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v51 = *(this + 25);
  *v4 = 104;
  if (v51 > 0x7F)
  {
    v4[1] = v51 | 0x80;
    v52 = v51 >> 7;
    if (v51 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v52 | 0x80;
        v53 = v52 >> 7;
        ++v4;
        v54 = v52 >> 14;
        v52 >>= 7;
      }

      while (v54);
      *(v4 - 1) = v53;
    }

    else
    {
      v4[2] = v52;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v51;
    v4 += 2;
  }

LABEL_108:
  v55 = *(this + 1);
  if ((v55 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v55 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::StorageActionCommandArchive::ByteSizeLong(TSWP::StorageActionCommandArchive *this)
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
      v7 = TSP::UUID::ByteSizeLong(v6);
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
  if (*(this + 4))
  {
    if (v8)
    {
      v13 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_31;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    v16 = TSK::CommandArchive::ByteSizeLong(*(this + 7));
    v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_32;
    }

LABEL_31:
    v17 = TSP::UUIDPath::ByteSizeLong(*(this + 8));
    v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 8) == 0)
    {
LABEL_14:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }

LABEL_32:
    v18 = TSWP::UndoTransaction::ByteSizeLong(*(this + 9));
    v2 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x10) == 0)
    {
LABEL_15:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_34;
    }

LABEL_33:
    v19 = TSK::DataReferenceRecord::ByteSizeLong(*(this + 10));
    v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x20) == 0)
    {
LABEL_16:
      if ((v8 & 0x40) == 0)
      {
LABEL_18:
        v2 += (v8 >> 6) & 2;
        goto LABEL_19;
      }

LABEL_17:
      v2 += ((9 * (__clz(*(this + 23) | 1) ^ 0x1F) + 73) >> 6) + 1;
      goto LABEL_18;
    }

LABEL_34:
    v2 += ((9 * (__clz(*(this + 22) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:
  if ((v8 & 0xF00) != 0)
  {
    v2 += ((v8 >> 8) & 2) + ((v8 >> 7) & 2) + ((v8 >> 9) & 2);
    if ((v8 & 0x800) != 0)
    {
      v9 = *(this + 25);
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v9 >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 11;
      }

      v2 += v11;
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

uint64_t TSWP::StorageActionCommandArchive::MergeFrom(TSWP::StorageActionCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::StorageActionCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::StorageActionCommandArchive::MergeFrom(uint64_t this, const TSWP::StorageActionCommandArchive *a2)
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
    this = sub_276F2BCE8(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_34;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 16) |= 2u;
    v11 = *(v3 + 56);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277CA31C0](v12);
      *(v3 + 56) = v11;
    }

    if (*(a2 + 7))
    {
      v13 = *(a2 + 7);
    }

    else
    {
      v13 = MEMORY[0x277D80718];
    }

    this = TSK::CommandArchive::MergeFrom(v11, v13);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_42;
    }

LABEL_34:
    *(v3 + 16) |= 4u;
    v14 = *(v3 + 64);
    if (!v14)
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277CA3240](v15);
      *(v3 + 64) = v14;
    }

    if (*(a2 + 8))
    {
      v16 = *(a2 + 8);
    }

    else
    {
      v16 = MEMORY[0x277D80A10];
    }

    this = TSP::UUIDPath::MergeFrom(v14, v16);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_50;
    }

LABEL_42:
    *(v3 + 16) |= 8u;
    v17 = *(v3 + 72);
    if (!v17)
    {
      v18 = *(v3 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v18);
      *(v3 + 72) = v17;
    }

    if (*(a2 + 9))
    {
      v19 = *(a2 + 9);
    }

    else
    {
      v19 = &TSWP::_UndoTransaction_default_instance_;
    }

    this = TSWP::UndoTransaction::MergeFrom(v17, v19);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_58;
    }

LABEL_50:
    *(v3 + 16) |= 0x10u;
    v20 = *(v3 + 80);
    if (!v20)
    {
      v21 = *(v3 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277CA31D0](v21);
      *(v3 + 80) = v20;
    }

    if (*(a2 + 10))
    {
      v22 = *(a2 + 10);
    }

    else
    {
      v22 = MEMORY[0x277D80738];
    }

    this = TSK::DataReferenceRecord::MergeFrom(v20, v22);
    if ((v10 & 0x20) == 0)
    {
LABEL_13:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_59;
    }

LABEL_58:
    *(v3 + 88) = *(a2 + 22);
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
      *(v3 + 96) = *(a2 + 96);
      goto LABEL_16;
    }

LABEL_59:
    *(v3 + 92) = *(a2 + 23);
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if ((v10 & 0xF00) == 0)
  {
    return this;
  }

  if ((v10 & 0x100) != 0)
  {
    *(v3 + 97) = *(a2 + 97);
    if ((v10 & 0x200) == 0)
    {
LABEL_20:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_21;
      }

LABEL_63:
      *(v3 + 99) = *(a2 + 99);
      if ((v10 & 0x800) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  *(v3 + 98) = *(a2 + 98);
  if ((v10 & 0x400) != 0)
  {
    goto LABEL_63;
  }

LABEL_21:
  if ((v10 & 0x800) != 0)
  {
LABEL_22:
    *(v3 + 100) = *(a2 + 25);
  }

LABEL_23:
  *(v3 + 16) |= v10;
  return this;
}

uint64_t *TSWP::StorageActionCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::StorageActionCommandArchive::Clear(this);

    return TSWP::StorageActionCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::StorageActionCommandArchive::CopyFrom(uint64_t *this, const TSWP::StorageActionCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::StorageActionCommandArchive::Clear(this);

    return TSWP::StorageActionCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::StorageActionCommandArchive::IsInitialized(TSWP::StorageActionCommandArchive *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 4) != 0)
  {
    result = TSP::UUIDPath::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 8) != 0)
  {
    result = TSWP::UndoTransaction::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 0x10) == 0)
  {
    return 1;
  }

  result = TSK::DataReferenceRecord::IsInitialized(*(this + 10));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::StorageActionCommandArchive::InternalSwap(TSWP::StorageActionCommandArchive *this, TSWP::StorageActionCommandArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 7);
  v9 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v8;
  *(a2 + 8) = v9;
  v10 = *(this + 9);
  v11 = *(this + 10);
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v10;
  *(a2 + 10) = v11;
  v12 = *(this + 11);
  v13 = *(this + 12);
  result = *(a2 + 88);
  *(this + 88) = result;
  *(a2 + 11) = v12;
  *(a2 + 12) = v13;
  return result;
}

TSK::CommandArchive *TSWP::SetColumnStyleCommandArchive::clear_super(TSWP::SetColumnStyleCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSWP::SetColumnStyleCommandArchive::clear_storage(TSWP::SetColumnStyleCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSWP::SetColumnStyleCommandArchive::clear_undo_transaction(TSWP::SetColumnStyleCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSWP::UndoTransaction::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::SetColumnStyleCommandArchive *TSWP::SetColumnStyleCommandArchive::SetColumnStyleCommandArchive(TSWP::SetColumnStyleCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886075E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SetColumnStyleCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2886075E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SetColumnStyleCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSWP::SetColumnStyleCommandArchive *TSWP::SetColumnStyleCommandArchive::SetColumnStyleCommandArchive(TSWP::SetColumnStyleCommandArchive *this, const TSWP::SetColumnStyleCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886075E0;
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

void TSWP::SetColumnStyleCommandArchive::~SetColumnStyleCommandArchive(TSWP::SetColumnStyleCommandArchive *this)
{
  if (this != &TSWP::_SetColumnStyleCommandArchive_default_instance_)
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
  TSWP::SetColumnStyleCommandArchive::~SetColumnStyleCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::SetColumnStyleCommandArchive::default_instance(TSWP::SetColumnStyleCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_SetColumnStyleCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_SetColumnStyleCommandArchive_default_instance_;
}

uint64_t *TSWP::SetColumnStyleCommandArchive::Clear(uint64_t *this)
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
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::SetColumnStyleCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v19 = MEMORY[0x277CA31C0](v18);
        LODWORD(v17) = v19;
        *(a1 + 24) = v19;
        v5 = v23;
      }

      v11 = sub_276F58170(a3, v17, v5);
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

unsigned __int8 *TSWP::SetColumnStyleCommandArchive::_InternalSerialize(TSWP::SetColumnStyleCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSWP::SetColumnStyleCommandArchive::ByteSizeLong(TSWP::SetColumnStyleCommandArchive *this)
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

uint64_t TSWP::SetColumnStyleCommandArchive::MergeFrom(TSWP::SetColumnStyleCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::SetColumnStyleCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::SetColumnStyleCommandArchive::MergeFrom(uint64_t this, const TSWP::SetColumnStyleCommandArchive *a2)
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

uint64_t *TSWP::SetColumnStyleCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::SetColumnStyleCommandArchive::Clear(this);

    return TSWP::SetColumnStyleCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::SetColumnStyleCommandArchive::CopyFrom(uint64_t *this, const TSWP::SetColumnStyleCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::SetColumnStyleCommandArchive::Clear(this);

    return TSWP::SetColumnStyleCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::SetColumnStyleCommandArchive::IsInitialized(TSWP::SetColumnStyleCommandArchive *this)
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

__n128 TSWP::SetColumnStyleCommandArchive::InternalSwap(TSWP::SetColumnStyleCommandArchive *this, TSWP::SetColumnStyleCommandArchive *a2)
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

TSK::CommandArchive *TSWP::ReplaceAllUsesOfStyleCommandArchive::clear_super(TSWP::ReplaceAllUsesOfStyleCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSWP::ReplaceAllUsesOfStyleCommandArchive::clear_storage(TSWP::ReplaceAllUsesOfStyleCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSWP::ReplaceAllUsesOfStyleCommandArchive::clear_undo_transaction(TSWP::ReplaceAllUsesOfStyleCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSWP::UndoTransaction::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::ReplaceAllUsesOfStyleCommandArchive *TSWP::ReplaceAllUsesOfStyleCommandArchive::ReplaceAllUsesOfStyleCommandArchive(TSWP::ReplaceAllUsesOfStyleCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288607690;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ReplaceAllUsesOfStyleCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_288607690;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ReplaceAllUsesOfStyleCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSWP::ReplaceAllUsesOfStyleCommandArchive *TSWP::ReplaceAllUsesOfStyleCommandArchive::ReplaceAllUsesOfStyleCommandArchive(TSWP::ReplaceAllUsesOfStyleCommandArchive *this, const TSWP::ReplaceAllUsesOfStyleCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288607690;
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

void TSWP::ReplaceAllUsesOfStyleCommandArchive::~ReplaceAllUsesOfStyleCommandArchive(TSWP::ReplaceAllUsesOfStyleCommandArchive *this)
{
  if (this != &TSWP::_ReplaceAllUsesOfStyleCommandArchive_default_instance_)
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
  TSWP::ReplaceAllUsesOfStyleCommandArchive::~ReplaceAllUsesOfStyleCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::ReplaceAllUsesOfStyleCommandArchive::default_instance(TSWP::ReplaceAllUsesOfStyleCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ReplaceAllUsesOfStyleCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ReplaceAllUsesOfStyleCommandArchive_default_instance_;
}

uint64_t *TSWP::ReplaceAllUsesOfStyleCommandArchive::Clear(uint64_t *this)
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
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::ReplaceAllUsesOfStyleCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v19 = MEMORY[0x277CA31C0](v18);
        LODWORD(v17) = v19;
        *(a1 + 24) = v19;
        v5 = v23;
      }

      v11 = sub_276F58170(a3, v17, v5);
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

unsigned __int8 *TSWP::ReplaceAllUsesOfStyleCommandArchive::_InternalSerialize(TSWP::ReplaceAllUsesOfStyleCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSWP::ReplaceAllUsesOfStyleCommandArchive::ByteSizeLong(TSWP::ReplaceAllUsesOfStyleCommandArchive *this)
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

uint64_t TSWP::ReplaceAllUsesOfStyleCommandArchive::MergeFrom(TSWP::ReplaceAllUsesOfStyleCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ReplaceAllUsesOfStyleCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ReplaceAllUsesOfStyleCommandArchive::MergeFrom(uint64_t this, const TSWP::ReplaceAllUsesOfStyleCommandArchive *a2)
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

uint64_t *TSWP::ReplaceAllUsesOfStyleCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ReplaceAllUsesOfStyleCommandArchive::Clear(this);

    return TSWP::ReplaceAllUsesOfStyleCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ReplaceAllUsesOfStyleCommandArchive::CopyFrom(uint64_t *this, const TSWP::ReplaceAllUsesOfStyleCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ReplaceAllUsesOfStyleCommandArchive::Clear(this);

    return TSWP::ReplaceAllUsesOfStyleCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ReplaceAllUsesOfStyleCommandArchive::IsInitialized(TSWP::ReplaceAllUsesOfStyleCommandArchive *this)
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

__n128 TSWP::ReplaceAllUsesOfStyleCommandArchive::InternalSwap(TSWP::ReplaceAllUsesOfStyleCommandArchive *this, TSWP::ReplaceAllUsesOfStyleCommandArchive *a2)
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

TSK::CommandArchive *TSWP::InsertColumnsCommandArchive::clear_super(TSWP::InsertColumnsCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSWP::InsertColumnsCommandArchive::clear_storage(TSWP::InsertColumnsCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSWP::InsertColumnsCommandArchive::clear_undo_transaction(TSWP::InsertColumnsCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSWP::UndoTransaction::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::InsertColumnsCommandArchive *TSWP::InsertColumnsCommandArchive::InsertColumnsCommandArchive(TSWP::InsertColumnsCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288607740;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InsertColumnsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288607740;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InsertColumnsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWP::InsertColumnsCommandArchive *TSWP::InsertColumnsCommandArchive::InsertColumnsCommandArchive(TSWP::InsertColumnsCommandArchive *this, const TSWP::InsertColumnsCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288607740;
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

void TSWP::InsertColumnsCommandArchive::~InsertColumnsCommandArchive(TSWP::InsertColumnsCommandArchive *this)
{
  if (this != &TSWP::_InsertColumnsCommandArchive_default_instance_)
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
  TSWP::InsertColumnsCommandArchive::~InsertColumnsCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::InsertColumnsCommandArchive::default_instance(TSWP::InsertColumnsCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_InsertColumnsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_InsertColumnsCommandArchive_default_instance_;
}

uint64_t *TSWP::InsertColumnsCommandArchive::Clear(uint64_t *this)
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

google::protobuf::internal *TSWP::InsertColumnsCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_61;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_44;
          }

          *(a1 + 16) |= 1u;
          v24 = *(a1 + 24);
          if (!v24)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = MEMORY[0x277CA31C0](v25);
            LODWORD(v24) = v26;
            *(a1 + 24) = v26;
            v7 = v34;
          }

          v13 = sub_276F58170(a3, v24, v7);
        }

        else
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_44;
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

            v17 = MEMORY[0x277CA3250](v16);
            LODWORD(v15) = v17;
            *(a1 + 32) = v17;
            v7 = v34;
          }

          v13 = sub_276F4F9E8(a3, v15, v7);
        }

LABEL_51:
        v34 = v13;
        if (!v13)
        {
          goto LABEL_61;
        }

        goto LABEL_52;
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_44;
        }

        v5 |= 8u;
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
          v34 = v18;
          *(a1 + 48) = v19;
          goto LABEL_52;
        }

        v30 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v34 = v30;
        *(a1 + 48) = v31;
        if (!v30)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v10 != 4)
        {
          if (v10 == 5 && v8 == 42)
          {
            *(a1 + 16) |= 4u;
            v11 = *(a1 + 40);
            if (!v11)
            {
              v12 = *(a1 + 8);
              if (v12)
              {
                v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
              }

              v11 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v12);
              *(a1 + 40) = v11;
              v7 = v34;
            }

            v13 = sub_276F53144(a3, v11, v7);
            goto LABEL_51;
          }

LABEL_44:
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

          v13 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_51;
        }

        if (v8 != 32)
        {
          goto LABEL_44;
        }

        v5 |= 0x10u;
        v21 = (v7 + 1);
        LODWORD(v22) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v23 = *v21;
        v22 = (v22 + (v23 << 7) - 128);
        if ((v23 & 0x80000000) == 0)
        {
          v21 = (v7 + 2);
LABEL_37:
          v34 = v21;
          *(a1 + 52) = v22;
          goto LABEL_52;
        }

        v32 = google::protobuf::internal::VarintParseSlow32(v7, v22);
        v34 = v32;
        *(a1 + 52) = v33;
        if (!v32)
        {
LABEL_61:
          v34 = 0;
          goto LABEL_2;
        }
      }

LABEL_52:
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

unsigned __int8 *TSWP::InsertColumnsCommandArchive::_InternalSerialize(TSWP::InsertColumnsCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

LABEL_38:
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
            goto LABEL_49;
          }
        }

        else
        {
          a2[2] = v27;
          a2 += 3;
          if ((v5 & 0x10) != 0)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        a2[1] = v26;
        a2 += 2;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_49;
        }
      }

LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_6;
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
  if ((v5 & 8) != 0)
  {
    goto LABEL_38;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_5;
  }

LABEL_49:
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
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      a2[2] = v31;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    a2[1] = v30;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_6:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 5);
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

  a2 = TSWP::UndoTransaction::_InternalSerialize(v6, v8, a3);
LABEL_22:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::InsertColumnsCommandArchive::ByteSizeLong(TSWP::InsertColumnsCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_12;
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
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v3 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v3 += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::InsertColumnsCommandArchive::MergeFrom(TSWP::InsertColumnsCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::InsertColumnsCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::InsertColumnsCommandArchive::MergeFrom(uint64_t this, const TSWP::InsertColumnsCommandArchive *a2)
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

uint64_t *TSWP::InsertColumnsCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::InsertColumnsCommandArchive::Clear(this);

    return TSWP::InsertColumnsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::InsertColumnsCommandArchive::CopyFrom(uint64_t *this, const TSWP::InsertColumnsCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::InsertColumnsCommandArchive::Clear(this);

    return TSWP::InsertColumnsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::InsertColumnsCommandArchive::IsInitialized(TSWP::InsertColumnsCommandArchive *this)
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

__n128 TSWP::InsertColumnsCommandArchive::InternalSwap(TSWP::InsertColumnsCommandArchive *this, TSWP::InsertColumnsCommandArchive *a2)
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

TSK::CommandArchive *TSWP::InsertRowsCommandArchive::clear_super(TSWP::InsertRowsCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSWP::InsertRowsCommandArchive::clear_storage(TSWP::InsertRowsCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSWP::InsertRowsCommandArchive::clear_undo_transaction(TSWP::InsertRowsCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSWP::UndoTransaction::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::InsertRowsCommandArchive *TSWP::InsertRowsCommandArchive::InsertRowsCommandArchive(TSWP::InsertRowsCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886077F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InsertRowsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2886077F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InsertRowsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWP::InsertRowsCommandArchive *TSWP::InsertRowsCommandArchive::InsertRowsCommandArchive(TSWP::InsertRowsCommandArchive *this, const TSWP::InsertRowsCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886077F0;
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

void TSWP::InsertRowsCommandArchive::~InsertRowsCommandArchive(TSWP::InsertRowsCommandArchive *this)
{
  if (this != &TSWP::_InsertRowsCommandArchive_default_instance_)
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
  TSWP::InsertRowsCommandArchive::~InsertRowsCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::InsertRowsCommandArchive::default_instance(TSWP::InsertRowsCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_InsertRowsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_InsertRowsCommandArchive_default_instance_;
}

uint64_t *TSWP::InsertRowsCommandArchive::Clear(uint64_t *this)
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

google::protobuf::internal *TSWP::InsertRowsCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_61;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_44;
          }

          *(a1 + 16) |= 1u;
          v24 = *(a1 + 24);
          if (!v24)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = MEMORY[0x277CA31C0](v25);
            LODWORD(v24) = v26;
            *(a1 + 24) = v26;
            v7 = v34;
          }

          v13 = sub_276F58170(a3, v24, v7);
        }

        else
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_44;
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

            v17 = MEMORY[0x277CA3250](v16);
            LODWORD(v15) = v17;
            *(a1 + 32) = v17;
            v7 = v34;
          }

          v13 = sub_276F4F9E8(a3, v15, v7);
        }

LABEL_51:
        v34 = v13;
        if (!v13)
        {
          goto LABEL_61;
        }

        goto LABEL_52;
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_44;
        }

        v5 |= 8u;
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
          v34 = v18;
          *(a1 + 48) = v19;
          goto LABEL_52;
        }

        v30 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v34 = v30;
        *(a1 + 48) = v31;
        if (!v30)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v10 != 4)
        {
          if (v10 == 5 && v8 == 42)
          {
            *(a1 + 16) |= 4u;
            v11 = *(a1 + 40);
            if (!v11)
            {
              v12 = *(a1 + 8);
              if (v12)
              {
                v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
              }

              v11 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v12);
              *(a1 + 40) = v11;
              v7 = v34;
            }

            v13 = sub_276F53144(a3, v11, v7);
            goto LABEL_51;
          }

LABEL_44:
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

          v13 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_51;
        }

        if (v8 != 32)
        {
          goto LABEL_44;
        }

        v5 |= 0x10u;
        v21 = (v7 + 1);
        LODWORD(v22) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v23 = *v21;
        v22 = (v22 + (v23 << 7) - 128);
        if ((v23 & 0x80000000) == 0)
        {
          v21 = (v7 + 2);
LABEL_37:
          v34 = v21;
          *(a1 + 52) = v22;
          goto LABEL_52;
        }

        v32 = google::protobuf::internal::VarintParseSlow32(v7, v22);
        v34 = v32;
        *(a1 + 52) = v33;
        if (!v32)
        {
LABEL_61:
          v34 = 0;
          goto LABEL_2;
        }
      }

LABEL_52:
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

unsigned __int8 *TSWP::InsertRowsCommandArchive::_InternalSerialize(TSWP::InsertRowsCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

LABEL_38:
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
            goto LABEL_49;
          }
        }

        else
        {
          a2[2] = v27;
          a2 += 3;
          if ((v5 & 0x10) != 0)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        a2[1] = v26;
        a2 += 2;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_49;
        }
      }

LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_6;
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
  if ((v5 & 8) != 0)
  {
    goto LABEL_38;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_5;
  }

LABEL_49:
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
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      a2[2] = v31;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    a2[1] = v30;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_6:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 5);
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

  a2 = TSWP::UndoTransaction::_InternalSerialize(v6, v8, a3);
LABEL_22:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::InsertRowsCommandArchive::ByteSizeLong(TSWP::InsertRowsCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_12;
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
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v3 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v3 += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::InsertRowsCommandArchive::MergeFrom(TSWP::InsertRowsCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::InsertRowsCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::InsertRowsCommandArchive::MergeFrom(uint64_t this, const TSWP::InsertRowsCommandArchive *a2)
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

uint64_t *TSWP::InsertRowsCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::InsertRowsCommandArchive::Clear(this);

    return TSWP::InsertRowsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::InsertRowsCommandArchive::CopyFrom(uint64_t *this, const TSWP::InsertRowsCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::InsertRowsCommandArchive::Clear(this);

    return TSWP::InsertRowsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::InsertRowsCommandArchive::IsInitialized(TSWP::InsertRowsCommandArchive *this)
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

__n128 TSWP::InsertRowsCommandArchive::InternalSwap(TSWP::InsertRowsCommandArchive *this, TSWP::InsertRowsCommandArchive *a2)
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

TSK::CommandArchive *TSWP::RemoveColumnsCommandArchive::clear_super(TSWP::RemoveColumnsCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSWP::RemoveColumnsCommandArchive::clear_storage(TSWP::RemoveColumnsCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSWP::RemoveColumnsCommandArchive::clear_undo_transaction(TSWP::RemoveColumnsCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSWP::UndoTransaction::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::RemoveColumnsCommandArchive *TSWP::RemoveColumnsCommandArchive::RemoveColumnsCommandArchive(TSWP::RemoveColumnsCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886078A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RemoveColumnsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2886078A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RemoveColumnsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWP::RemoveColumnsCommandArchive *TSWP::RemoveColumnsCommandArchive::RemoveColumnsCommandArchive(TSWP::RemoveColumnsCommandArchive *this, const TSWP::RemoveColumnsCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886078A0;
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

void TSWP::RemoveColumnsCommandArchive::~RemoveColumnsCommandArchive(TSWP::RemoveColumnsCommandArchive *this)
{
  if (this != &TSWP::_RemoveColumnsCommandArchive_default_instance_)
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
  TSWP::RemoveColumnsCommandArchive::~RemoveColumnsCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::RemoveColumnsCommandArchive::default_instance(TSWP::RemoveColumnsCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_RemoveColumnsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_RemoveColumnsCommandArchive_default_instance_;
}

uint64_t *TSWP::RemoveColumnsCommandArchive::Clear(uint64_t *this)
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

google::protobuf::internal *TSWP::RemoveColumnsCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_61;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_44;
          }

          *(a1 + 16) |= 1u;
          v24 = *(a1 + 24);
          if (!v24)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = MEMORY[0x277CA31C0](v25);
            LODWORD(v24) = v26;
            *(a1 + 24) = v26;
            v7 = v34;
          }

          v13 = sub_276F58170(a3, v24, v7);
        }

        else
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_44;
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

            v17 = MEMORY[0x277CA3250](v16);
            LODWORD(v15) = v17;
            *(a1 + 32) = v17;
            v7 = v34;
          }

          v13 = sub_276F4F9E8(a3, v15, v7);
        }

LABEL_51:
        v34 = v13;
        if (!v13)
        {
          goto LABEL_61;
        }

        goto LABEL_52;
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_44;
        }

        v5 |= 8u;
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
          v34 = v18;
          *(a1 + 48) = v19;
          goto LABEL_52;
        }

        v30 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v34 = v30;
        *(a1 + 48) = v31;
        if (!v30)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v10 != 4)
        {
          if (v10 == 5 && v8 == 42)
          {
            *(a1 + 16) |= 4u;
            v11 = *(a1 + 40);
            if (!v11)
            {
              v12 = *(a1 + 8);
              if (v12)
              {
                v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
              }

              v11 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v12);
              *(a1 + 40) = v11;
              v7 = v34;
            }

            v13 = sub_276F53144(a3, v11, v7);
            goto LABEL_51;
          }

LABEL_44:
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

          v13 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_51;
        }

        if (v8 != 32)
        {
          goto LABEL_44;
        }

        v5 |= 0x10u;
        v21 = (v7 + 1);
        LODWORD(v22) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v23 = *v21;
        v22 = (v22 + (v23 << 7) - 128);
        if ((v23 & 0x80000000) == 0)
        {
          v21 = (v7 + 2);
LABEL_37:
          v34 = v21;
          *(a1 + 52) = v22;
          goto LABEL_52;
        }

        v32 = google::protobuf::internal::VarintParseSlow32(v7, v22);
        v34 = v32;
        *(a1 + 52) = v33;
        if (!v32)
        {
LABEL_61:
          v34 = 0;
          goto LABEL_2;
        }
      }

LABEL_52:
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

unsigned __int8 *TSWP::RemoveColumnsCommandArchive::_InternalSerialize(TSWP::RemoveColumnsCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

LABEL_38:
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
            goto LABEL_49;
          }
        }

        else
        {
          a2[2] = v27;
          a2 += 3;
          if ((v5 & 0x10) != 0)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        a2[1] = v26;
        a2 += 2;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_49;
        }
      }

LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_6;
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
  if ((v5 & 8) != 0)
  {
    goto LABEL_38;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_5;
  }

LABEL_49:
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
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      a2[2] = v31;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    a2[1] = v30;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_6:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 5);
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

  a2 = TSWP::UndoTransaction::_InternalSerialize(v6, v8, a3);
LABEL_22:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::RemoveColumnsCommandArchive::ByteSizeLong(TSWP::RemoveColumnsCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_12;
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
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v3 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v3 += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::RemoveColumnsCommandArchive::MergeFrom(TSWP::RemoveColumnsCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::RemoveColumnsCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::RemoveColumnsCommandArchive::MergeFrom(uint64_t this, const TSWP::RemoveColumnsCommandArchive *a2)
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

uint64_t *TSWP::RemoveColumnsCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::RemoveColumnsCommandArchive::Clear(this);

    return TSWP::RemoveColumnsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::RemoveColumnsCommandArchive::CopyFrom(uint64_t *this, const TSWP::RemoveColumnsCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::RemoveColumnsCommandArchive::Clear(this);

    return TSWP::RemoveColumnsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::RemoveColumnsCommandArchive::IsInitialized(TSWP::RemoveColumnsCommandArchive *this)
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

__n128 TSWP::RemoveColumnsCommandArchive::InternalSwap(TSWP::RemoveColumnsCommandArchive *this, TSWP::RemoveColumnsCommandArchive *a2)
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

TSK::CommandArchive *TSWP::RemoveRowsCommandArchive::clear_super(TSWP::RemoveRowsCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSWP::RemoveRowsCommandArchive::clear_storage(TSWP::RemoveRowsCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSWP::RemoveRowsCommandArchive::clear_undo_transaction(TSWP::RemoveRowsCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSWP::UndoTransaction::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::RemoveRowsCommandArchive *TSWP::RemoveRowsCommandArchive::RemoveRowsCommandArchive(TSWP::RemoveRowsCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288607950;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RemoveRowsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288607950;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RemoveRowsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWP::RemoveRowsCommandArchive *TSWP::RemoveRowsCommandArchive::RemoveRowsCommandArchive(TSWP::RemoveRowsCommandArchive *this, const TSWP::RemoveRowsCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288607950;
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

void TSWP::RemoveRowsCommandArchive::~RemoveRowsCommandArchive(TSWP::RemoveRowsCommandArchive *this)
{
  if (this != &TSWP::_RemoveRowsCommandArchive_default_instance_)
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
  TSWP::RemoveRowsCommandArchive::~RemoveRowsCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::RemoveRowsCommandArchive::default_instance(TSWP::RemoveRowsCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_RemoveRowsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_RemoveRowsCommandArchive_default_instance_;
}

uint64_t *TSWP::RemoveRowsCommandArchive::Clear(uint64_t *this)
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

google::protobuf::internal *TSWP::RemoveRowsCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_61;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_44;
          }

          *(a1 + 16) |= 1u;
          v24 = *(a1 + 24);
          if (!v24)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = MEMORY[0x277CA31C0](v25);
            LODWORD(v24) = v26;
            *(a1 + 24) = v26;
            v7 = v34;
          }

          v13 = sub_276F58170(a3, v24, v7);
        }

        else
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_44;
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

            v17 = MEMORY[0x277CA3250](v16);
            LODWORD(v15) = v17;
            *(a1 + 32) = v17;
            v7 = v34;
          }

          v13 = sub_276F4F9E8(a3, v15, v7);
        }

LABEL_51:
        v34 = v13;
        if (!v13)
        {
          goto LABEL_61;
        }

        goto LABEL_52;
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_44;
        }

        v5 |= 8u;
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
          v34 = v18;
          *(a1 + 48) = v19;
          goto LABEL_52;
        }

        v30 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v34 = v30;
        *(a1 + 48) = v31;
        if (!v30)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v10 != 4)
        {
          if (v10 == 5 && v8 == 42)
          {
            *(a1 + 16) |= 4u;
            v11 = *(a1 + 40);
            if (!v11)
            {
              v12 = *(a1 + 8);
              if (v12)
              {
                v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
              }

              v11 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v12);
              *(a1 + 40) = v11;
              v7 = v34;
            }

            v13 = sub_276F53144(a3, v11, v7);
            goto LABEL_51;
          }

LABEL_44:
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

          v13 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_51;
        }

        if (v8 != 32)
        {
          goto LABEL_44;
        }

        v5 |= 0x10u;
        v21 = (v7 + 1);
        LODWORD(v22) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v23 = *v21;
        v22 = (v22 + (v23 << 7) - 128);
        if ((v23 & 0x80000000) == 0)
        {
          v21 = (v7 + 2);
LABEL_37:
          v34 = v21;
          *(a1 + 52) = v22;
          goto LABEL_52;
        }

        v32 = google::protobuf::internal::VarintParseSlow32(v7, v22);
        v34 = v32;
        *(a1 + 52) = v33;
        if (!v32)
        {
LABEL_61:
          v34 = 0;
          goto LABEL_2;
        }
      }

LABEL_52:
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

unsigned __int8 *TSWP::RemoveRowsCommandArchive::_InternalSerialize(TSWP::RemoveRowsCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

LABEL_38:
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
            goto LABEL_49;
          }
        }

        else
        {
          a2[2] = v27;
          a2 += 3;
          if ((v5 & 0x10) != 0)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        a2[1] = v26;
        a2 += 2;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_49;
        }
      }

LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_6;
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
  if ((v5 & 8) != 0)
  {
    goto LABEL_38;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_5;
  }

LABEL_49:
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
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      a2[2] = v31;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    a2[1] = v30;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_6:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 5);
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

  a2 = TSWP::UndoTransaction::_InternalSerialize(v6, v8, a3);
LABEL_22:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::RemoveRowsCommandArchive::ByteSizeLong(TSWP::RemoveRowsCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_12;
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
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v3 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v3 += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::RemoveRowsCommandArchive::MergeFrom(TSWP::RemoveRowsCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::RemoveRowsCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::RemoveRowsCommandArchive::MergeFrom(uint64_t this, const TSWP::RemoveRowsCommandArchive *a2)
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

uint64_t *TSWP::RemoveRowsCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::RemoveRowsCommandArchive::Clear(this);

    return TSWP::RemoveRowsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::RemoveRowsCommandArchive::CopyFrom(uint64_t *this, const TSWP::RemoveRowsCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::RemoveRowsCommandArchive::Clear(this);

    return TSWP::RemoveRowsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::RemoveRowsCommandArchive::IsInitialized(TSWP::RemoveRowsCommandArchive *this)
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

__n128 TSWP::RemoveRowsCommandArchive::InternalSwap(TSWP::RemoveRowsCommandArchive *this, TSWP::RemoveRowsCommandArchive *a2)
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

TSK::CommandArchive *TSWP::MergeCellsCommandArchive::clear_super(TSWP::MergeCellsCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSWP::MergeCellsCommandArchive::clear_storage(TSWP::MergeCellsCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSWP::MergeCellsCommandArchive::clear_undo_transaction(TSWP::MergeCellsCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSWP::UndoTransaction::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::MergeCellsCommandArchive *TSWP::MergeCellsCommandArchive::MergeCellsCommandArchive(TSWP::MergeCellsCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288607A00;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MergeCellsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288607A00;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MergeCellsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWP::MergeCellsCommandArchive *TSWP::MergeCellsCommandArchive::MergeCellsCommandArchive(TSWP::MergeCellsCommandArchive *this, const TSWP::MergeCellsCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288607A00;
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
  *(this + 3) = *(a2 + 3);
  return this;
}

void TSWP::MergeCellsCommandArchive::~MergeCellsCommandArchive(TSWP::MergeCellsCommandArchive *this)
{
  if (this != &TSWP::_MergeCellsCommandArchive_default_instance_)
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
  TSWP::MergeCellsCommandArchive::~MergeCellsCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::MergeCellsCommandArchive::default_instance(TSWP::MergeCellsCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_MergeCellsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_MergeCellsCommandArchive_default_instance_;
}

uint64_t *TSWP::MergeCellsCommandArchive::Clear(uint64_t *this)
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
  if ((v2 & 0x78) != 0)
  {
    *(v1 + 48) = 0;
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

google::protobuf::internal *TSWP::MergeCellsCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v44 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v44) & 1) == 0)
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
        goto LABEL_78;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_59;
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

            v25 = MEMORY[0x277CA31C0](v24);
            LODWORD(v23) = v25;
            *(a1 + 24) = v25;
            v7 = v44;
          }

          v20 = sub_276F58170(a3, v23, v7);
          goto LABEL_66;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_59;
          }

          *(a1 + 16) |= 2u;
          v32 = *(a1 + 32);
          if (!v32)
          {
            v33 = *(a1 + 8);
            if (v33)
            {
              v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
            }

            v34 = MEMORY[0x277CA3250](v33);
            LODWORD(v32) = v34;
            *(a1 + 32) = v34;
            v7 = v44;
          }

          v20 = sub_276F4F9E8(a3, v32, v7);
LABEL_66:
          v44 = v20;
          if (!v20)
          {
            goto LABEL_78;
          }

          goto LABEL_67;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_59;
        }

        v5 |= 8u;
        v15 = (v7 + 1);
        LODWORD(v16) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_26:
          v44 = v15;
          *(a1 + 48) = v16;
          goto LABEL_67;
        }

        v42 = google::protobuf::internal::VarintParseSlow32(v7, v16);
        v44 = v42;
        *(a1 + 48) = v43;
        if (!v42)
        {
LABEL_78:
          v44 = 0;
          goto LABEL_2;
        }
      }

      else if (v8 >> 3 > 5)
      {
        if (v10 != 6)
        {
          if (v10 == 7 && v8 == 58)
          {
            *(a1 + 16) |= 4u;
            v18 = *(a1 + 40);
            if (!v18)
            {
              v19 = *(a1 + 8);
              if (v19)
              {
                v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
              }

              v18 = google::protobuf::Arena::CreateMaybeMessage<TSWP::UndoTransaction>(v19);
              *(a1 + 40) = v18;
              v7 = v44;
            }

            v20 = sub_276F53144(a3, v18, v7);
            goto LABEL_66;
          }

LABEL_59:
          if (v8)
          {
            v35 = (v8 & 7) == 4;
          }

          else
          {
            v35 = 1;
          }

          if (v35)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v20 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_66;
        }

        if (v8 != 48)
        {
          goto LABEL_59;
        }

        v5 |= 0x40u;
        v29 = (v7 + 1);
        LODWORD(v30) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        v31 = *v29;
        v30 = (v30 + (v31 << 7) - 128);
        if ((v31 & 0x80000000) == 0)
        {
          v29 = (v7 + 2);
LABEL_52:
          v44 = v29;
          *(a1 + 60) = v30;
          goto LABEL_67;
        }

        v38 = google::protobuf::internal::VarintParseSlow32(v7, v30);
        v44 = v38;
        *(a1 + 60) = v39;
        if (!v38)
        {
          goto LABEL_78;
        }
      }

      else if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_59;
        }

        v5 |= 0x10u;
        v26 = (v7 + 1);
        LODWORD(v27) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v28 = *v26;
        v27 = (v27 + (v28 << 7) - 128);
        if ((v28 & 0x80000000) == 0)
        {
          v26 = (v7 + 2);
LABEL_47:
          v44 = v26;
          *(a1 + 52) = v27;
          goto LABEL_67;
        }

        v36 = google::protobuf::internal::VarintParseSlow32(v7, v27);
        v44 = v36;
        *(a1 + 52) = v37;
        if (!v36)
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_59;
        }

        v5 |= 0x20u;
        v11 = (v7 + 1);
        LODWORD(v12) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v11;
        v12 = (v12 + (v13 << 7) - 128);
        if ((v13 & 0x80000000) == 0)
        {
          v11 = (v7 + 2);
LABEL_15:
          v44 = v11;
          *(a1 + 56) = v12;
          goto LABEL_67;
        }

        v40 = google::protobuf::internal::VarintParseSlow32(v7, v12);
        v44 = v40;
        *(a1 + 56) = v41;
        if (!v40)
        {
          goto LABEL_78;
        }
      }

LABEL_67:
      if (sub_276EA4A1C(a3, &v44))
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

unsigned __int8 *TSWP::MergeCellsCommandArchive::_InternalSerialize(TSWP::MergeCellsCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

LABEL_40:
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
            goto LABEL_51;
          }
        }

        else
        {
          a2[2] = v27;
          a2 += 3;
          if ((v5 & 0x10) != 0)
          {
            goto LABEL_51;
          }
        }
      }

      else
      {
        a2[1] = v26;
        a2 += 2;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_51;
        }
      }

LABEL_5:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_6;
      }

LABEL_62:
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
          if ((v5 & 0x40) != 0)
          {
            goto LABEL_73;
          }
        }

        else
        {
          a2[2] = v35;
          a2 += 3;
          if ((v5 & 0x40) != 0)
          {
            goto LABEL_73;
          }
        }
      }

      else
      {
        a2[1] = v34;
        a2 += 2;
        if ((v5 & 0x40) != 0)
        {
          goto LABEL_73;
        }
      }

LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
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
  if ((v5 & 8) != 0)
  {
    goto LABEL_40;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_5;
  }

LABEL_51:
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
        goto LABEL_62;
      }
    }

    else
    {
      a2[2] = v31;
      a2 += 3;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
    a2[1] = v30;
    a2 += 2;
    if ((v5 & 0x20) != 0)
    {
      goto LABEL_62;
    }
  }

LABEL_6:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_7;
  }

LABEL_73:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v38 = *(this + 15);
  *a2 = 48;
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
        v40 = v39 >> 7;
        ++a2;
        v41 = v39 >> 14;
        v39 >>= 7;
      }

      while (v41);
      *(a2 - 1) = v40;
      if ((v5 & 4) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      a2[2] = v39;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    a2[1] = v38;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_8:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 5);
  *a2 = 58;
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
LABEL_24:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}